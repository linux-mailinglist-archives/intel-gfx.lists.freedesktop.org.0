Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 455F63C773B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 21:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB47C6E11F;
	Tue, 13 Jul 2021 19:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF466E11F
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 19:36:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="190609871"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="190609871"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 12:36:44 -0700
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="487456162"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 12:36:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 12:36:32 -0700
Message-Id: <20210713193635.3390052-10-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210713193635.3390052-1-matthew.d.roper@intel.com>
References: <20210713193635.3390052-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v4 09/12] drm/i915/rkl: Use revid->stepping tables
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
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
 drivers/gpu/drm/i915/i915_drv.h          | 8 ++------
 drivers/gpu/drm/i915/intel_step.c        | 9 +++++++++
 3 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4dfe1dceb863..d436490ab28c 100644
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
index b3ce2b73a143..9195131cf90f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1549,12 +1549,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
index 9de17bdfe62f..93edfbef2903 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -75,6 +75,12 @@ static const struct intel_step_info tgl_revids[] = {
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_D0 },
 };
 
+static const struct intel_step_info rkl_revids[] = {
+	[0] = { COMMON_STEP(A0) },
+	[1] = { COMMON_STEP(B0) },
+	[4] = { COMMON_STEP(C0) },
+};
+
 static const struct intel_step_info adls_revids[] = {
 	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[0x1] = { .gt_step = STEP_A0, .display_step = STEP_A2 },
@@ -103,6 +109,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ALDERLAKE_S(i915)) {
 		revids = adls_revids;
 		size = ARRAY_SIZE(adls_revids);
+	} else if (IS_ROCKETLAKE(i915)) {
+		revids = rkl_revids;
+		size = ARRAY_SIZE(rkl_revids);
 	} else if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {
 		revids = tgl_uy_revids;
 		size = ARRAY_SIZE(tgl_uy_revids);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
