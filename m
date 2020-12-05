Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DAA2CFACF
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 10:25:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB566E41B;
	Sat,  5 Dec 2020 09:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A03006E41A
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Dec 2020 09:25:48 +0000 (UTC)
IronPort-SDR: mz/SESWGtOTt6QZBKhPsLA9QSiK/c/I3gS0BWSNHbTlwyR9HhCMGrxr/6f1nNhdqFI5TBBdnd7
 GtWNFjAdSfUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="169991257"
X-IronPort-AV: E=Sophos;i="5.78,395,1599548400"; d="scan'208";a="169991257"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2020 01:25:48 -0800
IronPort-SDR: ZCxEmfTZQaHta6Mv9w3XUgjnNFZIsg5IccfbzD8LIMbGOXl9/KJ7SQ+AXCUy046ntC6LXi15jt
 Mrslu8K6BQPQ==
X-IronPort-AV: E=Sophos;i="5.78,395,1599548400"; d="scan'208";a="362441883"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2020 01:25:48 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  5 Dec 2020 01:25:40 -0800
Message-Id: <20201205092542.2325477-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201205092542.2325477-1-lucas.demarchi@intel.com>
References: <20201205092542.2325477-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: remove WA_SET_BIT_MASKED()
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just ommitting the list it's operating on doesn't save much typing and
adds another way to do the same thing. Just replace it with
wa_masked_en().

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 159 ++++++++++----------
 1 file changed, 78 insertions(+), 81 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index a81728c52bd5..b359eaed2da2 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -229,9 +229,6 @@ wa_masked_dis(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
 	wa_add(wal, reg, 0, _MASKED_BIT_DISABLE(val), val);
 }
 
-#define WA_SET_BIT_MASKED(addr, mask) \
-	wa_masked_en(wal, (addr), (mask))
-
 #define WA_CLR_BIT_MASKED(addr, mask) \
 	wa_masked_dis(wal, (addr), (mask))
 
@@ -241,26 +238,26 @@ wa_masked_dis(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
 static void gen6_ctx_workarounds_init(struct intel_engine_cs *engine,
 				      struct i915_wa_list *wal)
 {
-	WA_SET_BIT_MASKED(INSTPM, INSTPM_FORCE_ORDERING);
+	wa_masked_en(wal, INSTPM, INSTPM_FORCE_ORDERING);
 }
 
 static void gen7_ctx_workarounds_init(struct intel_engine_cs *engine,
 				      struct i915_wa_list *wal)
 {
-	WA_SET_BIT_MASKED(INSTPM, INSTPM_FORCE_ORDERING);
+	wa_masked_en(wal, INSTPM, INSTPM_FORCE_ORDERING);
 }
 
 static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
 				      struct i915_wa_list *wal)
 {
-	WA_SET_BIT_MASKED(INSTPM, INSTPM_FORCE_ORDERING);
+	wa_masked_en(wal, INSTPM, INSTPM_FORCE_ORDERING);
 
 	/* WaDisableAsyncFlipPerfMode:bdw,chv */
-	WA_SET_BIT_MASKED(MI_MODE, ASYNC_FLIP_PERF_DISABLE);
+	wa_masked_en(wal, MI_MODE, ASYNC_FLIP_PERF_DISABLE);
 
 	/* WaDisablePartialInstShootdown:bdw,chv */
-	WA_SET_BIT_MASKED(GEN8_ROW_CHICKEN,
-			  PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);
+	wa_masked_en(wal, GEN8_ROW_CHICKEN,
+		     PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);
 
 	/* Use Force Non-Coherent whenever executing a 3D context. This is a
 	 * workaround for for a possible hang in the unlikely event a TLB
@@ -268,9 +265,9 @@ static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 */
 	/* WaForceEnableNonCoherent:bdw,chv */
 	/* WaHdcDisableFetchWhenMasked:bdw,chv */
-	WA_SET_BIT_MASKED(HDC_CHICKEN0,
-			  HDC_DONOT_FETCH_MEM_WHEN_MASKED |
-			  HDC_FORCE_NON_COHERENT);
+	wa_masked_en(wal, HDC_CHICKEN0,
+		     HDC_DONOT_FETCH_MEM_WHEN_MASKED |
+		     HDC_FORCE_NON_COHERENT);
 
 	/* From the Haswell PRM, Command Reference: Registers, CACHE_MODE_0:
 	 * "The Hierarchical Z RAW Stall Optimization allows non-overlapping
@@ -283,7 +280,7 @@ static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
 	WA_CLR_BIT_MASKED(CACHE_MODE_0_GEN7, HIZ_RAW_STALL_OPT_DISABLE);
 
 	/* Wa4x4STCOptimizationDisable:bdw,chv */
-	WA_SET_BIT_MASKED(CACHE_MODE_1, GEN8_4x4_STC_OPTIMIZATION_DISABLE);
+	wa_masked_en(wal, CACHE_MODE_1, GEN8_4x4_STC_OPTIMIZATION_DISABLE);
 
 	/*
 	 * BSpec recommends 8x4 when MSAA is used,
@@ -306,24 +303,24 @@ static void bdw_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen8_ctx_workarounds_init(engine, wal);
 
 	/* WaDisableThreadStallDopClockGating:bdw (pre-production) */
-	WA_SET_BIT_MASKED(GEN8_ROW_CHICKEN, STALL_DOP_GATING_DISABLE);
+	wa_masked_en(wal, GEN8_ROW_CHICKEN, STALL_DOP_GATING_DISABLE);
 
 	/* WaDisableDopClockGating:bdw
 	 *
 	 * Also see the related UCGTCL1 write in bdw_init_clock_gating()
 	 * to disable EUTC clock gating.
 	 */
-	WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2,
-			  DOP_CLOCK_GATING_DISABLE);
+	wa_masked_en(wal, GEN7_ROW_CHICKEN2,
+		     DOP_CLOCK_GATING_DISABLE);
 
