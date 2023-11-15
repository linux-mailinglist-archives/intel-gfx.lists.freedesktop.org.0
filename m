Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D767EBF1E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 10:07:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D0F510E509;
	Wed, 15 Nov 2023 09:07:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B178A10E509
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 09:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700039264; x=1731575264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CFkDNPe1xeKa5aq/sqHD9qvGVUqUkYg6evlgNBduqI8=;
 b=YeVzSP77ZBSk4wTpfkrsOYi793nU9mYEzJlqF203QVBlRHtv3U3c/yoU
 mWjvAPSTQcRHooYfwsEI4Lhxv8TuhNQqAOzRhZhIdqMBAXxWkhTX9v3H6
 r8dLjc37tF/goQSWDGiahlLKwaY+ZP1DfOwou2SmziTu4KOnDQtT8J+fG
 /KxgyF86ubbBKvo51vL+GV4l/MUsdSOKKSVnmKhSqsJZSCB61QtEcnlms
 ic1Txg7BVC5sNQ6OxCWN8uGwqY0yzOKPe9Vg9w+JgH0gNcKJ0PVu84gQl
 7RVYR3bXLLBEm1+gr+hN+hip2gXpLoOzxi2bVyR6epzAnIy1L9tS4TWk/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="381236093"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="381236093"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 01:07:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="799781346"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="799781346"
Received: from tmagriss-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.218.181])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 01:07:36 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Nov 2023 11:07:18 +0200
Message-Id: <20231115090719.3210079-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231115090719.3210079-1-jouni.hogander@intel.com>
References: <20231115090719.3210079-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: split i915 specific code
 from intel_fbdev
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

Split out code from intel_fbdev that can not be share between i915 and
xe. Create new i915 specific source/header file intel_fbdev_fb.[ch] which
contains this code.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   3 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 108 ++--------------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 115 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  21 ++++
 4 files changed, 146 insertions(+), 101 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fbdev_fb.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_fbdev_fb.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 239da40a401f..38cb7e984930 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -316,7 +316,8 @@ i915-$(CONFIG_ACPI) += \
 	display/intel_acpi.o \
 	display/intel_opregion.o
 i915-$(CONFIG_DRM_FBDEV_EMULATION) += \
-	display/intel_fbdev.o
+	display/intel_fbdev.o \
+	display/intel_fbdev_fb.o
 i915-$(CONFIG_DEBUG_FS) += \
 	display/intel_display_debugfs.o \
 	display/intel_display_debugfs_params.o \
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 31d0d695d567..b7e4b7830e45 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -43,7 +43,6 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 
-#include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_mman.h"
 
 #include "i915_drv.h"
