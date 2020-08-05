Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8334F23CB9D
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 17:02:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE6806E802;
	Wed,  5 Aug 2020 15:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1229B6E802
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 15:02:15 +0000 (UTC)
IronPort-SDR: 793d5pJx0ZoESJB5fqXtRIYQRjWySMLGN53Hk+A0ln/qpkR5R5JKgqtQE7PdB7Ssv5bhcwRX92
 dUq5I7J0UsLw==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="216917388"
X-IronPort-AV: E=Sophos;i="5.75,438,1589266800"; d="scan'208";a="216917388"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 08:02:07 -0700
IronPort-SDR: KpyDZUj/N26SU/ukQyvYMyRbJh1CAXLYTxB9H7vCU4IGkuAOqgaboPm7ar0nkVQol+h4XT6xzl
 rQk4ndbgIB7g==
X-IronPort-AV: E=Sophos;i="5.75,438,1589266800"; d="scan'208";a="467493759"
Received: from tlevis-mobl1.ger.corp.intel.com (HELO [10.251.167.151])
 ([10.251.167.151])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 08:02:05 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
 <20200805122231.23313-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <621f5cb7-a52a-4a76-a37b-1f3c8556ef06@linux.intel.com>
Date: Wed, 5 Aug 2020 16:02:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200805122231.23313-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/37] drm/i915/gem: Reduce context
 termination list iteration guard to RCU
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


On 05/08/2020 13:21, Chris Wilson wrote:
> As we now protect the timeline list using RCU, we can drop the
> timeline->mutex for guarding the list iteration during context close, as
> we are searching for an inflight request. Any new request will see the
> context is banned and not be submitted. In doing so, pull the checks for
> a concurrent submission of the request (notably the
> i915_request_completed()) under the engine spinlock, to fully serialise
> with __i915_request_submit()). That is in the case of preempt-to-busy
> where the request may be completed during the __i915_request_submit(),
> we need to be careful that we sample the request status after
> serialising so that we don't miss the request the engine is actually
> submitting.
> 
> Fixes: 4a3174152147 ("drm/i915/gem: Refine occupancy test in kill_context()")
> References: d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits") # rcu protection of timeline->requests
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/1622
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 32 ++++++++++++---------
>   1 file changed, 19 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index d8cccbab7a51..db893f6c516b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -439,29 +439,36 @@ static bool __cancel_engine(struct intel_engine_cs *engine)
>   	return __reset_engine(engine);
>   }
>   
> -static struct intel_engine_cs *__active_engine(struct i915_request *rq)
> +static bool
> +__active_engine(struct i915_request *rq, struct intel_engine_cs **active)
>   {
>   	struct intel_engine_cs *engine, *locked;
> +	bool ret = false;
>   
>   	/*
>   	 * Serialise with __i915_request_submit() so that it sees
>   	 * is-banned?, or we know the request is already inflight.
> +	 *
> +	 * Note that rq->engine is unstable, and so we double
> +	 * check that we have acquired the lock on the final engine.
>   	 */
>   	locked = READ_ONCE(rq->engine);
>   	spin_lock_irq(&locked->active.lock);
>   	while (unlikely(locked != (engine = READ_ONCE(rq->engine)))) {
>   		spin_unlock(&locked->active.lock);
> -		spin_lock(&engine->active.lock);
>   		locked = engine;
> +		spin_lock(&locked->active.lock);
>   	}
>   
> -	engine = NULL;
> -	if (i915_request_is_active(rq) && rq->fence.error != -EIO)
> -		engine = rq->engine;
> +	if (!i915_request_completed(rq)) {
> +		if (i915_request_is_active(rq) && rq->fence.error != -EIO)
> +			*active = locked;
> +		ret = true;

So not completed but also not submitted will return true and no engine..

> +	}
>   
>   	spin_unlock_irq(&locked->active.lock);
>   
> -	return engine;
> +	return ret;
>   }
>   
>   static struct intel_engine_cs *active_engine(struct intel_context *ce)
> @@ -472,17 +479,16 @@ static struct intel_engine_cs *active_engine(struct intel_context *ce)
>   	if (!ce->timeline)
>   		return NULL;
>   
> -	mutex_lock(&ce->timeline->mutex);
> -	list_for_each_entry_reverse(rq, &ce->timeline->requests, link) {
> -		if (i915_request_completed(rq))
> -			break;
> +	rcu_read_lock();
> +	list_for_each_entry_rcu(rq, &ce->timeline->requests, link) {
> +		if (i915_request_is_active(rq) && i915_request_completed(rq))
> +			continue;
>   
>   		/* Check with the backend if the request is inflight */
> -		engine = __active_engine(rq);
> -		if (engine)
> +		if (__active_engine(rq, &engine))
>   			break;

... hence the caller of this will say no action. Because not active 
means not submitted so that's okay and matches old behaviour. Need for 
bool return and output engine looks a consequence of iterating the list 
in different direction.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

>   	}
> -	mutex_unlock(&ce->timeline->mutex);
> +	rcu_read_unlock();
>   
>   	return engine;
>   }
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
