Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF67C331028
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 14:57:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2911689D30;
	Mon,  8 Mar 2021 13:57:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF27089D30
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 13:57:15 +0000 (UTC)
IronPort-SDR: ZWeeF8ZIs/nD6BpPYZVpWszgfCzPOL/q+ccHDzsvFW5hVbmzAEh7obLDBfXHdChgryBSrd0Ekz
 fZyARkmku16w==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="167302326"
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="167302326"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:57:14 -0800
IronPort-SDR: MWwRBbzvRSkLn7qKMS4fWv//q8lwtv8UlSlWLNLMmqM0Vxf1AmhCVvuxa5YUz+5qarksSx0xrw
 xRLw+r9daVTg==
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="402831221"
Received: from dhoffend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.45.213])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:57:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Mar 2021 15:56:41 +0200
Message-Id: <6c6fa668ad79a105b4d06828b7af6011efec6d3a.1615211711.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1615211711.git.jani.nikula@intel.com>
References: <cover.1615211711.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/8] drm/i915: switch KBL to the new stepping
 scheme
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add new symbolic names for revision ids, and convert KBL revids to use
them via the new stepping check macros.

This also fixes theoretical out of bounds access to kbl_revids array.

v2: Rename stepping->step

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

The initialization sounds like an early part of
intel_device_info_runtime_init(), and indeed touches runtime info.
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  6 +-
 drivers/gpu/drm/i915/i915_drv.c             |  3 +-
 drivers/gpu/drm/i915/i915_drv.h             | 24 ++-----
 drivers/gpu/drm/i915/intel_pm.c             |  4 +-
 drivers/gpu/drm/i915/intel_step.c           | 69 ++++++++++++++++++---
 drivers/gpu/drm/i915/intel_step.h           | 11 +++-
 7 files changed, 82 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index cac80af7ad1c..74e8acc72da0 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -42,7 +42,7 @@ int gen8_emit_flush_rcs(struct i915_request *rq, u32 mode)
 			vf_flush_wa = true;
 
 		/* WaForGAMHang:kbl */
-		if (IS_KBL_GT_REVID(rq->engine->i915, 0, KBL_REVID_B0))
+		if (IS_KBL_GT_STEP(rq->engine->i915, 0, STEP_B0))
 			dc_flush_wa = true;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 2827d4f2e086..0c502a733779 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -481,7 +481,7 @@ static void kbl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen9_ctx_workarounds_init(engine, wal);
 
 	/* WaToEnableHwFixForPushConstHWBug:kbl */
-	if (IS_KBL_GT_REVID(i915, KBL_REVID_C0, REVID_FOREVER))
+	if (IS_KBL_GT_STEP(i915, STEP_C0, STEP_FOREVER))
 		wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
 			     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 
@@ -899,7 +899,7 @@ kbl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	gen9_gt_workarounds_init(i915, wal);
 
 	/* WaDisableDynamicCreditSharing:kbl */
-	if (IS_KBL_GT_REVID(i915, 0, KBL_REVID_B0))
+	if (IS_KBL_GT_STEP(i915, 0, STEP_B0))
 		wa_write_or(wal,
 			    GAMT_CHKN_BIT_REG,
 			    GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING);
@@ -2020,7 +2020,7 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	struct drm_i915_private *i915 = engine->i915;
 
 	/* WaKBLVECSSemaphoreWaitPoll:kbl */
