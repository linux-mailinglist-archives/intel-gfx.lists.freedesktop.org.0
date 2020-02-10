Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C341573D2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 13:05:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA43893E8;
	Mon, 10 Feb 2020 12:05:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B1FF893E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 12:05:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 04:05:03 -0800
X-IronPort-AV: E=Sophos;i="5.70,424,1574150400"; d="scan'208";a="226129436"
Received: from ayashfe-mobl1.ger.corp.intel.com (HELO [10.251.86.31])
 ([10.251.86.31])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 10 Feb 2020 04:05:02 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200209131922.180287-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <38e0f415-9f77-3c37-a448-5156e6d69713@linux.intel.com>
Date: Mon, 10 Feb 2020 12:04:59 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200209131922.180287-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/execlists: Fix hold/unhold
 recursion
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


On 09/02/2020 13:19, Chris Wilson wrote:
> In eliminating the recursion from walking the tree of signalers/waiters
> for processing the hold/unhold operations, a crucial error crept in
> where we looked at the parent request and not the list element when
> processing the list.
> 
> Brown paper bag, much?
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1166
> Fixes: 748317386afb ("drm/i915/execlists: Offline error capture")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 13 ++++++++-----
>   1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 4bedc66bebb1..21385070ad15 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2374,10 +2374,10 @@ static void __execlists_hold(struct i915_request *rq)
>   		if (i915_request_is_active(rq))
>   			__i915_request_unsubmit(rq);
>   
> -		RQ_TRACE(rq, "on hold\n");
>   		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
>   		list_move_tail(&rq->sched.link, &rq->engine->active.hold);
>   		i915_request_set_hold(rq);
> +		RQ_TRACE(rq, "on hold\n");
>   
>   		for_each_waiter(p, rq) {
>   			struct i915_request *w =
> @@ -2393,7 +2393,7 @@ static void __execlists_hold(struct i915_request *rq)
>   			if (i915_request_completed(w))
>   				continue;
>   
> -			if (i915_request_on_hold(rq))
> +			if (i915_request_on_hold(w))
>   				continue;
>   
>   			list_move_tail(&w->sched.link, &list);
> @@ -2451,6 +2451,7 @@ static bool execlists_hold(struct intel_engine_cs *engine,
>   	GEM_BUG_ON(i915_request_on_hold(rq));
>   	GEM_BUG_ON(rq->engine != engine);
>   	__execlists_hold(rq);
> +	GEM_BUG_ON(list_empty(&engine->active.hold));
>   
>   unlock:
>   	spin_unlock_irq(&engine->active.lock);
> @@ -2486,6 +2487,8 @@ static void __execlists_unhold(struct i915_request *rq)
>   	do {
>   		struct i915_dependency *p;
>   
> +		RQ_TRACE(rq, "hold release\n");
> +
>   		GEM_BUG_ON(!i915_request_on_hold(rq));
>   		GEM_BUG_ON(!i915_sw_fence_signaled(&rq->submit));
>   
> @@ -2494,7 +2497,6 @@ static void __execlists_unhold(struct i915_request *rq)
>   			       i915_sched_lookup_priolist(rq->engine,
>   							  rq_prio(rq)));
>   		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> -		RQ_TRACE(rq, "hold release\n");
>   
>   		/* Also release any children on this engine that are ready */
>   		for_each_waiter(p, rq) {
> @@ -2504,11 +2506,11 @@ static void __execlists_unhold(struct i915_request *rq)
>   			if (w->engine != rq->engine)
>   				continue;
>   
> -			if (!i915_request_on_hold(rq))
> +			if (!i915_request_on_hold(w))
>   				continue;
>   
>   			/* Check that no other parents are also on hold */
> -			if (hold_request(rq))
> +			if (hold_request(w))
>   				continue;
>   
>   			list_move_tail(&w->sched.link, &list);
> @@ -2806,6 +2808,7 @@ static void execlists_submit_request(struct i915_request *request)
>   	spin_lock_irqsave(&engine->active.lock, flags);
>   
>   	if (unlikely(ancestor_on_hold(engine, request))) {
> +		RQ_TRACE(request, "ancestor on hold\n");
>   		list_add_tail(&request->sched.link, &engine->active.hold);
>   		i915_request_set_hold(request);
>   	} else {
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
