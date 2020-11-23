Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 685932C1301
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Nov 2020 19:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDB5089D63;
	Mon, 23 Nov 2020 18:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03D1889D63
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Nov 2020 18:26:38 +0000 (UTC)
IronPort-SDR: 2h0QhF3zqWeyE8806I9kgBHJ5rmXMoOaoeM8v1hUSp7hhYl0azkKaGJZCHP15957CveMxb7anQ
 wcptla/VVpYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="158859779"
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="158859779"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 10:26:38 -0800
IronPort-SDR: 8yeyM3lOhUEkLSu6bGD5D7awFp+quIINQTE5Vx5ALgSgdJ4TnUeOaHVYWF1Foh0z99gaNJ+TeR
 BzV6fZ8Dvdtw==
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="361544912"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 10:26:36 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Nov 2020 20:26:31 +0200
Message-Id: <20201123182631.1740781-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201123182631.1740781-1-imre.deak@intel.com>
References: <20201123182631.1740781-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Add Clear Color support for
 TGL Render Decompression
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
Cc: Nanley G Chery <nanley.g.chery@intel.com>,
 Rafael Antognolli <rafael.antognolli@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Ville Syrjala <ville.syrjala@intel.com>,
 Shashank Sharma <shashank.sharma@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Render Decompression is supported with Y-Tiled main surface. The CCS is
linear and has 4 bits of data for each main surface cache line pair, a
ratio of 1:256. Additional Clear Color information is passed from the
user-space through an offset in the GEM BO. Add a new modifier to identify
and parse new Clear Color information and extend Gen12 render decompression
functionality to the newly added modifier.

v2: Fix has_alpha flag for modifiers, omit CC modifier during initial
    plane config(Matt). Fix Lookup error.
v3: Fix the panic while running kms_cube
v4: Add alignment check and reuse the comments for ge12_ccs_formats(Matt)
v5: Fix typos and wrap comments(Matt)
v6:
- Use format block descriptors to get the subsampling calculations for
  the CCS surface right.
- Use helpers to convert between main and CCS surfaces.
- Prevent coordinate checks for the CC surface.
- Simplify reading CC value from surface map, add description of CC val
  layout.
- Remove redundant ccval variable from skl_program_plane().

Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Cc: Ville Syrjala <ville.syrjala@intel.com>
Cc: Shashank Sharma <shashank.sharma@intel.com>
Cc: Rafael Antognolli <rafael.antognolli@intel.com>
Cc: Nanley G Chery <nanley.g.chery@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com> (v5)
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 72 +++++++++++++++++--
 .../drm/i915/display/intel_display_types.h    |  3 +
 drivers/gpu/drm/i915/display/intel_sprite.c   | 10 ++-
 drivers/gpu/drm/i915/i915_reg.h               |  9 +++
 4 files changed, 89 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 595183f7b60f..f190f6f4cdf5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1968,8 +1968,8 @@ static bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
 static bool is_gen12_ccs_modifier(u64 modifier)
 {
 	return modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
+	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
 	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
-
 }
 
 static bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane)
@@ -1977,6 +1977,12 @@ static bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane)
 	return is_gen12_ccs_modifier(fb->modifier) && is_ccs_plane(fb, plane);
 }
 
+static bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane)
+{
+	return fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC &&
+	       plane == 2;
+}
+
 static bool is_aux_plane(const struct drm_framebuffer *fb, int plane)
 {
 	if (is_ccs_modifier(fb->modifier))
@@ -1998,6 +2004,9 @@ static int ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane)
 	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
 		    ccs_plane < fb->format->num_planes / 2);
 
+	if (is_gen12_ccs_cc_plane(fb, ccs_plane))
+		return 0;
+
 	return ccs_plane - fb->format->num_planes / 2;
 }
 
@@ -2048,6 +2057,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 			return 128;
 		fallthrough;
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
 		if (is_ccs_plane(fb, color_plane))
 			return 64;
@@ -2204,6 +2214,7 @@ static unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 			return intel_tile_row_size(fb, color_plane);
 		fallthrough;
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 		return 16 * 1024;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Yf_TILED_CCS:
@@ -2608,6 +2619,7 @@ static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
 	case I915_FORMAT_MOD_Y_TILED:
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
 		return I915_TILING_Y;
 	default:
