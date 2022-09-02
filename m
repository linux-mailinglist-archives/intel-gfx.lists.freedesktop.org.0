Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADDB5AA4A1
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 02:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C688810E3F2;
	Fri,  2 Sep 2022 00:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D19D210E3F4;
 Fri,  2 Sep 2022 00:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662079677; x=1693615677;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dYw/nn+g9R5l7hJ7+wCUNVumh1yrp2MF6JmoRu/0Hck=;
 b=TzDC3AdiqEBCWyuzybHVtp7gToRKF4rOVcwlQSKHP1apaAl9Sa8qh/yR
 dFBAkH+1bp7wpFeaMCx1Hq833RTYGTid2eXI1PBCjnXQnt1xO8SHbwVxP
 l/NYdSQcUYSEk7Is4iycy4S61McqMYMQTPFpw/vVIBlqIbKlUtjc2gUkr
 W2r4VOY+Ht0jrXKs7tBAfMdK9P6JuRxKwTeaawff1WZeqKb8F6wkM6Q6g
 cnGOq/7kAji2p5sUQnZe9+mHnxkEsTh5PlZRmpgjJLhFaSKX/uLbKm4tx
 nRBoz7eGu/kw+Egr8gxAp4N+ZeOwzCML/R/0uMb4FWD8rUMyx997ayiKa A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="278880332"
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="278880332"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 17:47:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="642641463"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 17:47:56 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 17:47:40 -0700
Message-Id: <20220902004740.2849371-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220902004740.2849371-1-matthew.d.roper@intel.com>
References: <20220902004740.2849371-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/gt: Add MCR-specific workaround
 initializers
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Let's be more explicit about which of our workarounds are updating MCR
registers.  This will also allow us to record whether a workaround
register has MCR behavior or not so that we'll only need to do a
steering lookup for the registers that truly need it.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 414 +++++++++++-------
 .../gpu/drm/i915/gt/intel_workarounds_types.h |   4 +-
 2 files changed, 252 insertions(+), 166 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3d48189021ad..c13abac19b06 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -166,12 +166,33 @@ static void wa_add(struct i915_wa_list *wal, i915_reg_t reg,
 	_wa_add(wal, &wa);
 }
 
+static void wa_mcr_add(struct i915_wa_list *wal, i915_reg_t reg,
+		       u32 clear, u32 set, u32 read_mask, bool masked_reg)
+{
+	struct i915_wa wa = {
+		.reg  = reg,
+		.clr  = clear,
+		.set  = set,
+		.read = read_mask,
+		.masked_reg = masked_reg,
+		.is_mcr = 1,
+	};
+
+	_wa_add(wal, &wa);
+}
+
 static void
 wa_write_clr_set(struct i915_wa_list *wal, i915_reg_t reg, u32 clear, u32 set)
 {
 	wa_add(wal, reg, clear, set, clear, false);
 }
 
+static void
+wa_mcr_write_clr_set(struct i915_wa_list *wal, i915_reg_t reg, u32 clear, u32 set)
+{
+	wa_mcr_add(wal, reg, clear, set, clear, false);
+}
+
 static void
 wa_write(struct i915_wa_list *wal, i915_reg_t reg, u32 set)
 {
@@ -184,12 +205,24 @@ wa_write_or(struct i915_wa_list *wal, i915_reg_t reg, u32 set)
 	wa_write_clr_set(wal, reg, set, set);
 }
 
+static void
+wa_mcr_write_or(struct i915_wa_list *wal, i915_reg_t reg, u32 set)
+{
+	wa_mcr_write_clr_set(wal, reg, set, set);
+}
+
 static void
 wa_write_clr(struct i915_wa_list *wal, i915_reg_t reg, u32 clr)
 {
 	wa_write_clr_set(wal, reg, clr, 0);
 }
 
+static void
+wa_mcr_write_clr(struct i915_wa_list *wal, i915_reg_t reg, u32 clr)
+{
+	wa_mcr_write_clr_set(wal, reg, clr, 0);
+}
+
 /*
  * WA operations on "masked register". A masked register has the upper 16 bits
  * documented as "masked" in b-spec. Its purpose is to allow writing to just a
@@ -207,12 +240,24 @@ wa_masked_en(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
 	wa_add(wal, reg, 0, _MASKED_BIT_ENABLE(val), val, true);
 }
 
+static void
+wa_mcr_masked_en(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
+{
+	wa_mcr_add(wal, reg, 0, _MASKED_BIT_ENABLE(val), val, true);
+}
+
 static void
 wa_masked_dis(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
 {
 	wa_add(wal, reg, 0, _MASKED_BIT_DISABLE(val), val, true);
 }
 
+static void
+wa_mcr_masked_dis(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
+{
+	wa_mcr_add(wal, reg, 0, _MASKED_BIT_DISABLE(val), val, true);
+}
+
 static void
 wa_masked_field_set(struct i915_wa_list *wal, i915_reg_t reg,
 		    u32 mask, u32 val)
@@ -220,6 +265,13 @@ wa_masked_field_set(struct i915_wa_list *wal, i915_reg_t reg,
 	wa_add(wal, reg, 0, _MASKED_FIELD(mask, val), mask, true);
 }
 
+static void
+wa_mcr_masked_field_set(struct i915_wa_list *wal, i915_reg_t reg,
+			u32 mask, u32 val)
+{
+	wa_mcr_add(wal, reg, 0, _MASKED_FIELD(mask, val), mask, true);
+}
+
 static void gen6_ctx_workarounds_init(struct intel_engine_cs *engine,
 				      struct i915_wa_list *wal)
 {
@@ -241,7 +293,7 @@ static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_masked_en(wal, RING_MI_MODE(RENDER_RING_BASE), ASYNC_FLIP_PERF_DISABLE);
 
 	/* WaDisablePartialInstShootdown:bdw,chv */
