Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D218C5361A0
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 14:07:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3574410EFDD;
	Fri, 27 May 2022 12:07:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE5FA10E0AC;
 Fri, 27 May 2022 12:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653653254; x=1685189254;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=V+RyvoYlbRRFwHX+RuSk29+w1BVmYCovF9+kqOWq+Ew=;
 b=jxKIDabfesS8LoZHpjrT0fJq+tZ+q3XvvfjzVglat+f5pyjzmkcUPUV3
 dq89Kx+rjtEiKckLE9aS+84vfubmsW/+Z0BH6qWHSLPQPNVCL6G4xnPWj
 /02G3w9Rpy7GTc9dZKlcUEJ8tEbuz6emZBRQAkszM43M9tz5CwllrEN8S
 2iAu089rlCmTUe3bWYzgUidoqdsFXDvpX7DI36CBxOhQxEPHqJUBWQ9jM
 PuePyJ8xt4IzXHnHJt1/NWV4GzicssxY32/R71QIpy+amMHaJ+Mu7OxTC
 zrZtgpPl2HJMJK9Oj/3S9fkACkVNUBjAaxdqBq1//9tNQVcGrff35jlvW Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="254339054"
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="254339054"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 05:07:34 -0700
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="603844883"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.27.13])
 ([10.213.27.13])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 05:07:30 -0700
