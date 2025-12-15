Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58807CBEA48
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:28:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D72B310E5EE;
	Mon, 15 Dec 2025 15:28:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZGJSerqg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8EE210E5EC;
 Mon, 15 Dec 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812534; x=1797348534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9dIc/Wh3zdOHYryw3oWvBBEgNxEFxcXYL0HrwqUd5kc=;
 b=ZGJSerqgZ3+qYM7dp3/zi8f7RSJP2YAnb/mnFTD3Z4LmW4FAMvMUh4DU
 BEZQ8Y+twcSjlmXtATXeNkbtl9mNGSyUHG40rSjZ8NoSN7WVRxo8B66Op
 r/cNViUt47k9uVlOuBNh4tUKOMFt1ouLuaDX+5jyCNEUNqc7b/DMzC7ME
 6+IKvMAYLYtu2fYx5RrR0EP1n7oKA/z8acMxOCehH1bQSssYaq4M28jwQ
 Ey1DmgmkhAa2PuXPxI9kjWUQsIcSnc2g6TYQ7gXYyuWW5HQ0qG3oqiIZq
 v6ZVHaFaQmQV9Dr9uvcoqMiSlOFj81E9pGtCeJDLot2w3I4dDzonK0sIe w==;
X-CSE-ConnectionGUID: eA7aoWWcTNmISxalNpz7qg==
X-CSE-MsgGUID: /U/X5Y5oR/iJKyHJ+Hshqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="78354357"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="78354357"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:28:54 -0800
X-CSE-ConnectionGUID: bHol9s/oR1ynAIQVcchi0g==
X-CSE-MsgGUID: +Yz+7825Sfi7bLSGYP83ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="201931641"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:28:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/15] drm/{i915,
 xe}: move initial plane calls to parent interface
Date: Mon, 15 Dec 2025 17:28:18 +0200
Message-ID: <ab91c891677fe2bb83bf5aafa5ee984b2442b84d.1765812266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765812266.git.jani.nikula@intel.com>
References: <cover.1765812266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Add the initial plane handling functions to the display parent
interface. Add the call wrappers in dedicated intel_initial_plane.c
instead of intel_parent.c, as we'll be refactoring the calls heavily.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../drm/i915/display/intel_initial_plane.c    | 20 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_driver.c            |  2 ++
 drivers/gpu/drm/i915/i915_initial_plane.c     | 16 +++++++++++----
 drivers/gpu/drm/i915/i915_initial_plane.h     |  9 +++++++++
 drivers/gpu/drm/xe/Makefile                   |  1 +
 drivers/gpu/drm/xe/display/xe_display.c       |  2 ++
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 17 ++++++++++++----
 drivers/gpu/drm/xe/display/xe_initial_plane.h |  9 +++++++++
 include/drm/intel/display_parent_interface.h  |  9 +++++++++
 10 files changed, 78 insertions(+), 8 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_initial_plane.c
 create mode 100644 drivers/gpu/drm/i915/i915_initial_plane.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_initial_plane.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 8d2ca226c86f..6f6b8e0ba647 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -288,6 +288,7 @@ i915-y += \
 	display/intel_hotplug.o \
 	display/intel_hotplug_irq.o \
 	display/intel_hti.o \
+	display/intel_initial_plane.o \
 	display/intel_link_bw.o \
 	display/intel_load_detect.o \
 	display/intel_lpe_audio.o \
diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
new file mode 100644
index 000000000000..c68d7555aee5
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#include <drm/intel/display_parent_interface.h>
+
+#include "intel_display_core.h"
+#include "intel_display_types.h"
+#include "intel_initial_plane.h"
+
+void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	display->parent->initial_plane->vblank_wait(&crtc->base);
+}
+
+void intel_initial_plane_config(struct intel_display *display)
+{
+	display->parent->initial_plane->config(display->drm);
+}
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 9bc5ef988be7..a6057c7cdd5c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -98,6 +98,7 @@
 #include "i915_gmch.h"
 #include "i915_hdcp_gsc.h"
 #include "i915_hwmon.h"
+#include "i915_initial_plane.h"
 #include "i915_ioc32.h"
 #include "i915_ioctl.h"
 #include "i915_irq.h"
@@ -769,6 +770,7 @@ static bool vgpu_active(struct drm_device *drm)
 
 static const struct intel_display_parent_interface parent = {
 	.hdcp = &i915_display_hdcp_interface,
+	.initial_plane = &i915_display_initial_plane_interface,
 	.irq = &i915_display_irq_interface,
 	.panic = &i915_display_panic_interface,
 	.rpm = &i915_display_rpm_interface,
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index b7f115708c32..f26563eed9ba 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -4,6 +4,7 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "display/intel_crtc.h"
 #include "display/intel_display.h"
@@ -17,10 +18,11 @@
 #include "gem/i915_gem_region.h"
 
 #include "i915_drv.h"
+#include "i915_initial_plane.h"
 
-void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
+static void i915_initial_plane_vblank_wait(struct drm_crtc *crtc)
 {
-	intel_crtc_wait_for_next_vblank(crtc);
+	intel_crtc_wait_for_next_vblank(to_intel_crtc(crtc));
 }
 
 static bool
@@ -406,8 +408,9 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
 		i915_vma_put(plane_config->vma);
 }
 
-void intel_initial_plane_config(struct intel_display *display)
+static void i915_initial_plane_config(struct drm_device *drm)
 {
+	struct intel_display *display = to_intel_display(drm);
 	struct intel_initial_plane_config plane_configs[I915_MAX_PIPES] = {};
 	struct intel_crtc *crtc;
 
@@ -436,8 +439,13 @@ void intel_initial_plane_config(struct intel_display *display)
 		intel_find_initial_plane_obj(crtc, plane_configs);
 
 		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_config))
