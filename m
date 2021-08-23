Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BD13F4AA2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 14:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42DB889DC9;
	Mon, 23 Aug 2021 12:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 351EA89DD2
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 12:26:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="217116863"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="217116863"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:26:11 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="454786849"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:26:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com,
	daniel@ffwll.ch
Date: Mon, 23 Aug 2021 15:25:35 +0300
Message-Id: <0b894be3a6acff5fe917b686771a084a6c2aa535.1629721467.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629721467.git.jani.nikula@intel.com>
References: <cover.1629721467.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/fb: move intel_surf_alignment() to
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
 drivers/gpu/drm/i915/display/intel_display.c | 64 --------------------
 drivers/gpu/drm/i915/display/intel_display.h |  3 -
 drivers/gpu/drm/i915/display/intel_fb.c      | 64 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h      |  2 +
 4 files changed, 66 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ddc6bd436b01..a9e3ac07b207 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -901,70 +901,6 @@ unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info
 	return size;
 }
 
-static unsigned int intel_linear_alignment(const struct drm_i915_private *dev_priv)
-{
-	if (DISPLAY_VER(dev_priv) >= 9)
-		return 256 * 1024;
-	else if (IS_I965G(dev_priv) || IS_I965GM(dev_priv) ||
-		 IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		return 128 * 1024;
-	else if (DISPLAY_VER(dev_priv) >= 4)
-		return 4 * 1024;
-	else
-		return 0;
-}
-
-unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
-				  int color_plane)
-{
-	struct drm_i915_private *dev_priv = to_i915(fb->dev);
-
-	if (intel_fb_uses_dpt(fb))
-		return 512 * 4096;
-
-	/* AUX_DIST needs only 4K alignment */
-	if (is_ccs_plane(fb, color_plane))
-		return 4096;
-
-	if (is_semiplanar_uv_plane(fb, color_plane)) {
-		/*
-		 * TODO: cross-check wrt. the bspec stride in bytes * 64 bytes
-		 * alignment for linear UV planes on all platforms.
-		 */
-		if (DISPLAY_VER(dev_priv) >= 12) {
-			if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
-				return intel_linear_alignment(dev_priv);
-
-			return intel_tile_row_size(fb, color_plane);
-		}
-
-		return 4096;
-	}
-
-	drm_WARN_ON(&dev_priv->drm, color_plane != 0);
-
-	switch (fb->modifier) {
-	case DRM_FORMAT_MOD_LINEAR:
-		return intel_linear_alignment(dev_priv);
-	case I915_FORMAT_MOD_X_TILED:
-		if (HAS_ASYNC_FLIPS(dev_priv))
-			return 256 * 1024;
-		return 0;
-	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
-		return 16 * 1024;
-	case I915_FORMAT_MOD_Y_TILED_CCS:
-	case I915_FORMAT_MOD_Yf_TILED_CCS:
-	case I915_FORMAT_MOD_Y_TILED:
-	case I915_FORMAT_MOD_Yf_TILED:
-		return 1 * 1024 * 1024;
-	default:
-		MISSING_CASE(fb->modifier);
-		return 0;
-	}
-}
-
 static bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 695b874adacc..4719ffc97fce 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -628,9 +628,6 @@ struct intel_encoder *
 intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 			   const struct intel_crtc_state *crtc_state);
 
-unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
-				  int color_plane);
-
 void intel_display_driver_register(struct drm_i915_private *i915);
 void intel_display_driver_unregister(struct drm_i915_private *i915);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 9e722cc1a7fd..e24ee2a28ebf 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -184,6 +184,70 @@ unsigned int intel_cursor_alignment(const struct drm_i915_private *i915)
 		return 4 * 1024;
 }
 
+static unsigned int intel_linear_alignment(const struct drm_i915_private *dev_priv)
+{
+	if (DISPLAY_VER(dev_priv) >= 9)
+		return 256 * 1024;
+	else if (IS_I965G(dev_priv) || IS_I965GM(dev_priv) ||
+		 IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		return 128 * 1024;
+	else if (DISPLAY_VER(dev_priv) >= 4)
+		return 4 * 1024;
+	else
+		return 0;
+}
+
+unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
+				  int color_plane)
+{
+	struct drm_i915_private *dev_priv = to_i915(fb->dev);
+
+	if (intel_fb_uses_dpt(fb))
+		return 512 * 4096;
+
+	/* AUX_DIST needs only 4K alignment */
+	if (is_ccs_plane(fb, color_plane))
+		return 4096;
+
+	if (is_semiplanar_uv_plane(fb, color_plane)) {
+		/*
+		 * TODO: cross-check wrt. the bspec stride in bytes * 64 bytes
+		 * alignment for linear UV planes on all platforms.
+		 */
+		if (DISPLAY_VER(dev_priv) >= 12) {
+			if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
+				return intel_linear_alignment(dev_priv);
+
+			return intel_tile_row_size(fb, color_plane);
+		}
+
+		return 4096;
+	}
+
+	drm_WARN_ON(&dev_priv->drm, color_plane != 0);
+
+	switch (fb->modifier) {
+	case DRM_FORMAT_MOD_LINEAR:
+		return intel_linear_alignment(dev_priv);
+	case I915_FORMAT_MOD_X_TILED:
+		if (HAS_ASYNC_FLIPS(dev_priv))
+			return 256 * 1024;
+		return 0;
+	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
+	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
+		return 16 * 1024;
+	case I915_FORMAT_MOD_Y_TILED_CCS:
+	case I915_FORMAT_MOD_Yf_TILED_CCS:
+	case I915_FORMAT_MOD_Y_TILED:
+	case I915_FORMAT_MOD_Yf_TILED:
+		return 1 * 1024 * 1024;
+	default:
+		MISSING_CASE(fb->modifier);
+		return 0;
+	}
+}
+
 void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
 				    const struct drm_framebuffer *fb,
 				    int color_plane)
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index f3d677cd6b6e..0b0a83139462 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -34,6 +34,8 @@ unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int color_pla
 unsigned int intel_fb_align_height(const struct drm_framebuffer *fb,
 				   int color_plane, unsigned int height);
 unsigned int intel_cursor_alignment(const struct drm_i915_private *i915);
+unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
+				  int color_plane);
 
 void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
 				    const struct drm_framebuffer *fb,
-- 
2.20.1