-	wa_masked_en(wal, GEN8_ROW_CHICKEN,
+	wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
 		     PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);
 
 	/* Use Force Non-Coherent whenever executing a 3D context. This is a
@@ -288,18 +340,18 @@ static void bdw_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen8_ctx_workarounds_init(engine, wal);
 
 	/* WaDisableThreadStallDopClockGating:bdw (pre-production) */
-	wa_masked_en(wal, GEN8_ROW_CHICKEN, STALL_DOP_GATING_DISABLE);
+	wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN, STALL_DOP_GATING_DISABLE);
 
 	/* WaDisableDopClockGating:bdw
 	 *
 	 * Also see the related UCGTCL1 write in bdw_init_clock_gating()
 	 * to disable EUTC clock gating.
 	 */
-	wa_masked_en(wal, GEN8_ROW_CHICKEN2,
-		     DOP_CLOCK_GATING_DISABLE);
+	wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
+			 DOP_CLOCK_GATING_DISABLE);
 
-	wa_masked_en(wal, GEN8_HALF_SLICE_CHICKEN3,
-		     GEN8_SAMPLER_POWER_BYPASS_DIS);
+	wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN3,
+			 GEN8_SAMPLER_POWER_BYPASS_DIS);
 
 	wa_masked_en(wal, HDC_CHICKEN0,
 		     /* WaForceContextSaveRestoreNonCoherent:bdw */
@@ -314,7 +366,7 @@ static void chv_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen8_ctx_workarounds_init(engine, wal);
 
 	/* WaDisableThreadStallDopClockGating:chv */
-	wa_masked_en(wal, GEN8_ROW_CHICKEN, STALL_DOP_GATING_DISABLE);
+	wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN, STALL_DOP_GATING_DISABLE);
 
 	/* Improve HiZ throughput on CHV. */
 	wa_masked_en(wal, HIZ_CHICKEN, CHV_HZ_8X8_MODE_IN_1X);
@@ -333,21 +385,21 @@ static void gen9_ctx_workarounds_init(struct intel_engine_cs *engine,
 		 */
 		wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
 			     GEN9_PBE_COMPRESSED_HASH_SELECTION);
-		wa_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
-			     GEN9_SAMPLER_HASH_COMPRESSED_READ_ADDR);
+		wa_mcr_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
+				 GEN9_SAMPLER_HASH_COMPRESSED_READ_ADDR);
 	}
 
 	/* WaClearFlowControlGpgpuContextSave:skl,bxt,kbl,glk,cfl */
 	/* WaDisablePartialInstShootdown:skl,bxt,kbl,glk,cfl */
-	wa_masked_en(wal, GEN8_ROW_CHICKEN,
-		     FLOW_CONTROL_ENABLE |
-		     PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);
+	wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
+			 FLOW_CONTROL_ENABLE |
+			 PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);
 
 	/* WaEnableYV12BugFixInHalfSliceChicken7:skl,bxt,kbl,glk,cfl */
 	/* WaEnableSamplerGPGPUPreemptionSupport:skl,bxt,kbl,cfl */
-	wa_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
-		     GEN9_ENABLE_YV12_BUGFIX |
-		     GEN9_ENABLE_GPGPU_PREEMPTION);
+	wa_mcr_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
+			 GEN9_ENABLE_YV12_BUGFIX |
+			 GEN9_ENABLE_GPGPU_PREEMPTION);
 
 	/* Wa4x4STCOptimizationDisable:skl,bxt,kbl,glk,cfl */
 	/* WaDisablePartialResolveInVc:skl,bxt,kbl,cfl */
@@ -356,8 +408,8 @@ static void gen9_ctx_workarounds_init(struct intel_engine_cs *engine,
 		     GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE);
 
 	/* WaCcsTlbPrefetchDisable:skl,bxt,kbl,glk,cfl */
-	wa_masked_dis(wal, GEN9_HALF_SLICE_CHICKEN5,
-		      GEN9_CCS_TLB_PREFETCH_ENABLE);
+	wa_mcr_masked_dis(wal, GEN9_HALF_SLICE_CHICKEN5,
+			  GEN9_CCS_TLB_PREFETCH_ENABLE);
 
 	/* WaForceContextSaveRestoreNonCoherent:skl,bxt,kbl,cfl */
 	wa_masked_en(wal, HDC_CHICKEN0,
@@ -386,11 +438,11 @@ static void gen9_ctx_workarounds_init(struct intel_engine_cs *engine,
 	    IS_KABYLAKE(i915) ||
 	    IS_COFFEELAKE(i915) ||
 	    IS_COMETLAKE(i915))
-		wa_masked_en(wal, GEN8_HALF_SLICE_CHICKEN3,
-			     GEN8_SAMPLER_POWER_BYPASS_DIS);
+		wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN3,
+				 GEN8_SAMPLER_POWER_BYPASS_DIS);
 
 	/* WaDisableSTUnitPowerOptimization:skl,bxt,kbl,glk,cfl */
