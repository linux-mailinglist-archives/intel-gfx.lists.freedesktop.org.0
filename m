Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4124332C8
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 11:46:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C89E6EB71;
	Tue, 19 Oct 2021 09:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D843F6EB76
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 09:46:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="225931053"
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="225931053"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 02:46:51 -0700
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="494023306"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 02:46:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Tue, 19 Oct 2021 12:46:46 +0300
Message-Id: <20211019094646.1596004-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211014220921.683870-10-imre.deak@intel.com>
References: <20211014220921.683870-10-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 09/11] drm/i915: Add a platform independent
 way to check for CCS AUX planes
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

Future platforms change the location of CCS AUX planes in CCS
framebuffers, so add intel_fb_is_ccs_aux_plane() to query for these
planes independently of the platform. This function can be used
everywhere instead of is_ccs_plane() (or is_ccs_plane() && !cc_plane()),
since all the callers are only interested in CCS AUX planes (and not CCS
color-clear planes).

Add the corresponding intel_fb_is_gen12_ccs_aux_plane(), which can be
used everywhere instead of is_gen12_ccs_plane(), based on the above
explanation.

This change also unexports the is_gen12_ccs_modifier(),
is_gen12_ccs_plane(), is_gen12_ccs_cc_plane() functions as they are only
used in intel_fb.c

v1-v2: Unchanged
v3: (Ville)
- Use ccs_aux instead of the ccs_ctrl term everywhere.
- Use color_plane instead of plane term for FB plane indicies.
v4: Fix version range check. (Jani)

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 .../drm/i915/display/intel_display_types.h    |  7 --
 drivers/gpu/drm/i915/display/intel_fb.c       | 82 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_fb.h       |  5 +-
 .../drm/i915/display/skl_universal_plane.c    |  3 +-
 4 files changed, 64 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 50b4264f61d62..e3353c2311e52 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2049,11 +2049,4 @@ static inline bool is_ccs_modifier(u64 modifier)
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
index 6e8d600dff6be..d65340d7fd843 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -131,6 +131,8 @@ struct intel_modifier_desc {
 #define INTEL_CCS_ANY		(INTEL_CCS_RC | INTEL_CCS_RC_CC | INTEL_CCS_MC)
 		u8 type:3;
 		u8 cc_planes:3;
+		u8 packed_aux_planes:4;
+		u8 planar_aux_planes:4;
 	} ccs;
 };
 
@@ -163,6 +165,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC,
+		.ccs.packed_aux_planes = BIT(1),
 
 		FORMAT_OVERRIDE(skl_ccs_formats),
 	},
@@ -172,6 +175,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 		.tiling = I915_TILING_NONE,
 
 		.ccs.type = INTEL_CCS_RC,
+		.ccs.packed_aux_planes = BIT(1),
 
 		FORMAT_OVERRIDE(skl_ccs_formats),
 	},
@@ -181,6 +185,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC,
+		.ccs.packed_aux_planes = BIT(1),
 
 		FORMAT_OVERRIDE(gen12_ccs_formats),
 	},
@@ -190,6 +195,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC_CC,
+		.ccs.packed_aux_planes = BIT(1),
 		.ccs.cc_planes = BIT(2),
 
 		FORMAT_OVERRIDE(gen12_ccs_cc_formats),
@@ -200,6 +206,8 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_MC,
+		.ccs.packed_aux_planes = BIT(1),
+		.ccs.planar_aux_planes = BIT(2) | BIT(3),
 
 		FORMAT_OVERRIDE(gen12_ccs_formats),
 	},
@@ -271,6 +279,13 @@ static bool check_modifier_display_ver(const struct intel_modifier_desc *md,
 	       display_ver <= md->display_ver.until;
 }
 
+static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
+					     u8 display_ver_from, u8 display_ver_until)
+{
+	return md->display_ver.from <= display_ver_until &&
+		display_ver_from <= md->display_ver.until;
+}
+
 static bool plane_has_modifier(struct drm_i915_private *i915,
 			       enum intel_plane_caps plane_caps,
 			       const struct intel_modifier_desc *md)
