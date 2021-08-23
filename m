Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E6D3F4A9B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 14:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2482B89DA7;
	Mon, 23 Aug 2021 12:26:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4387589DA7
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 12:26:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="216811571"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="216811571"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:26:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="492678400"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:25:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com,
	daniel@ffwll.ch
Date: Mon, 23 Aug 2021 15:25:33 +0300
Message-Id: <35c3ade81a54fea890cf92e21b778c38ab78cd04.1629721467.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629721467.git.jani.nikula@intel.com>
References: <cover.1629721467.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/fb: move intel_tile_width_bytes()
 to intel_fb.c
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
 drivers/gpu/drm/i915/display/intel_display.c | 54 --------------------
 drivers/gpu/drm/i915/display/intel_display.h |  1 -
 drivers/gpu/drm/i915/display/intel_fb.c      | 54 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h      |  1 +
 4 files changed, 55 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d93a2d675ae2..6118bd782b57 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -879,60 +879,6 @@ intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
 	       info->num_planes == (is_ccs_modifier(modifier) ? 4 : 2);
 }
 
-unsigned int
-intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
-{
-	struct drm_i915_private *dev_priv = to_i915(fb->dev);
-	unsigned int cpp = fb->format->cpp[color_plane];
-
-	switch (fb->modifier) {
-	case DRM_FORMAT_MOD_LINEAR:
-		return intel_tile_size(dev_priv);
-	case I915_FORMAT_MOD_X_TILED:
-		if (DISPLAY_VER(dev_priv) == 2)
-			return 128;
-		else
-			return 512;
-	case I915_FORMAT_MOD_Y_TILED_CCS:
-		if (is_ccs_plane(fb, color_plane))
-			return 128;
-		fallthrough;
-	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
-		if (is_ccs_plane(fb, color_plane))
-			return 64;
-		fallthrough;
-	case I915_FORMAT_MOD_Y_TILED:
-		if (DISPLAY_VER(dev_priv) == 2 || HAS_128_BYTE_Y_TILING(dev_priv))
-			return 128;
-		else
-			return 512;
-	case I915_FORMAT_MOD_Yf_TILED_CCS:
-		if (is_ccs_plane(fb, color_plane))
-			return 128;
-		fallthrough;
-	case I915_FORMAT_MOD_Yf_TILED:
-		switch (cpp) {
-		case 1:
-			return 64;
-		case 2:
-		case 4:
-			return 128;
-		case 8:
-		case 16:
-			return 256;
-		default:
-			MISSING_CASE(cpp);
-			return cpp;
-		}
-		break;
-	default:
-		MISSING_CASE(fb->modifier);
-		return cpp;
-	}
-}
-
 unsigned int
 intel_fb_align_height(const struct drm_framebuffer *fb,
 		      int color_plane, unsigned int height)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 284936f0ddab..e04394c8a9ad 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -632,7 +632,6 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 
 unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 				  int color_plane);
-unsigned int intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane);
 
 void intel_display_driver_register(struct drm_i915_private *i915);
 void intel_display_driver_unregister(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index c60a81a81c09..870c1366e7e6 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -79,6 +79,60 @@ unsigned int intel_tile_size(const struct drm_i915_private *i915)
 	return DISPLAY_VER(i915) == 2 ? 2048 : 4096;
 }
 
+unsigned int
+intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
+{
+	struct drm_i915_private *dev_priv = to_i915(fb->dev);
+	unsigned int cpp = fb->format->cpp[color_plane];
+
+	switch (fb->modifier) {
+	case DRM_FORMAT_MOD_LINEAR:
+		return intel_tile_size(dev_priv);
+	case I915_FORMAT_MOD_X_TILED:
+		if (DISPLAY_VER(dev_priv) == 2)
+			return 128;
+		else
+			return 512;
+	case I915_FORMAT_MOD_Y_TILED_CCS:
+		if (is_ccs_plane(fb, color_plane))
+			return 128;
+		fallthrough;
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
+		if (is_ccs_plane(fb, color_plane))
+			return 64;
+		fallthrough;
+	case I915_FORMAT_MOD_Y_TILED:
+		if (DISPLAY_VER(dev_priv) == 2 || HAS_128_BYTE_Y_TILING(dev_priv))
+			return 128;
+		else
+			return 512;
+	case I915_FORMAT_MOD_Yf_TILED_CCS:
+		if (is_ccs_plane(fb, color_plane))
+			return 128;
+		fallthrough;
+	case I915_FORMAT_MOD_Yf_TILED:
+		switch (cpp) {
+		case 1:
+			return 64;
+		case 2:
+		case 4:
+			return 128;
+		case 8:
+		case 16:
+			return 256;
+		default:
+			MISSING_CASE(cpp);
+			return cpp;
+		}
+		break;
+	default:
+		MISSING_CASE(fb->modifier);
+		return cpp;
+	}
+}
+
 unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane)
 {
 	if (is_gen12_ccs_plane(fb, color_plane))
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 739d1b91754b..4768360401ae 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -28,6 +28,7 @@ int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane);
 int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane);
 
 unsigned int intel_tile_size(const struct drm_i915_private *i915);
+unsigned int intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane);
 unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane);
 unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int color_plane);
 
-- 
2.20.1

