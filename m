Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 861F92A379B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 01:17:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C4256E5B2;
	Tue,  3 Nov 2020 00:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 722536E563
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 00:17:34 +0000 (UTC)
IronPort-SDR: 5D6H9fQB6jY3sYBjJy76Nseb8Yt0+CiIMWdOFBucRcVvCAAdiFpG+yoKxgDUDOfF3YQGzrS3lD
 TPNcC5RzguUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="155962137"
X-IronPort-AV: E=Sophos;i="5.77,446,1596524400"; d="scan'208";a="155962137"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 16:17:33 -0800
IronPort-SDR: q668+HIWyRQXQVnzNyuJE//LYRvHUxaPNaj6E5vdQSGd6Zb4Z50FzsrWo+49D7mhrF5PrrsKTy
 Y2Gc5hgtdhRA==
X-IronPort-AV: E=Sophos;i="5.77,446,1596524400"; d="scan'208";a="470573478"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 02 Nov 2020 16:17:32 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Nov 2020 16:19:31 -0800
Message-Id: <20201103001932.11286-13-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201103001932.11286-1-manasi.d.navare@intel.com>
References: <20201103001932.11286-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v14 12/13] drm/i915: Add bigjoiner aware plane
 clipping checks
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

We need to look at hw.fb for the framebuffer, and add the translation
for the slave_plane_state. With these changes we set the correct
rectangle on the bigjoiner slave, and don't set incorrect
src/dst/visibility on the slave plane.

v2:
* Manual rebase (Manasi)

v3:
* hw.rotation instead of uapi.rotation (Ville)

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 60 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_atomic_plane.h |  4 ++
 drivers/gpu/drm/i915/display/intel_display.c  | 19 +++---
 drivers/gpu/drm/i915/display/intel_sprite.c   | 21 +++----
 4 files changed, 80 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 5df928f8f322..32a013798836 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -268,6 +268,9 @@ void intel_plane_copy_uapi_to_hw_state(const struct intel_crtc_state *crtc_state
 	plane_state->hw.color_encoding = from_plane_state->uapi.color_encoding;
 	plane_state->hw.color_range = from_plane_state->uapi.color_range;
 	plane_state->hw.scaling_filter = from_plane_state->uapi.scaling_filter;
+
+	plane_state->uapi.src = drm_plane_state_src(&from_plane_state->uapi);
+	plane_state->uapi.dst = drm_plane_state_dest(&from_plane_state->uapi);
 }
 
 void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
@@ -520,6 +523,63 @@ void i9xx_update_planes_on_crtc(struct intel_atomic_state *state,
 	}
 }
 
