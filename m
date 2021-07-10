Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F11F3C3251
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 05:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7B376EAD3;
	Sat, 10 Jul 2021 03:37:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53DC96EAD4
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 03:37:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="273639497"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="273639497"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 20:37:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="566571919"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 20:37:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jul 2021 20:37:24 -0700
Message-Id: <20210710033724.2459367-13-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210710033724.2459367-1-matthew.d.roper@intel.com>
References: <20210710033724.2459367-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 12/12] drm/i915/icl: Drop workarounds that
 only apply to pre-production steppings
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

We're past the point at which we usually drop workarounds that were
never needed on production hardware.  The driver will already print an
error and apply taint if loaded on pre-production hardware.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 39 ---------------------
 drivers/gpu/drm/i915/i915_drv.h             |  3 --
 2 files changed, 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 9b257a394305..5ace14cdfa85 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -517,21 +517,12 @@ static void cfl_ctx_workarounds_init(struct intel_engine_cs *engine,
 static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 				     struct i915_wa_list *wal)
 {
-	struct drm_i915_private *i915 = engine->i915;
-
 	/* WaDisableBankHangMode:icl */
 	wa_write(wal,
 		 GEN8_L3CNTLREG,
 		 intel_uncore_read(engine->uncore, GEN8_L3CNTLREG) |
 		 GEN8_ERRDETBCTRL);
 
-	/* Wa_1604370585:icl (pre-prod)
-	 * Formerly known as WaPushConstantDereferenceHoldDisable
-	 */
-	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_B0))
-		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
-			     PUSH_CONSTANT_DEREF_DISABLE);
-
 	/* WaForceEnableNonCoherent:icl
 	 * This is not the same workaround as in early Gen9 platforms, where
 	 * lacking this could cause system hangs, but coherency performance
@@ -541,18 +532,6 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 */
 	wa_masked_en(wal, ICL_HDC_MODE, HDC_FORCE_NON_COHERENT);
 
-	/* Wa_2006611047:icl (pre-prod)
-	 * Formerly known as WaDisableImprovedTdlClkGating
-	 */
-	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_A0))
-		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
-			     GEN11_TDL_CLOCK_GATING_FIX_DISABLE);
-
-	/* Wa_2006665173:icl (pre-prod) */
-	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_A0))
-		wa_masked_en(wal, GEN11_COMMON_SLICE_CHICKEN3,
-			     GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC);
-
 	/* WaEnableFloatBlendOptimization:icl */
 	wa_write_clr_set(wal,
 			 GEN10_CACHE_MODE_SS,
@@ -982,18 +961,6 @@ icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		    GEN8_GAMW_ECO_DEV_RW_IA,
 		    GAMW_ECO_DEV_CTX_RELOAD_DISABLE);
 
-	/* Wa_1405779004:icl (pre-prod) */
-	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_A0))
-		wa_write_or(wal,
-			    SLICE_UNIT_LEVEL_CLKGATE,
-			    MSCUNIT_CLKGATE_DIS);
-
-	/* Wa_1406838659:icl (pre-prod) */
-	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_B0))
-		wa_write_or(wal,
-			    INF_UNIT_LEVEL_CLKGATE,
-			    CGPSF_CLKGATE_DIS);
-
 	/* Wa_1406463099:icl
 	 * Formerly known as WaGamTlbPendError
 	 */
@@ -1669,12 +1636,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    PMFLUSH_GAPL3UNBLOCK |
 			    PMFLUSHDONE_LNEBLK);
 
-		/* Wa_1406609255:icl (pre-prod) */
-		if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_B0))
-			wa_write_or(wal,
-				    GEN7_SARCHKMD,
-				    GEN7_DISABLE_DEMAND_PREFETCH);
-
 		/* Wa_1606682166:icl */
 		wa_write_or(wal,
 			    GEN7_SARCHKMD,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8682a5f557c5..da5f230e2d4b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1513,9 +1513,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \
 	(IS_KABYLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, since, until))
 
-#define IS_ICL_GT_STEP(p, since, until) \
-	(IS_ICELAKE(p) && IS_GT_STEP(p, since, until))
-
 #define IS_JSL_EHL_GT_STEP(p, since, until) \
 	(IS_JSL_EHL(p) && IS_GT_STEP(p, since, until))
 #define IS_JSL_EHL_DISPLAY_STEP(p, since, until) \
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
