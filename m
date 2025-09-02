Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2A1B40C87
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 19:52:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5DE10E80E;
	Tue,  2 Sep 2025 17:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GeVrFubC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4363A10E80E;
 Tue,  2 Sep 2025 17:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756835532; x=1788371532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/BcAZOHwBVQQk8Hmnd8PE92LW7q+MfC2hYKN348bM9E=;
 b=GeVrFubCpqMzO4bQCz8IXmDIkOGI2E8m0WT5zwp/gbdVIRZ/MzayliwP
 1hni0G1ogxXdSwgxB6d1lN9O8JXgooB5Io0Bfd3aFtj3+vVFIwAybVBPA
 A7bRQFb2bMu+e8dxckDKY3TpkwV3DMkxFikaJ5HBKwc3bGURyGFtvJwKi
 1CpWCzTOKUDxFa416t+sjxYSFZltmYMdUbbrgMOoqHMJLBTkkVjokNx2y
 mgiAn945hbIP7xDlZyuPVPDF/72CTu3RKjNaSLaYV7AEM+dJO19hTTJBP
 Uf8t9nYZrt4BHVTIvrTtGLCQGMhM5Y9nwRp+ztX0pHChbVJaJdP6zaQ6o A==;
X-CSE-ConnectionGUID: 5CaOYxOMTsGj38FlgKiaxg==
X-CSE-MsgGUID: 6Xb88cynR668RwnnYejJ4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="58338328"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="58338328"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:12 -0700
X-CSE-ConnectionGUID: ke5O06thRYKUmphjNXwNdA==
X-CSE-MsgGUID: 9hvVFveQTW2s+qEtUHh6fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="172177572"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Jocelyn Falempe <jfalempe@redhat.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 2/8] drm/{i915,xe}/panic: split out intel_panic.[ch]
Date: Tue,  2 Sep 2025 20:51:48 +0300
Message-ID: <d98b831a011a028ffd33ce99b0ba62be061ee235.1756835342.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756835342.git.jani.nikula@intel.com>
References: <cover.1756835342.git.jani.nikula@intel.com>
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

intel_bo.[ch] is not the appropriate location for the panic
functionality. Split out intel_panic.[ch] and xe_panic.c in i915 and
xe. Keep the function names for now.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

This is just code movement, which is easy to review by applying and
using 'git show --color-moved'.
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  1 +
 drivers/gpu/drm/i915/display/intel_bo.c       | 15 ---
 drivers/gpu/drm/i915/display/intel_bo.h       |  3 -
 drivers/gpu/drm/i915/display/intel_fb.c       |  1 +
 drivers/gpu/drm/i915/display/intel_panic.c    | 20 ++++
 drivers/gpu/drm/i915/display/intel_panic.h    | 14 +++
 drivers/gpu/drm/i915/display/intel_plane.c    |  2 +-
 .../drm/i915/display/skl_universal_plane.c    |  1 +
 drivers/gpu/drm/xe/Makefile                   |  1 +
 drivers/gpu/drm/xe/display/intel_bo.c         | 91 ------------------
 drivers/gpu/drm/xe/display/xe_panic.c         | 96 +++++++++++++++++++
 12 files changed, 136 insertions(+), 110 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_panic.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_panic.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_panic.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 853543443072..db150a0c33ce 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -280,6 +280,7 @@ i915-y += \
 	display/intel_modeset_setup.o \
 	display/intel_modeset_verify.o \
 	display/intel_overlay.o \
+	display/intel_panic.o \
 	display/intel_pch.o \
 	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 9a39e9efbfaf..407deb5dfb57 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -22,6 +22,7 @@
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
+#include "intel_panic.h"
 #include "intel_plane.h"
 #include "intel_sprite.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index d29c1508ccb9..6ae1374d5c2b 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -59,18 +59,3 @@ void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
 {
 	i915_debugfs_describe_obj(m, to_intel_bo(obj));
 }
-
-struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
-{
-	return i915_gem_object_alloc_framebuffer();
-}
-
-int intel_bo_panic_setup(struct drm_scanout_buffer *sb)
-{
-	return i915_gem_object_panic_setup(sb);
-}
-
-void intel_bo_panic_finish(struct intel_framebuffer *fb)
-{
-	return i915_gem_object_panic_finish(fb);
-}
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
index 97087a64d23b..48d87019e48a 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -25,8 +25,5 @@ struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
 						   struct intel_frontbuffer *front);
 
 void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj);
