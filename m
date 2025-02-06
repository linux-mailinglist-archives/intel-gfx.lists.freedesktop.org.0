Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 230B0A2B1C8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 19:56:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCB1110E922;
	Thu,  6 Feb 2025 18:56:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NoLRzmKV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00E9410E922;
 Thu,  6 Feb 2025 18:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738868178; x=1770404178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZHGP81+WNZ8vV0wPVOEp1Nlx0rbng3kHd2Vb6RHedHU=;
 b=NoLRzmKVYGfhMQ1lgeuSscuiUvl+0g3trEvaHfItHdsOkhcmK0v3Y9zv
 X1RBrAp+aglIMmMnfDP9Zp89BOUFLDS6yNWEc7CB/6YO6AtekkuJcvXEE
 u6wguYSWy8Z6w+FhGCqdt4jbyRQXwOTWE4VD354jr7O5WsB2ibOP/Mw1j
 u7tpm4fHqLhQ/q8gRjJ9LYbS88mZESMYaJCWWS+PtFnyMdEzZBOqsKOD8
 e4/TUasNRVtl26t4d0/UNWTgJQpheuW8sGLj6sshJIdMD3Aui7IE8+RCo
 m+kIi5j4mmGZ1wVaZ6dQ7roh+lnUhTQqGN5h5zx4YrVL2rmOgBM6wH6RN A==;
X-CSE-ConnectionGUID: TIRhGglhS7u81jq4x4Skeg==
X-CSE-MsgGUID: h/7P4yb4SSmbjbQ/zQk2pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39395074"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="39395074"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 10:56:17 -0800
X-CSE-ConnectionGUID: cWQw2H7QQCau3ibhzgbj+g==
X-CSE-MsgGUID: a9PnmZmGQSOmvC6ZP+62cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="111499647"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Feb 2025 10:56:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Feb 2025 20:56:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 12/12] drm/i915: Pimp plane debugs
Date: Thu,  6 Feb 2025 20:55:33 +0200
Message-ID: <20250206185533.32306-13-ville.syrjala@linux.intel.com>
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

Include the standard "[PLANE:%d:s]" stuff in all plane debugs
(or rather all I was able to find), to provide better information
on which plane we're actually talking about.

There are a few spots where we care about the CRTC as well, so
include that where appropriate.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 18 ++++--
 .../gpu/drm/i915/display/intel_atomic_plane.c | 17 ++++--
 drivers/gpu/drm/i915/display/intel_cursor.c   | 33 ++++++----
 drivers/gpu/drm/i915/display/intel_display.c  |  9 +--
 .../drm/i915/display/skl_universal_plane.c    | 60 ++++++++++++-------
 5 files changed, 90 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index c3ed903d5582..aef8d8b7ea85 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -244,8 +244,12 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
 	src_y = plane_state->uapi.src.y1 >> 16;
 
 	/* Undocumented hardware limit on i965/g4x/vlv/chv */
-	if (HAS_GMCH(display) && fb->format->cpp[0] == 8 && src_w > 2048)
+	if (HAS_GMCH(display) && fb->format->cpp[0] == 8 && src_w > 2048) {
+		drm_dbg_kms(display->drm,
+			    "[PLANE:%d:%s] plane too wide (%d) for 64bpp\n",
+			    plane->base.base.id, plane->base.name, src_w);
 		return -EINVAL;
+	}
 
 	intel_add_fb_offsets(&src_x, &src_y, plane_state, 0);
 
@@ -273,7 +277,8 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
 		while ((src_x + src_w) * cpp > plane_state->view.color_plane[0].mapping_stride) {
 			if (offset == 0) {
 				drm_dbg_kms(display->drm,
-					    "Unable to find suitable display surface offset due to X-tiling\n");
+					    "[PLANE:%d:%s] unable to find suitable display surface offset due to X-tiling\n",
+					    plane->base.base.id, plane->base.name);
 				return -EINVAL;
 			}
 
