Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8069415A3B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 10:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6E046E0E7;
	Thu, 23 Sep 2021 08:48:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCB406E0E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 08:48:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="223828901"
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="223828901"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 01:48:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="435741795"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.91])
 by orsmga006.jf.intel.com with ESMTP; 23 Sep 2021 01:48:00 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 maarten.lankhorst@linux.intel.com, matthew.d.roper@intel.com
Date: Thu, 23 Sep 2021 11:48:58 +0300
Message-Id: <20210923084858.5480-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Tile F plane format support
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

TileF(Tile4 in bspec) format is 4K tile organized into
64B subtiles with same basic shape as for legacy TileY
which will be supported by Display13.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  3 ++
 drivers/gpu/drm/i915/display/intel_fb.c       | 12 +++++-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  1 +
 .../drm/i915/display/skl_universal_plane.c    | 37 ++++++++++++++-----
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  8 +++-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  4 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  3 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 drivers/gpu/drm/i915/i915_pci.c               |  1 +
 drivers/gpu/drm/i915/i915_reg.h               |  1 +
 drivers/gpu/drm/i915/intel_device_info.h      |  1 +
 drivers/gpu/drm/i915/intel_pm.c               |  1 +
 include/uapi/drm/drm_fourcc.h                 |  8 ++++
 include/uapi/drm/i915_drm.h                   |  3 +-
 15 files changed, 71 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 23b1e0ccc72d..7564b8812c5b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1335,6 +1335,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 		break;
 	case I915_TILING_X:
 	case I915_TILING_Y:
+	case I915_TILING_F:
 		obj->tiling_and_stride =
 			plane_config->fb->base.pitches[0] |
 			plane_config->tiling;
@@ -1376,6 +1377,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	case DRM_FORMAT_MOD_LINEAR:
 	case I915_FORMAT_MOD_X_TILED:
 	case I915_FORMAT_MOD_Y_TILED:
