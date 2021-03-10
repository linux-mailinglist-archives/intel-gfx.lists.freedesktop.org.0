Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9949334B5C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:18:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E210C6EA83;
	Wed, 10 Mar 2021 22:17:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3EFA6EA7D
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:56 +0000 (UTC)
IronPort-SDR: gbp4gF2MmlDKzM92RBKQbqpeuZip/vu3nZAOt2gBv0/WJa+X2NA3t/OzlgFSgEyz/URWf0X/JT
 KPn93BUpEbnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592096"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592096"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:56 -0800
IronPort-SDR: /cPGjeu6wBiO+SwLH25iBeLlpMWj2W8fZNdG+J/b3TfSJFPNOovKTsHHuKrjjao6eD/Xl60clg
 p5+idCJFungg==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852282"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:55 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:30 +0200
Message-Id: <20210310221736.2963264-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/23] drm/i915/intel_fb: Factor out
 plane_calc_remap_info()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Factor out to a new function the logic to calculate the FB remapping
parameters both during creating the FB and when flipping to it.

Add a new intel_fb_plane_remap_info() that can be used by a new remapped
view set up when creating the FB in a follow up patch.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  10 +-
 drivers/gpu/drm/i915/display/intel_fb.c       | 210 ++++++++----------
 2 files changed, 93 insertions(+), 127 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 65159a1ea7dd..fc02eca45e4d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -85,6 +85,11 @@ enum intel_broadcast_rgb {
 	INTEL_BROADCAST_RGB_LIMITED,
 };
 
