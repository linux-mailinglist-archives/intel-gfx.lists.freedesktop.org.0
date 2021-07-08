Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D603BF541
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 07:39:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56E0B6E4A6;
	Thu,  8 Jul 2021 05:39:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99EF96E057
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 05:39:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="207622000"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="207622000"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 22:39:38 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="428209783"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 22:39:38 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jul 2021 22:38:18 -0700
Message-Id: <20210708053819.2120187-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210708053819.2120187-1-matthew.d.roper@intel.com>
References: <20210708053819.2120187-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/dg1: Use revid->stepping tables
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

Switch DG1 to use a revid->stepping table as we're trying to do on all
platforms going forward.

This removes the last use of IS_REVID() and REVID_FOREVER, so remove
those now-unused macros as well to prevent their accidental use on
future platforms.

Bspec: 44463
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c    | 10 +++++-----
 drivers/gpu/drm/i915/i915_drv.h                | 18 ++++--------------
 drivers/gpu/drm/i915/intel_pm.c                |  2 +-
 drivers/gpu/drm/i915/intel_step.c              |  8 ++++++++
 6 files changed, 20 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 285380079aab..975a7e25cea5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5799,7 +5799,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 	int config, i;
 
 	if (IS_ALDERLAKE_S(dev_priv) ||
-	    IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
+	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
 	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 		/* Wa_1409767108:tgl,dg1,adl-s */
 		table = wa_1409767108_buddy_page_masks;
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 1f43aba2e9e2..50d11a84e7a9 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -157,7 +157,7 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
 static bool get_legacy_lowmem_region(struct intel_uncore *uncore,
 				     u64 *start, u32 *size)
 {
-	if (!IS_DG1_REVID(uncore->i915, DG1_REVID_A0, DG1_REVID_B0))
+	if (!IS_DG1_GT_STEP(uncore->i915, STEP_A0, STEP_B0))
 		return false;
 
 	*start = 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 4c0c15bbdac2..62321e9149db 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1111,7 +1111,7 @@ dg1_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	gen12_gt_workarounds_init(i915, wal);
 
 	/* Wa_1607087056:dg1 */
-	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0))
+	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_A0))
 		wa_write_or(wal,
 			    SLICE_UNIT_LEVEL_CLKGATE,
 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
@@ -1522,7 +1522,7 @@ static void dg1_whitelist_build(struct intel_engine_cs *engine)
 	tgl_whitelist_build(engine);
 
 	/* GEN:BUG:1409280441:dg1 */
-	if (IS_DG1_REVID(engine->i915, DG1_REVID_A0, DG1_REVID_A0) &&
+	if (IS_DG1_GT_STEP(engine->i915, STEP_A0, STEP_A0) &&
 	    (engine->class == RENDER_CLASS ||
 	     engine->class == COPY_ENGINE_CLASS))
 		whitelist_reg_ext(w, RING_ID(engine->mmio_base),
@@ -1592,7 +1592,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
 
-	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
+	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_A0) ||
 	    IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0)) {
 		/*
 		 * Wa_1607138336:tgl[a0],dg1[a0]
@@ -1638,7 +1638,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	}
 
 	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
-	    IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
+	    IS_DG1_GT_STEP(i915, STEP_A0, STEP_A0) ||
 	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s,adl-p */
 		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
@@ -1652,7 +1652,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	}
 
 
-	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
+	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_A0) ||
 	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/*
 		 * Wa_1607030317:tgl
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6de2590afff6..1c6a73044c67 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1270,19 +1270,10 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 #define IS_DISPLAY_VER(i915, from, until) \
 	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
 
-#define REVID_FOREVER		0xff
 #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
 
 #define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
 
-/*
- * Return true if revision is in range [since,until] inclusive.
- *
- * Use 0 for open-ended since, and REVID_FOREVER for open-ended until.
- */
-#define IS_REVID(p, since, until) \
-	(INTEL_REVID(p) >= (since) && INTEL_REVID(p) <= (until))
-
 #define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
 #define INTEL_GT_STEP(__i915) (RUNTIME_INFO(__i915)->step.gt_step)
 
@@ -1492,11 +1483,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_RKL_DISPLAY_STEP(p, since, until) \
 	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
 
-#define DG1_REVID_A0		0x0
-#define DG1_REVID_B0		0x1
-
-#define IS_DG1_REVID(p, since, until) \
-	(IS_DG1(p) && IS_REVID(p, since, until))
+#define IS_DG1_GT_STEP(p, since, until) \
+	(IS_DG1(p) && IS_GT_STEP(p, since, until))
+#define IS_DG1_DISPLAY_STEP(p, since, until) \
+	(IS_DG1(p) && IS_DISPLAY_STEP(p, since, until))
 
 #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 5fdb96e7d266..b933c9dc823a 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7390,7 +7390,7 @@ static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
 	gen12lp_init_clock_gating(dev_priv);
 
 	/* Wa_1409836686:dg1[a0] */
-	if (IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0))
+	if (IS_DG1_GT_STEP(dev_priv, STEP_A0, STEP_A0))
 		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
 			   DPT_GATING_DIS);
 }
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 1593ab25f41a..c4ce02d22828 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -75,6 +75,11 @@ static const struct intel_step_info rkl_revid_step_tbl[] = {
 	[4] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
 };
 
+static const struct intel_step_info dg1_revid_step_tbl[] = {
+	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+};
+
 static const struct intel_step_info adls_revid_step_tbl[] = {
 	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[0x1] = { .gt_step = STEP_A0, .display_step = STEP_A2 },
@@ -103,6 +108,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ALDERLAKE_S(i915)) {
 		revids = adls_revid_step_tbl;
 		size = ARRAY_SIZE(adls_revid_step_tbl);
+	} else if (IS_DG1(i915)) {
+		revids = dg1_revid_step_tbl;
+		size = ARRAY_SIZE(dg1_revid_step_tbl);
 	} else if (IS_ROCKETLAKE(i915)) {
 		revids = rkl_revid_step_tbl;
 		size = ARRAY_SIZE(rkl_revid_step_tbl);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
