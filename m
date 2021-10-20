Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBC6434281
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 02:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80B7F6E093;
	Wed, 20 Oct 2021 00:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11C7E89D49
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 00:17:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="292121656"
X-IronPort-AV: E=Sophos;i="5.87,165,1631602800"; d="scan'208";a="292121656"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 17:17:48 -0700
X-IronPort-AV: E=Sophos;i="5.87,165,1631602800"; d="scan'208";a="462967151"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 17:17:48 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matt Atwood <matthew.s.atwood@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 19 Oct 2021 17:23:53 -0700
Message-Id: <20211020002353.193893-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211020002353.193893-1-jose.souza@intel.com>
References: <20211020002353.193893-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Rename GT_STEP to GRAPHICS_STEP
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As now graphics and media can have different steppings this patch is
renaming all _GT_STEP macros to _GRAPHICS_STEP.

Future platforms will properly choose between _MEDIA_STEP and
_GRAPHICS_STEP for each new workaround.

Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 31 +++++++-------
 drivers/gpu/drm/i915/i915_drv.h             | 46 ++++++++++-----------
 drivers/gpu/drm/i915/intel_pm.c             |  6 +--
 drivers/gpu/drm/i915/intel_step.c           | 12 +++---
 drivers/gpu/drm/i915/intel_step.h           |  2 +-
 8 files changed, 51 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 461844dffd7ed..e320610dd0b81 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -42,7 +42,7 @@ int gen8_emit_flush_rcs(struct i915_request *rq, u32 mode)
 			vf_flush_wa = true;
 
 		/* WaForGAMHang:kbl */
-		if (IS_KBL_GT_STEP(rq->engine->i915, 0, STEP_C0))
+		if (IS_KBL_GRAPHICS_STEP(rq->engine->i915, 0, STEP_C0))
 			dc_flush_wa = true;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 15f9ada28a7ab..9c253ba593c65 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -424,7 +424,7 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 
 	table->unused_entries_index = I915_MOCS_PTE;
 	if (IS_DG2(i915)) {
-		if (IS_DG2_GT_STEP(i915, G10, STEP_A0, STEP_B0)) {
+		if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
 			table->size = ARRAY_SIZE(dg2_mocs_table_g10_ax);
 			table->table = dg2_mocs_table_g10_ax;
 		} else {
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index afb35d2e5c734..aec838ecb2ef2 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -158,7 +158,7 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
 static bool get_legacy_lowmem_region(struct intel_uncore *uncore,
 				     u64 *start, u32 *size)
 {
-	if (!IS_DG1_GT_STEP(uncore->i915, STEP_A0, STEP_C0))
+	if (!IS_DG1_GRAPHICS_STEP(uncore->i915, STEP_A0, STEP_C0))
 		return false;
 
 	*start = 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e1f3625308891..37bec83e4750c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -482,7 +482,7 @@ static void kbl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen9_ctx_workarounds_init(engine, wal);
 
 	/* WaToEnableHwFixForPushConstHWBug:kbl */
-	if (IS_KBL_GT_STEP(i915, STEP_C0, STEP_FOREVER))
+	if (IS_KBL_GRAPHICS_STEP(i915, STEP_C0, STEP_FOREVER))
 		wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
 			     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 
@@ -916,7 +916,7 @@ skl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 		    GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaInPlaceDecompressionHang:skl */
-	if (IS_SKL_GT_STEP(gt->i915, STEP_A0, STEP_H0))
+	if (IS_SKL_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_H0))
 		wa_write_or(wal,
 			    GEN9_GAMT_ECO_REG_RW_IA,
 			    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
@@ -928,7 +928,7 @@ kbl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	gen9_gt_workarounds_init(gt, wal);
 
 	/* WaDisableDynamicCreditSharing:kbl */
-	if (IS_KBL_GT_STEP(gt->i915, 0, STEP_C0))
+	if (IS_KBL_GRAPHICS_STEP(gt->i915, 0, STEP_C0))
 		wa_write_or(wal,
 			    GAMT_CHKN_BIT_REG,
 			    GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING);
@@ -1136,7 +1136,7 @@ icl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 
 	/* Wa_1607087056:icl,ehl,jsl */
 	if (IS_ICELAKE(i915) ||
-	    IS_JSL_EHL_GT_STEP(i915, STEP_A0, STEP_B0))
+	    IS_JSL_EHL_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 		wa_write_or(wal,
 			    SLICE_UNIT_LEVEL_CLKGATE,
 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
@@ -1190,19 +1190,19 @@ tgl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	gen12_gt_workarounds_init(gt, wal);
 
 	/* Wa_1409420604:tgl */
-	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_B0))
+	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 		wa_write_or(wal,
 			    SUBSLICE_UNIT_LEVEL_CLKGATE2,
 			    CPSSUNIT_CLKGATE_DIS);
 
 	/* Wa_1607087056:tgl also know as BUG:1409180338 */
-	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_B0))
+	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 		wa_write_or(wal,
 			    SLICE_UNIT_LEVEL_CLKGATE,
 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
 
 	/* Wa_1408615072:tgl[a0] */
-	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_B0))
+	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
 			    VSUNIT_CLKGATE_DIS_TGL);
 }
