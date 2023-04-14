Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2746E1F84
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:42:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EE4A10ECAF;
	Fri, 14 Apr 2023 09:42:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1897D10ECB9
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681465337; x=1713001337;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MAaftEjVior0/0H/tg4JzXHm0zdqf7Ps93hM1QIJLHI=;
 b=Doa8N/kD+9qNq+4R/swUo2GRHlOmZX/ZD3vrzRIE1gfjTKeZdXSIwdl/
 Hf0DOcKB2O7aM0qTX+pYag0C22DRgVyKht6vZzWYjtdBZRtqHptHyp5ih
 LqI07yxKxS9PL86srJGtg9DC1522RyV4+htPa3VCAwCsbBWRpeN8Vf4aF
 4LIo7fDbY+dthDSVuqOA/oNqyauT/+chjn1mChR+PhYIBd15/ILW9fKLK
 r5f6QzxPSX0m+Rjr9W6O1fl/bsOPUlWzehZbn301bLI0oxiKq1UnEPWQj
 000x8YGueVpkIcHTr3osTXVUp6JUp+15KpbwP69fMLIXUlLqgXochkCNE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="324054414"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="324054414"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="754397532"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="754397532"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Apr 2023 12:41:54 +0300
Message-Id: <e42cc037881a4c6042948a34bd4a9698f9e8487c.1681465222.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681465222.git.jani.nikula@intel.com>
References: <cover.1681465222.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/10] drm/i915/display: start high level
 display driver file
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The only way to truly clean up intel_display.[ch] is to move stuff out
of them until there's absolutely nothing left.

Start moving the high level display driver entry points, i.e. functions
called from top level driver code only, to a new file, which we'll call
intel_display_driver.c. The intention is that there's no low-level
display code or details here. This is an in-between layer.

Initially, move intel_display_driver_register() and
intel_display_driver_unregister() there.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 53 --------------
 drivers/gpu/drm/i915/display/intel_display.h  |  3 -
 .../drm/i915/display/intel_display_driver.c   | 71 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   | 15 ++++
 drivers/gpu/drm/i915/i915_driver.c            |  1 +
 6 files changed, 88 insertions(+), 56 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_driver.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_driver.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 97b0d4ae221a..91f0c214ef28 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -237,6 +237,7 @@ i915-y += \
 	display/intel_crtc_state_dump.o \
 	display/intel_cursor.o \
 	display/intel_display.o \
+	display/intel_display_driver.o \
 	display/intel_display_power.o \
 	display/intel_display_power_map.o \
 	display/intel_display_power_well.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1efa40691a62..e4fdc0ca1471 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -32,7 +32,6 @@
 #include <linux/slab.h>
 #include <linux/string_helpers.h>
 #include <linux/vga_switcheroo.h>
-#include <acpi/video.h>
 
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_atomic.h>
@@ -70,7 +69,6 @@
 #include "intel_crtc_state_dump.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
-#include "intel_display_debugfs.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
@@ -8835,57 +8833,6 @@ bool intel_modeset_probe_defer(struct pci_dev *pdev)
 	return false;
 }
 
