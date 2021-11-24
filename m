Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0238545B932
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8AF36E877;
	Wed, 24 Nov 2021 11:37:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E70AB6E865
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="235207464"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="235207464"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="554151996"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 24 Nov 2021 03:37:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:35 +0200
Message-Id: <20211124113652.22090-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/20] drm/i915/fbc: Nuke lots of crap from
 intel_fbc_state_cache
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

There's no need to store all this stuff in intel_fbc_state_cache.
Just check it all against the plane/crtc states and store only
what we need. Probably more should get nuked still, but this
is a start.

So what we'll do is:
- each plane will check its own state and update its local
  no_fbc_reason
- the per-plane no_fbc_reason (if any) then gets propagated
  to the cache->no_fbc_reason while doing the actual update
- fbc->no_fbc_reason gets updated in the end with either
  the value from the cache or directly from frontbuffer
  tracking

It's still a bit messy, but should hopefuly get cleaned up
more in the future. At least now we can observe each plane's
reasons for rejecting FBC now more consistently, and we don't
have so mcuh redundant state store all over the place.

v2: store no_fbc_reason per-plane instead of per-pipe

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +-
 .../drm/i915/display/intel_display_types.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      | 341 ++++++++----------
 drivers/gpu/drm/i915/display/intel_fbc.h      |   3 +-
 drivers/gpu/drm/i915/i915_drv.h               |  20 +-
 5 files changed, 166 insertions(+), 207 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b2d51cd79d6c..520a87c814a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8039,7 +8039,6 @@ static int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	intel_fbc_choose_crtc(dev_priv, state);
 	ret = intel_compute_global_watermarks(state);
 	if (ret)
 		goto fail;