@@ -377,17 +392,44 @@ bool intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
 	return format_is_yuv_semiplanar(lookup_modifier(modifier), info);
 }
 
-bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
+static u8 ccs_aux_plane_mask(const struct intel_modifier_desc *md,
+			     const struct drm_format_info *format)
 {
-	if (!is_ccs_modifier(fb->modifier))
-		return false;
+	if (format_is_yuv_semiplanar(md, format))
+		return md->ccs.planar_aux_planes;
+	else
+		return md->ccs.packed_aux_planes;
+}
+
+/**
+ * intel_fb_is_ccs_aux_plane: Check if a framebuffer color plane is a CCS AUX plane
+ * @fb: Framebuffer
+ * @color_plane: color plane index to check
+ *
+ * Returns:
+ * Returns %true if @fb's color plane at index @color_plane is a CCS AUX plane.
+ */
+bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane)
+{
+	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
 
-	return plane >= fb->format->num_planes / 2;
+	return ccs_aux_plane_mask(md, fb->format) & BIT(color_plane);
 }
 
-bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane)
+/**
+ * intel_fb_is_gen12_ccs_aux_plane: Check if a framebuffer color plane is a GEN12 CCS AUX plane
+ * @fb: Framebuffer
+ * @color_plane: color plane index to check
+ *
+ * Returns:
+ * Returns %true if @fb's color plane at index @color_plane is a GEN12 CCS AUX plane.
+ */
+static bool intel_fb_is_gen12_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane)
 {
-	return is_gen12_ccs_modifier(fb->modifier) && is_ccs_plane(fb, plane);
+	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
+
+	return check_modifier_display_ver_range(md, 12, 13) &&
+	       ccs_aux_plane_mask(md, fb->format) & BIT(color_plane);
 }
 
 /**
@@ -410,9 +452,9 @@ int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb)
 	return ilog2((int)md->ccs.cc_planes);
 }
 
-bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane)
+static bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int color_plane)
 {
-	return intel_fb_rc_ccs_cc_plane(fb) == plane;
+	return intel_fb_rc_ccs_cc_plane(fb) == color_plane;
 }
 
 static bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane)
@@ -424,7 +466,7 @@ static bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_p
 bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane)
 {
 	return fb->modifier == DRM_FORMAT_MOD_LINEAR ||
-	       is_gen12_ccs_plane(fb, color_plane) ||
+	       intel_fb_is_gen12_ccs_aux_plane(fb, color_plane) ||
 	       is_gen12_ccs_cc_plane(fb, color_plane);
 }
 
@@ -512,13 +554,13 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 		else
 			return 512;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
-		if (is_ccs_plane(fb, color_plane))
+		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
 			return 128;
 		fallthrough;
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
-		if (is_ccs_plane(fb, color_plane) ||
+		if (intel_fb_is_ccs_aux_plane(fb, color_plane) ||
 		    is_gen12_ccs_cc_plane(fb, color_plane))
 			return 64;
 		fallthrough;
@@ -528,7 +570,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 		else
 			return 512;
 	case I915_FORMAT_MOD_Yf_TILED_CCS:
-		if (is_ccs_plane(fb, color_plane))
+		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
 			return 128;
 		fallthrough;
 	case I915_FORMAT_MOD_Yf_TILED:
@@ -584,7 +626,7 @@ static void intel_tile_block_dims(const struct drm_framebuffer *fb, int color_pl
 {
 	intel_tile_dims(fb, color_plane, tile_width, tile_height);
 
-	if (is_gen12_ccs_plane(fb, color_plane))
+	if (intel_fb_is_gen12_ccs_aux_plane(fb, color_plane))
 		*tile_height = 1;
 }
 
@@ -645,7 +687,7 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 		return 512 * 4096;
 
 	/* AUX_DIST needs only 4K alignment */
