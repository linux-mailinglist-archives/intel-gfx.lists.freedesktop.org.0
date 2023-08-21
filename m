Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BA4782FF1
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 20:06:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B94E410E2A2;
	Mon, 21 Aug 2023 18:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E467710E29E
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 18:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692641199; x=1724177199;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B5VaTXalDNfEdS+wSlfxfjoKK4BrCntyOJoO2nixFq4=;
 b=e2XLMgVlnVpnp88XAOfCl+efoWFKYVJfGLklIstQBCdaatzRE5pyv4bl
 A6a5n9YBv61zPIzVDFuCBL+Lqyl+EcvoBA8tdUDGV1nKvyDXpif/FAOGR
 NRrRMtqeI1/utdlCMT7FLh6ik4I89epkWHcTiLowY0Bu00sLA3yoD6mtk
 B6GsUEVelc/Zwl8pcIkroR/NZjbT+8UJSeXHBnEoVFVtO/FDJ+56d+Twr
 Y1S1U+TkCzmmP34EzCmmxVqKjsTNmCt7YmCnXmYI0GXhY4dZWel0TlBDc
 KbQVo9IxGpM++dX2YL1L31qxbvui2dJKPAyzgkGmNJNMJAVjE+ew8txWD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="353236509"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="353236509"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 11:06:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="738995572"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="738995572"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 11:06:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Aug 2023 11:06:24 -0700
Message-ID: <20230821180619.650007-15-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230821180619.650007-11-matthew.d.roper@intel.com>
References: <20230821180619.650007-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 4/9] drm/i915: Eliminate IS_MTL_GRAPHICS_STEP
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
future.  Switch these to use a new IS_GFX_GT_IP_STEP() macro instead
that is purely based on IP version.  IS_GFX_GT_IP_STEP() is also
GT-based rather than device-based, which will help prevent mistakes
where we accidentally try to apply Xe_LPG graphics workarounds to the
Xe_LPM+ media GT and vice-versa.

v2:
 - Switch to a more generic and shorter IS_GT_IP_STEP macro that can be
   used for both graphics and media IP (and any other kind of GTs that
   show up in the future).
v3:
 - Switch back to long-form IS_GFX_GT_IP_STEP macro.  (Jani)
 - Move macro to intel_gt.h.  (Andi)
v4:
 - Build IS_GFX_GT_IP_STEP on top of IS_GFX_GT_IP_RANGE and
   IS_GRAPHICS_STEP building blocks and name the parameters from/until
   rather than begin/fixed.  (Jani)
 - Fix usage examples in comment.
v5:
 - Tweak comment on macro.  (Gustavo)

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    |  5 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 11 +++--
 drivers/gpu/drm/i915/gt/intel_gt.h            | 20 ++++++++
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  7 ++-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 48 ++++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  4 --
 10 files changed, 62 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index a408ec2d3958..4566c95da1ca 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -20,6 +20,7 @@
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 #include "skl_watermark.h"
+#include "gt/intel_gt.h"
 #include "pxp/intel_pxp.h"
 
 static const u32 skl_plane_formats[] = {
@@ -2169,8 +2170,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 				 enum pipe pipe, enum plane_id plane_id)
 {
 	/* Wa_14017240301 */
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+	if (IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 71), STEP_A0, STEP_B0))
 		return false;
 
 	/* Wa_22011186057 */
diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index a4ff55aa5e55..6187b25b67ab 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -4,9 +4,9 @@
  */
 
 #include "gen8_engine_cs.h"
-#include "i915_drv.h"
 #include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
+#include "intel_gt.h"
 #include "intel_lrc.h"
 #include "intel_ring.h"
 
