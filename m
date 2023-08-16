Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC6477EC31
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 23:48:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB6B810E3D5;
	Wed, 16 Aug 2023 21:48:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E2410E3D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 21:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692222509; x=1723758509;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BuuEiQ+sat0lBe6pCerAH8TEuuaSs54pxb2WyX3x/yM=;
 b=lR+F1hwH0CT0OurHBXlE21TL/0Pzxj0lgE9WyHTwKQ6/2tagfXecipZx
 9DGDL5nsjunzdkNhdumYz7sqOfyLTO2Cn50cA60eOCHI3W6Lgw1F1qLIA
 akcJxtl8y06D6WJwIgg5Fyxzf+wX8jKjFGiTTXwJZJycCvDv781v93lpd
 cUHnYWuwMGsXdnMAj6gvCdRftf+LxntYTHnZxZeySt0jMbRkmP114YT/m
 j+Z8E8arsqsXlNWU5wl72clwPIWOHivL1aq15RvTrOPSGSUHZeVFLLZPS
 kA19Z3PWsGCYsW0dF4FiAKTY7gOwpEOVI6WREtPNX2qw+HNvfZxBNvYS2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="352962813"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="352962813"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 14:48:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="684213513"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="684213513"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 14:48:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Aug 2023 14:48:25 -0700
Message-ID: <20230816214824.548575-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230816214201.534095-12-matthew.d.roper@intel.com>
References: <20230816214201.534095-12-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/5] drm/i915/dg2: Drop Wa_16011777198
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wa_16011777198 only applies to pre-production steppings of DG2, which
we're no longer supporting.  Remove the workaround and override_gucrc
handling, which is no longer needed.  Since this was the final use of
IS_DG2_GRAPHICS_STEP, that macro can also be removed now.

v2:
 - Include the promised removal of override_gucrc handling.

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 63 ---------------------
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h |  2 -
 drivers/gpu/drm/i915/i915_drv.h             | 19 -------
 drivers/gpu/drm/i915/i915_perf.c            | 32 -----------
 drivers/gpu/drm/i915/i915_perf_types.h      |  6 --
 5 files changed, 122 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 477df260ae3a..2dfb07cc4b33 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -138,17 +138,6 @@ static int guc_action_slpc_set_param(struct intel_guc *guc, u8 id, u32 value)
 	return ret > 0 ? -EPROTO : ret;
 }
 
-static int guc_action_slpc_unset_param(struct intel_guc *guc, u8 id)
-{
-	u32 request[] = {
-		GUC_ACTION_HOST2GUC_PC_SLPC_REQUEST,
-		SLPC_EVENT(SLPC_EVENT_PARAMETER_UNSET, 1),
-		id,
-	};
-
-	return intel_guc_send(guc, request, ARRAY_SIZE(request));
-}
-
 static bool slpc_is_running(struct intel_guc_slpc *slpc)
 {
 	return slpc_get_state(slpc) == SLPC_GLOBAL_STATE_RUNNING;
@@ -199,15 +188,6 @@ static int slpc_set_param(struct intel_guc_slpc *slpc, u8 id, u32 value)
 	return ret;
 }
 
-static int slpc_unset_param(struct intel_guc_slpc *slpc, u8 id)
-{
-	struct intel_guc *guc = slpc_to_guc(slpc);
-
-	GEM_BUG_ON(id >= SLPC_MAX_PARAM);
-
-	return guc_action_slpc_unset_param(guc, id);
-}
-
 static int slpc_force_min_freq(struct intel_guc_slpc *slpc, u32 freq)
 {
 	struct intel_guc *guc = slpc_to_guc(slpc);
@@ -672,49 +652,6 @@ static void slpc_get_rp_values(struct intel_guc_slpc *slpc)
 		slpc->boost_freq = slpc->rp0_freq;
 }
 