@@ -8071,6 +8070,10 @@ static int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	ret = intel_fbc_atomic_check(state);
+	if (ret)
+		goto fail;
+
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (new_crtc_state->uapi.async_flip) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ea1e8a6e10b0..5df477dfb8cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -687,6 +687,8 @@ struct intel_plane_state {
 
 	/* Clear Color Value */
 	u64 ccval;
+
+	const char *no_fbc_reason;
 };
 
 struct intel_initial_plane_config {
@@ -1117,8 +1119,6 @@ struct intel_crtc_state {
 
 	bool crc_enabled;
 
-	bool enable_fbc;
-
 	bool double_wide;
 
 	int pbn;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 083c0cab4847..8bde3681b96e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -43,6 +43,7 @@
 #include "i915_drv.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
+#include "intel_cdclk.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fbc.h"
@@ -58,20 +59,6 @@ struct intel_fbc_funcs {
 	void (*set_false_color)(struct intel_fbc *fbc, bool enable);
 };
 
-/*
- * For SKL+, the plane source size used by the hardware is based on the value we
- * write to the PLANE_SIZE register. For BDW-, the hardware looks at the value
- * we wrote to PIPESRC.
- */
-static void intel_fbc_get_plane_source_size(const struct intel_fbc_state_cache *cache,
-					    int *width, int *height)
-{
-	if (width)
-		*width = cache->plane.src_w;
-	if (height)
-		*height = cache->plane.src_h;
-}
-
 /* plane stride in pixels */
 static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane_state)
 {
@@ -796,9 +783,13 @@ void intel_fbc_cleanup(struct drm_i915_private *i915)
 	mutex_unlock(&fbc->lock);
 }
 
-static bool stride_is_valid(struct drm_i915_private *i915,
-			    u64 modifier, unsigned int stride)
+static bool stride_is_valid(const struct intel_plane_state *plane_state)
 {
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	unsigned int stride = intel_fbc_plane_stride(plane_state) *
+		fb->format->cpp[0];
+
 	/* This should have been caught earlier. */
 	if (drm_WARN_ON_ONCE(&i915->drm, (stride & (64 - 1)) != 0))
 		return false;
@@ -815,7 +806,7 @@ static bool stride_is_valid(struct drm_i915_private *i915,
 
 	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
 	if ((DISPLAY_VER(i915) == 9 || IS_GEMINILAKE(i915)) &&
-	    modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
+	    fb->modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
 		return false;
 
 	if (stride > 16384)
@@ -824,10 +815,12 @@ static bool stride_is_valid(struct drm_i915_private *i915,
 	return true;
 }
 
-static bool pixel_format_is_valid(struct drm_i915_private *i915,
-				  u32 pixel_format)
+static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
-	switch (pixel_format) {
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	switch (fb->format->format) {
 	case DRM_FORMAT_XRGB8888:
 	case DRM_FORMAT_XBGR8888:
 		return true;
@@ -845,10 +838,13 @@ static bool pixel_format_is_valid(struct drm_i915_private *i915,
 	}
 }
 
-static bool rotation_is_valid(struct drm_i915_private *i915,
-			      u32 pixel_format, unsigned int rotation)
+static bool rotation_is_valid(const struct intel_plane_state *plane_state)
 {
-	if (DISPLAY_VER(i915) >= 9 && pixel_format == DRM_FORMAT_RGB565 &&
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	unsigned int rotation = plane_state->hw.rotation;
+
+	if (DISPLAY_VER(i915) >= 9 && fb->format->format == DRM_FORMAT_RGB565 &&
 	    drm_rotation_90_or_270(rotation))
 		return false;
 	else if (DISPLAY_VER(i915) <= 4 && !IS_G4X(i915) &&
@@ -864,10 +860,9 @@ static bool rotation_is_valid(struct drm_i915_private *i915,
  * the X and Y offset registers. That's why we include the src x/y offsets
  * instead of just looking at the plane size.
  */
-static bool intel_fbc_hw_tracking_covers_screen(struct intel_fbc *fbc,
-						struct intel_crtc *crtc)
+static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = fbc->i915;
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	unsigned int effective_w, effective_h, max_w, max_h;
 
 	if (DISPLAY_VER(i915) >= 10) {
@@ -884,18 +879,20 @@ static bool intel_fbc_hw_tracking_covers_screen(struct intel_fbc *fbc,
 		max_h = 1536;
 	}
 
-	intel_fbc_get_plane_source_size(&fbc->state_cache, &effective_w,
-					&effective_h);
-	effective_w += fbc->state_cache.plane.adjusted_x;
-	effective_h += fbc->state_cache.plane.adjusted_y;
+	effective_w = plane_state->view.color_plane[0].x +
+		(drm_rect_width(&plane_state->uapi.src) >> 16);
+	effective_h = plane_state->view.color_plane[0].y +
+		(drm_rect_height(&plane_state->uapi.src) >> 16);
 
 	return effective_w <= max_w && effective_h <= max_h;
 }
 
-static bool tiling_is_valid(struct drm_i915_private *i915,
-			    u64 modifier)
+static bool tiling_is_valid(const struct intel_plane_state *plane_state)
 {
-	switch (modifier) {
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	switch (fb->modifier) {
 	case DRM_FORMAT_MOD_LINEAR:
 	case I915_FORMAT_MOD_Y_TILED:
 	case I915_FORMAT_MOD_Yf_TILED:
@@ -916,15 +913,10 @@ static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
 	struct intel_fbc_state_cache *cache = &fbc->state_cache;
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 
-	cache->plane.visible = plane_state->uapi.visible;
-	if (!cache->plane.visible)
+	cache->no_fbc_reason = plane_state->no_fbc_reason;
+	if (cache->no_fbc_reason)
 		return;
 
-	cache->crtc.mode_flags = crtc_state->hw.adjusted_mode.flags;
-	if (IS_HASWELL(i915) || IS_BROADWELL(i915))
-		cache->crtc.hsw_bdw_pixel_rate = crtc_state->pixel_rate;
-
-	cache->plane.rotation = plane_state->hw.rotation;
 	/*
 	 * Src coordinates are already rotated by 270 degrees for
 	 * the 90/270 degree plane rotation cases (to match the
@@ -932,10 +924,6 @@ static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
 	 */
 	cache->plane.src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	cache->plane.src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
-	cache->plane.adjusted_x = plane_state->view.color_plane[0].x;
-	cache->plane.adjusted_y = plane_state->view.color_plane[0].y;
-
-	cache->plane.pixel_blend_mode = plane_state->hw.pixel_blend_mode;
 
 	cache->fb.format = fb->format;
 	cache->fb.modifier = fb->modifier;
@@ -954,8 +942,6 @@ static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
 		cache->fence_id = plane_state->ggtt_vma->fence->id;
 	else
 		cache->fence_id = -1;
-
-	cache->psr2_active = crtc_state->has_psr2;
 }
 
 static bool intel_fbc_cfb_size_changed(struct intel_fbc *fbc)
@@ -1007,6 +993,110 @@ static bool intel_fbc_can_enable(struct intel_fbc *fbc)
 	return true;
 }
 
+static int intel_fbc_check_plane(struct intel_atomic_state *state,
+				 struct intel_plane *plane)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_plane_state *plane_state =
+		intel_atomic_get_new_plane_state(state, plane);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	struct intel_crtc *crtc = to_intel_crtc(plane_state->uapi.crtc);
+	const struct intel_crtc_state *crtc_state;
+	struct intel_fbc *fbc = plane->fbc;
+
+	if (!fbc)
+		return 0;
+
+	if (!plane_state->uapi.visible) {
+		plane_state->no_fbc_reason = "plane not visible";
+		return 0;
+	}
+
+	crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+
+	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
+		plane_state->no_fbc_reason = "interlaced mode not supported";
+		return 0;
+	}
+
+	/*
+	 * Display 12+ is not supporting FBC with PSR2.
+	 * Recommendation is to keep this combination disabled
+	 * Bspec: 50422 HSD: 14010260002
+	 */
+	if (DISPLAY_VER(i915) >= 12 && crtc_state->has_psr2) {
+		plane_state->no_fbc_reason = "PSR2 enabled";
+		return false;
+	}
+
+	if (!pixel_format_is_valid(plane_state)) {
+		plane_state->no_fbc_reason = "pixel format not supported";
+		return 0;
+	}
+
+	if (!tiling_is_valid(plane_state)) {
+		plane_state->no_fbc_reason = "tiling not supported";
+		return 0;
+	}
+
+	if (!rotation_is_valid(plane_state)) {
+		plane_state->no_fbc_reason = "rotation not supported";
+		return 0;
+	}
+
+	if (!stride_is_valid(plane_state)) {
+		plane_state->no_fbc_reason = "stride not supported";
+		return 0;
+	}
+
+	if (plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
+	    fb->format->has_alpha) {
+		plane_state->no_fbc_reason = "per-pixel alpha not supported";
+		return false;
+	}
+
+	if (!intel_fbc_hw_tracking_covers_screen(plane_state)) {
+		plane_state->no_fbc_reason = "plane size too big";
+		return 0;
+	}
+
+	/*
+	 * Work around a problem on GEN9+ HW, where enabling FBC on a plane
+	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
+	 * and screen flicker.
+	 */
+	if (DISPLAY_VER(i915) >= 9 &&
+	    plane_state->view.color_plane[0].y & 3) {
+		plane_state->no_fbc_reason = "plane start Y offset misaligned";
+		return false;
+	}
+
+	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
+	if (DISPLAY_VER(i915) >= 11 &&
+	    (plane_state->view.color_plane[0].y + drm_rect_height(&plane_state->uapi.src)) & 3) {
+		plane_state->no_fbc_reason = "plane end Y offset misaligned";
+		return false;
+	}
+
+	/* WaFbcExceedCdClockThreshold:hsw,bdw */
+	if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
+		const struct intel_cdclk_state *cdclk_state;
+
+		cdclk_state = intel_atomic_get_cdclk_state(state);
+		if (IS_ERR(cdclk_state))
+			return PTR_ERR(cdclk_state);
+
+		if (crtc_state->pixel_rate >= cdclk_state->logical.cdclk * 95 / 100) {
+			plane_state->no_fbc_reason = "pixel rate too high";
+			return 0;
+		}
+	}
+
+	plane_state->no_fbc_reason = NULL;
+
+	return 0;
+}
+
 static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -1016,8 +1106,8 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	if (!intel_fbc_can_enable(fbc))
 		return false;
 
-	if (!cache->plane.visible) {
-		fbc->no_fbc_reason = "primary plane not visible";
+	if (cache->no_fbc_reason) {
+		fbc->no_fbc_reason = cache->no_fbc_reason;
 		return false;
 	}
 
@@ -1029,16 +1119,6 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 		return false;
 	}
 
-	if (cache->crtc.mode_flags & DRM_MODE_FLAG_INTERLACE) {
-		fbc->no_fbc_reason = "incompatible mode";
-		return false;
-	}
-
-	if (!intel_fbc_hw_tracking_covers_screen(fbc, crtc)) {
-		fbc->no_fbc_reason = "mode too large for compression";
-		return false;
-	}
-
 	/* The use of a CPU fence is one of two ways to detect writes by the
 	 * CPU to the scanout and trigger updates to the FBC.
 	 *
@@ -1061,42 +1141,8 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 		return false;
 	}
 
-	if (!pixel_format_is_valid(i915, cache->fb.format->format)) {
-		fbc->no_fbc_reason = "pixel format is invalid";
-		return false;
-	}
-
-	if (!rotation_is_valid(i915, cache->fb.format->format,
-			       cache->plane.rotation)) {
-		fbc->no_fbc_reason = "rotation unsupported";
-		return false;
-	}
-
-	if (!tiling_is_valid(i915, cache->fb.modifier)) {
-		fbc->no_fbc_reason = "tiling unsupported";
-		return false;
-	}
-
-	if (!stride_is_valid(i915, cache->fb.modifier,
-			     cache->fb.stride * cache->fb.format->cpp[0])) {
-		fbc->no_fbc_reason = "framebuffer stride not supported";
-		return false;
-	}
-
-	if (cache->plane.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
-	    cache->fb.format->has_alpha) {
-		fbc->no_fbc_reason = "per-pixel alpha blending is incompatible with FBC";
-		return false;
-	}
-
-	/* WaFbcExceedCdClockThreshold:hsw,bdw */
-	if ((IS_HASWELL(i915) || IS_BROADWELL(i915)) &&
-	    cache->crtc.hsw_bdw_pixel_rate >= i915->cdclk.hw.cdclk * 95 / 100) {
-		fbc->no_fbc_reason = "pixel rate is too big";
-		return false;
-	}
-
-	/* It is possible for the required CFB size change without a
+	/*
+	 * It is possible for the required CFB size change without a
 	 * crtc->disable + crtc->enable since it is possible to change the
 	 * stride without triggering a full modeset. Since we try to
 	 * over-allocate the CFB, there's a chance we may keep FBC enabled even
@@ -1105,40 +1151,13 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	 * for a frame, free the stolen node, then try to reenable FBC in case
 	 * we didn't get any invalidate/deactivate calls, but this would require
 	 * a lot of tracking just for a specific case. If we conclude it's an
-	 * important case, we can implement it later. */
+	 * important case, we can implement it later.
+	 */
 	if (intel_fbc_cfb_size_changed(fbc)) {
 		fbc->no_fbc_reason = "CFB requirements changed";
 		return false;
 	}
 
-	/*
-	 * Work around a problem on GEN9+ HW, where enabling FBC on a plane
-	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
-	 * and screen flicker.
-	 */
-	if (DISPLAY_VER(i915) >= 9 &&
-	    (fbc->state_cache.plane.adjusted_y & 3)) {
-		fbc->no_fbc_reason = "plane Y offset is misaligned";
-		return false;
-	}
-
-	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
-	if (DISPLAY_VER(i915) >= 11 &&
-	    (cache->plane.src_h + cache->plane.adjusted_y) % 4) {
-		fbc->no_fbc_reason = "plane height + offset is non-modulo of 4";
-		return false;
-	}
-
-	/*
-	 * Display 12+ is not supporting FBC with PSR2.
-	 * Recommendation is to keep this combination disabled
-	 * Bspec: 50422 HSD: 14010260002
-	 */
-	if (fbc->state_cache.psr2_active && DISPLAY_VER(i915) >= 12) {
-		fbc->no_fbc_reason = "not supported with PSR2";
-		return false;
-	}
-
 	return true;
 }
 
@@ -1157,8 +1176,6 @@ static void intel_fbc_get_reg_params(struct intel_fbc *fbc,
 	params->fence_y_offset = cache->fence_y_offset;
 
 	params->interval = cache->interval;
-
-	params->crtc.pipe = crtc->pipe;
 	params->crtc.i9xx_plane = to_intel_plane(crtc->base.primary)->i9xx_plane;
 
 	params->fb.format = cache->fb.format;
@@ -1168,8 +1185,6 @@ static void intel_fbc_get_reg_params(struct intel_fbc *fbc,
 	params->cfb_stride = intel_fbc_cfb_stride(fbc, cache);
 	params->cfb_size = intel_fbc_cfb_size(fbc, cache);
 	params->override_cfb_stride = intel_fbc_override_cfb_stride(fbc, cache);
-
-	params->plane_visible = cache->plane.visible;
 }
 
 static bool intel_fbc_can_flip_nuke(const struct intel_crtc_state *crtc_state)
@@ -1183,9 +1198,6 @@ static bool intel_fbc_can_flip_nuke(const struct intel_crtc_state *crtc_state)
 	if (drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
 		return false;
 
-	if (!params->plane_visible)
-		return false;
-
 	if (!intel_fbc_can_activate(crtc))
 		return false;
 
@@ -1381,63 +1393,21 @@ void intel_fbc_flush(struct drm_i915_private *i915,
 	mutex_unlock(&fbc->lock);
 }
 
-/**
- * intel_fbc_choose_crtc - select a CRTC to enable FBC on
- * @i915: i915 device instance
- * @state: the atomic state structure
- *
- * This function looks at the proposed state for CRTCs and planes, then chooses
- * which pipe is going to have FBC by setting intel_crtc_state->enable_fbc to
- * true.
- *
- * Later, intel_fbc_enable is going to look for state->enable_fbc and then maybe
- * enable FBC for the chosen CRTC. If it does, it will set i915->fbc.crtc.
- */
-void intel_fbc_choose_crtc(struct drm_i915_private *i915,
-			   struct intel_atomic_state *state)
+int intel_fbc_atomic_check(struct intel_atomic_state *state)
 {
-	struct intel_fbc *fbc = &i915->fbc;
-	struct intel_plane *plane;
 	struct intel_plane_state *plane_state;
-	bool crtc_chosen = false;
+	struct intel_plane *plane;
 	int i;
 
-	mutex_lock(&fbc->lock);
-
-	/* Does this atomic commit involve the CRTC currently tied to FBC? */
-	if (fbc->crtc &&
-	    !intel_atomic_get_new_crtc_state(state, fbc->crtc))
-		goto out;
-
-	if (!intel_fbc_can_enable(fbc))
-		goto out;
-
-	/* Simply choose the first CRTC that is compatible and has a visible
-	 * plane. We could go for fancier schemes such as checking the plane
-	 * size, but this would just affect the few platforms that don't tie FBC
-	 * to pipe or plane A. */
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		struct intel_crtc_state *crtc_state;
-		struct intel_crtc *crtc = to_intel_crtc(plane_state->hw.crtc);
+		int ret;
 
-		if (plane->fbc != fbc)
-			continue;
-
-		if (!plane_state->uapi.visible)
-			continue;
-
-		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
-
-		crtc_state->enable_fbc = true;
-		crtc_chosen = true;
-		break;
+		ret = intel_fbc_check_plane(state, plane);
+		if (ret)
+			return ret;
 	}
 
-	if (!crtc_chosen)
-		fbc->no_fbc_reason = "no suitable CRTC for FBC";
-
-out:
-	mutex_unlock(&fbc->lock);
+	return 0;
 }
 
 /**
@@ -1487,12 +1457,10 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
 
 	intel_fbc_update_state_cache(crtc, crtc_state, plane_state);
 
-	/* FIXME crtc_state->enable_fbc lies :( */
-	if (!cache->plane.visible)
+	if (cache->no_fbc_reason)
 		goto out;
 
 	if (intel_fbc_alloc_cfb(fbc, intel_fbc_cfb_size(fbc, cache), min_limit)) {
-		cache->plane.visible = false;
 		fbc->no_fbc_reason = "not enough stolen memory";
 		goto out;
 	}
@@ -1541,10 +1509,17 @@ void intel_fbc_disable(struct intel_crtc *crtc)
 void intel_fbc_update(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc)
 {
+	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_plane_state *plane_state =
+		intel_atomic_get_new_plane_state(state, plane);
+	struct intel_fbc *fbc = plane->fbc;
 
-	if (crtc_state->update_pipe && !crtc_state->enable_fbc)
+	if (!fbc || !plane_state)
+		return;
+
+	if (crtc_state->update_pipe && plane_state->no_fbc_reason)
 		intel_fbc_disable(crtc);
 	else
 		intel_fbc_enable(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index ce48a22c5e9e..74492e05a1c9 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -17,8 +17,7 @@ struct intel_crtc_state;
 struct intel_fbc;
 struct intel_plane_state;
 
-void intel_fbc_choose_crtc(struct drm_i915_private *dev_priv,
-			   struct intel_atomic_state *state);
+int intel_fbc_atomic_check(struct intel_atomic_state *state);
 bool intel_fbc_is_active(struct intel_fbc *fbc);
 bool intel_fbc_is_compressing(struct intel_fbc *fbc);
 bool intel_fbc_pre_update(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1bfadd9127fc..d79aa827d937 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -434,26 +434,11 @@ struct intel_fbc {
 	 * these problems.
 	 */
 	struct intel_fbc_state_cache {
-		struct {
-			unsigned int mode_flags;
-			u32 hsw_bdw_pixel_rate;
-		} crtc;
+		const char *no_fbc_reason;
 
 		struct {
-			unsigned int rotation;
 			int src_w;
 			int src_h;
-			bool visible;
-			/*
-			 * Display surface base address adjustement for
-			 * pageflips. Note that on gen4+ this only adjusts up
-			 * to a tile, offsets within a tile are handled in
-			 * the hw itself (with the TILEOFF register).
-			 */
-			int adjusted_x;
-			int adjusted_y;
-
-			u16 pixel_blend_mode;
 		} plane;
 
 		struct {
@@ -465,7 +450,6 @@ struct intel_fbc {
 		unsigned int fence_y_offset;
 		u16 interval;
 		s8 fence_id;
-		bool psr2_active;
 	} state_cache;
 
 	/*
@@ -477,7 +461,6 @@ struct intel_fbc {
 	 */
 	struct intel_fbc_reg_params {
 		struct {
-			enum pipe pipe;
 			enum i9xx_plane_id i9xx_plane;
 		} crtc;
 
@@ -493,7 +476,6 @@ struct intel_fbc {
 		u16 override_cfb_stride;
 		u16 interval;
 		s8 fence_id;
-		bool plane_visible;
 	} params;
 
 	const char *no_fbc_reason;
-- 
2.32.0

