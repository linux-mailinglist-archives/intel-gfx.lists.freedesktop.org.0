Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BDA3BF538
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 07:39:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFAA6E07F;
	Thu,  8 Jul 2021 05:39:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5EB26E04E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 05:39:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="207621992"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="207621992"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 22:39:37 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="428209765"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 22:39:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jul 2021 22:38:13 -0700
Message-Id: <20210708053819.2120187-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210708053819.2120187-1-matthew.d.roper@intel.com>
References: <20210708053819.2120187-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Make pre-production detection use
 direct revid comparison
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

Although we're converting our workarounds to use a revid->stepping
lookup table, the function that detects pre-production hardware should
continue to compare against PCI revision ID values directly.  These are
listed in the bspec as integers, so it's easier to confirm their
correctness if we just use an integer literal rather than a symbolic
name anyway.

Since the BXT, GLK, and CNL revid macros were never used in any
workaround code, just remove them completely.

Bspec: 13620, 19131, 13626, 18329
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c   |  8 ++++----
 drivers/gpu/drm/i915/i915_drv.h   | 24 ------------------------
 drivers/gpu/drm/i915/intel_step.h |  1 +
 3 files changed, 5 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 30d8cd8c69b1..90136995f5eb 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -271,10 +271,10 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 	bool pre = false;
 
 	pre |= IS_HSW_EARLY_SDV(dev_priv);
-	pre |= IS_SKL_REVID(dev_priv, 0, SKL_REVID_F0);
-	pre |= IS_BXT_REVID(dev_priv, 0, BXT_REVID_B_LAST);
-	pre |= IS_KBL_GT_STEP(dev_priv, 0, STEP_A0);
-	pre |= IS_GLK_REVID(dev_priv, 0, GLK_REVID_A2);
+	pre |= IS_SKYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x6;
+	pre |= IS_BROXTON(dev_priv) && INTEL_REVID(dev_priv) < 0xA;
+	pre |= IS_KABYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
+	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
 
 	if (pre) {
 		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6dff4ca01241..796e6838bc79 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1473,35 +1473,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define IS_SKL_REVID(p, since, until) (IS_SKYLAKE(p) && IS_REVID(p, since, until))
 
-#define BXT_REVID_A0		0x0
-#define BXT_REVID_A1		0x1
-#define BXT_REVID_B0		0x3
-#define BXT_REVID_B_LAST	0x8
-#define BXT_REVID_C0		0x9
-
-#define IS_BXT_REVID(dev_priv, since, until) \
-	(IS_BROXTON(dev_priv) && IS_REVID(dev_priv, since, until))
-
 #define IS_KBL_GT_STEP(dev_priv, since, until) \
 	(IS_KABYLAKE(dev_priv) && IS_GT_STEP(dev_priv, since, until))
 #define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \
 	(IS_KABYLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, since, until))
 
-#define GLK_REVID_A0		0x0
-#define GLK_REVID_A1		0x1
-#define GLK_REVID_A2		0x2
-#define GLK_REVID_B0		0x3
-
-#define IS_GLK_REVID(dev_priv, since, until) \
-	(IS_GEMINILAKE(dev_priv) && IS_REVID(dev_priv, since, until))
-
-#define CNL_REVID_A0		0x0
-#define CNL_REVID_B0		0x1
-#define CNL_REVID_C0		0x2
-
-#define IS_CNL_REVID(p, since, until) \
-	(IS_CANNONLAKE(p) && IS_REVID(p, since, until))
-
 #define ICL_REVID_A0		0x0
 #define ICL_REVID_A2		0x1
 #define ICL_REVID_B0		0x3
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 958a8bb5d677..8efacef6ab31 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -22,6 +22,7 @@ struct intel_step_info {
 enum intel_step {
 	STEP_NONE = 0,
 	STEP_A0,
+	STEP_A1,
 	STEP_A2,
 	STEP_B0,
 	STEP_B1,
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