@@ -1215,7 +1215,7 @@ dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	gen12_gt_workarounds_init(gt, wal);
 
 	/* Wa_1607087056:dg1 */
-	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_B0))
+	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 		wa_write_or(wal,
 			    SLICE_UNIT_LEVEL_CLKGATE,
 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
@@ -1623,7 +1623,7 @@ static void dg1_whitelist_build(struct intel_engine_cs *engine)
 	tgl_whitelist_build(engine);
 
 	/* GEN:BUG:1409280441:dg1 */
-	if (IS_DG1_GT_STEP(engine->i915, STEP_A0, STEP_B0) &&
+	if (IS_DG1_GRAPHICS_STEP(engine->i915, STEP_A0, STEP_B0) &&
 	    (engine->class == RENDER_CLASS ||
 	     engine->class == COPY_ENGINE_CLASS))
 		whitelist_reg_ext(w, RING_ID(engine->mmio_base),
@@ -1716,8 +1716,8 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
 
-	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_B0) ||
-	    IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_B0)) {
+	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
+	    IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
 		/*
 		 * Wa_1607138336:tgl[a0],dg1[a0]
 		 * Wa_1607063988:tgl[a0],dg1[a0]
@@ -1727,7 +1727,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
 	}
 
-	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_B0)) {
+	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
 		/*
 		 * Wa_1606679103:tgl
 		 * (see also Wa_1606682166:icl)
@@ -1762,7 +1762,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	}
 
 	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
-	    IS_DG1_GT_STEP(i915, STEP_A0, STEP_B0) ||
+	    IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
 	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s,adl-p */
 		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
@@ -1775,8 +1775,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
 	}
 
-
-	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_B0) ||
+	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
 	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/*
 		 * Wa_1607030317:tgl
@@ -2138,7 +2137,7 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	struct drm_i915_private *i915 = engine->i915;
 
 	/* WaKBLVECSSemaphoreWaitPoll:kbl */
