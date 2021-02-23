Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A40322DA0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 16:36:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E26A6E9D8;
	Tue, 23 Feb 2021 15:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC8D6E9D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 15:36:16 +0000 (UTC)
IronPort-SDR: hkb0XC2H27vh5Ok1EcgGiSPjtzoUyTp/xOxzEX4FQz/oE8BPzYqilmf/FkSaMywXw9fukoKRad
 lOFyafjyq+xA==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="184954998"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="184954998"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 07:36:12 -0800
IronPort-SDR: duqhGaa/C7cqahX2/I+hbBA3BHFlU+XBAyU4s0iLFBQXbHMmhjUTrVkRcTq2xaMlwx0uBDYYNm
 0yW9vYB4o7EQ==
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="432748710"
Received: from kcushion-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.40.63])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 07:36:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Feb 2021 17:35:10 +0200
Message-Id: <d3aa6e00284382ed49adbe28e77f7569b929ebe0.1614094093.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1614094093.git.jani.nikula@intel.com>
References: <cover.1614094093.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/7] drm/i915: switch TGL and ADL to the new
 stepping scheme
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

This changes the way revids not present in the array are handled:

- For gaps in the array, the next present revid is used.

- For revids beyond the array, the new STEP_FUTURE is used instead of
  the last revid in the array.

In both cases, we'll get debug logging of what's going on.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h       | 59 +++++++--------------------
 drivers/gpu/drm/i915/intel_stepping.c | 17 ++++++--
 drivers/gpu/drm/i915/intel_stepping.h |  8 ----
 3 files changed, 28 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8f0e66ac2561..2d2ebf284e64 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1510,44 +1510,17 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_JSL_EHL_REVID(p, since, until) \
 	(IS_JSL_EHL(p) && IS_REVID(p, since, until))
 
