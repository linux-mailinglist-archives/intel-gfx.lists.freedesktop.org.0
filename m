Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5918C21FA
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 12:22:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C6710E5BA;
	Fri, 10 May 2024 10:22:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="InccLHS8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A75B10E5BA;
 Fri, 10 May 2024 10:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715336557; x=1746872557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y8HnPDrvanbMJBoorz0FC2k43boOBfZNoO5g3tqe/uI=;
 b=InccLHS8UXtIX0W/RKDDI1l1OOV0djg7EORoJ72ByUD9N/bkw5ZBhc2l
 ETpOfLiFVCDX/lMrYlvfs7kzGKWoyFxuwUqhbDPdjYQQBA5Of3rdUz0Jl
 IUXAtiFHxA9jYy/6dPeWwz4UGv3mQ4GY2yy3dHtZVqmIPRSuniHRfhugF
 CADsha+OQTxEEE4CUabNHjYuQGc2UfY3EgndJeSUuZEbtwZLUWjsQ7dIJ
 QEzC7/x6IoU+8egl9spgvXRxSqOdxayT4FgtMacG8eb51Df0tErABQNF4
 TU8ZwU5LpD5Fq6cfdzBsFFKTZ9UBmIZi9d9WLkNy+IyX45hoklJMuhu4x g==;
X-CSE-ConnectionGUID: 38o8gQySSwm2X9kddeyU9w==
X-CSE-MsgGUID: pmQvvU8MSNGI1aVwW0dkfA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11189573"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11189573"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 03:22:36 -0700
X-CSE-ConnectionGUID: lvV5MjpjR1eZ7x+boVFwgQ==
X-CSE-MsgGUID: vOxMjh53RES544W0A8QPHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="29515477"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 03:22:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 13:22:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 7/9] drm/i915: Change intel_fbdev_fb_alloc() return type
Date: Fri, 10 May 2024 13:22:33 +0300
Message-ID: <20240510102233.25057-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506125718.26001-8-ville.syrjala@linux.intel.com>
References: <20240506125718.26001-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Change intel_fbdev_fb_alloc() to return struct intel_fb instead
of struct drm_framebuffer. Let's us eliminate some annoying
aliasing variables in the fbdev setup code.

v2: Assing the results to the correct variable (Jani)
    Fix xe's copy

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 9 ++++-----
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 4 ++--
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 9 +++++----
 4 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index bda702c2cab8..4bbbf481bb3a 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -207,13 +207,12 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		intel_fb = ifbdev->fb = NULL;
 	}
 	if (!intel_fb || drm_WARN_ON(dev, !intel_fb_obj(&intel_fb->base))) {
-		struct drm_framebuffer *fb;
 		drm_dbg_kms(&dev_priv->drm,
 			    "no BIOS fb, allocating a new one\n");
-		fb = intel_fbdev_fb_alloc(helper, sizes);
-		if (IS_ERR(fb))
-			return PTR_ERR(fb);
-		intel_fb = ifbdev->fb = to_intel_framebuffer(fb);
+		intel_fb = intel_fbdev_fb_alloc(helper, sizes);
+		if (IS_ERR(intel_fb))
+			return PTR_ERR(intel_fb);
+		ifbdev->fb = intel_fb;
 	} else {
 		drm_dbg_kms(&dev_priv->drm, "re-using BIOS fb\n");
 		prealloc = true;
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 0665f943f65f..497525ef9668 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -11,8 +11,8 @@
 #include "intel_display_types.h"
 #include "intel_fbdev_fb.h"
 
-struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
-					     struct drm_fb_helper_surface_size *sizes)
+struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
+					       struct drm_fb_helper_surface_size *sizes)
 {
 	struct drm_framebuffer *fb;
 	struct drm_device *dev = helper->dev;
@@ -63,7 +63,7 @@ struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	fb = intel_framebuffer_create(obj, &mode_cmd);
 	i915_gem_object_put(obj);
 
-	return fb;
+	return to_intel_framebuffer(fb);
 }
 
 int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index a395b2c65d33..4832fe688fbf 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -13,8 +13,8 @@ struct drm_i915_private;
 struct fb_info;
 struct i915_vma;
 
-struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
-					     struct drm_fb_helper_surface_size *sizes);
+struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
+					       struct drm_fb_helper_surface_size *sizes);
 int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
 			     struct drm_i915_gem_object *obj, struct i915_vma *vma);
 
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 9e4bcfdbc7e5..f6bf5896ff1b 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -13,8 +13,8 @@
 #include "i915_drv.h"
 #include "intel_display_types.h"
 
-struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
-			 struct drm_fb_helper_surface_size *sizes)
+struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
+					       struct drm_fb_helper_surface_size *sizes)
 {
 	struct drm_framebuffer *fb;
 	struct drm_device *dev = helper->dev;
@@ -70,10 +70,11 @@ struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	}
 
 	drm_gem_object_put(intel_bo_to_drm_bo(obj));
-	return fb;
+
+	return to_intel_framebuffer(fb);
 
 err:
-	return fb;
+	return ERR_CAST(fb);
 }
 
 int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
-- 
2.43.2