-	wa_masked_en(wal, HALF_SLICE_CHICKEN2, GEN8_ST_PO_DISABLE);
+	wa_mcr_masked_en(wal, HALF_SLICE_CHICKEN2, GEN8_ST_PO_DISABLE);
 
 	/*
 	 * Supporting preemption with fine-granularity requires changes in the
@@ -469,8 +521,8 @@ static void bxt_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen9_ctx_workarounds_init(engine, wal);
 
 	/* WaDisableThreadStallDopClockGating:bxt */
-	wa_masked_en(wal, GEN8_ROW_CHICKEN,
-		     STALL_DOP_GATING_DISABLE);
+	wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
+			 STALL_DOP_GATING_DISABLE);
 
 	/* WaToEnableHwFixForPushConstHWBug:bxt */
 	wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
@@ -490,8 +542,8 @@ static void kbl_ctx_workarounds_init(struct intel_engine_cs *engine,
 			     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 
 	/* WaDisableSbeCacheDispatchPortSharing:kbl */
-	wa_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
-		     GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE);
+	wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
+			 GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE);
 }
 
 static void glk_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -514,8 +566,8 @@ static void cfl_ctx_workarounds_init(struct intel_engine_cs *engine,
 		     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 
 	/* WaDisableSbeCacheDispatchPortSharing:cfl */
-	wa_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
-		     GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE);
+	wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
+			 GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE);
 }
 
 static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -534,13 +586,13 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 * (the register is whitelisted in hardware now, so UMDs can opt in
 	 * for coherency if they have a good reason).
 	 */
-	wa_masked_en(wal, ICL_HDC_MODE, HDC_FORCE_NON_COHERENT);
+	wa_mcr_masked_en(wal, ICL_HDC_MODE, HDC_FORCE_NON_COHERENT);
 
 	/* WaEnableFloatBlendOptimization:icl */
-	wa_add(wal, GEN10_CACHE_MODE_SS, 0,
-	       _MASKED_BIT_ENABLE(FLOAT_BLEND_OPTIMIZATION_ENABLE),
-	       0 /* write-only, so skip validation */,
-	       true);
+	wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
+		   _MASKED_BIT_ENABLE(FLOAT_BLEND_OPTIMIZATION_ENABLE),
+		   0 /* write-only, so skip validation */,
+		   true);
 
 	/* WaDisableGPGPUMidThreadPreemption:icl */
 	wa_masked_field_set(wal, GEN8_CS_CHICKEN1,
@@ -548,8 +600,8 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
 
 	/* allow headerless messages for preemptible GPGPU context */
-	wa_masked_en(wal, GEN10_SAMPLER_MODE,
-		     GEN11_SAMPLER_ENABLE_HEADLESS_MSG);
+	wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
+			 GEN11_SAMPLER_ENABLE_HEADLESS_MSG);
 
 	/* Wa_1604278689:icl,ehl */
 	wa_write(wal, IVB_FBC_RT_BASE, 0xFFFFFFFF & ~ILK_FBC_RT_VALID);
@@ -558,7 +610,7 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 			 0xFFFFFFFF);
 
 	/* Wa_1406306137:icl,ehl */
