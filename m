Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF2A5FF68B
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Oct 2022 01:04:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBDE110E158;
	Fri, 14 Oct 2022 23:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C01410E122;
 Fri, 14 Oct 2022 23:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665788583; x=1697324583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3GWCVyifb/MCOhuWXHC6DxBo6Gqy6nK92+IwDd0rkO8=;
 b=cMf/K3TllaeWdJ/IYt/lBG/p2Cc4x1g+zxxkMy+yqfJJjXP+Lw99I2cH
 8NyiXMKTWPtpaqRpyEeDsVQVecNtEJ9Ee/E49/ujTnx71JX8qmnh3lEFH
 wLg75rpPR+hom7aw2XeiDgChZRTjLX8GxkLNQKE+vlV8xfGL4wa+65lN9
 oTBb0CrPpvwA/RRvStAiF6IeWCvM/oEZn/2JE096SQslda+JRY9hJJtie
 ShenqrEfjgnqnK8yKjvQcxdHD1VZbEd9CdaMKhMpryw9Vqz+ohL5Pe5Wh
 ju92a3opHfy1RuuYnmrH5bWwXdDGckVMOgbIlNiwQKFrQQzH12O03o2v/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="285216964"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="285216964"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 16:03:02 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="696471690"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="696471690"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 16:03:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 16:02:26 -0700
Message-Id: <20221014230239.1023689-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221014230239.1023689-1-matthew.d.roper@intel.com>
References: <20221014230239.1023689-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/14] drm/i915/gen8: Create separate reg
 definitions for new MCR registers
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

Gen8 was the first time our hardware had multicast registers (or at
least the first time the multicast nature was exposed and MMIO accesses
could be steered).  There are some registers that transitioned from
singleton behavior to multicast during the gen7 -> gen8 transition;
let's duplicate the register definitions for those registers in
preparation for upcoming patches that will handle MCR registers in a
special manner.

The registers adjusted are:
 * MISCCPCTL
 * SAMPLER_INSTDONE
 * ROW_INSTDONE
 * ROW_CHICKEN2
 * HALF_SLICE_CHICKEN1
 * HALF_SLICE_CHICKEN3