-void intel_display_driver_register(struct drm_i915_private *i915)
-{
-	if (!HAS_DISPLAY(i915))
-		return;
-
-	/* Must be done after probing outputs */
-	intel_opregion_register(i915);
-	intel_acpi_video_register(i915);
-
-	intel_audio_init(i915);
-
-	intel_display_debugfs_register(i915);
-
-	/*
-	 * Some ports require correctly set-up hpd registers for
-	 * detection to work properly (leading to ghost connected
-	 * connector status), e.g. VGA on gm45.  Hence we can only set
-	 * up the initial fbdev config after hpd irqs are fully
-	 * enabled. We do it last so that the async config cannot run
-	 * before the connectors are registered.
-	 */
-	intel_fbdev_initial_config_async(i915);
-
-	/*
-	 * We need to coordinate the hotplugs with the asynchronous
-	 * fbdev configuration, for which we use the
-	 * fbdev->async_cookie.
-	 */
-	drm_kms_helper_poll_init(&i915->drm);
-}
-
-void intel_display_driver_unregister(struct drm_i915_private *i915)
-{
-	if (!HAS_DISPLAY(i915))
-		return;
-
-	intel_fbdev_unregister(i915);
-	intel_audio_deinit(i915);
-
-	/*
-	 * After flushing the fbdev (incl. a late async config which
-	 * will have delayed queuing of a hotplug event), then flush
-	 * the hotplug events.
-	 */
-	drm_kms_helper_poll_fini(&i915->drm);
-	drm_atomic_helper_shutdown(&i915->drm);
-
-	acpi_video_unregister();
-	intel_opregion_unregister(i915);
-}
-
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
 {
 	return DISPLAY_VER(i915) >= 6 && i915_vtd_active(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 287159bdeb0d..e46732d26b7c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -518,9 +518,6 @@ void intel_set_plane_visible(struct intel_crtc_state *crtc_state,
 			     bool visible);
 void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
 
-void intel_display_driver_register(struct drm_i915_private *i915);
-void intel_display_driver_unregister(struct drm_i915_private *i915);
-
 void intel_update_watermarks(struct drm_i915_private *i915);
 
 /* modesetting */
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
new file mode 100644
index 000000000000..d4a1893e9218
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022-2023 Intel Corporation
+ *
+ * High level display driver entry points. This is a layer between top level
+ * driver code and low level display functionality; no low level display code or
+ * details here.
+ */
+
+#include <acpi/video.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_probe_helper.h>
+
+#include "i915_drv.h"
+#include "intel_acpi.h"
+#include "intel_audio.h"
+#include "intel_display_debugfs.h"
+#include "intel_display_driver.h"
+#include "intel_fbdev.h"
+#include "intel_opregion.h"
+
+void intel_display_driver_register(struct drm_i915_private *i915)
+{
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	/* Must be done after probing outputs */
+	intel_opregion_register(i915);
+	intel_acpi_video_register(i915);
+
+	intel_audio_init(i915);
+
+	intel_display_debugfs_register(i915);
+
+	/*
+	 * Some ports require correctly set-up hpd registers for
+	 * detection to work properly (leading to ghost connected
+	 * connector status), e.g. VGA on gm45.  Hence we can only set
+	 * up the initial fbdev config after hpd irqs are fully
+	 * enabled. We do it last so that the async config cannot run
+	 * before the connectors are registered.
+	 */
+	intel_fbdev_initial_config_async(i915);
+
+	/*
+	 * We need to coordinate the hotplugs with the asynchronous
+	 * fbdev configuration, for which we use the
+	 * fbdev->async_cookie.
+	 */
+	drm_kms_helper_poll_init(&i915->drm);
+}
+
+void intel_display_driver_unregister(struct drm_i915_private *i915)
+{
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	intel_fbdev_unregister(i915);
+	intel_audio_deinit(i915);
+
+	/*
+	 * After flushing the fbdev (incl. a late async config which
+	 * will have delayed queuing of a hotplug event), then flush
+	 * the hotplug events.
+	 */
+	drm_kms_helper_poll_fini(&i915->drm);
+	drm_atomic_helper_shutdown(&i915->drm);
+
+	acpi_video_unregister();
+	intel_opregion_unregister(i915);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
new file mode 100644
index 000000000000..4f6deef5a23f
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022-2023 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_DRIVER_H__
+#define __INTEL_DISPLAY_DRIVER_H__
+
+struct drm_i915_private;
+
+void intel_display_driver_register(struct drm_i915_private *i915);
+void intel_display_driver_unregister(struct drm_i915_private *i915);
+
+#endif /* __INTEL_DISPLAY_DRIVER_H__ */
+
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 93fdc40d724f..5ccb24498cbf 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -48,6 +48,7 @@
 #include "display/intel_acpi.h"
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
+#include "display/intel_display_driver.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dmc.h"
 #include "display/intel_dp.h"
-- 
2.39.2

