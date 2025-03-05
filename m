Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36152A5051F
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 17:38:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3D5310E813;
	Wed,  5 Mar 2025 16:38:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WD3xnCq4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AA0F10E813;
 Wed,  5 Mar 2025 16:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741192720; x=1772728720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hF/BQSCLKvMyo2W8124XbsMyGMBoIwnHYuODNl8NACE=;
 b=WD3xnCq4i/hu/5zRt0qtg/e5XbBx0VbspPdc5/TbR9EquO30imiU3X7s
 6kczVT14Qstssk8jnoxUX6Lwn/5mkEIDhL/ARh5yHGds21yF5NkDiWmGc
 aDghlzMwbPAzOIgWK3J+z+KJHDSuTZKDSYd9p8geeuEneWf05RldcdgpE
 rrlxGf8E5OtEPqGkDk/iknn0sDNNZVELejaDU19CCOHgRojp77bg2yc6u
 bcGhIm+PdJYte/oHgL2jMdmT5Bsa56+Cb51IqrEolnPPkvubHE+Xz2rOh
 3/tq2v2tFyJr0pis2aQ6eOlZchAjzUgCoWiMI5W/bBN3NdSxr/rtU9vY+ g==;
X-CSE-ConnectionGUID: xE+2BbhDT1mQeePDwY5l6w==
X-CSE-MsgGUID: bei4fCPqSB2sIcsDktSIxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="44972098"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="44972098"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:38:39 -0800
X-CSE-ConnectionGUID: qunAGbXeTtmX+XX/k8DpVg==
X-CSE-MsgGUID: lUDT2NjrRZWIfOTxRsFn8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="118904868"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:38:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@intel.com,
 rodrigo.vivi@intel.com
Subject: [PATCH v2 2/2] drm/i915/plane: convert intel_atomic_plane.[ch] to
 struct intel_display
Date: Wed,  5 Mar 2025 18:38:23 +0200
Message-Id: <d7e28ad43f67d92e54fb7e14373872b5e561038c.1741192597.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741192597.git.jani.nikula@intel.com>
References: <cover.1741192597.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Going forward, struct intel_display is the main display device data
pointer. Convert intel_atomic_plane.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 78 +++++++++----------
 1 file changed, 38 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index d899c37d80c6..7276179df878 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -43,7 +43,6 @@
 
 #include "gem/i915_gem_object.h"
 #include "i915_config.h"
-#include "i915_drv.h"
 #include "i915_scheduler_types.h"
 #include "i915_vma.h"
 #include "i9xx_plane_regs.h"
@@ -169,10 +168,10 @@ intel_plane_destroy_state(struct drm_plane *plane,
 
 bool intel_plane_needs_physical(struct intel_plane *plane)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 
 	return plane->id == PLANE_CURSOR &&
-		DISPLAY_INFO(i915)->cursor_needs_physical;
+		DISPLAY_INFO(display)->cursor_needs_physical;
 }
 
 bool intel_plane_can_async_flip(struct intel_plane *plane, u64 modifier)
@@ -277,7 +276,7 @@ int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 			       struct intel_plane *plane,
 			       bool *need_cdclk_calc)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_crtc *crtc = to_intel_crtc(plane_state->hw.crtc);
@@ -322,7 +321,7 @@ int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 	    cdclk_state->min_cdclk[crtc->pipe])
 		return 0;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "[PLANE:%d:%s] min cdclk (%d kHz) > [CRTC:%d:%s] min cdclk (%d kHz)\n",
 		    plane->base.base.id, plane->base.name,
 		    new_crtc_state->min_cdclk[plane->id],
