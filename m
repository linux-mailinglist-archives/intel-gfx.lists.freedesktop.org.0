Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 203C243BD77
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 00:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D44166E4D0;
	Tue, 26 Oct 2021 22:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15C2B6E4CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 22:51:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="217203180"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="217203180"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:15 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="497574348"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:15 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Oct 2021 01:51:03 +0300
Message-Id: <20211026225105.2783797-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211026225105.2783797-1-imre.deak@intel.com>
References: <20211026225105.2783797-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/fb: Rename
 i915_color_plane_view::stride to mapping_stride
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

The next patch needs to distinguish between a view's mapping and scanout
stride. Rename the current stride parameter to mapping_stride with the
script below. mapping_stride will keep the same meaning as stride had
on all platforms so far, while the meaning of it will change on ADLP.

No functional changes.

@@
identifier intel_fb_view;
identifier i915_color_plane_view;
identifier color_plane;
expression e;
type T;
@@
struct intel_fb_view {
...
struct i915_color_plane_view {
...
- T stride;
+ T mapping_stride;
...
} color_plane[e];
...
};

@@
struct i915_color_plane_view pv;
@@
  pv.
-    stride
+    mapping_stride

@@
struct i915_color_plane_view *pvp;
@@
  pvp->
-     stride
+     mapping_stride

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  4 +--
 drivers/gpu/drm/i915/display/intel_cursor.c   |  6 ++---
 drivers/gpu/drm/i915/display/intel_display.c  |  6 ++---
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c       | 25 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  8 +++---
 .../drm/i915/display/skl_universal_plane.c    |  4 +--
 8 files changed, 29 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index a939accff7ee2..e1b52b27cb7c5 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -256,7 +256,7 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
 		u32 alignment = intel_surf_alignment(fb, 0);
 		int cpp = fb->format->cpp[0];
 
