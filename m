Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EF8334B5B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:18:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE6596EA7D;
	Wed, 10 Mar 2021 22:17:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EAF36EA7A
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:54 +0000 (UTC)
IronPort-SDR: EXyziEYrvLGgDw3bUOsyVerfuW4QK71w3k5q06jFoaygG2QieTQOWp+CNTaXVU8SxGS336l/oG
 jWdZLr6SLAiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592082"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592082"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:52 -0800
IronPort-SDR: VdMfF+T78OJVvI/tidkfgzeyXd/eLlwXEx38rSpD/e5Dc36PmlhbOIDPzPgooEc70gX7AcJePM
 D2toYh7uH45A==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852246"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:51 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:26 +0200
Message-Id: <20210310221736.2963264-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/23] drm/i915/intel_fb: s/dev_priv/i915/
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

Rename dev_priv to i915 in the intel_fb.[ch] files.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 66 ++++++++++++-------------
 drivers/gpu/drm/i915/display/intel_fb.h |  6 +--
 2 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index c06c0875612d..b96849ec32df 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -80,9 +80,9 @@ int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
 		return 0;
 }
 
-unsigned int intel_tile_size(const struct drm_i915_private *dev_priv)
+unsigned int intel_tile_size(const struct drm_i915_private *i915)
 {
-	return IS_GEN(dev_priv, 2) ? 2048 : 4096;
+	return IS_GEN(i915, 2) ? 2048 : 4096;
 }
 
 unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane)
@@ -115,13 +115,13 @@ unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int color_pla
 	return fb->pitches[color_plane] * tile_height;
 }
 
