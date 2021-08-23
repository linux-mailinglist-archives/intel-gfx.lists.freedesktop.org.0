Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8CD3F4AA1
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 14:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5814B89DC7;
	Mon, 23 Aug 2021 12:26:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF6689DC7
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 12:26:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="196664348"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="196664348"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:26:16 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="683227236"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:26:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com,
	daniel@ffwll.ch
Date: Mon, 23 Aug 2021 15:25:36 +0300
Message-Id: <76b61738857619c1cce6e4306d14da19ee3bbf08.1629721467.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629721467.git.jani.nikula@intel.com>
References: <cover.1629721467.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/fb: move user framebuffer stuff to
 intel_fb.c
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

Split out fb related stuff from intel_display.c to intel_fb.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 355 -------------------
 drivers/gpu/drm/i915/display/intel_fb.c      | 354 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h      |  14 +-
 3 files changed, 366 insertions(+), 357 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a9e3ac07b207..794690c0dba5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -112,9 +112,6 @@ static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 static void ilk_pch_clock_get(struct intel_crtc *crtc,
 			      struct intel_crtc_state *pipe_config);
 
-static int intel_framebuffer_init(struct intel_framebuffer *ifb,
-				  struct drm_i915_gem_object *obj,
-				  struct drm_mode_fb_cmd2 *mode_cmd);
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
 static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
@@ -1134,22 +1131,6 @@ void intel_add_fb_offsets(int *x, int *y,
 	*y += state->view.color_plane[color_plane].y;
 }
 
-static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
-{
-	switch (fb_modifier) {
-	case I915_FORMAT_MOD_X_TILED:
-		return I915_TILING_X;
-	case I915_FORMAT_MOD_Y_TILED:
-	case I915_FORMAT_MOD_Y_TILED_CCS:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
-		return I915_TILING_Y;
-	default:
-		return I915_TILING_NONE;
-	}
-}
-
 /*
  * From the Sky Lake PRM:
  * "The Color Control Surface (CCS) contains the compression status of
@@ -1280,12 +1261,6 @@ intel_get_format_info(const struct drm_mode_fb_cmd2 *cmd)
 	}
 }
 
-static int gen12_ccs_aux_stride(struct drm_framebuffer *fb, int ccs_plane)
-{
-	return DIV_ROUND_UP(fb->pitches[skl_ccs_to_main_plane(fb, ccs_plane)],
-			    512) * 64;
-}
-
 u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 			      u32 pixel_format, u64 modifier)
 {
@@ -1310,71 +1285,6 @@ u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 				 DRM_MODE_ROTATE_0);
 }
 
-static
-u32 intel_fb_max_stride(struct drm_i915_private *dev_priv,
-			u32 pixel_format, u64 modifier)
-{
-	/*
-	 * Arbitrary limit for gen4+ chosen to match the
-	 * render engine max stride.
-	 *
-	 * The new CCS hash mode makes remapping impossible
-	 */
-	if (DISPLAY_VER(dev_priv) < 4 || is_ccs_modifier(modifier) ||
-	    intel_modifier_uses_dpt(dev_priv, modifier))
-		return intel_plane_fb_max_stride(dev_priv, pixel_format, modifier);
-	else if (DISPLAY_VER(dev_priv) >= 7)
-		return 256 * 1024;
-	else
-		return 128 * 1024;
-}
-
-static u32
-intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
-{
-	struct drm_i915_private *dev_priv = to_i915(fb->dev);
-	u32 tile_width;
-
-	if (is_surface_linear(fb, color_plane)) {
-		u32 max_stride = intel_plane_fb_max_stride(dev_priv,
-							   fb->format->format,
-							   fb->modifier);
-
-		/*
-		 * To make remapping with linear generally feasible
-		 * we need the stride to be page aligned.
-		 */
-		if (fb->pitches[color_plane] > max_stride &&
-		    !is_ccs_modifier(fb->modifier))
-			return intel_tile_size(dev_priv);
-		else
-			return 64;
-	}
-
-	tile_width = intel_tile_width_bytes(fb, color_plane);
-	if (is_ccs_modifier(fb->modifier)) {
-		/*
-		 * Display WA #0531: skl,bxt,kbl,glk
-		 *
-		 * Render decompression and plane width > 3840
-		 * combined with horizontal panning requires the
-		 * plane stride to be a multiple of 4. We'll just
-		 * require the entire fb to accommodate that to avoid
-		 * potential runtime errors at plane configuration time.
-		 */
-		if ((DISPLAY_VER(dev_priv) == 9 || IS_GEMINILAKE(dev_priv)) &&
-		    color_plane == 0 && fb->width > 3840)
-			tile_width *= 4;
-		/*
-		 * The main surface pitch must be padded to a multiple of four
-		 * tile widths.
-		 */
-		else if (DISPLAY_VER(dev_priv) >= 12)
-			tile_width *= 4;
-	}
-	return tile_width;
-}
-
 static struct i915_vma *
 initial_plane_vma(struct drm_i915_private *i915,
 		  struct intel_initial_plane_config *plane_config)