@@ -1162,10 +1167,11 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 	plane_config->size = fb->pitches[0] * aligned_height;
 
 	drm_dbg_kms(display->drm,
-		    "%s/%s with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
-		    crtc->base.name, plane->base.name, fb->width, fb->height,
-		    fb->format->cpp[0] * 8, base, fb->pitches[0],
-		    plane_config->size);
+		    "[CRTC:%d:%s][PLANE:%d:%s] with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
+		    crtc->base.base.id, crtc->base.name,
+		    plane->base.base.id, plane->base.name,
+		    fb->width, fb->height, fb->format->cpp[0] * 8,
+		    base, fb->pitches[0], plane_config->size);
 
 	plane_config->fb = intel_fb;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 3a474652abaa..8a49d87d9bd9 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -926,6 +926,7 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 				      bool can_position)
 {
 	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct drm_rect *src = &plane_state->uapi.src;
 	struct drm_rect *dst = &plane_state->uapi.dst;
@@ -945,7 +946,8 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 	vscale = drm_rect_calc_vscale(src, dst, min_scale, max_scale);
 	if (hscale < 0 || vscale < 0) {
 		drm_dbg_kms(&i915->drm,
-			    "Invalid scaling of plane " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT "\n",
+			    "[PLANE:%d:%s] invalid scaling "DRM_RECT_FP_FMT " -> " DRM_RECT_FMT "\n",
+			    plane->base.base.id, plane->base.name,
 			    DRM_RECT_FP_ARG(src), DRM_RECT_ARG(dst));
 		return -ERANGE;
 	}
@@ -960,7 +962,9 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 
 	if (!can_position && plane_state->uapi.visible &&
 	    !drm_rect_equals(dst, clip)) {
-		drm_dbg_kms(&i915->drm, "Plane (" DRM_RECT_FMT ") must cover entire CRTC (" DRM_RECT_FMT ")\n",
+		drm_dbg_kms(&i915->drm,
+			    "[PLANE:%d:%s] plane (" DRM_RECT_FMT ") must cover entire CRTC (" DRM_RECT_FMT ")\n",
+			    plane->base.base.id, plane->base.name,
 			    DRM_RECT_ARG(dst), DRM_RECT_ARG(clip));
 		return -EINVAL;
 	}
@@ -974,6 +978,7 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct drm_rect *src = &plane_state->uapi.src;
 	u32 src_x, src_y, src_w, src_h, hsub, vsub;
@@ -1029,13 +1034,17 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		hsub = vsub = max(hsub, vsub);
 
 	if (src_x % hsub || src_w % hsub) {
-		drm_dbg_kms(&i915->drm, "src x/w (%u, %u) must be a multiple of %u (rotated: %s)\n",
+		drm_dbg_kms(&i915->drm,
+			    "[PLANE:%d:%s] src x/w (%u, %u) must be a multiple of %u (rotated: %s)\n",
+			    plane->base.base.id, plane->base.name,
 			    src_x, src_w, hsub, str_yes_no(rotated));
 		return -EINVAL;
 	}
 
 	if (src_y % vsub || src_h % vsub) {
-		drm_dbg_kms(&i915->drm, "src y/h (%u, %u) must be a multiple of %u (rotated: %s)\n",
+		drm_dbg_kms(&i915->drm,
+			    "[PLANE:%d:%s] src y/h (%u, %u) must be a multiple of %u (rotated: %s)\n",
+			    plane->base.base.id, plane->base.name,
 			    src_y, src_h, vsub, str_yes_no(rotated));
 		return -EINVAL;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 4cd48d54164d..f31efac89e95 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -92,6 +92,7 @@ static bool intel_cursor_size_ok(const struct intel_plane_state *plane_state)
 static int intel_cursor_check_surface(struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	unsigned int rotation = plane_state->hw.rotation;
 	int src_x, src_y;
 	u32 offset;
@@ -113,7 +114,8 @@ static int intel_cursor_check_surface(struct intel_plane_state *plane_state)
 
 	if (src_x != 0 || src_y != 0) {
 		drm_dbg_kms(display->drm,
-			    "Arbitrary cursor panning not supported\n");
+			    "[PLANE:%d:%s] arbitrary cursor panning not supported\n",
+			    plane->base.base.id, plane->base.name);
 		return -EINVAL;
 	}
 
@@ -144,13 +146,15 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
 			      struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	const struct drm_rect src = plane_state->uapi.src;
 	const struct drm_rect dst = plane_state->uapi.dst;
 	int ret;
 
 	if (fb && fb->modifier != DRM_FORMAT_MOD_LINEAR) {
-		drm_dbg_kms(display->drm, "cursor cannot be tiled\n");
+		drm_dbg_kms(display->drm, "[PLANE:%d:%s] cursor cannot be tiled\n",
+			    plane->base.base.id, plane->base.name);
 		return -EINVAL;
 	}
 
@@ -232,6 +236,7 @@ static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 			     struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	int ret;
 
@@ -246,7 +251,8 @@ static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 	/* Check for which cursor types we support */
 	if (!i845_cursor_size_ok(plane_state)) {
 		drm_dbg_kms(display->drm,
-			    "Cursor dimension %dx%d not supported\n",
+			    "[PLANE:%d:%s] cursor dimension %dx%d not supported\n",
+			    plane->base.base.id, plane->base.name,
 			    drm_rect_width(&plane_state->uapi.dst),
 			    drm_rect_height(&plane_state->uapi.dst));
 		return -EINVAL;
@@ -262,7 +268,8 @@ static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 	case 2048:
 		break;
 	default:
-		 drm_dbg_kms(display->drm, "Invalid cursor stride (%u)\n",
+		 drm_dbg_kms(display->drm, "[PLANE:%d:%s] invalid cursor stride (%u)\n",
+			     plane->base.base.id, plane->base.name,
 			     fb->pitches[0]);
 		return -EINVAL;
 	}
@@ -489,10 +496,11 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 
 	/* Check for which cursor types we support */
 	if (!i9xx_cursor_size_ok(plane_state)) {
-		drm_dbg(display->drm,
-			"Cursor dimension %dx%d not supported\n",
-			drm_rect_width(&plane_state->uapi.dst),
-			drm_rect_height(&plane_state->uapi.dst));
+		drm_dbg_kms(display->drm,
+			    "[PLANE:%d:%s] cursor dimension %dx%d not supported\n",
+			    plane->base.base.id, plane->base.name,
+			    drm_rect_width(&plane_state->uapi.dst),
+			    drm_rect_height(&plane_state->uapi.dst));
 		return -EINVAL;
 	}
 
@@ -502,9 +510,9 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 	if (fb->pitches[0] !=
 	    drm_rect_width(&plane_state->uapi.dst) * fb->format->cpp[0]) {
 		drm_dbg_kms(display->drm,
-			    "Invalid cursor stride (%u) (cursor width %d)\n",
-			    fb->pitches[0],
-			    drm_rect_width(&plane_state->uapi.dst));
+			    "[PLANE:%d:%s] invalid cursor stride (%u) (cursor width %d)\n",
+			    plane->base.base.id, plane->base.name,
+			    fb->pitches[0], drm_rect_width(&plane_state->uapi.dst));
 		return -EINVAL;
 	}
 
@@ -521,7 +529,8 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 	if (display->platform.cherryview && pipe == PIPE_C &&
 	    plane_state->uapi.visible && plane_state->uapi.dst.x1 < 0) {
 		drm_dbg_kms(display->drm,
-			    "CHV cursor C not allowed to straddle the left screen edge\n");
+			    "[PLANE:%d:%s] cursor not allowed to straddle the left screen edge\n",
+			    plane->base.base.id, plane->base.name);
 		return -EINVAL;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a451c46d3795..310899e554d5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4495,9 +4495,9 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 
 		if (!linked_state) {
 			drm_dbg_kms(&dev_priv->drm,
-				    "Need %d free Y planes for planar YUV\n",
+				    "[CRTC:%d:%s] need %d free Y planes for planar YUV\n",
+				    crtc->base.base.id, crtc->base.name,
 				    hweight8(crtc_state->nv12_planes));
-
 			return -EINVAL;
 		}
 
@@ -4512,8 +4512,9 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 			crtc_state->data_rate_y[plane->id];
 		crtc_state->rel_data_rate[linked->id] =
 			crtc_state->rel_data_rate_y[plane->id];
-		drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
-			    linked->base.name, plane->base.name);
+		drm_dbg_kms(&dev_priv->drm, "UV plane [PLANE:%d:%s] using [PLANE:%d:%s] as Y plane\n",
+			    plane->base.base.id, plane->base.name,
+			    linked->base.base.id, linked->base.name);
 
 		/* Copy parameters to slave plane */
 		linked_state->ctl = plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index f8d3a79a96ff..eb85d3d6cdc3 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1706,6 +1706,7 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 			      const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 
@@ -1715,15 +1716,16 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	if (rotation & ~(DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180) &&
 	    intel_fb_is_ccs_modifier(fb->modifier)) {
 		drm_dbg_kms(display->drm,
-			    "RC support only with 0/180 degree rotation (%x)\n",
-			    rotation);
+			    "[PLANE:%d:%s] RC support only with 0/180 degree rotation (%x)\n",
+			    plane->base.base.id, plane->base.name, rotation);
 		return -EINVAL;
 	}
 
 	if (rotation & DRM_MODE_REFLECT_X &&
 	    fb->modifier == DRM_FORMAT_MOD_LINEAR) {
 		drm_dbg_kms(display->drm,
-			    "horizontal flip is not supported with linear surface formats\n");
+			    "[PLANE:%d:%s] horizontal flip is not supported with linear surface formats\n",
+			    plane->base.base.id, plane->base.name);
 		return -EINVAL;
 	}
 
@@ -1734,14 +1736,16 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	    intel_fb_is_tile4_modifier(fb->modifier) &&
 	    DISPLAY_VER(display) >= 20) {
 		drm_dbg_kms(display->drm,
-			    "horizontal flip is not supported with tile4 surface formats\n");
+			    "[PLANE:%d:%s] horizontal flip is not supported with tile4 surface formats\n",
+			    plane->base.base.id, plane->base.name);
 		return -EINVAL;
 	}
 
 	if (drm_rotation_90_or_270(rotation)) {
 		if (!intel_fb_supports_90_270_rotation(to_intel_framebuffer(fb))) {
 			drm_dbg_kms(display->drm,
-				    "Y/Yf tiling required for 90/270!\n");
+				    "[PLANE:%d:%s] Y/Yf tiling required for 90/270!\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
@@ -1765,8 +1769,8 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 		case DRM_FORMAT_XVYU12_16161616:
 		case DRM_FORMAT_XVYU16161616:
 			drm_dbg_kms(display->drm,
-				    "Unsupported pixel format %p4cc for 90/270!\n",
-				    &fb->format->format);
+				    "[PLANE:%d:%s] unsupported pixel format %p4cc for 90/270!\n",
+				    plane->base.base.id, plane->base.name, &fb->format->format);
 			return -EINVAL;
 		default:
 			break;
@@ -1779,7 +1783,8 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	    fb->modifier != DRM_FORMAT_MOD_LINEAR &&
 	    fb->modifier != I915_FORMAT_MOD_X_TILED) {
 		drm_dbg_kms(display->drm,
-			    "Y/Yf tiling not supported in IF-ID mode\n");
+			    "[PLANE:%d:%s] Y/Yf tiling not supported in IF-ID mode\n",
+			    plane->base.base.id, plane->base.name);
 		return -EINVAL;
 	}
 
