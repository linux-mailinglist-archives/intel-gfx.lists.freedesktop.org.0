Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 634C5B42B00
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 22:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEEEB10E932;
	Wed,  3 Sep 2025 20:32:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z6kQAtrY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6016510E21A;
 Wed,  3 Sep 2025 20:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756931576; x=1788467576;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fwPhdLwaQkh/rtr3WKf7O4MhWlqn/cPeiywopYHAS7M=;
 b=Z6kQAtrYCctiH3DSMtuVEXbPmxmWVmC+12kyvRg64NuiHukonVMViTeq
 aCvn9O5o8XwTk4zf87+eEs2hMwXJUld0/4Dg5HM6/j5CNE89CDNBP8oVR
 ssqWK6gDbIvo08L0AqK0t3Mwc8VZPqQsPSzIGmlMD2D3Rtyym9N1HEY2i
 o0PaMItaFIYzGySEbm9YkDH7T17vEVUDuurmnkJP32Q7uq18O/VNFOVLg
 yTdocW/fTxIsJduKWCvz/Z0o+604VkMtsCDJNno9O4dLDmUWm833EL4TZ
 p9qa2Ts4F4MOSQlYf7prLE5yAl2ZYRx7/CuN/wD0F9YDOMHqr7zV2WL5u w==;
X-CSE-ConnectionGUID: smE4988qSyuSgw7JzRoNzw==
X-CSE-MsgGUID: 4G2E/FV8SqmUa8h7W+2B6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="46833186"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="46833186"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:55 -0700
X-CSE-ConnectionGUID: 4gVyrAcBTai4L+RtD87X2w==
X-CSE-MsgGUID: moi0SeWZTFOwVPxrje25+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="171582522"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.55])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 8/9] drm/{i915,
 xe}/fbdev: pass struct drm_device to intel_fbdev_fb_fill_info()
Date: Wed,  3 Sep 2025 23:32:05 +0300
Message-ID: <e6f903189fa3e9c93bdf7a2b7f6beb0163477ad3.1756931441.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756931441.git.jani.nikula@intel.com>
References: <cover.1756931441.git.jani.nikula@intel.com>
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
index d7131de5c7ac..8147bc2aeaed 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -332,7 +332,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 
 	obj = intel_fb_bo(&fb->base);
 
-	ret = intel_fbdev_fb_fill_info(display, info, obj, vma);
+	ret = intel_fbdev_fb_fill_info(display->drm, info, obj, vma);
 	if (ret)
 		goto out_unpin;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 1ac62a064936..ef5440fe25f6 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -55,10 +55,10 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
 	/* nop? */
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
@@ -90,7 +90,7 @@ int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info
 
 		vaddr = i915_vma_pin_iomap(vma);
 		if (IS_ERR(vaddr)) {
-			drm_err(display->drm,
+			drm_err(drm,
 				"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
 			ret = PTR_ERR(vaddr);
 			continue;
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index bb0ce3a85ff9..fd0b3775dc1f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -13,12 +13,11 @@ struct drm_gem_object;
 struct drm_mode_fb_cmd2;
 struct fb_info;
 struct i915_vma;
-struct intel_display;
 
 u32 intel_fbdev_fb_pitch_align(u32 stride);
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
 void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
-int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
+int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
 			     struct drm_gem_object *obj, struct i915_vma *vma);
 
 #endif
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 2e8490a8cdb1..32ee96e1425c 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -5,8 +5,6 @@
 
 #include <linux/fb.h>
 
-#include "intel_display_core.h"
-#include "intel_display_types.h"
 #include "intel_fbdev_fb.h"
 #include "xe_bo.h"
 #include "xe_ttm_stolen_mgr.h"
@@ -58,11 +56,11 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
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
2.47.2