@@ -435,7 +434,7 @@ static bool intel_plane_do_async_flip(struct intel_plane *plane,
 				      const struct intel_crtc_state *old_crtc_state,
 				      const struct intel_crtc_state *new_crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 
 	if (!plane->async_flip)
 		return false;
@@ -456,7 +455,7 @@ static bool intel_plane_do_async_flip(struct intel_plane *plane,
 	 * extend this so other scanout parameters (stride/etc) could
 	 * be changed as well...
 	 */
-	return DISPLAY_VER(i915) < 9 || old_crtc_state->uapi.async_flip;
+	return DISPLAY_VER(display) < 9 || old_crtc_state->uapi.async_flip;
 }
 
 static bool i9xx_must_disable_cxsr(const struct intel_crtc_state *new_crtc_state,
@@ -560,16 +559,16 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 					   const struct intel_plane_state *old_plane_state,
 					   struct intel_plane_state *new_plane_state)
 {
+	struct intel_display *display = to_intel_display(new_crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	bool mode_changed = intel_crtc_needs_modeset(new_crtc_state);
 	bool was_crtc_enabled = old_crtc_state->hw.active;
 	bool is_crtc_enabled = new_crtc_state->hw.active;
 	bool turn_off, turn_on, visible, was_visible;
 	int ret;
 
-	if (DISPLAY_VER(dev_priv) >= 9 && plane->id != PLANE_CURSOR) {
+	if (DISPLAY_VER(display) >= 9 && plane->id != PLANE_CURSOR) {
 		ret = skl_update_scaler_plane(new_crtc_state, new_plane_state);
 		if (ret)
 			return ret;
@@ -578,7 +577,7 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 	was_visible = old_plane_state->uapi.visible;
 	visible = new_plane_state->uapi.visible;
 
-	if (!was_crtc_enabled && drm_WARN_ON(&dev_priv->drm, was_visible))
+	if (!was_crtc_enabled && drm_WARN_ON(display->drm, was_visible))
 		was_visible = false;
 
 	/*
@@ -602,7 +601,7 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 	turn_off = was_visible && (!visible || mode_changed);
 	turn_on = visible && (!was_visible || mode_changed);
 
-	drm_dbg_atomic(&dev_priv->drm,
+	drm_dbg_atomic(display->drm,
 		       "[CRTC:%d:%s] with [PLANE:%d:%s] visible %i -> %i, off %i, on %i, ms %i\n",
 		       crtc->base.base.id, crtc->base.name,
 		       plane->base.base.id, plane->base.name,
@@ -612,11 +611,11 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 	if (visible || was_visible)
 		new_crtc_state->fb_bits |= plane->frontbuffer_bit;
 
-	if (HAS_GMCH(dev_priv) &&
+	if (HAS_GMCH(display) &&
 	    i9xx_must_disable_cxsr(new_crtc_state, old_plane_state, new_plane_state))
 		new_crtc_state->disable_cxsr = true;
 
-	if ((IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) &&
+	if ((display->platform.ironlake || display->platform.sandybridge || display->platform.ivybridge) &&
 	    ilk_must_disable_cxsr(new_crtc_state, old_plane_state, new_plane_state))
 		new_crtc_state->disable_cxsr = true;
 
@@ -709,10 +708,10 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 struct intel_plane *
 intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_plane *plane;
 
-	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
+	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
 		if (plane->id == plane_id)
 			return plane;
 	}
@@ -961,9 +960,9 @@ void intel_crtc_planes_update_arm(struct intel_dsb *dsb,
 				  struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 
-	if (DISPLAY_VER(i915) >= 9)
+	if (DISPLAY_VER(display) >= 9)
 		skl_crtc_planes_update_arm(dsb, state, crtc);
 	else
 		i9xx_crtc_planes_update_arm(dsb, state, crtc);
@@ -974,7 +973,7 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 				      int min_scale, int max_scale,
 				      bool can_position)
 {
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct drm_rect *src = &plane_state->uapi.src;
@@ -994,7 +993,7 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 	hscale = drm_rect_calc_hscale(src, dst, min_scale, max_scale);
 	vscale = drm_rect_calc_vscale(src, dst, min_scale, max_scale);
 	if (hscale < 0 || vscale < 0) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[PLANE:%d:%s] invalid scaling "DRM_RECT_FP_FMT " -> " DRM_RECT_FMT "\n",
 			    plane->base.base.id, plane->base.name,
 			    DRM_RECT_FP_ARG(src), DRM_RECT_ARG(dst));
@@ -1011,7 +1010,7 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 
 	if (!can_position && plane_state->uapi.visible &&
 	    !drm_rect_equals(dst, clip)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[PLANE:%d:%s] plane (" DRM_RECT_FMT ") must cover entire CRTC (" DRM_RECT_FMT ")\n",
 			    plane->base.base.id, plane->base.name,
 			    DRM_RECT_ARG(dst), DRM_RECT_ARG(clip));
@@ -1026,7 +1025,7 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 
 int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct drm_rect *src = &plane_state->uapi.src;
@@ -1060,18 +1059,18 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 	if (fb->format->format == DRM_FORMAT_RGB565 && rotated) {
 		hsub = 2;
 		vsub = 2;
-	} else if (DISPLAY_VER(i915) >= 20 &&
+	} else if (DISPLAY_VER(display) >= 20 &&
 		   intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
 		/*
 		 * This allows NV12 and P0xx formats to have odd size and/or odd
-		 * source coordinates on DISPLAY_VER(i915) >= 20
+		 * source coordinates on DISPLAY_VER(display) >= 20
 		 */
 		hsub = 1;
 		vsub = 1;
 
 		/* Wa_16023981245 */
-		if ((DISPLAY_VERx100(i915) == 2000 ||
-		     DISPLAY_VERx100(i915) == 3000) &&
+		if ((DISPLAY_VERx100(display) == 2000 ||
+		     DISPLAY_VERx100(display) == 3000) &&
 		     src_x % 2 != 0)
 			hsub = 2;
 	} else {
@@ -1083,7 +1082,7 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		hsub = vsub = max(hsub, vsub);
 
 	if (src_x % hsub || src_w % hsub) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[PLANE:%d:%s] src x/w (%u, %u) must be a multiple of %u (rotated: %s)\n",
 			    plane->base.base.id, plane->base.name,
 			    src_x, src_w, hsub, str_yes_no(rotated));
@@ -1091,7 +1090,7 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 	}
 
 	if (src_y % vsub || src_h % vsub) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[PLANE:%d:%s] src y/h (%u, %u) must be a multiple of %u (rotated: %s)\n",
 			    plane->base.base.id, plane->base.name,
 			    src_y, src_h, vsub, str_yes_no(rotated));
@@ -1336,14 +1335,13 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane_state *plane_state;
 	struct intel_plane *plane;
 	int i;
 
-	if (DISPLAY_VER(dev_priv) < 11)
+	if (DISPLAY_VER(display) < 11)
 		return 0;
 
 	/*
@@ -1371,7 +1369,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 		if ((crtc_state->nv12_planes & BIT(plane->id)) == 0)
 			continue;
 
-		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, y_plane) {
+		for_each_intel_plane_on_crtc(display->drm, crtc, y_plane) {
 			if (!icl_is_nv12_y_plane(display, y_plane->id))
 				continue;
 
@@ -1386,7 +1384,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 		}
 
 		if (!y_plane_state) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "[CRTC:%d:%s] need %d free Y planes for planar YUV\n",
 				    crtc->base.base.id, crtc->base.name,
 				    hweight8(crtc_state->nv12_planes));
@@ -1403,10 +1401,10 @@ static int intel_crtc_add_planes_to_state(struct intel_atomic_state *state,
 					  struct intel_crtc *crtc,
 					  u8 plane_ids_mask)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_plane *plane;
 
-	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
+	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
 		struct intel_plane_state *plane_state;
 
 		if ((plane_ids_mask & BIT(plane->id)) == 0)
@@ -1433,12 +1431,12 @@ int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
 					      new_crtc_state->enabled_planes);
 }
 
-static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
+static bool active_planes_affects_min_cdclk(struct intel_display *display)
 {
 	/* See {hsw,vlv,ivb}_plane_ratio() */
-	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
-		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
-		IS_IVYBRIDGE(dev_priv);
+	return display->platform.broadwell || display->platform.haswell ||
+		display->platform.cherryview || display->platform.valleyview ||
+		display->platform.ivybridge;
 }
 
 static u8 intel_joiner_affected_planes(struct intel_atomic_state *state,
@@ -1517,7 +1515,7 @@ static int intel_add_affected_planes(struct intel_atomic_state *state)
 
 int intel_atomic_check_planes(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct intel_plane_state __maybe_unused *plane_state;
 	struct intel_plane *plane;
@@ -1531,7 +1529,7 @@ int intel_atomic_check_planes(struct intel_atomic_state *state)
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
 		ret = intel_plane_atomic_check(state, plane);
 		if (ret) {
-			drm_dbg_atomic(&dev_priv->drm,
+			drm_dbg_atomic(display->drm,
 				       "[PLANE:%d:%s] atomic driver check failed\n",
 				       plane->base.base.id, plane->base.name);
 			return ret;
@@ -1551,7 +1549,7 @@ int intel_atomic_check_planes(struct intel_atomic_state *state)
 		 * the planes' minimum cdclk calculation. Add such planes
 		 * to the state before we compute the minimum cdclk.
 		 */
-		if (!active_planes_affects_min_cdclk(dev_priv))
+		if (!active_planes_affects_min_cdclk(display))
 			continue;
 
 		old_active_planes = old_crtc_state->active_planes & ~BIT(PLANE_CURSOR);
-- 
2.39.5

