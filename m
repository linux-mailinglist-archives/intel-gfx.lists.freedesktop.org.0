Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E7C3BF53B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 07:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19BEC6E057;
	Thu,  8 Jul 2021 05:39:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F29F6E04E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 05:39:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="207621996"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="207621996"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 22:39:38 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="428209776"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 22:39:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jul 2021 22:38:16 -0700
Message-Id: <20210708053819.2120187-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210708053819.2120187-1-matthew.d.roper@intel.com>
References: <20210708053819.2120187-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/jsl_ehl: Use revid->stepping tables
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
index 63cbc9991cb9..3f4e17ba5e80 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1472,11 +1472,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
index 4d8248cf67d3..61666a3dd672 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -51,6 +51,11 @@ static const struct intel_step_info icl_revid_step_tbl[] = {
 	[7] = { .gt_step = STEP_D0, .display_step = STEP_D0 },
 };
 
+static const struct intel_step_info jsl_ehl_revid_step_tbl[] = {
+	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+};
+
 static const struct intel_step_info tgl_uy_revid_step_tbl[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_C0 },
@@ -98,6 +103,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_TIGERLAKE(i915)) {
 		revids = tgl_revid_step_tbl;
 		size = ARRAY_SIZE(tgl_revid_step_tbl);
+	} else if (IS_JSL_EHL(i915)) {
+		revids = jsl_ehl_revid_step_tbl;
+		size = ARRAY_SIZE(jsl_ehl_revid_step_tbl);
 	} else if (IS_ICELAKE(i915)) {
 		revids = icl_revid_step_tbl;
 		size = ARRAY_SIZE(icl_revid_step_tbl);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
