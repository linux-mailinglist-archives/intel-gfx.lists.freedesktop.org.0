Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32237173755
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 13:41:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 993566E178;
	Fri, 28 Feb 2020 12:41:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 250926E178
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 12:41:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 04:41:35 -0800
X-IronPort-AV: E=Sophos;i="5.70,496,1574150400"; d="scan'208";a="232234240"
Received: from pmulhall-mobl.ger.corp.intel.com (HELO [10.251.85.135])
 ([10.251.85.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 28 Feb 2020 04:41:33 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
 <20200227085723.1961649-11-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <745f6ae1-d9c5-dc82-8fbd-02496884f104@linux.intel.com>
Date: Fri, 28 Feb 2020 12:41:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200227085723.1961649-11-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 11/20] drm/i915: Protect
 i915_request_await_start from early waits
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/02/2020 08:57, Chris Wilson wrote:
> We need to be extremely careful inside i915_request_await_start() as it
> needs to walk the list of requests in the foreign timeline with very
> little protection. As we hold our own timeline mutex, we can not nest
> inside the signaler's timeline mutex, so all that remains is our RCU
> protection. However, to be safe we need to tell the compiler that we may
> be traversing the list only under RCU protection, and furthermore we
> need to start declaring requests as elements of the timeline from their
> construction.
> 
> Fixes: 9ddc8ec027a3 ("drm/i915: Eliminate the trylock for awaiting an earlier request")
> Fixes: 6a79d848403d ("drm/i915: Lock signaler timeline while navigating")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_request.c | 41 ++++++++++++++++++++---------
>   1 file changed, 28 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index d53af93b919b..e5a55801f753 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -290,7 +290,7 @@ bool i915_request_retire(struct i915_request *rq)
>   	spin_unlock_irq(&rq->lock);
>   
>   	remove_from_client(rq);
> -	list_del(&rq->link);
> +	list_del_rcu(&rq->link);
>   
>   	intel_context_exit(rq->context);
>   	intel_context_unpin(rq->context);
> @@ -736,6 +736,8 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
>   	rq->infix = rq->ring->emit; /* end of header; start of user payload */
>   
>   	intel_context_mark_active(ce);
> +	list_add_tail_rcu(&rq->link, &tl->requests);
> +
>   	return rq;
>   
>   err_unwind:
> @@ -792,13 +794,23 @@ i915_request_await_start(struct i915_request *rq, struct i915_request *signal)
>   	GEM_BUG_ON(i915_request_timeline(rq) ==
>   		   rcu_access_pointer(signal->timeline));
>   
> +	if (i915_request_started(signal))
> +		return 0;
> +
>   	fence = NULL;
>   	rcu_read_lock();
>   	spin_lock_irq(&signal->lock);
> -	if (!i915_request_started(signal) &&
> -	    !list_is_first(&signal->link,
> -			   &rcu_dereference(signal->timeline)->requests)) {
> -		struct i915_request *prev = list_prev_entry(signal, link);
> +	do {
> +		struct list_head *pos = READ_ONCE(signal->link.prev);
> +		struct i915_request *prev;
> +
> +		/* Confirm signal has not been retired, the link is valid */
> +		if (unlikely(i915_request_started(signal)))
> +			break;
> +
> +		/* Is signal the earliest request on its timeline? */
> +		if (pos == &rcu_dereference(signal->timeline)->requests)
> +			break;
>   
>   		/*
>   		 * Peek at the request before us in the timeline. That
> @@ -806,13 +818,18 @@ i915_request_await_start(struct i915_request *rq, struct i915_request *signal)
>   		 * after acquiring a reference to it, confirm that it is
>   		 * still part of the signaler's timeline.
>   		 */
> -		if (i915_request_get_rcu(prev)) {
> -			if (list_next_entry(prev, link) == signal)
> -				fence = &prev->fence;
> -			else
> -				i915_request_put(prev);
> +		prev = list_entry(pos, typeof(*prev), link);
> +		if (!i915_request_get_rcu(prev))
> +			break;
> +
> +		/* After the strong barrier, confirm prev is still attached */
> +		if (unlikely(READ_ONCE(prev->link.next) != &signal->link)) {
> +			i915_request_put(prev);
> +			break;
>   		}
> -	}
> +
> +		fence = &prev->fence;
> +	} while (0);
>   	spin_unlock_irq(&signal->lock);
>   	rcu_read_unlock();
>   	if (!fence)
> @@ -1253,8 +1270,6 @@ __i915_request_add_to_timeline(struct i915_request *rq)
>   							 0);
>   	}
>   
> -	list_add_tail(&rq->link, &timeline->requests);
> -
>   	/*
>   	 * Make sure that no request gazumped us - if it was allocated after
>   	 * our i915_request_alloc() and called __i915_request_add() before
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
