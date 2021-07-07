Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7073B3BE25B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 07:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF306E825;
	Wed,  7 Jul 2021 05:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E22736E81E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 05:06:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="196406283"
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="196406283"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 22:06:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="457348312"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008.jf.intel.com with ESMTP; 06 Jul 2021 22:06:48 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jul 2021 22:06:41 -0700
Message-Id: <20210707050645.31043-5-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210707050645.31043-1-anusha.srivatsa@intel.com>
References: <20210707050645.31043-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/bxt: s/IS_BXT_REVID/IS_BXT_GT_STEP
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

Add stepping info table for BXT.
Remove stepping info table from intel_dmc.c and
instead use the centralized stepping_info from
intel_step.c

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 18 +++++++++---------
 drivers/gpu/drm/i915/i915_drv.c          |  2 +-
 drivers/gpu/drm/i915/i915_drv.h          | 11 +++--------
 drivers/gpu/drm/i915/intel_step.c        | 12 ++++++++++++
 drivers/gpu/drm/i915/intel_step.h        |  2 ++
 5 files changed, 27 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 19c8b9022370..a1fa44ec4ca8 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -247,11 +247,6 @@ bool intel_dmc_has_payload(struct drm_i915_private *i915)
 	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
 }
 
-static const struct stepping_info bxt_stepping_info[] = {
-	{'A', '0'}, {'A', '1'}, {'A', '2'},
-	{'B', '0'}, {'B', '1'}, {'B', '2'}
-};
-
 static const struct stepping_info icl_stepping_info[] = {
 	{'A', '0'}, {'A', '1'}, {'A', '2'},
 	{'B', '0'}, {'B', '2'},
@@ -271,12 +266,9 @@ intel_get_stepping_info(struct drm_i915_private *dev_priv)
 	if (IS_ICELAKE(dev_priv)) {
 		size = ARRAY_SIZE(icl_stepping_info);
 		si = icl_stepping_info;
-	} else if (IS_BROXTON(dev_priv)) {
-		size = ARRAY_SIZE(bxt_stepping_info);
-		si = bxt_stepping_info;
 	}
 
-	if (IS_ICELAKE(dev_priv) || IS_BROXTON(dev_priv))
+	if (IS_ICELAKE(dev_priv))
 		return INTEL_REVID(dev_priv) < size ? si + INTEL_REVID(dev_priv) : &no_stepping_info;
 
 	else {
@@ -285,6 +277,10 @@ intel_get_stepping_info(struct drm_i915_private *dev_priv)
 			display_step->stepping = 'A';
 			display_step->substepping = '0';
 			break;
+		case STEP_A1:
+			display_step->stepping = 'A';
+			display_step->substepping = '1';
+			break;
 		case STEP_A2:
 			display_step->stepping = 'A';
 			display_step->substepping = '2';
@@ -297,6 +293,10 @@ intel_get_stepping_info(struct drm_i915_private *dev_priv)
 			display_step->stepping = 'B';
 			display_step->substepping = '1';
 			break;
+		case STEP_B2:
+			display_step->stepping = 'B';
+			display_step->substepping = '2';
+			break;
 		case STEP_C0:
 			display_step->stepping = 'C';
 			display_step->substepping = '0';
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 9a4a623ad6d4..eaddb18e4762 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -272,7 +272,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 
 	pre |= IS_HSW_EARLY_SDV(dev_priv);
 	pre |= IS_SKL_GT_STEP(dev_priv, 0, STEP_F0);
-	pre |= IS_BXT_REVID(dev_priv, 0, BXT_REVID_B_LAST);
+	pre |= IS_BXT_GT_STEP(dev_priv, 0, STEP_B2);
 	pre |= IS_KBL_GT_STEP(dev_priv, 0, STEP_A0);
 	pre |= IS_GLK_REVID(dev_priv, 0, GLK_REVID_A2);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b4a7652d0c50..defa084ccd08 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1466,15 +1466,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_SKYLAKE(__i915) && \
 	 IS_GT_STEP(__i915, since, until))
 
+#define IS_BXT_GT_STEP(__i915, since, until) \
+	(IS_BROXTON(__i915) && \
+	 IS_GT_STEP(__i915, since, until))
 
-#define BXT_REVID_A0		0x0
-#define BXT_REVID_A1		0x1
-#define BXT_REVID_B0		0x3
-#define BXT_REVID_B_LAST	0x8
-#define BXT_REVID_C0		0x9
-
-#define IS_BXT_REVID(dev_priv, since, until) \
-	(IS_BROXTON(dev_priv) && IS_REVID(dev_priv, since, until))
 
 #define IS_KBL_GT_STEP(dev_priv, since, until) \
 	(IS_KABYLAKE(dev_priv) && IS_GT_STEP(dev_priv, since, until))
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 3f07b994d58a..b00c192c6c3d 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -26,6 +26,15 @@ static const struct intel_step_info skl_revids[] = {
 	[9] = { .gt_step = STEP_J0 },
 };
 
+static const struct intel_step_info bxt_revids[] = {
+	[0] = { .gt_step = STEP_A0 },
+	[1] = { .gt_step = STEP_A1 },
+	[2] = { .gt_step = STEP_A2 },
+	[6] = { .gt_step = STEP_B0 },
+	[7] = { .gt_step = STEP_B1 },
+	[8] = { .gt_step = STEP_B2 },
+};
+
 /* FIXME: what about REVID_E0 */
 static const struct intel_step_info kbl_revids[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
@@ -91,6 +100,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_SKYLAKE(i915)) {
 		revids = skl_revids;
 		size = ARRAY_SIZE(skl_revids);
+	} else if (IS_BROXTON(i915)) {
+		revids = bxt_revids;
+		size = ARRAY_SIZE(bxt_revids);
 	}
 
 	/* Not using the stepping scheme for the platform yet. */
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 3655944daf81..09acd822cabc 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -22,9 +22,11 @@ struct intel_step_info {
 enum intel_step {
 	STEP_NONE = 0,
 	STEP_A0,
+	STEP_A1,
 	STEP_A2,
 	STEP_B0,
 	STEP_B1,
+	STEP_B2,
 	STEP_C0,
 	STEP_D0,
 	STEP_D1,
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