@@ -6182,28 +6092,6 @@ static const struct drm_display_mode load_detect_mode = {
 		 704, 832, 0, 480, 489, 491, 520, 0, DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC),
 };
 
-struct drm_framebuffer *
-intel_framebuffer_create(struct drm_i915_gem_object *obj,
-			 struct drm_mode_fb_cmd2 *mode_cmd)
-{
-	struct intel_framebuffer *intel_fb;
-	int ret;
-
-	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
-	if (!intel_fb)
-		return ERR_PTR(-ENOMEM);
-
-	ret = intel_framebuffer_init(intel_fb, obj, mode_cmd);
-	if (ret)
-		goto err;
-
-	return &intel_fb->base;
-
-err:
-	kfree(intel_fb);
-	return ERR_PTR(ret);
-}
-
 static int intel_modeset_disable_planes(struct drm_atomic_state *state,
 					struct drm_crtc *crtc)
 {
@@ -11356,249 +11244,6 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	drm_helper_move_panel_connectors_to_head(&dev_priv->drm);
 }
 
-static void intel_user_framebuffer_destroy(struct drm_framebuffer *fb)
-{
-	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
-
-	drm_framebuffer_cleanup(fb);
-
-	if (intel_fb_uses_dpt(fb))
-		intel_dpt_destroy(intel_fb->dpt_vm);
-
-	intel_frontbuffer_put(intel_fb->frontbuffer);
-
-	kfree(intel_fb);
-}
-
-static int intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
-						struct drm_file *file,
-						unsigned int *handle)
-{
-	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-
-	if (i915_gem_object_is_userptr(obj)) {
-		drm_dbg(&i915->drm,
-			"attempting to use a userptr for a framebuffer, denied\n");
-		return -EINVAL;
-	}
-
-	return drm_gem_handle_create(file, &obj->base, handle);
-}
-
-static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
-					struct drm_file *file,
-					unsigned flags, unsigned color,
-					struct drm_clip_rect *clips,
-					unsigned num_clips)
-{
-	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
-
-	i915_gem_object_flush_if_display(obj);
-	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
-
-	return 0;
-}
-
-static const struct drm_framebuffer_funcs intel_fb_funcs = {
-	.destroy = intel_user_framebuffer_destroy,
-	.create_handle = intel_user_framebuffer_create_handle,
-	.dirty = intel_user_framebuffer_dirty,
-};
-
-static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
-				  struct drm_i915_gem_object *obj,
-				  struct drm_mode_fb_cmd2 *mode_cmd)
-{
-	struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
-	struct drm_framebuffer *fb = &intel_fb->base;
-	u32 max_stride;
-	unsigned int tiling, stride;
-	int ret = -EINVAL;
-	int i;
-
-	intel_fb->frontbuffer = intel_frontbuffer_get(obj);
-	if (!intel_fb->frontbuffer)
-		return -ENOMEM;
-
-	i915_gem_object_lock(obj, NULL);
-	tiling = i915_gem_object_get_tiling(obj);
-	stride = i915_gem_object_get_stride(obj);
-	i915_gem_object_unlock(obj);
-
-	if (mode_cmd->flags & DRM_MODE_FB_MODIFIERS) {
-		/*
-		 * If there's a fence, enforce that
-		 * the fb modifier and tiling mode match.
-		 */
-		if (tiling != I915_TILING_NONE &&
-		    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "tiling_mode doesn't match fb modifier\n");
-			goto err;
-		}
-	} else {
-		if (tiling == I915_TILING_X) {
-			mode_cmd->modifier[0] = I915_FORMAT_MOD_X_TILED;
-		} else if (tiling == I915_TILING_Y) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "No Y tiling for legacy addfb\n");
-			goto err;
-		}
-	}
-
-	if (!drm_any_plane_has_format(&dev_priv->drm,
-				      mode_cmd->pixel_format,
-				      mode_cmd->modifier[0])) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "unsupported pixel format %p4cc / modifier 0x%llx\n",
-			    &mode_cmd->pixel_format, mode_cmd->modifier[0]);
-		goto err;
-	}
-
-	/*
-	 * gen2/3 display engine uses the fence if present,
-	 * so the tiling mode must match the fb modifier exactly.
-	 */
-	if (DISPLAY_VER(dev_priv) < 4 &&
-	    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "tiling_mode must match fb modifier exactly on gen2/3\n");
-		goto err;
-	}
-
-	max_stride = intel_fb_max_stride(dev_priv, mode_cmd->pixel_format,
-					 mode_cmd->modifier[0]);
-	if (mode_cmd->pitches[0] > max_stride) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "%s pitch (%u) must be at most %d\n",
-			    mode_cmd->modifier[0] != DRM_FORMAT_MOD_LINEAR ?
-			    "tiled" : "linear",
-			    mode_cmd->pitches[0], max_stride);
-		goto err;
-	}
-
-	/*
-	 * If there's a fence, enforce that
-	 * the fb pitch and fence stride match.
-	 */
-	if (tiling != I915_TILING_NONE && mode_cmd->pitches[0] != stride) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "pitch (%d) must match tiling stride (%d)\n",
-			    mode_cmd->pitches[0], stride);
-		goto err;
-	}
-
-	/* FIXME need to adjust LINOFF/TILEOFF accordingly. */
-	if (mode_cmd->offsets[0] != 0) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "plane 0 offset (0x%08x) must be 0\n",
-			    mode_cmd->offsets[0]);
-		goto err;
-	}
-
-	drm_helper_mode_fill_fb_struct(&dev_priv->drm, fb, mode_cmd);
-
-	for (i = 0; i < fb->format->num_planes; i++) {
-		u32 stride_alignment;
-
-		if (mode_cmd->handles[i] != mode_cmd->handles[0]) {
-			drm_dbg_kms(&dev_priv->drm, "bad plane %d handle\n",
-				    i);
-			goto err;
-		}
-
-		stride_alignment = intel_fb_stride_alignment(fb, i);
-		if (fb->pitches[i] & (stride_alignment - 1)) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "plane %d pitch (%d) must be at least %u byte aligned\n",
-				    i, fb->pitches[i], stride_alignment);
-			goto err;
-		}
-
-		if (is_gen12_ccs_plane(fb, i) && !is_gen12_ccs_cc_plane(fb, i)) {
-			int ccs_aux_stride = gen12_ccs_aux_stride(fb, i);
-
-			if (fb->pitches[i] != ccs_aux_stride) {
-				drm_dbg_kms(&dev_priv->drm,
-					    "ccs aux plane %d pitch (%d) must be %d\n",
-					    i,
-					    fb->pitches[i], ccs_aux_stride);
-				goto err;
-			}
-		}
-
-		/* TODO: Add POT stride remapping support for CCS formats as well. */
-		if (IS_ALDERLAKE_P(dev_priv) &&
-		    mode_cmd->modifier[i] != DRM_FORMAT_MOD_LINEAR &&
-		    !intel_fb_needs_pot_stride_remap(intel_fb) &&
-		    !is_power_of_2(mode_cmd->pitches[i])) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "plane %d pitch (%d) must be power of two for tiled buffers\n",
-				    i, mode_cmd->pitches[i]);
-			goto err;
-		}
-
-		fb->obj[i] = &obj->base;
-	}
-
-	ret = intel_fill_fb_info(dev_priv, intel_fb);
-	if (ret)
-		goto err;
-
-	if (intel_fb_uses_dpt(fb)) {
-		struct i915_address_space *vm;
-
-		vm = intel_dpt_create(intel_fb);
-		if (IS_ERR(vm)) {
-			ret = PTR_ERR(vm);
-			goto err;
-		}
-
-		intel_fb->dpt_vm = vm;
-	}
-
-	ret = drm_framebuffer_init(&dev_priv->drm, fb, &intel_fb_funcs);
-	if (ret) {
-		drm_err(&dev_priv->drm, "framebuffer init failed %d\n", ret);
-		goto err;
-	}
-
-	return 0;
-
-err:
-	intel_frontbuffer_put(intel_fb->frontbuffer);
-	return ret;
-}
-
-static struct drm_framebuffer *
-intel_user_framebuffer_create(struct drm_device *dev,
-			      struct drm_file *filp,
-			      const struct drm_mode_fb_cmd2 *user_mode_cmd)
-{
-	struct drm_framebuffer *fb;
-	struct drm_i915_gem_object *obj;
-	struct drm_mode_fb_cmd2 mode_cmd = *user_mode_cmd;
-	struct drm_i915_private *i915;
-
-	obj = i915_gem_object_lookup(filp, mode_cmd.handles[0]);
-	if (!obj)
-		return ERR_PTR(-ENOENT);
-
-	/* object is backed with LMEM for discrete */
-	i915 = to_i915(obj->base.dev);
-	if (HAS_LMEM(i915) && !i915_gem_object_can_migrate(obj, INTEL_REGION_LMEM)) {
-		/* object is "remote", not in local memory */
-		i915_gem_object_put(obj);
-		return ERR_PTR(-EREMOTE);
-	}
-
-	fb = intel_framebuffer_create(obj, &mode_cmd);
-	i915_gem_object_put(obj);
-
-	return fb;
-}
-
 static enum drm_mode_status
 intel_mode_valid(struct drm_device *dev,
 		 const struct drm_display_mode *mode)
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index e24ee2a28ebf..e4b8602ec0cd 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -4,9 +4,11 @@
  */
 
 #include <drm/drm_framebuffer.h>
