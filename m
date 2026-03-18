Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLe6BueoumlpaQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 14:30:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F202BC200
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 14:30:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41C9910E81F;
	Wed, 18 Mar 2026 13:30:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WyoQhd6+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F0DD10E200;
 Wed, 18 Mar 2026 13:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773840612; x=1805376612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EtFL1UUHpbfqltvJDWrzMA7cFU5Mp607g6a2DZoDAeY=;
 b=WyoQhd6+aoRjmMo4d2dJatjiukV6AtMYW2n2ZTXjGKetpEz6HeKIhETV
 GCHlr5MYo3M3eVj7kY9kUwuUKBNeMJIVExkmlr2Z47N1GACyX4jlmAMS3
 ktkax/+O8Vh7t/VP5piH+tLXSgxPD0eVf3sgsUygY8xuPVk1rz9E5y+WW
 xebZ2sDXNbCt7yJJ951LhSQGSShJ/OX096d9iT8ijmKMfjvuDiNbAQj9+
 uxJkKOowfS1IbBw4kvk436TvZoEUG4jCVAPkXglD9w5kfspWYG1IPjDw5
 sGMYNmMbhSjB3PHjMrl7pqZh3349IbgFsxD2pAW3D8G9/ZvFGtTyarDhB w==;
X-CSE-ConnectionGUID: OBZwDZ8/RU6zLhXLBDBnAQ==
X-CSE-MsgGUID: rOvVRdQPSbyFKUxRNoeIgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="97500524"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="97500524"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 06:30:11 -0700
X-CSE-ConnectionGUID: 3q4uAqt5Rs6qMRmgK5jFzQ==
X-CSE-MsgGUID: U4LTs+fNSUaonJA3SjccEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="227577254"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 06:30:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/{i915,xe}: move fbdev fb calls to parent interface
Date: Wed, 18 Mar 2026 15:29:48 +0200
Message-ID: <37ec4a959c375a9099b42d11aa9454c51a96aec2.1773840563.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773840563.git.jani.nikula@intel.com>
References: <cover.1773840563.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B9F202BC200
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the driver specific fbdev fb calls to the display parent
interface. Reuse the existing struct intel_display_bo_interface, as this
is mostly about gem objects.

Put everything behind IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION) to catch
configuration issues at build or link time.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   3 +-
 drivers/gpu/drm/i915/display/intel_bo.c       |  27 ++++
 drivers/gpu/drm/i915/display/intel_bo.h       |   8 ++
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  14 +--
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 118 ------------------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  24 ----
 drivers/gpu/drm/i915/i915_bo.c                | 116 +++++++++++++++++
 drivers/gpu/drm/i915/i915_bo.h                |   6 +
 drivers/gpu/drm/i915/i915_initial_plane.c     |   4 +-
 drivers/gpu/drm/xe/Makefile                   |   1 -
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 116 -----------------
 drivers/gpu/drm/xe/display/xe_display_bo.c    | 117 +++++++++++++++++
 drivers/gpu/drm/xe/display/xe_display_bo.h    |   6 +
 drivers/gpu/drm/xe/display/xe_initial_plane.c |   4 +-
 include/drm/intel/display_parent_interface.h  |   7 ++
 15 files changed, 299 insertions(+), 272 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fbdev_fb.c
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fbdev_fb.h
 delete mode 100644 drivers/gpu/drm/xe/display/intel_fbdev_fb.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index be976a90c5a6..026614d74cc4 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -324,8 +324,7 @@ i915-$(CONFIG_ACPI) += \
 	display/intel_acpi.o \
 	display/intel_opregion.o
 i915-$(CONFIG_DRM_FBDEV_EMULATION) += \
-	display/intel_fbdev.o \
-	display/intel_fbdev_fb.o
+	display/intel_fbdev.o
 i915-$(CONFIG_DEBUG_FS) += \
 	display/intel_display_debugfs.o \
 	display/intel_display_debugfs_params.o \
diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index 3b82d38a0504..8ecdbb7e39f3 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -85,3 +85,30 @@ struct drm_gem_object *intel_bo_framebuffer_lookup(struct intel_display *display
 {
 	return display->parent->bo->framebuffer_lookup(display->drm, filp, user_mode_cmd);
 }
+
+#if IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION)
+u32 intel_bo_fbdev_pitch_align(struct intel_display *display, u32 stride)
+{
+	return display->parent->bo->fbdev_pitch_align(stride);
+}
+
+struct drm_gem_object *intel_bo_fbdev_create(struct intel_display *display, int size)
+{
+	return display->parent->bo->fbdev_create(display->drm, size);
+}
+
+void intel_bo_fbdev_destroy(struct drm_gem_object *obj)
+{
+	struct intel_display *display = to_intel_display(obj->dev);
+
+	display->parent->bo->fbdev_destroy(obj);
+}
+
+int intel_bo_fbdev_fill_info(struct drm_gem_object *obj, struct fb_info *info,
+			     struct i915_vma *vma)
+{
+	struct intel_display *display = to_intel_display(obj->dev);
+
+	return display->parent->bo->fbdev_fill_info(obj, info, vma);
+}
+#endif
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
index aec188c706c2..348f7fa66960 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -10,6 +10,8 @@ struct drm_file;
 struct drm_gem_object;
 struct drm_mode_fb_cmd2;
 struct drm_scanout_buffer;
+struct fb_info;
+struct i915_vma;
 struct intel_display;
 struct intel_framebuffer;
 struct seq_file;
@@ -31,4 +33,10 @@ struct drm_gem_object *intel_bo_framebuffer_lookup(struct intel_display *display
 						   struct drm_file *filp,
 						   const struct drm_mode_fb_cmd2 *user_mode_cmd);
 
+u32 intel_bo_fbdev_pitch_align(struct intel_display *display, u32 stride);
+struct drm_gem_object *intel_bo_fbdev_create(struct intel_display *display, int size);
+void intel_bo_fbdev_destroy(struct drm_gem_object *obj);
+int intel_bo_fbdev_fill_info(struct drm_gem_object *obj, struct fb_info *info,
+			     struct i915_vma *vma);
+
 #endif /* __INTEL_BO__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 6401aaaba199..14ac01c1b3eb 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -54,7 +54,6 @@
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_fbdev.h"
-#include "intel_fbdev_fb.h"
 #include "intel_frontbuffer.h"
 
 struct intel_fbdev {
@@ -204,7 +203,8 @@ static const struct drm_fb_helper_funcs intel_fb_helper_funcs = {
 	.fb_set_suspend = intelfb_set_suspend,
 };
 
-static void intel_fbdev_fill_mode_cmd(struct drm_fb_helper_surface_size *sizes,
+static void intel_fbdev_fill_mode_cmd(struct intel_display *display,
+				      struct drm_fb_helper_surface_size *sizes,
 				      struct drm_mode_fb_cmd2 *mode_cmd)
 {
 	/* we don't do packed 24bpp */
@@ -215,7 +215,7 @@ static void intel_fbdev_fill_mode_cmd(struct drm_fb_helper_surface_size *sizes,
 	mode_cmd->width = sizes->surface_width;
 	mode_cmd->height = sizes->surface_height;
 
-	mode_cmd->pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd->width * DIV_ROUND_UP(sizes->surface_bpp, 8));
+	mode_cmd->pitches[0] = intel_bo_fbdev_pitch_align(display, mode_cmd->width * DIV_ROUND_UP(sizes->surface_bpp, 8));
 	mode_cmd->pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
 							   sizes->surface_depth);
 	mode_cmd->modifier[0] = DRM_FORMAT_MOD_LINEAR;
@@ -230,12 +230,12 @@ __intel_fbdev_fb_alloc(struct intel_display *display,
 	struct drm_gem_object *obj;
 	int size;
 
-	intel_fbdev_fill_mode_cmd(sizes, &mode_cmd);
+	intel_fbdev_fill_mode_cmd(display, sizes, &mode_cmd);
 
 	size = mode_cmd.pitches[0] * mode_cmd.height;
 	size = PAGE_ALIGN(size);
 
-	obj = intel_fbdev_fb_bo_create(display->drm, size);
+	obj = intel_bo_fbdev_create(display, size);
 	if (IS_ERR(obj)) {
 		fb = ERR_CAST(obj);
 		goto err;
@@ -247,7 +247,7 @@ __intel_fbdev_fb_alloc(struct intel_display *display,
 							  mode_cmd.modifier[0]),
 				      &mode_cmd);
 	if (IS_ERR(fb)) {
-		intel_fbdev_fb_bo_destroy(obj);
+		intel_bo_fbdev_destroy(obj);
 		goto err;
 	}
 
@@ -327,7 +327,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 
 	obj = intel_fb_bo(&fb->base);
 
-	ret = intel_fbdev_fb_fill_info(obj, info, vma);
+	ret = intel_bo_fbdev_fill_info(obj, info, vma);
 	if (ret)
 		goto out_unpin;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
deleted file mode 100644
index a696ce42d10b..000000000000
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ /dev/null
@@ -1,118 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include <linux/fb.h>
-
-#include <drm/drm_print.h>
-
-#include "gem/i915_gem_lmem.h"
-
-#include "i915_drv.h"
-#include "intel_fbdev_fb.h"
-
-u32 intel_fbdev_fb_pitch_align(u32 stride)
-{
-	return ALIGN(stride, 64);
-}
-
-bool intel_fbdev_fb_prefer_stolen(struct drm_device *drm, unsigned int size)
-{
-	struct drm_i915_private *i915 = to_i915(drm);
-
-	/* Skip stolen on MTL as Wa_22018444074 mitigation. */
-	if (IS_METEORLAKE(i915))
-		return false;
-
-	/*
-	 * If the FB is too big, just don't use it since fbdev is not very
-	 * important and we should probably use that space with FBC or other
-	 * features.
-	 */
-	return i915->dsm.usable_size >= size * 2;
-}
-
-struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
-{
-	struct drm_i915_private *i915 = to_i915(drm);
-	struct drm_i915_gem_object *obj;
-
-	obj = ERR_PTR(-ENODEV);
-	if (HAS_LMEM(i915)) {
-		obj = i915_gem_object_create_lmem(i915, size,
-						  I915_BO_ALLOC_CONTIGUOUS |
-						  I915_BO_ALLOC_USER);
-	} else {
-		if (intel_fbdev_fb_prefer_stolen(drm, size))
-			obj = i915_gem_object_create_stolen(i915, size);
-		else
-			drm_info(drm, "Allocating fbdev: Stolen memory not preferred.\n");
-
-		if (IS_ERR(obj))
-			obj = i915_gem_object_create_shmem(i915, size);
-	}
-
-	if (IS_ERR(obj)) {
-		drm_err(drm, "failed to allocate framebuffer (%pe)\n", obj);
-		return ERR_PTR(-ENOMEM);
-	}
-
-	return &obj->base;
-}
-
-void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
-{
-	drm_gem_object_put(obj);
-}
-
-int intel_fbdev_fb_fill_info(struct drm_gem_object *_obj, struct fb_info *info,
-			     struct i915_vma *vma)
-{
-	struct drm_i915_private *i915 = to_i915(_obj->dev);
-	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
-	struct i915_gem_ww_ctx ww;
-	void __iomem *vaddr;
-	int ret;
-
-	if (i915_gem_object_is_lmem(obj)) {
-		struct intel_memory_region *mem = obj->mm.region;
-
-		/* Use fbdev's framebuffer from lmem for discrete */
-		info->fix.smem_start =
-			(unsigned long)(mem->io.start +
-					i915_gem_object_get_dma_address(obj, 0) -
-					mem->region.start);
-		info->fix.smem_len = obj->base.size;
-	} else {
-		struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
-
-		/* Our framebuffer is the entirety of fbdev's system memory */
-		info->fix.smem_start =
-			(unsigned long)(ggtt->gmadr.start + i915_ggtt_offset(vma));
-		info->fix.smem_len = vma->size;
-	}
-
-	for_i915_gem_ww(&ww, ret, false) {
-		ret = i915_gem_object_lock(vma->obj, &ww);
-
-		if (ret)
-			continue;
-
-		vaddr = i915_vma_pin_iomap(vma);
-		if (IS_ERR(vaddr)) {
-			drm_err(&i915->drm,
-				"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
-			ret = PTR_ERR(vaddr);
-			continue;
-		}
-	}
-
-	if (ret)
-		return ret;
-
-	info->screen_base = vaddr;
-	info->screen_size = intel_bo_to_drm_bo(obj)->size;
-
-	return 0;
-}
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
deleted file mode 100644
index ddba45e9839d..000000000000
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __INTEL_FBDEV_FB_H__
-#define __INTEL_FBDEV_FB_H__
-
-#include <linux/types.h>
-
-struct drm_device;
-struct drm_gem_object;
-struct drm_mode_fb_cmd2;
-struct fb_info;
-struct i915_vma;
-
-u32 intel_fbdev_fb_pitch_align(u32 stride);
-struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
-void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
-int intel_fbdev_fb_fill_info(struct drm_gem_object *obj, struct fb_info *info,
-			     struct i915_vma *vma);
-bool intel_fbdev_fb_prefer_stolen(struct drm_device *drm, unsigned int size);
-
-#endif
diff --git a/drivers/gpu/drm/i915/i915_bo.c b/drivers/gpu/drm/i915/i915_bo.c
index 1789f7cab05c..7e38d002478e 100644
--- a/drivers/gpu/drm/i915/i915_bo.c
+++ b/drivers/gpu/drm/i915/i915_bo.c
@@ -1,11 +1,14 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2024 Intel Corporation */
 
+#include <linux/fb.h>
+
 #include <drm/drm_panic.h>
 #include <drm/drm_print.h>
 #include <drm/intel/display_parent_interface.h>
 
 #include "display/intel_fb.h"
+#include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_object.h"
 #include "gem/i915_gem_object_frontbuffer.h"
@@ -141,6 +144,113 @@ i915_bo_framebuffer_lookup(struct drm_device *drm,
 	return intel_bo_to_drm_bo(obj);
 }
 
+#if IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION)
+static u32 i915_bo_fbdev_pitch_align(u32 stride)
+{
+	return ALIGN(stride, 64);
+}
+
+bool i915_bo_fbdev_prefer_stolen(struct drm_device *drm, unsigned int size)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	/* Skip stolen on MTL as Wa_22018444074 mitigation. */
+	if (IS_METEORLAKE(i915))
+		return false;
+
+	/*
+	 * If the FB is too big, just don't use it since fbdev is not very
+	 * important and we should probably use that space with FBC or other
+	 * features.
+	 */
+	return i915->dsm.usable_size >= size * 2;
+}
+
+static struct drm_gem_object *i915_bo_fbdev_create(struct drm_device *drm, int size)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct drm_i915_gem_object *obj;
+
+	obj = ERR_PTR(-ENODEV);
+	if (HAS_LMEM(i915)) {
+		obj = i915_gem_object_create_lmem(i915, size,
+						  I915_BO_ALLOC_CONTIGUOUS |
+						  I915_BO_ALLOC_USER);
+	} else {
+		if (i915_bo_fbdev_prefer_stolen(drm, size))
+			obj = i915_gem_object_create_stolen(i915, size);
+		else
+			drm_info(drm, "Allocating fbdev: Stolen memory not preferred.\n");
+
+		if (IS_ERR(obj))
+			obj = i915_gem_object_create_shmem(i915, size);
+	}
+
+	if (IS_ERR(obj)) {
+		drm_err(drm, "failed to allocate framebuffer (%pe)\n", obj);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	return &obj->base;
+}
+
+static void i915_bo_fbdev_destroy(struct drm_gem_object *obj)
+{
+	drm_gem_object_put(obj);
+}
+
+static int i915_bo_fbdev_fill_info(struct drm_gem_object *_obj, struct fb_info *info,
+				   struct i915_vma *vma)
+{
+	struct drm_i915_private *i915 = to_i915(_obj->dev);
+	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
+	struct i915_gem_ww_ctx ww;
+	void __iomem *vaddr;
+	int ret;
+
+	if (i915_gem_object_is_lmem(obj)) {
+		struct intel_memory_region *mem = obj->mm.region;
+
+		/* Use fbdev's framebuffer from lmem for discrete */
+		info->fix.smem_start =
+			(unsigned long)(mem->io.start +
+					i915_gem_object_get_dma_address(obj, 0) -
+					mem->region.start);
+		info->fix.smem_len = obj->base.size;
+	} else {
+		struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
+
+		/* Our framebuffer is the entirety of fbdev's system memory */
+		info->fix.smem_start =
+			(unsigned long)(ggtt->gmadr.start + i915_ggtt_offset(vma));
+		info->fix.smem_len = vma->size;
+	}
+
+	for_i915_gem_ww(&ww, ret, false) {
+		ret = i915_gem_object_lock(vma->obj, &ww);
+
+		if (ret)
+			continue;
+
+		vaddr = i915_vma_pin_iomap(vma);
+		if (IS_ERR(vaddr)) {
+			drm_err(&i915->drm,
+				"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
+			ret = PTR_ERR(vaddr);
+			continue;
+		}
+	}
+
+	if (ret)
+		return ret;
+
+	info->screen_base = vaddr;
+	info->screen_size = intel_bo_to_drm_bo(obj)->size;
+
+	return 0;
+}
+#endif
+
 const struct intel_display_bo_interface i915_display_bo_interface = {
 	.is_tiled = i915_bo_is_tiled,
 	.is_userptr = i915_bo_is_userptr,
@@ -153,4 +263,10 @@ const struct intel_display_bo_interface i915_display_bo_interface = {
 	.framebuffer_init = i915_bo_framebuffer_init,
 	.framebuffer_fini = i915_bo_framebuffer_fini,
 	.framebuffer_lookup = i915_bo_framebuffer_lookup,
+#if IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION)
+	.fbdev_create = i915_bo_fbdev_create,
+	.fbdev_destroy = i915_bo_fbdev_destroy,
+	.fbdev_fill_info = i915_bo_fbdev_fill_info,
+	.fbdev_pitch_align = i915_bo_fbdev_pitch_align,
+#endif
 };
diff --git a/drivers/gpu/drm/i915/i915_bo.h b/drivers/gpu/drm/i915/i915_bo.h
index 57255d052dd9..2a0f3050dd42 100644
--- a/drivers/gpu/drm/i915/i915_bo.h
+++ b/drivers/gpu/drm/i915/i915_bo.h
@@ -4,6 +4,12 @@
 #ifndef __I915_BO_H__
 #define __I915_BO_H__
 
+#include <linux/types.h>
+
+struct drm_device;
+
+bool i915_bo_fbdev_prefer_stolen(struct drm_device *drm, unsigned int size);
+
 extern const struct intel_display_bo_interface i915_display_bo_interface;
 
 #endif /* __I915_BO_H__ */
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 390a9248d631..f4d631a395d0 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -9,10 +9,10 @@
 #include "display/intel_crtc.h"
 #include "display/intel_display_types.h"
 #include "display/intel_fb.h"
-#include "display/intel_fbdev_fb.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 
+#include "i915_bo.h"
 #include "i915_drv.h"
 #include "i915_initial_plane.h"
 
@@ -118,7 +118,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 	if (IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION) &&
 	    IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
 	    mem == i915->mm.stolen_region &&
-	    !intel_fbdev_fb_prefer_stolen(&i915->drm, size)) {
+	    !i915_bo_fbdev_prefer_stolen(&i915->drm, size)) {
 		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
 		return NULL;
 	}
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index dab979287a96..936eb79e9269 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -211,7 +211,6 @@ $(obj)/i915-display/%.o: $(srctree)/drivers/gpu/drm/i915/display/%.c FORCE
 
 # Display code specific to xe
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
-	display/intel_fbdev_fb.o \
 	display/xe_display.o \
 	display/xe_display_bo.o \
 	display/xe_display_pcode.o \
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
deleted file mode 100644
index 2ad5e5a79287..000000000000
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ /dev/null
@@ -1,116 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include <linux/fb.h>
-
-#include "intel_fbdev_fb.h"
-#include "xe_bo.h"
-#include "xe_ttm_stolen_mgr.h"
-#include "xe_wa.h"
-
-#include <generated/xe_device_wa_oob.h>
-
-/*
- * FIXME: There shouldn't be any reason to have XE_PAGE_SIZE stride
- * alignment. The same 64 as i915 uses should be fine, and we shouldn't need to
- * have driver specific values. However, dropping the stride alignment to 64
- * leads to underflowing the bo pin count in the atomic cleanup work.
- */
-u32 intel_fbdev_fb_pitch_align(u32 stride)
-{
-	return ALIGN(stride, XE_PAGE_SIZE);
-}
-
-bool intel_fbdev_fb_prefer_stolen(struct drm_device *drm, unsigned int size)
-{
-	struct xe_device *xe = to_xe_device(drm);
-	struct ttm_resource_manager *stolen;
-
-	stolen = ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
-	if (!stolen)
-		return false;
-
-	if (IS_DGFX(xe))
-		return false;
-
-	if (XE_DEVICE_WA(xe, 22019338487_display))
-		return false;
-
-	/*
-	 * If the FB is too big, just don't use it since fbdev is not very
-	 * important and we should probably use that space with FBC or other
-	 * features.
-	 */
-	return stolen->size >= size * 2;
-}
-
-struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
-{
-	struct xe_device *xe = to_xe_device(drm);
-	struct xe_bo *obj;
-
-	obj = ERR_PTR(-ENODEV);
-
-	if (intel_fbdev_fb_prefer_stolen(drm, size)) {
-		obj = xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe),
-						size,
-						ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
-						XE_BO_FLAG_STOLEN |
-						XE_BO_FLAG_GGTT, false);
-		if (!IS_ERR(obj))
-			drm_info(&xe->drm, "Allocated fbdev into stolen\n");
-		else
-			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
-	} else {
-		drm_info(&xe->drm, "Allocating fbdev: Stolen memory not preferred.\n");
-	}
-
-	if (IS_ERR(obj)) {
-		obj = xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe), size,
-						ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
-						XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
-						XE_BO_FLAG_GGTT, false);
-	}
-
-	if (IS_ERR(obj)) {
-		drm_err(&xe->drm, "failed to allocate framebuffer (%pe)\n", obj);
-		return ERR_PTR(-ENOMEM);
-	}
-
-	return &obj->ttm.base;
-}
-
-void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
-{
-	xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
-}
-
-int intel_fbdev_fb_fill_info(struct drm_gem_object *_obj, struct fb_info *info,
-			     struct i915_vma *vma)
-{
-	struct xe_bo *obj = gem_to_xe_bo(_obj);
-	struct pci_dev *pdev = to_pci_dev(_obj->dev->dev);
-
-	if (!(obj->flags & XE_BO_FLAG_SYSTEM)) {
-		if (obj->flags & XE_BO_FLAG_STOLEN)
-			info->fix.smem_start = xe_ttm_stolen_io_offset(obj, 0);
-		else
-			info->fix.smem_start =
-				pci_resource_start(pdev, 2) +
-				xe_bo_addr(obj, 0, XE_PAGE_SIZE);
-
-		info->fix.smem_len = obj->ttm.base.size;
-	} else {
-		/* XXX: Pure fiction, as the BO may not be physically accessible.. */
-		info->fix.smem_start = 0;
-		info->fix.smem_len = obj->ttm.base.size;
-	}
-	XE_WARN_ON(iosys_map_is_null(&obj->vmap));
-
-	info->screen_base = obj->vmap.vaddr_iomem;
-	info->screen_size = obj->ttm.base.size;
-
-	return 0;
-}
diff --git a/drivers/gpu/drm/xe/display/xe_display_bo.c b/drivers/gpu/drm/xe/display/xe_display_bo.c
index a689f71e7b14..10436edecc35 100644
--- a/drivers/gpu/drm/xe/display/xe_display_bo.c
+++ b/drivers/gpu/drm/xe/display/xe_display_bo.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2024 Intel Corporation */
 
+#include <linux/fb.h>
+
 #include <drm/drm_gem.h>
 #include <drm/intel/display_parent_interface.h>
 
@@ -8,6 +10,10 @@
 #include "xe_bo.h"
 #include "xe_display_bo.h"
 #include "xe_pxp.h"
+#include "xe_ttm_stolen_mgr.h"
+#include "xe_wa.h"
+
+#include <generated/xe_device_wa_oob.h>
 
 static bool xe_display_bo_is_protected(struct drm_gem_object *obj)
 {
@@ -101,6 +107,111 @@ xe_display_bo_framebuffer_lookup(struct drm_device *drm,
 	return gem;
 }
 
+#if IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION)
+/*
+ * FIXME: There shouldn't be any reason to have XE_PAGE_SIZE stride
+ * alignment. The same 64 as i915 uses should be fine, and we shouldn't need to
+ * have driver specific values. However, dropping the stride alignment to 64
+ * leads to underflowing the bo pin count in the atomic cleanup work.
+ */
+static u32 xe_display_bo_fbdev_pitch_align(u32 stride)
+{
+	return ALIGN(stride, XE_PAGE_SIZE);
+}
+
+bool xe_display_bo_fbdev_prefer_stolen(struct drm_device *drm, unsigned int size)
+{
+	struct xe_device *xe = to_xe_device(drm);
+	struct ttm_resource_manager *stolen;
+
+	stolen = ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
+	if (!stolen)
+		return false;
+
+	if (IS_DGFX(xe))
+		return false;
+
+	if (XE_DEVICE_WA(xe, 22019338487_display))
+		return false;
+
+	/*
+	 * If the FB is too big, just don't use it since fbdev is not very
+	 * important and we should probably use that space with FBC or other
+	 * features.
+	 */
+	return stolen->size >= size * 2;
+}
+
+static struct drm_gem_object *xe_display_bo_fbdev_create(struct drm_device *drm, int size)
+{
+	struct xe_device *xe = to_xe_device(drm);
+	struct xe_bo *obj;
+
+	obj = ERR_PTR(-ENODEV);
+
+	if (xe_display_bo_fbdev_prefer_stolen(drm, size)) {
+		obj = xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe),
+						size,
+						ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
+						XE_BO_FLAG_STOLEN |
+						XE_BO_FLAG_GGTT, false);
+		if (!IS_ERR(obj))
+			drm_info(&xe->drm, "Allocated fbdev into stolen\n");
+		else
+			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
+	} else {
+		drm_info(&xe->drm, "Allocating fbdev: Stolen memory not preferred.\n");
+	}
+
+	if (IS_ERR(obj)) {
+		obj = xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe), size,
+						ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
+						XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
+						XE_BO_FLAG_GGTT, false);
+	}
+
+	if (IS_ERR(obj)) {
+		drm_err(&xe->drm, "failed to allocate framebuffer (%pe)\n", obj);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	return &obj->ttm.base;
+}
+
+static void xe_display_bo_fbdev_destroy(struct drm_gem_object *obj)
+{
+	xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
+}
+
+static int xe_display_bo_fbdev_fill_info(struct drm_gem_object *_obj, struct fb_info *info,
+			     struct i915_vma *vma)
+{
+	struct xe_bo *obj = gem_to_xe_bo(_obj);
+	struct pci_dev *pdev = to_pci_dev(_obj->dev->dev);
+
+	if (!(obj->flags & XE_BO_FLAG_SYSTEM)) {
+		if (obj->flags & XE_BO_FLAG_STOLEN)
+			info->fix.smem_start = xe_ttm_stolen_io_offset(obj, 0);
+		else
+			info->fix.smem_start =
+				pci_resource_start(pdev, 2) +
+				xe_bo_addr(obj, 0, XE_PAGE_SIZE);
+
+		info->fix.smem_len = obj->ttm.base.size;
+	} else {
+		/* XXX: Pure fiction, as the BO may not be physically accessible.. */
+		info->fix.smem_start = 0;
+		info->fix.smem_len = obj->ttm.base.size;
+	}
+	XE_WARN_ON(iosys_map_is_null(&obj->vmap));
+
+	info->screen_base = obj->vmap.vaddr_iomem;
+	info->screen_size = obj->ttm.base.size;
+
+	return 0;
+}
+#endif
+
 const struct intel_display_bo_interface xe_display_bo_interface = {
 	.is_protected = xe_display_bo_is_protected,
 	.key_check = xe_pxp_obj_key_check,
@@ -109,4 +220,10 @@ const struct intel_display_bo_interface xe_display_bo_interface = {
 	.framebuffer_init = xe_display_bo_framebuffer_init,
 	.framebuffer_fini = xe_display_bo_framebuffer_fini,
 	.framebuffer_lookup = xe_display_bo_framebuffer_lookup,
+#if IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION)
+	.fbdev_create = xe_display_bo_fbdev_create,
+	.fbdev_destroy = xe_display_bo_fbdev_destroy,
+	.fbdev_fill_info = xe_display_bo_fbdev_fill_info,
+	.fbdev_pitch_align = xe_display_bo_fbdev_pitch_align,
+#endif
 };
diff --git a/drivers/gpu/drm/xe/display/xe_display_bo.h b/drivers/gpu/drm/xe/display/xe_display_bo.h
index 6879c104b0b1..8980e6ecf54a 100644
--- a/drivers/gpu/drm/xe/display/xe_display_bo.h
+++ b/drivers/gpu/drm/xe/display/xe_display_bo.h
@@ -4,6 +4,12 @@
 #ifndef __XE_DISPLAY_BO_H__
 #define __XE_DISPLAY_BO_H__
 
+#include <linux/types.h>
+
+struct drm_device;
+
+bool xe_display_bo_fbdev_prefer_stolen(struct drm_device *drm, unsigned int size);
+
 extern const struct intel_display_bo_interface xe_display_bo_interface;
 
 #endif
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 730c6dc49522..6e0a22429184 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -12,8 +12,8 @@
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
-#include "intel_fbdev_fb.h"
 #include "xe_bo.h"
+#include "xe_display_bo.h"
 #include "xe_display_vma.h"
 #include "xe_ggtt.h"
 #include "xe_mmio.h"
@@ -87,7 +87,7 @@ initial_plane_bo(struct xe_device *xe,
 
 		if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
 		    IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION) &&
-		    !intel_fbdev_fb_prefer_stolen(&xe->drm, plane_config->size)) {
+		    !xe_display_bo_fbdev_prefer_stolen(&xe->drm, plane_config->size)) {
 			drm_info(&xe->drm, "Initial FB size exceeds half of stolen, discarding\n");
 			return NULL;
 		}
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 97ec94a2e749..2fc1794a3da4 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -15,6 +15,7 @@ struct drm_gem_object;
 struct drm_mode_fb_cmd2;
 struct drm_plane_state;
 struct drm_scanout_buffer;
+struct fb_info;
 struct i915_vma;
 struct intel_dpt;
 struct intel_dsb_buffer;
@@ -43,6 +44,12 @@ struct intel_display_bo_interface {
 	struct drm_gem_object *(*framebuffer_lookup)(struct drm_device *drm,
 						     struct drm_file *filp,
 						     const struct drm_mode_fb_cmd2 *user_mode_cmd);
+#if IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION)
+	struct drm_gem_object *(*fbdev_create)(struct drm_device *drm, int size);
+	void (*fbdev_destroy)(struct drm_gem_object *obj);
+	int (*fbdev_fill_info)(struct drm_gem_object *obj, struct fb_info *info, struct i915_vma *vma);
+	u32 (*fbdev_pitch_align)(u32 stride);
+#endif
 };
 
 struct intel_display_dpt_interface {
-- 
2.47.3

