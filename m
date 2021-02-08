Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DED231307F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 12:18:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ABE36E887;
	Mon,  8 Feb 2021 11:18:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 922BA6E887
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 11:18:40 +0000 (UTC)
IronPort-SDR: I2Xvj1wDWx21zocvNetQllhS4NZqiec9gg/+qBu6lIQrggQ6zFHXdeFG06x0tB2AJvtl7P4C4b
 41dM7QuCAD9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="178186727"
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="178186727"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 03:18:40 -0800
IronPort-SDR: /PmmZ+1DtY16JRFfPzc3wymm1rKGo9ICHtpH5eu8RAuTYw1J6djpHZZR6Cu4h+ahmm2RGR2gwl
 t1Qi/FXmYzlQ==
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="395347785"
Received: from dlauner-mobl.ger.corp.intel.com (HELO [10.214.195.182])
 ([10.214.195.182])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 03:18:38 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fe5a1ffc-4f9d-c69f-14e9-05bf5e9e5f0c@linux.intel.com>
Date: Mon, 8 Feb 2021 11:18:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210208105236.28498-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 02/31] drm/i915: Move context revocation to
 scheduler
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


On 08/02/2021 10:52, Chris Wilson wrote:
> Centralise the means by which to remove a context from execution to the
> scheduler, allowing the backends to specialise as necessary. Note that
> without backend support, we can simplify the procedure to forcibly reset
> the HW to remove the context.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   | 117 +-----------------
>   .../drm/i915/gt/intel_execlists_submission.c  |  47 +++++++
>   drivers/gpu/drm/i915/i915_scheduler.c         |  20 +++
>   drivers/gpu/drm/i915/i915_scheduler_types.h   |   5 +
>   4 files changed, 75 insertions(+), 114 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index ca37d93ef5e7..be75f861db67 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -382,104 +382,9 @@ __context_engines_static(const struct i915_gem_context *ctx)
>   	return rcu_dereference_protected(ctx->engines, true);
>   }
>   
> -static void __reset_context(struct i915_gem_context *ctx,
> -			    struct intel_engine_cs *engine)
> -{
> -	intel_gt_handle_error(engine->gt, engine->mask, 0,
> -			      "context closure in %s", ctx->name);
> -}
> -
> -static bool __cancel_engine(struct intel_engine_cs *engine)
> -{
> -	/*
> -	 * Send a "high priority pulse" down the engine to cause the
> -	 * current request to be momentarily preempted. (If it fails to
> -	 * be preempted, it will be reset). As we have marked our context
> -	 * as banned, any incomplete request, including any running, will
> -	 * be skipped following the preemption.
> -	 *
> -	 * If there is no hangchecking (one of the reasons why we try to
> -	 * cancel the context) and no forced preemption, there may be no
> -	 * means by which we reset the GPU and evict the persistent hog.
> -	 * Ergo if we are unable to inject a preemptive pulse that can
> -	 * kill the banned context, we fallback to doing a local reset
> -	 * instead.
> -	 */
> -	return intel_engine_pulse(engine) == 0;
> -}
> -
> -static bool
> -__active_engine(struct i915_request *rq, struct intel_engine_cs **active)
> -{
> -	struct intel_engine_cs *engine, *locked;
> -	bool ret = false;
> -
> -	/*
> -	 * Serialise with __i915_request_submit() so that it sees
> -	 * is-banned?, or we know the request is already inflight.
> -	 *
> -	 * Note that rq->engine is unstable, and so we double
> -	 * check that we have acquired the lock on the final engine.
> -	 */
> -	locked = READ_ONCE(rq->engine);
> -	spin_lock_irq(&locked->sched.lock);
> -	while (unlikely(locked != (engine = READ_ONCE(rq->engine)))) {
> -		spin_unlock(&locked->sched.lock);
> -		locked = engine;
> -		spin_lock(&locked->sched.lock);
> -	}
> -
> -	if (i915_request_is_active(rq)) {
> -		if (!__i915_request_is_complete(rq))
> -			*active = locked;
> -		ret = true;
> -	}
> -
> -	spin_unlock_irq(&locked->sched.lock);
> -
> -	return ret;
> -}
> -
> -static struct intel_engine_cs *active_engine(struct intel_context *ce)
> -{
> -	struct intel_engine_cs *engine = NULL;
> -	struct i915_request *rq;
> -
> -	if (intel_context_has_inflight(ce))
> -		return intel_context_inflight(ce);
> -
> -	if (!ce->timeline)
> -		return NULL;
> -
> -	/*
> -	 * rq->link is only SLAB_TYPESAFE_BY_RCU, we need to hold a reference
> -	 * to the request to prevent it being transferred to a new timeline
> -	 * (and onto a new timeline->requests list).
> -	 */
> -	rcu_read_lock();
> -	list_for_each_entry_reverse(rq, &ce->timeline->requests, link) {
> -		bool found;
> -
> -		/* timeline is already completed upto this point? */
> -		if (!i915_request_get_rcu(rq))
> -			break;
> -
> -		/* Check with the backend if the request is inflight */
> -		found = true;
> -		if (likely(rcu_access_pointer(rq->timeline) == ce->timeline))
> -			found = __active_engine(rq, &engine);
> -
> -		i915_request_put(rq);
> -		if (found)
> -			break;
> -	}
> -	rcu_read_unlock();
> -
> -	return engine;
> -}
> -
>   static void kill_engines(struct i915_gem_engines *engines, bool ban)
>   {
> +	const int error = ban ? -EIO : -EAGAIN;
>   	struct i915_gem_engines_iter it;
>   	struct intel_context *ce;
>   
> @@ -491,28 +396,12 @@ static void kill_engines(struct i915_gem_engines *engines, bool ban)
>   	 * engines on which there are incomplete requests.
>   	 */
>   	for_each_gem_engine(ce, engines, it) {
> -		struct intel_engine_cs *engine;
> +		struct i915_sched *se = intel_engine_get_scheduler(ce->engine);
>   
>   		if (ban && intel_context_set_banned(ce))
>   			continue;
>   
> -		/*
> -		 * Check the current active state of this context; if we
> -		 * are currently executing on the GPU we need to evict
> -		 * ourselves. On the other hand, if we haven't yet been
> -		 * submitted to the GPU or if everything is complete,
> -		 * we have nothing to do.
> -		 */
> -		engine = active_engine(ce);
> -
> -		/* First attempt to gracefully cancel the context */
> -		if (engine && !__cancel_engine(engine) && ban)
> -			/*
> -			 * If we are unable to send a preemptive pulse to bump
> -			 * the context from the GPU, we have to resort to a full
> -			 * reset. We hope the collateral damage is worth it.
> -			 */
> -			__reset_context(engines->ctx, engine);
> +		se->revoke_context(ce, ban ? engines->ctx->name : NULL, error);
>   	}
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 85ff5fe861b4..e51112302fb8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -114,6 +114,7 @@
>   #include "gen8_engine_cs.h"
>   #include "intel_breadcrumbs.h"
>   #include "intel_context.h"
> +#include "intel_engine_heartbeat.h"
>   #include "intel_engine_pm.h"
>   #include "intel_engine_stats.h"
>   #include "intel_execlists_submission.h"
> @@ -2774,6 +2775,50 @@ execlists_active_request(const struct i915_sched *se)
>   	return rq;
>   }
>   
> +static bool __cancel_engine(struct intel_engine_cs *engine)
> +{
> +	/*
> +	 * Send a "high priority pulse" down the engine to cause the
> +	 * current request to be momentarily preempted. (If it fails to
> +	 * be preempted, it will be reset). As we have marked our context
> +	 * as banned, any incomplete request, including any running, will
> +	 * be skipped following the preemption.
> +	 *
> +	 * If there is no hangchecking (one of the reasons why we try to
> +	 * cancel the context) and no forced preemption, there may be no
> +	 * means by which we reset the GPU and evict the persistent hog.
> +	 * Ergo if we are unable to inject a preemptive pulse that can
> +	 * kill the banned context, we fallback to doing a local reset
> +	 * instead.
> +	 */
> +	return intel_engine_pulse(engine) == 0;
> +}
> +
> +static void
> +execlists_revoke_context(struct intel_context *ce, const char *force, int error)
> +{
> +	struct intel_engine_cs *engine;
> +
> +	/*
> +	 * Check the current active state of this context; if we
> +	 * are currently executing on the GPU we need to evict
> +	 * ourselves. On the other hand, if we haven't yet been
> +	 * submitted to the GPU or if everything is complete,
> +	 * we have nothing to do.
> +	 */
> +	engine = intel_context_inflight(ce);
> +
> +	/* First attempt to gracefully cancel the context */
> +	if (engine && !__cancel_engine(engine) && force)
> +		/*
> +		 * If we are unable to send a preemptive pulse to bump
> +		 * the context from the GPU, we have to resort to a full
> +		 * reset. We hope the collateral damage is worth it.
> +		 */
> +		intel_gt_handle_error(engine->gt, engine->mask, 0,
> +				      "context revoked from %s", force);
> +}
> +
>   static bool can_preempt(struct intel_engine_cs *engine)
>   {
>   	if (INTEL_GEN(engine->i915) > 8)
> @@ -2911,6 +2956,7 @@ static void init_execlists(struct intel_engine_cs *engine)
>   	u32 base = engine->mmio_base;
>   
>   	engine->sched.active_request = execlists_active_request;
> +	engine->sched.revoke_context = execlists_revoke_context;
>   	engine->sched.show = execlists_show;
>   	tasklet_setup(&engine->sched.tasklet, execlists_submission_tasklet);
>   
> @@ -3454,6 +3500,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>   			ENGINE_VIRTUAL);
>   
>   	ve->base.sched.submit_request = virtual_submit_request;
> +	ve->base.sched.revoke_context = execlists_revoke_context;
>   	tasklet_setup(&ve->base.sched.tasklet, virtual_submission_tasklet);
>   
>   	virtual_engine_initial_hint(ve);
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index a8fb787278e6..7855601a4958 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -135,6 +135,25 @@ i915_sched_default_active_request(const struct i915_sched *se)
>   	return active;
>   }
>   
> +static bool context_active(struct intel_context *ce)
> +{
> +	return i915_active_fence_isset(&ce->timeline->last_request);
> +}
> +
> +static void
> +i915_sched_default_revoke_context(struct intel_context *ce,
> +				  const char *force,
> +				  int error)
> +{
> +	/*
> +	 * Without backend support, we cannot remove the context from the
> +	 * HW gracefully. All we can do is force a reset, as a last resort.
> +	 */
> +	if (force && context_active(ce))
> +		intel_gt_handle_error(ce->engine->gt, ce->engine->mask, 0,
> +				      "context revoked from %s", force);
> +}
> +
>   void i915_sched_init(struct i915_sched *se,
>   		     struct device *dev,
>   		     const char *name,
> @@ -158,6 +177,7 @@ void i915_sched_init(struct i915_sched *se,
>   
>   	se->submit_request = i915_request_enqueue;
>   	se->active_request = i915_sched_default_active_request;
> +	se->revoke_context = i915_sched_default_revoke_context;
>   }
>   
>   void i915_sched_park(struct i915_sched *se)
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index a8502c94d7c5..84232a07163f 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -15,6 +15,7 @@
>   
>   struct drm_printer;
>   struct i915_request;
> +struct intel_context;
>   
>   /**
>    * struct i915_sched - funnels requests towards hardware
> @@ -40,6 +41,10 @@ struct i915_sched {
>   
>   	struct i915_request *(*active_request)(const struct i915_sched *se);
>   
> +	void (*revoke_context)(struct intel_context *ce,
> +			       const char *whom,
> +			       int error);
> +
>   	void (*show)(struct drm_printer *m,
>   		     struct i915_sched *se,
>   		     void (*show_request)(struct drm_printer *m,
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