+int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
+				      struct intel_crtc_state *crtc_state,
+				      int min_scale, int max_scale,
+				      bool can_position)
+{
+	struct drm_framebuffer *fb = plane_state->hw.fb;
+	struct drm_rect *src = &plane_state->uapi.src;
+	struct drm_rect *dst = &plane_state->uapi.dst;
+	unsigned int rotation = plane_state->hw.rotation;
+	struct drm_rect clip = {};
+	int hscale, vscale;
+
+	if (!fb) {
+		plane_state->uapi.visible = false;
+		return 0;
+	}
+
+	drm_rect_rotate(src, fb->width << 16, fb->height << 16, rotation);
+
+	/* Check scaling */
+	hscale = drm_rect_calc_hscale(src, dst, min_scale, max_scale);
+	vscale = drm_rect_calc_vscale(src, dst, min_scale, max_scale);
+	if (hscale < 0 || vscale < 0) {
+		DRM_DEBUG_KMS("Invalid scaling of plane\n");
+		drm_rect_debug_print("src: ", src, true);
+		drm_rect_debug_print("dst: ", dst, false);
+		return -ERANGE;
+	}
+
+	if (crtc_state->hw.enable) {
+		clip.x2 = crtc_state->pipe_src_w;
+		clip.y2 = crtc_state->pipe_src_h;
+	}
+
+	/* right side of the image is on the slave crtc, adjust dst to match */
+	if (crtc_state->bigjoiner_slave)
+		drm_rect_translate(dst, -crtc_state->pipe_src_w, 0);
+
+	/*
+	 * FIXME: This might need further adjustment for seamless scaling
+	 * with phase information, for the 2p2 and 2p1 scenarios.
+	 */
+	plane_state->uapi.visible = drm_rect_clip_scaled(src, dst, &clip);
+
+	drm_rect_rotate_inv(src, fb->width << 16, fb->height << 16, rotation);
+
+	if (!can_position && plane_state->uapi.visible &&
+	    !drm_rect_equals(dst, &clip)) {
+		DRM_DEBUG_KMS("Plane must cover entire CRTC\n");
+		drm_rect_debug_print("dst: ", dst, false);
+		drm_rect_debug_print("clip: ", &clip, false);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 const struct drm_plane_helper_funcs intel_plane_helper_funcs = {
 	.prepare_fb = intel_prepare_plane_fb,
 	.cleanup_fb = intel_cleanup_plane_fb,
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index c2a1e7c86e6c..d0a599d00ecd 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -53,6 +53,10 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
 int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 			       struct intel_plane *plane,
 			       bool *need_cdclk_calc);
+int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
+				      struct intel_crtc_state *crtc_state,
+				      int min_scale, int max_scale,
+				      bool can_position);
 void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 			       struct intel_plane_state *plane_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 71140494d728..dc3a6107dcdf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4414,12 +4414,10 @@ i9xx_plane_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	ret = drm_atomic_helper_check_plane_state(&plane_state->uapi,
-						  &crtc_state->uapi,
-						  DRM_PLANE_HELPER_NO_SCALING,
-						  DRM_PLANE_HELPER_NO_SCALING,
-						  i9xx_plane_has_windowing(plane),
-						  true);
+	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
+						DRM_PLANE_HELPER_NO_SCALING,
+						DRM_PLANE_HELPER_NO_SCALING,
+						i9xx_plane_has_windowing(plane));
 	if (ret)
 		return ret;
 
@@ -11703,11 +11701,10 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 	}
 
-	ret = drm_atomic_helper_check_plane_state(&plane_state->uapi,
-						  &crtc_state->uapi,
-						  DRM_PLANE_HELPER_NO_SCALING,
-						  DRM_PLANE_HELPER_NO_SCALING,
-						  true, true);
+	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
+						DRM_PLANE_HELPER_NO_SCALING,
+						DRM_PLANE_HELPER_NO_SCALING,
+						true);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index b6deeb338477..172453821b64 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -2059,10 +2059,8 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	ret = drm_atomic_helper_check_plane_state(&plane_state->uapi,
-						  &crtc_state->uapi,
-						  min_scale, max_scale,
-						  true, true);
+	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
+						min_scale, max_scale, true);
 	if (ret)
 		return ret;
 
@@ -2117,11 +2115,10 @@ vlv_sprite_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	ret = drm_atomic_helper_check_plane_state(&plane_state->uapi,
-						  &crtc_state->uapi,
-						  DRM_PLANE_HELPER_NO_SCALING,
-						  DRM_PLANE_HELPER_NO_SCALING,
-						  true, true);
+	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
+						DRM_PLANE_HELPER_NO_SCALING,
+						DRM_PLANE_HELPER_NO_SCALING,
+						true);
 	if (ret)
 		return ret;
 
@@ -2328,10 +2325,8 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 		max_scale = skl_plane_max_scale(dev_priv, fb);
 	}
 
-	ret = drm_atomic_helper_check_plane_state(&plane_state->uapi,
-						  &crtc_state->uapi,
-						  min_scale, max_scale,
-						  true, true);
+	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
+						min_scale, max_scale, true);
 	if (ret)
 		return ret;
 
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