-		while ((src_x + src_w) * cpp > plane_state->view.color_plane[0].stride) {
+		while ((src_x + src_w) * cpp > plane_state->view.color_plane[0].mapping_stride) {
 			if (offset == 0) {
 				drm_dbg_kms(&dev_priv->drm,
 					    "Unable to find suitable display surface offset due to X-tiling\n");
@@ -431,7 +431,7 @@ static void i9xx_update_plane(struct intel_plane *plane,
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
-			  plane_state->view.color_plane[0].stride);
+			  plane_state->view.color_plane[0].mapping_stride);
 
 	if (DISPLAY_VER(dev_priv) < 4) {
 		/*
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 6b08d8bca5cd4..5ab716398f444 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -190,7 +190,7 @@ static u32 i845_cursor_ctl(const struct intel_crtc_state *crtc_state,
 {
 	return CURSOR_ENABLE |
 		CURSOR_FORMAT_ARGB |
-		CURSOR_STRIDE(plane_state->view.color_plane[0].stride);
+		CURSOR_STRIDE(plane_state->view.color_plane[0].mapping_stride);
 }
 
 static bool i845_cursor_size_ok(const struct intel_plane_state *plane_state)
@@ -229,7 +229,7 @@ static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 	}
 
 	drm_WARN_ON(&i915->drm, plane_state->uapi.visible &&
-		    plane_state->view.color_plane[0].stride != fb->pitches[0]);
+		    plane_state->view.color_plane[0].mapping_stride != fb->pitches[0]);
 
 	switch (fb->pitches[0]) {
 	case 256:
@@ -450,7 +450,7 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 	}
 
 	drm_WARN_ON(&dev_priv->drm, plane_state->uapi.visible &&
-		    plane_state->view.color_plane[0].stride != fb->pitches[0]);
+		    plane_state->view.color_plane[0].mapping_stride != fb->pitches[0]);
 
 	if (fb->pitches[0] !=
 	    drm_rect_width(&plane_state->uapi.dst) * fb->format->cpp[0]) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8200969c9a046..b7718f2f63977 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -653,7 +653,7 @@ u32 intel_fb_xy_to_linear(int x, int y,
 {
 	const struct drm_framebuffer *fb = state->hw.fb;
 	unsigned int cpp = fb->format->cpp[color_plane];
-	unsigned int pitch = state->view.color_plane[color_plane].stride;
+	unsigned int pitch = state->view.color_plane[color_plane].mapping_stride;
 
 	return y * pitch + x * cpp;
 }
@@ -7751,8 +7751,8 @@ static int intel_atomic_check_async(struct intel_atomic_state *state)
 			return -EINVAL;
 		}
 
-		if (old_plane_state->view.color_plane[0].stride !=
-		    new_plane_state->view.color_plane[0].stride) {
+		if (old_plane_state->view.color_plane[0].mapping_stride !=
+		    new_plane_state->view.color_plane[0].mapping_stride) {
 			drm_dbg_kms(&i915->drm, "Stride cannot be changed in async flip\n");
 			return -EINVAL;
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 85cb55034bb02..cd8790617b417 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -115,7 +115,7 @@ struct intel_fb_view {
 		 *   bytes for 0/180 degree rotation
 		 *   pixels for 90/270 degree rotation
 		 */
-		unsigned int stride;
+		unsigned int mapping_stride;
 	} color_plane[4];
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index dde408902239f..b0900376b984d 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -909,7 +909,7 @@ u32 intel_plane_adjust_aligned_offset(int *x, int *y,
 {
 	return intel_adjust_aligned_offset(x, y, state->hw.fb, color_plane,
 					   state->hw.rotation,
-					   state->view.color_plane[color_plane].stride,
+					   state->view.color_plane[color_plane].mapping_stride,
 					   old_offset, new_offset);
 }
 
@@ -990,7 +990,7 @@ u32 intel_plane_compute_aligned_offset(int *x, int *y,
 	struct drm_i915_private *i915 = to_i915(intel_plane->base.dev);
 	const struct drm_framebuffer *fb = state->hw.fb;
 	unsigned int rotation = state->hw.rotation;
-	int pitch = state->view.color_plane[color_plane].stride;
+	int pitch = state->view.color_plane[color_plane].mapping_stride;
 	u32 alignment;
 
 	if (intel_plane->id == PLANE_CURSOR)
@@ -1149,11 +1149,11 @@ bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
 static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_plane, unsigned int rotation)
 {
 	if (drm_rotation_90_or_270(rotation))
-		return fb->rotated_view.color_plane[color_plane].stride;
+		return fb->rotated_view.color_plane[color_plane].mapping_stride;
 	else if (intel_fb_needs_pot_stride_remap(fb))
-		return fb->remapped_view.color_plane[color_plane].stride;
+		return fb->remapped_view.color_plane[color_plane].mapping_stride;
 	else
-		return fb->normal_view.color_plane[color_plane].stride;
+		return fb->normal_view.color_plane[color_plane].mapping_stride;
 }
 
 static bool intel_plane_needs_remap(const struct intel_plane_state *plane_state)
@@ -1364,7 +1364,7 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 		color_plane_info->x = r.x1;
 		color_plane_info->y = r.y1;
 
-		color_plane_info->stride = remap_info->dst_stride * tile_height;
+		color_plane_info->mapping_stride = remap_info->dst_stride * tile_height;
 
 		size += remap_info->dst_stride * remap_info->width;
 
@@ -1387,7 +1387,7 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 		color_plane_info->y = y;
 
 		if (remap_info->linear) {
-			color_plane_info->stride = fb->base.pitches[color_plane];
+			color_plane_info->mapping_stride = fb->base.pitches[color_plane];
 
 			size += remap_info->size;
 		} else {
@@ -1395,8 +1395,9 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 									      remap_info->width);
 
 			assign_chk_ovf(i915, remap_info->dst_stride, dst_stride);
-			color_plane_info->stride = dst_stride *
-						   tile_width * fb->base.format->cpp[color_plane];
+			color_plane_info->mapping_stride = dst_stride *
+							   tile_width *
+							   fb->base.format->cpp[color_plane];
 
 			size += dst_stride * remap_info->height;
 		}
@@ -1410,7 +1411,7 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 	if (remap_info->linear)
 		intel_adjust_linear_offset(&color_plane_info->x, &color_plane_info->y,
 					   fb->base.format->cpp[color_plane],
-					   color_plane_info->stride,
+					   color_plane_info->mapping_stride,
 					   gtt_offset * tile_size, 0);
 	else
 		intel_adjust_tile_offset(&color_plane_info->x, &color_plane_info->y,
@@ -1521,7 +1522,7 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 		 */
 		fb->normal_view.color_plane[i].x = x;
 		fb->normal_view.color_plane[i].y = y;
-		fb->normal_view.color_plane[i].stride = fb->base.pitches[i];
+		fb->normal_view.color_plane[i].mapping_stride = fb->base.pitches[i];
 
 		offset = calc_plane_aligned_offset(fb, i, &x, &y);
 
@@ -1715,7 +1716,7 @@ static int intel_plane_check_stride(const struct intel_plane_state *plane_state)
 		return 0;
 
 	/* FIXME other color planes? */
-	stride = plane_state->view.color_plane[0].stride;
+	stride = plane_state->view.color_plane[0].mapping_stride;
 	max_stride = plane->max_stride(plane, fb->format->format,
 				       fb->modifier, rotation);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1f66de77a6b1e..834eb4cc7c105 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -68,7 +68,7 @@ static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int stride;
 
-	stride = plane_state->view.color_plane[0].stride;
+	stride = plane_state->view.color_plane[0].mapping_stride;
 	if (!drm_rotation_90_or_270(plane_state->hw.rotation))
 		stride /= fb->format->cpp[0];
 
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 2f4f47ab9da03..a22a23447da54 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -448,7 +448,7 @@ vlv_update_plane(struct intel_plane *plane,
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, SPSTRIDE(pipe, plane_id),
-			  plane_state->view.color_plane[0].stride);
+			  plane_state->view.color_plane[0].mapping_stride);
 	intel_de_write_fw(dev_priv, SPPOS(pipe, plane_id),
 			  (crtc_y << 16) | crtc_x);
 	intel_de_write_fw(dev_priv, SPSIZE(pipe, plane_id),
@@ -872,7 +872,7 @@ ivb_update_plane(struct intel_plane *plane,
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, SPRSTRIDE(pipe),
-			  plane_state->view.color_plane[0].stride);
+			  plane_state->view.color_plane[0].mapping_stride);
 	intel_de_write_fw(dev_priv, SPRPOS(pipe), (crtc_y << 16) | crtc_x);
 	intel_de_write_fw(dev_priv, SPRSIZE(pipe), (crtc_h << 16) | crtc_w);
 	if (IS_IVYBRIDGE(dev_priv))
@@ -1200,7 +1200,7 @@ g4x_update_plane(struct intel_plane *plane,
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, DVSSTRIDE(pipe),
-			  plane_state->view.color_plane[0].stride);
+			  plane_state->view.color_plane[0].mapping_stride);
 	intel_de_write_fw(dev_priv, DVSPOS(pipe), (crtc_y << 16) | crtc_x);
 	intel_de_write_fw(dev_priv, DVSSIZE(pipe), (crtc_h << 16) | crtc_w);
 	intel_de_write_fw(dev_priv, DVSSCALE(pipe), dvsscale);
@@ -1300,7 +1300,7 @@ g4x_sprite_check_scaling(struct intel_crtc_state *crtc_state,
 	int src_x, src_w, src_h, crtc_w, crtc_h;
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	unsigned int stride = plane_state->view.color_plane[0].stride;
+	unsigned int stride = plane_state->view.color_plane[0].mapping_stride;
 	unsigned int cpp = fb->format->cpp[0];
 	unsigned int width_bytes;
 	int min_width, min_height;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 69fd56de83a7a..10568dd6cb9f1 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -589,7 +589,7 @@ static u32 skl_plane_stride(const struct intel_plane_state *plane_state,
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
-	u32 stride = plane_state->view.color_plane[color_plane].stride;
+	u32 stride = plane_state->view.color_plane[color_plane].mapping_stride;
 
 	if (color_plane >= fb->format->num_planes)
 		return 0;
@@ -1433,7 +1433,7 @@ int skl_calc_main_surface_offset(const struct intel_plane_state *plane_state,
 	if (fb->modifier == I915_FORMAT_MOD_X_TILED) {
 		int cpp = fb->format->cpp[0];
 
-		while ((*x + w) * cpp > plane_state->view.color_plane[0].stride) {
+		while ((*x + w) * cpp > plane_state->view.color_plane[0].mapping_stride) {
 			if (*offset == 0) {
 				drm_dbg_kms(&dev_priv->drm,
 					    "Unable to find suitable display surface offset due to X-tiling\n");
-- 
2.27.0

