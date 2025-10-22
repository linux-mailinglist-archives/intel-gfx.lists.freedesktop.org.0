Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 177B0BFB00C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 10:56:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5482110E708;
	Wed, 22 Oct 2025 08:56:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FUZnt0lI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE90110E708;
 Wed, 22 Oct 2025 08:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761123380; x=1792659380;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SBxM9aPyclzvHd3d6qSIqMJvAlthaBSNq1yKij+2s9g=;
 b=FUZnt0lI5in+m8Dbh+Eb+E3ByXhuoENw/MbVENcd8+kTwnPM7P2ZQudi
 oVRHiip4p36VFpMZ1iu2F7VufrgiGCHcCRiJP65j7pMYEeGF16cdiDdZU
 /hCZELDK7MkiknF71r3CZgprpJTYLTqNfBQy/T9PzCZvWfAWaQiEZ3YAE
 w2AzZFZsUl7MDdPq/9PtGIOv7CUxmAOP04EkQWtchm6PGFJs79Ex5jJyf
 hk4F1YkWUuX5pxzvT2hcIZWa4/QzN34Pafpgw0Sk6C87nDvL5zzHJEL3/
 2FyQkdBPPZ821bUPLYxqnJy3AF9fm0s3Nhj/N8AFlzjlmvxwCA7RdsfoW A==;
X-CSE-ConnectionGUID: A+x3Px9yTsihIpX+hISqaA==
X-CSE-MsgGUID: ZSVM9SwnS/aQwQ0Ps7sJIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62473563"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="62473563"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:19 -0700
X-CSE-ConnectionGUID: R4KOXS82SMCovlptK3dSrw==
X-CSE-MsgGUID: DZI5CQ4GRfOz+ICfJTvwKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214461280"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.244.2])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:17 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH 1/6] drm/{i915,
 xe}/display: pass parent interface to display probe
Date: Wed, 22 Oct 2025 11:55:43 +0300
Message-ID: <20251022085548.876150-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251022085548.876150-1-jouni.hogander@intel.com>
References: <20251022085548.876150-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Jani Nikula <jani.nikula@intel.com>

Let's gradually start calling i915 and xe parent, or core, drivers from
display via function pointers passed at display probe.

Going forward, the struct intel_display_parent_interface is expected to
include const pointers to sub-structs by functionality, for example:

struct intel_display_rpm {
	struct ref_tracker *(*get)(struct drm_device *drm);
	/* ... */
};

struct intel_display_parent_interface {
	/* ... */
	const struct intel_display_rpm *rpm;
};

This is a baby step towards not building display as part of both i915
and xe drivers, but rather making it an independent driver interfacing
with the two.

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 +++
 .../drm/i915/display/intel_display_device.c   |  5 +++-
 .../drm/i915/display/intel_display_device.h   |  4 ++-
 drivers/gpu/drm/i915/display/intel_fb.c       |  1 +
 .../drm/i915/display/skl_universal_plane.c    |  1 +
 drivers/gpu/drm/i915/i915_driver.c            | 11 +++++++-
 drivers/gpu/drm/i915/i915_driver.h            |  2 ++
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  4 ++-
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 -
 drivers/gpu/drm/xe/display/xe_display.c       |  6 ++++-
 include/drm/intel/display_parent_interface.h  | 26 +++++++++++++++++++
 11 files changed, 59 insertions(+), 6 deletions(-)
 create mode 100644 include/drm/intel/display_parent_interface.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 32664098b4078..893279be84091 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -41,6 +41,7 @@ struct intel_cdclk_vals;
 struct intel_color_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display_parent_interface;
 struct intel_dmc;
 struct intel_dpll_global_funcs;
 struct intel_dpll_mgr;
