Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D56A7BB65AE
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Oct 2025 11:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04D410E1E8;
	Fri,  3 Oct 2025 09:21:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Az1fD+tE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C663110E249;
 Fri,  3 Oct 2025 09:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759483278; x=1791019278;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CV18kLOWZ6aGhZ4vi9L0QPUrxTIfM0cmU7/4kuCekcg=;
 b=Az1fD+tEjh0mfiSiQp2qBnR22NVgltFpbAk1UNzPah8Uf/943T0N/OZV
 zEHR2Mk3kqpBoPH5mNbZe/zTXi3Jdfglpwoim/U7BuUzpN/vNZUXJxIF0
 ZWSQkX59kLIgy12aZbYOX8kMBYTx88UQD1jzuHEJXGBzDhggQQZojNctm
 aRFj7Nkf8xwVZrr7fS1B0rDKWscF15DvRVhM3fyU5Au7GliUDbdxrjWPH
 I7kld94GNnvbl354Aac0YUkzxXILAHfLNRSnsIKPCIHcrwklk8Z7o9Ae7
 HW6UkJHz1jKJ+6ktXoWVBtGholLA5UoSFMti48wNLNIS4wHRRp+aUqVH7 w==;
X-CSE-ConnectionGUID: oC3d/7vDSVSv0t+cJ/8lcw==
X-CSE-MsgGUID: /n4g+YvMSbO3xvzOnaB4cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11570"; a="72383045"
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="72383045"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 02:21:17 -0700
X-CSE-ConnectionGUID: 1Ljc6vRnTTe+orUZu/TYLA==
X-CSE-MsgGUID: I7V4XmBOQtOU9vR54KcXIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="179060381"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.94])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 02:21:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	jouni.hogander@intel.com
Subject: [RFC] drm/{i915,xe}/display: pass hooks to display probe
Date: Fri,  3 Oct 2025 12:21:07 +0300
Message-ID: <20251003092107.2892508-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Let's gradually start calling i915 and xe core drivers from display via
function pointers passed at display probe. For starters, just add a
small feature test hook ->has_flat_ccs.

FIXME: "hooks" is a terrible name, both as a parameter and a struct
intel_display member name. It should reflect that we're calling the core
or parent driver. This is a placeholder name for now.

FIXME: Initially, one struct is fine... but once it accumulates a lot of
functions, should it have more indirection? Maybe everything should be
in sub-structs, or the top struct should just be a collection of
pointers to hook structs?

	struct intel_core_hooks {
		const struct intel_rpm_hooks *rpm;
	};

The above would allow having the struct initialization inside the
implementation file, and the functions themselves static. In any case,
it seems best to have just one initialization of the hooks, instead of
one init/register call for each functional area.

The downside is of course having to call the functions like:

	display->hooks->rpm->get(display->drm);

FIXME: It would really be convenient if we could stop using a display
device with mock_gem_device() in mock_gem_device.c. The purpose of the
mock gem device is to run mock *gem* tests. Could we make it happen
without display?

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++++
 .../drm/i915/display/intel_display_device.c   |  5 ++++-
 .../drm/i915/display/intel_display_device.h   |  4 +++-
 drivers/gpu/drm/i915/display/intel_fb.c       |  5 ++---
 .../drm/i915/display/skl_universal_plane.c    |  5 +++--
 drivers/gpu/drm/i915/i915_driver.c            | 17 ++++++++++++++++-
 drivers/gpu/drm/i915/i915_driver.h            |  2 ++
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  4 +++-
 drivers/gpu/drm/xe/display/xe_display.c       | 12 +++++++++++-
 include/drm/intel/display_interface.h         | 19 +++++++++++++++++++
 10 files changed, 67 insertions(+), 10 deletions(-)
 create mode 100644 include/drm/intel/display_interface.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index df4da52cbdb3..424d22725ca8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -39,6 +39,7 @@ struct intel_audio_funcs;
 struct intel_cdclk_funcs;
 struct intel_cdclk_vals;
 struct intel_color_funcs;