@@ -226,8 +226,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_engine_cs *engine, u32 *cs)
 static int mtl_dummy_pipe_control(struct i915_request *rq)
 {
 	/* Wa_14016712196 */
-	if (IS_MTL_GRAPHICS_STEP(rq->i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(rq->i915, P, STEP_A0, STEP_B0)) {
+	if (IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
 		u32 *cs;
 
 		/* dummy PIPE_CONTROL + depth flush */
@@ -799,6 +799,7 @@ u32 *gen12_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
 u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 {
 	struct drm_i915_private *i915 = rq->i915;
+	struct intel_gt *gt = rq->engine->gt;
 	u32 flags = (PIPE_CONTROL_CS_STALL |
 		     PIPE_CONTROL_TLB_INVALIDATE |
 		     PIPE_CONTROL_TILE_CACHE_FLUSH |
@@ -809,8 +810,8 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 		     PIPE_CONTROL_FLUSH_ENABLE);
 
 	/* Wa_14016712196 */
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
 		/* dummy PIPE_CONTROL + depth flush */
 		cs = gen12_emit_pipe_control(cs, 0,
 					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 15c25980411d..6e63b46682f7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -25,6 +25,26 @@ struct drm_printer;
 	 GRAPHICS_VER_FULL((gt)->i915) >= (from) && \
 	 GRAPHICS_VER_FULL((gt)->i915) <= (until)))
 
+/*
+ * Check that the GT is a graphics GT with a specific IP version and has
+ * a stepping in the range [from, until).  The lower stepping bound is
+ * inclusive, the upper bound is exclusive.  The most common use-case of this
+ * macro is for checking bounds for workarounds, which usually have a stepping
+ * ("from") at which the hardware issue is first present and another stepping
+ * ("until") at which a hardware fix is present and the software workaround is
+ * no longer necessary.  E.g.,
+ *
+ *    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0)
+ *    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B1, STEP_FOREVER)
+ *
+ * "STEP_FOREVER" can be passed as "until" for workarounds that have no upper
+ * stepping bound for the specified IP version.
+ */
+#define IS_GFX_GT_IP_STEP(gt, ipver, from, until) ( \
+	BUILD_BUG_ON_ZERO((until) <= (from)) + \
+	(IS_GFX_GT_IP_RANGE((gt), (ipver), (ipver)) && \
+	 IS_GRAPHICS_STEP((gt)->i915, (from), (until))))
+
 #define GT_TRACE(gt, fmt, ...) do {					\
 	const struct intel_gt *gt__ __maybe_unused = (gt);		\
 	GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),		\
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index 0b414eae1683..11d181b1cc7a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -3,8 +3,7 @@
  * Copyright © 2022 Intel Corporation
  */
 
-#include "i915_drv.h"
-
+#include "intel_gt.h"
 #include "intel_gt_mcr.h"
 #include "intel_gt_print.h"
 #include "intel_gt_regs.h"
@@ -166,8 +165,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
 		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
 	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
 		/* Wa_14016747170 */
-		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+		if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+		    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
 			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
 					     intel_uncore_read(gt->uncore,
 							       MTL_GT_ACTIVITY_FACTOR));
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index bc7ce2c2b959..967fe4d77a87 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1346,8 +1346,8 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 	cs = gen12_emit_aux_table_inv(ce->engine, cs);
 
 	/* Wa_16014892111 */
-	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
+	if (IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
 	    IS_DG2(ce->engine->i915))
 		cs = dg2_emit_draw_watermark_setting(cs);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 1ff7b42521c9..fd6c22aeb670 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1641,7 +1641,7 @@ bool intel_engine_reset_needs_wa_22011802037(struct intel_gt *gt)
 	if (GRAPHICS_VER(gt->i915) < 11)
 		return false;
 
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0))
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0))
 		return true;
 
 	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3f0686dc3620..864d41bcf6bb 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -781,24 +781,24 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
 				     struct i915_wa_list *wal)
 {
-	struct drm_i915_private *i915 = engine->i915;
+	struct intel_gt *gt = engine->gt;
 
 	dg2_ctx_gt_tuning_init(engine, wal);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
+	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
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
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
 		/* Wa_14014947963 */
 		wa_masked_field_set(wal, VF_PREEMPTION,
 				    PREEMPTION_VERTEX_COUNT, 0x4000);
@@ -1641,8 +1641,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	/* Wa_22016670082 */
 	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
 
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
 		/* Wa_14014830051 */
 		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
 
@@ -2294,23 +2294,24 @@ static void
 rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
+	struct intel_gt *gt = engine->gt;
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
 		/* Wa_22014600077 */
 		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
 				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
 	}
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
 	    IS_DG2(i915)) {
 		/* Wa_1509727124 */
 		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
 				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
 	}
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 	    IS_DG2(i915)) {
 		/* Wa_22012856258 */
 		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
@@ -2826,8 +2827,9 @@ static void
 general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
+	struct intel_gt *gt = engine->gt;
 
-	add_render_compute_tuning_settings(engine->gt, wal);
+	add_render_compute_tuning_settings(gt, wal);
 
 	if (GRAPHICS_VER(i915) >= 11) {
 		/* This is not a Wa (although referred to as
@@ -2848,13 +2850,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 				 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
 	}
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
+	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
 		/* Wa_14017856879 */
 		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
 		/*
 		 * Wa_14017066071
 		 * Wa_14017654203
@@ -2862,13 +2864,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
 				 MTL_DISABLE_SAMPLER_SC_OOO);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
 		/* Wa_22015279794 */
 		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
 				 DISABLE_PREFETCH_INTO_IC);
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
 	    IS_DG2(i915)) {
 		/* Wa_22013037850 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
@@ -2878,8 +2880,8 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
 	}
 
-	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
 	    IS_PONTEVECCHIO(i915) ||
 	    IS_DG2(i915)) {
 		/* Wa_22014226127 */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index da967938fea5..861d0c58388c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -273,7 +273,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 		flags |= GUC_WA_POLLCS;
 
 	/* Wa_14014475959 */
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
+	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 	    IS_DG2(gt->i915))
 		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 1bd5d8f7c40b..b2150a962f69 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4265,7 +4265,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 
 	/* Wa_14014475959:dg2 */
 	if (engine->class == COMPUTE_CLASS)
-		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+		if (IS_GFX_GT_IP_STEP(engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 		    IS_DG2(engine->i915))
 			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ee2c33889169..3bb216d55c3e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -658,10 +658,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
 	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
 
-#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
-	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
-	 IS_GRAPHICS_STEP(__i915, since, until))
-
 #define IS_MTL_DISPLAY_STEP(__i915, since, until) \
 	(IS_METEORLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
-- 
2.41.0

