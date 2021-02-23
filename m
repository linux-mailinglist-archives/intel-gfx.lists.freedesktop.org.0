Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE656322DA2
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 16:36:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DFDE6E9DD;
	Tue, 23 Feb 2021 15:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 930EA6E9DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 15:36:23 +0000 (UTC)
IronPort-SDR: C9EsXTNTMzgM0SWARybqvmpT8aVV4YcYI8LwF+lIpK9iPMQnFU2FUC9HOj1RyA2taYUGh3DP3a
 QXZmT+rkVEqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="184888816"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="184888816"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 07:36:22 -0800
IronPort-SDR: OCNvuFy0Jus2dsIwVaOcSEdhJyPeIWy5226RZJZuTt4K1jw2ChHdoZIvKSNYCH703WhGIQKVom
 VEYmur5kWN7g==
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="515235768"
Received: from kcushion-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.40.63])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 07:36:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Feb 2021 17:35:12 +0200
Message-Id: <e59b0f611c3519fe09e56e232ef7379ca2158674.1614094093.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1614094093.git.jani.nikula@intel.com>
References: <cover.1614094093.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 7/7] drm/i915: rename
 disp_stepping->display_step and gt_stepping->gt_step
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

Matter of taste. Step matches the enums.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h       |  4 +--
 drivers/gpu/drm/i915/intel_stepping.c | 48 +++++++++++++--------------
 drivers/gpu/drm/i915/intel_stepping.h |  4 +--
 3 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 927a32427197..81896be3e9f1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1274,8 +1274,8 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 #define IS_REVID(p, since, until) \
 	(INTEL_REVID(p) >= (since) && INTEL_REVID(p) <= (until))
 