+struct intel_core_hooks;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dmc;
@@ -291,6 +292,9 @@ struct intel_display {
 	/* Intel PCH: where the south display engine lives */
 	enum intel_pch pch_type;
 
+	/* Core functions exposed to display */
+	const struct intel_core_hooks *hooks;
+
 	/* Display functions */
 	struct {
 		/* Top level crtc-ish functions */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index f3f1f25b0f38..87aaa1930846 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1647,7 +1647,8 @@ static void display_platforms_or(struct intel_display_platforms *dst,
 	bitmap_or(dst->bitmap, dst->bitmap, src->bitmap, display_platforms_num_bits());
 }
 
-struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
+struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
+						 const struct intel_core_hooks *hooks)
 {
 	struct intel_display *display;
 	const struct intel_display_device_info *info;
@@ -1663,6 +1664,8 @@ struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
 	/* Add drm device backpointer as early as possible. */
 	display->drm = pci_get_drvdata(pdev);
 
+	display->hooks = hooks;
+
 	intel_display_params_copy(&display->params);
 
 	if (has_no_display(pdev)) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 0e062753cf9b..999570d15160 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -12,6 +12,7 @@
 #include "intel_display_limits.h"
 
 struct drm_printer;
+struct intel_core_hooks;
 struct intel_display;
 struct pci_dev;
 
@@ -310,7 +311,8 @@ struct intel_display_device_info {
 
 bool intel_display_device_present(struct intel_display *display);
 bool intel_display_device_enabled(struct intel_display *display);
-struct intel_display *intel_display_device_probe(struct pci_dev *pdev);
+struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
+						 const struct intel_core_hooks *hooks);
 void intel_display_device_remove(struct intel_display *display);
 void intel_display_device_info_runtime_init(struct intel_display *display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 69237dabdae8..dc321df4db28 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -9,6 +9,7 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_gem.h>
 #include <drm/drm_modeset_helper.h>
+#include <drm/intel/display_interface.h>
 
 #include "i915_drv.h"
 #include "i915_utils.h"
@@ -547,8 +548,6 @@ static bool plane_has_modifier(struct intel_display *display,
 			       u8 plane_caps,
 			       const struct intel_modifier_desc *md)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (!IS_DISPLAY_VER(display, md->display_ver.from, md->display_ver.until))
 		return false;
 
@@ -560,7 +559,7 @@ static bool plane_has_modifier(struct intel_display *display,
 	 * where supported.
 	 */
 	if (intel_fb_is_ccs_modifier(md->modifier) &&
-	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
+	    display->hooks->has_flat_ccs(display->drm) != !md->ccs.packed_aux_planes)
 		return false;
 
 	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index e13fb781e7b2..139d20e8accd 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -7,6 +7,7 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/intel/display_interface.h>
 
 #include "pxp/intel_pxp.h"
 #include "i915_drv.h"
@@ -1572,7 +1573,7 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
 	}
 
 	/* FLAT CCS doesn't need to program AUX_DIST */
-	if (!HAS_FLAT_CCS(to_i915(display->drm)) && DISPLAY_VER(display) < 20)
+	if (!display->hooks->has_flat_ccs(display->drm) && DISPLAY_VER(display) < 20)
 		intel_de_write_dsb(display, dsb, PLANE_AUX_DIST(pipe, plane_id),
 				   skl_plane_aux_dist(plane_state, color_plane));
 
@@ -2930,7 +2931,7 @@ skl_universal_plane_create(struct intel_display *display,
 		caps = skl_plane_caps(display, pipe, plane_id);
 
 	/* FIXME: xe has problems with AUX */
-	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(to_i915(display->drm)))
+	if (!IS_ENABLED(I915) && !display->hooks->has_flat_ccs(display->drm))
 		caps &= ~(INTEL_PLANE_CAP_CCS_RC |
 			  INTEL_PLANE_CAP_CCS_RC_CC |
 			  INTEL_PLANE_CAP_CCS_MC);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b46cb54ef5dc..cf042e5d1444 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -46,6 +46,7 @@
 #include <drm/drm_ioctl.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/intel/display_interface.h>
 #include <drm/intel/display_member.h>
 
 #include "display/i9xx_display_sr.h"
@@ -738,6 +739,20 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 			 "DRM_I915_DEBUG_RUNTIME_PM enabled\n");
 }
 
+static bool has_flat_ccs(struct drm_device *drm)
+{
+	return HAS_FLAT_CCS(to_i915(drm));
+}
+
+static const struct intel_core_hooks hooks = {
+	.has_flat_ccs = has_flat_ccs,
+};
+
+const struct intel_core_hooks *i915_driver_hooks(void)
+{
+	return &hooks;
+}
+
 /* Ensure drm and display members are placed properly. */
 INTEL_DISPLAY_MEMBER_STATIC_ASSERT(struct drm_i915_private, drm, display);
 
@@ -762,7 +777,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, match_info);
 
