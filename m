Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7F0B83923
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 10:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0688810E688;
	Thu, 18 Sep 2025 08:41:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UCFET90f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BED110E680;
 Thu, 18 Sep 2025 08:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758184894; x=1789720894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uhTURzX4caeQMTRwDbmjXIbQtSgVp8tP0fI6W0dlAS4=;
 b=UCFET90fHmYHnqhb9qHXIKvCDOvtvzyG4DHHjbPU5qD+fSUr+veqmVIB
 AIe8MKg7eG3CklV6LcaRtRHvF+dUsenJCVqoerBUd7IrE9ljVsRoVYi2J
 f+lhdaxgSL6zL9PLYgk9u2011EjHLv9uYWTLY0aHfU4xPQiBGCPKoh72l
 XsHyXk2iqTNcAaOsswPaTPkSD+4xPWFgYYQaALuo7vINOfZM9SQKHduj4
 EZJXmNTLN2/K30u/IK6+ABRIPJAJ/CEsn3LFKQBlLmk58zhtDCtQwmjfC
 jvaLT01cXO3pbgw+ZCVR+TuLn3aKziTCeAezPy2jzmaP+OgW9SQBPiwkR w==;
X-CSE-ConnectionGUID: ua+RCn4uQ3u7Of5d1/+J3w==
X-CSE-MsgGUID: a7A2nV6tQjyrNX5jLeaS8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71932960"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="71932960"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:34 -0700
X-CSE-ConnectionGUID: zUZDCE6qTHS70sxJqmCLdw==
X-CSE-MsgGUID: wy6pNzczRtekl9m0J07yNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="174760721"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 05/10] drm/i915/fbdev: abstract bo creation
Date: Thu, 18 Sep 2025 11:40:55 +0300
Message-ID: <cb3999ceae43d56e075c28a1f4581169ce457ab0.1758184771.git.jani.nikula@intel.com>
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

Separate fbdev bo creation into a separate function
intel_fbdev_fb_bo_create().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 33 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  1 +
 2 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 685612e6afc5..bfd05fd34348 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -13,17 +13,11 @@
 #include "intel_fb.h"
 #include "intel_fbdev_fb.h"
 
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
@@ -49,17 +43,36 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
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
 	if (IS_ERR(fb)) {
-		i915_gem_object_put(obj);
+		drm_gem_object_put(obj);
 		goto err;
 	}
 
-	i915_gem_object_put(obj);
+	drm_gem_object_put(obj);
 
 	return to_intel_framebuffer(fb);
 err:
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index 83454ffbf79c..6a4ba40d5831 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -13,6 +13,7 @@ struct fb_info;
 struct i915_vma;
 struct intel_display;
 
+struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_mode_fb_cmd2 *mode_cmd);
 int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
-- 
2.47.3