+	case I915_FORMAT_MOD_F_TILED:
 		break;
 	default:
 		drm_dbg(&dev_priv->drm,
@@ -9282,6 +9284,7 @@ static int intel_atomic_check_async(struct intel_atomic_state *state)
 		case I915_FORMAT_MOD_X_TILED:
 		case I915_FORMAT_MOD_Y_TILED:
 		case I915_FORMAT_MOD_Yf_TILED:
+		case I915_FORMAT_MOD_F_TILED:
 			break;
 		default:
 			drm_dbg_kms(&i915->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index e4b8602ec0cd..d88070406098 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -101,6 +101,12 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 			return 128;
 		else
 			return 512;
+	case I915_FORMAT_MOD_F_TILED:
+		/*
+		 * Each 4K tile consists of 64B(8*8) subtiles, with
+		 * same shape as Y Tile(i.e 4*16B OWords)
+		 */
+		return 128;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 		if (is_ccs_plane(fb, color_plane))
 			return 128;
@@ -185,6 +191,8 @@ static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
 	switch (fb_modifier) {
 	case I915_FORMAT_MOD_X_TILED:
 		return I915_TILING_X;
+	case I915_FORMAT_MOD_F_TILED:
+		return I915_TILING_F;
 	case I915_FORMAT_MOD_Y_TILED:
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
@@ -264,6 +272,7 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Yf_TILED_CCS:
 	case I915_FORMAT_MOD_Y_TILED:
+	case I915_FORMAT_MOD_F_TILED:
 	case I915_FORMAT_MOD_Yf_TILED:
 		return 1 * 1024 * 1024;
 	default:
@@ -1282,7 +1291,8 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	} else {
 		if (tiling == I915_TILING_X) {
 			mode_cmd->modifier[0] = I915_FORMAT_MOD_X_TILED;
-		} else if (tiling == I915_TILING_Y) {
+		} else if ((tiling == I915_TILING_Y) ||
+			   (tiling == I915_TILING_F)) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "No Y tiling for legacy addfb\n");
 			goto err;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b1c1a23c36be..015005cf2ba1 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -679,6 +679,7 @@ static bool tiling_is_valid(struct drm_i915_private *dev_priv,
 	switch (modifier) {
 	case DRM_FORMAT_MOD_LINEAR:
 	case I915_FORMAT_MOD_Y_TILED:
+	case I915_FORMAT_MOD_F_TILED:
 		return DISPLAY_VER(dev_priv) >= 9;
 	case I915_FORMAT_MOD_X_TILED:
 		return true;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 724e7b04f3b6..09c00fc099f2 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -206,6 +206,13 @@ static const u64 adlp_step_a_plane_format_modifiers[] = {
 	DRM_FORMAT_MOD_INVALID
 };
 
+static const u64 dg2_plane_format_modifiers[] = {
+	I915_FORMAT_MOD_X_TILED,
+	I915_FORMAT_MOD_F_TILED,
+	DRM_FORMAT_MOD_LINEAR,
+	DRM_FORMAT_MOD_INVALID
+};
+
 int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
 {
 	switch (format) {
@@ -793,6 +800,8 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
 		return PLANE_CTL_TILED_X;
 	case I915_FORMAT_MOD_Y_TILED:
 		return PLANE_CTL_TILED_Y;
+	case I915_FORMAT_MOD_F_TILED:
+		return PLANE_CTL_TILED_F;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
@@ -1240,6 +1249,7 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	     fb->modifier == I915_FORMAT_MOD_Yf_TILED ||
 	     fb->modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
 	     fb->modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
+	     fb->modifier == I915_FORMAT_MOD_F_TILED ||
 	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
 	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
 	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)) {
@@ -1941,6 +1951,10 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			return false;
 		break;
+	case I915_FORMAT_MOD_F_TILED:
+		if (!HAS_FTILE(dev_priv))
+			return false;
+		fallthrough;
 	default:
 		return false;
 	}
@@ -1981,9 +1995,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_Y216:
 	case DRM_FORMAT_XVYU12_16161616:
 	case DRM_FORMAT_XVYU16161616:
-		if (modifier == DRM_FORMAT_MOD_LINEAR ||
-		    modifier == I915_FORMAT_MOD_X_TILED ||
-		    modifier == I915_FORMAT_MOD_Y_TILED)
+		if (!is_ccs_modifier(modifier))
 			return true;
 		fallthrough;
 	default:
@@ -1994,8 +2006,10 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 static const u64 *gen12_get_plane_modifiers(struct drm_i915_private *dev_priv,
 					    enum plane_id plane_id)
 {
+	if (HAS_FTILE(dev_priv))
+		return dg2_plane_format_modifiers;
 	/* Wa_22011186057 */
-	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+	else if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 		return adlp_step_a_plane_format_modifiers;
 	else if (gen12_plane_supports_mc_ccs(dev_priv, plane_id))
 		return gen12_plane_format_modifiers_mc_ccs;
@@ -2265,11 +2279,16 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		else
 			fb->modifier = I915_FORMAT_MOD_Y_TILED;
 		break;
-	case PLANE_CTL_TILED_YF:
-		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
-			fb->modifier = I915_FORMAT_MOD_Yf_TILED_CCS;
-		else
-			fb->modifier = I915_FORMAT_MOD_Yf_TILED;
+	case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_F on XE_LPD+ */
+		if (DISPLAY_VER(dev_priv) >= 13) {
+			plane_config->tiling = I915_TILING_F;
+			fb->modifier = I915_FORMAT_MOD_F_TILED;
+		} else {
+			if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
+				fb->modifier = I915_FORMAT_MOD_Yf_TILED_CCS;
+			else
+				fb->modifier = I915_FORMAT_MOD_Yf_TILED;
+		}
 		break;
 	default:
 		MISSING_CASE(tiling);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 3043fcbd31bd..d96bcab1f3e3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -326,7 +326,13 @@ static inline unsigned int
 i915_gem_tile_height(unsigned int tiling)
 {
 	GEM_BUG_ON(!tiling);
-	return tiling == I915_TILING_Y ? 32 : 8;
+	switch (tiling) {
+	case I915_TILING_Y:
+	case I915_TILING_F:
+		return 32;
+	default:
+		return 8;
+	}
 }
 
 static inline unsigned int
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index ef4d0f7dc118..520b8fb7c870 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -145,7 +145,8 @@ i915_tiling_ok(struct drm_i915_gem_object *obj,
 	}
 
 	if (GRAPHICS_VER(i915) == 2 ||
-	    (tiling == I915_TILING_Y && HAS_128_BYTE_Y_TILING(i915)))
+	    (tiling == I915_TILING_Y && HAS_128_BYTE_Y_TILING(i915)) ||
+	     tiling == I915_TILING_F)
 		tile_width = 128;
 	else
 		tile_width = 512;
@@ -438,6 +439,7 @@ i915_gem_get_tiling_ioctl(struct drm_device *dev, void *data,
 		args->swizzle_mode = dev_priv->ggtt.bit_6_swizzle_x;
 		break;
 	case I915_TILING_Y:
+	case I915_TILING_F:
 		args->swizzle_mode = dev_priv->ggtt.bit_6_swizzle_y;
 		break;
 	default:
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index f8948de72036..f748bcbf46c3 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -77,7 +77,8 @@ static void i965_write_fence_reg(struct i915_fence_reg *fence)
 		val <<= 32;
 		val |= fence->start;
 		val |= (u64)((stride / 128) - 1) << fence_pitch_shift;
-		if (fence->tiling == I915_TILING_Y)
+		if (fence->tiling == I915_TILING_Y ||
+		    fence->tiling == I915_TILING_F)
 			val |= BIT(I965_FENCE_TILING_Y_SHIFT);
 		val |= I965_FENCE_REG_VALID;
 	}
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index fdbd46ff59e0..f43968fc16fe 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -82,6 +82,7 @@ static char get_tiling_flag(struct drm_i915_gem_object *obj)
 	case I915_TILING_NONE: return ' ';
 	case I915_TILING_X: return 'X';
 	case I915_TILING_Y: return 'Y';
+	case I915_TILING_F: return 'F';
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index cc355aa05dbf..dafa8b1f365a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1586,6 +1586,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define CMDPARSER_USES_GGTT(dev_priv) (GRAPHICS_VER(dev_priv) == 7)
 
 #define HAS_LLC(dev_priv)	(INTEL_INFO(dev_priv)->has_llc)
+#define HAS_FTILE(dev_priv)    (INTEL_INFO(dev_priv)->has_ftile)
 #define HAS_SNOOP(dev_priv)	(INTEL_INFO(dev_priv)->has_snoop)
 #define HAS_EDRAM(dev_priv)	((dev_priv)->edram_size_mb)
 #define HAS_SECURE_BATCHES(dev_priv) (GRAPHICS_VER(dev_priv) < 6)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d4a6a9dcf182..81963d5876ef 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -970,6 +970,7 @@ static const struct intel_device_info adl_p_info = {
 	.display.has_cdclk_crawl = 1,
 	.display.has_modular_fia = 1,
 	.display.has_psr_hw_tracking = 0,
+	.has_ftile = 1, \
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.ppgtt_size = 48,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index cad84c3b864b..55c8a47ba047 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7192,6 +7192,7 @@ enum {
 #define   PLANE_CTL_TILED_X			(1 << 10)
 #define   PLANE_CTL_TILED_Y			(4 << 10)
 #define   PLANE_CTL_TILED_YF			(5 << 10)
+#define   PLANE_CTL_TILED_F			(5 << 10)
 #define   PLANE_CTL_ASYNC_FLIP			(1 << 9)
 #define   PLANE_CTL_FLIP_HORIZONTAL		(1 << 8)
 #define   PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE	(1 << 4) /* TGL+ */
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d328bb95c49b..76f783c10f81 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -125,6 +125,7 @@ enum intel_ppgtt_type {
 	func(has_64bit_reloc); \
 	func(gpu_reset_clobbers_display); \
 	func(has_reset_engine); \
+	func(has_ftile); \
 	func(has_global_mocs); \
 	func(has_gt_uc); \
 	func(has_l3_dpf); \
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 74fd6aa7afc7..6e68f259c4c1 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5362,6 +5362,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 	}
 
 	wp->y_tiled = modifier == I915_FORMAT_MOD_Y_TILED ||
+		      modifier == I915_FORMAT_MOD_F_TILED ||
 		      modifier == I915_FORMAT_MOD_Yf_TILED ||
 		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
 		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index 45a914850be0..a7d3027b5bdc 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -558,6 +558,14 @@ extern "C" {
  * pitch is required to be a multiple of 4 tile widths.
  */
 #define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC fourcc_mod_code(INTEL, 8)
+/*
+ * Intel F-tiling(aka Tile4) layout
+ *
+ * This is a tiled layout using 4Kb tiles in row-major layout.
+ * Within the tile pixels are laid out in 64 byte units / sub-tiles in OWORD
+ * (16 bytes) chunks column-major..
+ */
+#define I915_FORMAT_MOD_F_TILED         fourcc_mod_code(INTEL, 10)
 
 /*
  * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index bde5860b3686..d7dc421c6134 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1522,7 +1522,8 @@ struct drm_i915_gem_caching {
 #define I915_TILING_NONE	0
 #define I915_TILING_X		1
 #define I915_TILING_Y		2
-#define I915_TILING_LAST	I915_TILING_Y
+#define I915_TILING_F		3
+#define I915_TILING_LAST	I915_TILING_F
 
 #define I915_BIT_6_SWIZZLE_NONE		0
 #define I915_BIT_6_SWIZZLE_9		1
-- 
2.24.1.485.gad05a3d8e5