-	wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN11_DIS_PICK_2ND_EU);
+	wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, GEN11_DIS_PICK_2ND_EU);
 }
 
 /*
@@ -569,13 +621,13 @@ static void dg2_ctx_gt_tuning_init(struct intel_engine_cs *engine,
 				   struct i915_wa_list *wal)
 {
 	wa_masked_en(wal, CHICKEN_RASTER_2, TBIMR_FAST_CLIP);
-	wa_write_clr_set(wal, XEHP_L3SQCREG5, L3_PWM_TIMER_INIT_VAL_MASK,
-			 REG_FIELD_PREP(L3_PWM_TIMER_INIT_VAL_MASK, 0x7f));
-	wa_add(wal,
-	       XEHP_FF_MODE2,
-	       FF_MODE2_TDS_TIMER_MASK,
-	       FF_MODE2_TDS_TIMER_128,
-	       0, false);
+	wa_mcr_write_clr_set(wal, XEHP_L3SQCREG5, L3_PWM_TIMER_INIT_VAL_MASK,
+			     REG_FIELD_PREP(L3_PWM_TIMER_INIT_VAL_MASK, 0x7f));
+	wa_mcr_add(wal,
+		   XEHP_FF_MODE2,
+		   FF_MODE2_TDS_TIMER_MASK,
+		   FF_MODE2_TDS_TIMER_128,
+		   0, false);
 }
 
 /*
@@ -664,27 +716,27 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_16011186671:dg2_g11 */
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0)) {
-		wa_masked_dis(wal, VFLSKPD, DIS_MULT_MISS_RD_SQUASH);
-		wa_masked_en(wal, VFLSKPD, DIS_OVER_FETCH_CACHE);
+		wa_mcr_masked_dis(wal, VFLSKPD, DIS_MULT_MISS_RD_SQUASH);
+		wa_mcr_masked_en(wal, VFLSKPD, DIS_OVER_FETCH_CACHE);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_B0)) {
 		/* Wa_14010469329:dg2_g10 */
-		wa_masked_en(wal, XEHP_COMMON_SLICE_CHICKEN3,
-			     XEHP_DUAL_SIMD8_SEQ_MERGE_DISABLE);
+		wa_mcr_masked_en(wal, XEHP_COMMON_SLICE_CHICKEN3,
+				 XEHP_DUAL_SIMD8_SEQ_MERGE_DISABLE);
 
 		/*
 		 * Wa_22010465075:dg2_g10
 		 * Wa_22010613112:dg2_g10
 		 * Wa_14010698770:dg2_g10
 		 */
-		wa_masked_en(wal, XEHP_COMMON_SLICE_CHICKEN3,
-			     GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
+		wa_mcr_masked_en(wal, XEHP_COMMON_SLICE_CHICKEN3,
+				 GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
 	}
 
 	/* Wa_16013271637:dg2 */
-	wa_masked_en(wal, XEHP_SLICE_COMMON_ECO_CHICKEN1,
-		     MSC_MSAA_REODER_BUF_BYPASS_DISABLE);
+	wa_mcr_masked_en(wal, XEHP_SLICE_COMMON_ECO_CHICKEN1,
+			 MSC_MSAA_REODER_BUF_BYPASS_DISABLE);
 
 	/* Wa_14014947963:dg2 */
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
@@ -1254,9 +1306,9 @@ icl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 		    PSDUNIT_CLKGATE_DIS);
 
 	/* Wa_1406680159:icl,ehl */
-	wa_write_or(wal,
-		    GEN11_SUBSLICE_UNIT_LEVEL_CLKGATE,
-		    GWUNIT_CLKGATE_DIS);
+	wa_mcr_write_or(wal,
+			GEN11_SUBSLICE_UNIT_LEVEL_CLKGATE,
+			GWUNIT_CLKGATE_DIS);
 
 	/* Wa_1607087056:icl,ehl,jsl */
 	if (IS_ICELAKE(i915) ||
@@ -1269,7 +1321,7 @@ icl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	 * This is not a documented workaround, but rather an optimization
 	 * to reduce sampler power.
 	 */
-	wa_write_clr(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
+	wa_mcr_write_clr(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
 }
 
 /*
@@ -1303,7 +1355,7 @@ gen12_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	wa_14011060649(gt, wal);
 
 	/* Wa_14011059788:tgl,rkl,adl-s,dg1,adl-p */
-	wa_write_or(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
+	wa_mcr_write_or(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
 }
 
 static void
@@ -1315,9 +1367,9 @@ tgl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 
 	/* Wa_1409420604:tgl */
 	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
-		wa_write_or(wal,
-			    SUBSLICE_UNIT_LEVEL_CLKGATE2,
-			    CPSSUNIT_CLKGATE_DIS);
+		wa_mcr_write_or(wal,
+				SUBSLICE_UNIT_LEVEL_CLKGATE2,
+				CPSSUNIT_CLKGATE_DIS);
 
 	/* Wa_1607087056:tgl also know as BUG:1409180338 */
 	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
@@ -1346,9 +1398,9 @@ dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 
 	/* Wa_1409420604:dg1 */
 	if (IS_DG1(i915))
-		wa_write_or(wal,
-			    SUBSLICE_UNIT_LEVEL_CLKGATE2,
-			    CPSSUNIT_CLKGATE_DIS);
+		wa_mcr_write_or(wal,
+				SUBSLICE_UNIT_LEVEL_CLKGATE2,
+				CPSSUNIT_CLKGATE_DIS);
 
 	/* Wa_1408615072:dg1 */
 	/* Empirical testing shows this register is unaffected by engine reset. */
@@ -1365,7 +1417,7 @@ xehpsdv_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	xehp_init_mcr(gt, wal);
 
 	/* Wa_1409757795:xehpsdv */
-	wa_write_or(wal, SCCGCTL94DC, CG3DDISURB);
+	wa_mcr_write_or(wal, SCCGCTL94DC, CG3DDISURB);
 
 	/* Wa_16011155590:xehpsdv */
 	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
@@ -1445,8 +1497,8 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 			    CG3DDISCFEG_CLKGATE_DIS);
 
 		/* Wa_14011006942:dg2 */
-		wa_write_or(wal, GEN11_SUBSLICE_UNIT_LEVEL_CLKGATE,
-			    DSS_ROUTER_CLKGATE_DIS);
+		wa_mcr_write_or(wal, GEN11_SUBSLICE_UNIT_LEVEL_CLKGATE,
+				DSS_ROUTER_CLKGATE_DIS);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0)) {
@@ -1457,7 +1509,7 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 		wa_write_or(wal, UNSLCGCTL9444, LTCDD_CLKGATE_DIS);
 
 		/* Wa_14011371254:dg2_g10 */
-		wa_write_or(wal, XEHP_SLICE_UNIT_LEVEL_CLKGATE, NODEDSS_CLKGATE_DIS);
+		wa_mcr_write_or(wal, XEHP_SLICE_UNIT_LEVEL_CLKGATE, NODEDSS_CLKGATE_DIS);
 
 		/* Wa_14011431319:dg2_g10 */
 		wa_write_or(wal, UNSLCGCTL9440, GAMTLBOACS_CLKGATE_DIS |
@@ -1493,18 +1545,18 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 			    GAMEDIA_CLKGATE_DIS);
 
 		/* Wa_14011028019:dg2_g10 */
-		wa_write_or(wal, SSMCGCTL9530, RTFUNIT_CLKGATE_DIS);
+		wa_mcr_write_or(wal, SSMCGCTL9530, RTFUNIT_CLKGATE_DIS);
 	}
 
 	/* Wa_14014830051:dg2 */
-	wa_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
+	wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
 
 	/*
 	 * The following are not actually "workarounds" but rather
 	 * recommended tuning settings documented in the bspec's
 	 * performance guide section.
 	 */
-	wa_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
+	wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
 
 	/* Wa_14015795083 */
 	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
@@ -1628,10 +1680,17 @@ wa_list_apply(struct intel_gt *gt, const struct i915_wa_list *wal)
 		u32 val, old = 0;
 
 		/* open-coded rmw due to steering */
-		old = wa->clr ? intel_gt_mcr_read_any_fw(gt, wa->reg) : 0;
+		if (wa->clr)
+			old = wa->is_mcr ?
+				intel_gt_mcr_read_any_fw(gt, wa->reg) :
+				intel_uncore_read(uncore, wa->reg);
 		val = (old & ~wa->clr) | wa->set;
-		if (val != old || !wa->clr)
-			intel_uncore_write_fw(uncore, wa->reg, val);
+		if (val != old || !wa->clr) {
+			if (wa->is_mcr)
+				intel_gt_mcr_multicast_write(gt, wa->reg, val);
+			else
+				intel_uncore_write_fw(uncore, wa->reg, val);
+		}
 
 		if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
 			wa_verify(wa, intel_gt_mcr_read_any_fw(gt, wa->reg),
@@ -1664,8 +1723,9 @@ static bool wa_list_verify(struct intel_gt *gt,
 	intel_uncore_forcewake_get__locked(uncore, fw);
 
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
-		ok &= wa_verify(wa,
-				intel_gt_mcr_read_any_fw(gt, wa->reg),
+		ok &= wa_verify(wa, wa->is_mcr ?
+				intel_gt_mcr_read_any_fw(gt, wa->reg) :
+				intel_uncore_read(uncore, wa->reg),
 				wal->name, from);
 
 	intel_uncore_forcewake_put__locked(uncore, fw);
@@ -1711,12 +1771,36 @@ whitelist_reg_ext(struct i915_wa_list *wal, i915_reg_t reg, u32 flags)
 	_wa_add(wal, &wa);
 }
 
+static void
+whitelist_mcr_reg_ext(struct i915_wa_list *wal, i915_reg_t reg, u32 flags)
+{
+	struct i915_wa wa = {
+		.reg = reg,
+		.is_mcr = 1,
+	};
+
+	if (GEM_DEBUG_WARN_ON(wal->count >= RING_MAX_NONPRIV_SLOTS))
+		return;
+
+	if (GEM_DEBUG_WARN_ON(!is_nonpriv_flags_valid(flags)))
+		return;
+
+	wa.reg.reg |= flags;
+	_wa_add(wal, &wa);
+}
+
 static void
 whitelist_reg(struct i915_wa_list *wal, i915_reg_t reg)
 {
 	whitelist_reg_ext(wal, reg, RING_FORCE_TO_NONPRIV_ACCESS_RW);
 }
 
+static void
+whitelist_mcr_reg(struct i915_wa_list *wal, i915_reg_t reg)
+{
+	whitelist_mcr_reg_ext(wal, reg, RING_FORCE_TO_NONPRIV_ACCESS_RW);
+}
+
 static void gen9_whitelist_build(struct i915_wa_list *w)
 {
 	/* WaVFEStateAfterPipeControlwithMediaStateClear:skl,bxt,glk,cfl */
@@ -1742,7 +1826,7 @@ static void skl_whitelist_build(struct intel_engine_cs *engine)
 	gen9_whitelist_build(w);
 
 	/* WaDisableLSQCROPERFforOCL:skl */
-	whitelist_reg(w, GEN8_L3SQCREG4);
+	whitelist_mcr_reg(w, GEN8_L3SQCREG4);
 }
 
 static void bxt_whitelist_build(struct intel_engine_cs *engine)
@@ -1763,7 +1847,7 @@ static void kbl_whitelist_build(struct intel_engine_cs *engine)
 	gen9_whitelist_build(w);
 
 	/* WaDisableLSQCROPERFforOCL:kbl */
-	whitelist_reg(w, GEN8_L3SQCREG4);
+	whitelist_mcr_reg(w, GEN8_L3SQCREG4);
 }
 
 static void glk_whitelist_build(struct intel_engine_cs *engine)
@@ -1828,10 +1912,10 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
 	switch (engine->class) {
 	case RENDER_CLASS:
 		/* WaAllowUMDToModifyHalfSliceChicken7:icl */
-		whitelist_reg(w, GEN9_HALF_SLICE_CHICKEN7);
+		whitelist_mcr_reg(w, GEN9_HALF_SLICE_CHICKEN7);
 
 		/* WaAllowUMDToModifySamplerMode:icl */
-		whitelist_reg(w, GEN10_SAMPLER_MODE);
+		whitelist_mcr_reg(w, GEN10_SAMPLER_MODE);
 
 		/* WaEnableStateCacheRedirectToCS:icl */
 		whitelist_reg(w, GEN9_SLICE_COMMON_ECO_CHICKEN1);
@@ -2107,24 +2191,24 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
 		/* Wa_14013392000:dg2_g11 */
-		wa_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
 
 		/* Wa_16011620976:dg2_g11 */
-		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
 	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
 		/* Wa_1509727124:dg2 */
-		wa_masked_en(wal, GEN10_SAMPLER_MODE,
-			     SC_DISABLE_POWER_OPTIMIZATION_EBB);
+		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
+				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
 		/* Wa_14012419201:dg2 */
-		wa_masked_en(wal, GEN9_ROW_CHICKEN4,
-			     GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX);
+		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4,
+				 GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
@@ -2133,13 +2217,13 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 * Wa_22012826095:dg2
 		 * Wa_22013059131:dg2
 		 */
-		wa_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
-				 MAXREQS_PER_BANK,
-				 REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
+		wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
+				     MAXREQS_PER_BANK,
+				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
 
 		/* Wa_22013059131:dg2 */
-		wa_write_or(wal, LSC_CHICKEN_BIT_0,
-			    FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
+				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
 	}
 
 	/* Wa_1308578152:dg2_g10 when first gslice is fused off */
@@ -2152,19 +2236,19 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
 	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
 		/* Wa_22013037850:dg2 */
-		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
-			    DISABLE_128B_EVICTION_COMMAND_UDW);
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
+				DISABLE_128B_EVICTION_COMMAND_UDW);
 
 		/* Wa_22012856258:dg2 */
-		wa_masked_en(wal, GEN8_ROW_CHICKEN2,
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
 			     GEN12_DISABLE_READ_SUPPRESSION);
 
 		/*
 		 * Wa_22010960976:dg2
 		 * Wa_14013347512:dg2
 		 */
-		wa_masked_dis(wal, XEHP_HDC_CHICKEN0,
-			      LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK);
+		wa_mcr_masked_dis(wal, XEHP_HDC_CHICKEN0,
+				  LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
@@ -2172,7 +2256,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 * Wa_1608949956:dg2_g10
 		 * Wa_14010198302:dg2_g10
 		 */
-		wa_masked_en(wal, GEN8_ROW_CHICKEN,
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
 			     MDQ_ARBITRATION_MODE | UGM_BACKUP_MODE);
 
 		/*
@@ -2181,31 +2265,31 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 * LSC_CHICKEN_BIT_0 always reads back as 0 is this stepping,
 		 * so ignoring verification.
 		 */
-		wa_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
-		       FORCE_SLM_FENCE_SCOPE_TO_TILE | FORCE_UGM_FENCE_SCOPE_TO_TILE,
-		       0, false);
+		wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
+			   FORCE_SLM_FENCE_SCOPE_TO_TILE | FORCE_UGM_FENCE_SCOPE_TO_TILE,
+			   0, false);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
 		/* Wa_22010430635:dg2 */