-static inline const struct i915_rev_steppings *
-tgl_stepping_get(struct drm_i915_private *dev_priv)
-{
-	u8 revid = INTEL_REVID(dev_priv);
-	u8 size;
-	const struct i915_rev_steppings *revid_step_tbl;
-
-	if (IS_ALDERLAKE_S(dev_priv)) {
-		revid_step_tbl = adls_revid_step_tbl;
-		size = ARRAY_SIZE(adls_revid_step_tbl);
-	} else if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
-		revid_step_tbl = tgl_uy_revid_step_tbl;
-		size = ARRAY_SIZE(tgl_uy_revid_step_tbl);
-	} else {
-		revid_step_tbl = tgl_revid_step_tbl;
-		size = ARRAY_SIZE(tgl_revid_step_tbl);
-	}
-
-	revid = min_t(u8, revid, size - 1);
-
-	return &revid_step_tbl[revid];
-}
-
-#define IS_TGL_DISP_STEPPING(p, since, until) \
-	(IS_TIGERLAKE(p) && \
-	 tgl_stepping_get(p)->disp_stepping >= (since) && \
-	 tgl_stepping_get(p)->disp_stepping <= (until))
+#define IS_TGL_DISP_STEPPING(__i915, since, until) \
+	(IS_TIGERLAKE(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_TGL_UY_GT_STEPPING(p, since, until) \
-	((IS_TGL_U(p) || IS_TGL_Y(p)) && \
-	 tgl_stepping_get(p)->gt_stepping >= (since) && \
-	 tgl_stepping_get(p)->gt_stepping <= (until))
+#define IS_TGL_UY_GT_STEPPING(__i915, since, until) \
+	((IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
+	 IS_GT_STEP(__i915, since, until))
 
-#define IS_TGL_GT_STEPPING(p, since, until) \
-	(IS_TIGERLAKE(p) && \
-	 !(IS_TGL_U(p) || IS_TGL_Y(p)) && \
-	 tgl_stepping_get(p)->gt_stepping >= (since) && \
-	 tgl_stepping_get(p)->gt_stepping <= (until))
+#define IS_TGL_GT_STEPPING(__i915, since, until) \
+	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
+	 IS_GT_STEP(__i915, since, until))
 
 #define RKL_REVID_A0		0x0
 #define RKL_REVID_B0		0x1
@@ -1562,15 +1535,13 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
 #define IS_DG1_REVID(p, since, until) \
 	(IS_DG1(p) && IS_REVID(p, since, until))
 
-#define IS_ADLS_DISP_STEPPING(p, since, until) \
-	(IS_ALDERLAKE_S(p) && \
-	 tgl_stepping_get(p)->disp_stepping >= (since) && \
-	 tgl_stepping_get(p)->disp_stepping <= (until))
+#define IS_ADLS_DISP_STEPPING(__i915, since, until) \
+	(IS_ALDERLAKE_S(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_ADLS_GT_STEPPING(p, since, until) \
-	(IS_ALDERLAKE_S(p) && \
-	 tgl_stepping_get(p)->gt_stepping >= (since) && \
-	 tgl_stepping_get(p)->gt_stepping <= (until))
+#define IS_ADLS_GT_STEPPING(__i915, since, until) \
+	(IS_ALDERLAKE_S(__i915) && \
+	 IS_GT_STEP(__i915, since, until))
 
 #define IS_LP(dev_priv)	(INTEL_INFO(dev_priv)->is_lp)
 #define IS_GEN9_LP(dev_priv)	(IS_GEN(dev_priv, 9) && IS_LP(dev_priv))
diff --git a/drivers/gpu/drm/i915/intel_stepping.c b/drivers/gpu/drm/i915/intel_stepping.c
index 67155b94d6d3..3a54297e8a14 100644
--- a/drivers/gpu/drm/i915/intel_stepping.c
+++ b/drivers/gpu/drm/i915/intel_stepping.c
@@ -26,7 +26,7 @@ static const struct i915_rev_steppings kbl_revids[] = {
 	[7] = { .gt_stepping = STEP_G0, .disp_stepping = STEP_C0 },
 };
 
-const struct i915_rev_steppings tgl_uy_revid_step_tbl[] = {
+static const struct i915_rev_steppings tgl_uy_revid_step_tbl[] = {
 	[0] = { .gt_stepping = STEP_A0, .disp_stepping = STEP_A0 },
 	[1] = { .gt_stepping = STEP_B0, .disp_stepping = STEP_C0 },
 	[2] = { .gt_stepping = STEP_B1, .disp_stepping = STEP_C0 },
@@ -34,12 +34,12 @@ const struct i915_rev_steppings tgl_uy_revid_step_tbl[] = {
 };
 
 /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the same HW */
-const struct i915_rev_steppings tgl_revid_step_tbl[] = {
+static const struct i915_rev_steppings tgl_revid_step_tbl[] = {
 	[0] = { .gt_stepping = STEP_A0, .disp_stepping = STEP_B0 },
 	[1] = { .gt_stepping = STEP_B0, .disp_stepping = STEP_D0 },
 };
 
-const struct i915_rev_steppings adls_revid_step_tbl[] = {
+static const struct i915_rev_steppings adls_revid_step_tbl[] = {
 	[0x0] = { .gt_stepping = STEP_A0, .disp_stepping = STEP_A0 },
 	[0x1] = { .gt_stepping = STEP_A0, .disp_stepping = STEP_A2 },
 	[0x4] = { .gt_stepping = STEP_B0, .disp_stepping = STEP_B0 },
@@ -54,7 +54,16 @@ void intel_stepping_init(struct drm_i915_private *i915)
 	int revid = INTEL_REVID(i915);
 	struct i915_rev_steppings stepping = {};
 
-	if (IS_KABYLAKE(i915)) {
+	if (IS_ALDERLAKE_S(i915)) {
+		revids = adls_revid_step_tbl;
+		size = ARRAY_SIZE(adls_revid_step_tbl);
+	} else if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {
+		revids = tgl_uy_revid_step_tbl;
+		size = ARRAY_SIZE(tgl_uy_revid_step_tbl);
+	} else if (IS_TIGERLAKE(i915)) {
+		revids = tgl_revid_step_tbl;
+		size = ARRAY_SIZE(tgl_revid_step_tbl);
+	} else if (IS_KABYLAKE(i915)) {
 		revids = kbl_revids;
 		size = ARRAY_SIZE(kbl_revids);
 	}
diff --git a/drivers/gpu/drm/i915/intel_stepping.h b/drivers/gpu/drm/i915/intel_stepping.h
index 8c7f17b405b2..b1d8dcda7aa4 100644
--- a/drivers/gpu/drm/i915/intel_stepping.h
+++ b/drivers/gpu/drm/i915/intel_stepping.h
@@ -15,14 +15,6 @@ struct i915_rev_steppings {
 	u8 disp_stepping;
 };
 
-#define TGL_UY_REVID_STEP_TBL_SIZE	4
-#define TGL_REVID_STEP_TBL_SIZE		2
-#define ADLS_REVID_STEP_TBL_SIZE	13
-
-extern const struct i915_rev_steppings tgl_uy_revid_step_tbl[TGL_UY_REVID_STEP_TBL_SIZE];
-extern const struct i915_rev_steppings tgl_revid_step_tbl[TGL_REVID_STEP_TBL_SIZE];
-extern const struct i915_rev_steppings adls_revid_step_tbl[ADLS_REVID_STEP_TBL_SIZE];
-
 /*
  * Symbolic steppings that do not match the hardware. These are valid both as gt
  * and display steppings as symbolic names.
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
