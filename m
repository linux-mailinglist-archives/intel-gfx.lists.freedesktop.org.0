Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 738DF97B2B6
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B69F10E495;
	Tue, 17 Sep 2024 16:14:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lQNl6MJc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9D1B10E495;
 Tue, 17 Sep 2024 16:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589675; x=1758125675;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qGHl0hyZ2luoKtavmwFUIO7+NbqZkzk68+o1jgQcoh8=;
 b=lQNl6MJcbK+FSGTEp7fZ8bHEoAgZnNomjyJSMNW5Ep41P/Xz/Uy3LJ0Z
 NSMzacCAlaGg5ynSwvmx78ZbvqlBIHwB/tOk7JoACLcbXmQ9J4pbtqM1x
 vUdBUjlxk4udI80+6Tra1sKdXWDNt4lR6AuNjuwKx/yAMjFmvRk6MXTPA
 w0eioxJeYfb8oTRA//1miVAAJ9WE0I/RQlF8UtWJmu2HWuyiE3sdzveC0
 HokSe1yXRG3p8+DqzmagaiuVd8xcDktX3oCraS3bzoAVmHc966/WqhqKa
 WEE1pOaTW1yqEXLqxk63RLckuVKuBvW4taG2uKEYJrSJq5vtfYMCEPOqV A==;
X-CSE-ConnectionGUID: b3VstG/UTpCUJwjdZ9inpw==
X-CSE-MsgGUID: vU582rwUTVWGWaOLDlPEjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="24990179"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="24990179"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:35 -0700
X-CSE-ConnectionGUID: uV/tMglaT5iLUBjXGtXprA==
X-CSE-MsgGUID: jgv8WTaVSyq6RrUpOG1XGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69349021"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 04/22] drm/i915/fbdev: convert intel_fbdev.c to struct
 drm_gem_object
Date: Tue, 17 Sep 2024 19:13:43 +0300
Message-Id: <246b802bdbcd01a970ff8255d11db337f7b47b39.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
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

Prefer the driver agnostic struct drm_gem_object over i915 specific
struct drm_i915_gem_object. Add new intel_bo_* functions as needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bo.c       | 11 ++++++++
 drivers/gpu/drm/i915/display/intel_bo.h       |  3 ++
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 28 ++++++++-----------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  3 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  4 +--
 drivers/gpu/drm/xe/display/intel_bo.c         | 11 ++++++++
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   |  3 +-
 7 files changed, 43 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index 5708d9bab1ab..c0d050cec4ad 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2024 Intel Corporation */
 
+#include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_object.h"
 #include "intel_bo.h"
 
@@ -14,7 +15,17 @@ bool intel_bo_is_userptr(struct drm_gem_object *obj)
 	return i915_gem_object_is_userptr(to_intel_bo(obj));
 }
 
+bool intel_bo_is_shmem(struct drm_gem_object *obj)
+{
+	return i915_gem_object_is_shmem(to_intel_bo(obj));
+}
+
 void intel_bo_flush_if_display(struct drm_gem_object *obj)
 {
 	i915_gem_object_flush_if_display(to_intel_bo(obj));
 }
+
+int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
+{
+	return i915_gem_fb_mmap(to_intel_bo(obj), vma);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
index 0fa29211a9d0..410f285d2ea1 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -7,9 +7,12 @@
 #include <linux/types.h>
 
 struct drm_gem_object;
+struct vm_area_struct;
 
 bool intel_bo_is_tiled(struct drm_gem_object *obj);
 bool intel_bo_is_userptr(struct drm_gem_object *obj);
+bool intel_bo_is_shmem(struct drm_gem_object *obj);
 void intel_bo_flush_if_display(struct drm_gem_object *obj);
+int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma);
 
 #endif /* __INTEL_BO__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 56bf8641459b..00852ff5b247 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -41,13 +41,11 @@
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_gem.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 
-#include "gem/i915_gem_mman.h"
-#include "gem/i915_gem_object.h"
-#include "gem/i915_gem_object_types.h"
-
 #include "i915_drv.h"
+#include "intel_bo.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
@@ -130,10 +128,9 @@ static int intel_fbdev_pan_display(struct fb_var_screeninfo *var,
 static int intel_fbdev_mmap(struct fb_info *info, struct vm_area_struct *vma)
 {
 	struct intel_fbdev *fbdev = to_intel_fbdev(info->par);
-	struct drm_gem_object *bo = drm_gem_fb_get_obj(&fbdev->fb->base, 0);
-	struct drm_i915_gem_object *obj = to_intel_bo(bo);
+	struct drm_gem_object *obj = drm_gem_fb_get_obj(&fbdev->fb->base, 0);
 
-	return i915_gem_fb_mmap(obj, vma);
+	return intel_bo_fb_mmap(obj, vma);
 }
 
 static void intel_fbdev_fb_destroy(struct fb_info *info)
@@ -188,7 +185,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	struct i915_vma *vma;
 	unsigned long flags = 0;
 	bool prealloc = false;
-	struct drm_i915_gem_object *obj;
+	struct drm_gem_object *obj;
 	int ret;
 
 	mutex_lock(&ifbdev->hpd_lock);
@@ -210,7 +207,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		drm_framebuffer_put(&fb->base);
 		fb = NULL;
 	}