-		wa_masked_en(wal,
-			     GEN9_ROW_CHICKEN4,
-			     GEN12_DISABLE_GRF_CLEAR);
+		wa_mcr_masked_en(wal,
+				 GEN9_ROW_CHICKEN4,
+				 GEN12_DISABLE_GRF_CLEAR);
 
 		/* Wa_14010648519:dg2 */
-		wa_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
+		wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
 	}
 
 	/* Wa_14013202645:dg2 */
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0))
-		wa_write_or(wal, RT_CTRL, DIS_NULL_QUERY);
+		wa_mcr_write_or(wal, RT_CTRL, DIS_NULL_QUERY);
 
 	/* Wa_22012532006:dg2 */
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_C0) ||
 	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0))
-		wa_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
-			     DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA);
+		wa_mcr_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
+				 DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA);
 
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_B0)) {
 		/* Wa_14010680813:dg2_g10 */
@@ -2216,17 +2300,17 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_B0) ||
 	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0)) {
 		/* Wa_14012362059:dg2 */
-		wa_write_or(wal, XEHP_MERT_MOD_CTRL, FORCE_MISS_FTLB);
+		wa_mcr_write_or(wal, XEHP_MERT_MOD_CTRL, FORCE_MISS_FTLB);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_B0, STEP_FOREVER) ||
 	    IS_DG2_G10(i915)) {
 		/* Wa_22014600077:dg2 */
-		wa_add(wal, GEN10_CACHE_MODE_SS, 0,
-		       _MASKED_BIT_ENABLE(ENABLE_EU_COUNT_FOR_TDL_FLUSH),
-		       0 /* Wa_14012342262 :write-only reg, so skip
-			    verification */,
-		       true);
+		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
+			   _MASKED_BIT_ENABLE(ENABLE_EU_COUNT_FOR_TDL_FLUSH),
+			   0 /* Wa_14012342262 :write-only reg, so skip
+				verification */,
+			   true);
 	}
 
 	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