Message-ID: <fa45f87d-9aa1-a36d-631b-2363a95a7665@intel.com>
Date: Fri, 27 May 2022 14:07:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.1
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20220527072452.2225610-1-tvrtko.ursulin@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220527072452.2225610-1-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Improve user experience and
 driver robustness under SIGINT or similar
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 27.05.2022 09:24, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> We have long standing customer complaints that pressing Ctrl-C (or to the
> effect of) causes engine resets with otherwise well behaving programs.
> 
> Not only is logging engine resets during normal operation not desirable
> since it creates support incidents, but more fundamentally we should avoid
> going the engine reset path when we can since any engine reset introduces
> a chance of harming an innocent context.
> 
> Reason for this undesirable behaviour is that the driver currently does
> not distinguish between banned contexts and non-persistent contexts which
> have been closed.
> 
> To fix this we add the distinction between the two reasons for revoking
> contexts, which then allows the strict timeout only be applied to banned,
> while innocent contexts (well behaving) can preempt cleanly and exit
> without triggering the engine reset path.
> 
> Note that the added context exiting category applies both to closed non-
> persistent context, and any exiting context when hangcheck has been
> disabled by the user.
> 
> At the same time we rename the backend operation from 'ban' to 'revoke'
> which more accurately describes the actual semantics. (There is no ban at
> the backend level since banning is a concept driven by the scheduling
> frontend. Backends are simply able to revoke a running context so that
> is the more appropriate name chosen.)
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   | 23 +++++++++++------
>   drivers/gpu/drm/i915/gt/intel_context.c       | 24 ++++++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_context.h       | 25 +++++++++++++------
>   drivers/gpu/drm/i915/gt/intel_context_types.h |  4 ++-
>   .../drm/i915/gt/intel_execlists_submission.c  |  6 ++---
>   .../gpu/drm/i915/gt/intel_ring_submission.c   |  7 +++---
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 15 ++++++-----
>   drivers/gpu/drm/i915/i915_request.c           |  2 +-
>   8 files changed, 77 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index ab4c5ab28e4d..6b171c89b1b3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1367,7 +1367,8 @@ static struct intel_engine_cs *active_engine(struct intel_context *ce)
>   	return engine;
>   }
>   
> -static void kill_engines(struct i915_gem_engines *engines, bool ban)
> +static void
> +kill_engines(struct i915_gem_engines *engines, bool exit, bool persistent)
>   {
>   	struct i915_gem_engines_iter it;
>   	struct intel_context *ce;
> @@ -1381,9 +1382,15 @@ static void kill_engines(struct i915_gem_engines *engines, bool ban)
>   	 */
>   	for_each_gem_engine(ce, engines, it) {
>   		struct intel_engine_cs *engine;
> +		bool skip = false;
>   
> -		if (ban && intel_context_ban(ce, NULL))
> -			continue;
> +		if (exit)
> +			skip = intel_context_set_exiting(ce);
> +		else if (!persistent)
> +			skip = intel_context_exit_nonpersistent(ce, NULL);
> +
> +		if (skip)
> +			continue; /* Already marked. */

why not:
	if (exit && intel_context_set_exiting(ce))
		continue;
	else if (!persistent && intel_context_exit_nonpersistent(ce, NULL)
		continue;

Anyway:
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

>   
>   		/*
>   		 * Check the current active state of this context; if we
> @@ -1395,7 +1402,7 @@ static void kill_engines(struct i915_gem_engines *engines, bool ban)
>   		engine = active_engine(ce);
>   
>   		/* First attempt to gracefully cancel the context */
> -		if (engine && !__cancel_engine(engine) && ban)
> +		if (engine && !__cancel_engine(engine) && (exit || !persistent))
>   			/*
>   			 * If we are unable to send a preemptive pulse to bump
>   			 * the context from the GPU, we have to resort to a full
> @@ -1407,8 +1414,6 @@ static void kill_engines(struct i915_gem_engines *engines, bool ban)
>   
>   static void kill_context(struct i915_gem_context *ctx)
>   {
> -	bool ban = (!i915_gem_context_is_persistent(ctx) ||
> -		    !ctx->i915->params.enable_hangcheck);
>   	struct i915_gem_engines *pos, *next;
>   
>   	spin_lock_irq(&ctx->stale.lock);
> @@ -1421,7 +1426,8 @@ static void kill_context(struct i915_gem_context *ctx)
>   
>   		spin_unlock_irq(&ctx->stale.lock);
>   
> -		kill_engines(pos, ban);
> +		kill_engines(pos, !ctx->i915->params.enable_hangcheck,
> +			     i915_gem_context_is_persistent(ctx));
>   
>   		spin_lock_irq(&ctx->stale.lock);
>   		GEM_BUG_ON(i915_sw_fence_signaled(&pos->fence));
> @@ -1467,7 +1473,8 @@ static void engines_idle_release(struct i915_gem_context *ctx,
>   
>   kill:
>   	if (list_empty(&engines->link)) /* raced, already closed */
> -		kill_engines(engines, true);
> +		kill_engines(engines, true,
> +			     i915_gem_context_is_persistent(ctx));
>   
>   	i915_sw_fence_commit(&engines->fence);
>   }
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index 4070cb5711d8..654a092ed3d6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -601,6 +601,30 @@ u64 intel_context_get_avg_runtime_ns(struct intel_context *ce)
>   	return avg;
>   }
>   
> +bool intel_context_ban(struct intel_context *ce, struct i915_request *rq)
> +{
> +	bool ret = intel_context_set_banned(ce);
> +
> +	trace_intel_context_ban(ce);
> +
> +	if (ce->ops->revoke)
> +		ce->ops->revoke(ce, rq,
> +				INTEL_CONTEXT_BANNED_PREEMPT_TIMEOUT_MS);
> +
> +	return ret;
> +}
> +
> +bool intel_context_exit_nonpersistent(struct intel_context *ce,
> +				      struct i915_request *rq)
> +{
> +	bool ret = intel_context_set_exiting(ce);
> +
> +	if (ce->ops->revoke)
> +		ce->ops->revoke(ce, rq, ce->engine->props.preempt_timeout_ms);
> +
> +	return ret;
> +}
> +
>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>   #include "selftest_context.c"
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> index b7d3214d2cdd..8e2d70630c49 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> @@ -25,6 +25,8 @@
>   		     ##__VA_ARGS__);					\
>   } while (0)
>   
> +#define INTEL_CONTEXT_BANNED_PREEMPT_TIMEOUT_MS (1)
> +
>   struct i915_gem_ww_ctx;
>   
>   void intel_context_init(struct intel_context *ce,
> @@ -309,18 +311,27 @@ static inline bool intel_context_set_banned(struct intel_context *ce)
>   	return test_and_set_bit(CONTEXT_BANNED, &ce->flags);
>   }
>   
> -static inline bool intel_context_ban(struct intel_context *ce,
> -				     struct i915_request *rq)
> +bool intel_context_ban(struct intel_context *ce, struct i915_request *rq);
> +
> +static inline bool intel_context_is_schedulable(const struct intel_context *ce)
>   {
> -	bool ret = intel_context_set_banned(ce);
> +	return !test_bit(CONTEXT_EXITING, &ce->flags) &&
> +	       !test_bit(CONTEXT_BANNED, &ce->flags);
> +}
>   
> -	trace_intel_context_ban(ce);
> -	if (ce->ops->ban)
> -		ce->ops->ban(ce, rq);
> +static inline bool intel_context_is_exiting(const struct intel_context *ce)
> +{
> +	return test_bit(CONTEXT_EXITING, &ce->flags);
> +}
>   
> -	return ret;
> +static inline bool intel_context_set_exiting(struct intel_context *ce)
> +{
> +	return test_and_set_bit(CONTEXT_EXITING, &ce->flags);
>   }
>   
> +bool intel_context_exit_nonpersistent(struct intel_context *ce,
> +				      struct i915_request *rq);
> +
>   static inline bool
>   intel_context_force_single_submission(const struct intel_context *ce)
>   {
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 09f82545789f..d2d75d9c0c8d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -40,7 +40,8 @@ struct intel_context_ops {
>   
>   	int (*alloc)(struct intel_context *ce);
>   
> -	void (*ban)(struct intel_context *ce, struct i915_request *rq);
> +	void (*revoke)(struct intel_context *ce, struct i915_request *rq,
> +		       unsigned int preempt_timeout_ms);
>   
>   	int (*pre_pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void **vaddr);
>   	int (*pin)(struct intel_context *ce, void *vaddr);
> @@ -122,6 +123,7 @@ struct intel_context {
>   #define CONTEXT_GUC_INIT		10
>   #define CONTEXT_PERMA_PIN		11
>   #define CONTEXT_IS_PARKING		12
> +#define CONTEXT_EXITING			13
>   
>   	struct {
>   		u64 timeout_us;
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index a4510b5c0c3d..ad72e2c5c4e7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -480,9 +480,9 @@ __execlists_schedule_in(struct i915_request *rq)
>   
>   	if (unlikely(intel_context_is_closed(ce) &&
>   		     !intel_engine_has_heartbeat(engine)))
> -		intel_context_set_banned(ce);
> +		intel_context_set_exiting(ce);
>   
> -	if (unlikely(intel_context_is_banned(ce) || bad_request(rq)))
> +	if (unlikely(!intel_context_is_schedulable(ce) || bad_request(rq)))
>   		reset_active(rq, engine);
>   
>   	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> @@ -1243,7 +1243,7 @@ static unsigned long active_preempt_timeout(struct intel_engine_cs *engine,
>   
>   	/* Force a fast reset for terminated contexts (ignoring sysfs!) */
>   	if (unlikely(intel_context_is_banned(rq->context) || bad_request(rq)))
> -		return 1;
> +		return INTEL_CONTEXT_BANNED_PREEMPT_TIMEOUT_MS;
>   
>   	return READ_ONCE(engine->props.preempt_timeout_ms);
>   }
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index f8f279a195c0..d5d6f1fadcae 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -598,8 +598,9 @@ static void ring_context_reset(struct intel_context *ce)
>   	clear_bit(CONTEXT_VALID_BIT, &ce->flags);
>   }
>   
> -static void ring_context_ban(struct intel_context *ce,
> -			     struct i915_request *rq)
> +static void ring_context_revoke(struct intel_context *ce,
> +				struct i915_request *rq,
> +				unsigned int preempt_timeout_ms)
>   {
>   	struct intel_engine_cs *engine;
>   
> @@ -634,7 +635,7 @@ static const struct intel_context_ops ring_context_ops = {
>   
>   	.cancel_request = ring_context_cancel_request,
>   
> -	.ban = ring_context_ban,
> +	.revoke = ring_context_revoke,
>   
>   	.pre_pin = ring_context_pre_pin,
>   	.pin = ring_context_pin,
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 5a1dfacf24ea..e62ea35513ea 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -2790,7 +2790,9 @@ static void __guc_context_set_preemption_timeout(struct intel_guc *guc,
>   	__guc_context_set_context_policies(guc, &policy, true);
>   }
>   
> -static void guc_context_ban(struct intel_context *ce, struct i915_request *rq)
> +static void
> +guc_context_revoke(struct intel_context *ce, struct i915_request *rq,
> +		   unsigned int preempt_timeout_ms)
>   {
>   	struct intel_guc *guc = ce_to_guc(ce);
>   	struct intel_runtime_pm *runtime_pm =
> @@ -2829,7 +2831,8 @@ static void guc_context_ban(struct intel_context *ce, struct i915_request *rq)
>   		 * gets kicked off the HW ASAP.
>   		 */
>   		with_intel_runtime_pm(runtime_pm, wakeref) {
> -			__guc_context_set_preemption_timeout(guc, guc_id, 1);
> +			__guc_context_set_preemption_timeout(guc, guc_id,
> +							     preempt_timeout_ms);
>   			__guc_context_sched_disable(guc, ce, guc_id);
>   		}
>   	} else {
> @@ -2837,7 +2840,7 @@ static void guc_context_ban(struct intel_context *ce, struct i915_request *rq)
>   			with_intel_runtime_pm(runtime_pm, wakeref)
>   				__guc_context_set_preemption_timeout(guc,
>   								     ce->guc_id.id,
> -								     1);
> +								     preempt_timeout_ms);
>   		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>   	}
>   }
> @@ -3190,7 +3193,7 @@ static const struct intel_context_ops guc_context_ops = {
>   	.unpin = guc_context_unpin,
>   	.post_unpin = guc_context_post_unpin,
>   
> -	.ban = guc_context_ban,
> +	.revoke = guc_context_revoke,
>   
>   	.cancel_request = guc_context_cancel_request,
>   
> @@ -3439,7 +3442,7 @@ static const struct intel_context_ops virtual_guc_context_ops = {
>   	.unpin = guc_virtual_context_unpin,
>   	.post_unpin = guc_context_post_unpin,
>   
> -	.ban = guc_context_ban,
> +	.revoke = guc_context_revoke,
>   
>   	.cancel_request = guc_context_cancel_request,
>   
> @@ -3528,7 +3531,7 @@ static const struct intel_context_ops virtual_parent_context_ops = {
>   	.unpin = guc_parent_context_unpin,
>   	.post_unpin = guc_context_post_unpin,
>   
> -	.ban = guc_context_ban,
> +	.revoke = guc_context_revoke,
>   
>   	.cancel_request = guc_context_cancel_request,
>   
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 73d5195146b0..c3937640b119 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -611,7 +611,7 @@ bool __i915_request_submit(struct i915_request *request)
>   		goto active;
>   	}
>   
> -	if (unlikely(intel_context_is_banned(request->context)))
> +	if (unlikely(!intel_context_is_schedulable(request->context)))
>   		i915_request_set_error_once(request, -EIO);
>   
>   	if (unlikely(fatal_error(request->fence.error)))