-	if (!fb || drm_WARN_ON(dev, !intel_fb_obj(&fb->base))) {
+	if (!fb || drm_WARN_ON(dev, !intel_fb_bo(&fb->base))) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "no BIOS fb, allocating a new one\n");
 		fb = intel_fbdev_fb_alloc(helper, sizes);
@@ -248,7 +245,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 
 	info->fbops = &intelfb_ops;
 
-	obj = intel_fb_obj(&fb->base);
+	obj = intel_fb_bo(&fb->base);
 
 	ret = intel_fbdev_fb_fill_info(dev_priv, info, obj, vma);
 	if (ret)
@@ -260,7 +257,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	 * If the object is stolen however, it will be full of whatever
 	 * garbage was left in there.
 	 */
-	if (!i915_gem_object_is_shmem(obj) && !prealloc)
+	if (!intel_bo_is_shmem(obj) && !prealloc)
 		memset_io(info->screen_base, 0, info->screen_size);
 
 	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */
@@ -324,8 +321,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 			to_intel_plane(crtc->base.primary);
 		struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
-		struct drm_i915_gem_object *obj =
-			intel_fb_obj(plane_state->uapi.fb);
+		struct drm_gem_object *obj = intel_fb_bo(plane_state->uapi.fb);
 
 		if (!crtc_state->uapi.active) {
 			drm_dbg_kms(&i915->drm,
@@ -341,12 +337,12 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 			continue;
 		}
 
-		if (intel_bo_to_drm_bo(obj)->size > max_size) {
+		if (obj->size > max_size) {
 			drm_dbg_kms(&i915->drm,
 				    "found possible fb from [PLANE:%d:%s]\n",
 				    plane->base.base.id, plane->base.name);
 			fb = to_intel_framebuffer(plane_state->uapi.fb);
-			max_size = intel_bo_to_drm_bo(obj)->size;
+			max_size = obj->size;
 		}
 	}
 
@@ -534,7 +530,7 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
 	 * full of whatever garbage was left in there.
 	 */
 	if (state == FBINFO_STATE_RUNNING &&
-	    !i915_gem_object_is_shmem(intel_fb_obj(&ifbdev->fb->base)))
+	    !intel_bo_is_shmem(intel_fb_bo(&ifbdev->fb->base)))
 		memset_io(info->screen_base, 0, info->screen_size);
 
 	drm_fb_helper_set_suspend(&ifbdev->helper, state);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 497525ef9668..77df36876ed5 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -67,8 +67,9 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 }
 
 int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
-			     struct drm_i915_gem_object *obj, struct i915_vma *vma)
+			     struct drm_gem_object *_obj, struct i915_vma *vma)
 {
+	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
 	struct i915_gem_ww_ctx ww;
 	void __iomem *vaddr;
 	int ret;
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index 4832fe688fbf..e502ae375fc0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -8,7 +8,7 @@
 
 struct drm_fb_helper;
 struct drm_fb_helper_surface_size;
-struct drm_i915_gem_object;
+struct drm_gem_object;
 struct drm_i915_private;
 struct fb_info;
 struct i915_vma;
@@ -16,6 +16,6 @@ struct i915_vma;
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 					       struct drm_fb_helper_surface_size *sizes);
 int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
-			     struct drm_i915_gem_object *obj, struct i915_vma *vma);
+			     struct drm_gem_object *obj, struct i915_vma *vma);
 
 #endif
diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
index f57b684050da..2549f88115df 100644
--- a/drivers/gpu/drm/xe/display/intel_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_bo.c
@@ -3,6 +3,7 @@
 
 #include <drm/drm_gem.h>
 
+#include "xe_bo.h"
 #include "intel_bo.h"
 
 bool intel_bo_is_tiled(struct drm_gem_object *obj)
@@ -17,6 +18,16 @@ bool intel_bo_is_userptr(struct drm_gem_object *obj)
 	return false;
 }
 
+bool intel_bo_is_shmem(struct drm_gem_object *obj)
+{
+	return false;
+}
+
 void intel_bo_flush_if_display(struct drm_gem_object *obj)
 {
 }
+
+int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
+{
+	return drm_gem_prime_mmap(obj, vma);
+}
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 99499d6c0256..48478a6bed6f 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -79,8 +79,9 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 }
 
 int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
-			      struct drm_i915_gem_object *obj, struct i915_vma *vma)
+			      struct drm_gem_object *_obj, struct i915_vma *vma)
 {
+	struct xe_bo *obj = gem_to_xe_bo(_obj);
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 
 	if (!(obj->flags & XE_BO_FLAG_SYSTEM)) {
-- 
2.39.2

