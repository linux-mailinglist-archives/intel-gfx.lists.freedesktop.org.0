Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBA72F6BD8
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 21:13:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27B7C6E10F;
	Thu, 14 Jan 2021 20:13:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72ACE6E0FD
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 20:13:24 +0000 (UTC)
IronPort-SDR: cjaEAIkVf7q/LOh1tl5F7TQow9m1HlERJquh1Fog3sqASdysT7uDnrhu9azyZGvW1pM6hyjbky
 NUZi/hsqeYFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="177658319"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="177658319"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 12:13:24 -0800
IronPort-SDR: C8U5EfD11EF1svsiaZ4awFwxMRlSxUmC96qNH54fwM/s3vp8L3Gij0CWcyUsGcZpp/m+7+CmuU
 M1Bjzif07WHQ==
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="382394446"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 12:13:21 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 22:13:14 +0200
Message-Id: <20210114201314.783648-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210114201314.783648-1-imre.deak@intel.com>
References: <20210114201314.783648-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 3/3] drm/i915/tgl: Add Clear Color support
 for TGL Render Decompression
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
v7:
- Move the CC value readout after syncing against any GPU write on the
  FB obj (Nanley, Chris)
- Make sure the CC value readout works on platforms w/o struct pages
  (dGFX) and other non-coherent platforms wrt. CPU reads (none atm).
  (Chris)

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
 drivers/gpu/drm/i915/display/intel_display.c  | 101 +++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |  10 +-
 drivers/gpu/drm/i915/i915_reg.h               |   9 ++
 4 files changed, 117 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 66990e48c0d4..f1b4ae451fa9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -58,6 +58,8 @@
 #include "display/intel_tv.h"
 #include "display/intel_vdsc.h"
 
+#include "gem/i915_gem_object.h"
+
 #include "gt/intel_rps.h"
 
 #include "i915_drv.h"
@@ -1906,8 +1908,8 @@ static bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
 static bool is_gen12_ccs_modifier(u64 modifier)
 {
 	return modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
+	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
 	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
-
 }
 
 static bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane)
@@ -1915,6 +1917,12 @@ static bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane)
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
@@ -1936,6 +1944,9 @@ static int ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane)
 	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
 		    ccs_plane < fb->format->num_planes / 2);
 
+	if (is_gen12_ccs_cc_plane(fb, ccs_plane))
+		return 0;
+
 	return ccs_plane - fb->format->num_planes / 2;
 }
 
@@ -1986,6 +1997,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 			return 128;
 		fallthrough;
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
 		if (is_ccs_plane(fb, color_plane))
 			return 64;
@@ -2142,6 +2154,7 @@ static unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 			return intel_tile_row_size(fb, color_plane);
 		fallthrough;
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 		return 16 * 1024;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Yf_TILED_CCS:
@@ -2546,6 +2559,7 @@ static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
 	case I915_FORMAT_MOD_Y_TILED:
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
 		return I915_TILING_Y;
 	default:
@@ -2624,6 +2638,25 @@ static const struct drm_format_info gen12_ccs_formats[] = {
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
@@ -2652,6 +2685,10 @@ intel_get_format_info(const struct drm_mode_fb_cmd2 *cmd)
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
@@ -2660,6 +2697,7 @@ intel_get_format_info(const struct drm_mode_fb_cmd2 *cmd)
 bool is_ccs_modifier(u64 modifier)
 {
 	return modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
+	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
 	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
 	       modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
 	       modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
@@ -2878,7 +2916,7 @@ intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int ccs_plane, int x, int y)
 	int ccs_x, ccs_y;
 	int main_x, main_y;
 
-	if (!is_ccs_plane(fb, ccs_plane))
+	if (!is_ccs_plane(fb, ccs_plane) || is_gen12_ccs_cc_plane(fb, ccs_plane))
 		return 0;
 
 	intel_tile_dims(fb, ccs_plane, &tile_width, &tile_height);
@@ -3005,6 +3043,18 @@ intel_fill_fb_info(struct drm_i915_private *dev_priv,
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
 
@@ -3946,7 +3996,8 @@ static int skl_check_ccs_aux_surface(struct intel_plane_state *plane_state)
 		int hsub, vsub;
 		int x, y;
 
-		if (!is_ccs_plane(fb, ccs_plane))
+		if (!is_ccs_plane(fb, ccs_plane) ||
+		    is_gen12_ccs_cc_plane(fb, ccs_plane))
 			continue;
 
 		intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, fb,
@@ -4186,6 +4237,7 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
 	case I915_FORMAT_MOD_Y_TILED:
 		return PLANE_CTL_TILED_Y;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
 		return PLANE_CTL_TILED_Y |
@@ -15218,6 +15270,42 @@ static void intel_atomic_cleanup_work(struct work_struct *work)
 	intel_atomic_helper_free_state(i915);
 }
 
+static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *state)
+{
+	struct drm_device *dev = state->base.dev;
+	struct drm_i915_private *i915 = to_i915(dev);
+	struct intel_plane *plane;
+	struct intel_plane_state *plane_state;
+	int i;
+
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		struct drm_framebuffer *fb = plane_state->hw.fb;
+		struct drm_i915_gem_object *obj;
+		int ret;
+
+		if (!fb ||
+		    fb->modifier != I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)
+			continue;
+
+		obj = intel_fb_obj(fb);
+		/*
+		 * The layout of the fast clear color value expected by HW:
+		 * - 4 x 4 bytes per-channel value (in surface type specific float/int format)
+		 * - 8 bytes native color value used by the display (converted/written by GPU during
+		 *   a fast clear operation using the above per-channel values)
+		 */
+		ret = i915_gem_object_read_from_page(obj,
+						     fb->offsets[2] + 16,
+						     sizeof(&plane_state->ccval),
+						     &plane_state->ccval);
+		/*
+		 * The obj is pinned and synced against GPU writes already, so
+		 * the above can't normally fail.
+		 */
+		drm_WARN_ON(&i915->drm, ret);
+	}
+}
+
 static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 {
 	struct drm_device *dev = state->base.dev;
@@ -15235,6 +15323,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	if (state->modeset)
 		wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_MODESET);
 
