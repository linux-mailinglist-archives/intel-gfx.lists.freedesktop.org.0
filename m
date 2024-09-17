Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BDF97B2B8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45B8710E4AA;
	Tue, 17 Sep 2024 16:14:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hY9GVQcX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 478FA10E4AC;
 Tue, 17 Sep 2024 16:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589689; x=1758125689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B3ZIWLMFmu/ipF4jV44uYAF2E+9yKkbnBGy4z61vevs=;
 b=hY9GVQcX/IRznrhsc9AqJqCty/EVV87snZHxxeg3ygSjS39oSOUi1Otx
 zIcqZBredA8B6yQHjBE49tZ6XX7RfpoDbOYPqpH1RNYzbhnYfFRDeVMkt
 HMA8aMlDPPsXvdLaD7POQuFEp+Y3zM/5P2CWJsbR5dx0UEbrgAVaigo5v
 VlgvkHXYRZi+ZGF9bWxyXAbFnjU8QJupjnoKDSM1s6Bcbp3vuWdfpPg6w
 tpRnLlqzqCUEWwTeiQBovzL9GkCdemOqhf693yZjknmwBIndHFKCPwe9y
 /K1LaPP0D5MTATmZ3ZgO7FTOF1jr+aZx67eHyCANfe5VhfHdOM0pCa4ok g==;
X-CSE-ConnectionGUID: P+jjO3nDTGG5FR/x0tk41Q==
X-CSE-MsgGUID: Lhp3+YqATb+VZkY3qdVP/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="42933939"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="42933939"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:48 -0700
X-CSE-ConnectionGUID: S1xV4z2LTuqLzwUFVpy/wA==
X-CSE-MsgGUID: UmrcxHySRQCqHNFM3MGfQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69717904"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 06/22] drm/i915/fb: convert intel_framebuffer_init() to struct
 drm_gem_object
Date: Tue, 17 Sep 2024 19:13:45 +0300
Message-Id: <1b14bb0719c172304f38dfe59ea7240b3f42ed73.1726589119.git.jani.nikula@intel.com>
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
 drivers/gpu/drm/i915/display/intel_fb.c            | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_fb.h            |  2 +-
 drivers/gpu/drm/i915/display/intel_plane_initial.c |  2 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c      |  2 +-
 4 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index eb8dc3dd21ee..d863550021a0 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1963,20 +1963,20 @@ static const struct drm_framebuffer_funcs intel_fb_funcs = {
 };
 
 int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
-			   struct drm_i915_gem_object *obj,
+			   struct drm_gem_object *obj,
 			   struct drm_mode_fb_cmd2 *mode_cmd)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_bo_to_drm_bo(obj)->dev);
+	struct drm_i915_private *dev_priv = to_i915(obj->dev);
 	struct drm_framebuffer *fb = &intel_fb->base;
 	u32 max_stride;
 	int ret = -EINVAL;
 	int i;
 
-	ret = intel_fb_bo_framebuffer_init(intel_fb, obj, mode_cmd);
+	ret = intel_fb_bo_framebuffer_init(intel_fb, to_intel_bo(obj), mode_cmd);
 	if (ret)
 		return ret;
 
-	intel_fb->frontbuffer = intel_frontbuffer_get(obj);
+	intel_fb->frontbuffer = intel_frontbuffer_get(to_intel_bo(obj));
 	if (!intel_fb->frontbuffer) {
 		ret = -ENOMEM;
 		goto err;
@@ -2042,7 +2042,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			}
 		}
 
-		fb->obj[i] = intel_bo_to_drm_bo(obj);
+		fb->obj[i] = obj;
 	}
 
 	ret = intel_fill_fb_info(dev_priv, intel_fb);
@@ -2076,7 +2076,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 err_frontbuffer_put:
 	intel_frontbuffer_put(intel_fb->frontbuffer);
 err:
-	intel_fb_bo_framebuffer_fini(obj);
+	intel_fb_bo_framebuffer_fini(to_intel_bo(obj));
 	return ret;
 }
 
@@ -2111,7 +2111,7 @@ intel_framebuffer_create(struct drm_i915_gem_object *obj,
 	if (!intel_fb)
 		return ERR_PTR(-ENOMEM);
 
-	ret = intel_framebuffer_init(intel_fb, obj, mode_cmd);
+	ret = intel_framebuffer_init(intel_fb, intel_bo_to_drm_bo(obj), mode_cmd);
 	if (ret)
 		goto err;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 2ca919bdbd7d..fef1f713dab0 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -85,7 +85,7 @@ void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int rotatio
 int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
 
 int intel_framebuffer_init(struct intel_framebuffer *ifb,
-			   struct drm_i915_gem_object *obj,
+			   struct drm_gem_object *obj,
 			   struct drm_mode_fb_cmd2 *mode_cmd);
 struct drm_framebuffer *
 intel_user_framebuffer_create(struct drm_device *dev,
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index ada1792df5b3..62401f6a04e4 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -302,7 +302,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	mode_cmd.flags = DRM_MODE_FB_MODIFIERS;
 
 	if (intel_framebuffer_init(to_intel_framebuffer(fb),
-				   vma->obj, &mode_cmd)) {
+				   intel_bo_to_drm_bo(vma->obj), &mode_cmd)) {
 		drm_dbg_kms(&dev_priv->drm, "intel fb init failed\n");
 		goto err_vma;
 	}
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index a50ab9eae40a..1b10ea499d8c 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -170,7 +170,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 		return false;
 
 	if (intel_framebuffer_init(to_intel_framebuffer(fb),
-				   bo, &mode_cmd)) {
+				   &bo->ttm.base, &mode_cmd)) {
 		drm_dbg_kms(&xe->drm, "intel fb init failed\n");
 		goto err_bo;
 	}
-- 
2.39.2

