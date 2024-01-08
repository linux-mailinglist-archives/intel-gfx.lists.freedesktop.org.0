Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0006826DD1
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 13:28:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32EA510E230;
	Mon,  8 Jan 2024 12:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C868C10E22B
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 12:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704716892; x=1736252892;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qBAlOWSuTyZjvND1x5bYW3pT9KW0TTWOkJf28ylVmLo=;
 b=aI2Su9JXPDte94UjLoHalT6EDFyDV8isM9znezNNoxx3gJJVtMPBgFHz
 Rd/Zn19CqR9NvCu2AQGyAJIc7mpvhdJbDZ+tHXBWNj7QEn9VwTPOoz8kd
 1dRDufBrclP3Jigl2G6HIywHtDPU6vOhkqvc5N9lTPV3qZquQJeDgbwDL
 NetoXWj2inQu7c2J9eZ4s9U4oHBH+Hwtwpvbkrzk4Q3gf2BonMoqG6+Gv
 tWk6mmzq6bSayeOk7QttSnO1fJiiUjuoxO6kCP2o3jaQVzPB/BETF//qy
 RDYlATWvrXDcUPK2S7DzkbOLqQpx/Fsbjjp7kILXTz20RV67YZKRkGD0K A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="395032598"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="395032598"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:28:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="731093820"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="731093820"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.61])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:28:10 -0800
From: Haridhar Kalvala <haridhar.kalvala@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 3/3] drm/i915/xelpg: Extend some workarounds/tuning to gfx
 version 12.74
Date: Mon,  8 Jan 2024 17:57:38 +0530
Message-Id: <20240108122738.14399-4-haridhar.kalvala@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240108122738.14399-1-haridhar.kalvala@intel.com>
References: <20240108122738.14399-1-haridhar.kalvala@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: Matt Roper <matthew.d.roper@intel.com>

Some of our existing Xe_LPG workarounds and tuning are also applicable
to the version 12.74 variant.  Extend the condition bounds accordingly.
Also fix the comment on Wa_14018575942 while we're at it.

v2: Extend some more workarounds (Harish)

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c    |  4 ++--
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 24 +++++++++++++--------
 drivers/gpu/drm/i915/i915_perf.c            |  2 +-
 3 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 86a04afff64b..e1bf13e3d307 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -226,7 +226,7 @@ u32 *gen12_emit_aux_table_inv(struct intel_engine_cs *engine, u32 *cs)
 static int mtl_dummy_pipe_control(struct i915_request *rq)
 {
 	/* Wa_14016712196 */
-	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 71)) ||
+	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 74)) ||
 	    IS_DG2(rq->i915)) {
 		u32 *cs;
 
@@ -822,7 +822,7 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 		flags |= PIPE_CONTROL_FLUSH_L3;
 
 	/* Wa_14016712196 */
-	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_DG2(i915))
+	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)) || IS_DG2(i915))
 		/* dummy PIPE_CONTROL + depth flush */
 		cs = gen12_emit_pipe_control(cs, 0,
 					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3eacbc50caf8..72dac27d9332 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -789,8 +789,13 @@ static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
 
 	dg2_ctx_gt_tuning_init(engine, wal);
 
-	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
-	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
+	/*
+	 * Due to Wa_16014892111, the DRAW_WATERMARK tuning must be done in
+	 * gen12_emit_indirect_ctx_rcs() rather than here on some early
+	 * steppings.
+	 */
+	if (!(IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+	      IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)))
 		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
 }
 
@@ -908,7 +913,7 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 	if (engine->class != RENDER_CLASS)
 		goto done;
 
-	if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
+	if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 74)))
 		xelpg_ctx_workarounds_init(engine, wal);
 	else if (IS_PONTEVECCHIO(i915))
 		; /* noop; none at this time */
@@ -1643,7 +1648,7 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 static void
 xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
-	/* Wa_14018778641 / Wa_18018781329 */
+	/* Wa_14018575942 / Wa_18018781329 */
 	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
 
 	/* Wa_22016670082 */
@@ -1710,7 +1715,7 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
  */
 static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
 {
-	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71))) {
+	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74))) {
 		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
 		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
 	}
@@ -1743,7 +1748,7 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
 		return;
 	}
 
-	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)))
+	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
 		xelpg_gt_workarounds_init(gt, wal);
 	else if (IS_PONTEVECCHIO(i915))
 		pvc_gt_workarounds_init(gt, wal);
@@ -2216,7 +2221,7 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 
 	if (engine->gt->type == GT_MEDIA)
 		; /* none yet */
-	else if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
+	else if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 74)))
 		xelpg_whitelist_build(engine);
 	else if (IS_PONTEVECCHIO(i915))
 		pvc_whitelist_build(engine);
@@ -2828,7 +2833,7 @@ add_render_compute_tuning_settings(struct intel_gt *gt,
 {
 	struct drm_i915_private *i915 = gt->i915;
 
-	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_DG2(i915))
+	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)) || IS_DG2(i915))
 		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
 
 	/*
@@ -2881,7 +2886,8 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 	}
 
 	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
-	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
+	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER) ||
+	    IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 74), IP_VER(12, 74)))
 		/* Wa_14017856879 */
 		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
 
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 7b1c8de2f9cb..6e1b9c53a22a 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3196,7 +3196,7 @@ u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
 	struct intel_gt *gt = to_gt(i915);
 
 	/* Wa_18013179988 */
-	if (IS_DG2(i915) || IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71))) {
+	if (IS_DG2(i915) || IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74))) {
 		intel_wakeref_t wakeref;
 		u32 reg, shift;
 
-- 
2.25.1