+	intel_atomic_prepare_plane_clear_colors(state);
+
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (intel_crtc_needs_modeset(new_crtc_state) ||
@@ -15662,7 +15752,8 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct intel_plane_state *old_plane_state =
 		intel_atomic_get_old_plane_state(state, plane);
-	struct drm_i915_gem_object *obj = intel_fb_obj(new_plane_state->hw.fb);
+	struct drm_framebuffer *fb = new_plane_state->hw.fb;
+	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 	struct drm_i915_gem_object *old_obj = intel_fb_obj(old_plane_state->hw.fb);
 	int ret;
 
@@ -16540,7 +16631,7 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			goto err;
 		}
 
-		if (is_gen12_ccs_plane(fb, i)) {
+		if (is_gen12_ccs_plane(fb, i) && !is_gen12_ccs_cc_plane(fb, i)) {
 			int ccs_aux_stride = gen12_ccs_aux_stride(fb, i);
 
 			if (fb->pitches[i] != ccs_aux_stride) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 585bb1edea04..d64f327a28a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -620,6 +620,9 @@ struct intel_plane_state {
 	struct drm_intel_sprite_colorkey ckey;
 
 	struct drm_rect psr2_sel_fetch_area;
+
+	/* Clear Color Value */
+	u64 ccval;
 };
 
 struct intel_initial_plane_config {
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index cf3589fd0ddb..3efb346e071a 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -867,6 +867,10 @@ skl_program_plane(struct intel_plane *plane,
 	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
 		icl_program_input_csc(plane, crtc_state, plane_state);
 
+	if (fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)
+		intel_uncore_write64_fw(&dev_priv->uncore,
+					PLANE_CC_VAL(pipe, plane_id), plane_state->ccval);
+
 	skl_write_plane_wm(plane, crtc_state);
 
 	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id),
@@ -2366,7 +2370,8 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	     fb->modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
 	     fb->modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
 	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
-	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS)) {
+	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
+	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Y/Yf tiling not supported in IF-ID mode\n");
 		return -EINVAL;
@@ -2856,6 +2861,7 @@ static const u64 skl_plane_format_modifiers_ccs[] = {
 static const u64 gen12_plane_format_modifiers_mc_ccs[] = {
 	I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
 	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
+	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
 	I915_FORMAT_MOD_Y_TILED,
 	I915_FORMAT_MOD_X_TILED,
 	DRM_FORMAT_MOD_LINEAR,
@@ -2864,6 +2870,7 @@ static const u64 gen12_plane_format_modifiers_mc_ccs[] = {
 
 static const u64 gen12_plane_format_modifiers_rc_ccs[] = {
 	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
+	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
 	I915_FORMAT_MOD_Y_TILED,
 	I915_FORMAT_MOD_X_TILED,
 	DRM_FORMAT_MOD_LINEAR,
@@ -3054,6 +3061,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 	case I915_FORMAT_MOD_X_TILED:
 	case I915_FORMAT_MOD_Y_TILED:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 		break;
 	default:
 		return false;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 249a81575b9d..8b9bbc6bacb1 100644
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
