Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4D8435415
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 21:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 671426E3C6;
	Wed, 20 Oct 2021 19:51:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE6626E3C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 19:51:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="209663453"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="209663453"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 12:51:56 -0700
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="444495898"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 12:51:55 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Date: Wed, 20 Oct 2021 22:51:37 +0300
Message-Id: <20211020195138.1841242-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211020195138.1841242-1-imre.deak@intel.com>
References: <20211020195138.1841242-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 10/11] drm/i915: Move is_ccs_modifier() to
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

Move the function to intel_fb.c and rename it adding the intel_fb_
prefix following the naming of exported functions.

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 .../drm/i915/display/intel_display_types.h    |  9 ------
 drivers/gpu/drm/i915/display/intel_fb.c       | 29 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_fb.h       |  2 ++
 .../drm/i915/display/skl_universal_plane.c    | 12 ++++----
 4 files changed, 29 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index bf97a56bdbc37..85cb55034bb02 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2042,13 +2042,4 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
 }
 
-static inline bool is_ccs_modifier(u64 modifier)
-{
-	return modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
-	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
-	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
-	       modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
-	       modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
-}
-
 #endif /*  __INTEL_DISPLAY_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 58d9928194024..a0baa5d2e3a19 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -270,6 +270,19 @@ static bool is_ccs_type_modifier(const struct intel_modifier_desc *md, u8 ccs_ty
 	return md->ccs.type & ccs_type;
 }
 