-	if (is_ccs_plane(fb, color_plane))
+	if (intel_fb_is_ccs_aux_plane(fb, color_plane))
 		return 4096;
 
 	if (is_semiplanar_uv_plane(fb, color_plane)) {
@@ -704,7 +746,7 @@ void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
 	 * TODO: Deduct the subsampling from the char block for all CCS
 	 * formats and planes.
 	 */
-	if (!is_gen12_ccs_plane(fb, color_plane)) {
+	if (!intel_fb_is_gen12_ccs_aux_plane(fb, color_plane)) {
 		*hsub = fb->format->hsub;
 		*vsub = fb->format->vsub;
 
@@ -732,7 +774,7 @@ void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
 static void intel_fb_plane_dims(const struct intel_framebuffer *fb, int color_plane, int *w, int *h)
 {
 	struct drm_i915_private *i915 = to_i915(fb->base.dev);
-	int main_plane = is_ccs_plane(&fb->base, color_plane) ?
+	int main_plane = intel_fb_is_ccs_aux_plane(&fb->base, color_plane) ?
 			 skl_ccs_to_main_plane(&fb->base, color_plane) : 0;
 	unsigned int main_width = fb->base.width;
 	unsigned int main_height = fb->base.height;
@@ -745,7 +787,7 @@ static void intel_fb_plane_dims(const struct intel_framebuffer *fb, int color_pl
 	 * stride in the allocated FB object may not be power-of-two
 	 * sized, in which case it is auto-padded to the POT size.
 	 */
-	if (IS_ALDERLAKE_P(i915) && is_ccs_plane(&fb->base, color_plane))
+	if (IS_ALDERLAKE_P(i915) && intel_fb_is_ccs_aux_plane(&fb->base, color_plane))
 		main_width = gen12_aligned_scanout_stride(fb, 0) /
 			     fb->base.format->cpp[0];
 
@@ -984,7 +1026,7 @@ static int intel_fb_check_ccs_xy(const struct drm_framebuffer *fb, int ccs_plane
 	int ccs_x, ccs_y;
 	int main_x, main_y;
 
-	if (!is_ccs_plane(fb, ccs_plane) || is_gen12_ccs_cc_plane(fb, ccs_plane))
+	if (!intel_fb_is_ccs_aux_plane(fb, ccs_plane))
 		return 0;
 
 	/*
@@ -1188,7 +1230,7 @@ plane_view_dst_stride_tiles(const struct intel_framebuffer *fb, int color_plane,
 			    unsigned int pitch_tiles)
 {
 	if (intel_fb_needs_pot_stride_remap(fb)) {
-		unsigned int min_stride = is_ccs_plane(&fb->base, color_plane) ? 2 : 8;
+		unsigned int min_stride = intel_fb_is_ccs_aux_plane(&fb->base, color_plane) ? 2 : 8;
 		/*
 		 * ADL_P, the only platform needing a POT stride has a minimum
 		 * of 8 main surface and 2 CCS AUX stride tiles.
@@ -1804,7 +1846,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			goto err;
 		}
 
-		if (is_gen12_ccs_plane(fb, i) && !is_gen12_ccs_cc_plane(fb, i)) {
+		if (intel_fb_is_gen12_ccs_aux_plane(fb, i)) {
 			int ccs_aux_stride = gen12_ccs_aux_stride(intel_fb, i);
 
 			if (fb->pitches[i] != ccs_aux_stride) {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 74e0fc03319b9..c80822b3cb827 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -27,10 +27,7 @@ enum intel_plane_caps {
 	PLANE_HAS_CCS_MC = BIT(2),
 };
 
-bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
-bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
-bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
-
+bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
 
 u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index e1f754270eb02..47f31e40da2d8 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1607,8 +1607,7 @@ static int skl_check_ccs_aux_surface(struct intel_plane_state *plane_state)
 		int hsub, vsub;
 		int x, y;
 
-		if (!is_ccs_plane(fb, ccs_plane) ||
-		    is_gen12_ccs_cc_plane(fb, ccs_plane))
+		if (!intel_fb_is_ccs_aux_plane(fb, ccs_plane))
 			continue;
 
 		intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, fb,
-- 
2.27.0