+struct intel_fb_plane_remap_info {
+	unsigned int x, y;
+	unsigned int pitch; /* pixels */
+};
+
 struct intel_framebuffer {
 	struct drm_framebuffer base;
 	struct intel_frontbuffer *frontbuffer;
@@ -95,10 +100,7 @@ struct intel_framebuffer {
 		unsigned int x, y;
 	} normal[4];
 	/* for each plane in the rotated GTT view for no-CCS formats */
-	struct {
-		unsigned int x, y;
-		unsigned int pitch; /* pixels */
-	} rotated[2];
+	struct intel_fb_plane_remap_info rotated[2];
 };
 
 struct intel_fbdev {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index f661b21b119d..16a1b5c922bb 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -9,6 +9,8 @@
 #include "display/intel_display_types.h"
 #include "display/intel_fb.h"
 
+#define check_array_bounds(i915, a, i) drm_WARN_ON(&i915->drm, i >= ARRAY_SIZE(a))
+
 bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
 {
 	if (!is_ccs_modifier(fb->modifier))
@@ -574,66 +576,6 @@ static u32 calc_plane_aligned_offset(const struct intel_framebuffer *fb, int col
 	return offset / tile_size;
 }
 
-/*
- * Setup the rotated view for an FB plane and return the size the GTT mapping
- * requires for this view.
- */
-static u32 setup_fb_rotation(int plane, const struct intel_remapped_plane_info *plane_info,
-			     u32 gtt_offset_rotated, int x, int y,
-			     unsigned int width, unsigned int height,
-			     unsigned int tile_size,
-			     unsigned int tile_width, unsigned int tile_height,
-			     struct drm_framebuffer *fb)
-{
-	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
-	struct intel_rotation_info *rot_info = &intel_fb->rot_info;
-	unsigned int pitch_tiles;
-	struct drm_rect r;
-
-	/* Y or Yf modifiers required for 90/270 rotation */
-	if (fb->modifier != I915_FORMAT_MOD_Y_TILED &&
-	    fb->modifier != I915_FORMAT_MOD_Yf_TILED)
-		return 0;
-
-	if (drm_WARN_ON(fb->dev, plane >= ARRAY_SIZE(rot_info->plane)))
-		return 0;
-
-	rot_info->plane[plane] = *plane_info;
-
-	intel_fb->rotated[plane].pitch = plane_info->height * tile_height;
-
-	/* rotate the x/y offsets to match the GTT view */
-	drm_rect_init(&r, x, y, width, height);
-	drm_rect_rotate(&r,
-			plane_info->width * tile_width,
-			plane_info->height * tile_height,
-			DRM_MODE_ROTATE_270);
-	x = r.x1;
-	y = r.y1;
-
-	/* rotate the tile dimensions to match the GTT view */
-	pitch_tiles = intel_fb->rotated[plane].pitch / tile_height;
-	swap(tile_width, tile_height);
-
-	/*
-	 * We only keep the x/y offsets, so push all of the
-	 * gtt offset into the x/y offsets.
-	 */
-	intel_adjust_tile_offset(&x, &y,
-				 tile_width, tile_height,
-				 tile_size, pitch_tiles,
-				 gtt_offset_rotated * tile_size, 0);
-
-	/*
-	 * First pixel of the framebuffer from
-	 * the start of the rotated gtt mapping.
-	 */
-	intel_fb->rotated[plane].x = x;
-	intel_fb->rotated[plane].y = y;
-
-	return plane_info->width * plane_info->height;
-}
-
 struct fb_plane_view_dims {
 	unsigned int width, height;
 	unsigned int tile_width, tile_height;
@@ -665,6 +607,66 @@ static unsigned int plane_view_tile_rows(const struct intel_framebuffer *fb, int
 	return DIV_ROUND_UP(y + dims->height, dims->tile_height);
 }
 
+static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_plane,
+				 const struct fb_plane_view_dims *dims,
+				 enum i915_ggtt_view_type view_type,
+				 u32 obj_offset, u32 gtt_offset, int x, int y,
+				 struct intel_remapped_plane_info *gtt_remap_info,
+				 struct intel_fb_plane_remap_info *plane_remap_info)
+{
+	const struct drm_framebuffer *drm_fb = &fb->base;
+	struct drm_i915_private *i915 = to_i915(drm_fb->dev);
+	unsigned int tile_width = dims->tile_width;
+	unsigned int tile_height = dims->tile_height;
+	unsigned int tile_size = intel_tile_size(i915);
+	unsigned int pitch_tiles;
+	struct drm_rect r;
+
+	gtt_remap_info->offset = obj_offset;
+	gtt_remap_info->width = DIV_ROUND_UP(x + dims->width, dims->tile_width);
+	gtt_remap_info->height = plane_view_tile_rows(fb, color_plane, dims, y);
+	gtt_remap_info->stride = plane_view_stride_tiles(fb, color_plane, dims);
+
+	if (view_type == I915_GGTT_VIEW_ROTATED) {
+		/* rotate the x/y offsets to match the GTT view */
+		drm_rect_init(&r, x, y, dims->width, dims->height);
+		drm_rect_rotate(&r,
+				gtt_remap_info->width * tile_width,
+				gtt_remap_info->height * tile_height,
+				DRM_MODE_ROTATE_270);
+
+		plane_remap_info->x = r.x1;
+		plane_remap_info->y = r.y1;
+
+		pitch_tiles = gtt_remap_info->height;
+		plane_remap_info->pitch = pitch_tiles * tile_height;
+		/* rotate the tile dimensions to match the GTT view */
+		swap(tile_width, tile_height);
+	} else {
+		drm_WARN_ON(&i915->drm, view_type != I915_GGTT_VIEW_REMAPPED);
+
+		plane_remap_info->x = x;
+		plane_remap_info->y = y;
+
+		pitch_tiles = gtt_remap_info->width;
+		plane_remap_info->pitch = pitch_tiles * tile_width * drm_fb->format->cpp[color_plane];
+	}
+
+	/*
+	 * We only keep the x/y offsets, so push all of the
+	 * gtt offset into the x/y offsets.
+	 * x,y will hold the first pixel of the framebuffer
+	 * plane from the start of the remapped/rotated gtt
+	 * mapping.
+	 */
+	intel_adjust_tile_offset(&plane_remap_info->x, &plane_remap_info->y,
+				 tile_width, tile_height,
+				 tile_size, pitch_tiles,
+				 gtt_offset * tile_size, 0);
+
+	return gtt_remap_info->width * gtt_remap_info->height;
+}
+
 static int calc_plane_normal_size(const struct intel_framebuffer *fb, int color_plane,
 				  const struct fb_plane_view_dims *dims,
 				  int x, int y)
@@ -734,21 +736,17 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebuffer *fb
 
 		offset = calc_plane_aligned_offset(intel_fb, i, &x, &y);
 
-		if (!is_surface_linear(fb, i)) {
-			struct intel_remapped_plane_info plane_info;
+		/* Y or Yf modifiers required for 90/270 rotation */
+		if (fb->modifier == I915_FORMAT_MOD_Y_TILED ||
+		    fb->modifier == I915_FORMAT_MOD_Yf_TILED) {
+			check_array_bounds(i915, intel_fb->rot_info.plane, i);
+			check_array_bounds(i915, intel_fb->rotated, i);
 
-			plane_info.offset = offset;
-			plane_info.stride = plane_view_stride_tiles(intel_fb, i, &view_dims);
-			plane_info.width = DIV_ROUND_UP(x + width, view_dims.tile_width);
-			plane_info.height = plane_view_tile_rows(intel_fb, i, &view_dims, y);
-
-			gtt_offset_rotated +=
-				setup_fb_rotation(i, &plane_info,
-						  gtt_offset_rotated,
-						  x, y, width, height,
-						  tile_size,
-						  view_dims.tile_width, view_dims.tile_height,
-						  fb);
+			gtt_offset_rotated += calc_plane_remap_info(intel_fb, i, &view_dims,
+								    I915_GGTT_VIEW_ROTATED,
+								    offset, gtt_offset_rotated, x, y,
+								    &intel_fb->rot_info.plane[i],
+								    &intel_fb->rotated[i]);
 		}
 
 		size = calc_plane_normal_size(intel_fb, i, &view_dims, x, y);
@@ -772,10 +770,8 @@ static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 		to_i915(plane_state->uapi.plane->dev);
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
-	struct intel_rotation_info *info = &plane_state->view.rotated;
 	unsigned int rotation = plane_state->hw.rotation;
 	int i, num_planes = fb->format->num_planes;
-	unsigned int tile_size = intel_tile_size(i915);
 	unsigned int src_x, src_y;
 	unsigned int src_w, src_h;
 	u32 gtt_offset = 0;
@@ -804,20 +800,19 @@ static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 	for (i = 0; i < num_planes; i++) {
 		unsigned int hsub = i ? fb->format->hsub : 1;
 		unsigned int vsub = i ? fb->format->vsub : 1;
-		unsigned int cpp = fb->format->cpp[i];
-		unsigned int tile_width, tile_height;
+		struct intel_fb_plane_remap_info plane_remap_info;
+		struct fb_plane_view_dims view_dims;
 		unsigned int width, height;
-		unsigned int pitch_tiles;
 		unsigned int x, y;
 		u32 offset;
 
-		intel_tile_dims(fb, i, &tile_width, &tile_height);
-
 		x = src_x / hsub;
 		y = src_y / vsub;
 		width = src_w / hsub;
 		height = src_h / vsub;
 
+		init_plane_view_dims(intel_fb, i, width, height, &view_dims);
+
 		/*
 		 * First pixel of the src viewport from the
 		 * start of the normal gtt mapping.
@@ -827,49 +822,18 @@ static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 
 		offset = calc_plane_aligned_offset(intel_fb, i, &x, &y);
 
-		drm_WARN_ON(&i915->drm, i >= ARRAY_SIZE(info->plane));
-		info->plane[i].offset = offset;
-		info->plane[i].stride = DIV_ROUND_UP(fb->pitches[i],
-						     tile_width * cpp);
-		info->plane[i].width = DIV_ROUND_UP(x + width, tile_width);
-		info->plane[i].height = DIV_ROUND_UP(y + height, tile_height);
-
-		if (drm_rotation_90_or_270(rotation)) {
-			struct drm_rect r;
-
-			/* rotate the x/y offsets to match the GTT view */
-			drm_rect_init(&r, x, y, width, height);
-			drm_rect_rotate(&r,
-					info->plane[i].width * tile_width,
-					info->plane[i].height * tile_height,
-					DRM_MODE_ROTATE_270);
-			x = r.x1;
-			y = r.y1;
-
-			pitch_tiles = info->plane[i].height;
-			plane_state->color_plane[i].stride = pitch_tiles * tile_height;
-
-			/* rotate the tile dimensions to match the GTT view */
-			swap(tile_width, tile_height);
-		} else {
-			pitch_tiles = info->plane[i].width;
-			plane_state->color_plane[i].stride = pitch_tiles * tile_width * cpp;
-		}
-
-		/*
-		 * We only keep the x/y offsets, so push all of the
-		 * gtt offset into the x/y offsets.
-		 */
-		intel_adjust_tile_offset(&x, &y,
-					 tile_width, tile_height,
-					 tile_size, pitch_tiles,
-					 gtt_offset * tile_size, 0);
-
-		gtt_offset += info->plane[i].width * info->plane[i].height;
-
+		check_array_bounds(i915, plane_state->view.remapped.plane, i);
+		gtt_offset += calc_plane_remap_info(intel_fb, i, &view_dims,
+						    plane_state->view.type,
+						    offset, gtt_offset, x, y,
+						    &plane_state->view.remapped.plane[i],
+						    &plane_remap_info);
+
+		check_array_bounds(i915, plane_state->color_plane, i);
 		plane_state->color_plane[i].offset = 0;
-		plane_state->color_plane[i].x = x;
-		plane_state->color_plane[i].y = y;
+		plane_state->color_plane[i].x = plane_remap_info.x;
+		plane_state->color_plane[i].y = plane_remap_info.y;
+		plane_state->color_plane[i].stride = plane_remap_info.pitch;
 	}
 }
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
