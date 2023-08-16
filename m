Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E66B77EC0F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 23:42:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E3E10E3D6;
	Wed, 16 Aug 2023 21:42:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 102C910E10E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 21:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692222128; x=1723758128;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v0MeIDR6fNRL59RwGRZAV6iKZZdzcrJCFgEPijGF43w=;
 b=g7jnO4Ot2VJLuW8R0tXczqS2TH1nGRVnqg+ZdyoEftEy4oxB5859abPC
 tZ0WbSv/g1zd7ByDLWDMVymkAt+bcdQAiwvb4DhOF7L4zdsSNDQKfxf4b
 yM0o1t5UI4OjMMeKfHrmxogb5u1hAN/eslV99qhLqmh/4yPu3Yr9TfoSW
 KyaPasi86k3NLLT6sJh6PU/ytR2jq4Z1JG/vp5D1cjO3l7yRDa3D2xTs9
 0O3XEOb/XBPDHZwynAx5CpXajRgQxek7Nohwtyt+l5xIvAmMnlobpfVGd
 YBHj0i39D/YYO/nwjpmXCmBDgVxto4wiTPwlT+0tLKprhV2vntWD+TLBJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="436546492"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="436546492"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 14:42:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824378812"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="824378812"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 14:42:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Aug 2023 14:42:07 -0700
Message-ID: <20230816214201.534095-12-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230816214201.534095-7-matthew.d.roper@intel.com>
References: <20230816214201.534095-7-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/5] drm/i915/dg2: Drop Wa_16011777198
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

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h        | 19 ---------------
 drivers/gpu/drm/i915/i915_perf.c       | 32 --------------------------
 drivers/gpu/drm/i915/i915_perf_types.h |  6 -----
 3 files changed, 57 deletions(-)

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