-	if (IS_KBL_GT_STEP(i915, STEP_A0, STEP_F0)) {
+	if (IS_KBL_GRAPHICS_STEP(i915, STEP_A0, STEP_F0)) {
 		wa_write(wal,
 			 RING_SEMA_WAIT_POLL(engine->mmio_base),
 			 1);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9559cda7382f2..73cd66064f014 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1348,16 +1348,16 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 #define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
 
 #define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
-#define INTEL_GT_STEP(__i915) (RUNTIME_INFO(__i915)->step.gt_step)
+#define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics_step)
 #define INTEL_MEDIA_STEP(__i915) (RUNTIME_INFO(__i915)->step.media_step)
 
 #define IS_DISPLAY_STEP(__i915, since, until) \
 	(drm_WARN_ON(&(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
 	 INTEL_DISPLAY_STEP(__i915) >= (since) && INTEL_DISPLAY_STEP(__i915) < (until))
 
-#define IS_GT_STEP(__i915, since, until) \
-	(drm_WARN_ON(&(__i915)->drm, INTEL_GT_STEP(__i915) == STEP_NONE), \
-	 INTEL_GT_STEP(__i915) >= (since) && INTEL_GT_STEP(__i915) < (until))
+#define IS_GRAPHICS_STEP(__i915, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_GRAPHICS_STEP(__i915) == STEP_NONE), \
+	 INTEL_GRAPHICS_STEP(__i915) >= (since) && INTEL_GRAPHICS_STEP(__i915) < (until))
 
 #define IS_MEDIA_STEP(__i915, since, until) \
 	(drm_WARN_ON(&(__i915)->drm, INTEL_MEDIA_STEP(__i915) == STEP_NONE), \
@@ -1535,15 +1535,15 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_TGL_Y(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_ULX)
 
-#define IS_SKL_GT_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GT_STEP(p, since, until))
+#define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))
 
-#define IS_KBL_GT_STEP(dev_priv, since, until) \
-	(IS_KABYLAKE(dev_priv) && IS_GT_STEP(dev_priv, since, until))
+#define IS_KBL_GRAPHICS_STEP(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && IS_GRAPHICS_STEP(dev_priv, since, until))
 #define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \
 	(IS_KABYLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, since, until))
 
-#define IS_JSL_EHL_GT_STEP(p, since, until) \
-	(IS_JSL_EHL(p) && IS_GT_STEP(p, since, until))
+#define IS_JSL_EHL_GRAPHICS_STEP(p, since, until) \
+	(IS_JSL_EHL(p) && IS_GRAPHICS_STEP(p, since, until))
 #define IS_JSL_EHL_DISPLAY_STEP(p, since, until) \
 	(IS_JSL_EHL(p) && IS_DISPLAY_STEP(p, since, until))
 
@@ -1551,19 +1551,19 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_TIGERLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_TGL_UY_GT_STEP(__i915, since, until) \
+#define IS_TGL_UY_GRAPHICS_STEP(__i915, since, until) \
 	((IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
-	 IS_GT_STEP(__i915, since, until))
+	 IS_GRAPHICS_STEP(__i915, since, until))
 
-#define IS_TGL_GT_STEP(__i915, since, until) \
+#define IS_TGL_GRAPHICS_STEP(__i915, since, until) \
 	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
-	 IS_GT_STEP(__i915, since, until))
+	 IS_GRAPHICS_STEP(__i915, since, until))
 
 #define IS_RKL_DISPLAY_STEP(p, since, until) \
 	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
 
-#define IS_DG1_GT_STEP(p, since, until) \
-	(IS_DG1(p) && IS_GT_STEP(p, since, until))
+#define IS_DG1_GRAPHICS_STEP(p, since, until) \
+	(IS_DG1(p) && IS_GRAPHICS_STEP(p, since, until))
 #define IS_DG1_DISPLAY_STEP(p, since, until) \
 	(IS_DG1(p) && IS_DISPLAY_STEP(p, since, until))
 
@@ -1571,20 +1571,20 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_ADLS_GT_STEP(__i915, since, until) \
+#define IS_ADLS_GRAPHICS_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
-	 IS_GT_STEP(__i915, since, until))
+	 IS_GRAPHICS_STEP(__i915, since, until))
 
 #define IS_ADLP_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_P(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_ADLP_GT_STEP(__i915, since, until) \
+#define IS_ADLP_GRAPHICS_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_P(__i915) && \
-	 IS_GT_STEP(__i915, since, until))
+	 IS_GRAPHICS_STEP(__i915, since, until))
 
-#define IS_XEHPSDV_GT_STEP(__i915, since, until) \
-	(IS_XEHPSDV(__i915) && IS_GT_STEP(__i915, since, until))
+#define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
+	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
 
 /*
  * DG2 hardware steppings are a bit unusual.  The hardware design was forked
@@ -1600,9 +1600,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  * and stepping-specific logic will be applied with a general DG2-wide stepping
  * number.
  */
