Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 097212D39EC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 05:53:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF1D36E0E9;
	Wed,  9 Dec 2020 04:53:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D8CB6E0E8
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 04:53:07 +0000 (UTC)
IronPort-SDR: 7I/WHOlWFmGu6QsgIQM5HlxXfvjMOAENCF/L9RiX87D/H/Nrh+6Y4Mpr04vsuyW3hi3ny7tOZ8
 b7+Ui/F0FVYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="171446383"
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="171446383"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 20:53:06 -0800
IronPort-SDR: vaZ+Jep1ee9cvxDRDiw1HThE9hBeu6yjVwIZTy05MqPeq0qzqQNbzJ1Gz8Ub+b8LUQDu6g4IMO
 97dmElzU6Csg==
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="363977074"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 20:53:06 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Dec 2020 20:52:45 -0800
Message-Id: <20201209045246.2905675-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201209045246.2905675-1-lucas.demarchi@intel.com>
References: <20201209045246.2905675-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gt: rename wa_write_masked_or()
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

The use of "masked" in this function is due to its history. Once upon a
time it received a mask and a value as parameter. Since
commit eeec73f8a4a4 ("drm/i915/gt: Skip rmw for masked registers")
that is not true anymore and now there is a clear and a set parameter.
Depending on the case, that can still be thought as a mask and value,
but there are some subtle differences: what we clear doesn't need to be
the same bits we are setting, particularly when we are using masked
registers.

The fact that we also have "masked registers", i.e. registers whose mask
is stored in the upper 16 bits of the register, makes it even more
confusing, because "masked" in wa_write_masked_or() has little to do
with masked registers, but rather refers to the old mask parameter the
function received (that can also, but not exclusively, be used to write
to masked register).

Avoid the ambiguity and misnomer by renaming it to something else,
hopefully less confusing: wa_write_clr_set(), to designate that we are
doing both clr and set operations in the register.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 88 ++++++++++-----------
 1 file changed, 44 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 70d4ca2776a3..fec099f6ae76 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -194,7 +194,7 @@ static void wa_add(struct i915_wa_list *wal, i915_reg_t reg,
 }
 
 static void
-wa_write_masked_or(struct i915_wa_list *wal, i915_reg_t reg, u32 clear, u32 set)
+wa_write_clr_set(struct i915_wa_list *wal, i915_reg_t reg, u32 clear, u32 set)
 {
 	wa_add(wal, reg, clear, set, clear);
 }
@@ -202,19 +202,19 @@ wa_write_masked_or(struct i915_wa_list *wal, i915_reg_t reg, u32 clear, u32 set)
 static void
 wa_write(struct i915_wa_list *wal, i915_reg_t reg, u32 set)
 {
-	wa_write_masked_or(wal, reg, ~0, set);
+	wa_write_clr_set(wal, reg, ~0, set);
 }
 
 static void
 wa_write_or(struct i915_wa_list *wal, i915_reg_t reg, u32 set)
 {
-	wa_write_masked_or(wal, reg, set, set);
+	wa_write_clr_set(wal, reg, set, set);
 }
 
 static void
 wa_write_clr(struct i915_wa_list *wal, i915_reg_t reg, u32 clr)
 {
-	wa_write_masked_or(wal, reg, clr, 0);
+	wa_write_clr_set(wal, reg, clr, 0);
 }
 
 static void
@@ -603,10 +603,10 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 			     GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC);
 
 	/* WaEnableFloatBlendOptimization:icl */
-	wa_write_masked_or(wal,
-			   GEN10_CACHE_MODE_SS,
-			   0, /* write-only, so skip validation */
-			   _MASKED_BIT_ENABLE(FLOAT_BLEND_OPTIMIZATION_ENABLE));
+	wa_write_clr_set(wal,
+			 GEN10_CACHE_MODE_SS,
+			 0, /* write-only, so skip validation */
+			 _MASKED_BIT_ENABLE(FLOAT_BLEND_OPTIMIZATION_ENABLE));
 
 	/* WaDisableGPGPUMidThreadPreemption:icl */
 	wa_masked_field_set(wal, GEN8_CS_CHICKEN1,
@@ -619,9 +619,9 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_1604278689:icl,ehl */
 	wa_write(wal, IVB_FBC_RT_BASE, 0xFFFFFFFF & ~ILK_FBC_RT_VALID);
-	wa_write_masked_or(wal, IVB_FBC_RT_BASE_UPPER,
-			   0, /* write-only register; skip validation */
-			   0xFFFFFFFF);
+	wa_write_clr_set(wal, IVB_FBC_RT_BASE_UPPER,
+			 0, /* write-only register; skip validation */
+			 0xFFFFFFFF);
 
 	/* Wa_1406306137:icl,ehl */
 	wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN11_DIS_PICK_2ND_EU);
@@ -881,11 +881,11 @@ ivb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	 * This actually overrides the dispatch
 	 * mode for all thread types.
 	 */
