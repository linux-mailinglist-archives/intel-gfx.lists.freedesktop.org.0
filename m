Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E6A3BE257
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 07:06:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 680DC6E822;
	Wed,  7 Jul 2021 05:06:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B8666E81C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 05:06:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="196406280"
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="196406280"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 22:06:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="457348304"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008.jf.intel.com with ESMTP; 06 Jul 2021 22:06:47 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jul 2021 22:06:40 -0700
Message-Id: <20210707050645.31043-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210707050645.31043-1-anusha.srivatsa@intel.com>
References: <20210707050645.31043-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/skl: s/IS_SKL_REVID/IS_SKL_GT_STEP
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

Start using the latest STEP_ macro for all
purposes.

For SKL, GT step is same as display step, lets us
avoid initializing both

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c    | 24 +++++++++++----------
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  2 +-
 drivers/gpu/drm/i915/i915_drv.c             |  2 +-
 drivers/gpu/drm/i915/i915_drv.h             | 14 ++++--------
 drivers/gpu/drm/i915/intel_step.c           | 18 ++++++++++++++++
 drivers/gpu/drm/i915/intel_step.h           |  3 +++
 6 files changed, 40 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a38720f25910..19c8b9022370 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -247,13 +247,6 @@ bool intel_dmc_has_payload(struct drm_i915_private *i915)
 	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
 }
 
-static const struct stepping_info skl_stepping_info[] = {
-	{'A', '0'}, {'B', '0'}, {'C', '0'},
-	{'D', '0'}, {'E', '0'}, {'F', '0'},
-	{'G', '0'}, {'H', '0'}, {'I', '0'},
-	{'J', '0'}, {'K', '0'}
-};
-
 static const struct stepping_info bxt_stepping_info[] = {
 	{'A', '0'}, {'A', '1'}, {'A', '2'},
 	{'B', '0'}, {'B', '1'}, {'B', '2'}
@@ -278,15 +271,12 @@ intel_get_stepping_info(struct drm_i915_private *dev_priv)
 	if (IS_ICELAKE(dev_priv)) {
 		size = ARRAY_SIZE(icl_stepping_info);
 		si = icl_stepping_info;
-	} else if (IS_SKYLAKE(dev_priv)) {
-		size = ARRAY_SIZE(skl_stepping_info);
-		si = skl_stepping_info;
 	} else if (IS_BROXTON(dev_priv)) {
 		size = ARRAY_SIZE(bxt_stepping_info);
 		si = bxt_stepping_info;
 	}
 
-	if (IS_ICELAKE(dev_priv) || IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))
+	if (IS_ICELAKE(dev_priv) || IS_BROXTON(dev_priv))
 		return INTEL_REVID(dev_priv) < size ? si + INTEL_REVID(dev_priv) : &no_stepping_info;
 
 	else {
@@ -331,6 +321,18 @@ intel_get_stepping_info(struct drm_i915_private *dev_priv)
 			display_step->stepping = 'G';
 			display_step->substepping = '0';
 			break;
+		case STEP_H0:
+			display_step->stepping = 'H';
+			display_step->substepping = '0';
+			break;
+		case STEP_I0:
+			display_step->stepping = 'I';
+			display_step->substepping = '0';
+			break;
+		case STEP_J0:
+			display_step->stepping = 'J';
+			display_step->substepping = '0';
+			break;
 		default:
 			display_step->stepping = '*';
 			display_step->substepping = '*';
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index d9a5a445ceec..6dfd564e078f 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -883,7 +883,7 @@ skl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		    GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaInPlaceDecompressionHang:skl */
-	if (IS_SKL_REVID(i915, SKL_REVID_H0, REVID_FOREVER))
+	if (IS_SKL_GT_STEP(i915, STEP_H0, STEP_FOREVER))
 		wa_write_or(wal,
 			    GEN9_GAMT_ECO_REG_RW_IA,
 			    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 30d8cd8c69b1..9a4a623ad6d4 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -271,7 +271,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 	bool pre = false;
 
 	pre |= IS_HSW_EARLY_SDV(dev_priv);
-	pre |= IS_SKL_REVID(dev_priv, 0, SKL_REVID_F0);
+	pre |= IS_SKL_GT_STEP(dev_priv, 0, STEP_F0);
 	pre |= IS_BXT_REVID(dev_priv, 0, BXT_REVID_B_LAST);
 	pre |= IS_KBL_GT_STEP(dev_priv, 0, STEP_A0);
 	pre |= IS_GLK_REVID(dev_priv, 0, GLK_REVID_A2);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6dff4ca01241..b4a7652d0c50 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1462,16 +1462,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_TGL_Y(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_ULX)
 
-#define SKL_REVID_A0		0x0
-#define SKL_REVID_B0		0x1
-#define SKL_REVID_C0		0x2
-#define SKL_REVID_D0		0x3
-#define SKL_REVID_E0		0x4
-#define SKL_REVID_F0		0x5
-#define SKL_REVID_G0		0x6
-#define SKL_REVID_H0		0x7
-
-#define IS_SKL_REVID(p, since, until) (IS_SKYLAKE(p) && IS_REVID(p, since, until))
+#define IS_SKL_GT_STEP(__i915, since, until) \
+	(IS_SKYLAKE(__i915) && \
+	 IS_GT_STEP(__i915, since, until))
+
 
 #define BXT_REVID_A0		0x0
 #define BXT_REVID_A1		0x1
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 93ccd42f2514..3f07b994d58a 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -13,6 +13,18 @@
  * can test against in a regular manner.
  */
 
+static const struct intel_step_info skl_revids[] = {
+	[0] = { .gt_step = STEP_A0 },
+	[1] = { .gt_step = STEP_B0 },
+	[2] = { .gt_step = STEP_C0 },
+	[3] = { .gt_step = STEP_D0 },
+	[4] = { .gt_step = STEP_E0 },
+	[5] = { .gt_step = STEP_F0 },
+	[6] = { .gt_step = STEP_G0 },
+	[7] = { .gt_step = STEP_H0 },
+	[8] = { .gt_step = STEP_I0 },
+	[9] = { .gt_step = STEP_J0 },
+};
 
 /* FIXME: what about REVID_E0 */
 static const struct intel_step_info kbl_revids[] = {
@@ -76,6 +88,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_KABYLAKE(i915)) {
 		revids = kbl_revids;
 		size = ARRAY_SIZE(kbl_revids);
+	} else if (IS_SKYLAKE(i915)) {
+		revids = skl_revids;
+		size = ARRAY_SIZE(skl_revids);
 	}
 
 	/* Not using the stepping scheme for the platform yet. */
@@ -112,5 +127,8 @@ void intel_step_init(struct drm_i915_private *i915)
 	if (drm_WARN_ON(&i915->drm, step.gt_step == STEP_NONE))
 		return;
 
+	if (step.display_step == STEP_NONE)
+		step.display_step = step.gt_step;
+
 	RUNTIME_INFO(i915)->step = step;
 }
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 958a8bb5d677..3655944daf81 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -31,6 +31,9 @@ enum intel_step {
 	STEP_E0,
 	STEP_F0,
 	STEP_G0,
+	STEP_H0,
+	STEP_I0,
+	STEP_J0,
 	STEP_FUTURE,
 	STEP_FOREVER,
 };
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
