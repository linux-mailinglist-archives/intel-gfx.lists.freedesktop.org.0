Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D84D8C413B3
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 19:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38AD010EB74;
	Fri,  7 Nov 2025 18:11:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HHcDGLqM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2165B10EB71;
 Fri,  7 Nov 2025 18:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762539108; x=1794075108;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j5se8cn/7EpSTqwJVs7BBceOGN5PXhGKhXXWELcCpU4=;
 b=HHcDGLqMmXWi925O+TJDtttGLyVKNtm9r96iiqpZLZyofxnYB2VGbGcm
 EyA2+kv0RBNG7z2JYhoMaaeiBlnTBlvcG0vb9h4aZXD+6Vbfbwlo5F+VB
 52GGjmKKXJRx6wON7+vgeLgf97Eq2u23T6D3X6y204k8b9Z0mhFkEaezu
 TeHzKXYXKp7QlXc2ipn0CyGxlTei1FPK4/ma98NcZpIXPH884y3es6TSf
 4oQlbmAn27I8obfgY7r4VJn5hdNc4TzvHHdLU2xde5xRKDklJpH00ANN7
 No5qLeqybz41qUP9sAIkbGKL0s9g+sWvsq6b6L/tsg7ic3OZanAE6smWl w==;
X-CSE-ConnectionGUID: umyodON7S6u7V83DYdYxMg==
X-CSE-MsgGUID: xgABTibARqKnR2L2a0D7Sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="64730039"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="64730039"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:47 -0800
X-CSE-ConnectionGUID: 1hKaA59hTGWHO5XZXWAERQ==
X-CSE-MsgGUID: Y2Df4rA4Tmu/AUYs426Q3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="193270828"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:47 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/9] drm/i915: Nuke intel_plane_config.tiling
Date: Fri,  7 Nov 2025 20:11:21 +0200
Message-ID: <20251107181126.5743-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
References: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use intel_fb_modifier_to_tiling() to convert the modifier into
the fence tiling mode during BIOS FB readout, rather than hand
rolling it. With this we can also stop tracking the tiling mode
in the intel_plane_config.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          |  6 ++----
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 -
 drivers/gpu/drm/i915/display/intel_plane_initial.c | 11 +++++++----
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 --
 4 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 559207b23dc3..51ccc6bd5f21 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -1188,10 +1188,8 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 	val = intel_de_read(display, DSPCNTR(display, i9xx_plane));
 
 	if (DISPLAY_VER(display) >= 4) {
-		if (val & DISP_TILED) {
-			plane_config->tiling = I915_TILING_X;
+		if (val & DISP_TILED)
 			fb->modifier = I915_FORMAT_MOD_X_TILED;
-		}
 
 		if (val & DISP_ROTATE_180)
 			plane_config->rotation = DRM_MODE_ROTATE_180;
@@ -1211,7 +1209,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 				       DSPOFFSET(display, i9xx_plane));
 		base = intel_de_read(display, DSPSURF(display, i9xx_plane)) & DISP_ADDR_MASK;
 	} else if (DISPLAY_VER(display) >= 4) {
-		if (plane_config->tiling)
+		if (fb->modifier == I915_FORMAT_MOD_X_TILED)
 			offset = intel_de_read(display,
 					       DSPTILEOFF(display, i9xx_plane));
 		else
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index dd39e6caa82e..38702a9e0f50 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -726,7 +726,6 @@ struct intel_initial_plane_config {
 	struct intel_memory_region *mem;
 	resource_size_t phys_base;
 	struct i915_vma *vma;
-	unsigned int tiling;
 	int size;
 	u32 base;
 	u8 rotation;
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 81444e0b3c41..a1de1ec564d1 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -133,6 +133,7 @@ initial_plane_vma(struct intel_display *display,
 	struct drm_mm_node orig_mm = {};
 	struct i915_vma *vma;
 	resource_size_t phys_base;
+	unsigned int tiling;
 	u32 base, size;
 	u64 pinctl;
 
@@ -179,17 +180,19 @@ initial_plane_vma(struct intel_display *display,
 	i915_gem_object_set_cache_coherency(obj, HAS_WT(i915) ?
 					    I915_CACHE_WT : I915_CACHE_NONE);
 
-	switch (plane_config->tiling) {
+	tiling = intel_fb_modifier_to_tiling(plane_config->fb->base.modifier);
+
+	switch (tiling) {
 	case I915_TILING_NONE:
 		break;
 	case I915_TILING_X:
 	case I915_TILING_Y:
 		obj->tiling_and_stride =
 			plane_config->fb->base.pitches[0] |
-			plane_config->tiling;
+			tiling;
 		break;
 	default:
-		MISSING_CASE(plane_config->tiling);
+		MISSING_CASE(tiling);
 		goto err_obj;
 	}
 
@@ -374,7 +377,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	plane_state->uapi.crtc_w = fb->width;
 	plane_state->uapi.crtc_h = fb->height;
 
-	if (plane_config->tiling)
+	if (fb->modifier != DRM_FORMAT_MOD_LINEAR)
 		dev_priv->preserve_bios_swizzle = true;
 
 	plane_state->uapi.fb = fb;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 7b17d1024502..89c8003ccfe7 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -3090,11 +3090,9 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		fb->modifier = DRM_FORMAT_MOD_LINEAR;
 		break;
 	case PLANE_CTL_TILED_X:
-		plane_config->tiling = I915_TILING_X;
 		fb->modifier = I915_FORMAT_MOD_X_TILED;
 		break;
 	case PLANE_CTL_TILED_Y:
-		plane_config->tiling = I915_TILING_Y;
 		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
 			if (DISPLAY_VER(display) >= 14)
 				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS;
-- 
2.49.1