@@ -51,6 +50,7 @@
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_fbdev.h"
+#include "intel_fbdev_fb.h"
 #include "intel_frontbuffer.h"
 
 struct intel_fbdev {
@@ -146,65 +146,6 @@ static const struct fb_ops intelfb_ops = {
 	.fb_mmap = intel_fbdev_mmap,
 };
 
-static int intelfb_alloc(struct drm_fb_helper *helper,
-			 struct drm_fb_helper_surface_size *sizes)
-{
-	struct intel_fbdev *ifbdev = to_intel_fbdev(helper);
-	struct drm_framebuffer *fb;
-	struct drm_device *dev = helper->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct drm_mode_fb_cmd2 mode_cmd = {};
-	struct drm_i915_gem_object *obj;
-	int size;
-
-	/* we don't do packed 24bpp */
-	if (sizes->surface_bpp == 24)
-		sizes->surface_bpp = 32;
-
-	mode_cmd.width = sizes->surface_width;
-	mode_cmd.height = sizes->surface_height;
-
-	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
-				    DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
-	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
-							  sizes->surface_depth);
-
-	size = mode_cmd.pitches[0] * mode_cmd.height;
-	size = PAGE_ALIGN(size);
-
-	obj = ERR_PTR(-ENODEV);
-	if (HAS_LMEM(dev_priv)) {
-		obj = i915_gem_object_create_lmem(dev_priv, size,
-						  I915_BO_ALLOC_CONTIGUOUS |
-						  I915_BO_ALLOC_USER);
-	} else {
-		/*
-		 * If the FB is too big, just don't use it since fbdev is not very
-		 * important and we should probably use that space with FBC or other
-		 * features.
-		 *
-		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
-		 */
-		if (!(IS_METEORLAKE(dev_priv)) && size * 2 < dev_priv->dsm.usable_size)
-			obj = i915_gem_object_create_stolen(dev_priv, size);
-		if (IS_ERR(obj))
-			obj = i915_gem_object_create_shmem(dev_priv, size);
-	}
-
-	if (IS_ERR(obj)) {
-		drm_err(&dev_priv->drm, "failed to allocate framebuffer (%pe)\n", obj);
-		return PTR_ERR(obj);
-	}
-
-	fb = intel_framebuffer_create(obj, &mode_cmd);
-	i915_gem_object_put(obj);
-	if (IS_ERR(fb))
-		return PTR_ERR(fb);
-
-	ifbdev->fb = to_intel_framebuffer(fb);
-	return 0;
-}
-
 static int intelfb_create(struct drm_fb_helper *helper,
 			  struct drm_fb_helper_surface_size *sizes)
 {
@@ -213,7 +154,6 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	struct drm_device *dev = helper->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-	struct i915_ggtt *ggtt = to_gt(dev_priv)->ggtt;
 	const struct i915_gtt_view view = {
 		.type = I915_GTT_VIEW_NORMAL,
 	};
@@ -222,9 +162,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	struct i915_vma *vma;
 	unsigned long flags = 0;
 	bool prealloc = false;
-	void __iomem *vaddr;
 	struct drm_i915_gem_object *obj;
-	struct i915_gem_ww_ctx ww;
 	int ret;
 
 	mutex_lock(&ifbdev->hpd_lock);
@@ -245,12 +183,13 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		intel_fb = ifbdev->fb = NULL;
 	}
 	if (!intel_fb || drm_WARN_ON(dev, !intel_fb_obj(&intel_fb->base))) {
+		struct drm_framebuffer *fb;
 		drm_dbg_kms(&dev_priv->drm,
 			    "no BIOS fb, allocating a new one\n");
-		ret = intelfb_alloc(helper, sizes);
-		if (ret)
-			return ret;
-		intel_fb = ifbdev->fb;
+		fb = intel_fbdev_fb_alloc(helper, sizes);
+		if (IS_ERR(fb))
+			return PTR_ERR(fb);
+		intel_fb = ifbdev->fb = to_intel_framebuffer(fb);
 	} else {
 		drm_dbg_kms(&dev_priv->drm, "re-using BIOS fb\n");
 		prealloc = true;
@@ -283,49 +222,18 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	info->fbops = &intelfb_ops;
 
 	obj = intel_fb_obj(&intel_fb->base);
-	if (i915_gem_object_is_lmem(obj)) {
-		struct intel_memory_region *mem = obj->mm.region;
-
-		/* Use fbdev's framebuffer from lmem for discrete */
-		info->fix.smem_start =
-			(unsigned long)(mem->io_start +
-					i915_gem_object_get_dma_address(obj, 0));
-		info->fix.smem_len = obj->base.size;
-	} else {
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
-			drm_err(&dev_priv->drm,
-				"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
-			ret = PTR_ERR(vaddr);
-			continue;
-		}
-	}
 
+	ret = intel_fbdev_fb_fill_info(dev_priv, info, obj, vma);
 	if (ret)
 		goto out_unpin;
 
-	info->screen_base = vaddr;
-	info->screen_size = vma->size;
-
 	drm_fb_helper_fill_info(info, &ifbdev->helper, sizes);
 
 	/* If the object is shmemfs backed, it will have given us zeroed pages.
 	 * If the object is stolen however, it will be full of whatever
 	 * garbage was left in there.
 	 */
-	if (!i915_gem_object_is_shmem(vma->obj) && !prealloc)
+	if (!i915_gem_object_is_shmem(obj) && !prealloc)
 		memset_io(info->screen_base, 0, info->screen_size);
 
 	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
new file mode 100644
index 000000000000..717c3a3237c4
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -0,0 +1,115 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include <drm/drm_fb_helper.h>
+
+#include "gem/i915_gem_lmem.h"
+
+#include "i915_drv.h"
+#include "intel_display_types.h"
+#include "intel_fbdev_fb.h"
+
+struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
+					     struct drm_fb_helper_surface_size *sizes)
+{
+	struct drm_framebuffer *fb;
+	struct drm_device *dev = helper->dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_mode_fb_cmd2 mode_cmd = {};
+	struct drm_i915_gem_object *obj;
+	int size;
+
+	/* we don't do packed 24bpp */
+	if (sizes->surface_bpp == 24)
+		sizes->surface_bpp = 32;
+
+	mode_cmd.width = sizes->surface_width;
+	mode_cmd.height = sizes->surface_height;
+
+	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
+				    DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
+	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
+							  sizes->surface_depth);
+
+	size = mode_cmd.pitches[0] * mode_cmd.height;
+	size = PAGE_ALIGN(size);
+
+	obj = ERR_PTR(-ENODEV);
+	if (HAS_LMEM(dev_priv)) {
+		obj = i915_gem_object_create_lmem(dev_priv, size,
+						  I915_BO_ALLOC_CONTIGUOUS |
+						  I915_BO_ALLOC_USER);
+	} else {
+		/*
+		 * If the FB is too big, just don't use it since fbdev is not very
+		 * important and we should probably use that space with FBC or other
+		 * features.
+		 *
+		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
+		 */
+		if (!(IS_METEORLAKE(dev_priv)) && size * 2 < dev_priv->dsm.usable_size)
+			obj = i915_gem_object_create_stolen(dev_priv, size);
+		if (IS_ERR(obj))
+			obj = i915_gem_object_create_shmem(dev_priv, size);
+	}
+
+	if (IS_ERR(obj)) {
+		drm_err(&dev_priv->drm, "failed to allocate framebuffer (%pe)\n", obj);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	fb = intel_framebuffer_create(obj, &mode_cmd);
+	i915_gem_object_put(obj);
+
+	return fb;
+}
+
+int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
+			     struct drm_i915_gem_object *obj, struct i915_vma *vma)
+{
+	struct i915_gem_ww_ctx ww;
+	void __iomem *vaddr;
+	int ret;
+
+	if (i915_gem_object_is_lmem(obj)) {
+		struct intel_memory_region *mem = obj->mm.region;
+
+		/* Use fbdev's framebuffer from lmem for discrete */
+		info->fix.smem_start =
+			(unsigned long)(mem->io_start +
+					i915_gem_object_get_dma_address(obj, 0));
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
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
new file mode 100644
index 000000000000..a395b2c65d33
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_FBDEV_FB_H__
+#define __INTEL_FBDEV_FB_H__
+
+struct drm_fb_helper;
+struct drm_fb_helper_surface_size;
+struct drm_i915_gem_object;
+struct drm_i915_private;
+struct fb_info;
+struct i915_vma;
+
+struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
+					     struct drm_fb_helper_surface_size *sizes);
+int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
+			     struct drm_i915_gem_object *obj, struct i915_vma *vma);
+
+#endif
-- 
2.34.1

