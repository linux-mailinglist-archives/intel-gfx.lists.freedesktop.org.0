Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F025ACB6C4F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 18:37:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A42010E83A;
	Thu, 11 Dec 2025 17:37:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j5vEIkmd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD3C110E83A;
 Thu, 11 Dec 2025 17:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765474647; x=1797010647;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tRafWrxwzpAFSMsdwl6d8MRUMlVQnHG1i3XcwHcLdRg=;
 b=j5vEIkmd0R5xKx9V95AKgi5dtR7j01twtta2d5VUbNOApIVn1JAeG+3s
 YLIbsWwevSb+kGNFtC1m9izwfaOS7zjIgp5cfWsnwbrBGxXdfMi7ci9MS
 +if10/P46XrDzeMIr5KVxzN+spsIa1YUYCBJbiuC7dEj5889trqOYDj93
 kPtzyeHCUoM6j15VXELIbGtOf3mw7GKAdHvqmjELPxqgkzdH3uCszJTVn
 1zwTK3nS9Q2HSyhvp2r7dzIA8hOpmQ6k9TAqkoWCVkuvfZkND5kgF2nI/
 C5BLCyQcUnQaPTiXuzoy45S9M1dgeIyvxoAzRpXnoMUldn9y5FORLbMHr A==;
X-CSE-ConnectionGUID: 6k7I+4IeRzSArwh5jKYwww==
X-CSE-MsgGUID: 6QAJ1Qb/S5Cj8/AWnhWBVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="71087908"
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="71087908"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 09:37:27 -0800
X-CSE-ConnectionGUID: SACXxS8JTaqwGRhOJS+A7g==
X-CSE-MsgGUID: 2GlgUtkgRkK3uDPS0DCANg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="196756947"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 09:37:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/{i915,
 xe}/panic: move panic handling to parent interface
Date: Thu, 11 Dec 2025 19:37:12 +0200
Message-ID: <e27eca5424479e8936b786018d0af19a34f839f6.1765474612.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765474612.git.jani.nikula@intel.com>
References: <cover.1765474612.git.jani.nikula@intel.com>
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

Move the panic handling to the display parent interface, making display
more independent of i915 and xe driver implementations.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c        |  1 -
 drivers/gpu/drm/i915/display/intel_fb.c          |  3 +--
 drivers/gpu/drm/i915/display/intel_panic.h       | 14 --------------
 drivers/gpu/drm/i915/display/intel_parent.c      | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_parent.h      |  6 ++++++
 drivers/gpu/drm/i915/display/intel_plane.c       |  5 ++---
 .../gpu/drm/i915/display/skl_universal_plane.c   |  1 -
 drivers/gpu/drm/i915/i915_driver.c               |  2 ++
 drivers/gpu/drm/i915/i915_panic.c                | 16 ++++++++++++----
 drivers/gpu/drm/i915/i915_panic.h                |  9 +++++++++
 drivers/gpu/drm/xe/display/xe_display.c          |  2 ++
 drivers/gpu/drm/xe/display/xe_panic.c            | 16 +++++++++-------
 drivers/gpu/drm/xe/display/xe_panic.h            |  9 +++++++++
 include/drm/intel/display_parent_interface.h     | 11 +++++++++++
 14 files changed, 78 insertions(+), 32 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_panic.h
 create mode 100644 drivers/gpu/drm/i915/i915_panic.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_panic.h

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 45730ae05591..b1fecf178906 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -22,7 +22,6 @@
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
-#include "intel_panic.h"
 #include "intel_plane.h"
 #include "intel_sprite.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 5b8e02ca2faf..b9bd9b6dfe94 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -20,7 +20,6 @@
 #include "intel_fb.h"
 #include "intel_fb_bo.h"
 #include "intel_frontbuffer.h"
-#include "intel_panic.h"
 #include "intel_parent.h"
 #include "intel_plane.h"
 
@@ -2217,7 +2216,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	int ret;
 	int i;
 
-	intel_fb->panic = intel_panic_alloc();
+	intel_fb->panic = intel_parent_panic_alloc(display);
 	if (!intel_fb->panic)
 		return -ENOMEM;
 
diff --git a/drivers/gpu/drm/i915/display/intel_panic.h b/drivers/gpu/drm/i915/display/intel_panic.h
deleted file mode 100644
index afb472e924aa..000000000000
--- a/drivers/gpu/drm/i915/display/intel_panic.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/* Copyright © 2025 Intel Corporation */
-
-#ifndef __INTEL_PANIC_H__
-#define __INTEL_PANIC_H__
-
-struct drm_scanout_buffer;
-struct intel_panic;
-
-struct intel_panic *intel_panic_alloc(void);
-int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb);
-void intel_panic_finish(struct intel_panic *panic);
-
-#endif /* __INTEL_PANIC_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 1d7bee7d2ccd..d1c2194767e7 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -47,6 +47,21 @@ void intel_parent_hdcp_gsc_context_free(struct intel_display *display,
 	display->parent->hdcp->gsc_context_free(gsc_context);
 }
 
