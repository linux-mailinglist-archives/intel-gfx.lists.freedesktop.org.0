Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C6AA1BA61
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 17:31:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D3D10E9E9;
	Fri, 24 Jan 2025 16:30:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XZhvO3mA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 477DA10E9E9;
 Fri, 24 Jan 2025 16:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737736256; x=1769272256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8pF9FGobrCBIQxcjm4WUffeo23VI7izT1YotVqdXYsw=;
 b=XZhvO3mAFRYkr7uih18UuYUniBRlOK/ErIieFCkD4rUZd8KyZKrBF//G
 IUs9ngwuXOx5K3tE55NF7qBVr8r12F7/MlRlC5jL6ipLXwG22sw+hs5jV
 sleWgukb+1/tb0QdPbzRTOq3chhoO+BTA6bdaQwUDqPcG/MsizeKuXRJG
 P6SbFX/SdiBM8nki+eHJIwqt5PO8yjELhYvSVMZ9JhNvI9xxyAPfMkYLM
 OVhx4Tfwy9mPwtH3rLRZsaP33rioC/hyq0Ut4OuttXSWKFEOYSYKK4y24
 kceyc8mYxjvBG5rXTLlKJ/o3L8ecm0/lWqfpOVKE5JbFHn8Gt9kqByhSd Q==;
X-CSE-ConnectionGUID: hG5RVeuHQYGuMcd50btksQ==
X-CSE-MsgGUID: 2omF9LglQ9ev9E+MSiMiKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="42200441"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="42200441"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 08:30:56 -0800
X-CSE-ConnectionGUID: ALyYuq18TQGNdB7M3makCQ==
X-CSE-MsgGUID: oQONh5IGR66Pe3kHLR2ziQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107925912"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 08:30:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 18:30:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/11] drm/i915: Convert intel_fb.c to struct intel_display
Date: Fri, 24 Jan 2025 18:30:33 +0200
Message-ID: <20250124163040.8886-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
References: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
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

struct intel_display will replace struct drm_i915_private as
the main thing for display code. Convert the fb code to
use it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_fb.c       | 244 +++++++++---------
 drivers/gpu/drm/i915/display/intel_fb.h       |  11 +-
 drivers/gpu/drm/i915/display/intel_fb_bo.c    |  13 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |   2 +-
 .../drm/i915/display/skl_universal_plane.c    |   5 +-
 7 files changed, 146 insertions(+), 135 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index ed171fbf8720..949014802e52 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -854,6 +854,7 @@ static const struct drm_plane_funcs i8xx_plane_funcs = {
 struct intel_plane *
 intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_plane *plane;
 	const struct drm_plane_funcs *plane_funcs;
 	unsigned int supported_rotations;
@@ -982,7 +983,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 		}
 	}
 
-	modifiers = intel_fb_plane_get_modifiers(dev_priv, INTEL_PLANE_CAP_TILING_X);
+	modifiers = intel_fb_plane_get_modifiers(display, INTEL_PLANE_CAP_TILING_X);
 
 	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
 		ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 48c3d212f690..819e61b26b7d 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -984,6 +984,7 @@ struct intel_plane *
 intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 			  enum pipe pipe)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_plane *cursor;
 	int ret, zpos;
 	u64 *modifiers;
@@ -1026,7 +1027,7 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 	if (IS_I845G(dev_priv) || IS_I865G(dev_priv) || HAS_CUR_FBC(dev_priv))
 		cursor->cursor.size = ~0;
 
