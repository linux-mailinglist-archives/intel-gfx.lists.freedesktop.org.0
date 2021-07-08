Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D62DC3BF540
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 07:39:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA6AA6E216;
	Thu,  8 Jul 2021 05:39:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B5A46E156
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 05:39:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="207621998"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="207621998"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 22:39:38 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="428209780"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 22:39:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jul 2021 22:38:17 -0700
Message-Id: <20210708053819.2120187-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210708053819.2120187-1-matthew.d.roper@intel.com>
References: <20210708053819.2120187-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/rkl: Use revid->stepping tables
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

Switch RKL to use a revid->stepping table as we're trying to do on all
platforms going forward.

Bspec: 44501
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
 drivers/gpu/drm/i915/i915_drv.h          | 8 ++------
 drivers/gpu/drm/i915/intel_step.c        | 9 +++++++++
 3 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9643624fe160..74b2aa3c2946 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -594,7 +594,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		/* WA 1408330847 */
 		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
-		    IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0))
+		    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
 			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
 				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
 				     DIS_RAM_BYPASS_PSR2_MAN_TRACK);
@@ -1342,7 +1342,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	/* WA 1408330847 */
 	if (intel_dp->psr.psr2_sel_fetch_enabled &&
 	    (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
-	     IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0)))
+	     IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0)))
 		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
 			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3f4e17ba5e80..6de2590afff6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1489,12 +1489,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
 	 IS_GT_STEP(__i915, since, until))
 
-#define RKL_REVID_A0		0x0
-#define RKL_REVID_B0		0x1
-#define RKL_REVID_C0		0x4
-
-#define IS_RKL_REVID(p, since, until) \
-	(IS_ROCKETLAKE(p) && IS_REVID(p, since, until))
+#define IS_RKL_DISPLAY_STEP(p, since, until) \
+	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
 
 #define DG1_REVID_A0		0x0
 #define DG1_REVID_B0		0x1
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 61666a3dd672..1593ab25f41a 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -69,6 +69,12 @@ static const struct intel_step_info tgl_revid_step_tbl[] = {
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_D0 },
 };
 
+static const struct intel_step_info rkl_revid_step_tbl[] = {
+	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+	[4] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
+};
+
 static const struct intel_step_info adls_revid_step_tbl[] = {
 	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[0x1] = { .gt_step = STEP_A0, .display_step = STEP_A2 },
@@ -97,6 +103,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ALDERLAKE_S(i915)) {
 		revids = adls_revid_step_tbl;
 		size = ARRAY_SIZE(adls_revid_step_tbl);
+	} else if (IS_ROCKETLAKE(i915)) {
+		revids = rkl_revid_step_tbl;
+		size = ARRAY_SIZE(rkl_revid_step_tbl);
 	} else if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {
 		revids = tgl_uy_revid_step_tbl;
 		size = ARRAY_SIZE(tgl_uy_revid_step_tbl);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