-	WA_SET_BIT_MASKED(HALF_SLICE_CHICKEN3,
-			  GEN8_SAMPLER_POWER_BYPASS_DIS);
+	wa_masked_en(wal, HALF_SLICE_CHICKEN3,
+		     GEN8_SAMPLER_POWER_BYPASS_DIS);
 
-	WA_SET_BIT_MASKED(HDC_CHICKEN0,
-			  /* WaForceContextSaveRestoreNonCoherent:bdw */
-			  HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT |
-			  /* WaDisableFenceDestinationToSLM:bdw (pre-prod) */
-			  (IS_BDW_GT3(i915) ? HDC_FENCE_DEST_SLM_DISABLE : 0));
+	wa_masked_en(wal, HDC_CHICKEN0,
+		     /* WaForceContextSaveRestoreNonCoherent:bdw */
+		     HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT |
+		     /* WaDisableFenceDestinationToSLM:bdw (pre-prod) */
+		     (IS_BDW_GT3(i915) ? HDC_FENCE_DEST_SLM_DISABLE : 0));
 }
 
 static void chv_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -332,10 +329,10 @@ static void chv_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen8_ctx_workarounds_init(engine, wal);
 
 	/* WaDisableThreadStallDopClockGating:chv */
-	WA_SET_BIT_MASKED(GEN8_ROW_CHICKEN, STALL_DOP_GATING_DISABLE);
+	wa_masked_en(wal, GEN8_ROW_CHICKEN, STALL_DOP_GATING_DISABLE);
 
 	/* Improve HiZ throughput on CHV. */
-	WA_SET_BIT_MASKED(HIZ_CHICKEN, CHV_HZ_8X8_MODE_IN_1X);
+	wa_masked_en(wal, HIZ_CHICKEN, CHV_HZ_8X8_MODE_IN_1X);
 }
 
 static void gen9_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -349,38 +346,38 @@ static void gen9_ctx_workarounds_init(struct intel_engine_cs *engine,
 		 * Must match Display Engine. See
 		 * WaCompressedResourceDisplayNewHashMode.
 		 */
-		WA_SET_BIT_MASKED(COMMON_SLICE_CHICKEN2,
-				  GEN9_PBE_COMPRESSED_HASH_SELECTION);
-		WA_SET_BIT_MASKED(GEN9_HALF_SLICE_CHICKEN7,
-				  GEN9_SAMPLER_HASH_COMPRESSED_READ_ADDR);
+		wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
+			     GEN9_PBE_COMPRESSED_HASH_SELECTION);
+		wa_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
+			     GEN9_SAMPLER_HASH_COMPRESSED_READ_ADDR);
 	}
 
 	/* WaClearFlowControlGpgpuContextSave:skl,bxt,kbl,glk,cfl */
 	/* WaDisablePartialInstShootdown:skl,bxt,kbl,glk,cfl */
