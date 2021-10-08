Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF106426108
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 02:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2F716E05C;
	Fri,  8 Oct 2021 00:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 134336E060
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 00:19:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226301652"
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; d="scan'208";a="226301652"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 17:19:24 -0700
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; d="scan'208";a="489235318"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 17:19:24 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Oct 2021 03:19:13 +0300
Message-Id: <20211008001915.3508011-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211007203517.3364336-10-imre.deak@intel.com>
References: <20211007203517.3364336-10-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/11] drm/i915: Add a platform independent
 way to check for CCS control planes
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

Future platforms change the location of CCS control planes in CCS
framebuffers, so add intel_fb_is_rc_ccs_ctrl_plane() to query for these
planes independently of the platform. This function can be used
everywhere instead of is_ccs_plane() (or is_ccs_plane() && !cc_plane()),
since all the callers are only interested in control planes (and not CCS
color-clear planes).

Add the corresponding intel_fb_is_gen12_ccs_ctrl_plane(), which can be
used everywhere instead of is_gen12_ccs_plane(), based on the above
explanation.

This change also unexports the is_gen12_ccs_modifier(),
is_gen12_ccs_plane(), is_gen12_ccs_cc_plane() functions as they are only
used in intel_fb.c

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  7 --
 drivers/gpu/drm/i915/display/intel_fb.c       | 73 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_fb.h       |  5 +-
 .../drm/i915/display/skl_universal_plane.c    |  3 +-
 4 files changed, 56 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index bb53b01f07aee..b4b6a31caf4e3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2050,11 +2050,4 @@ static inline bool is_ccs_modifier(u64 modifier)
 	       modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
 }
 
-static inline bool is_gen12_ccs_modifier(u64 modifier)
-{
-	return modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
-	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
-	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
-}
-
 #endif /*  __INTEL_DISPLAY_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index d2491a73d255b..85a2eaaa7cad8 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -126,6 +126,8 @@ const struct intel_modifier_desc {
 #define INTEL_CCS_ANY		(INTEL_CCS_RC | INTEL_CCS_RC_CC | INTEL_CCS_MC)
 		u8 type:3;
 		u8 cc_planes:3;