-unsigned int intel_cursor_alignment(const struct drm_i915_private *dev_priv)
+unsigned int intel_cursor_alignment(const struct drm_i915_private *i915)
 {
-	if (IS_I830(dev_priv))
+	if (IS_I830(i915))
 		return 16 * 1024;
-	else if (IS_I85X(dev_priv))
+	else if (IS_I85X(i915))
 		return 256;
-	else if (IS_I845G(dev_priv) || IS_I865G(dev_priv))
+	else if (IS_I845G(i915) || IS_I865G(i915))
 		return 32;
 	else
 		return 4 * 1024;
@@ -216,16 +216,16 @@ static u32 intel_adjust_aligned_offset(int *x, int *y,
 				       unsigned int pitch,
 				       u32 old_offset, u32 new_offset)
 {
-	struct drm_i915_private *dev_priv = to_i915(fb->dev);
+	struct drm_i915_private *i915 = to_i915(fb->dev);
 	unsigned int cpp = fb->format->cpp[color_plane];
 
-	drm_WARN_ON(&dev_priv->drm, new_offset > old_offset);
+	drm_WARN_ON(&i915->drm, new_offset > old_offset);
 
 	if (!is_surface_linear(fb, color_plane)) {
 		unsigned int tile_size, tile_width, tile_height;
 		unsigned int pitch_tiles;
 
-		tile_size = intel_tile_size(dev_priv);
+		tile_size = intel_tile_size(i915);
 		intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
 
 		if (drm_rotation_90_or_270(rotation)) {
@@ -277,7 +277,7 @@ u32 intel_plane_adjust_aligned_offset(int *x, int *y,
  * used. This is why the user has to pass in the pitch since it
  * is specified in the rotated orientation.
  */
-static u32 intel_compute_aligned_offset(struct drm_i915_private *dev_priv,
+static u32 intel_compute_aligned_offset(struct drm_i915_private *i915,
 					int *x, int *y,
 					const struct drm_framebuffer *fb,
 					int color_plane,
@@ -292,7 +292,7 @@ static u32 intel_compute_aligned_offset(struct drm_i915_private *dev_priv,
 		unsigned int tile_size, tile_width, tile_height;
 		unsigned int tile_rows, tiles, pitch_tiles;
 
-		tile_size = intel_tile_size(dev_priv);
+		tile_size = intel_tile_size(i915);
 		intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
 
 		if (drm_rotation_90_or_270(rotation)) {
@@ -337,18 +337,18 @@ u32 intel_plane_compute_aligned_offset(int *x, int *y,
 				       int color_plane)
 {
 	struct intel_plane *intel_plane = to_intel_plane(state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(intel_plane->base.dev);
+	struct drm_i915_private *i915 = to_i915(intel_plane->base.dev);
 	const struct drm_framebuffer *fb = state->hw.fb;
 	unsigned int rotation = state->hw.rotation;
 	int pitch = state->color_plane[color_plane].stride;
 	u32 alignment;
 
 	if (intel_plane->id == PLANE_CURSOR)
-		alignment = intel_cursor_alignment(dev_priv);
+		alignment = intel_cursor_alignment(i915);
 	else
 		alignment = intel_surf_alignment(fb, color_plane);
 
-	return intel_compute_aligned_offset(dev_priv, x, y, fb, color_plane,
+	return intel_compute_aligned_offset(i915, x, y, fb, color_plane,
 					    pitch, rotation, alignment);
 }
 
@@ -357,20 +357,20 @@ static int intel_fb_offset_to_xy(int *x, int *y,
 				 const struct drm_framebuffer *fb,
 				 int color_plane)
 {
-	struct drm_i915_private *dev_priv = to_i915(fb->dev);
+	struct drm_i915_private *i915 = to_i915(fb->dev);
 	unsigned int height;
 	u32 alignment;
 
-	if (INTEL_GEN(dev_priv) >= 12 &&
+	if (INTEL_GEN(i915) >= 12 &&
 	    is_semiplanar_uv_plane(fb, color_plane))
 		alignment = intel_tile_row_size(fb, color_plane);
 	else if (fb->modifier != DRM_FORMAT_MOD_LINEAR)
-		alignment = intel_tile_size(dev_priv);
+		alignment = intel_tile_size(i915);
 	else
 		alignment = 0;
 
 	if (alignment != 0 && fb->offsets[color_plane] % alignment) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "Misaligned offset 0x%08x for color plane %d\n",
 			    fb->offsets[color_plane], color_plane);
 		return -EINVAL;
@@ -382,7 +382,7 @@ static int intel_fb_offset_to_xy(int *x, int *y,
 	/* Catch potential overflows early */
 	if (add_overflows_t(u32, mul_u32_u32(height, fb->pitches[color_plane]),
 			    fb->offsets[color_plane])) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "Bad offset 0x%08x or pitch %d for color plane %d\n",
 			    fb->offsets[color_plane], fb->pitches[color_plane],
 			    color_plane);
@@ -447,7 +447,7 @@ static int intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int ccs_plane, int
 static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	int i;
 
@@ -461,7 +461,7 @@ static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 	 * Would also need to deal with the fence POT alignment
 	 * and gen2 2KiB GTT tile size.
 	 */
-	if (INTEL_GEN(dev_priv) < 4)
+	if (INTEL_GEN(i915) < 4)
 		return false;
 
 	/*
@@ -473,7 +473,7 @@ static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 
 	/* Linear needs a page aligned stride for remapping */
 	if (fb->modifier == DRM_FORMAT_MOD_LINEAR) {
-		unsigned int alignment = intel_tile_size(dev_priv) - 1;
+		unsigned int alignment = intel_tile_size(i915) - 1;
 
 		for (i = 0; i < fb->format->num_planes; i++) {
 			if (fb->pitches[i] & alignment)
@@ -580,14 +580,14 @@ static u32 setup_fb_rotation(int plane, const struct intel_remapped_plane_info *
 	return plane_info->width * plane_info->height;
 }
 
-int intel_fill_fb_info(struct drm_i915_private *dev_priv, struct drm_framebuffer *fb)
+int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebuffer *fb)
 {
 	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 	u32 gtt_offset_rotated = 0;
 	unsigned int max_size = 0;
 	int i, num_planes = fb->format->num_planes;
-	unsigned int tile_size = intel_tile_size(dev_priv);
+	unsigned int tile_size = intel_tile_size(i915);
 
 	for (i = 0; i < num_planes; i++) {
 		unsigned int width, height;
@@ -613,7 +613,7 @@ int intel_fill_fb_info(struct drm_i915_private *dev_priv, struct drm_framebuffer
 
 		ret = intel_fb_offset_to_xy(&x, &y, fb, i);
 		if (ret) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(&i915->drm,
 				    "bad fb plane %d offset: 0x%x\n",
 				    i, fb->offsets[i]);
 			return ret;
@@ -634,7 +634,7 @@ int intel_fill_fb_info(struct drm_i915_private *dev_priv, struct drm_framebuffer
 		 */
 		if (i == 0 && i915_gem_object_is_tiled(obj) &&
 		    (x + width) * cpp > fb->pitches[i]) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(&i915->drm,
 				    "bad fb plane %d offset: 0x%x\n",
 				     i, fb->offsets[i]);
 			return -EINVAL;
@@ -647,7 +647,7 @@ int intel_fill_fb_info(struct drm_i915_private *dev_priv, struct drm_framebuffer
 		intel_fb->normal[i].x = x;
 		intel_fb->normal[i].y = y;
 
-		offset = intel_compute_aligned_offset(dev_priv, &x, &y, fb, i,
+		offset = intel_compute_aligned_offset(i915, &x, &y, fb, i,
 						      fb->pitches[i],
 						      DRM_MODE_ROTATE_0,
 						      tile_size);
@@ -692,7 +692,7 @@ int intel_fill_fb_info(struct drm_i915_private *dev_priv, struct drm_framebuffer
 	}
 
 	if (mul_u32_u32(max_size, tile_size) > obj->base.size) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "fb too big for bo (need %llu bytes, have %zu bytes)\n",
 			    mul_u32_u32(max_size, tile_size), obj->base.size);
 		return -EINVAL;
@@ -703,14 +703,14 @@ int intel_fill_fb_info(struct drm_i915_private *dev_priv, struct drm_framebuffer
 
 static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv =
+	struct drm_i915_private *i915 =
 		to_i915(plane_state->uapi.plane->dev);
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 	struct intel_rotation_info *info = &plane_state->view.rotated;
 	unsigned int rotation = plane_state->hw.rotation;
 	int i, num_planes = fb->format->num_planes;
-	unsigned int tile_size = intel_tile_size(dev_priv);
+	unsigned int tile_size = intel_tile_size(i915);
 	unsigned int src_x, src_y;
 	unsigned int src_w, src_h;
 	u32 gtt_offset = 0;
@@ -724,7 +724,7 @@ static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 	src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
 
-	drm_WARN_ON(&dev_priv->drm, is_ccs_modifier(fb->modifier));
+	drm_WARN_ON(&i915->drm, is_ccs_modifier(fb->modifier));
 
 	/* Make src coordinates relative to the viewport */
 	drm_rect_translate(&plane_state->uapi.src,
@@ -760,12 +760,12 @@ static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 		x += intel_fb->normal[i].x;
 		y += intel_fb->normal[i].y;
 
-		offset = intel_compute_aligned_offset(dev_priv, &x, &y,
+		offset = intel_compute_aligned_offset(i915, &x, &y,
 						      fb, i, fb->pitches[i],
 						      DRM_MODE_ROTATE_0, tile_size);
 		offset /= tile_size;
 
-		drm_WARN_ON(&dev_priv->drm, i >= ARRAY_SIZE(info->plane));
+		drm_WARN_ON(&i915->drm, i >= ARRAY_SIZE(info->plane));
 		info->plane[i].offset = offset;
 		info->plane[i].stride = DIV_ROUND_UP(fb->pitches[i],
 						     tile_width * cpp);
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 042946f452f0..bd1551c694eb 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -28,11 +28,11 @@ int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane);
 int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane);
 int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane);
 
-unsigned int intel_tile_size(const struct drm_i915_private *dev_priv);
+unsigned int intel_tile_size(const struct drm_i915_private *i915);
 unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane);
 unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int color_plane);
 
-unsigned int intel_cursor_alignment(const struct drm_i915_private *dev_priv);
+unsigned int intel_cursor_alignment(const struct drm_i915_private *i915);
 
 void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
 				    const struct drm_framebuffer *fb,
@@ -48,7 +48,7 @@ u32 intel_plane_compute_aligned_offset(int *x, int *y,
 
 int intel_fb_pitch(const struct drm_framebuffer *fb, int color_plane, unsigned int rotation);
 
-int intel_fill_fb_info(struct drm_i915_private *dev_priv, struct drm_framebuffer *fb);
+int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebuffer *fb);
 void intel_fill_fb_ggtt_view(struct i915_ggtt_view *view, const struct drm_framebuffer *fb,
 			     unsigned int rotation);
 int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
