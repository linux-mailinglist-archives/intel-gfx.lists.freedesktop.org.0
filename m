Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEC26E0A80
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 11:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F99710EAA8;
	Thu, 13 Apr 2023 09:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DE7F10EAA9
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 09:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681379275; x=1712915275;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E/HLDhLOj9PrWxkOy0s7y928GvDemb6oJZXnQTW9qW0=;
 b=lROEbymU463EMtd6J6Rfj5pqaBVA553JsHbjaA3Kd5m9f0OrlKN0frE9
 Os2dUVheCO3OQoL5TBtON7D4Ed7gYmnS6IsxMthbMVvY7ryxFXQ7E80e+
 QNvLKGSArZ2I6idXy7omIGE7mnI7yLhMWR+H9KquhBya70Y/0s2mmoDrX
 0xwYlhfXLj4Bs4Yrx8SsEEQUVZhexnYQEHqlVwP0TtlGmdRPN46dPz3+F
 7fg/I77DoEyaOwyI6fAlIKr5CZlme+W+iMfaVQT/CXfbovbf8TPVrC0j9
 FUapWE+akfIqGoaTJp8S5J5pV7NGm+ziwSrwD5mdVYP1cdS/vsilS1QTy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="328254704"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="328254704"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:47:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="719778876"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="719778876"
Received: from merkanx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.88])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:47:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 12:47:29 +0300
Message-Id: <8576baa1bfba4f4af913f3ba6c04d94781ba6fda.1681379167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/10] drm/i915/display: move
 intel_modeset_probe_defer() to intel_display_driver.[ch]
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

High level display functionality only called from driver top level code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 23 -------------------
 drivers/gpu/drm/i915/display/intel_display.h  |  1 -
 .../drm/i915/display/intel_display_driver.c   | 23 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  4 ++++
 drivers/gpu/drm/i915/i915_pci.c               |  1 +
 5 files changed, 28 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7c66b9ce0db5..dfec17bb3a7a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -31,7 +31,6 @@
 #include <linux/module.h>
 #include <linux/slab.h>
 #include <linux/string_helpers.h>
-#include <linux/vga_switcheroo.h>
 
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_atomic.h>
@@ -40,7 +39,6 @@
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_fourcc.h>
-#include <drm/drm_privacy_screen_consumer.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_rect.h>
 
@@ -8810,27 +8808,6 @@ void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
 	intel_bios_driver_remove(i915);
 }
 
-bool intel_modeset_probe_defer(struct pci_dev *pdev)
-{
-	struct drm_privacy_screen *privacy_screen;
-
-	/*
-	 * apple-gmux is needed on dual GPU MacBook Pro
-	 * to probe the panel if we're the inactive GPU.
-	 */
-	if (vga_switcheroo_client_probe_defer(pdev))
-		return true;
-
-	/* If the LCD panel has a privacy-screen, wait for it */
-	privacy_screen = drm_privacy_screen_get(&pdev->dev, NULL);
-	if (IS_ERR(privacy_screen) && PTR_ERR(privacy_screen) == -EPROBE_DEFER)
-		return true;
-
-	drm_privacy_screen_put(privacy_screen);
-
-	return false;
-}
-
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
 {
 	return DISPLAY_VER(i915) >= 6 && i915_vtd_active(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e46732d26b7c..6ff8faa1b5ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -521,7 +521,6 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
 void intel_update_watermarks(struct drm_i915_private *i915);
 
 /* modesetting */
-bool intel_modeset_probe_defer(struct pci_dev *pdev);
 void intel_modeset_init_hw(struct drm_i915_private *i915);
 int intel_modeset_init_noirq(struct drm_i915_private *i915);
 int intel_modeset_init_nogem(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index d4a1893e9218..1386f2001613 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -7,8 +7,10 @@
  * details here.
  */
 
+#include <linux/vga_switcheroo.h>
 #include <acpi/video.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_privacy_screen_consumer.h>
 #include <drm/drm_probe_helper.h>
 
 #include "i915_drv.h"
@@ -19,6 +21,27 @@
 #include "intel_fbdev.h"
 #include "intel_opregion.h"
 
+bool intel_modeset_probe_defer(struct pci_dev *pdev)
+{
+	struct drm_privacy_screen *privacy_screen;
+
+	/*
+	 * apple-gmux is needed on dual GPU MacBook Pro
+	 * to probe the panel if we're the inactive GPU.
+	 */
+	if (vga_switcheroo_client_probe_defer(pdev))
+		return true;
+
+	/* If the LCD panel has a privacy-screen, wait for it */
+	privacy_screen = drm_privacy_screen_get(&pdev->dev, NULL);
+	if (IS_ERR(privacy_screen) && PTR_ERR(privacy_screen) == -EPROBE_DEFER)
+		return true;
+
+	drm_privacy_screen_put(privacy_screen);
+
+	return false;
+}
+
 void intel_display_driver_register(struct drm_i915_private *i915)
 {
 	if (!HAS_DISPLAY(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 4f6deef5a23f..4c18792fcafd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -6,8 +6,12 @@
 #ifndef __INTEL_DISPLAY_DRIVER_H__
 #define __INTEL_DISPLAY_DRIVER_H__
 
+#include <linux/types.h>
+
 struct drm_i915_private;
+struct pci_dev;
 
+bool intel_modeset_probe_defer(struct pci_dev *pdev);
 void intel_display_driver_register(struct drm_i915_private *i915);
 void intel_display_driver_unregister(struct drm_i915_private *i915);
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index cddb6e197972..bda5caa33f12 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -27,6 +27,7 @@
 #include <drm/i915_pciids.h>
 
 #include "display/intel_display.h"
+#include "display/intel_display_driver.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_sa_media.h"
 
-- 
2.39.2

