Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B0330BD94
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 13:03:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE0326E10C;
	Tue,  2 Feb 2021 12:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2AB86E10C
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 12:03:07 +0000 (UTC)
IronPort-SDR: Lu8Fo574IaYh0vJIKvTgpVoqckc+oaZDksuDuojuIlQSmQj02FaskR4Z00I4g8hMnIX0MrP7lc
 PtIXlMl2pDEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="244923080"
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="244923080"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 04:03:07 -0800
IronPort-SDR: e8Q17pFRhgp/Mn/th04OyOqMojid24oZX6KUr8YgNnnS8wLYKiRNuo0blx5Ke+feOYxMw7KIw6
 PMZ+2Z6Gu8Qg==
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="432885236"
Received: from irisshal-mobl1.ger.corp.intel.com (HELO [10.214.210.18])
 ([10.214.210.18])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 04:03:05 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-8-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b0c69c35-dc28-87bd-feed-917a92a50299@linux.intel.com>
Date: Tue, 2 Feb 2021 12:03:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210201085715.27435-8-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/57] drm/i915/gt: Move submission_method
 into intel_gt
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
> Since we setup the submission method for the engines once, it is easy to
> assign an enum and use that instead of probing into the backends.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine.h               |  8 +++++++-
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c            | 12 ++++++++----
>   drivers/gpu/drm/i915/gt/intel_execlists_submission.c |  8 --------
>   drivers/gpu/drm/i915/gt/intel_execlists_submission.h |  3 ---
>   drivers/gpu/drm/i915/gt/intel_gt_types.h             |  7 +++++++
>   drivers/gpu/drm/i915/gt/intel_reset.c                |  7 +++----
>   drivers/gpu/drm/i915/gt/selftest_execlists.c         |  2 +-
>   drivers/gpu/drm/i915/gt/selftest_ring_submission.c   |  2 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c    |  5 -----
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h    |  1 -
>   drivers/gpu/drm/i915/i915_perf.c                     | 10 +++++-----
>   11 files changed, 32 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 47ee8578e511..8d9184920c51 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -13,8 +13,9 @@
>   #include "i915_reg.h"
>   #include "i915_request.h"
>   #include "i915_selftest.h"
> -#include "gt/intel_timeline.h"
>   #include "intel_engine_types.h"
> +#include "intel_gt_types.h"
> +#include "intel_timeline.h"
>   #include "intel_workarounds.h"
>   
>   struct drm_printer;
> @@ -262,6 +263,11 @@ void intel_engine_init_active(struct intel_engine_cs *engine,
>   #define ENGINE_MOCK	1
>   #define ENGINE_VIRTUAL	2
>   
> +static inline bool intel_engine_uses_guc(const struct intel_engine_cs *engine)
> +{
> +	return engine->gt->submission_method >= INTEL_SUBMISSION_GUC;
> +}
> +
>   static inline bool
>   intel_engine_has_preempt_reset(const struct intel_engine_cs *engine)
>   {
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 727128c0166a..3d1bf6b3c3bf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -891,12 +891,16 @@ int intel_engines_init(struct intel_gt *gt)
>   	enum intel_engine_id id;
>   	int err;
>   
> -	if (intel_uc_uses_guc_submission(&gt->uc))
> +	if (intel_uc_uses_guc_submission(&gt->uc)) {
> +		gt->submission_method = INTEL_SUBMISSION_GUC;
>   		setup = intel_guc_submission_setup;
> -	else if (HAS_EXECLISTS(gt->i915))
> +	} else if (HAS_EXECLISTS(gt->i915)) {
> +		gt->submission_method = INTEL_SUBMISSION_ELSP;
>   		setup = intel_execlists_submission_setup;
> -	else
> +	} else {
> +		gt->submission_method = INTEL_SUBMISSION_RING;
>   		setup = intel_ring_submission_setup;
> +	}
>   
>   	for_each_engine(engine, gt, id) {
>   		err = engine_setup_common(engine);
> @@ -1461,7 +1465,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
>   		drm_printf(m, "\tIPEHR: 0x%08x\n", ENGINE_READ(engine, IPEHR));
>   	}
>   
> -	if (intel_engine_in_guc_submission_mode(engine)) {
> +	if (intel_engine_uses_guc(engine)) {
>   		/* nothing to print yet */
>   	} else if (HAS_EXECLISTS(dev_priv)) {
>   		struct i915_request * const *port, *rq;
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 5d824e1cfcba..4ddd2099a931 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -1757,7 +1757,6 @@ process_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
>   	 */
>   	GEM_BUG_ON(!tasklet_is_locked(&execlists->tasklet) &&
>   		   !reset_in_progress(execlists));
> -	GEM_BUG_ON(!intel_engine_in_execlists_submission_mode(engine));
>   
>   	/*
>   	 * Note that csb_write, csb_status may be either in HWSP or mmio.
> @@ -3897,13 +3896,6 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
>   	spin_unlock_irqrestore(&engine->active.lock, flags);
>   }
>   
> -bool
> -intel_engine_in_execlists_submission_mode(const struct intel_engine_cs *engine)
> -{
> -	return engine->set_default_submission ==
> -	       execlists_set_default_submission;
> -}
> -
>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>   #include "selftest_execlists.c"
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.h b/drivers/gpu/drm/i915/gt/intel_execlists_submission.h
> index a8fd7adefd82..f7bd3fccfee8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.h
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.h
> @@ -41,7 +41,4 @@ int intel_virtual_engine_attach_bond(struct intel_engine_cs *engine,
>   				     const struct intel_engine_cs *master,
>   				     const struct intel_engine_cs *sibling);
>   
> -bool
> -intel_engine_in_execlists_submission_mode(const struct intel_engine_cs *engine);
> -
>   #endif /* __INTEL_EXECLISTS_SUBMISSION_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 91d20daca536..626af37c7790 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -29,6 +29,12 @@ struct i915_ggtt;
>   struct intel_engine_cs;
>   struct intel_uncore;
>   
> +enum intel_submission_method {
> +	INTEL_SUBMISSION_RING,
> +	INTEL_SUBMISSION_ELSP,
> +	INTEL_SUBMISSION_GUC,
> +};
> +
>   struct intel_gt {
>   	struct drm_i915_private *i915;
>   	struct intel_uncore *uncore;
> @@ -108,6 +114,7 @@ struct intel_gt {
>   	struct intel_engine_cs *engine[I915_NUM_ENGINES];
>   	struct intel_engine_cs *engine_class[MAX_ENGINE_CLASS + 1]
>   					    [MAX_ENGINE_INSTANCE + 1];
> +	enum intel_submission_method submission_method;
>   
>   	/*
>   	 * Default address space (either GGTT or ppGTT depending on arch).
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index a82c4d7b23bc..4a8f982a1a4f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1113,7 +1113,6 @@ static int intel_gt_reset_engine(struct intel_engine_cs *engine)
>   int __intel_engine_reset_bh(struct intel_engine_cs *engine, const char *msg)
>   {
>   	struct intel_gt *gt = engine->gt;
> -	bool uses_guc = intel_engine_in_guc_submission_mode(engine);
>   	int ret;
>   
>   	ENGINE_TRACE(engine, "flags=%lx\n", gt->reset.flags);
> @@ -1129,10 +1128,10 @@ int __intel_engine_reset_bh(struct intel_engine_cs *engine, const char *msg)
>   			   "Resetting %s for %s\n", engine->name, msg);
>   	atomic_inc(&engine->i915->gpu_error.reset_engine_count[engine->uabi_class]);
>   
> -	if (!uses_guc)
> -		ret = intel_gt_reset_engine(engine);
> -	else
> +	if (intel_engine_uses_guc(engine))
>   		ret = intel_guc_reset_engine(&engine->gt->uc.guc, engine);
> +	else
> +		ret = intel_gt_reset_engine(engine);
>   	if (ret) {
>   		/* If we fail here, we expect to fallback to a global reset */
>   		ENGINE_TRACE(engine, "Failed to reset, err: %d\n", ret);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> index 5d7fac383add..9304a35384aa 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -4715,7 +4715,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(live_virtual_reset),
>   	};
>   
> -	if (!HAS_EXECLISTS(i915))
> +	if (i915->gt.submission_method != INTEL_SUBMISSION_ELSP)
>   		return 0;
>   
>   	if (intel_gt_is_wedged(&i915->gt))
> diff --git a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
> index 3350e7c995bc..6cd9f6bc240c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
> @@ -291,7 +291,7 @@ int intel_ring_submission_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(live_ctx_switch_wa),
>   	};
>   
> -	if (HAS_EXECLISTS(i915))
> +	if (i915->gt.submission_method > INTEL_SUBMISSION_RING)

Not sure the above two hunks in selftests are an improvement, not seeing 
how using enum ordering is better than a feature check.

>   		return 0;
>   
>   	return intel_gt_live_subtests(tests, &i915->gt);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index f72faa0b8339..17b551a0c89f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -745,8 +745,3 @@ void intel_guc_submission_init_early(struct intel_guc *guc)
>   {
>   	guc->submission_selected = __guc_submission_selected(guc);
>   }
> -
> -bool intel_engine_in_guc_submission_mode(const struct intel_engine_cs *engine)
> -{
> -	return engine->set_default_submission == guc_set_default_submission;
> -}
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
> index 5f7b9e6347d0..3f7005018939 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
> @@ -20,7 +20,6 @@ void intel_guc_submission_fini(struct intel_guc *guc);
>   int intel_guc_preempt_work_create(struct intel_guc *guc);
>   void intel_guc_preempt_work_destroy(struct intel_guc *guc);
>   int intel_guc_submission_setup(struct intel_engine_cs *engine);
> -bool intel_engine_in_guc_submission_mode(const struct intel_engine_cs *engine);
>   
>   static inline bool intel_guc_submission_is_supported(struct intel_guc *guc)
>   {
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 112ba5f2ce90..89665e14ab01 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1273,11 +1273,7 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>   	case 8:
>   	case 9:
>   	case 10:
> -		if (intel_engine_in_execlists_submission_mode(ce->engine)) {
> -			stream->specific_ctx_id_mask =
> -				(1U << GEN8_CTX_ID_WIDTH) - 1;
> -			stream->specific_ctx_id = stream->specific_ctx_id_mask;
> -		} else {
> +		if (intel_engine_uses_guc(ce->engine)) {
>   			/*
>   			 * When using GuC, the context descriptor we write in
>   			 * i915 is read by GuC and rewritten before it's
> @@ -1296,6 +1292,10 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>   			 */
>   			stream->specific_ctx_id_mask =
>   				(1U << (GEN8_CTX_ID_WIDTH - 1)) - 1;
> +		} else {
> +			stream->specific_ctx_id_mask =
> +				(1U << GEN8_CTX_ID_WIDTH) - 1;
> +			stream->specific_ctx_id = stream->specific_ctx_id_mask;
>   		}
>   		break;
>   
> 

Mechanics looks fine. I'd prefer the selftests to remain as is but not 
mandatory.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