@@ -2686,6 +2698,25 @@ static const struct drm_format_info gen12_ccs_formats[] = {
 	  .hsub = 2, .vsub = 2, .is_yuv = true },
 };
 
+/*
+ * Same as gen12_ccs_formats[] above, but with additional surface used
+ * to pass Clear Color information in plane 2 with 64 bits of data.
+ */
+static const struct drm_format_info gen12_ccs_cc_formats[] = {
+	{ .format = DRM_FORMAT_XRGB8888, .depth = 24, .num_planes = 3,
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_XBGR8888, .depth = 24, .num_planes = 3,
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_ARGB8888, .depth = 32, .num_planes = 3,
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 3,
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
+};
+
 static const struct drm_format_info *
 lookup_format_info(const struct drm_format_info formats[],
 		   int num_formats, u32 format)
@@ -2714,6 +2745,10 @@ intel_get_format_info(const struct drm_mode_fb_cmd2 *cmd)
 		return lookup_format_info(gen12_ccs_formats,
 					  ARRAY_SIZE(gen12_ccs_formats),
 					  cmd->pixel_format);
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
+		return lookup_format_info(gen12_ccs_cc_formats,
+					  ARRAY_SIZE(gen12_ccs_cc_formats),
+					  cmd->pixel_format);
 	default:
 		return NULL;
 	}
@@ -2722,6 +2757,7 @@ intel_get_format_info(const struct drm_mode_fb_cmd2 *cmd)
 bool is_ccs_modifier(u64 modifier)
 {
 	return modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
+	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
 	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
 	       modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
 	       modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
@@ -2940,7 +2976,7 @@ intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int ccs_plane, int x, int y)
 	int ccs_x, ccs_y;
 	int main_x, main_y;
 
-	if (!is_ccs_plane(fb, ccs_plane))
+	if (!is_ccs_plane(fb, ccs_plane) || is_gen12_ccs_cc_plane(fb, ccs_plane))
 		return 0;
 
 	intel_tile_dims(fb, ccs_plane, &tile_width, &tile_height);
@@ -3067,6 +3103,18 @@ intel_fill_fb_info(struct drm_i915_private *dev_priv,
 		int x, y;
 		int ret;
 
+		/*
+		 * Plane 2 of Render Compression with Clear Color fb modifier
+		 * is consumed by the driver and not passed to DE. Skip the
+		 * arithmetic related to alignment and offset calculation.
+		 */
+		if (is_gen12_ccs_cc_plane(fb, i)) {
+			if (IS_ALIGNED(fb->offsets[i], PAGE_SIZE))
+				continue;
+			else
+				return -EINVAL;
+		}
+
 		cpp = fb->format->cpp[i];
 		intel_fb_plane_dims(&width, &height, fb, i);
 
@@ -3991,7 +4039,8 @@ static int skl_check_ccs_aux_surface(struct intel_plane_state *plane_state)
 		int hsub, vsub;
 		int x, y;
 
-		if (!is_ccs_plane(fb, ccs_plane))
+		if (!is_ccs_plane(fb, ccs_plane) ||
+		    is_gen12_ccs_cc_plane(fb, ccs_plane))
 			continue;
 
 		intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, fb,
@@ -4647,6 +4696,7 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
 	case I915_FORMAT_MOD_Y_TILED:
 		return PLANE_CTL_TILED_Y;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
 		return PLANE_CTL_TILED_Y |
@@ -16647,6 +16697,20 @@ static int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 
 	plane_state->vma = vma;
 
+	if (fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC) {
+		void *map = kmap_atomic(i915_gem_object_get_page(intel_fb_obj(fb),
+								 fb->offsets[2] >> PAGE_SHIFT));
+
+		/*
+		 * The layout of the fast clear color value expected by HW:
+		 * - 4 x 4 bytes per-channel value (in surface type specific float/int format)
+		 * - 8 bytes native color value used by the display (converted/written by GPU during
+		 *   a fast clear operation using the above per-channel values)
+		 */
+		plane_state->ccval = *(u64 *)(map + 16);
+		kunmap_atomic(map);
+	}
+
 	return 0;
 }
 