+		u8 packed_ctrl_planes:4;
+		u8 planar_ctrl_planes:4;
 	} ccs;
 } intel_modifiers[] = {
 	{
@@ -153,6 +155,7 @@ const struct intel_modifier_desc {
 		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC,
+		.ccs.packed_ctrl_planes = BIT(1),
 
 		FORMAT_OVERRIDE(skl_ccs_formats),
 	},
@@ -161,6 +164,7 @@ const struct intel_modifier_desc {
 		.display_versions = DISPLAY_VER_MASK(9, 11),
 
 		.ccs.type = INTEL_CCS_RC,
+		.ccs.packed_ctrl_planes = BIT(1),
 
 		FORMAT_OVERRIDE(skl_ccs_formats),
 	},
@@ -170,6 +174,7 @@ const struct intel_modifier_desc {
 		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC,
+		.ccs.packed_ctrl_planes = BIT(1),
 
 		FORMAT_OVERRIDE(gen12_ccs_formats),
 	},
@@ -179,6 +184,7 @@ const struct intel_modifier_desc {
 		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC_CC,
+		.ccs.packed_ctrl_planes = BIT(1),
 		.ccs.cc_planes = BIT(2),
 
 		FORMAT_OVERRIDE(gen12_ccs_cc_formats),
@@ -189,6 +195,8 @@ const struct intel_modifier_desc {
 		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_MC,
+		.ccs.packed_ctrl_planes = BIT(1),
+		.ccs.planar_ctrl_planes = BIT(2) | BIT(3),
 
 		FORMAT_OVERRIDE(gen12_ccs_formats),
 	},
@@ -358,17 +366,44 @@ bool intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
 	return format_is_yuv_semiplanar(lookup_modifier(modifier), info);
 }
 
-bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
+static u8 ccs_ctrl_plane_mask(const struct intel_modifier_desc *md,
+			      const struct drm_format_info *format)
 {
-	if (!is_ccs_modifier(fb->modifier))
-		return false;
+	if (format_is_yuv_semiplanar(md, format))
+		return md->ccs.planar_ctrl_planes;
+	else
+		return md->ccs.packed_ctrl_planes;
+}
+
+/**
+ * intel_fb_is_ccs_ctrl_plane: Check if a framebuffer color plane is a CCS control plane
+ * @fb: Framebuffer
+ * @plane: color plane index to check
+ *
+ * Returns:
+ * Returns %true if @fb's color plane at index @plane is a CCS control plane.
+ */
+bool intel_fb_is_ccs_ctrl_plane(const struct drm_framebuffer *fb, int plane)
+{
+	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
 
-	return plane >= fb->format->num_planes / 2;
+	return ccs_ctrl_plane_mask(md, fb->format) & BIT(plane);
 }
 
-bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane)
+/**
+ * intel_fb_is_gen12_ccs_ctrl_plane: Check if a framebuffer color plane is a GEN12 CCS control plane
+ * @fb: Framebuffer
+ * @plane: color plane index to check
+ *
+ * Returns:
+ * Returns %true if @fb's color plane at index @plane is a GEN12 CCS control plane.
+ */
+static bool intel_fb_is_gen12_ccs_ctrl_plane(const struct drm_framebuffer *fb, int plane)
 {
-	return is_gen12_ccs_modifier(fb->modifier) && is_ccs_plane(fb, plane);
+	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
+
+	return md->display_versions & (DISPLAY_VER_MASK(12, 13)) &&
+	       ccs_ctrl_plane_mask(md, fb->format) & BIT(plane);
 }
 
 /**
@@ -391,7 +426,7 @@ int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb)
 	return ilog2((int)md->ccs.cc_planes);
 }
 
-bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane)
+static bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane)
 {
 	return intel_fb_rc_ccs_cc_plane(fb) == plane;
 }
@@ -405,7 +440,7 @@ static bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_p
 bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane)
 {
 	return fb->modifier == DRM_FORMAT_MOD_LINEAR ||
-	       is_gen12_ccs_plane(fb, color_plane) ||
+	       intel_fb_is_gen12_ccs_ctrl_plane(fb, color_plane) ||
 	       is_gen12_ccs_cc_plane(fb, color_plane);
 }
 
@@ -493,13 +528,13 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 		else
 			return 512;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
-		if (is_ccs_plane(fb, color_plane))
+		if (intel_fb_is_ccs_ctrl_plane(fb, color_plane))
 			return 128;
 		fallthrough;
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
-		if (is_ccs_plane(fb, color_plane) ||
+		if (intel_fb_is_ccs_ctrl_plane(fb, color_plane) ||
 		    is_gen12_ccs_cc_plane(fb, color_plane))
 			return 64;
 		fallthrough;
@@ -509,7 +544,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 		else
 			return 512;
 	case I915_FORMAT_MOD_Yf_TILED_CCS:
-		if (is_ccs_plane(fb, color_plane))
+		if (intel_fb_is_ccs_ctrl_plane(fb, color_plane))
 			return 128;
 		fallthrough;
 	case I915_FORMAT_MOD_Yf_TILED:
@@ -565,7 +600,7 @@ static void intel_tile_block_dims(const struct drm_framebuffer *fb, int color_pl
 {
 	intel_tile_dims(fb, color_plane, tile_width, tile_height);
 
-	if (is_gen12_ccs_plane(fb, color_plane))
+	if (intel_fb_is_gen12_ccs_ctrl_plane(fb, color_plane))
 		*tile_height = 1;
 }
 
@@ -626,7 +661,7 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 		return 512 * 4096;
 
 	/* AUX_DIST needs only 4K alignment */
-	if (is_ccs_plane(fb, color_plane))
+	if (intel_fb_is_ccs_ctrl_plane(fb, color_plane))
 		return 4096;
 
 	if (is_semiplanar_uv_plane(fb, color_plane)) {
@@ -685,7 +720,7 @@ void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
 	 * TODO: Deduct the subsampling from the char block for all CCS
 	 * formats and planes.
 	 */
-	if (!is_gen12_ccs_plane(fb, color_plane)) {
+	if (!intel_fb_is_gen12_ccs_ctrl_plane(fb, color_plane)) {
 		*hsub = fb->format->hsub;
 		*vsub = fb->format->vsub;
 
@@ -713,7 +748,7 @@ void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
 static void intel_fb_plane_dims(const struct intel_framebuffer *fb, int color_plane, int *w, int *h)
 {
 	struct drm_i915_private *i915 = to_i915(fb->base.dev);
-	int main_plane = is_ccs_plane(&fb->base, color_plane) ?
+	int main_plane = intel_fb_is_ccs_ctrl_plane(&fb->base, color_plane) ?
 			 skl_ccs_to_main_plane(&fb->base, color_plane) : 0;
 	unsigned int main_width = fb->base.width;
 	unsigned int main_height = fb->base.height;
@@ -726,7 +761,7 @@ static void intel_fb_plane_dims(const struct intel_framebuffer *fb, int color_pl
 	 * stride in the allocated FB object may not be power-of-two
 	 * sized, in which case it is auto-padded to the POT size.
 	 */
-	if (IS_ALDERLAKE_P(i915) && is_ccs_plane(&fb->base, color_plane))
+	if (IS_ALDERLAKE_P(i915) && intel_fb_is_ccs_ctrl_plane(&fb->base, color_plane))
 		main_width = gen12_aligned_scanout_stride(fb, 0) /
 			     fb->base.format->cpp[0];
 
@@ -965,7 +1000,7 @@ static int intel_fb_check_ccs_xy(const struct drm_framebuffer *fb, int ccs_plane
 	int ccs_x, ccs_y;
 	int main_x, main_y;
 
-	if (!is_ccs_plane(fb, ccs_plane) || is_gen12_ccs_cc_plane(fb, ccs_plane))
+	if (!intel_fb_is_ccs_ctrl_plane(fb, ccs_plane))
 		return 0;
 
 	/*
@@ -1169,7 +1204,7 @@ plane_view_dst_stride_tiles(const struct intel_framebuffer *fb, int color_plane,
 			    unsigned int pitch_tiles)
 {
 	if (intel_fb_needs_pot_stride_remap(fb)) {
-		unsigned int min_stride = is_ccs_plane(&fb->base, color_plane) ? 2 : 8;
+		unsigned int min_stride = intel_fb_is_ccs_ctrl_plane(&fb->base, color_plane) ? 2 : 8;
 		/*
 		 * ADL_P, the only platform needing a POT stride has a minimum
 		 * of 8 main surface and 2 CCS AUX stride tiles.
@@ -1785,7 +1820,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			goto err;
 		}
 
-		if (is_gen12_ccs_plane(fb, i) && !is_gen12_ccs_cc_plane(fb, i)) {
+		if (intel_fb_is_gen12_ccs_ctrl_plane(fb, i)) {
 			int ccs_aux_stride = gen12_ccs_aux_stride(intel_fb, i);
 
 			if (fb->pitches[i] != ccs_aux_stride) {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 7bcfc5517a2e7..11b37a1acb7bb 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -30,10 +30,7 @@ enum intel_plane_caps {
 	PLANE_HAS_CCS_MC = BIT(2),
 };
 
-bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
-bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
-bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
-
+bool intel_fb_is_ccs_ctrl_plane(const struct drm_framebuffer *fb, int plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
 
 u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index a2f89be146212..5fa05231a37a7 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1607,8 +1607,7 @@ static int skl_check_ccs_aux_surface(struct intel_plane_state *plane_state)
 		int hsub, vsub;
 		int x, y;
 
-		if (!is_ccs_plane(fb, ccs_plane) ||
-		    is_gen12_ccs_cc_plane(fb, ccs_plane))
+		if (!intel_fb_is_ccs_ctrl_plane(fb, ccs_plane))
 			continue;
 
 		intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, fb,
-- 
2.27.0

