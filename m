Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0B8425DA9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 22:35:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60B956F4D7;
	Thu,  7 Oct 2021 20:35:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 079E46F4D7
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 20:35:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="213303828"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="213303828"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 13:35:31 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="458926586"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 13:35:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Oct 2021 23:35:16 +0300
Message-Id: <20211007203517.3364336-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211007203517.3364336-1-imre.deak@intel.com>
References: <20211007203517.3364336-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/11] drm/i915: Move is_ccs_modifier() to
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  9 ------
 drivers/gpu/drm/i915/display/intel_fb.c       | 29 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_fb.h       |  2 ++
 .../drm/i915/display/skl_universal_plane.c    | 12 ++++----
 4 files changed, 29 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b4b6a31caf4e3..f38b70ef6afaa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2041,13 +2041,4 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
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
index 392f89e659eb6..b68bda0845c56 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -251,6 +251,19 @@ static bool is_ccs_type_modifier(const struct intel_modifier_desc *md, u8 ccs_ty
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
 static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 				 enum pipe pipe, enum plane_id plane_id)
 {
@@ -473,7 +486,7 @@ bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane)
 
 int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane)
 {
-	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
+	drm_WARN_ON(fb->dev, !intel_fb_is_ccs_modifier(fb->modifier) ||
 		    (main_plane && main_plane >= fb->format->num_planes / 2));
 
 	return fb->format->num_planes / 2 + main_plane;
@@ -481,7 +494,7 @@ int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane)
 
 int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane)
 {
-	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
+	drm_WARN_ON(fb->dev, !intel_fb_is_ccs_modifier(fb->modifier) ||
 		    ccs_plane < fb->format->num_planes / 2);
 
 	if (is_gen12_ccs_cc_plane(fb, ccs_plane))
@@ -526,7 +539,7 @@ int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
 {
 	struct drm_i915_private *i915 = to_i915(fb->dev);
 
-	if (is_ccs_modifier(fb->modifier))
+	if (intel_fb_is_ccs_modifier(fb->modifier))
 		return main_to_ccs_plane(fb, main_plane);
 	else if (DISPLAY_VER(i915) < 11 &&
 		 intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
@@ -1090,7 +1103,7 @@ static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 	 * The new CCS hash mode isn't compatible with remapping as
 	 * the virtual address of the pages affects the compressed data.
 	 */
-	if (is_ccs_modifier(fb->modifier))
+	if (intel_fb_is_ccs_modifier(fb->modifier))
 		return false;
 
 	/* Linear needs a page aligned stride for remapping */
@@ -1497,7 +1510,7 @@ static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 	src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
 
-	drm_WARN_ON(&i915->drm, is_ccs_modifier(fb->modifier));
+	drm_WARN_ON(&i915->drm, intel_fb_is_ccs_modifier(fb->modifier));
 
 	/* Make src coordinates relative to the viewport */
 	drm_rect_translate(&plane_state->uapi.src,
@@ -1560,7 +1573,7 @@ u32 intel_fb_max_stride(struct drm_i915_private *dev_priv,
 	 *
 	 * The new CCS hash mode makes remapping impossible
 	 */
-	if (DISPLAY_VER(dev_priv) < 4 || is_ccs_modifier(modifier) ||
+	if (DISPLAY_VER(dev_priv) < 4 || intel_fb_is_ccs_modifier(modifier) ||
 	    intel_modifier_uses_dpt(dev_priv, modifier))
 		return intel_plane_fb_max_stride(dev_priv, pixel_format, modifier);
 	else if (DISPLAY_VER(dev_priv) >= 7)
@@ -1585,14 +1598,14 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
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
index baa5b538b4be7..af8097699dac5 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -22,6 +22,8 @@ struct intel_framebuffer;
 struct intel_plane;
 struct intel_plane_state;
 
+bool intel_fb_is_ccs_modifier(u64 modifier);
+
 bool intel_fb_is_ccs_ctrl_plane(const struct drm_framebuffer *fb, int plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 95900b631aa7c..d29ad180f8477 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1188,7 +1188,7 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 		return 0;
 
 	if (rotation & ~(DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180) &&
-	    is_ccs_modifier(fb->modifier)) {
+	    intel_fb_is_ccs_modifier(fb->modifier)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "RC support only with 0/180 degree rotation (%x)\n",
 			    rotation);
@@ -1487,7 +1487,7 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 	 * CCS AUX surface doesn't have its own x/y offsets, we must make sure
 	 * they match with the main surface x/y offsets.
 	 */
-	if (is_ccs_modifier(fb->modifier)) {
+	if (intel_fb_is_ccs_modifier(fb->modifier)) {
 		while (!skl_check_main_ccs_coordinates(plane_state, x, y,
 						       offset, aux_plane)) {
 			if (offset == 0)
@@ -1551,7 +1551,7 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 	offset = intel_plane_compute_aligned_offset(&x, &y,
 						    plane_state, uv_plane);
 
-	if (is_ccs_modifier(fb->modifier)) {
+	if (intel_fb_is_ccs_modifier(fb->modifier)) {
 		int ccs_plane = main_to_ccs_plane(fb, uv_plane);
 		u32 aux_offset = plane_state->view.color_plane[ccs_plane].offset;
 		u32 alignment = intel_surf_alignment(fb, uv_plane);
@@ -1649,7 +1649,7 @@ static int skl_check_plane_surface(struct intel_plane_state *plane_state)
 	 * Handle the AUX surface first since the main surface setup depends on
 	 * it.
 	 */
-	if (is_ccs_modifier(fb->modifier)) {
+	if (intel_fb_is_ccs_modifier(fb->modifier)) {
 		ret = skl_check_ccs_aux_surface(plane_state);
 		if (ret)
 			return ret;
@@ -1833,7 +1833,7 @@ static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_XBGR8888:
 	case DRM_FORMAT_ARGB8888:
 	case DRM_FORMAT_ABGR8888:
-		if (is_ccs_modifier(modifier))
+		if (intel_fb_is_ccs_modifier(modifier))
 			return true;
 		fallthrough;
 	case DRM_FORMAT_RGB565:
@@ -1887,7 +1887,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
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