@@ -1788,7 +1793,8 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	    plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE &&
 	    intel_format_is_p01x(fb->format->format)) {
 		drm_dbg_kms(display->drm,
-			    "Source color keying not supported with P01x formats\n");
+			    "[PLANE:%d:%s] source color keying not supported with P01x formats\n",
+			    plane->base.base.id, plane->base.name);
 		return -EINVAL;
 	}
 
@@ -1799,6 +1805,7 @@ static int skl_plane_check_dst_coordinates(const struct intel_crtc_state *crtc_s
 					   const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	int crtc_x = plane_state->uapi.dst.x1;
 	int crtc_w = drm_rect_width(&plane_state->uapi.dst);
 	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
@@ -1815,7 +1822,8 @@ static int skl_plane_check_dst_coordinates(const struct intel_crtc_state *crtc_s
 	if (DISPLAY_VER(display) == 10 &&
 	    (crtc_x + crtc_w < 4 || crtc_x > pipe_src_w - 4)) {
 		drm_dbg_kms(display->drm,
-			    "requested plane X %s position %d invalid (valid range %d-%d)\n",
+			    "[PLANE:%d:%s] requested plane X %s position %d invalid (valid range %d-%d)\n",
+			    plane->base.base.id, plane->base.name,
 			    crtc_x + crtc_w < 4 ? "end" : "start",
 			    crtc_x + crtc_w < 4 ? crtc_x + crtc_w : crtc_x,
 			    4, pipe_src_w - 4);
@@ -1828,6 +1836,7 @@ static int skl_plane_check_dst_coordinates(const struct intel_crtc_state *crtc_s
 static int skl_plane_check_nv12_rotation(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 	int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
@@ -1837,7 +1846,9 @@ static int skl_plane_check_nv12_rotation(const struct intel_plane_state *plane_s
 	    src_w & 3 &&
 	    (rotation == DRM_MODE_ROTATE_270 ||
 	     rotation == (DRM_MODE_REFLECT_X | DRM_MODE_ROTATE_90))) {
-		drm_dbg_kms(display->drm, "src width must be multiple of 4 for rotated planar YUV\n");
+		drm_dbg_kms(display->drm,
+			    "[PLANE:%d:%s] src width must be multiple of 4 for rotated planar YUV\n",
+			    plane->base.base.id, plane->base.name);
 		return -EINVAL;
 	}
 
@@ -1977,7 +1988,8 @@ int skl_calc_main_surface_offset(const struct intel_plane_state *plane_state,
 		while ((*x + w) * cpp > plane_state->view.color_plane[0].mapping_stride) {
 			if (*offset == 0) {
 				drm_dbg_kms(display->drm,
-					    "Unable to find suitable display surface offset due to X-tiling\n");
+					    "[PLANE:%d:%s] unable to find suitable display surface offset due to X-tiling\n",
+					    plane->base.base.id, plane->base.name);
 				return -EINVAL;
 			}
 
@@ -2010,7 +2022,8 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 
 	if (w > max_width || w < min_width || h > max_height || h < 1) {
 		drm_dbg_kms(display->drm,
-			    "requested Y/RGB source size %dx%d outside limits (min: %dx1 max: %dx%d)\n",
+			    "[PLANE:%d:%s] requested Y/RGB source size %dx%d outside limits (min: %dx1 max: %dx%d)\n",
+			    plane->base.base.id, plane->base.name,
 			    w, h, min_width, max_width, max_height);
 		return -EINVAL;
 	}
@@ -2037,7 +2050,8 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 		if (x != plane_state->view.color_plane[aux_plane].x ||
 		    y != plane_state->view.color_plane[aux_plane].y) {
 			drm_dbg_kms(display->drm,
-				    "Unable to find suitable display surface offset due to CCS\n");
+				    "[PLANE:%d:%s] unable to find suitable display surface offset due to CCS\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 	}
@@ -2081,7 +2095,8 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 	/* FIXME not quite sure how/if these apply to the chroma plane */
 	if (w > max_width || h > max_height) {
 		drm_dbg_kms(display->drm,
-			    "CbCr source size %dx%d too big (limit %dx%d)\n",
+			    "[PLANE:%d:%s] CbCr source size %dx%d too big (limit %dx%d)\n",
+			    plane->base.base.id, plane->base.name,
 			    w, h, max_width, max_height);
 		return -EINVAL;
 	}
@@ -2115,7 +2130,8 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 		if (x != plane_state->view.color_plane[ccs_plane].x ||
 		    y != plane_state->view.color_plane[ccs_plane].y) {
 			drm_dbg_kms(display->drm,
-				    "Unable to find suitable display surface offset due to CCS\n");
+				    "[PLANE:%d:%s] unable to find suitable display surface offset due to CCS\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 	}
@@ -2899,7 +2915,8 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 
 	if (crtc_state->joiner_pipes) {
 		drm_dbg_kms(display->drm,
-			    "Unsupported joiner configuration for initial FB\n");
+			    "[CRTC:%d:%s] Unsupported joiner configuration for initial FB\n",
+			    crtc->base.base.id, crtc->base.name);
 		return;
 	}
 
@@ -3036,10 +3053,11 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	plane_config->size = fb->pitches[0] * aligned_height;
 
 	drm_dbg_kms(display->drm,
-		    "%s/%s with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
-		    crtc->base.name, plane->base.name, fb->width, fb->height,
-		    fb->format->cpp[0] * 8, base, fb->pitches[0],
-		    plane_config->size);
+		    "[CRTC:%d:%s][PLANE:%d:%s] with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
+		    crtc->base.base.id, crtc->base.name,
+		    plane->base.base.id, plane->base.name,
+		    fb->width, fb->height, fb->format->cpp[0] * 8,
+		    base, fb->pitches[0], plane_config->size);
 
 	plane_config->fb = intel_fb;
 	return;
-- 
2.45.3

