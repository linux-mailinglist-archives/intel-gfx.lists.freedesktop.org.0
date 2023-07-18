Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34690758866
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 00:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0258510E3E2;
	Tue, 18 Jul 2023 22:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FEF210E3DB
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 22:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689719282; x=1721255282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w2aoPBlU3m/SAppvIJUkCrIBVbfdInp2xpo1YKKSe1E=;
 b=KSq/vcGyN9iVK2lBH5wjb/SEvNjGJobWF7SAjC0FUJlthdg2bptzNzdt
 gCdQDQNn2M+m7cdzSs/bVCA2DDrY9PCItqVkS5C5cci9AEgIMcOTC1bbi
 dyvyKpB4WCaxpMHKohgBQ8PIYmVf57XUK97njFEhwQO0PqKvmjsy/j8t6
 V0o5bB7P70Hk5sn30to1ZQEOzy8wVDv2B9wbGZQQyO3/qkzIQikXgEV9w
 ig7EitGH2Lfs5n3ki1iJH0CGfZY238eY6DWscpCB/bKFMWlD4w6+1EjCP
 sKt0WmO5fe5QaLHNUcocDnJvkencK+IxlIKEp01lVj2uFYKnFtX67JQvv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="432508073"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="432508073"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:28:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="970403893"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="970403893"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:28:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 15:27:57 -0700
Message-ID: <20230718222753.1075713-13-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230718222753.1075713-10-matthew.d.roper@intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/8] drm/i915: Eliminate IS_MTL_GRAPHICS_STEP
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

Several workarounds are guarded by IS_MTL_GRAPHICS_STEP.  However none
of these workarounds are actually tied to MTL as a platform; they only
relate to the Xe_LPG graphics IP, regardless of what platform it appears
in.  At the moment MTL is the only platform that uses Xe_LPG with IP
versions 12.70 and 12.71, but we can't count on this being true in the
future.  Switch these to use a new IS_GFX_IPVER_STEP() macro instead
that is purely based on IP version.  IS_GFX_IPVER_STEP() is also
GT-based rather than device-based, which will help prevent mistakes
where we accidentally try to apply Xe_LPG graphics workarounds to the
Xe_LPM+ media GT.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    |  4 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  9 ++--
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 52 ++++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  8 +--
 9 files changed, 46 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 6b01a0b68b97..c13e64faaaad 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2169,8 +2169,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 				 enum pipe pipe, enum plane_id plane_id)
 {
 	/* Wa_14017240301 */
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+	if (IS_GFX_IPVER_STEP(to_gt(i915), IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_IPVER_STEP(to_gt(i915), IP_VER(12, 71), STEP_A0, STEP_B0))
 		return false;
 
 	/* Wa_22011186057 */
diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 23857cc08eca..c1af91d908e5 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -180,8 +180,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
 static int mtl_dummy_pipe_control(struct i915_request *rq)
 {
 	/* Wa_14016712196 */
-	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
+	if (IS_GFX_IPVER_STEP(rq->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_IPVER_STEP(rq->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
 		u32 *cs;
 
 		/* dummy PIPE_CONTROL + depth flush */
@@ -755,6 +755,7 @@ u32 *gen12_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
 u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 {
 	struct drm_i915_private *i915 = rq->engine->i915;
+	struct intel_gt *gt = rq->engine->gt;
 	u32 flags = (PIPE_CONTROL_CS_STALL |
 		     PIPE_CONTROL_TLB_INVALIDATE |
 		     PIPE_CONTROL_TILE_CACHE_FLUSH |
@@ -765,8 +766,8 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 		     PIPE_CONTROL_FLUSH_ENABLE);
 
 	/* Wa_14016712196 */
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
 		/* dummy PIPE_CONTROL + depth flush */
 		cs = gen12_emit_pipe_control(cs, 0,
 					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index 0b414eae1683..41140eb86051 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -166,8 +166,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
 		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
 	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
 		/* Wa_14016747170 */
-		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+		if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+		    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
 			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
 					     intel_uncore_read(gt->uncore,
 							       MTL_GT_ACTIVITY_FACTOR));
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 1b710102390b..4fefa67d285f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1377,8 +1377,8 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 					      cs, GEN12_GFX_CCS_AUX_NV);
 
 	/* Wa_16014892111 */
-	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
+	if (IS_GFX_IPVER_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_IPVER_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
 	    IS_DG2(ce->engine->i915))
 		cs = dg2_emit_draw_watermark_setting(cs);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 1ff7b42521c9..403f0d9caadf 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1641,7 +1641,7 @@ bool intel_engine_reset_needs_wa_22011802037(struct intel_gt *gt)
 	if (GRAPHICS_VER(gt->i915) < 11)
 		return false;
 
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0))
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0))
 		return true;
 
 	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 2a5bf50962ad..785453b2e95e 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -808,24 +808,24 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
 				     struct i915_wa_list *wal)
 {
-	struct drm_i915_private *i915 = engine->i915;
+	struct intel_gt *gt = engine->gt;
 
 	dg2_ctx_gt_tuning_init(engine, wal);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
+	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
 		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
 }
 
 static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
 				       struct i915_wa_list *wal)
 {
-	struct drm_i915_private *i915 = engine->i915;
+	struct intel_gt *gt = engine->gt;
 
 	xelpg_ctx_gt_tuning_init(engine, wal);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
 		/* Wa_14014947963 */
 		wa_masked_field_set(wal, VF_PREEMPTION,
 				    PREEMPTION_VERTEX_COUNT, 0x4000);
@@ -1746,8 +1746,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	/* Wa_22016670082 */
 	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
 
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
 		/* Wa_14014830051 */
 		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
 
@@ -2424,16 +2424,17 @@ static void
 rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
+	struct intel_gt *gt = engine->gt;
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
 		/* Wa_22014600077 */
 		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
 				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
 	}
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
 	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
 		/* Wa_1509727124 */