-	WA_SET_BIT_MASKED(GEN8_ROW_CHICKEN,
-			  FLOW_CONTROL_ENABLE |
-			  PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);
+	wa_masked_en(wal, GEN8_ROW_CHICKEN,
+		     FLOW_CONTROL_ENABLE |
+		     PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);
 
 	/* WaEnableYV12BugFixInHalfSliceChicken7:skl,bxt,kbl,glk,cfl */
 	/* WaEnableSamplerGPGPUPreemptionSupport:skl,bxt,kbl,cfl */
-	WA_SET_BIT_MASKED(GEN9_HALF_SLICE_CHICKEN7,
-			  GEN9_ENABLE_YV12_BUGFIX |
-			  GEN9_ENABLE_GPGPU_PREEMPTION);
+	wa_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
+		     GEN9_ENABLE_YV12_BUGFIX |
+		     GEN9_ENABLE_GPGPU_PREEMPTION);
 
 	/* Wa4x4STCOptimizationDisable:skl,bxt,kbl,glk,cfl */
 	/* WaDisablePartialResolveInVc:skl,bxt,kbl,cfl */
-	WA_SET_BIT_MASKED(CACHE_MODE_1,
-			  GEN8_4x4_STC_OPTIMIZATION_DISABLE |
-			  GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE);
+	wa_masked_en(wal, CACHE_MODE_1,
+		     GEN8_4x4_STC_OPTIMIZATION_DISABLE |
+		     GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE);
 
 	/* WaCcsTlbPrefetchDisable:skl,bxt,kbl,glk,cfl */
 	WA_CLR_BIT_MASKED(GEN9_HALF_SLICE_CHICKEN5,
 			  GEN9_CCS_TLB_PREFETCH_ENABLE);
 
 	/* WaForceContextSaveRestoreNonCoherent:skl,bxt,kbl,cfl */
-	WA_SET_BIT_MASKED(HDC_CHICKEN0,
-			  HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT |
-			  HDC_FORCE_CSR_NON_COHERENT_OVR_DISABLE);
+	wa_masked_en(wal, HDC_CHICKEN0,
+		     HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT |
+		     HDC_FORCE_CSR_NON_COHERENT_OVR_DISABLE);
 
 	/* WaForceEnableNonCoherent and WaDisableHDCInvalidation are
 	 * both tied to WaForceContextSaveRestoreNonCoherent
@@ -396,19 +393,19 @@ static void gen9_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 */
 
 	/* WaForceEnableNonCoherent:skl,bxt,kbl,cfl */
-	WA_SET_BIT_MASKED(HDC_CHICKEN0,
-			  HDC_FORCE_NON_COHERENT);
+	wa_masked_en(wal, HDC_CHICKEN0,
+		     HDC_FORCE_NON_COHERENT);
 
 	/* WaDisableSamplerPowerBypassForSOPingPong:skl,bxt,kbl,cfl */
 	if (IS_SKYLAKE(i915) ||
 	    IS_KABYLAKE(i915) ||
 	    IS_COFFEELAKE(i915) ||
 	    IS_COMETLAKE(i915))
-		WA_SET_BIT_MASKED(HALF_SLICE_CHICKEN3,
-				  GEN8_SAMPLER_POWER_BYPASS_DIS);
+		wa_masked_en(wal, HALF_SLICE_CHICKEN3,
+			     GEN8_SAMPLER_POWER_BYPASS_DIS);
 
 	/* WaDisableSTUnitPowerOptimization:skl,bxt,kbl,glk,cfl */
