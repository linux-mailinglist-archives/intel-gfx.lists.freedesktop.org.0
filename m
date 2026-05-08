Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AK4GD4D0/WlxlAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:34:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C407A4F7C5A
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DA4810F4F2;
	Fri,  8 May 2026 14:34:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IJSEfRIV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C9910F4F5;
 Fri,  8 May 2026 14:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778250876; x=1809786876;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+wH7UK7mW46ci7VOyk+tfjwzOdZP8MKi9in0VumOCgI=;
 b=IJSEfRIV0X4aEVd5st3HPNExWmS+V2MZ5ydi1HWJtX6gJR781JWyE6N1
 +MvjTtROTGXmMKK9eg8LhsnUqIZMP/uLf3NEeFN0J+tAP2UFP+Uw7o57g
 auZdi2yTJ5S2QQvaZ6QH0e4n0o2o+4VsCkDiAKavO1yPLECBVmmK+J33S
 +Van1+36i5rwVfRjn8Xe0wtzCwJQ4u5mucFP6ZzMqIZm3boHfX255I8as
 NYMRwOYL4JC2xXsGx343DFgq6HHMcWRC3+LgQja0LVDIRa/i4dN4+GnvX
 CoR0EC/nB3Jubc9Ya1MeLoQV1qvuiQrfFjDu+Tm4L/SBMo77T7IwA+xkj w==;
X-CSE-ConnectionGUID: BjMl+/blSXm7lt6crqoKNw==
X-CSE-MsgGUID: iOagniYnRba86cf7PRUo2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="89808854"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="89808854"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:34:36 -0700
X-CSE-ConnectionGUID: zgiv4rvuSDOi62i7Yg42aQ==
X-CSE-MsgGUID: 8Hloxt73TQucFa/k8W14Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="237024050"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:34:34 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 01/16] drm/i915: Introduce intel_parent_fb_pin_get_map()
Date: Fri,  8 May 2026 17:34:11 +0300
Message-ID: <20260508143426.26504-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260508143426.26504-1-ville.syrjala@linux.intel.com>
References: <20260508143426.26504-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: C407A4F7C5A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Introduce the "fb_pin" parent interface, as the first trivial step
move the *_get_map() stuff there.

The whole "fb_pin" as an interface might not really make sense,
and perhaps this (and other stuff) should just be collected into
some kind of "bo" interface. But let's go with "fb_pin" for now
to match where things are implemented, and possibly restructure
it later.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.h  | 1 -
 drivers/gpu/drm/i915/display/intel_fbdev.c   | 7 +++++--
 drivers/gpu/drm/i915/display/intel_fbdev.h   | 4 ++--
 drivers/gpu/drm/i915/display/intel_parent.c  | 7 +++++++
 drivers/gpu/drm/i915/display/intel_parent.h  | 5 +++++
 drivers/gpu/drm/i915/display/intel_plane.c   | 4 ++--
 drivers/gpu/drm/i915/i915_driver.c           | 2 ++
 drivers/gpu/drm/i915/i915_fb_pin.c           | 8 +++++++-
 drivers/gpu/drm/i915/i915_fb_pin.h           | 9 +++++++++
 drivers/gpu/drm/xe/display/xe_display.c      | 2 ++
 drivers/gpu/drm/xe/display/xe_fb_pin.c       | 8 +++++++-
 drivers/gpu/drm/xe/display/xe_fb_pin.h       | 9 +++++++++
 include/drm/intel/display_parent_interface.h | 8 ++++++++
 13 files changed, 65 insertions(+), 9 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_fb_pin.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_fb_pin.h

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index 5825503c38ea..805e23067004 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -35,6 +35,5 @@ void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id);
 int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 		       const struct intel_plane_state *old_plane_state);
 void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
-void intel_fb_get_map(struct i915_vma *vma, struct iosys_map *map);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 9ab0ac49abb7..ce4082da30e8 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -55,6 +55,7 @@
 #include "intel_fb_pin.h"
 #include "intel_fbdev.h"
 #include "intel_frontbuffer.h"
+#include "intel_parent.h"
 #include "intel_plane.h"
 
 struct intel_fbdev {
@@ -563,7 +564,9 @@ struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev)
 	return fbdev ? fbdev->vma : NULL;
 }
 
-void intel_fbdev_get_map(struct intel_fbdev *fbdev, struct iosys_map *map)
+void intel_fbdev_get_map(struct intel_display *display, struct iosys_map *map)
 {
-	intel_fb_get_map(fbdev->vma, map);
+	struct intel_fbdev *fbdev = display->fbdev.fbdev;
+
+	intel_parent_fb_pin_get_map(display, fbdev->vma, map);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
index 150cc5f45bb3..edaf5d16a456 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
@@ -23,7 +23,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 void intel_fbdev_setup(struct intel_display *display);
 struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev);
 struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev);
