Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D53B8392F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 10:41:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7B2D10E684;
	Thu, 18 Sep 2025 08:41:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O2+4ZewP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B5F10E684;
 Thu, 18 Sep 2025 08:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758184915; x=1789720915;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q+UTAsNjJswLtzWtK6xEo5yBMV9lkfieSfXF4JBbVrc=;
 b=O2+4ZewPQpbq7/X4WaZIIG8Bt4YWDv4iUtJ8MKTyMzMK3eSENziD4QVi
 Q1DE2A8D6RLLRKKglVw3BNk+Hg7scsM6PFEJ7G5CP8rOGDBLJnkBYH064
 Gd9isuwnKEMXiCjgy62OyTm4zwP7hYexKYue2r8exc89ZUOnYFYJ9856t
 nT5BoQ/7gQ6A5wB1wW28CK+Yx0KKaOVhTX3WdTXguwdbDwgTf9li7g9Ke
 VgS6yIa/biZR/naF1X47pljglkB0Ft15RVntfmc3OZDnswLnjrNZbdvF4
 V4CaiqX37qF+VHOtDmSzO7sHitDONYqhT2WE95ub46S7KUvN4okJoP5pT A==;
X-CSE-ConnectionGUID: 9DjKozIxRdWbvJDH9XmVJQ==
X-CSE-MsgGUID: vvAbTvhQTMGdThel7aKMmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="77946256"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="77946256"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:54 -0700
X-CSE-ConnectionGUID: MZZQlVpnRXaJ9lzMgUzPIA==
X-CSE-MsgGUID: 3Fu5xUaZTk+4a6P4Ad/i8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="206427985"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 09/10] drm/{i915,
 xe}/fbdev: pass struct drm_device to intel_fbdev_fb_fill_info()
Date: Thu, 18 Sep 2025 11:40:59 +0300
Message-ID: <1f633154f5f3106f55d7525a711bf347f5635ea7.1758184771.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758184771.git.jani.nikula@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

This code is in fact driver core rather than display specific. Pass
struct drm_device instead of struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 3 +--
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 6 ++----
 4 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 4bc9a053ca40..3fbdf75415cc 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -332,7 +332,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 
 	obj = intel_fb_bo(&fb->base);
 
-	ret = intel_fbdev_fb_fill_info(display, info, obj, vma);
+	ret = intel_fbdev_fb_fill_info(display->drm, info, obj, vma);
 	if (ret)
 		goto out_unpin;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index c802a4b2bfc7..8af409bff0f0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -50,10 +50,10 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
 	drm_gem_object_put(obj);
 }
 
-int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
+int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
 			     struct drm_gem_object *_obj, struct i915_vma *vma)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct drm_i915_private *i915 = to_i915(drm);
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
 	struct i915_gem_ww_ctx ww;
 	void __iomem *vaddr;
@@ -85,7 +85,7 @@ int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info
 
 		vaddr = i915_vma_pin_iomap(vma);
 		if (IS_ERR(vaddr)) {
-			drm_err(display->drm,
+			drm_err(drm,
 				"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
 			ret = PTR_ERR(vaddr);
 			continue;
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index 3b7b59d664b5..1fa44ed28543 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -11,11 +11,10 @@ struct drm_gem_object;
 struct drm_mode_fb_cmd2;
 struct fb_info;
 struct i915_vma;
-struct intel_display;
 
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
 void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
-int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
+int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
 			     struct drm_gem_object *obj, struct i915_vma *vma);
 
 #endif
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 37681503edb1..35a5b07eeba4 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -5,8 +5,6 @@
 
 #include <linux/fb.h>
 
-#include "intel_display_core.h"
-#include "intel_display_types.h"
 #include "intel_fbdev_fb.h"
 #include "xe_bo.h"
 #include "xe_ttm_stolen_mgr.h"
@@ -53,11 +51,11 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
 	xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
 }
 
-int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
+int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
 			     struct drm_gem_object *_obj, struct i915_vma *vma)
 {
 	struct xe_bo *obj = gem_to_xe_bo(_obj);
-	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
+	struct pci_dev *pdev = to_pci_dev(drm->dev);
 
 	if (!(obj->flags & XE_BO_FLAG_SYSTEM)) {
 		if (obj->flags & XE_BO_FLAG_STOLEN)
-- 
2.47.3