-	if (IS_KBL_GT_REVID(i915, KBL_REVID_A0, KBL_REVID_E0)) {
+	if (IS_KBL_GT_STEP(i915, STEP_A0, STEP_E0)) {
 		wa_write(wal,
 			 RING_SEMA_WAIT_POLL(engine->mmio_base),
 			 1);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 3edd5e47ad68..83214ffe6cf1 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -273,7 +273,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 	pre |= IS_HSW_EARLY_SDV(dev_priv);
 	pre |= IS_SKL_REVID(dev_priv, 0, SKL_REVID_F0);
 	pre |= IS_BXT_REVID(dev_priv, 0, BXT_REVID_B_LAST);
-	pre |= IS_KBL_GT_REVID(dev_priv, 0, KBL_REVID_A0);
+	pre |= IS_KBL_GT_STEP(dev_priv, 0, STEP_A0);
 	pre |= IS_GLK_REVID(dev_priv, 0, GLK_REVID_A2);
 
 	if (pre) {
@@ -307,6 +307,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 		return -ENODEV;
 
 	intel_device_info_subplatform_init(dev_priv);
+	intel_step_init(dev_priv);
 
 	intel_uncore_mmio_debug_init_early(&dev_priv->mmio_debug);
 	intel_uncore_init_early(&dev_priv->uncore, dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a543b1ad9ba9..7f259aab4226 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1475,26 +1475,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_BXT_REVID(dev_priv, since, until) \
 	(IS_BROXTON(dev_priv) && IS_REVID(dev_priv, since, until))
 
-enum {
-	KBL_REVID_A0,
-	KBL_REVID_B0,
-	KBL_REVID_B1,
-	KBL_REVID_C0,
-	KBL_REVID_D0,
-	KBL_REVID_D1,
-	KBL_REVID_E0,
-	KBL_REVID_F0,
-	KBL_REVID_G0,
-};
-
-#define IS_KBL_GT_REVID(dev_priv, since, until) \
-	(IS_KABYLAKE(dev_priv) && \
-	 kbl_revids[INTEL_REVID(dev_priv)].gt_stepping >= since && \
-	 kbl_revids[INTEL_REVID(dev_priv)].gt_stepping <= until)
-#define IS_KBL_DISP_REVID(dev_priv, since, until) \
-	(IS_KABYLAKE(dev_priv) && \
-	 kbl_revids[INTEL_REVID(dev_priv)].disp_stepping >= since && \
-	 kbl_revids[INTEL_REVID(dev_priv)].disp_stepping <= until)
+#define IS_KBL_GT_STEP(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && IS_GT_STEP(dev_priv, since, until))
+#define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, since, until))
 
 #define GLK_REVID_A0		0x0
 #define GLK_REVID_A1		0x1
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 854ffecd98d9..fd8d2732f68b 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7213,12 +7213,12 @@ static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
 		   FBC_LLC_FULLY_OPEN);
 
 	/* WaDisableSDEUnitClockGating:kbl */
-	if (IS_KBL_GT_REVID(dev_priv, 0, KBL_REVID_B0))
+	if (IS_KBL_GT_STEP(dev_priv, 0, STEP_B0))
 		intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
 			   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaDisableGamClockGating:kbl */
-	if (IS_KBL_GT_REVID(dev_priv, 0, KBL_REVID_B0))
+	if (IS_KBL_GT_STEP(dev_priv, 0, STEP_B0))
 		intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1, intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |
 			   GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
 
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index e19820cbe8e3..aaa9494b0f4f 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -13,15 +13,17 @@
  * can test against in a regular manner.
  */
 
-const struct i915_rev_steppings kbl_revids[] = {
-	[0] = { .gt_stepping = KBL_REVID_A0, .disp_stepping = KBL_REVID_A0 },
-	[1] = { .gt_stepping = KBL_REVID_B0, .disp_stepping = KBL_REVID_B0 },
-	[2] = { .gt_stepping = KBL_REVID_C0, .disp_stepping = KBL_REVID_B0 },
-	[3] = { .gt_stepping = KBL_REVID_D0, .disp_stepping = KBL_REVID_B0 },
-	[4] = { .gt_stepping = KBL_REVID_F0, .disp_stepping = KBL_REVID_C0 },
-	[5] = { .gt_stepping = KBL_REVID_C0, .disp_stepping = KBL_REVID_B1 },
-	[6] = { .gt_stepping = KBL_REVID_D1, .disp_stepping = KBL_REVID_B1 },
-	[7] = { .gt_stepping = KBL_REVID_G0, .disp_stepping = KBL_REVID_C0 },
+
+/* FIXME: what about REVID_E0 */
+static const struct i915_rev_steppings kbl_revids[] = {
+	[0] = { .gt_stepping = STEP_A0, .disp_stepping = STEP_A0 },
+	[1] = { .gt_stepping = STEP_B0, .disp_stepping = STEP_B0 },
+	[2] = { .gt_stepping = STEP_C0, .disp_stepping = STEP_B0 },
+	[3] = { .gt_stepping = STEP_D0, .disp_stepping = STEP_B0 },
+	[4] = { .gt_stepping = STEP_F0, .disp_stepping = STEP_C0 },
+	[5] = { .gt_stepping = STEP_C0, .disp_stepping = STEP_B1 },
+	[6] = { .gt_stepping = STEP_D1, .disp_stepping = STEP_B1 },
+	[7] = { .gt_stepping = STEP_G0, .disp_stepping = STEP_C0 },
 };
 
 const struct i915_rev_steppings tgl_uy_revid_step_tbl[] = {
@@ -44,3 +46,52 @@ const struct i915_rev_steppings adls_revid_step_tbl[] = {
 	[0x8] = { .gt_stepping = STEP_C0, .disp_stepping = STEP_B0 },
 	[0xC] = { .gt_stepping = STEP_D0, .disp_stepping = STEP_C0 },
 };
+
+void intel_step_init(struct drm_i915_private *i915)
+{
+	const struct i915_rev_steppings *revids = NULL;
+	int size = 0;
+	int revid = INTEL_REVID(i915);
+	struct i915_rev_steppings step = {};
+
+	if (IS_KABYLAKE(i915)) {
+		revids = kbl_revids;
+		size = ARRAY_SIZE(kbl_revids);
+	}
+
+	/* Not using the stepping scheme for the platform yet. */
+	if (!revids)
+		return;
+
+	if (revid < size && revids[revid].gt_stepping != STEP_NONE) {
+		step = revids[revid];
+	} else {
+		drm_dbg(&i915->drm, "Unknown revid 0x%02x\n", revid);
+
+		/*
+		 * If we hit a gap in the revid array, use the information for
+		 * the next revid.
+		 *
+		 * This may be wrong in all sorts of ways, especially if the
+		 * steppings in the array are not monotonically increasing, but
+		 * it's better than defaulting to 0.
+		 */
+		while (revid < size && revids[revid].gt_stepping == STEP_NONE)
+			revid++;
+
+		if (revid < size) {
+			drm_dbg(&i915->drm, "Using steppings for revid 0x%02x\n",
+				revid);
+			step = revids[revid];
+		} else {
+			drm_dbg(&i915->drm, "Using future steppings\n");
+			step.gt_stepping = STEP_FUTURE;
+			step.disp_stepping = STEP_FUTURE;
+		}
+	}
+
+	if (drm_WARN_ON(&i915->drm, step.gt_stepping == STEP_NONE))
+		return;
+
+	RUNTIME_INFO(i915)->step = step;
+}
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 8b3ef19d935b..b29e15f71214 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -8,6 +8,8 @@
 
 #include <linux/types.h>
 
+struct drm_i915_private;
+
 struct i915_rev_steppings {
 	u8 gt_stepping;
 	u8 disp_stepping;
@@ -17,7 +19,6 @@ struct i915_rev_steppings {
 #define TGL_REVID_STEP_TBL_SIZE		2
 #define ADLS_REVID_STEP_TBL_SIZE	13
 
-extern const struct i915_rev_steppings kbl_revids[];
 extern const struct i915_rev_steppings tgl_uy_revid_step_tbl[TGL_UY_REVID_STEP_TBL_SIZE];
 extern const struct i915_rev_steppings tgl_revid_step_tbl[TGL_REVID_STEP_TBL_SIZE];
 extern const struct i915_rev_steppings adls_revid_step_tbl[ADLS_REVID_STEP_TBL_SIZE];
@@ -34,6 +35,14 @@ enum intel_step {
 	STEP_B1,
 	STEP_C0,
 	STEP_D0,
+	STEP_D1,
+	STEP_E0,
+	STEP_F0,
+	STEP_G0,
+	STEP_FUTURE,
+	STEP_FOREVER,
 };
 
+void intel_step_init(struct drm_i915_private *i915);
+
 #endif /* __INTEL_STEP_H__ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