-struct intel_framebuffer *intel_bo_alloc_framebuffer(void);
-int intel_bo_panic_setup(struct drm_scanout_buffer *sb);
-void intel_bo_panic_finish(struct intel_framebuffer *fb);
 
 #endif /* __INTEL_BO__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index c8feb6d4492c..2a2ed0f0461f 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -20,6 +20,7 @@
 #include "intel_fb.h"
 #include "intel_fb_bo.h"
 #include "intel_frontbuffer.h"
+#include "intel_panic.h"
 #include "intel_plane.h"
 
 #define check_array_bounds(display, a, i) drm_WARN_ON((display)->drm, (i) >= ARRAY_SIZE(a))
diff --git a/drivers/gpu/drm/i915/display/intel_panic.c b/drivers/gpu/drm/i915/display/intel_panic.c
new file mode 100644
index 000000000000..9eae210bb4cd
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_panic.c
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#include "gem/i915_gem_object.h"
+#include "intel_panic.h"
+
+struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
+{
+	return i915_gem_object_alloc_framebuffer();
+}
+
+int intel_bo_panic_setup(struct drm_scanout_buffer *sb)
+{
+	return i915_gem_object_panic_setup(sb);
+}
+
+void intel_bo_panic_finish(struct intel_framebuffer *fb)
+{
+	return i915_gem_object_panic_finish(fb);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_panic.h b/drivers/gpu/drm/i915/display/intel_panic.h
new file mode 100644
index 000000000000..07e72240cbd7
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_panic.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __INTEL_PANIC_H__
+#define __INTEL_PANIC_H__
+
+struct drm_scanout_buffer;
+struct intel_framebuffer;
+
+struct intel_framebuffer *intel_bo_alloc_framebuffer(void);
+int intel_bo_panic_setup(struct drm_scanout_buffer *sb);
+void intel_bo_panic_finish(struct intel_framebuffer *fb);
+
+#endif /* __INTEL_PANIC_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 81f05ee9a21a..a467e14e6388 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -47,7 +47,6 @@
 #include "gem/i915_gem_object.h"
 #include "i915_scheduler_types.h"
 #include "i9xx_plane_regs.h"
-#include "intel_bo.h"
 #include "intel_cdclk.h"
 #include "intel_cursor.h"
 #include "intel_display_rps.h"
@@ -56,6 +55,7 @@
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_fbdev.h"
+#include "intel_panic.h"
 #include "intel_plane.h"
 #include "intel_psr.h"
 #include "skl_scaler.h"
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 59ee0830de02..e13fb781e7b2 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -20,6 +20,7 @@
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
+#include "intel_panic.h"
 #include "intel_plane.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 987e4fe10538..bb135f457a6c 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -210,6 +210,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/xe_dsb_buffer.o \
 	display/xe_fb_pin.o \
 	display/xe_hdcp_gsc.o \
+	display/xe_panic.o \
 	display/xe_plane_initial.o \
 	display/xe_tdf.o
 
diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
index 910632f57c3d..27437c22bd70 100644
--- a/drivers/gpu/drm/xe/display/intel_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_bo.c
@@ -1,12 +1,7 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2024 Intel Corporation */
 
-#include <drm/drm_cache.h>
 #include <drm/drm_gem.h>
-#include <drm/drm_panic.h>
-
-#include "intel_fb.h"
-#include "intel_display_types.h"
 
 #include "xe_bo.h"
 #include "intel_bo.h"
@@ -64,89 +59,3 @@ void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
 {
 	/* FIXME */
 }
-
-struct xe_panic_data {
-	struct page **pages;
-	int page;
-	void *vaddr;
-};
-
-struct xe_framebuffer {
-	struct intel_framebuffer base;
-	struct xe_panic_data panic;
-};
-
-static inline struct xe_panic_data *to_xe_panic_data(struct intel_framebuffer *fb)
-{
-	return &container_of_const(fb, struct xe_framebuffer, base)->panic;
-}
-
-static void xe_panic_kunmap(struct xe_panic_data *panic)
-{
-	if (panic->vaddr) {
-		drm_clflush_virt_range(panic->vaddr, PAGE_SIZE);
-		kunmap_local(panic->vaddr);
-		panic->vaddr = NULL;
-	}
-}
-
-/*
- * The scanout buffer pages are not mapped, so for each pixel,
- * use kmap_local_page_try_from_panic() to map the page, and write the pixel.
- * Try to keep the map from the previous pixel, to avoid too much map/unmap.
- */
-static void xe_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
-				    unsigned int y, u32 color)
-{
-	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct xe_panic_data *panic = to_xe_panic_data(fb);
-	struct xe_bo *bo = gem_to_xe_bo(intel_fb_bo(&fb->base));
-	unsigned int new_page;
-	unsigned int offset;
-
-	if (fb->panic_tiling)
-		offset = fb->panic_tiling(sb->width, x, y);
-	else
-		offset = y * sb->pitch[0] + x * sb->format->cpp[0];
-
-	new_page = offset >> PAGE_SHIFT;
-	offset = offset % PAGE_SIZE;
-	if (new_page != panic->page) {
-		xe_panic_kunmap(panic);
-		panic->page = new_page;
-		panic->vaddr = ttm_bo_kmap_try_from_panic(&bo->ttm,
-							  panic->page);
-	}
-	if (panic->vaddr) {
-		u32 *pix = panic->vaddr + offset;
-		*pix = color;
-	}
-}
-
-struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
-{
-	struct xe_framebuffer *xe_fb;
-
-	xe_fb = kzalloc(sizeof(*xe_fb), GFP_KERNEL);
-	if (xe_fb)
-		return &xe_fb->base;
-	return NULL;
-}
-
-int intel_bo_panic_setup(struct drm_scanout_buffer *sb)
-{
-	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct xe_panic_data *panic = to_xe_panic_data(fb);
-
-	panic->page = -1;
-	sb->set_pixel = xe_panic_page_set_pixel;
-	return 0;
-}
-
-void intel_bo_panic_finish(struct intel_framebuffer *fb)
-{
-	struct xe_panic_data *panic = to_xe_panic_data(fb);
-
-	xe_panic_kunmap(panic);
-	panic->page = -1;
-}
diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
new file mode 100644
index 000000000000..14fba8aa4e5f
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_panic.c
@@ -0,0 +1,96 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#include <drm/drm_cache.h>
+#include <drm/drm_panic.h>
+
+#include "intel_display_types.h"
+#include "intel_fb.h"
+#include "intel_panic.h"
+#include "xe_bo.h"
+
+struct xe_panic_data {
+	struct page **pages;
+	int page;
+	void *vaddr;
+};
+
+struct xe_framebuffer {
+	struct intel_framebuffer base;
+	struct xe_panic_data panic;
+};
+
+static inline struct xe_panic_data *to_xe_panic_data(struct intel_framebuffer *fb)
+{
+	return &container_of_const(fb, struct xe_framebuffer, base)->panic;
+}
+
+static void xe_panic_kunmap(struct xe_panic_data *panic)
+{
+	if (panic->vaddr) {
+		drm_clflush_virt_range(panic->vaddr, PAGE_SIZE);
+		kunmap_local(panic->vaddr);
+		panic->vaddr = NULL;
+	}
+}
+
+/*
+ * The scanout buffer pages are not mapped, so for each pixel,
+ * use kmap_local_page_try_from_panic() to map the page, and write the pixel.
+ * Try to keep the map from the previous pixel, to avoid too much map/unmap.
+ */
+static void xe_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
+				    unsigned int y, u32 color)
+{
+	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
+	struct xe_panic_data *panic = to_xe_panic_data(fb);
+	struct xe_bo *bo = gem_to_xe_bo(intel_fb_bo(&fb->base));
+	unsigned int new_page;
+	unsigned int offset;
+
+	if (fb->panic_tiling)
+		offset = fb->panic_tiling(sb->width, x, y);
+	else
+		offset = y * sb->pitch[0] + x * sb->format->cpp[0];
+
+	new_page = offset >> PAGE_SHIFT;
+	offset = offset % PAGE_SIZE;
+	if (new_page != panic->page) {
+		xe_panic_kunmap(panic);
+		panic->page = new_page;
+		panic->vaddr = ttm_bo_kmap_try_from_panic(&bo->ttm,
+							  panic->page);
+	}
+	if (panic->vaddr) {
+		u32 *pix = panic->vaddr + offset;
+		*pix = color;
+	}
+}
+
+struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
+{
+	struct xe_framebuffer *xe_fb;
+
+	xe_fb = kzalloc(sizeof(*xe_fb), GFP_KERNEL);
+	if (xe_fb)
+		return &xe_fb->base;
+	return NULL;
+}
+
+int intel_bo_panic_setup(struct drm_scanout_buffer *sb)
+{
+	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
+	struct xe_panic_data *panic = to_xe_panic_data(fb);
+
+	panic->page = -1;
+	sb->set_pixel = xe_panic_page_set_pixel;
+	return 0;
+}
+
+void intel_bo_panic_finish(struct intel_framebuffer *fb)
+{
+	struct xe_panic_data *panic = to_xe_panic_data(fb);
+
+	xe_panic_kunmap(panic);
+	panic->page = -1;
+}
-- 
2.47.2

