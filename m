Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EE7331029
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 14:57:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C4AE89D67;
	Mon,  8 Mar 2021 13:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 097D789D67
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 13:57:20 +0000 (UTC)
IronPort-SDR: Tcq8vxQK17gGPxljPfhV5r/2DtJo7zM6ZXtfHWcxexb8B1YPDOxEnrm1Inl3a5mW2yaHhcWxLp
 Ypt5fDuTNmvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="273058354"
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="273058354"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:57:19 -0800
IronPort-SDR: 7L7c2E4xVIzVLvzd7fDhJ2wFzEHeLW524MkdJKO+ZAiqXSiF0fK2qD5lc5X6KCKSGaSMGeBxNB
 pM91tCKDGY2A==
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="508933695"
Received: from dhoffend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.45.213])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:57:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Mar 2021 15:56:42 +0200
Message-Id: <45f5b4072fba785ef23a35920176909108512794.1615211711.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1615211711.git.jani.nikula@intel.com>
References: <cover.1615211711.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 5/8] drm/i915: switch TGL and ADL to the new
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This changes the way revids not present in the array are handled:

- For gaps in the array, the next present revid is used.

- For revids beyond the array, the new STEP_FUTURE is used instead of
  the last revid in the array.

In both cases, we'll get debug logging of what's going on.

v2: Rename stepping->step

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h   | 59 ++++++++-----------------------
 drivers/gpu/drm/i915/intel_step.c | 17 ++++++---
 drivers/gpu/drm/i915/intel_step.h |  8 -----
 3 files changed, 28 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7f259aab4226..991318e90b5a 100644
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
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index aaa9494b0f4f..4593eba24a7d 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
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
@@ -54,7 +54,16 @@ void intel_step_init(struct drm_i915_private *i915)
 	int revid = INTEL_REVID(i915);
 	struct i915_rev_steppings step = {};
 
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
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index b29e15f71214..5cc5601794f0 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
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