@@ -2253,7 +2337,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
 	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
-		wa_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_DISABLE_EARLY_READ);
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_DISABLE_EARLY_READ);
 
 		/*
 		 * Wa_1407928979:tgl A*
@@ -2282,14 +2366,14 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	    IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
 	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s,adl-p */
-		wa_masked_en(wal, GEN8_ROW_CHICKEN2,
-			     GEN12_PUSH_CONST_DEREF_HOLD_DIS);
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
+				 GEN12_PUSH_CONST_DEREF_HOLD_DIS);
 
 		/*
 		 * Wa_1409085225:tgl
 		 * Wa_14010229206:tgl,rkl,dg1[a0],adl-s,adl-p
 		 */
-		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
+		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
 	}
 
 	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
@@ -2313,9 +2397,9 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) ||
 	    IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) {
 		/* Wa_1406941453:tgl,rkl,dg1,adl-s,adl-p */
-		wa_masked_en(wal,
-			     GEN10_SAMPLER_MODE,
-			     ENABLE_SMALLPL);
+		wa_mcr_masked_en(wal,
+				 GEN10_SAMPLER_MODE,
+				 ENABLE_SMALLPL);
 	}
 
 	if (GRAPHICS_VER(i915) == 11) {
@@ -2349,9 +2433,9 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 * Wa_1405733216:icl
 		 * Formerly known as WaDisableCleanEvicts
 		 */
-		wa_write_or(wal,
-			    GEN8_L3SQCREG4,
-			    GEN11_LQSC_CLEAN_EVICT_DISABLE);
+		wa_mcr_write_or(wal,
+				GEN8_L3SQCREG4,
+				GEN11_LQSC_CLEAN_EVICT_DISABLE);
 
 		/* Wa_1606682166:icl */
 		wa_write_or(wal,
@@ -2359,10 +2443,10 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    GEN7_DISABLE_SAMPLER_PREFETCH);
 
 		/* Wa_1409178092:icl */
-		wa_write_clr_set(wal,
-				 GEN11_SCRATCH2,
-				 GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE,
-				 0);
+		wa_mcr_write_clr_set(wal,
+				     GEN11_SCRATCH2,
+				     GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE,
+				     0);
 
 		/* WaEnable32PlaneMode:icl */
 		wa_masked_en(wal, GEN9_CSFE_CHICKEN1_RCS,
@@ -2420,30 +2504,30 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE);
 
 		/* WaEnableLbsSlaRetryTimerDecrement:skl,bxt,kbl,glk,cfl */
-		wa_write_or(wal,
-			    BDW_SCRATCH1,
-			    GEN9_LBS_SLA_RETRY_TIMER_DECREMENT_ENABLE);
+		wa_mcr_write_or(wal,
+				BDW_SCRATCH1,
+				GEN9_LBS_SLA_RETRY_TIMER_DECREMENT_ENABLE);
 
 		/* WaProgramL3SqcReg1DefaultForPerf:bxt,glk */
 		if (IS_GEN9_LP(i915))
-			wa_write_clr_set(wal,
-					 GEN8_L3SQCREG1,
-					 L3_PRIO_CREDITS_MASK,
-					 L3_GENERAL_PRIO_CREDITS(62) |
-					 L3_HIGH_PRIO_CREDITS(2));
+			wa_mcr_write_clr_set(wal,
+					     GEN8_L3SQCREG1,
+					     L3_PRIO_CREDITS_MASK,
+					     L3_GENERAL_PRIO_CREDITS(62) |
+					     L3_HIGH_PRIO_CREDITS(2));
 
 		/* WaOCLCoherentLineFlush:skl,bxt,kbl,cfl */
-		wa_write_or(wal,
-			    GEN8_L3SQCREG4,
-			    GEN8_LQSC_FLUSH_COHERENT_LINES);
+		wa_mcr_write_or(wal,
+				GEN8_L3SQCREG4,
+				GEN8_LQSC_FLUSH_COHERENT_LINES);
 
 		/* Disable atomics in L3 to prevent unrecoverable hangs */
 		wa_write_clr_set(wal, GEN9_SCRATCH_LNCF1,
 				 GEN9_LNCF_NONIA_COHERENT_ATOMICS_ENABLE, 0);
-		wa_write_clr_set(wal, GEN8_L3SQCREG4,
-				 GEN8_LQSQ_NONIA_COHERENT_ATOMICS_ENABLE, 0);
-		wa_write_clr_set(wal, GEN9_SCRATCH1,
-				 EVICTION_PERF_FIX_ENABLE, 0);
+		wa_mcr_write_clr_set(wal, GEN8_L3SQCREG4,
+				     GEN8_LQSQ_NONIA_COHERENT_ATOMICS_ENABLE, 0);
+		wa_mcr_write_clr_set(wal, GEN9_SCRATCH1,
+				     EVICTION_PERF_FIX_ENABLE, 0);
 	}
 
 	if (IS_HASWELL(i915)) {
@@ -2657,7 +2741,7 @@ ccs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
 	if (IS_PVC_CT_STEP(engine->i915, STEP_A0, STEP_C0)) {
 		/* Wa_14014999345:pvc */
-		wa_masked_en(wal, GEN10_CACHE_MODE_SS, DISABLE_ECC);
+		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS, DISABLE_ECC);
 	}
 }
 
