Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8567194638
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 19:14:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 290E56E902;
	Thu, 26 Mar 2020 18:14:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B64086E8FF
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 18:13:56 +0000 (UTC)
IronPort-SDR: 1MRTTKmAWvTt8f6U4MVDh8KNfRS13g46HNMayThYSM1ZZ5ki0l5W+kNhF2jf6ACoOPbD2Du4W+
 73FkHncyzCOw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 11:13:56 -0700
IronPort-SDR: iuaO+rj4AKyCdapJKAR3KitMvYMrYGCcdY34Rq+imPu00KON3zylXcLcsGi963FLmaPDn0V34Z
 i2uWgIFgHGsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; d="scan'208";a="420808177"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 26 Mar 2020 11:13:54 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 20:09:57 +0200
Message-Id: <20200326181005.11775-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v20 02/10] drm/i915: Eliminate magic numbers "0"
 and "1" from color plane
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to many computer science sources - magic values
in code _are_ _bad_. For many reasons: the reason is that "0"
or "1" or whatever magic values confuses and doesn't give any
info why this parameter is this value and what it's meaning
is.
I renamed "0" to COLOR_PLANE_Y and "1" to COLOR_PLANE_UV,
because we in fact already use this naming in many other places
and function names, when dealing with color planes.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  5 +++
 drivers/gpu/drm/i915/intel_pm.c               | 40 +++++++++----------
 2 files changed, 25 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 176ab5f1e867..523e0444b373 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -682,6 +682,11 @@ struct skl_plane_wm {
 	bool is_planar;
 };
 
+enum color_plane {
+	COLOR_PLANE_Y,
+	COLOR_PLANE_UV
+};
+
 struct skl_pipe_wm {
 	struct skl_plane_wm planes[I915_MAX_PLANES];
 };
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index b632b6bb9c3e..9e9a4612d842 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4013,7 +4013,7 @@ static int skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 				 int width, const struct drm_format_info *format,
 				 u64 modifier, unsigned int rotation,
 				 u32 plane_pixel_rate, struct skl_wm_params *wp,
-				 int color_plane);
+				 enum color_plane);
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 int level,
 				 unsigned int latency,
@@ -4035,7 +4035,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 				    drm_format_info(DRM_FORMAT_ARGB8888),
 				    DRM_FORMAT_MOD_LINEAR,
 				    DRM_MODE_ROTATE_0,
-				    crtc_state->pixel_rate, &wp, 0);
+				    crtc_state->pixel_rate, &wp, COLOR_PLANE_Y);
 	drm_WARN_ON(&dev_priv->drm, ret);
 
 	for (level = 0; level <= max_level; level++) {
@@ -4431,7 +4431,7 @@ static u8 skl_compute_dbuf_slices(const struct intel_crtc_state *crtc_state,
 static u64
 skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 			     const struct intel_plane_state *plane_state,
-			     int color_plane)
+			     enum color_plane color_plane)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -4446,7 +4446,7 @@ skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 	if (plane->id == PLANE_CURSOR)
 		return 0;
 
