Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AAB7B693C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 14:42:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44C1A10E090;
	Tue,  3 Oct 2023 12:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F84910E090
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 12:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696336946; x=1727872946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cJThBOnpnWdxy1HerghDGIF4dutuo24DLMnKoe23hSE=;
 b=CVGFTjREQDJTHy5GtICE39Qpw45ngeW3BEq9JIU7VylmWm2QrJ4si3hL
 7C2H6aElQXHl56i1a1f35+NQ9exHvQIyuKciL/JTMHuVK0rL7X2PJcmx4
 kEQx0slgWOBd87vUFSWO163vFFejVCMHpxHKEW4irPkk4b3a7d5tjiCqU
 bo1UhkJ2k2PXUGSVS3x8wqoITTKUVixqCKzLSFkyHY7HAB6e0rdUk//5B
 Cy1Du50NAfOMJHwkJIpIWJJTyjle5AutFhaLGrC+3JC6a4vbkp8dHgJaV
 n3fXQ7fNlHdwro7qLNlkVYuQx7PC0Jcw37AZHzekpgsGlIYygKMKGaM7L g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="447020630"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="447020630"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 05:42:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="727601595"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="727601595"
Received: from akorotox-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.199])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 05:42:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 15:42:09 +0300
Message-Id: <a2226a47a4450e75d867c2ac48665b387af0e42d.1696336887.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1696336887.git.jani.nikula@intel.com>
References: <cover.1696336887.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: separate display runtime info init
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related functionality from intel_device_info_runtime_init()
to intel_display_device_info_runtime_init() and call the latter from the
top level.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 19 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_driver.c            |  1 +
 drivers/gpu/drm/i915/intel_device_info.c      | 17 -----------------
 3 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index dea64c99721e..11f4a6c54cc7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -939,7 +939,7 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	}
 }
 
-void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
+static void __intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 {
 	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
 	enum pipe pipe;
@@ -1071,6 +1071,23 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 	memset(display_runtime, 0, sizeof(*display_runtime));
 }
 
+void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
+{
+	if (HAS_DISPLAY(i915))
+		__intel_display_device_info_runtime_init(i915);
+
+	/* Display may have been disabled by runtime init */
+	if (!HAS_DISPLAY(i915)) {
+		i915->drm.driver_features &= ~(DRIVER_MODESET | DRIVER_ATOMIC);
+		i915->display.info.__device_info = &no_display;
+	}
+
+	/* Disable nuclear pageflip by default on pre-g4x */
+	if (!i915->params.nuclear_pageflip &&
+	    DISPLAY_VER(i915) < 5 && !IS_G4X(i915))
+		i915->drm.driver_features &= ~DRIVER_ATOMIC;
+}
+
 void intel_display_device_info_print(const struct intel_display_device_info *info,
 				     const struct intel_display_runtime_info *runtime,
 				     struct drm_printer *p)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 78501a83ba10..ccbb2834cde0 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -338,6 +338,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	/* Try to make sure MCHBAR is enabled before poking at it */
 	intel_gmch_bar_setup(dev_priv);
 	intel_device_info_runtime_init(dev_priv);
+	intel_display_device_info_runtime_init(dev_priv);
 
 	for_each_gt(gt, dev_priv, i) {
 		ret = intel_gt_init_mmio(gt);
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d2ed0f057cb2..db3997cec6ff 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -350,8 +350,6 @@ void intel_device_info_runtime_init_early(struct drm_i915_private *i915)
 	intel_device_info_subplatform_init(i915);
 }
 
-static const struct intel_display_device_info no_display = {};
-
 /**
  * intel_device_info_runtime_init - initialize runtime info
  * @dev_priv: the i915 device
@@ -372,21 +370,6 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 {
 	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
 
-	if (HAS_DISPLAY(dev_priv))
-		intel_display_device_info_runtime_init(dev_priv);
-
-	/* Display may have been disabled by runtime init */
-	if (!HAS_DISPLAY(dev_priv)) {
-		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
-						   DRIVER_ATOMIC);
-		dev_priv->display.info.__device_info = &no_display;
-	}
-
-	/* Disable nuclear pageflip by default on pre-g4x */
-	if (!dev_priv->params.nuclear_pageflip &&
-	    DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
-		dev_priv->drm.driver_features &= ~DRIVER_ATOMIC;
-
 	BUILD_BUG_ON(BITS_PER_TYPE(intel_engine_mask_t) < I915_NUM_ENGINES);
 
 	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
-- 
2.39.2

