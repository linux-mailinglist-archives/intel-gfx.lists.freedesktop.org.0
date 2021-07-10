Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAE23C3253
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 05:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 498826EAD5;
	Sat, 10 Jul 2021 03:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E349B6EAD2
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 03:37:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="273639492"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="273639492"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 20:37:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="566571905"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 20:37:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jul 2021 20:37:19 -0700
Message-Id: <20210710033724.2459367-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210710033724.2459367-1-matthew.d.roper@intel.com>
References: <20210710033724.2459367-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/12] drm/i915/icl: Use revid->stepping
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

I'm only including the production revids in the table here since we're
past the point at which we usually stop trying to support pre-production
hardware.  An appropriate check is added to
intel_detect_preproduction_hw() to print an error and taint the kernel
just in case someone still tries to load the driver on old
pre-production hardware.

v2:
 - Drop pre-production steppings and add error/taint at startup when
   loading on pre-production hardware.

Bspec: 21141  # pre-Nov 2019 snapshot
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 ++++++------
 drivers/gpu/drm/i915/i915_drv.c             |  1 +
 drivers/gpu/drm/i915/i915_drv.h             | 10 ++--------
 drivers/gpu/drm/i915/intel_step.c           |  7 +++++++
 4 files changed, 16 insertions(+), 14 deletions(-)

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
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 90136995f5eb..c43b698bf0b9 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -275,6 +275,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 	pre |= IS_BROXTON(dev_priv) && INTEL_REVID(dev_priv) < 0xA;
 	pre |= IS_KABYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
 	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
+	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
 
 	if (pre) {
 		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index dac9ed2dfca5..d4f705f06c73 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1529,14 +1529,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_CNL_REVID(p, since, until) \
 	(IS_CANNONLAKE(p) && IS_REVID(p, since, until))
 
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
index 7f8fe5e4c039..f8be464d1179 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -53,6 +53,10 @@ static const struct intel_step_info glk_revids[] = {
 	[3] = { COMMON_STEPPING(B0) },
 };
 
+static const struct intel_step_info icl_revids[] = {
+	[7] = { COMMON_STEPPING(D0) },
+};
+
 static const struct intel_step_info tgl_uy_revids[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_C0 },
@@ -100,6 +104,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_TIGERLAKE(i915)) {
 		revids = tgl_revids;
 		size = ARRAY_SIZE(tgl_revids);
+	} else if (IS_ICELAKE(i915)) {
+		revids = icl_revids;
+		size = ARRAY_SIZE(icl_revids);
 	} else if (IS_GEMINILAKE(i915)) {
 		revids = glk_revids;
 		size = ARRAY_SIZE(glk_revids);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
