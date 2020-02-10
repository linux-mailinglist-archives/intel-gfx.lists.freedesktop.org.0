Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C532B15739A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 12:40:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 166916EC11;
	Mon, 10 Feb 2020 11:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50BAF6EC11
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 11:40:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 03:40:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,424,1574150400"; d="scan'208";a="265824784"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 10 Feb 2020 03:40:34 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4DCD75C0D8D; Mon, 10 Feb 2020 13:39:36 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200209230838.361154-2-chris@chris-wilson.co.uk>
References: <20200209230838.361154-1-chris@chris-wilson.co.uk>
 <20200209230838.361154-2-chris@chris-wilson.co.uk>
Date: Mon, 10 Feb 2020 13:39:36 +0200
Message-ID: <87lfpaacxz.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/selftests: Drop
 live_preempt_hang
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> live_preempt_hang's use of hang injection has been superseded by
> live_preempt_reset's use of an non-preemptable spinner. The latter does
> not require intrusive hacks into the code.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Good riddance,

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine.h       |  20 ---
>  drivers/gpu/drm/i915/gt/intel_engine_types.h |   1 -
>  drivers/gpu/drm/i915/gt/intel_lrc.c          |   8 +-
>  drivers/gpu/drm/i915/gt/selftest_lrc.c       | 122 -------------------
>  4 files changed, 4 insertions(+), 147 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index b36ec1fddc3d..29c8c03c5caa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -305,26 +305,6 @@ intel_engine_find_active_request(struct intel_engine_cs *engine);
>  
>  u32 intel_engine_context_size(struct intel_gt *gt, u8 class);
>  
> -#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> -
> -static inline bool inject_preempt_hang(struct intel_engine_execlists *execlists)
> -{
> -	if (!execlists->preempt_hang.inject_hang)
> -		return false;
> -
> -	complete(&execlists->preempt_hang.completion);
> -	return true;
> -}
> -
> -#else
> -
> -static inline bool inject_preempt_hang(struct intel_engine_execlists *execlists)
> -{
> -	return false;
> -}
> -
> -#endif
> -
>  void intel_engine_init_active(struct intel_engine_cs *engine,
>  			      unsigned int subclass);
>  #define ENGINE_PHYSICAL	0
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 45e36d963ea7..b23366a81048 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -127,7 +127,6 @@ DECLARE_EWMA(_engine_latency, 6, 4)
>  struct st_preempt_hang {
>  	struct completion completion;
>  	unsigned int count;
> -	bool inject_hang;
>  };
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 230470c58ec9..929be03bbe7e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2296,19 +2296,19 @@ static void process_csb(struct intel_engine_cs *engine)
>  		if (promote) {
>  			struct i915_request * const *old = execlists->active;
>  
> +			GEM_BUG_ON(!assert_pending_valid(execlists, "promote"));
> +
> +			ring_set_paused(engine, 0);
> +
>  			/* Point active to the new ELSP; prevent overwriting */
>  			WRITE_ONCE(execlists->active, execlists->pending);
>  
> -			if (!inject_preempt_hang(execlists))
> -				ring_set_paused(engine, 0);
> -
>  			/* cancel old inflight, prepare for switch */
>  			trace_ports(execlists, "preempted", old);
>  			while (*old)
>  				execlists_schedule_out(*old++);
>  
>  			/* switch pending to inflight */
> -			GEM_BUG_ON(!assert_pending_valid(execlists, "promote"));
>  			WRITE_ONCE(execlists->active,
>  				   memcpy(execlists->inflight,
>  					  execlists->pending,
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 79b9f7d092e4..7ef68500b2bd 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -2431,127 +2431,6 @@ static int live_preempt_gang(void *arg)
>  	return 0;
>  }
>  
> -static int live_preempt_hang(void *arg)
> -{
> -	struct intel_gt *gt = arg;
> -	struct i915_gem_context *ctx_hi, *ctx_lo;
> -	struct igt_spinner spin_hi, spin_lo;
> -	struct intel_engine_cs *engine;
> -	enum intel_engine_id id;
> -	int err = -ENOMEM;
> -
> -	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
> -		return 0;
> -
> -	if (!intel_has_reset_engine(gt))
> -		return 0;
> -
> -	if (igt_spinner_init(&spin_hi, gt))
> -		return -ENOMEM;
> -
> -	if (igt_spinner_init(&spin_lo, gt))
> -		goto err_spin_hi;
> -
> -	ctx_hi = kernel_context(gt->i915);
> -	if (!ctx_hi)
> -		goto err_spin_lo;
> -	ctx_hi->sched.priority =
> -		I915_USER_PRIORITY(I915_CONTEXT_MAX_USER_PRIORITY);
> -
> -	ctx_lo = kernel_context(gt->i915);
> -	if (!ctx_lo)
> -		goto err_ctx_hi;
> -	ctx_lo->sched.priority =
> -		I915_USER_PRIORITY(I915_CONTEXT_MIN_USER_PRIORITY);
> -
> -	for_each_engine(engine, gt, id) {
> -		unsigned long heartbeat;
> -		struct i915_request *rq;
> -
> -		if (!intel_engine_has_preemption(engine))
> -			continue;
> -
> -		engine_heartbeat_disable(engine, &heartbeat);
> -
> -		rq = spinner_create_request(&spin_lo, ctx_lo, engine,
> -					    MI_ARB_CHECK);
> -		if (IS_ERR(rq)) {
> -			err = PTR_ERR(rq);
> -			engine_heartbeat_enable(engine, heartbeat);
> -			goto err_ctx_lo;
> -		}
> -
> -		i915_request_add(rq);
> -		if (!igt_wait_for_spinner(&spin_lo, rq)) {
> -			GEM_TRACE("lo spinner failed to start\n");
> -			GEM_TRACE_DUMP();
> -			intel_gt_set_wedged(gt);
> -			err = -EIO;
> -			engine_heartbeat_enable(engine, heartbeat);
> -			goto err_ctx_lo;
> -		}
> -
> -		rq = spinner_create_request(&spin_hi, ctx_hi, engine,
> -					    MI_ARB_CHECK);
> -		if (IS_ERR(rq)) {
> -			igt_spinner_end(&spin_lo);
> -			engine_heartbeat_enable(engine, heartbeat);
> -			err = PTR_ERR(rq);
> -			goto err_ctx_lo;
> -		}
> -
> -		init_completion(&engine->execlists.preempt_hang.completion);
> -		engine->execlists.preempt_hang.inject_hang = true;
> -
> -		i915_request_add(rq);
> -
> -		if (!wait_for_completion_timeout(&engine->execlists.preempt_hang.completion,
> -						 HZ / 10)) {
> -			pr_err("Preemption did not occur within timeout!");
> -			GEM_TRACE_DUMP();
> -			intel_gt_set_wedged(gt);
> -			engine_heartbeat_enable(engine, heartbeat);
> -			err = -EIO;
> -			goto err_ctx_lo;
> -		}
> -
> -		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
> -		intel_engine_reset(engine, NULL);
> -		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
> -
> -		engine->execlists.preempt_hang.inject_hang = false;
> -
> -		if (!igt_wait_for_spinner(&spin_hi, rq)) {
> -			GEM_TRACE("hi spinner failed to start\n");
> -			GEM_TRACE_DUMP();
> -			intel_gt_set_wedged(gt);
> -			engine_heartbeat_enable(engine, heartbeat);
> -			err = -EIO;
> -			goto err_ctx_lo;
> -		}
> -
> -		igt_spinner_end(&spin_hi);
> -		igt_spinner_end(&spin_lo);
> -		engine_heartbeat_enable(engine, heartbeat);
> -
> -		if (igt_flush_test(gt->i915)) {
> -			err = -EIO;
> -			goto err_ctx_lo;
> -		}
> -	}
> -
> -	err = 0;
> -err_ctx_lo:
> -	kernel_context_close(ctx_lo);
> -err_ctx_hi:
> -	kernel_context_close(ctx_hi);
> -err_spin_lo:
> -	igt_spinner_fini(&spin_lo);
> -err_spin_hi:
> -	igt_spinner_fini(&spin_hi);
> -	return err;
> -}
> -
>  static int live_preempt_timeout(void *arg)
>  {
>  	struct intel_gt *gt = arg;
> @@ -3750,7 +3629,6 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(live_suppress_wait_preempt),
>  		SUBTEST(live_chain_preempt),
>  		SUBTEST(live_preempt_gang),
> -		SUBTEST(live_preempt_hang),
>  		SUBTEST(live_preempt_timeout),
>  		SUBTEST(live_preempt_smoke),
>  		SUBTEST(live_virtual_engine),
> -- 
> 2.25.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