-void intel_fbdev_get_map(struct intel_fbdev *fbdev, struct iosys_map *map);
+void intel_fbdev_get_map(struct intel_display *display, struct iosys_map *map);
 #else
 #define INTEL_FBDEV_DRIVER_OPS \
 	.fbdev_probe = NULL
@@ -40,7 +40,7 @@ static inline struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev
 	return NULL;
 }
 
-static inline void intel_fbdev_get_map(struct intel_fbdev *fbdev, struct iosys_map *map)
+static inline void intel_fbdev_get_map(struct intel_display *display, struct iosys_map *map)
 {
 }
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 67b21a42d354..070cc60f49b3 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -52,6 +52,13 @@ void intel_parent_dpt_resume(struct intel_display *display, struct intel_dpt *dp
 		display->parent->dpt->resume(dpt);
 }
 
+/* fb_pin */
+void intel_parent_fb_pin_get_map(struct intel_display *display,
+				 struct i915_vma *vma, struct iosys_map *map)
+{
+	return display->parent->fb_pin->get_map(vma, map);
+}
+
 /* frontbuffer */
 struct intel_frontbuffer *intel_parent_frontbuffer_get(struct intel_display *display, struct drm_gem_object *obj)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 5f0c835b9416..2b9e829e7f47 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -18,6 +18,7 @@ struct intel_frontbuffer;
 struct intel_hdcp_gsc_context;
 struct intel_panic;
 struct intel_stolen_node;
