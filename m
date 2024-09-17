Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CF297B2B9
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:14:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E559110E4A2;
	Tue, 17 Sep 2024 16:14:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MIjYO5g8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F34910E4AF;
 Tue, 17 Sep 2024 16:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589695; x=1758125695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kaR3rXeouImasaZgaKAmuc7ZtB8YdyxqCmwKD1sVHGI=;
 b=MIjYO5g8HjM7S3xI1DgPoMwpfeftkzaLpBUHVP8gLUL9umsJu8LQlSbl
 Ykc2FpRZjeGsiqqxXqdgHRwDSUQcTFIrNhTDYfSRWVJJ8KdEeDhGOn1Bf
 FlBjwVp6KG9q7c9R0lQutH1KbEes2wJxnHEiFoYnAkLumAGOSkb94xod+
 afx+jmnp/CCtGsWmDvmEQM8pLLRcmcVdDpa0GfGI4T34Oykmt4YsxZlxZ
 INoUYSK3vdq03DROPvHbsw9ABjLag7EF+KJV4H23fly6r387R9VD945vW
 w5EL/uWGWpU9PHM75OKQs92bYzx1VQTqrQp/pw3hfVIC6OtxXfq9Z92+d w==;
X-CSE-ConnectionGUID: KgfuCFJkQNeD/CNvmIBnow==
X-CSE-MsgGUID: pgjA3rBVSTmQi4+dEAVUkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="42933963"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="42933963"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:55 -0700
X-CSE-ConnectionGUID: uIfLl73uS+ipCxhfBQECeg==
X-CSE-MsgGUID: H/slOuk5QKKKU/c8IHu+tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69717918"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 07/22] drm/i915/fb: convert intel_fb_bo_lookup_valid_bo() to
 struct drm_gem_object
Date: Tue, 17 Sep 2024 19:13:46 +0300
Message-Id: <645307ea7bf858d131ecdeff6ee9c9b99ae00526.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
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

Prefer the driver agnostic struct drm_gem_object over i915 specific
struct drm_i915_gem_object.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c    |  6 +++---
 drivers/gpu/drm/i915/display/intel_fb_bo.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_fb_bo.h |  5 +++--
 drivers/gpu/drm/xe/display/intel_fb_bo.c   | 12 ++++++------
 drivers/gpu/drm/xe/display/intel_fb_bo.h   |  9 +++++----
 5 files changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index d863550021a0..b705ae05c73e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2086,7 +2086,7 @@ intel_user_framebuffer_create(struct drm_device *dev,
 			      const struct drm_mode_fb_cmd2 *user_mode_cmd)
 {
 	struct drm_framebuffer *fb;
-	struct drm_i915_gem_object *obj;
+	struct drm_gem_object *obj;
 	struct drm_mode_fb_cmd2 mode_cmd = *user_mode_cmd;
 	struct drm_i915_private *i915 = to_i915(dev);
 
@@ -2094,8 +2094,8 @@ intel_user_framebuffer_create(struct drm_device *dev,
 	if (IS_ERR(obj))
 		return ERR_CAST(obj);
 
-	fb = intel_framebuffer_create(obj, &mode_cmd);
-	drm_gem_object_put(intel_bo_to_drm_bo(obj));
+	fb = intel_framebuffer_create(to_intel_bo(obj), &mode_cmd);
+	drm_gem_object_put(obj);
 
 	return fb;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
index 4be09541e509..c9a332afa601 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
@@ -74,7 +74,7 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 	return 0;
 }
 
-struct drm_i915_gem_object *
+struct drm_gem_object *
 intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
 			    struct drm_file *filp,
 			    const struct drm_mode_fb_cmd2 *mode_cmd)
@@ -93,5 +93,5 @@ intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
 		return ERR_PTR(-EREMOTE);
 	}
 
-	return obj;
+	return intel_bo_to_drm_bo(obj);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.h b/drivers/gpu/drm/i915/display/intel_fb_bo.h
index 232bf898b013..e7f4e57e8964 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.h
@@ -7,9 +7,10 @@
 #define __INTEL_FB_BO_H__
 
 struct drm_file;
-struct drm_mode_fb_cmd2;
+struct drm_gem_object;
 struct drm_i915_gem_object;
 struct drm_i915_private;
+struct drm_mode_fb_cmd2;
 struct intel_framebuffer;
 
 void intel_fb_bo_framebuffer_fini(struct drm_i915_gem_object *obj);
@@ -18,7 +19,7 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 				 struct drm_i915_gem_object *obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd);
 
-struct drm_i915_gem_object *
+struct drm_gem_object *
 intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
 			    struct drm_file *filp,
 			    const struct drm_mode_fb_cmd2 *user_mode_cmd);
diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
index 63ce97cc4cfe..a973106d9e8c 100644
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
@@ -65,11 +65,11 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 	return ret;
 }
 
-struct xe_bo *intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
-					  struct drm_file *filp,
-					  const struct drm_mode_fb_cmd2 *mode_cmd)
+struct drm_gem_object *intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
+						   struct drm_file *filp,
+						   const struct drm_mode_fb_cmd2 *mode_cmd)
 {
-	struct drm_i915_gem_object *bo;
+	struct xe_bo *bo;
 	struct drm_gem_object *gem = drm_gem_object_lookup(filp, mode_cmd->handles[0]);
 
 	if (!gem)
@@ -78,11 +78,11 @@ struct xe_bo *intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
 	bo = gem_to_xe_bo(gem);
 	/* Require vram placement or dma-buf import */
 	if (IS_DGFX(i915) &&
-	    !xe_bo_can_migrate(gem_to_xe_bo(gem), XE_PL_VRAM0) &&
+	    !xe_bo_can_migrate(bo, XE_PL_VRAM0) &&
 	    bo->ttm.type != ttm_bo_type_sg) {
 		drm_gem_object_put(gem);
 		return ERR_PTR(-EREMOTE);
 	}
 
-	return bo;
+	return gem;
 }
diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.h b/drivers/gpu/drm/xe/display/intel_fb_bo.h
index 5d365b925b7a..430acca554fb 100644
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.h
+++ b/drivers/gpu/drm/xe/display/intel_fb_bo.h
@@ -7,8 +7,9 @@
 #define __INTEL_FB_BO_H__
 
 struct drm_file;
-struct drm_mode_fb_cmd2;
+struct drm_gem_object;
 struct drm_i915_private;
+struct drm_mode_fb_cmd2;
 struct intel_framebuffer;
 struct xe_bo;
 
@@ -17,8 +18,8 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 				 struct xe_bo *bo,
 				 struct drm_mode_fb_cmd2 *mode_cmd);
 
-struct xe_bo *intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
-					  struct drm_file *filp,
-					  const struct drm_mode_fb_cmd2 *mode_cmd);
+struct drm_gem_object *intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
+						   struct drm_file *filp,
+						   const struct drm_mode_fb_cmd2 *mode_cmd);
 
 #endif
-- 
2.39.2