-	display = intel_display_device_probe(pdev);
+	display = intel_display_device_probe(pdev, &hooks);
 	if (IS_ERR(display))
 		return ERR_CAST(display);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.h b/drivers/gpu/drm/i915/i915_driver.h
index 1e95ecb2a163..26e3afb1d892 100644
--- a/drivers/gpu/drm/i915/i915_driver.h
+++ b/drivers/gpu/drm/i915/i915_driver.h
@@ -12,6 +12,7 @@ struct pci_dev;
 struct pci_device_id;
 struct drm_i915_private;
 struct drm_printer;
+struct intel_core_hooks;
 
 #define DRIVER_NAME		"i915"
 #define DRIVER_DESC		"Intel Graphics"
@@ -24,6 +25,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915);
 
 int i915_driver_resume_switcheroo(struct drm_i915_private *i915);
 int i915_driver_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t state);
+const struct intel_core_hooks *i915_driver_hooks(void);
 
 void
 i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index fb8751bd5df0..32bfea4a3cca 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -27,12 +27,14 @@
 #include <linux/iommu.h>
 
 #include <drm/drm_managed.h>
+#include <drm/intel/display_interface.h>
 
 #include "display/intel_display_device.h"
 
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_requests.h"
 #include "gt/mock_engine.h"
+#include "i915_driver.h"
 #include "intel_memory_region.h"
 #include "intel_region_ttm.h"
 
@@ -183,7 +185,7 @@ struct drm_i915_private *mock_gem_device(void)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, &mock_info);
 
-	display = intel_display_device_probe(pdev);
+	display = intel_display_device_probe(pdev, i915_driver_hooks());
 	if (IS_ERR(display))
 		goto err_device;
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 5f4044e63185..644641954125 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -13,6 +13,7 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/intel/display_interface.h>
 #include <drm/intel/display_member.h>
 #include <uapi/drm/xe_drm.h>
 
@@ -515,6 +516,15 @@ static void display_device_remove(struct drm_device *dev, void *arg)
 	intel_display_device_remove(display);
 }
 
+static bool has_flat_ccs(struct drm_device *drm)
+{
+	return xe_device_has_flat_ccs(to_xe_device(drm));
+}
+
+static const struct intel_core_hooks hooks = {
+	.has_flat_ccs = has_flat_ccs,
+};
+
 /**
  * xe_display_probe - probe display and create display struct
  * @xe: XE device instance
@@ -535,7 +545,7 @@ int xe_display_probe(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		goto no_display;
 
-	display = intel_display_device_probe(pdev);
+	display = intel_display_device_probe(pdev, &hooks);
 	if (IS_ERR(display))
 		return PTR_ERR(display);
 
diff --git a/include/drm/intel/display_interface.h b/include/drm/intel/display_interface.h
new file mode 100644
index 000000000000..82e3b6b641f7
--- /dev/null
+++ b/include/drm/intel/display_interface.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation x*/
+
+#ifndef __DISPLAY_INTERFACE_H__
+#define __DISPLAY_INTERFACE_H__
+
+#include <linux/types.h>
+
+struct drm_device;
+
+/**
+ * struct intel_core_hooks - services core provides to display
+ */
+struct intel_core_hooks {
+	/** @has_flat_ccs: does the device support flat CCS */
+	bool (*has_flat_ccs)(struct drm_device *drm);
+};
+
+#endif
-- 
2.47.3