v2:
 - Use the gen8 version of HALF_SLICE_CHICKEN3 in GVT's gen9 engine MMIO
   list.  (Bala)
 - Update to the gen8 version of MISCCPCTL in a couple new workarounds
   that were recently added for DG2/PVC.  (Bala)

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  4 +--
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 11 +++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 26 +++++++++----------
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    |  4 +--
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |  2 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  2 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c       |  2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  2 +-
 drivers/gpu/drm/i915/intel_pm.c               |  9 ++++---
 9 files changed, 36 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 2ddcad497fa3..c408bac3c533 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1559,11 +1559,11 @@ void intel_engine_get_instdone(const struct intel_engine_cs *engine,
 		for_each_ss_steering(iter, engine->gt, slice, subslice) {
 			instdone->sampler[slice][subslice] =
 				intel_gt_mcr_read(engine->gt,
-						  GEN7_SAMPLER_INSTDONE,
+						  GEN8_SAMPLER_INSTDONE,
 						  slice, subslice);
 			instdone->row[slice][subslice] =
 				intel_gt_mcr_read(engine->gt,
-						  GEN7_ROW_INSTDONE,
+						  GEN8_ROW_INSTDONE,
 						  slice, subslice);
 		}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 7f79bbf97828..ba4ce668042c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -651,6 +651,9 @@
 
 #define GEN7_MISCCPCTL				_MMIO(0x9424)
 #define   GEN7_DOP_CLOCK_GATE_ENABLE		(1 << 0)
+
+#define GEN8_MISCCPCTL				_MMIO(0x9424)
+#define   GEN8_DOP_CLOCK_GATE_ENABLE		REG_BIT(0)
 #define   GEN12_DOP_CLOCK_GATE_RENDER_ENABLE	REG_BIT(1)
 #define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
 #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
@@ -1072,18 +1075,22 @@
 #define GEN12_GAM_DONE				_MMIO(0xcf68)
 
 #define GEN7_HALF_SLICE_CHICKEN1		_MMIO(0xe100) /* IVB GT1 + VLV */
+#define GEN8_HALF_SLICE_CHICKEN1		_MMIO(0xe100)
 #define   GEN7_MAX_PS_THREAD_DEP		(8 << 12)
 #define   GEN7_SINGLE_SUBSCAN_DISPATCH_ENABLE	(1 << 10)
 #define   GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE	(1 << 4)
 #define   GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE	(1 << 3)
 
 #define GEN7_SAMPLER_INSTDONE			_MMIO(0xe160)
+#define GEN8_SAMPLER_INSTDONE			_MMIO(0xe160)
 #define GEN7_ROW_INSTDONE			_MMIO(0xe164)
+#define GEN8_ROW_INSTDONE			_MMIO(0xe164)
 
 #define HALF_SLICE_CHICKEN2			_MMIO(0xe180)
 #define   GEN8_ST_PO_DISABLE			(1 << 13)
 
-#define HALF_SLICE_CHICKEN3			_MMIO(0xe184)
+#define HSW_HALF_SLICE_CHICKEN3			_MMIO(0xe184)
+#define GEN8_HALF_SLICE_CHICKEN3		_MMIO(0xe184)
 #define   HSW_SAMPLE_C_PERFORMANCE		(1 << 9)
 #define   GEN8_CENTROID_PIXEL_OPT_DIS		(1 << 8)
 #define   GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC	(1 << 5)
@@ -1136,6 +1143,8 @@
 #define   DISABLE_EARLY_EOT			REG_BIT(1)
 
 #define GEN7_ROW_CHICKEN2			_MMIO(0xe4f4)
+
+#define GEN8_ROW_CHICKEN2			_MMIO(0xe4f4)
 #define   GEN12_DISABLE_READ_SUPPRESSION	REG_BIT(15)
 #define   GEN12_DISABLE_EARLY_READ		REG_BIT(14)
 #define   GEN12_ENABLE_LARGE_GRF_MODE		REG_BIT(12)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b8eb20a155f0..47a683dcc8a5 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -295,10 +295,10 @@ static void bdw_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 * Also see the related UCGTCL1 write in bdw_init_clock_gating()
 	 * to disable EUTC clock gating.
 	 */
-	wa_masked_en(wal, GEN7_ROW_CHICKEN2,
+	wa_masked_en(wal, GEN8_ROW_CHICKEN2,
 		     DOP_CLOCK_GATING_DISABLE);
 
-	wa_masked_en(wal, HALF_SLICE_CHICKEN3,
+	wa_masked_en(wal, GEN8_HALF_SLICE_CHICKEN3,
 		     GEN8_SAMPLER_POWER_BYPASS_DIS);
 
 	wa_masked_en(wal, HDC_CHICKEN0,
@@ -386,7 +386,7 @@ static void gen9_ctx_workarounds_init(struct intel_engine_cs *engine,
 	    IS_KABYLAKE(i915) ||
 	    IS_COFFEELAKE(i915) ||
 	    IS_COMETLAKE(i915))
-		wa_masked_en(wal, HALF_SLICE_CHICKEN3,
+		wa_masked_en(wal, GEN8_HALF_SLICE_CHICKEN3,
 			     GEN8_SAMPLER_POWER_BYPASS_DIS);
 
 	/* WaDisableSTUnitPowerOptimization:skl,bxt,kbl,glk,cfl */
@@ -490,7 +490,7 @@ static void kbl_ctx_workarounds_init(struct intel_engine_cs *engine,
 			     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 
 	/* WaDisableSbeCacheDispatchPortSharing:kbl */
-	wa_masked_en(wal, GEN7_HALF_SLICE_CHICKEN1,
+	wa_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
 		     GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE);
 }
 
@@ -514,7 +514,7 @@ static void cfl_ctx_workarounds_init(struct intel_engine_cs *engine,
 		     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 
 	/* WaDisableSbeCacheDispatchPortSharing:cfl */
-	wa_masked_en(wal, GEN7_HALF_SLICE_CHICKEN1,
+	wa_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
 		     GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE);
 }
 
@@ -1517,7 +1517,7 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	wa_write_or(wal, GEN12_SQCM, EN_32B_ACCESS);
 
 	/* Wa_14015795083 */
-	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
+	wa_write_clr(wal, GEN8_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 }
 
 static void
@@ -1526,7 +1526,7 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	pvc_init_mcr(gt, wal);
 
 	/* Wa_14015795083 */
-	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
+	wa_write_clr(wal, GEN8_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 }
 
 static void
@@ -2117,7 +2117,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
 		/* Wa_14013392000:dg2_g11 */
-		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
+		wa_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
@@ -2163,7 +2163,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    DISABLE_128B_EVICTION_COMMAND_UDW);
 
 		/* Wa_22012856258:dg2 */
-		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
+		wa_masked_en(wal, GEN8_ROW_CHICKEN2,
 			     GEN12_DISABLE_READ_SUPPRESSION);
 
 		/*
@@ -2260,7 +2260,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
 	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
-		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_DISABLE_EARLY_READ);
+		wa_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_DISABLE_EARLY_READ);
 
 		/*
 		 * Wa_1407928979:tgl A*
@@ -2289,7 +2289,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	    IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
 	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s,adl-p */
-		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
+		wa_masked_en(wal, GEN8_ROW_CHICKEN2,
 			     GEN12_PUSH_CONST_DEREF_HOLD_DIS);
 
 		/*
@@ -2508,7 +2508,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	if (IS_HASWELL(i915)) {
 		/* WaSampleCChickenBitEnable:hsw */
 		wa_masked_en(wal,
-			     HALF_SLICE_CHICKEN3, HSW_SAMPLE_C_PERFORMANCE);
+			     HSW_HALF_SLICE_CHICKEN3, HSW_SAMPLE_C_PERFORMANCE);
 
 		wa_masked_dis(wal,
 			      CACHE_MODE_0_GEN7,
@@ -2806,7 +2806,7 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
 
 		/* Wa_14010449647:xehpsdv */
-		wa_masked_en(wal, GEN7_HALF_SLICE_CHICKEN1,
+		wa_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
 			     GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
 
 		/* Wa_18011725039:xehpsdv */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 8f1165146013..9495a7928bc8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -244,8 +244,8 @@ struct __ext_steer_reg {
 };
 
 static const struct __ext_steer_reg xe_extregs[] = {
-	{"GEN7_SAMPLER_INSTDONE", GEN7_SAMPLER_INSTDONE},
-	{"GEN7_ROW_INSTDONE", GEN7_ROW_INSTDONE}
+	{"GEN8_SAMPLER_INSTDONE", GEN8_SAMPLER_INSTDONE},
+	{"GEN8_ROW_INSTDONE", GEN8_ROW_INSTDONE}
 };
 
 static void __fill_ext_reg(struct __guc_mmio_reg_descr *ext,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index a0372735cddb..9229243992c2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -35,7 +35,7 @@ static void guc_prepare_xfer(struct intel_uncore *uncore)
 
 	if (GRAPHICS_VER(uncore->i915) == 9) {
 		/* DOP Clock Gating Enable for GuC clocks */
-		intel_uncore_rmw(uncore, GEN7_MISCCPCTL,
+		intel_uncore_rmw(uncore, GEN8_MISCCPCTL,
 				 0, GEN8_DOP_CLOCK_GATE_GUC_ENABLE);
 
 		/* allows for 5us (in 10ns units) before GT can go to RC6 */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index daac2050d77d..700cc9688f47 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -2257,7 +2257,7 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_DFH(_MMIO(0x2438), D_ALL, F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(_MMIO(0x243c), D_ALL, F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(_MMIO(0x7018), D_ALL, F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
-	MMIO_DFH(HALF_SLICE_CHICKEN3, D_ALL, F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
+	MMIO_DFH(HSW_HALF_SLICE_CHICKEN3, D_ALL, F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(GEN7_HALF_SLICE_CHICKEN1, D_ALL, F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
 
 	/* display */
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
index 1c6e941c9666..d177884d8f7d 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.c
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
@@ -111,7 +111,7 @@ static struct engine_mmio gen9_engine_mmio_list[] __cacheline_aligned = {
 	{RCS0, GEN9_SCRATCH_LNCF1, 0, false}, /* 0xb008 */
 	{RCS0, GEN7_HALF_SLICE_CHICKEN1, 0xffff, true}, /* 0xe100 */
 	{RCS0, HALF_SLICE_CHICKEN2, 0xffff, true}, /* 0xe180 */
-	{RCS0, HALF_SLICE_CHICKEN3, 0xffff, true}, /* 0xe184 */
+	{RCS0, GEN8_HALF_SLICE_CHICKEN3, 0xffff, true}, /* 0xe184 */
 	{RCS0, GEN9_HALF_SLICE_CHICKEN5, 0xffff, true}, /* 0xe188 */
 	{RCS0, GEN9_HALF_SLICE_CHICKEN7, 0xffff, true}, /* 0xe194 */
 	{RCS0, GEN8_ROW_CHICKEN, 0xffff, true}, /* 0xe4f0 */
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 8279dc580a3e..638b77d64bf4 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -102,7 +102,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(_MMIO(0x2438));
 	MMIO_D(_MMIO(0x243c));
 	MMIO_D(_MMIO(0x7018));
-	MMIO_D(HALF_SLICE_CHICKEN3);
+	MMIO_D(HSW_HALF_SLICE_CHICKEN3);
 	MMIO_D(GEN7_HALF_SLICE_CHICKEN1);
 	/* display */
 	MMIO_F(_MMIO(0x60220), 0x20);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 9f6c58ad8bdb..390802245514 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4321,7 +4321,7 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
 	u32 val;
 
 	/* WaTempDisableDOPClkGating:bdw */
-	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL, ~GEN7_DOP_CLOCK_GATE_ENABLE,
+	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN8_MISCCPCTL, ~GEN8_DOP_CLOCK_GATE_ENABLE,
 				     0);
 
 	val = intel_uncore_read(&dev_priv->uncore, GEN8_L3SQCREG1);
@@ -4336,7 +4336,7 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
 	 */
 	intel_uncore_posting_read(&dev_priv->uncore, GEN8_L3SQCREG1);
 	udelay(1);
-	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl);
+	intel_uncore_write(&dev_priv->uncore, GEN8_MISCCPCTL, misccpctl);
 }
 
 static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -4496,8 +4496,9 @@ static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
 	gen9_init_clock_gating(dev_priv);
 
 	/* WaDisableDopClockGating:skl */
-	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, intel_uncore_read(&dev_priv->uncore, GEN7_MISCCPCTL) &
-		   ~GEN7_DOP_CLOCK_GATE_ENABLE);
+	intel_uncore_write(&dev_priv->uncore, GEN8_MISCCPCTL,
+			   intel_uncore_read(&dev_priv->uncore, GEN8_MISCCPCTL) &
+			   ~GEN8_DOP_CLOCK_GATE_ENABLE);
 
 	/* WAC6entrylatency:skl */
 	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |
-- 
2.37.3

