Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 930E23C3258
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 05:37:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D4C6EADE;
	Sat, 10 Jul 2021 03:37:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 006376EAD0
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 03:37:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="273639493"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="273639493"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 20:37:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="566571908"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 20:37:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jul 2021 20:37:20 -0700
Message-Id: <20210710033724.2459367-9-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210710033724.2459367-1-matthew.d.roper@intel.com>
References: <20210710033724.2459367-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 08/12] drm/i915/jsl_ehl: Use revid->stepping
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

Switch JSL/EHL to use a revid->stepping table as we're trying to do on
all platforms going forward.

Bspec: 29153
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 9 ++++-----
 drivers/gpu/drm/i915/intel_step.c             | 8 ++++++++
 4 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 882bfd499e55..dfc31b682848 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2674,7 +2674,7 @@ static bool
 ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
 {
 	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
-		 IS_JSL_EHL_REVID(i915, EHL_REVID_B0, REVID_FOREVER)) ||
+		 IS_JSL_EHL_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
 		 IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) &&
 		 i915->dpll.ref_clks.nssc == 38400;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e2d8acb8c1c9..4c0c15bbdac2 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1043,7 +1043,7 @@ icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 
 	/* Wa_1607087056:icl,ehl,jsl */
 	if (IS_ICELAKE(i915) ||
-	    IS_JSL_EHL_REVID(i915, EHL_REVID_A0, EHL_REVID_A0))
+	    IS_JSL_EHL_GT_STEP(i915, STEP_A0, STEP_A0))
 		wa_write_or(wal,
 			    SLICE_UNIT_LEVEL_CLKGATE,
 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d4f705f06c73..b3ce2b73a143 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1532,11 +1532,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ICL_GT_STEP(p, since, until) \
 	(IS_ICELAKE(p) && IS_GT_STEP(p, since, until))
 
-#define EHL_REVID_A0            0x0
-#define EHL_REVID_B0            0x1
-
-#define IS_JSL_EHL_REVID(p, since, until) \
-	(IS_JSL_EHL(p) && IS_REVID(p, since, until))
+#define IS_JSL_EHL_GT_STEP(p, since, until) \
+	(IS_JSL_EHL(p) && IS_GT_STEP(p, since, until))
+#define IS_JSL_EHL_DISPLAY_STEP(p, since, until) \
+	(IS_JSL_EHL(p) && IS_DISPLAY_STEP(p, since, until))
 
 #define IS_TGL_DISPLAY_STEP(__i915, since, until) \
 	(IS_TIGERLAKE(__i915) && \
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index f8be464d1179..6e1b132ecf38 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -57,6 +57,11 @@ static const struct intel_step_info icl_revids[] = {
 	[7] = { COMMON_STEPPING(D0) },
 };
 
+static const struct intel_step_info jsl_ehl_revids[] = {
+	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+};
+
 static const struct intel_step_info tgl_uy_revids[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_C0 },
@@ -104,6 +109,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_TIGERLAKE(i915)) {
 		revids = tgl_revids;
 		size = ARRAY_SIZE(tgl_revids);
+	} else if (IS_JSL_EHL(i915)) {
+		revids = jsl_ehl_revids;
+		size = ARRAY_SIZE(jsl_ehl_revids);
 	} else if (IS_ICELAKE(i915)) {
 		revids = icl_revids;
 		size = ARRAY_SIZE(icl_revids);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