-	wa_write_masked_or(wal, GEN7_FF_THREAD_MODE,
-			   GEN7_FF_SCHED_MASK,
-			   GEN7_FF_TS_SCHED_HW |
-			   GEN7_FF_VS_SCHED_HW |
-			   GEN7_FF_DS_SCHED_HW);
+	wa_write_clr_set(wal, GEN7_FF_THREAD_MODE,
+			 GEN7_FF_SCHED_MASK,
+			 GEN7_FF_TS_SCHED_HW |
+			 GEN7_FF_VS_SCHED_HW |
+			 GEN7_FF_DS_SCHED_HW);
 
 	if (0) { /* causes HiZ corruption on ivb:gt1 */
 		/* enable HiZ Raw Stall Optimization */
@@ -933,12 +933,12 @@ vlv_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	 * This actually overrides the dispatch
 	 * mode for all thread types.
 	 */
-	wa_write_masked_or(wal,
-			   GEN7_FF_THREAD_MODE,
-			   GEN7_FF_SCHED_MASK,
-			   GEN7_FF_TS_SCHED_HW |
-			   GEN7_FF_VS_SCHED_HW |
-			   GEN7_FF_DS_SCHED_HW);
+	wa_write_clr_set(wal,
+			 GEN7_FF_THREAD_MODE,
+			 GEN7_FF_SCHED_MASK,
+			 GEN7_FF_TS_SCHED_HW |
+			 GEN7_FF_VS_SCHED_HW |
+			 GEN7_FF_DS_SCHED_HW);
 
 	/*
 	 * BSpec says this must be set, even though
@@ -1172,7 +1172,7 @@ wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 
 	drm_dbg(&i915->drm, "MCR slice/subslice = %x\n", mcr);
 
-	wa_write_masked_or(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
+	wa_write_clr_set(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
 }
 
 static void
@@ -1197,10 +1197,10 @@ icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
 
 	/* WaModifyGamTlbPartitioning:icl */
-	wa_write_masked_or(wal,
-			   GEN11_GACB_PERF_CTRL,
-			   GEN11_HASH_CTRL_MASK,
-			   GEN11_HASH_CTRL_BIT0 | GEN11_HASH_CTRL_BIT4);
+	wa_write_clr_set(wal,
+			 GEN11_GACB_PERF_CTRL,
+			 GEN11_HASH_CTRL_MASK,
+			 GEN11_HASH_CTRL_BIT0 | GEN11_HASH_CTRL_BIT4);
 
 	/* Wa_1405766107:icl
 	 * Formerly known as WaCL2SFHalfMaxAlloc
@@ -1844,14 +1844,14 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 * Wa_1604223664:icl
 		 * Formerly known as WaL3BankAddressHashing
 		 */
-		wa_write_masked_or(wal,
-				   GEN8_GARBCNTL,
-				   GEN11_HASH_CTRL_EXCL_MASK,
-				   GEN11_HASH_CTRL_EXCL_BIT0);
-		wa_write_masked_or(wal,
-				   GEN11_GLBLINVL,
-				   GEN11_BANK_HASH_ADDR_EXCL_MASK,
-				   GEN11_BANK_HASH_ADDR_EXCL_BIT0);
+		wa_write_clr_set(wal,
+				 GEN8_GARBCNTL,
+				 GEN11_HASH_CTRL_EXCL_MASK,
+				 GEN11_HASH_CTRL_EXCL_BIT0);
+		wa_write_clr_set(wal,
+				 GEN11_GLBLINVL,
+				 GEN11_BANK_HASH_ADDR_EXCL_MASK,
+				 GEN11_BANK_HASH_ADDR_EXCL_BIT0);
 
 		/*
 		 * Wa_1405733216:icl
@@ -1880,10 +1880,10 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    GEN7_DISABLE_SAMPLER_PREFETCH);
 
 		/* Wa_1409178092:icl */
-		wa_write_masked_or(wal,
-				   GEN11_SCRATCH2,
-				   GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE,
-				   0);
+		wa_write_clr_set(wal,
+				 GEN11_SCRATCH2,
+				 GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE,
+				 0);
 
 		/* WaEnable32PlaneMode:icl */
 		wa_masked_en(wal, GEN9_CSFE_CHICKEN1_RCS,
@@ -1957,11 +1957,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 
 		/* WaProgramL3SqcReg1DefaultForPerf:bxt,glk */
 		if (IS_GEN9_LP(i915))
-			wa_write_masked_or(wal,
-					   GEN8_L3SQCREG1,
-					   L3_PRIO_CREDITS_MASK,
-					   L3_GENERAL_PRIO_CREDITS(62) |
-					   L3_HIGH_PRIO_CREDITS(2));
+			wa_write_clr_set(wal,
+					 GEN8_L3SQCREG1,
+					 L3_PRIO_CREDITS_MASK,
+					 L3_GENERAL_PRIO_CREDITS(62) |
+					 L3_HIGH_PRIO_CREDITS(2));
 
 		/* WaOCLCoherentLineFlush:skl,bxt,kbl,cfl */
 		wa_write_or(wal,
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
