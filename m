Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 284C3160324
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2020 10:34:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BE226E24E;
	Sun, 16 Feb 2020 09:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF486E24E
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Feb 2020 09:34:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Feb 2020 01:34:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,448,1574150400"; d="scan'208";a="223508198"
Received: from alinassi-mobl2.ger.corp.intel.com (HELO [10.252.52.105])
 ([10.252.52.105])
 by orsmga007.jf.intel.com with ESMTP; 16 Feb 2020 01:34:04 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200215220624.72013-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <2422fb26-fe4f-0648-bbf0-8e56e2e1ee40@intel.com>
Date: Sun, 16 Feb 2020 11:34:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200215220624.72013-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI] drm/i915: Track hw reported context runtime
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

On 16/02/2020 00:06, Chris Wilson wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> GPU saves accumulated context runtime (in CS timestamp units) in PPHWSP
> which will be useful for us in cases when we are not able to track context
> busyness ourselves (like with GuC). Keep a copy of this in struct
> intel_context from where it can be easily read even if the context is not
> pinned.
>
> QQQ: Do we want to make this accounting conditional / able to turn on/off?
>
> v2:
>   (Chris)
>   * Do not store pphwsp address in intel_context.
>   * Log CS wrap-around.
>   * Simplify calculation by relying on integer wraparound.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.c       |  6 +-
>   drivers/gpu/drm/i915/gt/intel_context.h       | 18 ++++
>   drivers/gpu/drm/i915/gt/intel_context_types.h | 11 +++
>   drivers/gpu/drm/i915/gt/intel_lrc.c           | 42 ++++++++-
>   drivers/gpu/drm/i915/gt/selftest_lrc.c        | 87 +++++++++++++++++++
>   drivers/gpu/drm/i915/i915_gpu_error.c         | 11 ++-
>   drivers/gpu/drm/i915/i915_gpu_error.h         |  4 +
>   drivers/gpu/drm/i915/intel_device_info.c      |  6 ++
>   drivers/gpu/drm/i915/intel_device_info.h      |  1 +
>   9 files changed, 181 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index e4f89341d17c..8bb444cda14f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -220,7 +220,9 @@ static void __intel_context_retire(struct i915_active *active)
>   {
>   	struct intel_context *ce = container_of(active, typeof(*ce), active);
>   
> -	CE_TRACE(ce, "retire\n");
> +	CE_TRACE(ce, "retire runtime: { total:%lluns, avg:%lluns }\n",
> +		 intel_context_get_total_runtime_ns(ce),
> +		 intel_context_get_avg_runtime_ns(ce));
>   
>   	set_bit(CONTEXT_VALID_BIT, &ce->flags);
>   	if (ce->state)
> @@ -281,6 +283,8 @@ intel_context_init(struct intel_context *ce,
>   	ce->sseu = engine->sseu;
>   	ce->ring = __intel_context_ring_size(SZ_4K);
>   
> +	ewma_runtime_init(&ce->runtime.avg);
> +
>   	ce->vm = i915_vm_get(engine->gt->vm);
>   
>   	INIT_LIST_HEAD(&ce->signal_link);
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> index 604d5cfc46ba..e58da0938dcb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> @@ -12,6 +12,7 @@
>   #include <linux/types.h>
>   
>   #include "i915_active.h"
> +#include "i915_drv.h"
>   #include "intel_context_types.h"
>   #include "intel_engine_types.h"
>   #include "intel_ring_types.h"
> @@ -227,4 +228,21 @@ intel_context_clear_nopreempt(struct intel_context *ce)
>   	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
>   }
>   
> +static inline u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
> +{
> +	const u32 period =
> +		RUNTIME_INFO(ce->engine->i915)->cs_timestamp_period_ns;
> +
> +	return ce->runtime.total * period;
> +}
> +
> +static inline u64 intel_context_get_avg_runtime_ns(struct intel_context *ce)
> +{
> +	const u32 period =
> +		RUNTIME_INFO(ce->engine->i915)->cs_timestamp_period_ns;
> +
> +	return mul_u32_u32(ewma_runtime_read(&ce->runtime.avg), period);
> +}
> +
> +
>   #endif /* __INTEL_CONTEXT_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index ca1420fb8b53..6112ec97fbdf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -7,6 +7,7 @@
>   #ifndef __INTEL_CONTEXT_TYPES__
>   #define __INTEL_CONTEXT_TYPES__
>   
> +#include <linux/average.h>
>   #include <linux/kref.h>
>   #include <linux/list.h>
>   #include <linux/mutex.h>
> @@ -19,6 +20,8 @@
>   
>   #define CONTEXT_REDZONE POISON_INUSE
>   
> +DECLARE_EWMA(runtime, 3, 4);
> +
>   struct i915_gem_context;
>   struct i915_vma;
>   struct intel_context;
> @@ -68,6 +71,14 @@ struct intel_context {
>   	u64 lrc_desc;
>   	u32 tag; /* cookie passed to HW to track this context on submission */
>   
> +	/* Time on GPU as tracked by the hw. */
> +	struct {
> +		struct ewma_runtime avg;
> +		u64 total;
> +		u32 last;
> +		I915_SELFTEST_DECLARE(u32 underflow);
> +	} runtime;
> +
>   	unsigned int active_count; /* protected by timeline->mutex */
>   
>   	atomic_t pin_count;
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index c3d7727021db..c09079c93345 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1195,6 +1195,38 @@ static void reset_active(struct i915_request *rq,
>   	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
>   }
>   
> +static u32 intel_context_get_runtime(const struct intel_context *ce)
> +{
> +	/*
> +	 * PPHWSP is one page before the lrc state page and in it at
> +	 * dword 16 we have cumulative context runtime in CS timestamp ticks.
> +	 */


I read somewhere this accumulated runtime was incremented only every 8th 
CS timestamp tick.


-Lionel

> +	BUILD_BUG_ON((LRC_STATE_PN - LRC_PPHWSP_PN) != 1);
> +	return ce->lrc_reg_state[-1024 + 16];
> +}
> +
> +static void intel_context_update_runtime(struct intel_context *ce)
> +{
> +	u32 new, old;
> +
> +	if (intel_context_is_barrier(ce))
> +		return;
> +
> +	old = ce->runtime.last;
> +	new = intel_context_get_runtime(ce);
> +	if ((s32)(new - old) <= 0) {
> +		CE_TRACE(ce, "runtime underflow: last=%u, new=%u, delta=%d\n",
> +			 old, new, new - old);
> +		I915_SELFTEST_ONLY(ce->runtime.underflow++);
> +		GEM_TRACE_DUMP();
> +		return;
> +	}
> +
> +	ewma_runtime_add(&ce->runtime.avg, new - old);
> +	ce->runtime.total += new - old;
> +	ce->runtime.last = new;
> +}
> +
>   static inline struct intel_engine_cs *
>   __execlists_schedule_in(struct i915_request *rq)
>   {
> @@ -1278,6 +1310,7 @@ __execlists_schedule_out(struct i915_request *rq,
>   	    i915_request_completed(rq))
>   		intel_engine_add_retire(engine, ce->timeline);
>   
> +	intel_context_update_runtime(ce);
>   	intel_engine_context_out(engine);
>   	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
>   	intel_gt_pm_put_async(engine->gt);
> @@ -4607,8 +4640,13 @@ populate_lr_context(struct intel_context *ce,
>   		inhibit = false;
>   	}
>   
> -	/* The second page of the context object contains some fields which must
> -	 * be set up prior to the first execution. */
> +	/* Clear the ppHWSP (inc. per-context counters) */
> +	memset(vaddr, 0, PAGE_SIZE);
> +
> +	/*
> +	 * The second page of the context object contains some registers which
> +	 * must be set up prior to the first execution.
> +	 */
>   	execlists_init_reg_state(vaddr + LRC_STATE_PN * PAGE_SIZE,
>   				 ce, engine, ring, inhibit);
>   
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 64761e619876..8c6edb6904cd 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -4450,6 +4450,92 @@ static int live_gpr_clear(void *arg)
>   	return err;
>   }
>   
> +static int __live_pphwsp_runtime(struct intel_engine_cs *engine)
> +{
> +	struct intel_context *ce;
> +	struct i915_request *rq;
> +	IGT_TIMEOUT(end_time);
> +	bool timeout = false;
> +	int err;
> +
> +	ce = intel_context_create(engine);
> +	if (IS_ERR(ce))
> +		return PTR_ERR(ce);
> +
> +	ce->runtime.underflow = 0;
> +
> +	while (!timeout) {
> +		unsigned int loop = 1024;
> +
> +		while (loop) {
> +			rq = intel_context_create_request(ce);
> +			if (IS_ERR(rq)) {
> +				err = PTR_ERR(rq);
> +				goto err_rq;
> +			}
> +
> +			if (--loop == 0)
> +				i915_request_get(rq);
> +
> +			i915_request_add(rq);
> +		}
> +		timeout = __igt_timeout(end_time, NULL);
> +		if (!timeout)
> +			i915_request_put(rq);
> +	}
> +
> +	err = i915_request_wait(rq, 0, HZ / 5);
> +	if (err < 0) {
> +		pr_err("%s: request not completed! (err=%d)\n",
> +		       engine->name, err);
> +		goto err_wait;
> +	}
> +
> +	igt_flush_test(engine->i915);
> +
> +	pr_info("%s: pphwsp runtime %lluns, average %llu\n",
> +		engine->name,
> +		intel_context_get_total_runtime_ns(ce),
> +		intel_context_get_avg_runtime_ns(ce));
> +
> +	err = 0;
> +	if (ce->runtime.underflow) {
> +		pr_err("%s: pphwsp underflow %u time(s)!\n",
> +		       engine->name, ce->runtime.underflow);
> +		err = -EOVERFLOW;
> +	}
> +
> +err_wait:
> +	i915_request_put(rq);
> +err_rq:
> +	intel_context_put(ce);
> +	return err;
> +}
> +
> +static int live_pphwsp_runtime(void *arg)
> +{
> +	struct intel_gt *gt = arg;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	int err = 0;
> +
> +	/*
> +	 * Check that cumulative context runtime as stored in the pphwsp[16]
> +	 * is monotonic.
> +	 */
> +
> +	for_each_engine(engine, gt, id) {
> +		err = __live_pphwsp_runtime(engine);
> +		if (err)
> +			break;
> +	}
> +
> +	if (igt_flush_test(gt->i915))
> +		err = -EIO;
> +
> +	return err;
> +}
> +
>   int intel_lrc_live_selftests(struct drm_i915_private *i915)
>   {
>   	static const struct i915_subtest tests[] = {
> @@ -4457,6 +4543,7 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(live_lrc_fixed),
>   		SUBTEST(live_lrc_state),
>   		SUBTEST(live_gpr_clear),
> +		SUBTEST(live_pphwsp_runtime),
>   	};
>   
>   	if (!HAS_LOGICAL_RING_CONTEXTS(i915))
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index b2ed977ed971..3052c4eaf9f6 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -481,9 +481,13 @@ static void error_print_context(struct drm_i915_error_state_buf *m,
>   				const char *header,
>   				const struct i915_gem_context_coredump *ctx)
>   {
> -	err_printf(m, "%s%s[%d] prio %d, guilty %d active %d\n",
> +	const u32 period = RUNTIME_INFO(m->i915)->cs_timestamp_period_ns;
> +
> +	err_printf(m, "%s%s[%d] prio %d, guilty %d active %d, runtime total %lluns, avg %lluns\n",
>   		   header, ctx->comm, ctx->pid, ctx->sched_attr.priority,
> -		   ctx->guilty, ctx->active);
> +		   ctx->guilty, ctx->active,
> +		   ctx->total_runtime * period,
> +		   mul_u32_u32(ctx->avg_runtime, period));
>   }
>   
>   static struct i915_vma_coredump *
> @@ -1260,6 +1264,9 @@ static bool record_context(struct i915_gem_context_coredump *e,
>   	e->guilty = atomic_read(&ctx->guilty_count);
>   	e->active = atomic_read(&ctx->active_count);
>   
> +	e->total_runtime = rq->context->runtime.total;
> +	e->avg_runtime = ewma_runtime_read(&rq->context->runtime.avg);
> +
>   	simulated = i915_gem_context_no_error_capture(ctx);
>   
>   	i915_gem_context_put(ctx);
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index b35bc9edd733..0d1f6c8ff355 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -88,6 +88,10 @@ struct intel_engine_coredump {
>   
>   	struct i915_gem_context_coredump {
>   		char comm[TASK_COMM_LEN];
> +
> +		u64 total_runtime;
> +		u32 avg_runtime;
> +
>   		pid_t pid;
>   		int active;
>   		int guilty;
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index fcdacd6d4aa5..113decd59b40 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -1045,6 +1045,12 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>   
>   	/* Initialize command stream timestamp frequency */
>   	runtime->cs_timestamp_frequency_khz = read_timestamp_frequency(dev_priv);
> +	runtime->cs_timestamp_period_ns =
> +		div_u64(1e6, runtime->cs_timestamp_frequency_khz);
> +	drm_dbg(&dev_priv->drm,
> +		"CS timestamp wraparound in %lldms\n",
> +		div_u64(mul_u32_u32(runtime->cs_timestamp_period_ns, U32_MAX),
> +			USEC_PER_SEC));
>   }
>   
>   void intel_driver_caps_print(const struct intel_driver_caps *caps,
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 7d4d122d2182..f8bfa26388c1 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -217,6 +217,7 @@ struct intel_runtime_info {
>   	struct sseu_dev_info sseu;
>   
>   	u32 cs_timestamp_frequency_khz;
> +	u32 cs_timestamp_period_ns;
>   
>   	/* Media engine access to SFC per instance */
>   	u8 vdbox_sfc_access;


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