@@ -2443,7 +2444,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
 	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
-	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
+	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0)) {
 		/* Wa_22012856258 */
 		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
 				 GEN12_DISABLE_READ_SUPPRESSION);
@@ -3008,8 +3009,9 @@ static void
 general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
+	struct intel_gt *gt = engine->gt;
 
-	add_render_compute_tuning_settings(engine->gt, wal);
+	add_render_compute_tuning_settings(gt, wal);
 
 	if (GRAPHICS_VER(i915) >= 11) {
 		/* This is not a Wa (although referred to as
@@ -3030,13 +3032,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 				 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
 	}
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
+	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
 		/* Wa_14017856879 */
 		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
 		/*
 		 * Wa_14017066071
 		 * Wa_14017654203
@@ -3044,13 +3046,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
 				 MTL_DISABLE_SAMPLER_SC_OOO);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
 		/* Wa_22015279794 */
 		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
 				 DISABLE_PREFETCH_INTO_IC);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
 	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
 		/* Wa_22013037850 */
@@ -3058,16 +3060,16 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 				DISABLE_128B_EVICTION_COMMAND_UDW);
 	}
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
 	    IS_PONTEVECCHIO(i915) ||
 	    IS_DG2(i915)) {
 		/* Wa_22014226127 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
 	}
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
 	    IS_DG2(i915)) {
 		/* Wa_18017747507 */
 		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 1e532981f74e..300b968e6de8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 		flags |= GUC_WA_GAM_CREDITS;
 
 	/* Wa_14014475959 */
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
+	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 	    IS_DG2(gt->i915))
 		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 1bd5d8f7c40b..3b159069dbc4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4265,7 +4265,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 
 	/* Wa_14014475959:dg2 */
 	if (engine->class == COMPUTE_CLASS)
-		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+		if (IS_GFX_IPVER_STEP(engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 		    IS_DG2(engine->i915))
 			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f38c93d82c56..d03710c923c8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -692,9 +692,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
 	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
 
-#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
-	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
-	 IS_GRAPHICS_STEP(__i915, since, until))
+#define IS_GFX_IPVER_STEP(__gt, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 (__gt->type != GT_MEDIA && \
+	  GRAPHICS_VER_FULL(__gt->i915) == ipver && \
+	  IS_GRAPHICS_STEP(__gt->i915, since, until)))
 
 #define IS_MTL_DISPLAY_STEP(__i915, since, until) \
 	(IS_METEORLAKE(__i915) && \
-- 
2.41.0

