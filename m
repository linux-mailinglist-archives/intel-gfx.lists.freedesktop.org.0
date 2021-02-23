Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99716322D9F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 16:36:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A88A46E9D7;
	Tue, 23 Feb 2021 15:36:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 358376E9D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 15:36:07 +0000 (UTC)
IronPort-SDR: 8H1OsaN1Qha5le3zzOkhub/2DOS1VX8N7DAzlK0z071Cydo1m7KV2xVIvxC4L/NT3ahRgNxL38
 /9NM1M/xh8fg==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="246255692"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="246255692"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 07:36:07 -0800
IronPort-SDR: LDDcy4/NxNP7tynEvEOEVjA91V7aLptO0o34bthO7nAVGhbm9vs4AMxCsi8zCHYJ5job+bUQcO
 6EpIN8VUpE3w==
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="380532209"
Received: from kcushion-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.40.63])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 07:36:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Feb 2021 17:35:09 +0200
Message-Id: <f839d5c060dd695c7340d2231484c0b664c86c82.1614094093.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1614094093.git.jani.nikula@intel.com>
References: <cover.1614094093.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/7] drm/i915: switch KBL to the new stepping
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add new symbolic names for revision ids, and convert KBL revids to use
them via the new stepping check macros.

This also fixes theoretical out of bounds access to kbl_revids array.

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
 drivers/gpu/drm/i915/intel_stepping.c       | 69 ++++++++++++++++++---
 drivers/gpu/drm/i915/intel_stepping.h       | 11 +++-
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
index 3edd5e47ad68..bd955ec9bd5d 100644
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
+	intel_stepping_init(dev_priv);
 
 	intel_uncore_mmio_debug_init_early(&dev_priv->mmio_debug);
 	intel_uncore_init_early(&dev_priv->uncore, dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e8717c886be3..8f0e66ac2561 100644
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
index 8cc67f9c4e58..dbf87892193a 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7169,12 +7169,12 @@ static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
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
 
diff --git a/drivers/gpu/drm/i915/intel_stepping.c b/drivers/gpu/drm/i915/intel_stepping.c
index b5b4becd6c86..67155b94d6d3 100644
--- a/drivers/gpu/drm/i915/intel_stepping.c
+++ b/drivers/gpu/drm/i915/intel_stepping.c
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
+void intel_stepping_init(struct drm_i915_private *i915)
+{
+	const struct i915_rev_steppings *revids = NULL;
+	int size = 0;
+	int revid = INTEL_REVID(i915);
+	struct i915_rev_steppings stepping = {};
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
+		stepping = revids[revid];
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
+			stepping = revids[revid];
+		} else {
+			drm_dbg(&i915->drm, "Using future steppings\n");
+			stepping.gt_stepping = STEP_FUTURE;
+			stepping.disp_stepping = STEP_FUTURE;
+		}
+	}
+
+	if (drm_WARN_ON(&i915->drm, stepping.gt_stepping == STEP_NONE))
+		return;
+
+	RUNTIME_INFO(i915)->stepping = stepping;
+}
diff --git a/drivers/gpu/drm/i915/intel_stepping.h b/drivers/gpu/drm/i915/intel_stepping.h
index 3d24299e9128..8c7f17b405b2 100644
--- a/drivers/gpu/drm/i915/intel_stepping.h
+++ b/drivers/gpu/drm/i915/intel_stepping.h
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
@@ -34,6 +35,14 @@ enum intel_stepping {
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
 
+void intel_stepping_init(struct drm_i915_private *i915);
+
 #endif /* __INTEL_STEPPING_H__ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