+/**
+ * intel_fb_is_ccs_modifier: Check if a modifier is a CCS modifier type
+ * @modifier: Modifier to check
+ *
+ * Returns:
+ * Returns %true if @modifier is a render, render with color clear or
+ * media compression modifier.
+ */
+bool intel_fb_is_ccs_modifier(u64 modifier)
+{
+	return is_ccs_type_modifier(lookup_modifier(modifier), INTEL_CCS_ANY);
+}
+
 static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
 					     u8 display_ver_from, u8 display_ver_until)
 {
@@ -463,7 +476,7 @@ bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane)
 
 int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane)
 {
-	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
+	drm_WARN_ON(fb->dev, !intel_fb_is_ccs_modifier(fb->modifier) ||
 		    (main_plane && main_plane >= fb->format->num_planes / 2));
 
 	return fb->format->num_planes / 2 + main_plane;
@@ -471,7 +484,7 @@ int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane)
 
 int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane)
 {
-	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
+	drm_WARN_ON(fb->dev, !intel_fb_is_ccs_modifier(fb->modifier) ||
 		    ccs_plane < fb->format->num_planes / 2);
 
 	if (is_gen12_ccs_cc_plane(fb, ccs_plane))
@@ -516,7 +529,7 @@ int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
 {
 	struct drm_i915_private *i915 = to_i915(fb->dev);
 
-	if (is_ccs_modifier(fb->modifier))
+	if (intel_fb_is_ccs_modifier(fb->modifier))
 		return main_to_ccs_plane(fb, main_plane);
 	else if (DISPLAY_VER(i915) < 11 &&
 		 intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
@@ -1080,7 +1093,7 @@ static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 	 * The new CCS hash mode isn't compatible with remapping as
 	 * the virtual address of the pages affects the compressed data.
 	 */
-	if (is_ccs_modifier(fb->modifier))
+	if (intel_fb_is_ccs_modifier(fb->modifier))
 		return false;
 
 	/* Linear needs a page aligned stride for remapping */
@@ -1487,7 +1500,7 @@ static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 	src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
 
-	drm_WARN_ON(&i915->drm, is_ccs_modifier(fb->modifier));
+	drm_WARN_ON(&i915->drm, intel_fb_is_ccs_modifier(fb->modifier));
 
 	/* Make src coordinates relative to the viewport */
 	drm_rect_translate(&plane_state->uapi.src,
@@ -1550,7 +1563,7 @@ u32 intel_fb_max_stride(struct drm_i915_private *dev_priv,
 	 *
 	 * The new CCS hash mode makes remapping impossible
 	 */
-	if (DISPLAY_VER(dev_priv) < 4 || is_ccs_modifier(modifier) ||
+	if (DISPLAY_VER(dev_priv) < 4 || intel_fb_is_ccs_modifier(modifier) ||
 	    intel_modifier_uses_dpt(dev_priv, modifier))
 		return intel_plane_fb_max_stride(dev_priv, pixel_format, modifier);
 	else if (DISPLAY_VER(dev_priv) >= 7)
@@ -1575,14 +1588,14 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 		 * we need the stride to be page aligned.
 		 */
 		if (fb->pitches[color_plane] > max_stride &&
-		    !is_ccs_modifier(fb->modifier))
+		    !intel_fb_is_ccs_modifier(fb->modifier))
 			return intel_tile_size(dev_priv);
 		else
 			return 64;
 	}
 
 	tile_width = intel_tile_width_bytes(fb, color_plane);
-	if (is_ccs_modifier(fb->modifier)) {
+	if (intel_fb_is_ccs_modifier(fb->modifier)) {
 		/*
 		 * On ADL-P the stride must be either 8 tiles or a stride
 		 * that is aligned to 16 tiles, required by the 16 tiles =
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index c80822b3cb827..f32306fbd3dee 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -27,6 +27,8 @@ enum intel_plane_caps {
 	PLANE_HAS_CCS_MC = BIT(2),
 };
 
+bool intel_fb_is_ccs_modifier(u64 modifier);
+
 bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index cd17f03db57ae..e2d1c05d4270c 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1183,7 +1183,7 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 		return 0;
 
 	if (rotation & ~(DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180) &&
-	    is_ccs_modifier(fb->modifier)) {
+	    intel_fb_is_ccs_modifier(fb->modifier)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "RC support only with 0/180 degree rotation (%x)\n",
 			    rotation);
@@ -1482,7 +1482,7 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 	 * CCS AUX surface doesn't have its own x/y offsets, we must make sure
 	 * they match with the main surface x/y offsets.
 	 */
-	if (is_ccs_modifier(fb->modifier)) {
+	if (intel_fb_is_ccs_modifier(fb->modifier)) {
 		while (!skl_check_main_ccs_coordinates(plane_state, x, y,
 						       offset, aux_plane)) {
 			if (offset == 0)
@@ -1546,7 +1546,7 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 	offset = intel_plane_compute_aligned_offset(&x, &y,
 						    plane_state, uv_plane);
 
-	if (is_ccs_modifier(fb->modifier)) {
+	if (intel_fb_is_ccs_modifier(fb->modifier)) {
 		int ccs_plane = main_to_ccs_plane(fb, uv_plane);
 		u32 aux_offset = plane_state->view.color_plane[ccs_plane].offset;
 		u32 alignment = intel_surf_alignment(fb, uv_plane);
@@ -1644,7 +1644,7 @@ static int skl_check_plane_surface(struct intel_plane_state *plane_state)
 	 * Handle the AUX surface first since the main surface setup depends on
 	 * it.
 	 */
-	if (is_ccs_modifier(fb->modifier)) {
+	if (intel_fb_is_ccs_modifier(fb->modifier)) {
 		ret = skl_check_ccs_aux_surface(plane_state);
 		if (ret)
 			return ret;
@@ -1845,7 +1845,7 @@ static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_XBGR8888:
 	case DRM_FORMAT_ARGB8888:
 	case DRM_FORMAT_ABGR8888:
-		if (is_ccs_modifier(modifier))
+		if (intel_fb_is_ccs_modifier(modifier))
 			return true;
 		fallthrough;
 	case DRM_FORMAT_RGB565:
@@ -1899,7 +1899,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_XBGR8888:
 	case DRM_FORMAT_ARGB8888:
 	case DRM_FORMAT_ABGR8888:
-		if (is_ccs_modifier(modifier))
+		if (intel_fb_is_ccs_modifier(modifier))
 			return true;
 		fallthrough;
 	case DRM_FORMAT_YUYV:
-- 
2.27.0