+#include <drm/drm_modeset_helper.h>
 
 #include "intel_display.h"
 #include "intel_display_types.h"
+#include "intel_dpt.h"
 #include "intel_fb.h"
 
 #define check_array_bounds(i915, a, i) drm_WARN_ON(&(i915)->drm, (i) >= ARRAY_SIZE(a))
@@ -61,6 +63,12 @@ int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane)
 	return ccs_plane - fb->format->num_planes / 2;
 }
 
+static int gen12_ccs_aux_stride(struct drm_framebuffer *fb, int ccs_plane)
+{
+	return DIV_ROUND_UP(fb->pitches[skl_ccs_to_main_plane(fb, ccs_plane)],
+			    512) * 64;
+}
+
 int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
 {
 	struct drm_i915_private *i915 = to_i915(fb->dev);
@@ -172,6 +180,22 @@ intel_fb_align_height(const struct drm_framebuffer *fb,
 	return ALIGN(height, tile_height);
 }
 
+static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
+{
+	switch (fb_modifier) {
+	case I915_FORMAT_MOD_X_TILED:
+		return I915_TILING_X;
+	case I915_FORMAT_MOD_Y_TILED:
+	case I915_FORMAT_MOD_Y_TILED_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
+		return I915_TILING_Y;
+	default:
+		return I915_TILING_NONE;
+	}
+}
+
 unsigned int intel_cursor_alignment(const struct drm_i915_private *i915)
 {
 	if (IS_I830(i915))
@@ -1045,6 +1069,71 @@ void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int rotatio
 		*view = fb->normal_view;
 }
 
+static
+u32 intel_fb_max_stride(struct drm_i915_private *dev_priv,
+			u32 pixel_format, u64 modifier)
+{
+	/*
+	 * Arbitrary limit for gen4+ chosen to match the
+	 * render engine max stride.
+	 *
+	 * The new CCS hash mode makes remapping impossible
+	 */
+	if (DISPLAY_VER(dev_priv) < 4 || is_ccs_modifier(modifier) ||
+	    intel_modifier_uses_dpt(dev_priv, modifier))
+		return intel_plane_fb_max_stride(dev_priv, pixel_format, modifier);
+	else if (DISPLAY_VER(dev_priv) >= 7)
+		return 256 * 1024;
+	else
+		return 128 * 1024;
+}
+
+static u32
+intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
+{
+	struct drm_i915_private *dev_priv = to_i915(fb->dev);
+	u32 tile_width;
+
+	if (is_surface_linear(fb, color_plane)) {
+		u32 max_stride = intel_plane_fb_max_stride(dev_priv,
+							   fb->format->format,
+							   fb->modifier);
+
+		/*
+		 * To make remapping with linear generally feasible
+		 * we need the stride to be page aligned.
+		 */
+		if (fb->pitches[color_plane] > max_stride &&
+		    !is_ccs_modifier(fb->modifier))
+			return intel_tile_size(dev_priv);
+		else
+			return 64;
+	}
+
+	tile_width = intel_tile_width_bytes(fb, color_plane);
+	if (is_ccs_modifier(fb->modifier)) {
+		/*
+		 * Display WA #0531: skl,bxt,kbl,glk
+		 *
+		 * Render decompression and plane width > 3840
+		 * combined with horizontal panning requires the
+		 * plane stride to be a multiple of 4. We'll just
+		 * require the entire fb to accommodate that to avoid
+		 * potential runtime errors at plane configuration time.
+		 */
+		if ((DISPLAY_VER(dev_priv) == 9 || IS_GEMINILAKE(dev_priv)) &&
+		    color_plane == 0 && fb->width > 3840)
+			tile_width *= 4;
+		/*
+		 * The main surface pitch must be padded to a multiple of four
+		 * tile widths.
+		 */
+		else if (DISPLAY_VER(dev_priv) >= 12)
+			tile_width *= 4;
+	}
+	return tile_width;
+}
+
 static int intel_plane_check_stride(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
@@ -1108,3 +1197,268 @@ int intel_plane_compute_gtt(struct intel_plane_state *plane_state)
 
 	return intel_plane_check_stride(plane_state);
 }
+
+static void intel_user_framebuffer_destroy(struct drm_framebuffer *fb)
+{
+	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
+
+	drm_framebuffer_cleanup(fb);
+
+	if (intel_fb_uses_dpt(fb))
+		intel_dpt_destroy(intel_fb->dpt_vm);
+
+	intel_frontbuffer_put(intel_fb->frontbuffer);
+
+	kfree(intel_fb);
+}
+
+static int intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
+						struct drm_file *file,
+						unsigned int *handle)
+{
+	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+
+	if (i915_gem_object_is_userptr(obj)) {
+		drm_dbg(&i915->drm,
+			"attempting to use a userptr for a framebuffer, denied\n");
+		return -EINVAL;
+	}
+
+	return drm_gem_handle_create(file, &obj->base, handle);
+}
+
+static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
+					struct drm_file *file,
+					unsigned int flags, unsigned int color,
+					struct drm_clip_rect *clips,
+					unsigned int num_clips)
+{
+	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
+
+	i915_gem_object_flush_if_display(obj);
+	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
+
+	return 0;
+}
+
+static const struct drm_framebuffer_funcs intel_fb_funcs = {
+	.destroy = intel_user_framebuffer_destroy,
+	.create_handle = intel_user_framebuffer_create_handle,
+	.dirty = intel_user_framebuffer_dirty,
+};
+
+int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
+			   struct drm_i915_gem_object *obj,
+			   struct drm_mode_fb_cmd2 *mode_cmd)
+{
+	struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
+	struct drm_framebuffer *fb = &intel_fb->base;
+	u32 max_stride;
+	unsigned int tiling, stride;
+	int ret = -EINVAL;
+	int i;
+
+	intel_fb->frontbuffer = intel_frontbuffer_get(obj);
+	if (!intel_fb->frontbuffer)
+		return -ENOMEM;
+
+	i915_gem_object_lock(obj, NULL);
+	tiling = i915_gem_object_get_tiling(obj);
+	stride = i915_gem_object_get_stride(obj);
+	i915_gem_object_unlock(obj);
+
+	if (mode_cmd->flags & DRM_MODE_FB_MODIFIERS) {
+		/*
+		 * If there's a fence, enforce that
+		 * the fb modifier and tiling mode match.
+		 */
+		if (tiling != I915_TILING_NONE &&
+		    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "tiling_mode doesn't match fb modifier\n");
+			goto err;
+		}
+	} else {
+		if (tiling == I915_TILING_X) {
+			mode_cmd->modifier[0] = I915_FORMAT_MOD_X_TILED;
+		} else if (tiling == I915_TILING_Y) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "No Y tiling for legacy addfb\n");
+			goto err;
+		}
+	}
+
+	if (!drm_any_plane_has_format(&dev_priv->drm,
+				      mode_cmd->pixel_format,
+				      mode_cmd->modifier[0])) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "unsupported pixel format %p4cc / modifier 0x%llx\n",
+			    &mode_cmd->pixel_format, mode_cmd->modifier[0]);
+		goto err;
+	}
+
+	/*
+	 * gen2/3 display engine uses the fence if present,
+	 * so the tiling mode must match the fb modifier exactly.
+	 */
+	if (DISPLAY_VER(dev_priv) < 4 &&
+	    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "tiling_mode must match fb modifier exactly on gen2/3\n");
+		goto err;
+	}
+
+	max_stride = intel_fb_max_stride(dev_priv, mode_cmd->pixel_format,
+					 mode_cmd->modifier[0]);
+	if (mode_cmd->pitches[0] > max_stride) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "%s pitch (%u) must be at most %d\n",
+			    mode_cmd->modifier[0] != DRM_FORMAT_MOD_LINEAR ?
+			    "tiled" : "linear",
+			    mode_cmd->pitches[0], max_stride);
+		goto err;
+	}
+
+	/*
+	 * If there's a fence, enforce that
+	 * the fb pitch and fence stride match.
+	 */
+	if (tiling != I915_TILING_NONE && mode_cmd->pitches[0] != stride) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "pitch (%d) must match tiling stride (%d)\n",
+			    mode_cmd->pitches[0], stride);
+		goto err;
+	}
+
+	/* FIXME need to adjust LINOFF/TILEOFF accordingly. */
+	if (mode_cmd->offsets[0] != 0) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "plane 0 offset (0x%08x) must be 0\n",
+			    mode_cmd->offsets[0]);
+		goto err;
+	}
+
+	drm_helper_mode_fill_fb_struct(&dev_priv->drm, fb, mode_cmd);
+
+	for (i = 0; i < fb->format->num_planes; i++) {
+		u32 stride_alignment;
+
+		if (mode_cmd->handles[i] != mode_cmd->handles[0]) {
+			drm_dbg_kms(&dev_priv->drm, "bad plane %d handle\n",
+				    i);
+			goto err;
+		}
+
+		stride_alignment = intel_fb_stride_alignment(fb, i);
+		if (fb->pitches[i] & (stride_alignment - 1)) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "plane %d pitch (%d) must be at least %u byte aligned\n",
+				    i, fb->pitches[i], stride_alignment);
+			goto err;
+		}
+
+		if (is_gen12_ccs_plane(fb, i) && !is_gen12_ccs_cc_plane(fb, i)) {
+			int ccs_aux_stride = gen12_ccs_aux_stride(fb, i);
+
+			if (fb->pitches[i] != ccs_aux_stride) {
+				drm_dbg_kms(&dev_priv->drm,
+					    "ccs aux plane %d pitch (%d) must be %d\n",
+					    i,
+					    fb->pitches[i], ccs_aux_stride);
+				goto err;
+			}
+		}
+
+		/* TODO: Add POT stride remapping support for CCS formats as well. */
+		if (IS_ALDERLAKE_P(dev_priv) &&
+		    mode_cmd->modifier[i] != DRM_FORMAT_MOD_LINEAR &&
+		    !intel_fb_needs_pot_stride_remap(intel_fb) &&
+		    !is_power_of_2(mode_cmd->pitches[i])) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "plane %d pitch (%d) must be power of two for tiled buffers\n",
+				    i, mode_cmd->pitches[i]);
+			goto err;
+		}
+
+		fb->obj[i] = &obj->base;
+	}
+
+	ret = intel_fill_fb_info(dev_priv, intel_fb);
+	if (ret)
+		goto err;
+
+	if (intel_fb_uses_dpt(fb)) {
+		struct i915_address_space *vm;
+
+		vm = intel_dpt_create(intel_fb);
+		if (IS_ERR(vm)) {
+			ret = PTR_ERR(vm);
+			goto err;
+		}
+
+		intel_fb->dpt_vm = vm;
+	}
+
+	ret = drm_framebuffer_init(&dev_priv->drm, fb, &intel_fb_funcs);
+	if (ret) {
+		drm_err(&dev_priv->drm, "framebuffer init failed %d\n", ret);
+		goto err;
+	}
+
+	return 0;
+
+err:
+	intel_frontbuffer_put(intel_fb->frontbuffer);
+	return ret;
+}
+
+struct drm_framebuffer *
+intel_user_framebuffer_create(struct drm_device *dev,
+			      struct drm_file *filp,
+			      const struct drm_mode_fb_cmd2 *user_mode_cmd)
+{
+	struct drm_framebuffer *fb;
+	struct drm_i915_gem_object *obj;
+	struct drm_mode_fb_cmd2 mode_cmd = *user_mode_cmd;
+	struct drm_i915_private *i915;
+
+	obj = i915_gem_object_lookup(filp, mode_cmd.handles[0]);
+	if (!obj)
+		return ERR_PTR(-ENOENT);
+
+	/* object is backed with LMEM for discrete */
+	i915 = to_i915(obj->base.dev);
+	if (HAS_LMEM(i915) && !i915_gem_object_can_migrate(obj, INTEL_REGION_LMEM)) {
+		/* object is "remote", not in local memory */
+		i915_gem_object_put(obj);
+		return ERR_PTR(-EREMOTE);
+	}
+
+	fb = intel_framebuffer_create(obj, &mode_cmd);
+	i915_gem_object_put(obj);
+
+	return fb;
+}
+
+struct drm_framebuffer *
+intel_framebuffer_create(struct drm_i915_gem_object *obj,
+			 struct drm_mode_fb_cmd2 *mode_cmd)
+{
+	struct intel_framebuffer *intel_fb;
+	int ret;
+
+	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
+	if (!intel_fb)
+		return ERR_PTR(-ENOMEM);
+
+	ret = intel_framebuffer_init(intel_fb, obj, mode_cmd);
+	if (ret)
+		goto err;
+
+	return &intel_fb->base;
+
+err:
+	kfree(intel_fb);
+	return ERR_PTR(ret);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 0b0a83139462..1cbdd84502bd 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -8,10 +8,12 @@
 
 #include <linux/types.h>
 
+struct drm_device;
+struct drm_file;
 struct drm_framebuffer;
-
+struct drm_i915_gem_object;
 struct drm_i915_private;
-
+struct drm_mode_fb_cmd2;
 struct intel_fb_view;
 struct intel_framebuffer;
 struct intel_plane_state;
@@ -57,4 +59,12 @@ void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int rotatio
 			struct intel_fb_view *view);
 int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
 
+int intel_framebuffer_init(struct intel_framebuffer *ifb,
+			   struct drm_i915_gem_object *obj,
+			   struct drm_mode_fb_cmd2 *mode_cmd);
+struct drm_framebuffer *
+intel_user_framebuffer_create(struct drm_device *dev,
+			      struct drm_file *filp,
+			      const struct drm_mode_fb_cmd2 *user_mode_cmd);
+
 #endif /* __INTEL_FB_H__ */
-- 
2.20.1

