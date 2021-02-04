Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EB430F5EE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 16:14:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAAE96ED92;
	Thu,  4 Feb 2021 15:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 089766ED92
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 15:14:24 +0000 (UTC)
IronPort-SDR: q4thWRTpraYOsB94UyhbFMGi9CogHVMGYqdnRzujIuxomSIcOqGLDHcz8WCk0a+8DlUUJ8wTaX
 eCkpy/90D+vg==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="168375127"
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="168375127"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:14:23 -0800
IronPort-SDR: LTnnnJsHMHpnJ7Tf924Sp7Aem/Ue6PJDLlFE6qFhdUxWeYfn8NPg4isYZ/Ssb6Pqd1dStvz/EN
 v3ko3GyyTxKQ==
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="393213925"
Received: from acanalx-mobl.ger.corp.intel.com (HELO [10.249.32.114])
 ([10.249.32.114])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:14:22 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-29-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cdbd3495-6bb5-65b1-833c-0b5aa4e5be4b@linux.intel.com>
Date: Thu, 4 Feb 2021 15:14:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210201085715.27435-29-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 29/57] drm/i915: Move scheduler flags
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


On 01/02/2021 08:56, Chris Wilson wrote:
> Start extracting the scheduling flags from the engine. We begin with its
> own existence.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine.h        |  6 ++++++
>   drivers/gpu/drm/i915/gt/intel_engine_types.h  | 21 +++++++------------
>   .../drm/i915/gt/intel_execlists_submission.c  |  6 +++++-
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
>   drivers/gpu/drm/i915/i915_request.h           |  2 +-
>   drivers/gpu/drm/i915/i915_scheduler.c         |  2 +-
>   drivers/gpu/drm/i915/i915_scheduler_types.h   | 10 +++++++++
>   7 files changed, 31 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index c530839627bb..4f0163457aed 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -261,6 +261,12 @@ intel_engine_has_heartbeat(const struct intel_engine_cs *engine)
>   	return READ_ONCE(engine->props.heartbeat_interval_ms);
>   }
>   
> +static inline bool
> +intel_engine_has_scheduler(struct intel_engine_cs *engine)
> +{
> +	return i915_sched_is_active(intel_engine_get_scheduler(engine));
> +}
> +
>   static inline void
>   intel_engine_kick_scheduler(struct intel_engine_cs *engine)
>   {
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 6b0bde292916..a3024a0de1de 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -440,14 +440,13 @@ struct intel_engine_cs {
>   
>   #define I915_ENGINE_USING_CMD_PARSER BIT(0)
>   #define I915_ENGINE_SUPPORTS_STATS   BIT(1)
> -#define I915_ENGINE_HAS_SCHEDULER    BIT(2)
> -#define I915_ENGINE_HAS_PREEMPTION   BIT(3)
> -#define I915_ENGINE_HAS_SEMAPHORES   BIT(4)
> -#define I915_ENGINE_HAS_TIMESLICES   BIT(5)
> -#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(6)
> -#define I915_ENGINE_IS_VIRTUAL       BIT(7)
> -#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(8)
> -#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(9)
> +#define I915_ENGINE_HAS_PREEMPTION   BIT(2)
> +#define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
> +#define I915_ENGINE_HAS_TIMESLICES   BIT(4)
> +#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(5)
> +#define I915_ENGINE_IS_VIRTUAL       BIT(6)
> +#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(7)
> +#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(8)
>   	unsigned int flags;
>   
>   	/*
> @@ -530,12 +529,6 @@ intel_engine_supports_stats(const struct intel_engine_cs *engine)
>   	return engine->flags & I915_ENGINE_SUPPORTS_STATS;
>   }
>   
> -static inline bool
> -intel_engine_has_scheduler(const struct intel_engine_cs *engine)
> -{
> -	return engine->flags & I915_ENGINE_HAS_SCHEDULER;
> -}
> -
>   static inline bool
>   intel_engine_has_preemption(const struct intel_engine_cs *engine)
>   {
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index b1007e560527..3217cb4369ad 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2913,7 +2913,6 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
>   		 */
>   	}
>   
> -	engine->flags |= I915_ENGINE_HAS_SCHEDULER;
>   	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
>   	if (!intel_vgpu_active(engine->i915)) {
>   		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
> @@ -2981,6 +2980,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
>   	engine->sched.is_executing = execlists_is_executing;
>   	engine->sched.show = execlists_show;
>   	tasklet_setup(&engine->sched.tasklet, execlists_submission_tasklet);
> +	__set_bit(I915_SCHED_ACTIVE_BIT, &engine->sched.flags);

This feels a bit dodgy - does is stay like this, with the engine setting 
up both the tasklet and setting the bit directly? Could we say that 
setting a tasklet via a helper could turn on the bit?

>   	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
>   	timer_setup(&engine->execlists.preempt, execlists_preempt, 0);
>   
> @@ -3386,6 +3386,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>   			       unsigned int count)
>   {
>   	struct virtual_engine *ve;
> +	unsigned long sched;
>   	unsigned int n;
>   	int err;
>   
> @@ -3444,6 +3445,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>   		goto err_put;
>   	}
>   
> +	sched = ~0U;
>   	for (n = 0; n < count; n++) {
>   		struct intel_engine_cs *sibling = siblings[n];
>   
> @@ -3473,6 +3475,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>   
>   		ve->siblings[ve->num_siblings++] = sibling;
>   		ve->base.mask |= sibling->mask;
> +		sched &= sibling->sched.flags;
>   
>   		/*
>   		 * All physical engines must be compatible for their emission
> @@ -3514,6 +3517,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>   			ve->base.name,
>   			ve->base.mask,
>   			ENGINE_VIRTUAL);
> +	ve->base.sched.flags = sched;
>   
>   	ve->base.sched.submit_request = virtual_submit_request;
>   	tasklet_setup(&ve->base.sched.tasklet, virtual_submission_tasklet);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index db6ac5a12834..887f38fb671f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -606,7 +606,6 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
>   	}
>   	engine->set_default_submission = guc_set_default_submission;
>   
> -	engine->flags |= I915_ENGINE_HAS_SCHEDULER;
>   	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
>   	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
>   
> @@ -656,6 +655,7 @@ int intel_guc_submission_setup(struct intel_engine_cs *engine)
>   	GEM_BUG_ON(INTEL_GEN(i915) < 11);
>   
>   	tasklet_setup(&engine->sched.tasklet, guc_submission_tasklet);
> +	__set_bit(I915_SCHED_ACTIVE_BIT, &engine->sched.flags);
>   
>   	guc_default_vfuncs(engine);
>   	guc_default_irqs(engine);
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 8d9e59e3cdcb..8eea25cb043e 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -626,7 +626,7 @@ i915_request_active_timeline(const struct i915_request *rq)
>   
>   static inline bool i915_request_use_scheduler(const struct i915_request *rq)
>   {
> -	return intel_engine_has_scheduler(rq->engine);
> +	return i915_sched_is_active(i915_request_get_scheduler(rq));
>   }
>   
>   static inline bool i915_request_is_executing(const struct i915_request *rq)
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index af3a12d6f6d2..48336434bff3 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -550,7 +550,7 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
>   	if (__i915_request_is_complete(rq))
>   		goto unlock;
>   
> -	if (!intel_engine_has_scheduler(engine)) {
> +	if (!i915_sched_is_active(&engine->sched)) {
>   		rq->sched.attr.priority = prio;
>   		goto unlock;
>   	}
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index 685280d61581..cb1eddb7edc8 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -16,6 +16,10 @@
>   struct drm_printer;
>   struct i915_request;
>   
> +enum {
> +	I915_SCHED_ACTIVE_BIT = 0,
> +};
> +
>   /**
>    * struct i915_sched - funnels requests towards hardware
>    *
> @@ -27,6 +31,7 @@ struct i915_request;
>   struct i915_sched {
>   	spinlock_t lock; /* protects the scheduling lists and queue */
>   
> +	unsigned long flags;
>   	unsigned long mask; /* available scheduling channels */
>   
>   	/*
> @@ -174,4 +179,9 @@ struct i915_dependency {
>   				&(rq__)->sched.signalers_list, \
>   				signal_link)
>   
> +static inline bool i915_sched_is_active(const struct i915_sched *se)
> +{
> +	return test_bit(I915_SCHED_ACTIVE_BIT, &se->flags);
> +}

What do you have in mind for the distinction between "has scheduler" and 
"scheduler is active"?

Regards,

Tvrtko

> +
>   #endif /* _I915_SCHEDULER_TYPES_H_ */
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