-	modifiers = intel_fb_plane_get_modifiers(dev_priv, INTEL_PLANE_CAP_NONE);
+	modifiers = intel_fb_plane_get_modifiers(display, INTEL_PLANE_CAP_NONE);
 
 	ret = drm_universal_plane_init(&dev_priv->drm, &cursor->base,
 				       0, &intel_cursor_plane_funcs,
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index f8944eaa9995..faaa849112c8 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -20,7 +20,7 @@
 #include "intel_fb_bo.h"
 #include "intel_frontbuffer.h"
 
-#define check_array_bounds(i915, a, i) drm_WARN_ON(&(i915)->drm, (i) >= ARRAY_SIZE(a))
+#define check_array_bounds(display, a, i) drm_WARN_ON((display)->drm, (i) >= ARRAY_SIZE(a))
 
 /*
  * From the Sky Lake PRM:
@@ -539,11 +539,13 @@ static bool check_modifier_display_ver_range(const struct intel_modifier_desc *m
 		display_ver_from <= md->display_ver.until;
 }
 
-static bool plane_has_modifier(struct drm_i915_private *i915,
+static bool plane_has_modifier(struct intel_display *display,
 			       u8 plane_caps,
 			       const struct intel_modifier_desc *md)
 {
-	if (!IS_DISPLAY_VER(i915, md->display_ver.from, md->display_ver.until))
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (!IS_DISPLAY_VER(display, md->display_ver.from, md->display_ver.until))
 		return false;
 
 	if (!plane_caps_contain_all(plane_caps, md->plane_caps))
@@ -570,14 +572,14 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 
 /**
  * intel_fb_plane_get_modifiers: Get the modifiers for the given platform and plane capabilities
- * @i915: i915 device instance
+ * @display: display instance
  * @plane_caps: capabilities for the plane the modifiers are queried for
  *
  * Returns:
- * Returns the list of modifiers allowed by the @i915 platform and @plane_caps.
+ * Returns the list of modifiers allowed by the @display platform and @plane_caps.
  * The caller must free the returned buffer.
  */
-u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
+u64 *intel_fb_plane_get_modifiers(struct intel_display *display,
 				  u8 plane_caps)
 {
 	u64 *list, *p;
@@ -585,17 +587,17 @@ u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(intel_modifiers); i++) {
-		if (plane_has_modifier(i915, plane_caps, &intel_modifiers[i]))
+		if (plane_has_modifier(display, plane_caps, &intel_modifiers[i]))
 			count++;
 	}
 
 	list = kmalloc_array(count, sizeof(*list), GFP_KERNEL);
-	if (drm_WARN_ON(&i915->drm, !list))
+	if (drm_WARN_ON(display->drm, !list))
 		return NULL;
 
 	p = list;
 	for (i = 0; i < ARRAY_SIZE(intel_modifiers); i++) {
-		if (plane_has_modifier(i915, plane_caps, &intel_modifiers[i]))
+		if (plane_has_modifier(display, plane_caps, &intel_modifiers[i]))
 			*p++ = intel_modifiers[i].modifier;
 	}
 	*p++ = DRM_FORMAT_MOD_INVALID;
@@ -751,33 +753,34 @@ static unsigned int gen12_ccs_aux_stride(struct intel_framebuffer *fb, int ccs_p
 int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
 {
 	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
-	struct drm_i915_private *i915 = to_i915(fb->dev);
+	struct intel_display *display = to_intel_display(fb->dev);
 
 	if (md->ccs.packed_aux_planes | md->ccs.planar_aux_planes)
 		return main_to_ccs_plane(fb, main_plane);
-	else if (DISPLAY_VER(i915) < 11 &&
+	else if (DISPLAY_VER(display) < 11 &&
 		 format_is_yuv_semiplanar(md, fb->format))
 		return 1;
 	else
 		return 0;
 }
 
-unsigned int intel_tile_size(const struct drm_i915_private *i915)
+unsigned int intel_tile_size(struct intel_display *display)
 {
-	return DISPLAY_VER(i915) == 2 ? 2048 : 4096;
+	return DISPLAY_VER(display) == 2 ? 2048 : 4096;
 }
 
 unsigned int
 intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 {
-	struct drm_i915_private *dev_priv = to_i915(fb->dev);
+	struct intel_display *display = to_intel_display(fb->dev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned int cpp = fb->format->cpp[color_plane];
 
 	switch (fb->modifier) {
 	case DRM_FORMAT_MOD_LINEAR:
-		return intel_tile_size(dev_priv);
+		return intel_tile_size(display);
 	case I915_FORMAT_MOD_X_TILED:
-		if (DISPLAY_VER(dev_priv) == 2)
+		if (DISPLAY_VER(display) == 2)
 			return 128;
 		else
 			return 512;
@@ -807,7 +810,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 			return 64;
 		fallthrough;
 	case I915_FORMAT_MOD_Y_TILED:
-		if (DISPLAY_VER(dev_priv) == 2 || HAS_128_BYTE_Y_TILING(dev_priv))
+		if (DISPLAY_VER(display) == 2 || HAS_128_BYTE_Y_TILING(i915))
 			return 128;
 		else
 			return 512;
@@ -838,7 +841,9 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 
 unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane)
 {
-	return intel_tile_size(to_i915(fb->dev)) /
+	struct intel_display *display = to_intel_display(fb->dev);
+
+	return intel_tile_size(display) /
 		intel_tile_width_bytes(fb, color_plane);
 }
 
@@ -890,15 +895,17 @@ intel_fb_align_height(const struct drm_framebuffer *fb,
 	return ALIGN(height, tile_height);
 }
 
-bool intel_fb_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
+bool intel_fb_modifier_uses_dpt(struct intel_display *display, u64 modifier)
 {
-	return HAS_DPT(i915) && modifier != DRM_FORMAT_MOD_LINEAR;
+	return HAS_DPT(display) && modifier != DRM_FORMAT_MOD_LINEAR;
 }
 
 bool intel_fb_uses_dpt(const struct drm_framebuffer *fb)
 {
-	return to_i915(fb->dev)->display.params.enable_dpt &&
-		intel_fb_modifier_uses_dpt(to_i915(fb->dev), fb->modifier);
+	struct intel_display *display = to_intel_display(fb->dev);
+
+	return display->params.enable_dpt &&
+		intel_fb_modifier_uses_dpt(display, fb->modifier);
 }
 
 void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
@@ -1007,16 +1014,16 @@ static u32 intel_adjust_aligned_offset(int *x, int *y,
 				       unsigned int pitch,
 				       u32 old_offset, u32 new_offset)
 {
-	struct drm_i915_private *i915 = to_i915(fb->dev);
+	struct intel_display *display = to_intel_display(fb->dev);
 	unsigned int cpp = fb->format->cpp[color_plane];
 
-	drm_WARN_ON(&i915->drm, new_offset > old_offset);
+	drm_WARN_ON(display->drm, new_offset > old_offset);
 
 	if (!is_surface_linear(fb, color_plane)) {
 		unsigned int tile_size, tile_width, tile_height;
 		unsigned int pitch_tiles;
 
-		tile_size = intel_tile_size(i915);
+		tile_size = intel_tile_size(display);
 		intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
 
 		if (drm_rotation_90_or_270(rotation)) {
@@ -1066,7 +1073,7 @@ u32 intel_plane_adjust_aligned_offset(int *x, int *y,
  * used. This is why the user has to pass in the pitch since it
  * is specified in the rotated orientation.
  */
-static u32 intel_compute_aligned_offset(struct drm_i915_private *i915,
+static u32 intel_compute_aligned_offset(struct intel_display *display,
 					int *x, int *y,
 					const struct drm_framebuffer *fb,
 					int color_plane,
@@ -1081,7 +1088,7 @@ static u32 intel_compute_aligned_offset(struct drm_i915_private *i915,
 		unsigned int tile_size, tile_width, tile_height;
 		unsigned int tile_rows, tiles, pitch_tiles;
 
-		tile_size = intel_tile_size(i915);
+		tile_size = intel_tile_size(display);
 		intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
 
 		if (drm_rotation_90_or_270(rotation)) {
@@ -1125,14 +1132,14 @@ u32 intel_plane_compute_aligned_offset(int *x, int *y,
 				       const struct intel_plane_state *state,
 				       int color_plane)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_plane *plane = to_intel_plane(state->uapi.plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = state->hw.fb;
 	unsigned int rotation = state->hw.rotation;
 	unsigned int pitch = state->view.color_plane[color_plane].mapping_stride;
 	unsigned int alignment = plane->min_alignment(plane, fb, color_plane);
 
-	return intel_compute_aligned_offset(i915, x, y, fb, color_plane,
+	return intel_compute_aligned_offset(display, x, y, fb, color_plane,
 					    pitch, rotation, alignment);
 }
 
@@ -1141,16 +1148,16 @@ static int intel_fb_offset_to_xy(int *x, int *y,
 				 const struct drm_framebuffer *fb,
 				 int color_plane)
 {
-	struct drm_i915_private *i915 = to_i915(fb->dev);
+	struct intel_display *display = to_intel_display(fb->dev);
 	unsigned int height, alignment, unused;
 
 	if (fb->modifier != DRM_FORMAT_MOD_LINEAR)
-		alignment = intel_tile_size(i915);
+		alignment = intel_tile_size(display);
 	else
 		alignment = 0;
 
 	if (alignment != 0 && fb->offsets[color_plane] % alignment) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Misaligned offset 0x%08x for color plane %d\n",
 			    fb->offsets[color_plane], color_plane);
 		return -EINVAL;
@@ -1162,7 +1169,7 @@ static int intel_fb_offset_to_xy(int *x, int *y,
 	/* Catch potential overflows early */
 	if (check_add_overflow(mul_u32_u32(height, fb->pitches[color_plane]),
 			       fb->offsets[color_plane], &unused)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Bad offset 0x%08x or pitch %d for color plane %d\n",
 			    fb->offsets[color_plane], fb->pitches[color_plane],
 			    color_plane);
@@ -1182,7 +1189,7 @@ static int intel_fb_offset_to_xy(int *x, int *y,
 
 static int intel_fb_check_ccs_xy(const struct drm_framebuffer *fb, int ccs_plane, int x, int y)
 {
-	struct drm_i915_private *i915 = to_i915(fb->dev);
+	struct intel_display *display = to_intel_display(fb->dev);
 	const struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 	int main_plane;
 	int hsub, vsub;
@@ -1216,13 +1223,12 @@ static int intel_fb_check_ccs_xy(const struct drm_framebuffer *fb, int ccs_plane
 	 * x/y offsets must match between CCS and the main surface.
 	 */
 	if (main_x != ccs_x || main_y != ccs_y) {
-		drm_dbg_kms(&i915->drm,
-			      "Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%d)\n",
-			      main_x, main_y,
-			      ccs_x, ccs_y,
-			      intel_fb->normal_view.color_plane[main_plane].x,
-			      intel_fb->normal_view.color_plane[main_plane].y,
-			      x, y);
+		drm_dbg_kms(display->drm,
+			    "Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%d)\n",
+			    main_x, main_y, ccs_x, ccs_y,
+			    intel_fb->normal_view.color_plane[main_plane].x,
+			    intel_fb->normal_view.color_plane[main_plane].y,
+			    x, y);
 		return -EINVAL;
 	}
 
@@ -1231,8 +1237,8 @@ static int intel_fb_check_ccs_xy(const struct drm_framebuffer *fb, int ccs_plane
 
 static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	int i;
 
@@ -1246,7 +1252,7 @@ static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 	 * Would also need to deal with the fence POT alignment
 	 * and gen2 2KiB GTT tile size.
 	 */
-	if (DISPLAY_VER(i915) < 4)
+	if (DISPLAY_VER(display) < 4)
 		return false;
 
 	/*
@@ -1258,7 +1264,7 @@ static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 
 	/* Linear needs a page aligned stride for remapping */
 	if (fb->modifier == DRM_FORMAT_MOD_LINEAR) {
-		unsigned int alignment = intel_tile_size(i915) - 1;
+		unsigned int alignment = intel_tile_size(display) - 1;
 
 		for (i = 0; i < fb->format->num_planes; i++) {
 			if (fb->pitches[i] & alignment)
@@ -1271,9 +1277,9 @@ static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 
 bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
 {
-	struct drm_i915_private *i915 = to_i915(fb->base.dev);
+	struct intel_display *display = to_intel_display(fb->base.dev);
 
-	return (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14) &&
+	return (display->platform.alderlake_p || DISPLAY_VER(display) >= 14) &&
 		intel_fb_uses_dpt(&fb->base);
 }
 
@@ -1318,12 +1324,13 @@ static bool intel_plane_needs_remap(const struct intel_plane_state *plane_state)
 static int convert_plane_offset_to_xy(const struct intel_framebuffer *fb, int color_plane,
 				      int plane_width, int *x, int *y)
 {
+	struct intel_display *display = to_intel_display(fb->base.dev);
 	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
 	int ret;
 
 	ret = intel_fb_offset_to_xy(x, y, &fb->base, color_plane);
 	if (ret) {
-		drm_dbg_kms(fb->base.dev,
+		drm_dbg_kms(display->drm,
 			    "bad fb plane %d offset: 0x%x\n",
 			    color_plane, fb->base.offsets[color_plane]);
 		return ret;
@@ -1344,7 +1351,7 @@ static int convert_plane_offset_to_xy(const struct intel_framebuffer *fb, int co
 	 */
 	if (color_plane == 0 && intel_bo_is_tiled(obj) &&
 	    (*x + plane_width) * fb->base.format->cpp[color_plane] > fb->base.pitches[color_plane]) {
-		drm_dbg_kms(fb->base.dev,
+		drm_dbg_kms(display->drm,
 			    "bad fb plane %d offset: 0x%x\n",
 			    color_plane, fb->base.offsets[color_plane]);
 		return -EINVAL;
@@ -1355,11 +1362,11 @@ static int convert_plane_offset_to_xy(const struct intel_framebuffer *fb, int co
 
 static u32 calc_plane_aligned_offset(const struct intel_framebuffer *fb, int color_plane, int *x, int *y)
 {
-	struct drm_i915_private *i915 = to_i915(fb->base.dev);
-	unsigned int tile_size = intel_tile_size(i915);
+	struct intel_display *display = to_intel_display(fb->base.dev);
+	unsigned int tile_size = intel_tile_size(display);
 	u32 offset;
 
-	offset = intel_compute_aligned_offset(i915, x, y, &fb->base, color_plane,
+	offset = intel_compute_aligned_offset(display, x, y, &fb->base, color_plane,
 					      fb->base.pitches[color_plane],
 					      DRM_MODE_ROTATE_0,
 					      tile_size);
@@ -1410,10 +1417,10 @@ plane_view_scanout_stride(const struct intel_framebuffer *fb, int color_plane,
 			  unsigned int tile_width,
 			  unsigned int src_stride_tiles, unsigned int dst_stride_tiles)
 {
-	struct drm_i915_private *i915 = to_i915(fb->base.dev);
+	struct intel_display *display = to_intel_display(fb->base.dev);
 	unsigned int stride_tiles;
 
-	if ((IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14) &&
+	if ((display->platform.alderlake_p || DISPLAY_VER(display) >= 14) &&
 	    src_stride_tiles < dst_stride_tiles)
 		stride_tiles = src_stride_tiles;
 	else
@@ -1443,23 +1450,23 @@ plane_view_linear_tiles(const struct intel_framebuffer *fb, int color_plane,
 			const struct fb_plane_view_dims *dims,
 			int x, int y)
 {
-	struct drm_i915_private *i915 = to_i915(fb->base.dev);
+	struct intel_display *display = to_intel_display(fb->base.dev);
 	unsigned int size;
 
 	size = (y + dims->height) * fb->base.pitches[color_plane] +
 		x * fb->base.format->cpp[color_plane];
 
-	return DIV_ROUND_UP(size, intel_tile_size(i915));
+	return DIV_ROUND_UP(size, intel_tile_size(display));
 }
 
 #define assign_chk_ovf(i915, var, val) ({ \
-	drm_WARN_ON(&(i915)->drm, overflows_type(val, var)); \
+	drm_WARN_ON((i915)->drm, overflows_type(val, var)); \
 	(var) = (val); \
 })
 
-#define assign_bfld_chk_ovf(i915, var, val) ({ \
+#define assign_bfld_chk_ovf(display, var, val) ({ \
 	(var) = (val); \
-	drm_WARN_ON(&(i915)->drm, (var) != (val)); \
+	drm_WARN_ON((display)->drm, (var) != (val)); \
 	(var); \
 })
 
@@ -1468,38 +1475,38 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 				 u32 obj_offset, u32 gtt_offset, int x, int y,
 				 struct intel_fb_view *view)
 {
-	struct drm_i915_private *i915 = to_i915(fb->base.dev);
+	struct intel_display *display = to_intel_display(fb->base.dev);
 	struct intel_remapped_plane_info *remap_info = &view->gtt.remapped.plane[color_plane];
 	struct i915_color_plane_view *color_plane_info = &view->color_plane[color_plane];
 	unsigned int tile_width = dims->tile_width;
 	unsigned int tile_height = dims->tile_height;
-	unsigned int tile_size = intel_tile_size(i915);
+	unsigned int tile_size = intel_tile_size(display);
 	struct drm_rect r;
 	u32 size = 0;
 
-	assign_bfld_chk_ovf(i915, remap_info->offset, obj_offset);
+	assign_bfld_chk_ovf(display, remap_info->offset, obj_offset);
 
 	if (intel_fb_is_gen12_ccs_aux_plane(&fb->base, color_plane)) {
 		remap_info->linear = 1;
 
-		assign_chk_ovf(i915, remap_info->size,
+		assign_chk_ovf(display, remap_info->size,
 			       plane_view_linear_tiles(fb, color_plane, dims, x, y));
 	} else {
 		remap_info->linear = 0;
 
-		assign_chk_ovf(i915, remap_info->src_stride,
+		assign_chk_ovf(display, remap_info->src_stride,
 			       plane_view_src_stride_tiles(fb, color_plane, dims));
-		assign_chk_ovf(i915, remap_info->width,
+		assign_chk_ovf(display, remap_info->width,
 			       plane_view_width_tiles(fb, color_plane, dims, x));
-		assign_chk_ovf(i915, remap_info->height,
+		assign_chk_ovf(display, remap_info->height,
 			       plane_view_height_tiles(fb, color_plane, dims, y));
 	}
 
 	if (view->gtt.type == I915_GTT_VIEW_ROTATED) {
-		drm_WARN_ON(&i915->drm, remap_info->linear);
-		check_array_bounds(i915, view->gtt.rotated.plane, color_plane);
+		drm_WARN_ON(display->drm, remap_info->linear);
+		check_array_bounds(display, view->gtt.rotated.plane, color_plane);
 
-		assign_chk_ovf(i915, remap_info->dst_stride,
+		assign_chk_ovf(display, remap_info->dst_stride,
 			       plane_view_dst_stride_tiles(fb, color_plane, remap_info->height));
 
 		/* rotate the x/y offsets to match the GTT view */
@@ -1520,9 +1527,9 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 		/* rotate the tile dimensions to match the GTT view */
 		swap(tile_width, tile_height);
 	} else {
-		drm_WARN_ON(&i915->drm, view->gtt.type != I915_GTT_VIEW_REMAPPED);
+		drm_WARN_ON(display->drm, view->gtt.type != I915_GTT_VIEW_REMAPPED);
 
-		check_array_bounds(i915, view->gtt.remapped.plane, color_plane);
+		check_array_bounds(display, view->gtt.remapped.plane, color_plane);
 
 		if (view->gtt.remapped.plane_alignment) {
 			u32 aligned_offset = ALIGN(gtt_offset,
@@ -1556,7 +1563,7 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 
 			dst_stride = plane_view_dst_stride_tiles(fb, color_plane, dst_stride);
 
-			assign_chk_ovf(i915, remap_info->dst_stride, dst_stride);
+			assign_chk_ovf(display, remap_info->dst_stride, dst_stride);
 			color_plane_info->mapping_stride = dst_stride *
 							   tile_width *
 							   fb->base.format->cpp[color_plane];
@@ -1614,20 +1621,23 @@ calc_plane_normal_size(const struct intel_framebuffer *fb, int color_plane,
 	return tiles;
 }
 
-static void intel_fb_view_init(struct drm_i915_private *i915, struct intel_fb_view *view,
+static void intel_fb_view_init(struct intel_display *display,
+			       struct intel_fb_view *view,
 			       enum i915_gtt_view_type view_type)
 {
 	memset(view, 0, sizeof(*view));
 	view->gtt.type = view_type;
 
 	if (view_type == I915_GTT_VIEW_REMAPPED &&
-	    (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14))
+	    (display->platform.alderlake_p || DISPLAY_VER(display) >= 14))
 		view->gtt.remapped.plane_alignment = SZ_2M / PAGE_SIZE;
 }
 
 bool intel_fb_supports_90_270_rotation(const struct intel_framebuffer *fb)
 {
-	if (DISPLAY_VER(to_i915(fb->base.dev)) >= 13)
+	struct intel_display *display = to_intel_display(fb->base.dev);
+
+	if (DISPLAY_VER(display) >= 13)
 		return false;
 
 	return fb->base.modifier == I915_FORMAT_MOD_Y_TILED ||
@@ -1636,11 +1646,11 @@ bool intel_fb_supports_90_270_rotation(const struct intel_framebuffer *fb)
 
 static unsigned int intel_fb_min_alignment(const struct drm_framebuffer *fb)
 {
-	struct drm_i915_private *i915 = to_i915(fb->dev);
+	struct intel_display *display = to_intel_display(fb->dev);
 	struct intel_plane *plane;
 	unsigned int min_alignment = 0;
 
-	for_each_intel_plane(&i915->drm, plane) {
+	for_each_intel_plane(display->drm, plane) {
 		unsigned int plane_min_alignment;
 
 		if (!drm_plane_has_format(&plane->base, fb->format->format, fb->modifier))
@@ -1648,7 +1658,7 @@ static unsigned int intel_fb_min_alignment(const struct drm_framebuffer *fb)
 
 		plane_min_alignment = plane->min_alignment(plane, fb, 0);
 
-		drm_WARN_ON(&i915->drm, plane_min_alignment &&
+		drm_WARN_ON(display->drm, plane_min_alignment &&
 			    !is_power_of_2(plane_min_alignment));
 
 		if (intel_plane_needs_physical(plane))
@@ -1660,25 +1670,25 @@ static unsigned int intel_fb_min_alignment(const struct drm_framebuffer *fb)
 	return min_alignment;
 }
 
-int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *fb)
+int intel_fill_fb_info(struct intel_display *display, struct intel_framebuffer *fb)
 {
 	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
 	u32 gtt_offset_rotated = 0;
 	u32 gtt_offset_remapped = 0;
 	unsigned int max_size = 0;
 	int i, num_planes = fb->base.format->num_planes;
-	unsigned int tile_size = intel_tile_size(i915);
+	unsigned int tile_size = intel_tile_size(display);
 
-	intel_fb_view_init(i915, &fb->normal_view, I915_GTT_VIEW_NORMAL);
+	intel_fb_view_init(display, &fb->normal_view, I915_GTT_VIEW_NORMAL);
 
-	drm_WARN_ON(&i915->drm,
+	drm_WARN_ON(display->drm,
 		    intel_fb_supports_90_270_rotation(fb) &&
 		    intel_fb_needs_pot_stride_remap(fb));
 
 	if (intel_fb_supports_90_270_rotation(fb))
-		intel_fb_view_init(i915, &fb->rotated_view, I915_GTT_VIEW_ROTATED);
+		intel_fb_view_init(display, &fb->rotated_view, I915_GTT_VIEW_ROTATED);
 	if (intel_fb_needs_pot_stride_remap(fb))
-		intel_fb_view_init(i915, &fb->remapped_view, I915_GTT_VIEW_REMAPPED);
+		intel_fb_view_init(display, &fb->remapped_view, I915_GTT_VIEW_REMAPPED);
 
 	for (i = 0; i < num_planes; i++) {
 		struct fb_plane_view_dims view_dims;
@@ -1697,14 +1707,14 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 			unsigned int end;
 
 			if (!IS_ALIGNED(fb->base.offsets[i], 64)) {
-				drm_dbg_kms(&i915->drm,
+				drm_dbg_kms(display->drm,
 					    "fb misaligned clear color plane %d offset (0x%x)\n",
 					    i, fb->base.offsets[i]);
 				return -EINVAL;
 			}
 
 			if (check_add_overflow(fb->base.offsets[i], 64, &end)) {
-				drm_dbg_kms(&i915->drm,
+				drm_dbg_kms(display->drm,
 					    "fb bad clear color plane %d offset (0x%x)\n",
 					    i, fb->base.offsets[i]);
 				return -EINVAL;
@@ -1750,7 +1760,7 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 	}
 
 	if (mul_u32_u32(max_size, tile_size) > obj->size) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "fb too big for bo (need %llu bytes, have %zu bytes)\n",
 			    mul_u32_u32(max_size, tile_size), obj->size);
 		return -EINVAL;
@@ -1763,8 +1773,7 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 
 static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 =
-		to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 	unsigned int rotation = plane_state->hw.rotation;
@@ -1773,7 +1782,7 @@ static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 	unsigned int src_w, src_h;
 	u32 gtt_offset = 0;
 
-	intel_fb_view_init(i915, &plane_state->view,
+	intel_fb_view_init(display, &plane_state->view,
 			   drm_rotation_90_or_270(rotation) ? I915_GTT_VIEW_ROTATED :
 							      I915_GTT_VIEW_REMAPPED);
 
@@ -1782,7 +1791,7 @@ static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 	src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
 
-	drm_WARN_ON(&i915->drm, intel_fb_is_ccs_modifier(fb->modifier));
+	drm_WARN_ON(display->drm, intel_fb_is_ccs_modifier(fb->modifier));
 
 	/* Make src coordinates relative to the viewport */
 	drm_rect_translate(&plane_state->uapi.src,
@@ -1836,7 +1845,7 @@ void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int rotatio
 }
 
 static
-u32 intel_fb_max_stride(struct drm_i915_private *dev_priv,
+u32 intel_fb_max_stride(struct intel_display *display,
 			u32 pixel_format, u64 modifier)
 {
 	/*
@@ -1845,10 +1854,10 @@ u32 intel_fb_max_stride(struct drm_i915_private *dev_priv,
 	 *
 	 * The new CCS hash mode makes remapping impossible
 	 */
-	if (DISPLAY_VER(dev_priv) < 4 || intel_fb_is_ccs_modifier(modifier) ||
-	    intel_fb_modifier_uses_dpt(dev_priv, modifier))
-		return intel_plane_fb_max_stride(&dev_priv->drm, pixel_format, modifier);
-	else if (DISPLAY_VER(dev_priv) >= 7)
+	if (DISPLAY_VER(display) < 4 || intel_fb_is_ccs_modifier(modifier) ||
+	    intel_fb_modifier_uses_dpt(display, modifier))
+		return intel_plane_fb_max_stride(display->drm, pixel_format, modifier);
+	else if (DISPLAY_VER(display) >= 7)
 		return 256 * 1024;
 	else
 		return 128 * 1024;
@@ -1857,11 +1866,11 @@ u32 intel_fb_max_stride(struct drm_i915_private *dev_priv,
 static unsigned int
 intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 {
-	struct drm_i915_private *dev_priv = to_i915(fb->dev);
+	struct intel_display *display = to_intel_display(fb->dev);
 	unsigned int tile_width;
 
 	if (is_surface_linear(fb, color_plane)) {
-		unsigned int max_stride = intel_plane_fb_max_stride(&dev_priv->drm,
+		unsigned int max_stride = intel_plane_fb_max_stride(display->drm,
 								    fb->format->format,
 								    fb->modifier);
 
@@ -1871,7 +1880,7 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 		 */
 		if (fb->pitches[color_plane] > max_stride &&
 		    !intel_fb_is_ccs_modifier(fb->modifier))
-			return intel_tile_size(dev_priv);
+			return intel_tile_size(display);
 		else
 			return 64;
 	}
@@ -1882,7 +1891,7 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 		 * On TGL the surface stride must be 4 tile aligned, mapped by
 		 * one 64 byte cacheline on the CCS AUX surface.
 		 */
-		if (DISPLAY_VER(dev_priv) >= 12)
+		if (DISPLAY_VER(display) >= 12)
 			tile_width *= 4;
 		/*
 		 * Display WA #0531: skl,bxt,kbl,glk
@@ -1893,7 +1902,7 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 		 * require the entire fb to accommodate that to avoid
 		 * potential runtime errors at plane configuration time.
 		 */
-		else if ((DISPLAY_VER(dev_priv) == 9 || IS_GEMINILAKE(dev_priv)) &&
+		else if ((DISPLAY_VER(display) == 9 || display->platform.geminilake) &&
 			 color_plane == 0 && fb->width > 3840)
 			tile_width *= 4;
 	}
@@ -1902,6 +1911,7 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 
 static int intel_plane_check_stride(const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
@@ -1923,7 +1933,7 @@ static int intel_plane_check_stride(const struct intel_plane_state *plane_state)
 				       fb->modifier, rotation);
 
 	if (stride > max_stride) {
-		drm_dbg_kms(plane->base.dev,
+		drm_dbg_kms(display->drm,
 			    "[FB:%d] stride (%d) exceeds [PLANE:%d:%s] max stride (%d)\n",
 			    fb->base.id, stride,
 			    plane->base.base.id, plane->base.name, max_stride);
@@ -2072,7 +2082,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			   struct drm_gem_object *obj,
 			   struct drm_mode_fb_cmd2 *mode_cmd)
 {
-	struct drm_i915_private *dev_priv = to_i915(obj->dev);
+	struct intel_display *display = to_intel_display(obj->dev);
 	struct drm_framebuffer *fb = &intel_fb->base;
 	u32 max_stride;
 	int ret = -EINVAL;
@@ -2089,19 +2099,19 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	}
 
 	ret = -EINVAL;
-	if (!drm_any_plane_has_format(&dev_priv->drm,
+	if (!drm_any_plane_has_format(display->drm,
 				      mode_cmd->pixel_format,
 				      mode_cmd->modifier[0])) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "unsupported pixel format %p4cc / modifier 0x%llx\n",
 			    &mode_cmd->pixel_format, mode_cmd->modifier[0]);
 		goto err_frontbuffer_put;
 	}
 
-	max_stride = intel_fb_max_stride(dev_priv, mode_cmd->pixel_format,
+	max_stride = intel_fb_max_stride(display, mode_cmd->pixel_format,
 					 mode_cmd->modifier[0]);
 	if (mode_cmd->pitches[0] > max_stride) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "%s pitch (%u) must be at most %d\n",
 			    mode_cmd->modifier[0] != DRM_FORMAT_MOD_LINEAR ?
 			    "tiled" : "linear",
@@ -2111,26 +2121,25 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 
 	/* FIXME need to adjust LINOFF/TILEOFF accordingly. */
 	if (mode_cmd->offsets[0] != 0) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "plane 0 offset (0x%08x) must be 0\n",
 			    mode_cmd->offsets[0]);
 		goto err_frontbuffer_put;
 	}
 
-	drm_helper_mode_fill_fb_struct(&dev_priv->drm, fb, mode_cmd);
+	drm_helper_mode_fill_fb_struct(display->drm, fb, mode_cmd);
 
 	for (i = 0; i < fb->format->num_planes; i++) {
 		unsigned int stride_alignment;
 
 		if (mode_cmd->handles[i] != mode_cmd->handles[0]) {
-			drm_dbg_kms(&dev_priv->drm, "bad plane %d handle\n",
-				    i);
+			drm_dbg_kms(display->drm, "bad plane %d handle\n", i);
 			goto err_frontbuffer_put;
 		}
 
 		stride_alignment = intel_fb_stride_alignment(fb, i);
 		if (fb->pitches[i] & (stride_alignment - 1)) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "plane %d pitch (%d) must be at least %u byte aligned\n",
 				    i, fb->pitches[i], stride_alignment);
 			goto err_frontbuffer_put;
@@ -2140,10 +2149,9 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			unsigned int ccs_aux_stride = gen12_ccs_aux_stride(intel_fb, i);
 
 			if (fb->pitches[i] != ccs_aux_stride) {
-				drm_dbg_kms(&dev_priv->drm,
+				drm_dbg_kms(display->drm,
 					    "ccs aux plane %d pitch (%d) must be %d\n",
-					    i,
-					    fb->pitches[i], ccs_aux_stride);
+					    i, fb->pitches[i], ccs_aux_stride);
 				goto err_frontbuffer_put;
 			}
 		}
@@ -2151,7 +2159,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		fb->obj[i] = obj;
 	}
 
-	ret = intel_fill_fb_info(dev_priv, intel_fb);
+	ret = intel_fill_fb_info(display, intel_fb);
 	if (ret)
 		goto err_frontbuffer_put;
 
@@ -2160,7 +2168,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 
 		vm = intel_dpt_create(intel_fb);
 		if (IS_ERR(vm)) {
-			drm_dbg_kms(&dev_priv->drm, "failed to create DPT\n");
+			drm_dbg_kms(display->drm, "failed to create DPT\n");
 			ret = PTR_ERR(vm);
 			goto err_frontbuffer_put;
 		}
@@ -2168,9 +2176,9 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		intel_fb->dpt_vm = vm;
 	}
 
-	ret = drm_framebuffer_init(&dev_priv->drm, fb, &intel_fb_funcs);
+	ret = drm_framebuffer_init(display->drm, fb, &intel_fb_funcs);
 	if (ret) {
-		drm_err(&dev_priv->drm, "framebuffer init failed %d\n", ret);
+		drm_err(display->drm, "framebuffer init failed %d\n", ret);
 		goto err_free_dpt;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index d78993e5eb62..56cd8250570f 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -13,9 +13,8 @@ struct drm_device;
 struct drm_file;
 struct drm_framebuffer;
 struct drm_gem_object;
-struct drm_i915_gem_object;
-struct drm_i915_private;
 struct drm_mode_fb_cmd2;
+struct intel_display;
 struct intel_fb_view;
 struct intel_framebuffer;
 struct intel_plane;
@@ -41,7 +40,7 @@ bool intel_fb_is_tile4_modifier(u64 modifier);
 bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
 
-u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
+u64 *intel_fb_plane_get_modifiers(struct intel_display *display,
 				  u8 plane_caps);
 bool intel_fb_plane_supports_modifier(struct intel_plane *plane, u64 modifier);
 
@@ -58,7 +57,7 @@ int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane);
 int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane);
 int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane);
 
-unsigned int intel_tile_size(const struct drm_i915_private *i915);
+unsigned int intel_tile_size(struct intel_display *display);
 unsigned int intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane);
 unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane);
 unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int color_plane);
@@ -80,7 +79,7 @@ u32 intel_plane_compute_aligned_offset(int *x, int *y,
 bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb);
 bool intel_fb_supports_90_270_rotation(const struct intel_framebuffer *fb);
 
-int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *fb);
+int intel_fill_fb_info(struct intel_display *display, struct intel_framebuffer *fb);
 void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int rotation,
 			struct intel_fb_view *view);
 int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
@@ -96,7 +95,7 @@ intel_user_framebuffer_create(struct drm_device *dev,
 			      struct drm_file *filp,
 			      const struct drm_mode_fb_cmd2 *user_mode_cmd);
 
-bool intel_fb_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier);
+bool intel_fb_modifier_uses_dpt(struct intel_display *display, u64 modifier);
 bool intel_fb_uses_dpt(const struct drm_framebuffer *fb);
 
 unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier);
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
index 56f029962261..39d488d17630 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
@@ -8,6 +8,7 @@
 #include "gem/i915_gem_object.h"
 
 #include "i915_drv.h"
+#include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_bo.h"
 
@@ -21,7 +22,7 @@ int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
 {
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct intel_display *display = to_intel_display(obj->base.dev);
 	unsigned int tiling, stride;
 
 	i915_gem_object_lock(obj, NULL);
@@ -36,7 +37,7 @@ int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
 		 */
 		if (tiling != I915_TILING_NONE &&
 		    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "tiling_mode doesn't match fb modifier\n");
 			return -EINVAL;
 		}
@@ -44,7 +45,7 @@ int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
 		if (tiling == I915_TILING_X) {
 			mode_cmd->modifier[0] = I915_FORMAT_MOD_X_TILED;
 		} else if (tiling == I915_TILING_Y) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "No Y tiling for legacy addfb\n");
 			return -EINVAL;
 		}
@@ -54,9 +55,9 @@ int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
 	 * gen2/3 display engine uses the fence if present,
 	 * so the tiling mode must match the fb modifier exactly.
 	 */
-	if (DISPLAY_VER(i915) < 4 &&
+	if (DISPLAY_VER(display) < 4 &&
 	    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "tiling_mode must match fb modifier exactly on gen2/3\n");
 		return -EINVAL;
 	}
@@ -66,7 +67,7 @@ int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
 	 * the fb pitch and fence stride match.
 	 */
 	if (tiling != I915_TILING_NONE && mode_cmd->pitches[0] != stride) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "pitch (%d) must match tiling stride (%d)\n",
 			    mode_cmd->pitches[0], stride);
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 13996d7059ad..7b3b7be7d5b8 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1670,7 +1670,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 	plane->id = PLANE_SPRITE0 + sprite;
 	plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane->id);
 
-	modifiers = intel_fb_plane_get_modifiers(dev_priv, INTEL_PLANE_CAP_TILING_X);
+	modifiers = intel_fb_plane_get_modifiers(display, INTEL_PLANE_CAP_TILING_X);
 
 	ret = drm_universal_plane_init(display->drm, &plane->base,
 				       0, plane_funcs,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 301ad3a22c4c..91eba560c0ab 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2697,6 +2697,7 @@ struct intel_plane *
 skl_universal_plane_create(struct drm_i915_private *dev_priv,
 			   enum pipe pipe, enum plane_id plane_id)
 {
+	struct intel_display *display = &dev_priv->display;
 	const struct drm_plane_funcs *plane_funcs;
 	struct intel_plane *plane;
 	enum drm_plane_type plane_type;
@@ -2813,7 +2814,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 			  INTEL_PLANE_CAP_CCS_RC_CC |
 			  INTEL_PLANE_CAP_CCS_MC);
 
-	modifiers = intel_fb_plane_get_modifiers(dev_priv, caps);
+	modifiers = intel_fb_plane_get_modifiers(display, caps);
 
 	ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
 				       0, plane_funcs,
@@ -2990,7 +2991,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	}
 
 	if (!dev_priv->display.params.enable_dpt &&
-	    intel_fb_modifier_uses_dpt(dev_priv, fb->modifier)) {
+	    intel_fb_modifier_uses_dpt(display, fb->modifier)) {
 		drm_dbg_kms(&dev_priv->drm, "DPT disabled, skipping initial FB\n");
 		goto error;
 	}
-- 
2.45.3