-			intel_initial_plane_vblank_wait(crtc);
+			i915_initial_plane_vblank_wait(&crtc->base);
 
 		plane_config_fini(plane_config);
 	}
 }
+
+const struct intel_display_initial_plane_interface i915_display_initial_plane_interface = {
+	.vblank_wait = i915_initial_plane_vblank_wait,
+	.config = i915_initial_plane_config,
+};
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.h b/drivers/gpu/drm/i915/i915_initial_plane.h
new file mode 100644
index 000000000000..99ba462659a6
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_initial_plane.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_INITIAL_PLANE_H__
+#define __I915_INITIAL_PLANE_H__
+
+extern const struct intel_display_initial_plane_interface i915_display_initial_plane_interface;
+
+#endif
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 84fd9f88f63d..89dc48cd73e2 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -294,6 +294,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_hotplug.o \
 	i915-display/intel_hotplug_irq.o \
 	i915-display/intel_hti.o \
+	i915-display/intel_initial_plane.o \
 	i915-display/intel_link_bw.o \
 	i915-display/intel_lspcon.o \
 	i915-display/intel_lt_phy.o \
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index eda65a05f601..f8a831b5dc7d 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -37,6 +37,7 @@
 #include "skl_watermark.h"
 #include "xe_display_rpm.h"
 #include "xe_hdcp_gsc.h"
+#include "xe_initial_plane.h"
 #include "xe_module.h"
 #include "xe_panic.h"
 #include "xe_stolen.h"
@@ -538,6 +539,7 @@ static const struct intel_display_irq_interface xe_display_irq_interface = {
 
 static const struct intel_display_parent_interface parent = {
 	.hdcp = &xe_display_hdcp_interface,
+	.initial_plane = &xe_display_initial_plane_interface,
 	.irq = &xe_display_irq_interface,
 	.panic = &xe_display_panic_interface,
 	.rpm = &xe_display_rpm_interface,
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 9d5760e56c4c..dd69f1c65903 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -6,6 +6,8 @@
 /* for ioread64 */
 #include <linux/io-64-nonatomic-lo-hi.h>
 
+#include <drm/intel/display_parent_interface.h>
+
 #include "regs/xe_gtt_defs.h"
 #include "xe_ggtt.h"
 #include "xe_mmio.h"
@@ -27,9 +29,10 @@
 
 #include <generated/xe_device_wa_oob.h>
 
-void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
+/* Early xe has no irq */
+static void xe_initial_plane_vblank_wait(struct drm_crtc *_crtc)
 {
-	/* Early xe has no irq */
+	struct intel_crtc *crtc = to_intel_crtc(_crtc);
 	struct xe_device *xe = to_xe_device(crtc->base.dev);
 	struct xe_reg pipe_frmtmstmp = XE_REG(i915_mmio_reg_offset(PIPE_FRMTMSTMP(crtc->pipe)));
 	u32 timestamp;
@@ -284,8 +287,9 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
 	}
 }
 
-void intel_initial_plane_config(struct intel_display *display)
+static void xe_initial_plane_config(struct drm_device *drm)
 {
+	struct intel_display *display = to_intel_display(drm);
 	struct intel_initial_plane_config plane_configs[I915_MAX_PIPES] = {};
 	struct intel_crtc *crtc;
 
@@ -314,8 +318,13 @@ void intel_initial_plane_config(struct intel_display *display)
 		intel_find_initial_plane_obj(crtc, plane_configs);
 
 		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_config))
-			intel_initial_plane_vblank_wait(crtc);
+			xe_initial_plane_vblank_wait(&crtc->base);
 
 		plane_config_fini(plane_config);
 	}
 }
+
+const struct intel_display_initial_plane_interface xe_display_initial_plane_interface = {
+	.vblank_wait = xe_initial_plane_vblank_wait,
+	.config = xe_initial_plane_config,
+};
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.h b/drivers/gpu/drm/xe/display/xe_initial_plane.h
new file mode 100644
index 000000000000..399d15f14441
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __XE_INITIAL_PLANE_H__
+#define __XE_INITIAL_PLANE_H__
+
+extern const struct intel_display_initial_plane_interface xe_display_initial_plane_interface;
+
+#endif
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 55d4df714645..76341b4b03f7 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -7,6 +7,7 @@
 #include <linux/types.h>
 
 struct dma_fence;
+struct drm_crtc;
 struct drm_device;
 struct drm_scanout_buffer;
 struct intel_hdcp_gsc_context;
@@ -25,6 +26,11 @@ struct intel_display_hdcp_interface {
 	void (*gsc_context_free)(struct intel_hdcp_gsc_context *gsc_context);
 };
 
+struct intel_display_initial_plane_interface {
+	void (*vblank_wait)(struct drm_crtc *crtc);
+	void (*config)(struct drm_device *drm);
+};
+
 struct intel_display_irq_interface {
 	bool (*enabled)(struct drm_device *drm);
 	void (*synchronize)(struct drm_device *drm);
@@ -90,6 +96,9 @@ struct intel_display_parent_interface {
 	/** @hdcp: HDCP GSC interface */
 	const struct intel_display_hdcp_interface *hdcp;
 
+	/** @initial_plane: Initial plane interface */
+	const struct intel_display_initial_plane_interface *initial_plane;
+
 	/** @irq: IRQ interface */
 	const struct intel_display_irq_interface *irq;
 
-- 
2.47.3