-	WA_SET_BIT_MASKED(HALF_SLICE_CHICKEN2, GEN8_ST_PO_DISABLE);
+	wa_masked_en(wal, HALF_SLICE_CHICKEN2, GEN8_ST_PO_DISABLE);
 
 	/*
 	 * Supporting preemption with fine-granularity requires changes in the
@@ -431,7 +428,7 @@ static void gen9_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* WaClearHIZ_WM_CHICKEN3:bxt,glk */
 	if (IS_GEN9_LP(i915))
-		WA_SET_BIT_MASKED(GEN9_WM_CHICKEN3, GEN9_FACTOR_IN_CLR_VAL_HIZ);
+		wa_masked_en(wal, GEN9_WM_CHICKEN3, GEN9_FACTOR_IN_CLR_VAL_HIZ);
 }
 
 static void skl_tune_iz_hashing(struct intel_engine_cs *engine,
@@ -487,12 +484,12 @@ static void bxt_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen9_ctx_workarounds_init(engine, wal);
 
 	/* WaDisableThreadStallDopClockGating:bxt */
-	WA_SET_BIT_MASKED(GEN8_ROW_CHICKEN,
-			  STALL_DOP_GATING_DISABLE);
+	wa_masked_en(wal, GEN8_ROW_CHICKEN,
+		     STALL_DOP_GATING_DISABLE);
 
 	/* WaToEnableHwFixForPushConstHWBug:bxt */
-	WA_SET_BIT_MASKED(COMMON_SLICE_CHICKEN2,
-			  GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
+	wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
+		     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 }
 
 static void kbl_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -504,12 +501,12 @@ static void kbl_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* WaToEnableHwFixForPushConstHWBug:kbl */
 	if (IS_KBL_GT_REVID(i915, KBL_REVID_C0, REVID_FOREVER))
-		WA_SET_BIT_MASKED(COMMON_SLICE_CHICKEN2,
-				  GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
+		wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
+			     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 
 	/* WaDisableSbeCacheDispatchPortSharing:kbl */
-	WA_SET_BIT_MASKED(GEN7_HALF_SLICE_CHICKEN1,
-			  GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE);
+	wa_masked_en(wal, GEN7_HALF_SLICE_CHICKEN1,
+		     GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE);
 }
 
 static void glk_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -518,8 +515,8 @@ static void glk_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen9_ctx_workarounds_init(engine, wal);
 
 	/* WaToEnableHwFixForPushConstHWBug:glk */
-	WA_SET_BIT_MASKED(COMMON_SLICE_CHICKEN2,
-			  GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
+	wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
+		     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 }
 
 static void cfl_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -528,30 +525,30 @@ static void cfl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen9_ctx_workarounds_init(engine, wal);
 
 	/* WaToEnableHwFixForPushConstHWBug:cfl */
-	WA_SET_BIT_MASKED(COMMON_SLICE_CHICKEN2,
-			  GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
+	wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
+		     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 
 	/* WaDisableSbeCacheDispatchPortSharing:cfl */
-	WA_SET_BIT_MASKED(GEN7_HALF_SLICE_CHICKEN1,
-			  GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE);
+	wa_masked_en(wal, GEN7_HALF_SLICE_CHICKEN1,
+		     GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE);
 }
 
 static void cnl_ctx_workarounds_init(struct intel_engine_cs *engine,
 				     struct i915_wa_list *wal)
 {
 	/* WaForceContextSaveRestoreNonCoherent:cnl */
-	WA_SET_BIT_MASKED(CNL_HDC_CHICKEN0,
-			  HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT);
+	wa_masked_en(wal, CNL_HDC_CHICKEN0,
+		     HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT);
 
 	/* WaDisableReplayBufferBankArbitrationOptimization:cnl */
-	WA_SET_BIT_MASKED(COMMON_SLICE_CHICKEN2,
-			  GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
+	wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
+		     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 
 	/* WaPushConstantDereferenceHoldDisable:cnl */
-	WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2, PUSH_CONSTANT_DEREF_DISABLE);
+	wa_masked_en(wal, GEN7_ROW_CHICKEN2, PUSH_CONSTANT_DEREF_DISABLE);
 
 	/* FtrEnableFastAnisoL1BankingFix:cnl */
-	WA_SET_BIT_MASKED(HALF_SLICE_CHICKEN3, CNL_FAST_ANISO_L1_BANKING_FIX);
+	wa_masked_en(wal, HALF_SLICE_CHICKEN3, CNL_FAST_ANISO_L1_BANKING_FIX);
 
 	/* WaDisable3DMidCmdPreemption:cnl */
 	WA_CLR_BIT_MASKED(GEN8_CS_CHICKEN1, GEN9_PREEMPT_3D_OBJECT_LEVEL);
@@ -562,7 +559,7 @@ static void cnl_ctx_workarounds_init(struct intel_engine_cs *engine,
 			    GEN9_PREEMPT_GPGPU_COMMAND_LEVEL);
 
 	/* WaDisableEarlyEOT:cnl */
-	WA_SET_BIT_MASKED(GEN8_ROW_CHICKEN, DISABLE_EARLY_EOT);
+	wa_masked_en(wal, GEN8_ROW_CHICKEN, DISABLE_EARLY_EOT);
 }
 
 static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -580,8 +577,8 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 * Formerly known as WaPushConstantDereferenceHoldDisable
 	 */
 	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_B0))