-	if (color_plane == 1 &&
+	if (color_plane == COLOR_PLANE_UV &&
 	    !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
 		return 0;
 
@@ -4459,7 +4459,7 @@ skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 	height = drm_rect_height(&plane_state->uapi.src) >> 16;
 
 	/* UV plane does 1/2 pixel sub-sampling */
-	if (color_plane == 1) {
+	if (color_plane == COLOR_PLANE_UV) {
 		width /= 2;
 		height /= 2;
 	}
@@ -4489,12 +4489,12 @@ skl_get_total_relative_data_rate(struct intel_crtc_state *crtc_state,
 		u64 rate;
 
 		/* packed/y */
-		rate = skl_plane_relative_data_rate(crtc_state, plane_state, 0);
+		rate = skl_plane_relative_data_rate(crtc_state, plane_state, COLOR_PLANE_Y);
 		plane_data_rate[plane_id] = rate;
 		total_data_rate += rate;
 
 		/* uv-plane */
-		rate = skl_plane_relative_data_rate(crtc_state, plane_state, 1);
+		rate = skl_plane_relative_data_rate(crtc_state, plane_state, COLOR_PLANE_UV);
 		uv_plane_data_rate[plane_id] = rate;
 		total_data_rate += rate;
 	}
@@ -4516,7 +4516,7 @@ icl_get_total_relative_data_rate(struct intel_crtc_state *crtc_state,
 		u64 rate;
 
 		if (!plane_state->planar_linked_plane) {
-			rate = skl_plane_relative_data_rate(crtc_state, plane_state, 0);
+			rate = skl_plane_relative_data_rate(crtc_state, plane_state, COLOR_PLANE_Y);
 			plane_data_rate[plane_id] = rate;
 			total_data_rate += rate;
 		} else {
@@ -4533,12 +4533,12 @@ icl_get_total_relative_data_rate(struct intel_crtc_state *crtc_state,
 				continue;
 
 			/* Y plane rate is calculated on the slave */
-			rate = skl_plane_relative_data_rate(crtc_state, plane_state, 0);
+			rate = skl_plane_relative_data_rate(crtc_state, plane_state, COLOR_PLANE_Y);
 			y_plane_id = plane_state->planar_linked_plane->id;
 			plane_data_rate[y_plane_id] = rate;
 			total_data_rate += rate;
 
-			rate = skl_plane_relative_data_rate(crtc_state, plane_state, 1);
+			rate = skl_plane_relative_data_rate(crtc_state, plane_state, COLOR_PLANE_UV);
 			plane_data_rate[plane_id] = rate;
 			total_data_rate += rate;
 		}
@@ -4854,14 +4854,14 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		      int width, const struct drm_format_info *format,
 		      u64 modifier, unsigned int rotation,
 		      u32 plane_pixel_rate, struct skl_wm_params *wp,
-		      int color_plane)
+		      enum color_plane color_plane)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 interm_pbpl;
 
 	/* only planar format has two planes */
-	if (color_plane == 1 &&
+	if (color_plane == COLOR_PLANE_UV &&
 	    !intel_format_info_is_yuv_semiplanar(format, modifier)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Non planar format have single plane\n");
@@ -4878,7 +4878,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
 
 	wp->width = width;
-	if (color_plane == 1 && wp->is_planar)
+	if (color_plane == COLOR_PLANE_UV && wp->is_planar)
 		wp->width /= 2;
 
 	wp->cpp = format->cpp[color_plane];
@@ -4945,7 +4945,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 static int
 skl_compute_plane_wm_params(const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state,
-			    struct skl_wm_params *wp, int color_plane)
+			    struct skl_wm_params *wp, enum color_plane color_plane)
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	int width;
@@ -5187,7 +5187,7 @@ static void skl_compute_transition_wm(const struct intel_crtc_state *crtc_state,
 
 static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
 				     const struct intel_plane_state *plane_state,
-				     enum plane_id plane_id, int color_plane)
+				     enum plane_id plane_id, enum color_plane color_plane)
 {
 	struct skl_plane_wm *wm = &crtc_state->wm.skl.optimal.planes[plane_id];
 	struct skl_wm_params wm_params;
@@ -5216,7 +5216,7 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
 
 	/* uv plane watermarks must also be validated for NV12/Planar */
 	ret = skl_compute_plane_wm_params(crtc_state, plane_state,
-					  &wm_params, 1);
+					  &wm_params, COLOR_PLANE_UV);
 	if (ret)
 		return ret;
 
@@ -5237,7 +5237,7 @@ static int skl_build_plane_wm(struct intel_crtc_state *crtc_state,
 		return 0;
 
 	ret = skl_build_plane_wm_single(crtc_state, plane_state,
-					plane_id, 0);
+					plane_id, COLOR_PLANE_Y);
 	if (ret)
 		return ret;
 
@@ -5270,17 +5270,17 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 			fb->format->num_planes == 1);
 
 		ret = skl_build_plane_wm_single(crtc_state, plane_state,
-						y_plane_id, 0);
+						y_plane_id, COLOR_PLANE_Y);
 		if (ret)
 			return ret;
 
 		ret = skl_build_plane_wm_single(crtc_state, plane_state,
-						plane_id, 1);
+						plane_id, COLOR_PLANE_UV);
 		if (ret)
 			return ret;
 	} else if (intel_wm_plane_visible(crtc_state, plane_state)) {
 		ret = skl_build_plane_wm_single(crtc_state, plane_state,
-						plane_id, 0);
+						plane_id, COLOR_PLANE_Y);
 		if (ret)
 			return ret;
 	}
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