-/**
- * intel_guc_slpc_override_gucrc_mode() - override GUCRC mode
- * @slpc: pointer to intel_guc_slpc.
- * @mode: new value of the mode.
- *
- * This function will override the GUCRC mode.
- *
- * Return: 0 on success, non-zero error code on failure.
- */
-int intel_guc_slpc_override_gucrc_mode(struct intel_guc_slpc *slpc, u32 mode)
-{
-	int ret;
-	struct drm_i915_private *i915 = slpc_to_i915(slpc);
-	intel_wakeref_t wakeref;
-
-	if (mode >= SLPC_GUCRC_MODE_MAX)
-		return -EINVAL;
-
-	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
-		ret = slpc_set_param(slpc, SLPC_PARAM_PWRGATE_RC_MODE, mode);
-		if (ret)
-			guc_err(slpc_to_guc(slpc), "Override RC mode %d failed: %pe\n",
-				mode, ERR_PTR(ret));
-	}
-
-	return ret;
-}
-
-int intel_guc_slpc_unset_gucrc_mode(struct intel_guc_slpc *slpc)
-{
-	struct drm_i915_private *i915 = slpc_to_i915(slpc);
-	intel_wakeref_t wakeref;
-	int ret = 0;
-
-	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
-		ret = slpc_unset_param(slpc, SLPC_PARAM_PWRGATE_RC_MODE);
-		if (ret)
-			guc_err(slpc_to_guc(slpc), "Unsetting RC mode failed: %pe\n", ERR_PTR(ret));
-	}
-
-	return ret;
-}
-
 /*
  * intel_guc_slpc_enable() - Start SLPC
  * @slpc: pointer to intel_guc_slpc.
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
index 597eb5413ddf..6ac6503c39d4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
@@ -44,8 +44,6 @@ int intel_guc_slpc_set_media_ratio_mode(struct intel_guc_slpc *slpc, u32 val);
 void intel_guc_pm_intrmsk_enable(struct intel_gt *gt);
 void intel_guc_slpc_boost(struct intel_guc_slpc *slpc);
 void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc);
-int intel_guc_slpc_unset_gucrc_mode(struct intel_guc_slpc *slpc);
-int intel_guc_slpc_override_gucrc_mode(struct intel_guc_slpc *slpc, u32 mode);
 int intel_guc_slpc_set_ignore_eff_freq(struct intel_guc_slpc *slpc, bool val);
 
 #endif
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7f8fa0eb9dc6..d4568e31b777 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -670,25 +670,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_METEORLAKE(__i915) && \
 	 IS_MEDIA_STEP(__i915, since, until))
 
-/*
- * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
- * create three variants (G10, G11, and G12) which each have distinct
- * workaround sets.  The G11 and G12 forks of the DG2 design reset the GT
- * stepping back to "A0" for their first iterations, even though they're more
- * similar to a G10 B0 stepping and G10 C0 stepping respectively in terms of
- * functionality and workarounds.  However the display stepping does not reset
- * in the same manner --- a specific stepping like "B0" has a consistent
- * meaning regardless of whether it belongs to a G10, G11, or G12 DG2.
- *
- * TLDR:  All GT workarounds and stepping-specific logic must be applied in
- * relation to a specific subplatform (G10/G11/G12), whereas display workarounds
- * and stepping-specific logic will be applied with a general DG2-wide stepping
- * number.
- */
-#define IS_DG2_GRAPHICS_STEP(__i915, variant, since, until) \
-	(IS_SUBPLATFORM(__i915, INTEL_DG2, INTEL_SUBPLATFORM_##variant) && \
-	 IS_GRAPHICS_STEP(__i915, since, until))
-
 #define IS_PVC_BD_STEP(__i915, since, until) \
 	(IS_PONTEVECCHIO(__i915) && \
 	 IS_BASEDIE_STEP(__i915, since, until))
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 04bc1f4a1115..dfe7eff7d1a1 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1675,13 +1675,6 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 
 	free_oa_buffer(stream);
 
-	/*
-	 * Wa_16011777198:dg2: Unset the override of GUCRC mode to enable rc6.
-	 */
-	if (stream->override_gucrc)
-		drm_WARN_ON(&gt->i915->drm,
-			    intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc));
-
 	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
 	intel_engine_pm_put(stream->engine);
 
@@ -3272,7 +3265,6 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	struct drm_i915_private *i915 = stream->perf->i915;
 	struct i915_perf *perf = stream->perf;
 	struct i915_perf_group *g;
-	struct intel_gt *gt;
 	int ret;
 
 	if (!props->engine) {
@@ -3280,7 +3272,6 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 			"OA engine not specified\n");
 		return -EINVAL;
 	}
-	gt = props->engine->gt;
 	g = props->engine->oa_group;
 
 	/*
@@ -3381,25 +3372,6 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	intel_engine_pm_get(stream->engine);
 	intel_uncore_forcewake_get(stream->uncore, FORCEWAKE_ALL);
 
-	/*
-	 * Wa_16011777198:dg2: GuC resets render as part of the Wa. This causes
-	 * OA to lose the configuration state. Prevent this by overriding GUCRC
-	 * mode.
-	 */
-	if (intel_uc_uses_guc_rc(&gt->uc) &&
-	    (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
-	     IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))) {
-		ret = intel_guc_slpc_override_gucrc_mode(&gt->uc.guc.slpc,
-							 SLPC_GUCRC_MODE_GUCRC_NO_RC6);
-		if (ret) {
-			drm_dbg(&stream->perf->i915->drm,
-				"Unable to override gucrc mode\n");
-			goto err_gucrc;
-		}
-
-		stream->override_gucrc = true;
-	}
-
 	ret = alloc_oa_buffer(stream);
 	if (ret)
 		goto err_oa_buf_alloc;
@@ -3436,10 +3408,6 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	free_oa_buffer(stream);
 
 err_oa_buf_alloc:
-	if (stream->override_gucrc)
-		intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc);
-
-err_gucrc:
 	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
 	intel_engine_pm_put(stream->engine);
 
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index fe3a5dae8c22..13b1ae9b96c7 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -338,12 +338,6 @@ struct i915_perf_stream {
 	 * buffer should be checked for available data.
 	 */
 	u64 poll_oa_period;
-
-	/**
-	 * @override_gucrc: GuC RC has been overridden for the perf stream,
-	 * and we need to restore the default configuration on release.
-	 */
-	bool override_gucrc;
 };
 
 /**
-- 
2.41.0