@@ -2683,8 +2767,8 @@ add_render_compute_tuning_settings(struct drm_i915_private *i915,
 	}
 
 	if (IS_DG2(i915)) {
-		wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
-		wa_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
+		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
+		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
 
 		/*
 		 * This is also listed as Wa_22012654132 for certain DG2
@@ -2695,10 +2779,10 @@ add_render_compute_tuning_settings(struct drm_i915_private *i915,
 		 * back for verification on DG2 (due to Wa_14012342262), so
 		 * we need to explicitly skip the readback.
 		 */
-		wa_add(wal, GEN10_CACHE_MODE_SS, 0,
-		       _MASKED_BIT_ENABLE(ENABLE_PREFETCH_INTO_IC),
-		       0 /* write-only, so skip validation */,
-		       true);
+		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
+			   _MASKED_BIT_ENABLE(ENABLE_PREFETCH_INTO_IC),
+			   0 /* write-only, so skip validation */,
+			   true);
 	}
 
 	/*
@@ -2707,8 +2791,8 @@ add_render_compute_tuning_settings(struct drm_i915_private *i915,
 	 * platforms.
 	 */
 	if (INTEL_INFO(i915)->tuning_thread_rr_after_dep)
-		wa_masked_field_set(wal, GEN9_ROW_CHICKEN4, THREAD_EX_ARB_MODE,
-				    THREAD_EX_ARB_MODE_RR_AFTER_DEP);
+		wa_mcr_masked_field_set(wal, GEN9_ROW_CHICKEN4, THREAD_EX_ARB_MODE,
+					THREAD_EX_ARB_MODE_RR_AFTER_DEP);
 }
 
 /*
@@ -2734,30 +2818,30 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 
 	if (IS_XEHPSDV(i915)) {
 		/* Wa_1409954639 */
