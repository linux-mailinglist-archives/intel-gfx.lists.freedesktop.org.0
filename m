Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 324DDA2B1BC
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 19:55:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C948910E91F;
	Thu,  6 Feb 2025 18:55:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CZop2OzH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EBF610E91F;
 Thu,  6 Feb 2025 18:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738868146; x=1770404146;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uysPXBNARsNYYd/GTlZsZQb9WHdIe0EXTM4OiudHvZ8=;
 b=CZop2OzHLkBOoXpBBTF/nxNVJRMJtCeZrox+s/K6Q7dhUs5bz8llq9n5
 Z4AaYOlkxO7xJA5Ak7V5ph8fokHfLPIL1tuR0zSVoWNs73ygXbONCymHy
 mbsW1Oci42ILxBqGcOADnx2pQDe99H5MacTGKA6IadKQd/hGVWXhqDBC/
 h39evE/UglBC/RjSmfFV/GC4swNyNtu9u3JqIsGR1oFu1zYNuKYRLDkuP
 C66Gzx8COActfdiF/NQY9ulLspFtf9eGnHh0OgXI5RV4IN4/5LRTpbFrj
 D5WBMBsGNg+GUleVgJCFkFTjZyxKD5jyFeXFmBuPJKSLcTbZJ+HS8v1Pl w==;
X-CSE-ConnectionGUID: c6kB5sBPSImQfbwsRZoAVw==
X-CSE-MsgGUID: CQzvfS+4SgiZNqycmIwhEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39395042"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="39395042"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 10:55:46 -0800
X-CSE-ConnectionGUID: s9/vp8oLRIKOebjbWwltBw==
X-CSE-MsgGUID: EygLZls8SHWXyMnG25gD4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="111499545"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Feb 2025 10:55:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Feb 2025 20:55:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 03/12] drm/i915: Decouple intel_fb_bo.h interfaces from
 driver specific types
Date: Thu,  6 Feb 2025 20:55:24 +0200
Message-ID: <20250206185533.32306-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
References: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
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

Make the intel_fb_bo.h interfaces operated purely in base
drm_ types so that each driver (i915 and xe) doesn't have to
know about each other, or the display stuff.

v2: s/dev/drm/ (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c    | 5 ++---
 drivers/gpu/drm/i915/display/intel_fb_bo.c | 5 +++--
 drivers/gpu/drm/i915/display/intel_fb_bo.h | 8 ++++----
 drivers/gpu/drm/xe/display/intel_fb_bo.c   | 7 ++++---
 4 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 42c46376daae..872c3fd62846 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2126,7 +2126,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	int ret = -EINVAL;
 	int i;
 
-	ret = intel_fb_bo_framebuffer_init(intel_fb, obj, mode_cmd);
+	ret = intel_fb_bo_framebuffer_init(fb, obj, mode_cmd);
 	if (ret)
 		return ret;
 
@@ -2242,9 +2242,8 @@ intel_user_framebuffer_create(struct drm_device *dev,
 	struct drm_framebuffer *fb;
 	struct drm_gem_object *obj;
 	struct drm_mode_fb_cmd2 mode_cmd = *user_mode_cmd;
-	struct drm_i915_private *i915 = to_i915(dev);
 
-	obj = intel_fb_bo_lookup_valid_bo(i915, filp, &mode_cmd);
+	obj = intel_fb_bo_lookup_valid_bo(dev, filp, &mode_cmd);
 	if (IS_ERR(obj))
 		return ERR_CAST(obj);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
index 810ca6ff8640..ecc95beaf6df 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
@@ -16,7 +16,7 @@ void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj)
 	/* Nothing to do for i915 */
 }
 
-int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
+int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
 				 struct drm_gem_object *_obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
 {
@@ -76,10 +76,11 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 }
 
 struct drm_gem_object *
-intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
+intel_fb_bo_lookup_valid_bo(struct drm_device *drm,
 			    struct drm_file *filp,
 			    const struct drm_mode_fb_cmd2 *mode_cmd)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
 	struct drm_i915_gem_object *obj;
 
 	obj = i915_gem_object_lookup(filp, mode_cmd->handles[0]);
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.h b/drivers/gpu/drm/i915/display/intel_fb_bo.h
index e71acd1bcb24..eefcb05a99f0 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.h
@@ -6,20 +6,20 @@
 #ifndef __INTEL_FB_BO_H__
 #define __INTEL_FB_BO_H__
 
+struct drm_device;
 struct drm_file;
+struct drm_framebuffer;
 struct drm_gem_object;
-struct drm_i915_private;
 struct drm_mode_fb_cmd2;
-struct intel_framebuffer;
 
 void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj);
 
-int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
+int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
 				 struct drm_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd);
 
 struct drm_gem_object *
-intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
+intel_fb_bo_lookup_valid_bo(struct drm_device *drm,
 			    struct drm_file *filp,
 			    const struct drm_mode_fb_cmd2 *user_mode_cmd);
 
diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
index 4d209ebc26c2..3f8e8d31e800 100644
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
@@ -24,7 +24,7 @@ void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj)
 	xe_bo_put(bo);
 }
 
-int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
+int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
 				 struct drm_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
 {
@@ -68,10 +68,11 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 	return ret;
 }
 
-struct drm_gem_object *intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
+struct drm_gem_object *intel_fb_bo_lookup_valid_bo(struct drm_device *drm,
 						   struct drm_file *filp,
 						   const struct drm_mode_fb_cmd2 *mode_cmd)
 {
+	struct xe_device *xe = to_xe_device(drm);
 	struct xe_bo *bo;
 	struct drm_gem_object *gem = drm_gem_object_lookup(filp, mode_cmd->handles[0]);
 
@@ -80,7 +81,7 @@ struct drm_gem_object *intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915
 
 	bo = gem_to_xe_bo(gem);
 	/* Require vram placement or dma-buf import */
-	if (IS_DGFX(i915) &&
+	if (IS_DGFX(xe) &&
 	    !xe_bo_can_migrate(bo, XE_PL_VRAM0) &&
 	    bo->ttm.type != ttm_bo_type_sg) {
 		drm_gem_object_put(gem);
-- 
2.45.3

