Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8663BE25C
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 07:07:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A4F46E821;
	Wed,  7 Jul 2021 05:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26B6A6E81F
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 05:06:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="196406288"
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="196406288"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 22:06:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="457348322"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008.jf.intel.com with ESMTP; 06 Jul 2021 22:06:49 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jul 2021 22:06:43 -0700
Message-Id: <20210707050645.31043-7-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210707050645.31043-1-anusha.srivatsa@intel.com>
References: <20210707050645.31043-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/glk: s/IS_GLK_REVID/IS_GLK_GT_STEP
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

Add stepping info table for GLK.
Remove stepping info table from intel_dmc.c and
instead use the centralized stepping_info from
intel_step.c

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c   |  2 +-
 drivers/gpu/drm/i915/i915_drv.h   |  9 +++------
 drivers/gpu/drm/i915/intel_step.c | 10 ++++++++++
 3 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index eaddb18e4762..9f433194c4e6 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -274,7 +274,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 	pre |= IS_SKL_GT_STEP(dev_priv, 0, STEP_F0);
 	pre |= IS_BXT_GT_STEP(dev_priv, 0, STEP_B2);
 	pre |= IS_KBL_GT_STEP(dev_priv, 0, STEP_A0);
-	pre |= IS_GLK_REVID(dev_priv, 0, GLK_REVID_A2);
+	pre |= IS_GLK_GT_STEP(dev_priv, 0, STEP_A2);
 
 	if (pre) {
 		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 217c58c14a88..e9156d1a89a7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1476,13 +1476,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \
 	(IS_KABYLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, since, until))
 
-#define GLK_REVID_A0		0x0
-#define GLK_REVID_A1		0x1
-#define GLK_REVID_A2		0x2
-#define GLK_REVID_B0		0x3
+#define IS_GLK_GT_STEP(__i915, since, until) \
+	(IS_GEMINILAKE(__i915) && \
+	IS_GT_STEP(__i915, since, until))
 
-#define IS_GLK_REVID(dev_priv, since, until) \
-	(IS_GEMINILAKE(dev_priv) && IS_REVID(dev_priv, since, until))
 
 #define CNL_REVID_A0		0x0
 #define CNL_REVID_B0		0x1
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index e1e5698d4998..a7144f24921e 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -35,6 +35,13 @@ static const struct intel_step_info bxt_revids[] = {
 	[8] = { .gt_step = STEP_B2 },
 };
 
+static const struct intel_step_info glk_revids[] = {
+	[0] = { .gt_step = STEP_A0 },
+	[1] = { .gt_step = STEP_A1 },
+	[2] = { .gt_step = STEP_A2 },
+	[3] = { .gt_step = STEP_B0 },
+};
+
 static const struct intel_step_info icl_revids[] = {
 	[0] = { .gt_step = STEP_A0 },
 	[3] = { .gt_step = STEP_B0 },
@@ -112,6 +119,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_BROXTON(i915)) {
 		revids = bxt_revids;
 		size = ARRAY_SIZE(bxt_revids);
+	} else if (IS_GEMINILAKE(i915)) {
+		revids = glk_revids;
+		size = ARRAY_SIZE(glk_revids);
 	} else if (IS_ICELAKE(i915)) {
 		revids = icl_revids;
 		size = ARRAY_SIZE(icl_revids);
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