-#define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->stepping.disp_stepping)
-#define INTEL_GT_STEP(__i915) (RUNTIME_INFO(__i915)->stepping.gt_stepping)
+#define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->stepping.display_step)
+#define INTEL_GT_STEP(__i915) (RUNTIME_INFO(__i915)->stepping.gt_step)
 
 #define IS_DISPLAY_STEP(__i915, since, until) \
 	(drm_WARN_ON(&(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
diff --git a/drivers/gpu/drm/i915/intel_stepping.c b/drivers/gpu/drm/i915/intel_stepping.c
index 3a54297e8a14..d4cc2ccce959 100644
--- a/drivers/gpu/drm/i915/intel_stepping.c
+++ b/drivers/gpu/drm/i915/intel_stepping.c
@@ -16,35 +16,35 @@
 
 /* FIXME: what about REVID_E0 */
 static const struct i915_rev_steppings kbl_revids[] = {
-	[0] = { .gt_stepping = STEP_A0, .disp_stepping = STEP_A0 },
-	[1] = { .gt_stepping = STEP_B0, .disp_stepping = STEP_B0 },
-	[2] = { .gt_stepping = STEP_C0, .disp_stepping = STEP_B0 },
-	[3] = { .gt_stepping = STEP_D0, .disp_stepping = STEP_B0 },
-	[4] = { .gt_stepping = STEP_F0, .disp_stepping = STEP_C0 },
-	[5] = { .gt_stepping = STEP_C0, .disp_stepping = STEP_B1 },
-	[6] = { .gt_stepping = STEP_D1, .disp_stepping = STEP_B1 },
-	[7] = { .gt_stepping = STEP_G0, .disp_stepping = STEP_C0 },
+	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+	[2] = { .gt_step = STEP_C0, .display_step = STEP_B0 },
+	[3] = { .gt_step = STEP_D0, .display_step = STEP_B0 },
+	[4] = { .gt_step = STEP_F0, .display_step = STEP_C0 },
+	[5] = { .gt_step = STEP_C0, .display_step = STEP_B1 },
+	[6] = { .gt_step = STEP_D1, .display_step = STEP_B1 },
+	[7] = { .gt_step = STEP_G0, .display_step = STEP_C0 },
 };
 
 static const struct i915_rev_steppings tgl_uy_revid_step_tbl[] = {
-	[0] = { .gt_stepping = STEP_A0, .disp_stepping = STEP_A0 },
-	[1] = { .gt_stepping = STEP_B0, .disp_stepping = STEP_C0 },
-	[2] = { .gt_stepping = STEP_B1, .disp_stepping = STEP_C0 },
-	[3] = { .gt_stepping = STEP_C0, .disp_stepping = STEP_D0 },
+	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[1] = { .gt_step = STEP_B0, .display_step = STEP_C0 },
+	[2] = { .gt_step = STEP_B1, .display_step = STEP_C0 },
+	[3] = { .gt_step = STEP_C0, .display_step = STEP_D0 },
 };
 
 /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the same HW */
 static const struct i915_rev_steppings tgl_revid_step_tbl[] = {
-	[0] = { .gt_stepping = STEP_A0, .disp_stepping = STEP_B0 },
-	[1] = { .gt_stepping = STEP_B0, .disp_stepping = STEP_D0 },
+	[0] = { .gt_step = STEP_A0, .display_step = STEP_B0 },
+	[1] = { .gt_step = STEP_B0, .display_step = STEP_D0 },
 };
 
 static const struct i915_rev_steppings adls_revid_step_tbl[] = {
-	[0x0] = { .gt_stepping = STEP_A0, .disp_stepping = STEP_A0 },
-	[0x1] = { .gt_stepping = STEP_A0, .disp_stepping = STEP_A2 },
-	[0x4] = { .gt_stepping = STEP_B0, .disp_stepping = STEP_B0 },
-	[0x8] = { .gt_stepping = STEP_C0, .disp_stepping = STEP_B0 },
-	[0xC] = { .gt_stepping = STEP_D0, .disp_stepping = STEP_C0 },
+	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[0x1] = { .gt_step = STEP_A0, .display_step = STEP_A2 },
+	[0x4] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+	[0x8] = { .gt_step = STEP_C0, .display_step = STEP_B0 },
+	[0xC] = { .gt_step = STEP_D0, .display_step = STEP_C0 },
 };
 
 void intel_stepping_init(struct drm_i915_private *i915)
@@ -72,7 +72,7 @@ void intel_stepping_init(struct drm_i915_private *i915)
 	if (!revids)
 		return;
 
-	if (revid < size && revids[revid].gt_stepping != STEP_NONE) {
+	if (revid < size && revids[revid].gt_step != STEP_NONE) {
 		stepping = revids[revid];
 	} else {
 		drm_dbg(&i915->drm, "Unknown revid 0x%02x\n", revid);
@@ -85,7 +85,7 @@ void intel_stepping_init(struct drm_i915_private *i915)
 		 * steppings in the array are not monotonically increasing, but
 		 * it's better than defaulting to 0.
 		 */
-		while (revid < size && revids[revid].gt_stepping == STEP_NONE)
+		while (revid < size && revids[revid].gt_step == STEP_NONE)
 			revid++;
 
 		if (revid < size) {
@@ -94,12 +94,12 @@ void intel_stepping_init(struct drm_i915_private *i915)
 			stepping = revids[revid];
 		} else {
 			drm_dbg(&i915->drm, "Using future steppings\n");
-			stepping.gt_stepping = STEP_FUTURE;
-			stepping.disp_stepping = STEP_FUTURE;
+			stepping.gt_step = STEP_FUTURE;
+			stepping.display_step = STEP_FUTURE;
 		}
 	}
 
-	if (drm_WARN_ON(&i915->drm, stepping.gt_stepping == STEP_NONE))
+	if (drm_WARN_ON(&i915->drm, stepping.gt_step == STEP_NONE))
 		return;
 
 	RUNTIME_INFO(i915)->stepping = stepping;
diff --git a/drivers/gpu/drm/i915/intel_stepping.h b/drivers/gpu/drm/i915/intel_stepping.h
index b1d8dcda7aa4..e8d86b56d6fe 100644
--- a/drivers/gpu/drm/i915/intel_stepping.h
+++ b/drivers/gpu/drm/i915/intel_stepping.h
@@ -11,8 +11,8 @@
 struct drm_i915_private;
 
 struct i915_rev_steppings {
-	u8 gt_stepping;
-	u8 disp_stepping;
+	u8 gt_step;
+	u8 display_step;
 };
 
 /*
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