@@ -291,6 +292,9 @@ struct intel_display {
 	/* Intel PCH: where the south display engine lives */
 	enum intel_pch pch_type;
 
+	/* Parent, or core, driver functions exposed to display */
+	const struct intel_display_parent_interface *parent;
+
 	/* Display functions */
 	struct {
 		/* Top level crtc-ish functions */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index f3f1f25b0f383..328447a5e5e8c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1647,7 +1647,8 @@ static void display_platforms_or(struct intel_display_platforms *dst,
 	bitmap_or(dst->bitmap, dst->bitmap, src->bitmap, display_platforms_num_bits());
 }
 
-struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
+struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
+						 const struct intel_display_parent_interface *parent)
 {
 	struct intel_display *display;
 	const struct intel_display_device_info *info;
@@ -1663,6 +1664,8 @@ struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
 	/* Add drm device backpointer as early as possible. */
 	display->drm = pci_get_drvdata(pdev);
 
+	display->parent = parent;
+
 	intel_display_params_copy(&display->params);
 
 	if (has_no_display(pdev)) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 8fdb8a0a42821..a009082e3107b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -13,6 +13,7 @@
 
 struct drm_printer;
 struct intel_display;
+struct intel_display_parent_interface;
 struct pci_dev;
 
 /*
@@ -312,7 +313,8 @@ struct intel_display_device_info {
 
 bool intel_display_device_present(struct intel_display *display);
 bool intel_display_device_enabled(struct intel_display *display);
-struct intel_display *intel_display_device_probe(struct pci_dev *pdev);
+struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
+						 const struct intel_display_parent_interface *parent);
 void intel_display_device_remove(struct intel_display *display);
 void intel_display_device_info_runtime_init(struct intel_display *display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 3958628c73e97..3e4183a905a90 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -9,6 +9,7 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_gem.h>
 #include <drm/drm_modeset_helper.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "i915_drv.h"
 #include "i915_utils.h"
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 0319174adf953..e6a6b4a3879c6 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -7,6 +7,7 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "pxp/intel_pxp.h"
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index e19a08893b998..b295326eb4331 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -47,6 +47,7 @@
 #include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/intel/display_member.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "display/i9xx_display_sr.h"
 #include "display/intel_bw.h"
@@ -738,6 +739,14 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 			 "DRM_I915_DEBUG_RUNTIME_PM enabled\n");
 }
 
+static const struct intel_display_parent_interface parent = {
+};
+
+const struct intel_display_parent_interface *i915_driver_parent_interface(void)
+{
+	return &parent;
+}
+
 /* Ensure drm and display members are placed properly. */
 INTEL_DISPLAY_MEMBER_STATIC_ASSERT(struct drm_i915_private, drm, display);
 
@@ -762,7 +771,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, match_info);
 
-	display = intel_display_device_probe(pdev);
+	display = intel_display_device_probe(pdev, &parent);
 	if (IS_ERR(display))
 		return ERR_CAST(display);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.h b/drivers/gpu/drm/i915/i915_driver.h
index 1e95ecb2a163f..9551519ab4297 100644
--- a/drivers/gpu/drm/i915/i915_driver.h
+++ b/drivers/gpu/drm/i915/i915_driver.h
@@ -12,6 +12,7 @@ struct pci_dev;
 struct pci_device_id;
 struct drm_i915_private;
 struct drm_printer;
+struct intel_display_parent_interface;
 
 #define DRIVER_NAME		"i915"
 #define DRIVER_DESC		"Intel Graphics"
@@ -24,6 +25,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915);
 
 int i915_driver_resume_switcheroo(struct drm_i915_private *i915);
 int i915_driver_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t state);
+const struct intel_display_parent_interface *i915_driver_parent_interface(void);
 
 void
 i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index fb8751bd5df0a..b59626c4994cb 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -33,6 +33,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_requests.h"
 #include "gt/mock_engine.h"
+#include "i915_driver.h"
 #include "intel_memory_region.h"
 #include "intel_region_ttm.h"
 
@@ -183,7 +184,8 @@ struct drm_i915_private *mock_gem_device(void)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, &mock_info);
 
-	display = intel_display_device_probe(pdev);
+	/* FIXME: Can we run selftests using a mock device without display? */
+	display = intel_display_device_probe(pdev, i915_driver_parent_interface());
 	if (IS_ERR(display))
 		goto err_device;
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 7c657ea98a441..3e79a74ff7def 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -12,7 +12,6 @@
 
 #include <drm/drm_drv.h>
 
-#include "xe_device.h" /* for xe_device_has_flat_ccs() */
 #include "xe_device_types.h"
 
 static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 5a02754d0610e..0e38c96eb6def 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -14,6 +14,7 @@
 #include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/intel/display_member.h>
+#include <drm/intel/display_parent_interface.h>
 #include <uapi/drm/xe_drm.h>
 
 #include "soc/intel_dram.h"
@@ -514,6 +515,9 @@ static void display_device_remove(struct drm_device *dev, void *arg)
 	intel_display_device_remove(display);
 }
 
+static const struct intel_display_parent_interface parent = {
+};
+
 /**
  * xe_display_probe - probe display and create display struct
  * @xe: XE device instance
@@ -534,7 +538,7 @@ int xe_display_probe(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		goto no_display;
 
-	display = intel_display_device_probe(pdev);
+	display = intel_display_device_probe(pdev, &parent);
 	if (IS_ERR(display))
 		return PTR_ERR(display);
 
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
new file mode 100644
index 0000000000000..28c976815327a
--- /dev/null
+++ b/include/drm/intel/display_parent_interface.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation x*/
+
+#ifndef __DISPLAY_PARENT_INTERFACE_H__
+#define __DISPLAY_PARENT_INTERFACE_H__
+
+#include <linux/types.h>
+
+struct drm_device;
+
+/**
+ * struct intel_display_parent_interface - services parent driver provides to display
+ *
+ * The parent, or core, driver provides a pointer to this structure to display
+ * driver when calling intel_display_device_probe(). The display driver uses it
+ * to access services provided by the parent driver. The structure may contain
+ * sub-struct pointers to group function pointers by functionality.
+ *
+ * All function and sub-struct pointers must be initialized and callable unless
+ * explicitly marked as "optional" below. The display driver will only NULL
+ * check the optional pointers.
+ */
+struct intel_display_parent_interface {
+};
+
+#endif
-- 
2.43.0