-		WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2,
-				  PUSH_CONSTANT_DEREF_DISABLE);
+		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
+			     PUSH_CONSTANT_DEREF_DISABLE);
 
 	/* WaForceEnableNonCoherent:icl
 	 * This is not the same workaround as in early Gen9 platforms, where
@@ -590,19 +587,19 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 * (the register is whitelisted in hardware now, so UMDs can opt in
 	 * for coherency if they have a good reason).
 	 */
-	WA_SET_BIT_MASKED(ICL_HDC_MODE, HDC_FORCE_NON_COHERENT);
+	wa_masked_en(wal, ICL_HDC_MODE, HDC_FORCE_NON_COHERENT);
 
 	/* Wa_2006611047:icl (pre-prod)
 	 * Formerly known as WaDisableImprovedTdlClkGating
 	 */
 	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_A0))
-		WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2,
-				  GEN11_TDL_CLOCK_GATING_FIX_DISABLE);
+		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
+			     GEN11_TDL_CLOCK_GATING_FIX_DISABLE);
 
 	/* Wa_2006665173:icl (pre-prod) */
 	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_A0))
-		WA_SET_BIT_MASKED(GEN11_COMMON_SLICE_CHICKEN3,
-				  GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC);
+		wa_masked_en(wal, GEN11_COMMON_SLICE_CHICKEN3,
+			     GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC);
 
 	/* WaEnableFloatBlendOptimization:icl */
 	wa_write_masked_or(wal,
@@ -616,8 +613,8 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
 
 	/* allow headerless messages for preemptible GPGPU context */
-	WA_SET_BIT_MASKED(GEN10_SAMPLER_MODE,
-			  GEN11_SAMPLER_ENABLE_HEADLESS_MSG);
+	wa_masked_en(wal, GEN10_SAMPLER_MODE,
+		     GEN11_SAMPLER_ENABLE_HEADLESS_MSG);
 
 	/* Wa_1604278689:icl,ehl */
 	wa_write(wal, IVB_FBC_RT_BASE, 0xFFFFFFFF & ~ILK_FBC_RT_VALID);
@@ -643,8 +640,8 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 * Wa_14010443199:rkl
 	 * Wa_14010698770:rkl
 	 */
-	WA_SET_BIT_MASKED(GEN11_COMMON_SLICE_CHICKEN3,
-			  GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
+	wa_masked_en(wal, GEN11_COMMON_SLICE_CHICKEN3,
+		     GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
 
 	/* WaDisableGPGPUMidThreadPreemption:gen12 */
 	WA_SET_FIELD_MASKED(GEN8_CS_CHICKEN1,
@@ -684,8 +681,8 @@ static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
 			  DG1_FLOAT_POINT_BLEND_OPT_STRICT_MODE_EN);
 
 	/* Wa_22010493298 */
-	WA_SET_BIT_MASKED(HIZ_CHICKEN,
-			  DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE);
+	wa_masked_en(wal, HIZ_CHICKEN,
+		     DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE);
 
 	/*
 	 * Wa_16011163337
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