@@ -17997,7 +18061,7 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			goto err;
 		}
 
-		if (is_gen12_ccs_plane(fb, i)) {
+		if (is_gen12_ccs_plane(fb, i) && !is_gen12_ccs_cc_plane(fb, i)) {
 			int ccs_aux_stride = gen12_ccs_aux_stride(fb, i);
 
 			if (fb->pitches[i] != ccs_aux_stride) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ce82d654d0f2..a3f4b945a306 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -604,6 +604,9 @@ struct intel_plane_state {
 	u32 planar_slave;
 
 	struct drm_intel_sprite_colorkey ckey;
+
+	/* Clear Color Value */
+	u64 ccval;
 };
 
 struct intel_initial_plane_config {
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 019a2d6d807a..2dc699e75816 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -851,6 +851,10 @@ skl_program_plane(struct intel_plane *plane,
 	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
 		icl_program_input_csc(plane, crtc_state, plane_state);
 
+	if (fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)
+		intel_uncore_write64_fw(&dev_priv->uncore,
+					PLANE_CC_VAL(pipe, plane_id), plane_state->ccval);
+
 	skl_write_plane_wm(plane, crtc_state);
 
 	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id),
@@ -2350,7 +2354,8 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	     fb->modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
 	     fb->modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
 	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
-	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS)) {
+	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
+	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Y/Yf tiling not supported in IF-ID mode\n");
 		return -EINVAL;
@@ -2840,6 +2845,7 @@ static const u64 skl_plane_format_modifiers_ccs[] = {
 static const u64 gen12_plane_format_modifiers_mc_ccs[] = {
 	I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
 	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
+	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
 	I915_FORMAT_MOD_Y_TILED,
 	I915_FORMAT_MOD_X_TILED,
 	DRM_FORMAT_MOD_LINEAR,
@@ -2848,6 +2854,7 @@ static const u64 gen12_plane_format_modifiers_mc_ccs[] = {
 
 static const u64 gen12_plane_format_modifiers_rc_ccs[] = {
 	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
+	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
 	I915_FORMAT_MOD_Y_TILED,
 	I915_FORMAT_MOD_X_TILED,
 	DRM_FORMAT_MOD_LINEAR,
@@ -3038,6 +3045,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 	case I915_FORMAT_MOD_X_TILED:
 	case I915_FORMAT_MOD_Y_TILED:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 		break;
 	default:
 		return false;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5375b219cc3b..edabb55d1586 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7070,6 +7070,8 @@ enum {
 #define _PLANE_KEYMAX_1_A			0x701a0
 #define _PLANE_KEYMAX_2_A			0x702a0
 #define  PLANE_KEYMAX_ALPHA(a)			((a) << 24)
+#define _PLANE_CC_VAL_1_A			0x701b4
+#define _PLANE_CC_VAL_2_A			0x702b4
 #define _PLANE_AUX_DIST_1_A			0x701c0
 #define _PLANE_AUX_DIST_2_A			0x702c0
 #define _PLANE_AUX_OFFSET_1_A			0x701c4
@@ -7111,6 +7113,13 @@ enum {
 #define _PLANE_NV12_BUF_CFG_1_A		0x70278
 #define _PLANE_NV12_BUF_CFG_2_A		0x70378
 
+#define _PLANE_CC_VAL_1_B			0x711b4
+#define _PLANE_CC_VAL_2_B			0x712b4
+#define _PLANE_CC_VAL_1(pipe)	_PIPE(pipe, _PLANE_CC_VAL_1_A, _PLANE_CC_VAL_1_B)
+#define _PLANE_CC_VAL_2(pipe)	_PIPE(pipe, _PLANE_CC_VAL_2_A, _PLANE_CC_VAL_2_B)
+#define PLANE_CC_VAL(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_CC_VAL_1(pipe), _PLANE_CC_VAL_2(pipe))
+
 /* Input CSC Register Definitions */
 #define _PLANE_INPUT_CSC_RY_GY_1_A	0x701E0
 #define _PLANE_INPUT_CSC_RY_GY_2_A	0x702E0
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
