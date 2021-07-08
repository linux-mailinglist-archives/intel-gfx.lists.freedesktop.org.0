Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 712853C1BE2
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 01:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B32856E95B;
	Thu,  8 Jul 2021 23:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B846E936
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 23:18:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="209578464"
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="209578464"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 16:18:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="482707935"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga004.fm.intel.com with ESMTP; 08 Jul 2021 16:18:26 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jul 2021 16:18:18 -0700
Message-Id: <20210708231821.9163-8-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708231821.9163-1-anusha.srivatsa@intel.com>
References: <20210708231821.9163-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/10] drm/i915/cnl: Drop all workarounds
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

From: Matt Roper <matthew.d.roper@intel.com>

All of the Cannon Lake hardware that came out had graphics fused off,
and our userspace drivers have already dropped their support for the
platform; CNL-specific code in i915 that isn't inherited by subsequent
platforms is effectively dead code.  Let's remove all of the
CNL-specific workarounds as a quick and easy first step.

References: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/6899
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 55 ---------------------
 1 file changed, 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 62321e9149db..9b257a394305 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -514,35 +514,6 @@ static void cfl_ctx_workarounds_init(struct intel_engine_cs *engine,
 		     GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE);
 }
 
-static void cnl_ctx_workarounds_init(struct intel_engine_cs *engine,
-				     struct i915_wa_list *wal)
-{
-	/* WaForceContextSaveRestoreNonCoherent:cnl */
-	wa_masked_en(wal, CNL_HDC_CHICKEN0,
-		     HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT);
-
-	/* WaDisableReplayBufferBankArbitrationOptimization:cnl */
-	wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
-		     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
-
-	/* WaPushConstantDereferenceHoldDisable:cnl */
-	wa_masked_en(wal, GEN7_ROW_CHICKEN2, PUSH_CONSTANT_DEREF_DISABLE);
-
-	/* FtrEnableFastAnisoL1BankingFix:cnl */
-	wa_masked_en(wal, HALF_SLICE_CHICKEN3, CNL_FAST_ANISO_L1_BANKING_FIX);
-
-	/* WaDisable3DMidCmdPreemption:cnl */
-	wa_masked_dis(wal, GEN8_CS_CHICKEN1, GEN9_PREEMPT_3D_OBJECT_LEVEL);
-
-	/* WaDisableGPGPUMidCmdPreemption:cnl */
-	wa_masked_field_set(wal, GEN8_CS_CHICKEN1,
-			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
-			    GEN9_PREEMPT_GPGPU_COMMAND_LEVEL);
-
-	/* WaDisableEarlyEOT:cnl */
-	wa_masked_en(wal, GEN8_ROW_CHICKEN, DISABLE_EARLY_EOT);
-}
-
 static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 				     struct i915_wa_list *wal)
 {
@@ -704,8 +675,6 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 		gen12_ctx_workarounds_init(engine, wal);
 	else if (GRAPHICS_VER(i915) == 11)
 		icl_ctx_workarounds_init(engine, wal);
-	else if (IS_CANNONLAKE(i915))
-		cnl_ctx_workarounds_init(engine, wal);
 	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
 		cfl_ctx_workarounds_init(engine, wal);
 	else if (IS_GEMINILAKE(i915))
@@ -982,15 +951,6 @@ icl_wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	wa_write_clr_set(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
 }
 
-static void
-cnl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
-{
-	/* WaInPlaceDecompressionHang:cnl */
-	wa_write_or(wal,
-		    GEN9_GAMT_ECO_REG_RW_IA,
-		    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
-}
-
 static void
 icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
@@ -1140,8 +1100,6 @@ gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		gen12_gt_workarounds_init(i915, wal);
 	else if (GRAPHICS_VER(i915) == 11)
 		icl_gt_workarounds_init(i915, wal);
-	else if (IS_CANNONLAKE(i915))
-		cnl_gt_workarounds_init(i915, wal);
 	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
 		cfl_gt_workarounds_init(i915, wal);
 	else if (IS_GEMINILAKE(i915))
@@ -1418,17 +1376,6 @@ static void cml_whitelist_build(struct intel_engine_cs *engine)
 	cfl_whitelist_build(engine);
 }
 
-static void cnl_whitelist_build(struct intel_engine_cs *engine)
-{
-	struct i915_wa_list *w = &engine->whitelist;
-
-	if (engine->class != RENDER_CLASS)
-		return;
-
-	/* WaEnablePreemptionGranularityControlByUMD:cnl */
-	whitelist_reg(w, GEN8_CS_CHICKEN1);
-}
-
 static void icl_whitelist_build(struct intel_engine_cs *engine)
 {
 	struct i915_wa_list *w = &engine->whitelist;
@@ -1542,8 +1489,6 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 		tgl_whitelist_build(engine);
 	else if (GRAPHICS_VER(i915) == 11)
 		icl_whitelist_build(engine);
-	else if (IS_CANNONLAKE(i915))
-		cnl_whitelist_build(engine);
 	else if (IS_COMETLAKE(i915))
 		cml_whitelist_build(engine);
 	else if (IS_COFFEELAKE(i915))
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
