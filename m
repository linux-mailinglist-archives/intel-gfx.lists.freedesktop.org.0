Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CECB42AF9
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 22:32:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8382D10E92D;
	Wed,  3 Sep 2025 20:32:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m1UbNFYs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6358710E92D;
 Wed,  3 Sep 2025 20:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756931555; x=1788467555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eC2Ac1kkDw7dk4+zQZzAgHmd/oselVydx4NDBi4fDl4=;
 b=m1UbNFYs0uxQrwO53zpMh3O3mHOlhCd7V0yqhH1qL9Xne+4qq+K4lsxZ
 RyIlW82c1aEFwY9bA0lsIFF1pcdCPPbDfc90ilsXmDJlTZ/KO89UBRAI0
 kJYJzvBltzAgifF45NVSPHcpSjuJFBf3abU/DO9VF8rSe+itPyifvmXVb
 KWwiuOIy4uKv6OnF+lOc20H8J/XrZvZCNWh0Nk4PD5FnQWSg06/RV8S19
 UL+k7nWvhHX8YHGTC6X+8FIyqCjiqPhXJxAS9p3+EljFPWl1IlSEKBnOr
 UPojN9nGVOLsmmCmJNes0MZjWhhLh3vF8Znm7NKusyDQs8fnY70J1AmN4 w==;
X-CSE-ConnectionGUID: bgmUwUm1TdGJYXkNU7DtVA==
X-CSE-MsgGUID: ZS6MRcsnTdGJwpmKLlMofQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="46833132"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="46833132"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:34 -0700
X-CSE-ConnectionGUID: 53X0NaubTlSlFHr9fiTWkQ==
X-CSE-MsgGUID: uV2v3hWjSNO5T9bG3WPBFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="171582466"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.55])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/9] drm/i915/fbdev: abstract bo creation
Date: Wed,  3 Sep 2025 23:32:01 +0300
Message-ID: <84cb65573c4ba7460850f0069952a50d26c95384.1756931441.git.jani.nikula@intel.com>
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

Separate fbdev bo creation into a separate function
intel_fbdev_fb_bo_create().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 33 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  1 +
 2 files changed, 25 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 4710859718a0..3837973b0d25 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -18,17 +18,11 @@ u32 intel_fbdev_fb_pitch_align(u32 stride)
 	return ALIGN(stride, 64);
 }
 
-struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
-					       struct drm_mode_fb_cmd2 *mode_cmd)
+struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
 {
 	struct intel_display *display = to_intel_display(drm);
 	struct drm_i915_private *dev_priv = to_i915(drm);
-	struct drm_framebuffer *fb;
 	struct drm_i915_gem_object *obj;
-	int size;
-
-	size = mode_cmd->pitches[0] * mode_cmd->height;
-	size = PAGE_ALIGN(size);
 
 	obj = ERR_PTR(-ENODEV);
 	if (HAS_LMEM(dev_priv)) {
@@ -54,14 +48,35 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 		return ERR_PTR(-ENOMEM);
 	}
 
-	fb = intel_framebuffer_create(intel_bo_to_drm_bo(obj),
+	return &obj->base;
+}
+
+struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
+					       struct drm_mode_fb_cmd2 *mode_cmd)
+{
+	struct drm_framebuffer *fb;
+	struct drm_gem_object *obj;
+	int size;
+
+	size = mode_cmd->pitches[0] * mode_cmd->height;
+	size = PAGE_ALIGN(size);
+
+	obj = intel_fbdev_fb_bo_create(drm, size);
+	if (IS_ERR(obj)) {
+		fb = ERR_CAST(obj);
+		goto err;
+	}
+
+	fb = intel_framebuffer_create(obj,
 				      drm_get_format_info(drm,
 							  mode_cmd->pixel_format,
 							  mode_cmd->modifier[0]),
 				      mode_cmd);
-	i915_gem_object_put(obj);
+	drm_gem_object_put(obj);
 
 	return to_intel_framebuffer(fb);
+err:
+	return ERR_CAST(fb);
 }
 
 int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index 11c2d4b54ab0..b10c4635bf46 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -16,6 +16,7 @@ struct i915_vma;
 struct intel_display;
 
 u32 intel_fbdev_fb_pitch_align(u32 stride);
+struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_mode_fb_cmd2 *mode_cmd);
 int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
-- 
2.47.2

