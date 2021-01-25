Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4083026BC
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 16:14:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044756E13C;
	Mon, 25 Jan 2021 15:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 665ED6E13C
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 15:14:05 +0000 (UTC)
IronPort-SDR: dKyUZvZZ5+gov1oaIL/Zo6G0uPWNBWHtS6yg1joNVAD4NaDAaN92zCbc9mdzVUjcmXSgGXqxcz
 ASptg29gmiKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="198521893"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="198521893"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:14:04 -0800
IronPort-SDR: csmuA4i/dqqz3xfA88GVCSM5eb3Sw4ygrNum5bdZitFVIzzpJogNbukYqz10PsUzozOS9eOMU7
 34TmEorYFRtA==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="387420610"
Received: from fjohn-mobl1.ger.corp.intel.com (HELO [10.249.46.217])
 ([10.249.46.217])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:14:03 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c00d178c-d09a-dd14-86f4-1f41c1ddaaf6@linux.intel.com>
Date: Mon, 25 Jan 2021 15:14:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210125140136.10494-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/41] drm/i915: Replace engine->schedule()
 with a known request operation
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
Cc: thomas.hellstrom@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/01/2021 14:00, Chris Wilson wrote:
> Looking to the future, we want to set the scheduling attributes
> explicitly and so replace the generic engine->schedule() with the more
> direct i915_request_set_priority()
> 
> What it loses in removing the 'schedule' name from the function, it
> gains in having an explicit entry point with a stated goal.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  |  5 ++-
>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |  5 ++-
>   drivers/gpu/drm/i915/gem/i915_gem_wait.c      | 29 +++++-----------
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  3 --
>   .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  4 +--
>   drivers/gpu/drm/i915/gt/intel_engine_types.h  | 29 ++++++++--------
>   drivers/gpu/drm/i915/gt/intel_engine_user.c   |  2 +-
>   .../drm/i915/gt/intel_execlists_submission.c  |  3 +-
>   drivers/gpu/drm/i915/gt/selftest_execlists.c  | 33 +++++--------------
>   drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 11 +++----
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  1 -
>   drivers/gpu/drm/i915/i915_request.c           | 10 +++---
>   drivers/gpu/drm/i915/i915_scheduler.c         | 15 +++++----
>   drivers/gpu/drm/i915/i915_scheduler.h         |  3 +-
>   14 files changed, 59 insertions(+), 94 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7ec7d94b8cdb..2e80babd1f66 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13632,7 +13632,6 @@ int
>   intel_prepare_plane_fb(struct drm_plane *_plane,
>   		       struct drm_plane_state *_new_plane_state)
>   {
> -	struct i915_sched_attr attr = { .priority = I915_PRIORITY_DISPLAY };
>   	struct intel_plane *plane = to_intel_plane(_plane);
>   	struct intel_plane_state *new_plane_state =
>   		to_intel_plane_state(_new_plane_state);
> @@ -13673,7 +13672,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>   
>   	if (new_plane_state->uapi.fence) { /* explicit fencing */
>   		i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
> -					     &attr);
> +					     I915_PRIORITY_DISPLAY);
>   		ret = i915_sw_fence_await_dma_fence(&state->commit_ready,
>   						    new_plane_state->uapi.fence,
>   						    i915_fence_timeout(dev_priv),
> @@ -13695,7 +13694,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>   	if (ret)
>   		return ret;
>   
> -	i915_gem_object_wait_priority(obj, 0, &attr);
> +	i915_gem_object_wait_priority(obj, 0, I915_PRIORITY_DISPLAY);
>   	i915_gem_object_flush_frontbuffer(obj, ORIGIN_DIRTYFB);
>   
>   	if (!new_plane_state->uapi.fence) { /* implicit fencing */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 3411ad197fa6..325766abca21 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -549,15 +549,14 @@ static inline void __start_cpu_write(struct drm_i915_gem_object *obj)
>   		obj->cache_dirty = true;
>   }
>   
> -void i915_gem_fence_wait_priority(struct dma_fence *fence,
> -				  const struct i915_sched_attr *attr);
> +void i915_gem_fence_wait_priority(struct dma_fence *fence, int prio);
>   
>   int i915_gem_object_wait(struct drm_i915_gem_object *obj,
>   			 unsigned int flags,
>   			 long timeout);
>   int i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
>   				  unsigned int flags,
> -				  const struct i915_sched_attr *attr);
> +				  int prio);
>   
>   void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
>   					 enum fb_op_origin origin);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> index 4b9856d5ba14..d79bf16083bd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> @@ -91,22 +91,12 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
>   	return timeout;
>   }
>   
> -static void fence_set_priority(struct dma_fence *fence,
> -			       const struct i915_sched_attr *attr)
> +static void fence_set_priority(struct dma_fence *fence, int prio)
>   {
> -	struct i915_request *rq;
> -	struct intel_engine_cs *engine;
> -
>   	if (dma_fence_is_signaled(fence) || !dma_fence_is_i915(fence))
>   		return;
>   
> -	rq = to_request(fence);
> -	engine = rq->engine;
> -
> -	rcu_read_lock(); /* RCU serialisation for set-wedged protection */
> -	if (engine->schedule)
> -		engine->schedule(rq, attr);
> -	rcu_read_unlock();
> +	i915_request_set_priority(to_request(fence), prio);

Don't need the dma_fence_is_i915 check any longer, or at least as assert?

>   }
>   
>   static inline bool __dma_fence_is_chain(const struct dma_fence *fence)
> @@ -114,8 +104,7 @@ static inline bool __dma_fence_is_chain(const struct dma_fence *fence)
>   	return fence->ops == &dma_fence_chain_ops;
>   }
>   
> -void i915_gem_fence_wait_priority(struct dma_fence *fence,
> -				  const struct i915_sched_attr *attr)
> +void i915_gem_fence_wait_priority(struct dma_fence *fence, int prio)
>   {
>   	if (dma_fence_is_signaled(fence))
>   		return;
> @@ -128,19 +117,19 @@ void i915_gem_fence_wait_priority(struct dma_fence *fence,
>   		int i;
>   
>   		for (i = 0; i < array->num_fences; i++)
> -			fence_set_priority(array->fences[i], attr);
> +			fence_set_priority(array->fences[i], prio);
>   	} else if (__dma_fence_is_chain(fence)) {
>   		struct dma_fence *iter;
>   
>   		/* The chain is ordered; if we boost the last, we boost all */
>   		dma_fence_chain_for_each(iter, fence) {
>   			fence_set_priority(to_dma_fence_chain(iter)->fence,
> -					   attr);
> +					   prio);
>   			break;
>   		}
>   		dma_fence_put(iter);
>   	} else {
> -		fence_set_priority(fence, attr);
> +		fence_set_priority(fence, prio);
>   	}
>   
>   	local_bh_enable(); /* kick the tasklets if queues were reprioritised */
> @@ -149,7 +138,7 @@ void i915_gem_fence_wait_priority(struct dma_fence *fence,
>   int
>   i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
>   			      unsigned int flags,
> -			      const struct i915_sched_attr *attr)
> +			      int prio)
>   {
>   	struct dma_fence *excl;
>   
> @@ -164,7 +153,7 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
>   			return ret;
>   
>   		for (i = 0; i < count; i++) {
> -			i915_gem_fence_wait_priority(shared[i], attr);
> +			i915_gem_fence_wait_priority(shared[i], prio);
>   			dma_fence_put(shared[i]);
>   		}
>   
> @@ -174,7 +163,7 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
>   	}
>   
>   	if (excl) {
> -		i915_gem_fence_wait_priority(excl, attr);
> +		i915_gem_fence_wait_priority(excl, prio);
>   		dma_fence_put(excl);
>   	}
>   	return 0;
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index ac9e020dbc9e..7e580d3ac58f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -319,9 +319,6 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
>   	if (engine->context_size)
>   		DRIVER_CAPS(i915)->has_logical_contexts = true;
>   
> -	/* Nothing to do here, execute in order of dependencies */
> -	engine->schedule = NULL;
> -
>   	ewma__engine_latency_init(&engine->latency);
>   	seqcount_init(&engine->stats.lock);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> index 778bcae5ef2c..0b026cde9f09 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> @@ -114,7 +114,7 @@ static void heartbeat(struct work_struct *wrk)
>   			 * but all other contexts, including the kernel
>   			 * context are stuck waiting for the signal.
>   			 */
> -		} else if (engine->schedule &&
> +		} else if (intel_engine_has_scheduler(engine) &&
>   			   rq->sched.attr.priority < I915_PRIORITY_BARRIER) {
>   			/*
>   			 * Gradually raise the priority of the heartbeat to
> @@ -129,7 +129,7 @@ static void heartbeat(struct work_struct *wrk)
>   				attr.priority = I915_PRIORITY_BARRIER;
>   
>   			local_bh_disable();
> -			engine->schedule(rq, &attr);
> +			i915_request_set_priority(rq, attr.priority);
>   			local_bh_enable();
>   		} else {
>   			if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 883bafc44902..27cb3dc0233b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -453,14 +453,6 @@ struct intel_engine_cs {
>   	void            (*bond_execute)(struct i915_request *rq,
>   					struct dma_fence *signal);
>   
> -	/*
> -	 * Call when the priority on a request has changed and it and its
> -	 * dependencies may need rescheduling. Note the request itself may
> -	 * not be ready to run!
> -	 */
> -	void		(*schedule)(struct i915_request *request,
> -				    const struct i915_sched_attr *attr);
> -
>   	void		(*release)(struct intel_engine_cs *engine);
>   
>   	struct intel_engine_execlists execlists;
> @@ -478,13 +470,14 @@ struct intel_engine_cs {
>   
>   #define I915_ENGINE_USING_CMD_PARSER BIT(0)
>   #define I915_ENGINE_SUPPORTS_STATS   BIT(1)
> -#define I915_ENGINE_HAS_PREEMPTION   BIT(2)
> -#define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
> -#define I915_ENGINE_HAS_TIMESLICES   BIT(4)
> -#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(5)
> -#define I915_ENGINE_IS_VIRTUAL       BIT(6)
> -#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(7)
> -#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(8)
> +#define I915_ENGINE_HAS_SCHEDULER    BIT(2)
> +#define I915_ENGINE_HAS_PREEMPTION   BIT(3)
> +#define I915_ENGINE_HAS_SEMAPHORES   BIT(4)
> +#define I915_ENGINE_HAS_TIMESLICES   BIT(5)
> +#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(6)
> +#define I915_ENGINE_IS_VIRTUAL       BIT(7)
> +#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(8)
> +#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(9)
>   	unsigned int flags;
>   
>   	/*
> @@ -572,6 +565,12 @@ intel_engine_supports_stats(const struct intel_engine_cs *engine)
>   	return engine->flags & I915_ENGINE_SUPPORTS_STATS;
>   }
>   
> +static inline bool
> +intel_engine_has_scheduler(const struct intel_engine_cs *engine)
> +{
> +	return engine->flags & I915_ENGINE_HAS_SCHEDULER;
> +}
> +
>   static inline bool
>   intel_engine_has_preemption(const struct intel_engine_cs *engine)
>   {
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> index 1cbd84eb24e4..64eccdf32a22 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> @@ -107,7 +107,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
>   	for_each_uabi_engine(engine, i915) { /* all engines must agree! */
>   		int i;
>   
> -		if (engine->schedule)
> +		if (intel_engine_has_scheduler(engine))
>   			enabled |= (I915_SCHEDULER_CAP_ENABLED |
>   				    I915_SCHEDULER_CAP_PRIORITY);
>   		else
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 56e36d938851..309fb421ff5c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -3073,7 +3073,6 @@ static bool can_preempt(struct intel_engine_cs *engine)
>   static void execlists_set_default_submission(struct intel_engine_cs *engine)
>   {
>   	engine->submit_request = execlists_submit_request;
> -	engine->schedule = i915_schedule;
>   	engine->execlists.tasklet.func = execlists_submission_tasklet;
>   
>   	engine->reset.prepare = execlists_reset_prepare;
> @@ -3084,6 +3083,7 @@ static void execlists_set_default_submission(struct intel_engine_cs *engine)
>   	engine->park = execlists_park;
>   	engine->unpark = NULL;
>   
> +	engine->flags |= I915_ENGINE_HAS_SCHEDULER;
>   	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
>   	if (!intel_vgpu_active(engine->i915)) {
>   		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
> @@ -3646,7 +3646,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>   	ve->base.cops = &virtual_context_ops;
>   	ve->base.request_alloc = execlists_request_alloc;
>   
> -	ve->base.schedule = i915_schedule;
>   	ve->base.submit_request = virtual_submit_request;
>   	ve->base.bond_execute = virtual_bond_execute;
>   
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> index 6cfa9a89d891..acb7c089d05b 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -268,12 +268,8 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
>   		i915_request_put(rq[0]);
>   
>   		if (prio) {
> -			struct i915_sched_attr attr = {
> -				.priority = prio,
> -			};
> -
>   			/* Alternatively preempt the spinner with ce[1] */
> -			engine->schedule(rq[1], &attr);
> +			i915_request_set_priority(rq[1], prio);
>   		}
>   
>   		/* And switch back to ce[0] for good measure */
> @@ -873,9 +869,6 @@ release_queue(struct intel_engine_cs *engine,
>   	      struct i915_vma *vma,
>   	      int idx, int prio)
>   {
> -	struct i915_sched_attr attr = {
> -		.priority = prio,
> -	};
>   	struct i915_request *rq;
>   	u32 *cs;
>   
> @@ -900,7 +893,7 @@ release_queue(struct intel_engine_cs *engine,
>   	i915_request_add(rq);
>   
>   	local_bh_disable();
> -	engine->schedule(rq, &attr);
> +	i915_request_set_priority(rq, prio);
>   	local_bh_enable(); /* kick tasklet */
>   
>   	i915_request_put(rq);
> @@ -1310,7 +1303,6 @@ static int live_timeslice_queue(void *arg)
>   		goto err_pin;
>   
>   	for_each_engine(engine, gt, id) {
> -		struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
>   		struct i915_request *rq, *nop;
>   
>   		if (!intel_engine_has_preemption(engine))
> @@ -1325,7 +1317,7 @@ static int live_timeslice_queue(void *arg)
>   			err = PTR_ERR(rq);
>   			goto err_heartbeat;
>   		}
> -		engine->schedule(rq, &attr);
> +		i915_request_set_priority(rq, I915_PRIORITY_MAX);
>   		err = wait_for_submit(engine, rq, HZ / 2);
>   		if (err) {
>   			pr_err("%s: Timed out trying to submit semaphores\n",
> @@ -1806,7 +1798,6 @@ static int live_late_preempt(void *arg)
>   	struct i915_gem_context *ctx_hi, *ctx_lo;
>   	struct igt_spinner spin_hi, spin_lo;
>   	struct intel_engine_cs *engine;
> -	struct i915_sched_attr attr = {};
>   	enum intel_engine_id id;
>   	int err = -ENOMEM;
>   
> @@ -1866,8 +1857,7 @@ static int live_late_preempt(void *arg)
>   			goto err_wedged;
>   		}
>   
> -		attr.priority = I915_PRIORITY_MAX;
> -		engine->schedule(rq, &attr);
> +		i915_request_set_priority(rq, I915_PRIORITY_MAX);
>   
>   		if (!igt_wait_for_spinner(&spin_hi, rq)) {
>   			pr_err("High priority context failed to preempt the low priority context\n");
> @@ -2412,7 +2402,6 @@ static int live_preempt_cancel(void *arg)
>   
>   static int live_suppress_self_preempt(void *arg)
>   {
> -	struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
>   	struct intel_gt *gt = arg;
>   	struct intel_engine_cs *engine;
>   	struct preempt_client a, b;
> @@ -2480,7 +2469,7 @@ static int live_suppress_self_preempt(void *arg)
>   			i915_request_add(rq_b);
>   
>   			GEM_BUG_ON(i915_request_completed(rq_a));
> -			engine->schedule(rq_a, &attr);
> +			i915_request_set_priority(rq_a, I915_PRIORITY_MAX);
>   			igt_spinner_end(&a.spin);
>   
>   			if (!igt_wait_for_spinner(&b.spin, rq_b)) {
> @@ -2545,7 +2534,6 @@ static int live_chain_preempt(void *arg)
>   		goto err_client_hi;
>   
>   	for_each_engine(engine, gt, id) {
> -		struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
>   		struct igt_live_test t;
>   		struct i915_request *rq;
>   		int ring_size, count, i;
> @@ -2612,7 +2600,7 @@ static int live_chain_preempt(void *arg)
>   
>   			i915_request_get(rq);
>   			i915_request_add(rq);
> -			engine->schedule(rq, &attr);
> +			i915_request_set_priority(rq, I915_PRIORITY_MAX);
>   
>   			igt_spinner_end(&hi.spin);
>   			if (i915_request_wait(rq, 0, HZ / 5) < 0) {
> @@ -2964,14 +2952,12 @@ static int live_preempt_gang(void *arg)
>   			return -EIO;
>   
>   		do {
> -			struct i915_sched_attr attr = { .priority = prio++ };
> -
>   			err = create_gang(engine, &rq);
>   			if (err)
>   				break;
>   
>   			/* Submit each spinner at increasing priority */
> -			engine->schedule(rq, &attr);
> +			i915_request_set_priority(rq, prio++);
>   		} while (prio <= I915_PRIORITY_MAX &&
>   			 !__igt_timeout(end_time, NULL));
>   		pr_debug("%s: Preempt chain of %d requests\n",
> @@ -3192,9 +3178,6 @@ static int preempt_user(struct intel_engine_cs *engine,
>   			struct i915_vma *global,
>   			int id)
>   {
> -	struct i915_sched_attr attr = {
> -		.priority = I915_PRIORITY_MAX
> -	};
>   	struct i915_request *rq;
>   	int err = 0;
>   	u32 *cs;
> @@ -3219,7 +3202,7 @@ static int preempt_user(struct intel_engine_cs *engine,
>   	i915_request_get(rq);
>   	i915_request_add(rq);
>   
> -	engine->schedule(rq, &attr);
> +	i915_request_set_priority(rq, I915_PRIORITY_MAX);
>   
>   	if (i915_request_wait(rq, 0, HZ / 2) < 0)
>   		err = -ETIME;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index d6ce4075602c..8cad102922e7 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -858,12 +858,11 @@ static int active_engine(void *data)
>   		rq[idx] = i915_request_get(new);
>   		i915_request_add(new);
>   
> -		if (engine->schedule && arg->flags & TEST_PRIORITY) {
> -			struct i915_sched_attr attr = {
> -				.priority =
> -					i915_prandom_u32_max_state(512, &prng),
> -			};
> -			engine->schedule(rq[idx], &attr);
> +		if (intel_engine_has_scheduler(engine) &&
> +		    arg->flags & TEST_PRIORITY) {
> +			int prio = i915_prandom_u32_max_state(512, &prng);
> +
> +			i915_request_set_priority(rq[idx], prio);
>   		}
>   
>   		err = active_request_put(old);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 3124d8794d87..53cf68e240c3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -607,7 +607,6 @@ static int guc_resume(struct intel_engine_cs *engine)
>   static void guc_set_default_submission(struct intel_engine_cs *engine)
>   {
>   	engine->submit_request = guc_submit_request;
> -	engine->schedule = i915_schedule;
>   	engine->execlists.tasklet.func = guc_submission_tasklet;
>   
>   	engine->reset.prepare = guc_reset_prepare;
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 22e39d938f17..abda565dfe62 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1218,7 +1218,7 @@ __i915_request_await_execution(struct i915_request *to,
>   	}
>   
>   	/* Couple the dependency tree for PI on this exposed to->fence */
> -	if (to->engine->schedule) {
> +	if (intel_engine_has_scheduler(to->engine)) {
>   		err = i915_sched_node_add_dependency(&to->sched,
>   						     &from->sched,
>   						     I915_DEPENDENCY_WEAK);
> @@ -1359,7 +1359,7 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
>   		return 0;
>   	}
>   
> -	if (to->engine->schedule) {
> +	if (intel_engine_has_scheduler(to->engine)) {
>   		ret = i915_sched_node_add_dependency(&to->sched,
>   						     &from->sched,
>   						     I915_DEPENDENCY_EXTERNAL);
> @@ -1546,7 +1546,7 @@ __i915_request_add_to_timeline(struct i915_request *rq)
>   			__i915_sw_fence_await_dma_fence(&rq->submit,
>   							&prev->fence,
>   							&rq->dmaq);
> -		if (rq->engine->schedule)
> +		if (intel_engine_has_scheduler(rq->engine))
>   			__i915_sched_node_add_dependency(&rq->sched,
>   							 &prev->sched,
>   							 &rq->dep,
> @@ -1618,8 +1618,8 @@ void __i915_request_queue(struct i915_request *rq,
>   	 * decide whether to preempt the entire chain so that it is ready to
>   	 * run at the earliest possible convenience.
>   	 */
> -	if (attr && rq->engine->schedule)
> -		rq->engine->schedule(rq, attr);
> +	if (attr)
> +		i915_request_set_priority(rq, attr->priority);
>   
>   	local_bh_disable();
>   	__i915_request_queue_bh(rq);
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index efa638c3acc7..dbdd4128f13d 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -216,10 +216,8 @@ static void kick_submission(struct intel_engine_cs *engine,
>   	rcu_read_unlock();
>   }
>   
> -static void __i915_schedule(struct i915_sched_node *node,
> -			    const struct i915_sched_attr *attr)
> +static void __i915_schedule(struct i915_sched_node *node, int prio)
>   {
> -	const int prio = max(attr->priority, node->attr.priority);
>   	struct intel_engine_cs *engine;
>   	struct i915_dependency *dep, *p;
>   	struct i915_dependency stack;
> @@ -233,6 +231,8 @@ static void __i915_schedule(struct i915_sched_node *node,
>   	if (node_signaled(node))
>   		return;
>   
> +	prio = max(prio, node->attr.priority);
> +
>   	stack.signaler = node;
>   	list_add(&stack.dfs_link, &dfs);
>   
> @@ -286,7 +286,7 @@ static void __i915_schedule(struct i915_sched_node *node,
>   	 */
>   	if (node->attr.priority == I915_PRIORITY_INVALID) {
>   		GEM_BUG_ON(!list_empty(&node->link));
> -		node->attr = *attr;
> +		node->attr.priority = prio;
>   
>   		if (stack.dfs_link.next == stack.dfs_link.prev)
>   			return;
> @@ -341,10 +341,13 @@ static void __i915_schedule(struct i915_sched_node *node,
>   	spin_unlock(&engine->active.lock);
>   }
>   
> -void i915_schedule(struct i915_request *rq, const struct i915_sched_attr *attr)
> +void i915_request_set_priority(struct i915_request *rq, int prio)
>   {
> +	if (!intel_engine_has_scheduler(rq->engine))
> +		return;
> +
>   	spin_lock_irq(&schedule_lock);
> -	__i915_schedule(&rq->sched, attr);
> +	__i915_schedule(&rq->sched, prio);
>   	spin_unlock_irq(&schedule_lock);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
> index 858a0938f47a..ccee506c9a26 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler.h
> @@ -35,8 +35,7 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
>   
>   void i915_sched_node_fini(struct i915_sched_node *node);
>   
> -void i915_schedule(struct i915_request *request,
> -		   const struct i915_sched_attr *attr);
> +void i915_request_set_priority(struct i915_request *request, int prio);
>   
>   struct list_head *
>   i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