-#define IS_DG2_GT_STEP(__i915, variant, since, until) \
+#define IS_DG2_GRAPHICS_STEP(__i915, variant, since, until) \
 	(IS_SUBPLATFORM(__i915, INTEL_DG2, INTEL_SUBPLATFORM_##variant) && \
-	 IS_GT_STEP(__i915, since, until))
+	 IS_GRAPHICS_STEP(__i915, since, until))
 
 #define IS_DG2_DISP_STEP(__i915, since, until) \
 	(IS_DG2(__i915) && \
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 201477ca408a5..fcc25f0fefc7a 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7473,7 +7473,7 @@ static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
 	gen12lp_init_clock_gating(dev_priv);
 
 	/* Wa_1409836686:dg1[a0] */
-	if (IS_DG1_GT_STEP(dev_priv, STEP_A0, STEP_B0))
+	if (IS_DG1_GRAPHICS_STEP(dev_priv, STEP_A0, STEP_B0))
 		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
 			   DPT_GATING_DIS);
 }
@@ -7521,12 +7521,12 @@ static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
 		   FBC_LLC_FULLY_OPEN);
 
 	/* WaDisableSDEUnitClockGating:kbl */
-	if (IS_KBL_GT_STEP(dev_priv, 0, STEP_C0))
+	if (IS_KBL_GRAPHICS_STEP(dev_priv, 0, STEP_C0))
 		intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
 			   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaDisableGamClockGating:kbl */
-	if (IS_KBL_GT_STEP(dev_priv, 0, STEP_C0))
+	if (IS_KBL_GRAPHICS_STEP(dev_priv, 0, STEP_C0))
 		intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1, intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |
 			   GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
 
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 1cf8f0bb0b5e5..a4b16b9e2e55d 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -23,8 +23,8 @@
  * use a macro to define these to make it easier to identify the platforms
  * where the two steppings can deviate.
  */
-#define COMMON_STEP(x)  .gt_step = STEP_##x, .display_step = STEP_##x, .media_step = STEP_##x
-#define COMMON_GT_MEDIA_STEP(x)  .gt_step = STEP_##x, .media_step = STEP_##x
+#define COMMON_STEP(x)  .graphics_step = STEP_##x, .display_step = STEP_##x, .media_step = STEP_##x
+#define COMMON_GT_MEDIA_STEP(x)  .graphics_step = STEP_##x, .media_step = STEP_##x
 
 static const struct intel_step_info skl_revids[] = {
 	[0x6] = { COMMON_STEP(G0) },
@@ -180,7 +180,7 @@ void intel_step_init(struct drm_i915_private *i915)
 	if (!revids)
 		return;
 
-	if (revid < size && revids[revid].gt_step != STEP_NONE) {
+	if (revid < size && revids[revid].graphics_step != STEP_NONE) {
 		step = revids[revid];
 	} else {
 		drm_warn(&i915->drm, "Unknown revid 0x%02x\n", revid);
@@ -193,7 +193,7 @@ void intel_step_init(struct drm_i915_private *i915)
 		 * steppings in the array are not monotonically increasing, but
 		 * it's better than defaulting to 0.
 		 */
-		while (revid < size && revids[revid].gt_step == STEP_NONE)
+		while (revid < size && revids[revid].graphics_step == STEP_NONE)
 			revid++;
 
 		if (revid < size) {
@@ -202,12 +202,12 @@ void intel_step_init(struct drm_i915_private *i915)
 			step = revids[revid];
 		} else {
 			drm_dbg(&i915->drm, "Using future steppings\n");
-			step.gt_step = STEP_FUTURE;
+			step.graphics_step = STEP_FUTURE;
 			step.display_step = STEP_FUTURE;
 		}
 	}
 
-	if (drm_WARN_ON(&i915->drm, step.gt_step == STEP_NONE))
+	if (drm_WARN_ON(&i915->drm, step.graphics_step == STEP_NONE))
 		return;
 
 	RUNTIME_INFO(i915)->step = step;
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index b6ff41b7bcf59..d71a99bd51793 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -11,7 +11,7 @@
 struct drm_i915_private;
 
 struct intel_step_info {
-	u8 gt_step;
+	u8 graphics_step;
 	u8 display_step;
 	u8 media_step;
 };
-- 
2.33.1