-		wa_masked_en(wal,
-			     GEN8_ROW_CHICKEN,
-			     SYSTOLIC_DOP_CLOCK_GATING_DIS);
+		wa_mcr_masked_en(wal,
+				 GEN8_ROW_CHICKEN,
+				 SYSTOLIC_DOP_CLOCK_GATING_DIS);
 
 		/* Wa_1607196519 */
-		wa_masked_en(wal,
-			     GEN9_ROW_CHICKEN4,
-			     GEN12_DISABLE_GRF_CLEAR);
+		wa_mcr_masked_en(wal,
+				 GEN9_ROW_CHICKEN4,
+				 GEN12_DISABLE_GRF_CLEAR);
 
 		/* Wa_14010670810:xehpsdv */
-		wa_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
+		wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
 
 		/* Wa_14010449647:xehpsdv */
-		wa_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
-			     GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
+		wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
+				 GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
 
 		/* Wa_18011725039:xehpsdv */
 		if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A1, STEP_B0)) {
-			wa_masked_dis(wal, MLTICTXCTL, TDONRENDER);
-			wa_write_or(wal, L3SQCREG1_CCS0, FLUSHALLNONCOH);
+			wa_mcr_masked_dis(wal, MLTICTXCTL, TDONRENDER);
+			wa_mcr_write_or(wal, L3SQCREG1_CCS0, FLUSHALLNONCOH);
 		}
 
 		/* Wa_14012362059:xehpsdv */
-		wa_write_or(wal, XEHP_MERT_MOD_CTRL, FORCE_MISS_FTLB);
+		wa_mcr_write_or(wal, XEHP_MERT_MOD_CTRL, FORCE_MISS_FTLB);
 
 		/* Wa_14014368820:xehpsdv */
 		wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
@@ -2766,19 +2850,19 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 
 	if (IS_DG2(i915) || IS_PONTEVECCHIO(i915)) {
 		/* Wa_14015227452:dg2,pvc */
-		wa_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
+		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
 
 		/* Wa_22014226127:dg2,pvc */
-		wa_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
 
 		/* Wa_16015675438:dg2,pvc */
 		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
 
 		/* Wa_18018781329:dg2,pvc */
-		wa_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
-		wa_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
-		wa_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
-		wa_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
+		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
+		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
+		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
+		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds_types.h b/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
index 8a4b6de4e754..f05b37e56fa9 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
@@ -15,7 +15,9 @@ struct i915_wa {
 	u32		clr;
 	u32		set;
 	u32		read;
-	bool		masked_reg;
+
+	u32		masked_reg:1;
+	u32		is_mcr:1;
 };
 
 struct i915_wa_list {
-- 
2.37.2