+struct intel_panic *intel_parent_panic_alloc(struct intel_display *display)
+{
+	return display->parent->panic->alloc();
+}
+
+int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic, struct drm_scanout_buffer *sb)
+{
+	return display->parent->panic->setup(panic, sb);
+}
+
+void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic)
+{
+	display->parent->panic->finish(panic);
+}
+
 bool intel_parent_irq_enabled(struct intel_display *display)
 {
 	return display->parent->irq->enabled(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 1bb584d850e5..8cd811d14fb1 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -7,8 +7,10 @@
 #include <linux/types.h>
 
 struct dma_fence;
+struct drm_scanout_buffer;
 struct intel_display;
 struct intel_hdcp_gsc_context;
+struct intel_panic;
 struct intel_stolen_node;
 
 ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
@@ -23,6 +25,10 @@ void intel_parent_hdcp_gsc_context_free(struct intel_display *display,
 bool intel_parent_irq_enabled(struct intel_display *display);
 void intel_parent_irq_synchronize(struct intel_display *display);
 
+struct intel_panic *intel_parent_panic_alloc(struct intel_display *display);
+int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic, struct drm_scanout_buffer *sb);
+void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic);
+
 bool intel_parent_rps_available(struct intel_display *display);
 void intel_parent_rps_boost_if_not_started(struct intel_display *display, struct dma_fence *fence);
 void intel_parent_rps_mark_interactive(struct intel_display *display, bool interactive);
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index ca9449589161..3dc2ed52147f 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -55,7 +55,6 @@
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_fbdev.h"
-#include "intel_panic.h"
 #include "intel_parent.h"
 #include "intel_plane.h"
 #include "intel_psr.h"
@@ -1344,7 +1343,7 @@ static void intel_panic_flush(struct drm_plane *_plane)
 	const struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
 	const struct intel_framebuffer *fb = to_intel_framebuffer(plane_state->hw.fb);
 
-	intel_panic_finish(fb->panic);
+	intel_parent_panic_finish(display, fb->panic);
 
 	if (crtc_state->enable_psr2_sel_fetch) {
 		/* Force a full update for psr2 */
@@ -1425,7 +1424,7 @@ static int intel_get_scanout_buffer(struct drm_plane *plane,
 				return -EOPNOTSUPP;
 		}
 		sb->private = fb;
-		ret = intel_panic_setup(fb->panic, sb);
+		ret = intel_parent_panic_setup(display, fb->panic, sb);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 40148d225410..b3d41705448a 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -21,7 +21,6 @@
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
-#include "intel_panic.h"
 #include "intel_parent.h"
 #include "intel_plane.h"
 #include "intel_psr.h"
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 0300a1df8bd2..a341e2d46551 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -102,6 +102,7 @@
 #include "i915_ioctl.h"
 #include "i915_irq.h"
 #include "i915_memcpy.h"
+#include "i915_panic.h"
 #include "i915_perf.h"
 #include "i915_query.h"
 #include "i915_reg.h"
@@ -768,6 +769,7 @@ static bool has_auxccs(struct drm_device *drm)
 
 static const struct intel_display_parent_interface parent = {
 	.hdcp = &i915_display_hdcp_interface,
+	.panic = &i915_display_panic_interface,
 	.rpm = &i915_display_rpm_interface,
 	.irq = &i915_display_irq_interface,
 	.rps = &i915_display_rps_interface,
diff --git a/drivers/gpu/drm/i915/i915_panic.c b/drivers/gpu/drm/i915/i915_panic.c
index 028ff83b2519..728be077e8e8 100644
--- a/drivers/gpu/drm/i915/i915_panic.c
+++ b/drivers/gpu/drm/i915/i915_panic.c
@@ -2,18 +2,20 @@
 /* Copyright © 2025 Intel Corporation */
 
 #include <drm/drm_panic.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "display/intel_display_types.h"
 #include "display/intel_fb.h"
-#include "display/intel_panic.h"
 #include "gem/i915_gem_object.h"
 
-struct intel_panic *intel_panic_alloc(void)
+#include "i915_panic.h"
+
+static struct intel_panic *intel_panic_alloc(void)
 {
 	return i915_gem_object_alloc_panic();
 }
 
-int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
+static int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
 {
 	struct intel_framebuffer *fb = sb->private;
 	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
@@ -21,7 +23,13 @@ int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
 	return i915_gem_object_panic_setup(panic, sb, obj, fb->panic_tiling);
 }
 
-void intel_panic_finish(struct intel_panic *panic)
+static void intel_panic_finish(struct intel_panic *panic)
 {
 	return i915_gem_object_panic_finish(panic);
 }
+
+const struct intel_display_panic_interface i915_display_panic_interface = {
+	.alloc = intel_panic_alloc,
+	.setup = intel_panic_setup,
+	.finish = intel_panic_finish,
+};
diff --git a/drivers/gpu/drm/i915/i915_panic.h b/drivers/gpu/drm/i915/i915_panic.h
new file mode 100644
index 000000000000..743d8c861c42
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_panic.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_PANIC_H__
+#define __I915_PANIC_H__
+
+extern const struct intel_display_panic_interface i915_display_panic_interface;
+
+#endif /* __I915_PANIC_H__ */
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 9fb5c2f3ddd8..56796cedbd06 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -38,6 +38,7 @@
 #include "xe_display_rpm.h"
 #include "xe_hdcp_gsc.h"
 #include "xe_module.h"
+#include "xe_panic.h"
 #include "xe_stolen.h"
 
 /* Ensure drm and display members are placed properly. */
@@ -537,6 +538,7 @@ static const struct intel_display_irq_interface xe_display_irq_interface = {
 
 static const struct intel_display_parent_interface parent = {
 	.hdcp = &xe_display_hdcp_interface,
+	.panic = &xe_display_panic_interface,
 	.rpm = &xe_display_rpm_interface,
 	.irq = &xe_display_irq_interface,
 	.stolen = &xe_display_stolen_interface,
diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
index df663286092a..e078494dc8ba 100644
--- a/drivers/gpu/drm/xe/display/xe_panic.c
+++ b/drivers/gpu/drm/xe/display/xe_panic.c
@@ -3,11 +3,12 @@
 
 #include <drm/drm_cache.h>
 #include <drm/drm_panic.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "intel_display_types.h"
 #include "intel_fb.h"
-#include "intel_panic.h"
 #include "xe_bo.h"
+#include "xe_panic.h"
 #include "xe_res_cursor.h"
 
 struct intel_panic {
@@ -74,7 +75,7 @@ static void xe_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int
 		iosys_map_wr(&panic->vmap, offset, u32, color);
 }
 
-struct intel_panic *intel_panic_alloc(void)
+static struct intel_panic *xe_panic_alloc(void)
 {
 	struct intel_panic *panic;
 
@@ -83,7 +84,7 @@ struct intel_panic *intel_panic_alloc(void)
 	return panic;
 }
 
-int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
+static int xe_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
 {
 	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
 	struct xe_bo *bo = gem_to_xe_bo(intel_fb_bo(&fb->base));
@@ -96,7 +97,8 @@ int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
 	return 0;
 }
 
-void intel_panic_finish(struct intel_panic *panic)
-{
-	xe_panic_kunmap(panic);
-}
+const struct intel_display_panic_interface xe_display_panic_interface = {
+	.alloc = xe_panic_alloc,
+	.setup = xe_panic_setup,
+	.finish = xe_panic_kunmap,
+};
diff --git a/drivers/gpu/drm/xe/display/xe_panic.h b/drivers/gpu/drm/xe/display/xe_panic.h
new file mode 100644
index 000000000000..3054b511011b
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_panic.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __XE_PANIC_H__
+#define __XE_PANIC_H__
+
+extern const struct intel_display_panic_interface xe_display_panic_interface;
+
+#endif
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 9733c508ad4c..477ee9e735f9 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -8,7 +8,9 @@
 
 struct dma_fence;
 struct drm_device;
+struct drm_scanout_buffer;
 struct intel_hdcp_gsc_context;
+struct intel_panic;
 struct intel_stolen_node;
 struct ref_tracker;
 
@@ -42,6 +44,12 @@ struct intel_display_irq_interface {
 	void (*synchronize)(struct drm_device *drm);
 };
 
+struct intel_display_panic_interface {
+	struct intel_panic *(*alloc)(void);
+	int (*setup)(struct intel_panic *panic, struct drm_scanout_buffer *sb);
+	void (*finish)(struct intel_panic *panic);
+};
+
 struct intel_display_rps_interface {
 	void (*boost_if_not_started)(struct dma_fence *fence);
 	void (*mark_interactive)(struct drm_device *drm, bool interactive);
@@ -86,6 +94,9 @@ struct intel_display_parent_interface {
 	/** @irq: IRQ interface */
 	const struct intel_display_irq_interface *irq;
 
+	/** @panic: Panic interface */
+	const struct intel_display_panic_interface *panic;
+
 	/** @rpm: RPS interface. Optional. */
 	const struct intel_display_rps_interface *rps;
 
-- 
2.47.3

