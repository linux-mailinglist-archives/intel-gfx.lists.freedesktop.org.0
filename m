Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 908A33C324F
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 05:37:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACCF26EAD2;
	Sat, 10 Jul 2021 03:37:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29D386EAD2
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 03:37:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="273639495"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="273639495"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 20:37:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="566571914"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 20:37:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jul 2021 20:37:22 -0700
Message-Id: <20210710033724.2459367-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210710033724.2459367-1-matthew.d.roper@intel.com>
References: <20210710033724.2459367-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/12] drm/i915/dg1: Use revid->stepping
 tables
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
index 9195131cf90f..d462b9434541 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1323,19 +1323,10 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
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
 
@@ -1552,11 +1543,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
index 21211649e6bb..36230d446f4a 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -81,6 +81,11 @@ static const struct intel_step_info rkl_revids[] = {
 	[4] = { COMMON_STEPPING(C0) },
 };
 
+static const struct intel_step_info dg1_revids[] = {
+	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+};
+
 static const struct intel_step_info adls_revids[] = {
 	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[0x1] = { .gt_step = STEP_A0, .display_step = STEP_A2 },
@@ -109,6 +114,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ALDERLAKE_S(i915)) {
 		revids = adls_revids;
 		size = ARRAY_SIZE(adls_revids);
+	} else if (IS_DG1(i915)) {
+		revids = dg1_revids;
+		size = ARRAY_SIZE(dg1_revids);
 	} else if (IS_ROCKETLAKE(i915)) {
 		revids = rkl_revids;
 		size = ARRAY_SIZE(rkl_revids);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
