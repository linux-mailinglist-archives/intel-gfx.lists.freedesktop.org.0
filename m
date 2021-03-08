Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 162FD33102B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 14:57:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE5489F9F;
	Mon,  8 Mar 2021 13:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D75F689F9F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 13:57:30 +0000 (UTC)
IronPort-SDR: Hwht6RuIq+NVotRpgrrJ/CpoHklgTUrFwBJ02KJrQrctSDb8hMrAlgCfMs+i/cxBDCtQ4mDCX9
 sp/EAtYJVtFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="207796455"
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="207796455"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:57:30 -0800
IronPort-SDR: xMPaMNj5DtKcFWXoWny4mV5i3m5y1/rmyQQbseOeA/Lc8Z03fBP0Id9nQ1DLK7F9+iEYTvLDT5
 09pdI4m8gSjg==
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="437382786"
Received: from dhoffend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.45.213])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:57:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Mar 2021 15:56:44 +0200
Message-Id: <eeb7794b60cc7b6aab26b2bfd3a54ee62131b807.1615211711.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1615211711.git.jani.nikula@intel.com>
References: <cover.1615211711.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 7/8] drm/i915: rename
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Matter of taste. Step matches the enums.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h   |  4 +--
 drivers/gpu/drm/i915/intel_step.c | 48 +++++++++++++++----------------
 drivers/gpu/drm/i915/intel_step.h |  4 +--
 3 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 50f6f957c5db..ea82d93df7b8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1274,8 +1274,8 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 #define IS_REVID(p, since, until) \
 	(INTEL_REVID(p) >= (since) && INTEL_REVID(p) <= (until))
 
-#define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.disp_stepping)
-#define INTEL_GT_STEP(__i915) (RUNTIME_INFO(__i915)->step.gt_stepping)
+#define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
+#define INTEL_GT_STEP(__i915) (RUNTIME_INFO(__i915)->step.gt_step)
 
 #define IS_DISPLAY_STEP(__i915, since, until) \
 	(drm_WARN_ON(&(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 4593eba24a7d..9df2dd264841 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
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
 
 void intel_step_init(struct drm_i915_private *i915)
@@ -72,7 +72,7 @@ void intel_step_init(struct drm_i915_private *i915)
 	if (!revids)
 		return;
 
-	if (revid < size && revids[revid].gt_stepping != STEP_NONE) {
+	if (revid < size && revids[revid].gt_step != STEP_NONE) {
 		step = revids[revid];
 	} else {
 		drm_dbg(&i915->drm, "Unknown revid 0x%02x\n", revid);
@@ -85,7 +85,7 @@ void intel_step_init(struct drm_i915_private *i915)
 		 * steppings in the array are not monotonically increasing, but
 		 * it's better than defaulting to 0.
 		 */
-		while (revid < size && revids[revid].gt_stepping == STEP_NONE)
+		while (revid < size && revids[revid].gt_step == STEP_NONE)
 			revid++;
 
 		if (revid < size) {
@@ -94,12 +94,12 @@ void intel_step_init(struct drm_i915_private *i915)
 			step = revids[revid];
 		} else {
 			drm_dbg(&i915->drm, "Using future steppings\n");
-			step.gt_stepping = STEP_FUTURE;
-			step.disp_stepping = STEP_FUTURE;
+			step.gt_step = STEP_FUTURE;
+			step.display_step = STEP_FUTURE;
 		}
 	}
 
-	if (drm_WARN_ON(&i915->drm, step.gt_stepping == STEP_NONE))
+	if (drm_WARN_ON(&i915->drm, step.gt_step == STEP_NONE))
 		return;
 
 	RUNTIME_INFO(i915)->step = step;
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 5cc5601794f0..102fd6a26893 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
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