+struct iosys_map;
 
 /* dpt */
 struct intel_dpt *intel_parent_dpt_create(struct intel_display *display,
@@ -26,6 +27,10 @@ void intel_parent_dpt_destroy(struct intel_display *display, struct intel_dpt *d
 void intel_parent_dpt_suspend(struct intel_display *display, struct intel_dpt *dpt);
 void intel_parent_dpt_resume(struct intel_display *display, struct intel_dpt *dpt);
 
+/* fb_pin */
+void intel_parent_fb_pin_get_map(struct intel_display *display,
+				 struct i915_vma *vma, struct iosys_map *map);
+
 /* frontbuffer */
 struct intel_frontbuffer *intel_parent_frontbuffer_get(struct intel_display *display, struct drm_gem_object *obj);
 void intel_parent_frontbuffer_ref(struct intel_display *display, struct intel_frontbuffer *front);
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index c181a7d063ec..8264b66812a5 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1404,7 +1404,7 @@ static void intel_panic_flush(struct drm_plane *_plane)
 	if (fb == intel_fbdev_framebuffer(display->fbdev.fbdev)) {
 		struct iosys_map map;
 
-		intel_fbdev_get_map(display->fbdev.fbdev, &map);
+		intel_fbdev_get_map(display, &map);
 		drm_clflush_virt_range(map.vaddr, fb->base.pitches[0] * fb->base.height);
 		return;
 	}
@@ -1462,7 +1462,7 @@ static int intel_get_scanout_buffer(struct drm_plane *plane,
 		return -ENODEV;
 
 	if (fb == intel_fbdev_framebuffer(display->fbdev.fbdev)) {
-		intel_fbdev_get_map(display->fbdev.fbdev, &sb->map[0]);
+		intel_fbdev_get_map(display, &sb->map[0]);
 	} else {
 		int ret;
 		/* Can't disable tiling if DPT is in use */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a4bd4f8e18b2..f06b2e8cf7d4 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -99,6 +99,7 @@
 #include "i915_drv.h"
 #include "i915_dsb_buffer.h"
 #include "i915_edram.h"
+#include "i915_fb_pin.h"
 #include "i915_file_private.h"
 #include "i915_getparam.h"
 #include "i915_gmch.h"
@@ -768,6 +769,7 @@ static const struct intel_display_parent_interface parent = {
 	.bo = &i915_display_bo_interface,
 	.dpt = &i915_display_dpt_interface,
 	.dsb = &i915_display_dsb_interface,
+	.fb_pin = &i915_display_fb_pin_interface,
 	.frontbuffer = &i915_display_frontbuffer_interface,
 	.hdcp = &i915_display_hdcp_interface,
 	.initial_plane = &i915_display_initial_plane_interface,
diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index b0e121462ca3..b800b55530a5 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -8,6 +8,7 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "display/intel_display_core.h"
 #include "display/intel_display_types.h"
@@ -18,6 +19,7 @@
 #include "gem/i915_gem_domain.h"
 #include "gem/i915_gem_object.h"
 
+#include "i915_fb_pin.h"
 #include "i915_dpt.h"
 #include "i915_drv.h"
 #include "i915_vma.h"
@@ -352,7 +354,11 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 	}
 }
 
-void intel_fb_get_map(struct i915_vma *vma, struct iosys_map *map)
+static void i915_fb_pin_get_map(struct i915_vma *vma, struct iosys_map *map)
 {
 	iosys_map_set_vaddr_iomem(map, i915_vma_get_iomap(vma));
 }
+
+const struct intel_display_fb_pin_interface i915_display_fb_pin_interface = {
+	.get_map = i915_fb_pin_get_map,
+};
diff --git a/drivers/gpu/drm/i915/i915_fb_pin.h b/drivers/gpu/drm/i915/i915_fb_pin.h
new file mode 100644
index 000000000000..18c6c0b61ab8
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_fb_pin.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef __I915_FB_PIN_H__
+#define __I915_FB_PIN_H__
+
+extern const struct intel_display_fb_pin_interface i915_display_fb_pin_interface;
+
+#endif /* __I915_FB_PIN_H__ */
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 0747044f7c2a..aa73023b7398 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -40,6 +40,7 @@
 #include "xe_display_pcode.h"
 #include "xe_display_rpm.h"
 #include "xe_dsb_buffer.h"
+#include "xe_fb_pin.h"
 #include "xe_frontbuffer.h"
 #include "xe_hdcp_gsc.h"
 #include "xe_initial_plane.h"
@@ -553,6 +554,7 @@ static bool has_auxccs(struct drm_device *drm)
 static const struct intel_display_parent_interface parent = {
 	.bo = &xe_display_bo_interface,
 	.dsb = &xe_display_dsb_interface,
+	.fb_pin = &xe_display_fb_pin_interface,
 	.frontbuffer = &xe_display_frontbuffer_interface,
 	.hdcp = &xe_display_hdcp_interface,
 	.initial_plane = &xe_display_initial_plane_interface,
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 8d0067f908c5..1039058a7ed6 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -3,6 +3,7 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include <drm/intel/display_parent_interface.h>
 #include <drm/ttm/ttm_bo.h>
 
 #include "intel_display_core.h"
@@ -13,6 +14,7 @@
 #include "xe_bo.h"
 #include "xe_device.h"
 #include "xe_display_vma.h"
+#include "xe_fb_pin.h"
 #include "xe_ggtt.h"
 #include "xe_pat.h"
 #include "xe_pm.h"
@@ -506,7 +508,11 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 	old_plane_state->ggtt_vma = NULL;
 }
 
-void intel_fb_get_map(struct i915_vma *vma, struct iosys_map *map)
+static void xe_fb_pin_get_map(struct i915_vma *vma, struct iosys_map *map)
 {
 	*map = vma->bo->vmap;
 }
+
+const struct intel_display_fb_pin_interface xe_display_fb_pin_interface = {
+	.get_map = xe_fb_pin_get_map,
+};
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.h b/drivers/gpu/drm/xe/display/xe_fb_pin.h
new file mode 100644
index 000000000000..8a42d4009f5d
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef __XE_FB_PIN_H__
+#define __XE_FB_PIN_H__
+
+extern const struct intel_display_fb_pin_interface xe_display_fb_pin_interface;
+
+#endif /* __XE_FB_PIN_H__ */
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 270dc028bec2..ee2e9572bfca 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -24,6 +24,7 @@ struct intel_hdcp_gsc_context;
 struct intel_initial_plane_config;
 struct intel_panic;
 struct intel_stolen_node;
+struct iosys_map;
 struct ref_tracker;
 struct seq_file;
 struct vm_area_struct;
@@ -69,6 +70,10 @@ struct intel_display_dsb_interface {
 	void (*flush_map)(struct intel_dsb_buffer *dsb_buf);
 };
 
+struct intel_display_fb_pin_interface {
+	void (*get_map)(struct i915_vma *vma, struct iosys_map *map);
+};
+
 struct intel_display_frontbuffer_interface {
 	struct intel_frontbuffer *(*get)(struct drm_gem_object *obj);
 	void (*ref)(struct intel_frontbuffer *front);
@@ -211,6 +216,9 @@ struct intel_display_parent_interface {
 	/** @dsb: DSB buffer interface */
 	const struct intel_display_dsb_interface *dsb;
 
+	/** @fb_pin: Framebuffer pin interface */
+	const struct intel_display_fb_pin_interface *fb_pin;
+
 	/** @frontbuffer: Frontbuffer interface */
 	const struct intel_display_frontbuffer_interface *frontbuffer;
 
-- 
2.52.0

