Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3131A3BF53C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 07:39:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6EC6E156;
	Thu,  8 Jul 2021 05:39:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1927E6E057
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 05:39:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="207621994"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="207621994"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 22:39:38 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="428209773"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 22:39:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jul 2021 22:38:15 -0700
Message-Id: <20210708053819.2120187-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210708053819.2120187-1-matthew.d.roper@intel.com>
References: <20210708053819.2120187-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/icl: Use revid->stepping tables
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

Switch ICL to use a revid->stepping table as we're trying to do on all
platforms going forward.  While we're at it, let's include some
additional steppings that have popped up, even if we don't yet have any
workarounds tied to those steppings (we probably need to audit our
workaround list soon to see if any of the bounds have moved or if new
workarounds have appeared).

Note that the current bspec table is missing information about how to
map PCI revision ID to GT/display steppings; it only provides an SoC
stepping.  The mapping to GT/display steppings (which aren't always the
same as the SoC stepping) used to be in the bspec, but was apparently
dropped during an update in Nov 2019; I've made my changes here based on
an older bspec snapshot that still had the necessary information.  We've
requested that the missing information be restored.

Bspec: 21441  # pre-Nov 2019 snapshot
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 ++++++------
 drivers/gpu/drm/i915/i915_drv.h             | 10 ++--------
 drivers/gpu/drm/i915/intel_step.c           | 12 ++++++++++++
 drivers/gpu/drm/i915/intel_step.h           |  2 ++
 4 files changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 6dfd564e078f..e2d8acb8c1c9 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -557,7 +557,7 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	/* Wa_1604370585:icl (pre-prod)
 	 * Formerly known as WaPushConstantDereferenceHoldDisable
 	 */
-	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_B0))
+	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_B0))
 		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
 			     PUSH_CONSTANT_DEREF_DISABLE);
 
@@ -573,12 +573,12 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	/* Wa_2006611047:icl (pre-prod)
 	 * Formerly known as WaDisableImprovedTdlClkGating
 	 */
-	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_A0))
+	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_A0))
 		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
 			     GEN11_TDL_CLOCK_GATING_FIX_DISABLE);
 
 	/* Wa_2006665173:icl (pre-prod) */
-	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_A0))
+	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_A0))
 		wa_masked_en(wal, GEN11_COMMON_SLICE_CHICKEN3,
 			     GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC);
 
@@ -1023,13 +1023,13 @@ icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		    GAMW_ECO_DEV_CTX_RELOAD_DISABLE);
 
 	/* Wa_1405779004:icl (pre-prod) */
-	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_A0))
+	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_A0))
 		wa_write_or(wal,
 			    SLICE_UNIT_LEVEL_CLKGATE,
 			    MSCUNIT_CLKGATE_DIS);
 
 	/* Wa_1406838659:icl (pre-prod) */
-	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_B0))
+	if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_B0))
 		wa_write_or(wal,
 			    INF_UNIT_LEVEL_CLKGATE,
 			    CGPSF_CLKGATE_DIS);
@@ -1725,7 +1725,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    PMFLUSHDONE_LNEBLK);
 
 		/* Wa_1406609255:icl (pre-prod) */
-		if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_B0))
+		if (IS_ICL_GT_STEP(i915, STEP_A0, STEP_B0))
 			wa_write_or(wal,
 				    GEN7_SARCHKMD,
 				    GEN7_DISABLE_DEMAND_PREFETCH);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 300575f64ca6..63cbc9991cb9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1469,14 +1469,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \
 	(IS_KABYLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, since, until))
 
-#define ICL_REVID_A0		0x0
-#define ICL_REVID_A2		0x1
-#define ICL_REVID_B0		0x3
-#define ICL_REVID_B2		0x4
-#define ICL_REVID_C0		0x5
-
-#define IS_ICL_REVID(p, since, until) \
-	(IS_ICELAKE(p) && IS_REVID(p, since, until))
+#define IS_ICL_GT_STEP(p, since, until) \
+	(IS_ICELAKE(p) && IS_GT_STEP(p, since, until))
 
 #define EHL_REVID_A0            0x0
 #define EHL_REVID_B0            0x1
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index bfd63f56c200..4d8248cf67d3 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -42,6 +42,15 @@ static const struct intel_step_info kbl_revid_step_tbl[] = {
 	[7] = { .gt_step = STEP_G0, .display_step = STEP_C0 },
 };
 
+static const struct intel_step_info icl_revid_step_tbl[] = {
+	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[3] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+	[4] = { .gt_step = STEP_B2, .display_step = STEP_B2 },
+	[5] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
+	[6] = { .gt_step = STEP_C1, .display_step = STEP_C1 },
+	[7] = { .gt_step = STEP_D0, .display_step = STEP_D0 },
+};
+
 static const struct intel_step_info tgl_uy_revid_step_tbl[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_C0 },
@@ -89,6 +98,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_TIGERLAKE(i915)) {
 		revids = tgl_revid_step_tbl;
 		size = ARRAY_SIZE(tgl_revid_step_tbl);
+	} else if (IS_ICELAKE(i915)) {
+		revids = icl_revid_step_tbl;
+		size = ARRAY_SIZE(icl_revid_step_tbl);
 	} else if (IS_KABYLAKE(i915)) {
 		revids = kbl_revid_step_tbl;
 		size = ARRAY_SIZE(kbl_revid_step_tbl);
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 41567d9b7c35..3e8b2babd9da 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -26,7 +26,9 @@ enum intel_step {
 	STEP_A2,
 	STEP_B0,
 	STEP_B1,
+	STEP_B2,
 	STEP_C0,
+	STEP_C1,
 	STEP_D0,
 	STEP_D1,
 	STEP_E0,
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
