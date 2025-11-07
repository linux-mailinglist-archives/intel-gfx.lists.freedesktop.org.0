Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E266C413AA
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 19:11:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A6FA10EB70;
	Fri,  7 Nov 2025 18:11:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IPeRFn7x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F1DB10EB6B;
 Fri,  7 Nov 2025 18:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762539101; x=1794075101;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V343TU/rjIycyxrJSkEDjHXXW58wF38BCuG2+jYctoc=;
 b=IPeRFn7xs8OdBX9yFxXOSgh1s7ndZi5XfRdMR9cnMwfWeGMYPRMkgGUl
 4qjdNd0uTyuqNo46IQHQCVB0lGcaGLya46zOv6DXCZglXjY4OSa71q0aU
 B+0lOOZFuCbq5EJHDHeDHitebHdtTi+F6CLtRx5vuhToS2jy750vzOrxe
 Ke0fRF7dAFR1cm5Rbm4VP20g2jvY6qYOi5XKu64ZZowSh7UrhPALzfstP
 QteB+z1RcVfybrjyvWem/g8S56YkroSqf37yPMavP6ocOmPlc3c6858kx
 s0tLRBeSHkEH6zLe/iJyyAy2Ux2MTuhqn9FemcwFGhEXHlBXFVLJriXEi g==;
X-CSE-ConnectionGUID: FzIU3HBgTASHvSa6gqjZKg==
X-CSE-MsgGUID: sRaUuzceRiec9GDZCsFpPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="76142808"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="76142808"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:40 -0800
X-CSE-ConnectionGUID: w1FLtiuDTBW4xpO90Yq6nA==
X-CSE-MsgGUID: Z9FFbdLYTcyoszrZA9YWKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="192193802"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:38 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/9] drm/i915: Pass drm_format_info into plane->max_stride()
Date: Fri,  7 Nov 2025 20:11:19 +0200
Message-ID: <20251107181126.5743-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
References: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pass the format info into plane->max_stride() from the
caller instead of doing yet another drm_format_info()
lookup on the spot.

drm_format_info() is both rather expensive, and technically
incorrect since it doesn't return the correct format info
for compressed formats (though that doesn't actually matter
for the current .max_stride() implementations since they
are just interested in the cpp value).

Most callers already have the format info available. The
only exception is intel_dumb_fb_max_stride() where we shall
use the actually correct drm_get_format_info() variant.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 23 ++++++++-----------
 drivers/gpu/drm/i915/display/i9xx_plane.h     |  5 ++--
 drivers/gpu/drm/i915/display/intel_cursor.c   |  8 +++----
 drivers/gpu/drm/i915/display/intel_display.c  |  9 +++++---
 drivers/gpu/drm/i915/display/intel_display.h  |  4 +++-
 .../drm/i915/display/intel_display_types.h    |  4 ++--
 drivers/gpu/drm/i915/display/intel_fb.c       | 14 +++++------
 drivers/gpu/drm/i915/display/intel_sprite.c   | 10 ++++----
 .../drm/i915/display/skl_universal_plane.c    | 17 +++++++-------
 9 files changed, 47 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 6e39d7f2e0c2..b962d9f78b2c 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -754,10 +754,9 @@ static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
 
 static unsigned int
 hsw_primary_max_stride(struct intel_plane *plane,
-		       u32 pixel_format, u64 modifier,
-		       unsigned int rotation)
+		       const struct drm_format_info *info,
+		       u64 modifier, unsigned int rotation)
 {
-	const struct drm_format_info *info = drm_format_info(pixel_format);
 	int cpp = info->cpp[0];
 
 	/* Limit to 8k pixels to guarantee OFFSET.x doesn't get too big. */
@@ -766,10 +765,9 @@ hsw_primary_max_stride(struct intel_plane *plane,
 
 static unsigned int
 ilk_primary_max_stride(struct intel_plane *plane,
-		       u32 pixel_format, u64 modifier,
-		       unsigned int rotation)
+		       const struct drm_format_info *info,
+		       u64 modifier, unsigned int rotation)
 {
-	const struct drm_format_info *info = drm_format_info(pixel_format);
 	int cpp = info->cpp[0];
 
 	/* Limit to 4k pixels to guarantee TILEOFF.x doesn't get too big. */
@@ -781,10 +779,9 @@ ilk_primary_max_stride(struct intel_plane *plane,
 
 unsigned int
 i965_plane_max_stride(struct intel_plane *plane,
-		      u32 pixel_format, u64 modifier,
-		      unsigned int rotation)
+		      const struct drm_format_info *info,
+		      u64 modifier, unsigned int rotation)
 {
-	const struct drm_format_info *info = drm_format_info(pixel_format);
 	int cpp = info->cpp[0];
 
 	/* Limit to 4k pixels to guarantee TILEOFF.x doesn't get too big. */
@@ -796,8 +793,8 @@ i965_plane_max_stride(struct intel_plane *plane,
 
 static unsigned int
 i915_plane_max_stride(struct intel_plane *plane,
-		      u32 pixel_format, u64 modifier,
-		      unsigned int rotation)
+		      const struct drm_format_info *info,
+		      u64 modifier, unsigned int rotation)
 {
 	if (modifier == I915_FORMAT_MOD_X_TILED)
 		return 8 * 1024;
@@ -807,8 +804,8 @@ i915_plane_max_stride(struct intel_plane *plane,
 
 static unsigned int
 i8xx_plane_max_stride(struct intel_plane *plane,
-		      u32 pixel_format, u64 modifier,
-		      unsigned int rotation)
+		      const struct drm_format_info *info,
+		      u64 modifier, unsigned int rotation)
 {
 	if (plane->i9xx_plane == PLANE_C)
 		return 4 * 1024;
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.h b/drivers/gpu/drm/i915/display/i9xx_plane.h
index 565dab751301..ec78bf4dd35e 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 enum pipe;
+struct drm_format_info;
 struct drm_framebuffer;
 struct intel_crtc;
 struct intel_display;
@@ -18,8 +19,8 @@ struct intel_plane_state;
 
 #ifdef I915
 unsigned int i965_plane_max_stride(struct intel_plane *plane,
-				   u32 pixel_format, u64 modifier,
-				   unsigned int rotation);
+				   const struct drm_format_info *info,
+				   u64 modifier, unsigned int rotation);
 unsigned int vlv_plane_min_alignment(struct intel_plane *plane,
 				     const struct drm_framebuffer *fb,
 				     int colot_plane);
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 7aa14348aa6d..0367e6fc8de7 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -182,8 +182,8 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
 
 static unsigned int
 i845_cursor_max_stride(struct intel_plane *plane,
-		       u32 pixel_format, u64 modifier,
-		       unsigned int rotation)
+		       const struct drm_format_info *info,
+		       u64 modifier, unsigned int rotation)
 {
 	return 2048;
 }
@@ -343,8 +343,8 @@ static bool i845_cursor_get_hw_state(struct intel_plane *plane,
 
 static unsigned int
 i9xx_cursor_max_stride(struct intel_plane *plane,
-		       u32 pixel_format, u64 modifier,
-		       unsigned int rotation)
+		       const struct drm_format_info *info,
+		       u64 modifier, unsigned int rotation)
 {
 	return plane->base.dev->mode_config.cursor_width * 4;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c5ce481b26b1..d02500e2641b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -548,7 +548,8 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 }
 
 u32 intel_plane_fb_max_stride(struct intel_display *display,
-			      u32 pixel_format, u64 modifier)
+			      const struct drm_format_info *info,
+			      u64 modifier)
 {
 	struct intel_crtc *crtc;
 	struct intel_plane *plane;
@@ -564,7 +565,7 @@ u32 intel_plane_fb_max_stride(struct intel_display *display,
 
 	plane = to_intel_plane(crtc->base.primary);
 
-	return plane->max_stride(plane, pixel_format, modifier,
+	return plane->max_stride(plane, info, modifier,
 				 DRM_MODE_ROTATE_0);
 }
 
@@ -576,7 +577,9 @@ u32 intel_dumb_fb_max_stride(struct drm_device *drm,
 	if (!HAS_DISPLAY(display))
 		return 0;
 
-	return intel_plane_fb_max_stride(display, pixel_format, modifier);
+	return intel_plane_fb_max_stride(display,
+					 drm_get_format_info(drm, pixel_format, modifier),
+					 modifier);
 }
 
 void intel_set_plane_visible(struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 9e3fe0bcf62e..bcc6ccb69d2b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -34,6 +34,7 @@ struct drm_atomic_state;
 struct drm_device;
 struct drm_display_mode;
 struct drm_encoder;
+struct drm_format_info;
 struct drm_modeset_acquire_ctx;
 struct intel_atomic_state;
 struct intel_crtc;
@@ -403,7 +404,8 @@ void intel_link_compute_m_n(u16 bpp, int nlanes,
 			    int bw_overhead,
 			    struct intel_link_m_n *m_n);
 u32 intel_plane_fb_max_stride(struct intel_display *display,
-			      u32 pixel_format, u64 modifier);
+			      const struct drm_format_info *info,
+			      u64 modifier);
 u32 intel_dumb_fb_max_stride(struct drm_device *drm,
 			     u32 pixel_format, u64 modifier);
 enum drm_mode_status
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 00600134bda0..dd39e6caa82e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1564,8 +1564,8 @@ struct intel_plane {
 				      const struct drm_framebuffer *fb,
 				      int color_plane);
 	unsigned int (*max_stride)(struct intel_plane *plane,
-				   u32 pixel_format, u64 modifier,
-				   unsigned int rotation);
+				   const struct drm_format_info *info,
+				   u64 modifier, unsigned int rotation);
 	bool (*can_async_flip)(u64 modifier);
 	/* Write all non-self arming plane registers */
 	void (*update_noarm)(struct intel_dsb *dsb,
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 19e3dc008caf..2eddccb1bc9e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1326,7 +1326,7 @@ static bool intel_plane_needs_remap(const struct intel_plane_state *plane_state)
 	 * unclear in Bspec, for now no checking.
 	 */
 	stride = intel_fb_pitch(fb, 0, rotation);
-	max_stride = plane->max_stride(plane, fb->base.format->format,
+	max_stride = plane->max_stride(plane, fb->base.format,
 				       fb->base.modifier, rotation);
 
 	return stride > max_stride;
@@ -1972,7 +1972,8 @@ void intel_add_fb_offsets(int *x, int *y,
 
 static
 u32 intel_fb_max_stride(struct intel_display *display,
-			u32 pixel_format, u64 modifier)
+			const struct drm_format_info *info,
+			u64 modifier)
 {
 	/*
 	 * Arbitrary limit for gen4+ chosen to match the
@@ -1982,7 +1983,7 @@ u32 intel_fb_max_stride(struct intel_display *display,
 	 */
 	if (DISPLAY_VER(display) < 4 || intel_fb_is_ccs_modifier(modifier) ||
 	    intel_fb_modifier_uses_dpt(display, modifier))
-		return intel_plane_fb_max_stride(display, pixel_format, modifier);
+		return intel_plane_fb_max_stride(display, info, modifier);
 	else if (DISPLAY_VER(display) >= 7)
 		return 256 * 1024;
 	else
@@ -1997,7 +1998,7 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 
 	if (is_surface_linear(fb, color_plane)) {
 		unsigned int max_stride = intel_plane_fb_max_stride(display,
-								    fb->format->format,
+								    fb->format,
 								    fb->modifier);
 
 		/*
@@ -2055,7 +2056,7 @@ static int intel_plane_check_stride(const struct intel_plane_state *plane_state)
 
 	/* FIXME other color planes? */
 	stride = plane_state->view.color_plane[0].mapping_stride;
-	max_stride = plane->max_stride(plane, fb->format->format,
+	max_stride = plane->max_stride(plane, fb->format,
 				       fb->modifier, rotation);
 
 	if (stride > max_stride) {
@@ -2243,8 +2244,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		goto err_bo_framebuffer_fini;
 	}
 
-	max_stride = intel_fb_max_stride(display, mode_cmd->pixel_format,
-					 mode_cmd->modifier[0]);
+	max_stride = intel_fb_max_stride(display, info, mode_cmd->modifier[0]);
 	if (mode_cmd->pitches[0] > max_stride) {
 		drm_dbg_kms(display->drm,
 			    "%s pitch (%u) must be at most %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 60f1d9ed181e..69b6873a6044 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -958,10 +958,9 @@ static int g4x_sprite_min_cdclk(const struct intel_crtc_state *crtc_state,
 
 static unsigned int
 g4x_sprite_max_stride(struct intel_plane *plane,
-		      u32 pixel_format, u64 modifier,
-		      unsigned int rotation)
+		      const struct drm_format_info *info,
+		      u64 modifier, unsigned int rotation)
 {
-	const struct drm_format_info *info = drm_format_info(pixel_format);
 	int cpp = info->cpp[0];
 
 	/* Limit to 4k pixels to guarantee TILEOFF.x doesn't get too big. */
@@ -973,10 +972,9 @@ g4x_sprite_max_stride(struct intel_plane *plane,
 
 static unsigned int
 hsw_sprite_max_stride(struct intel_plane *plane,
-		      u32 pixel_format, u64 modifier,
-		      unsigned int rotation)
+		      const struct drm_format_info *info,
+		      u64 modifier, unsigned int rotation)
 {
-	const struct drm_format_info *info = drm_format_info(pixel_format);
 	int cpp = info->cpp[0];
 
 	/* Limit to 8k pixels to guarantee OFFSET.x doesn't get too big. */
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index bc55fafe9ce3..0823ab38d1b7 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -465,12 +465,11 @@ static int icl_plane_max_height(const struct drm_framebuffer *fb,
 
 static unsigned int
 plane_max_stride(struct intel_plane *plane,
-		 u32 pixel_format, u64 modifier,
-		 unsigned int rotation,
+		 const struct drm_format_info *info,
+		 u64 modifier, unsigned int rotation,
 		 unsigned int max_pixels,
 		 unsigned int max_bytes)
 {
-	const struct drm_format_info *info = drm_format_info(pixel_format);
 	int cpp = info->cpp[0];
 
 	if (drm_rotation_90_or_270(rotation))
@@ -481,26 +480,26 @@ plane_max_stride(struct intel_plane *plane,
 
 static unsigned int
 adl_plane_max_stride(struct intel_plane *plane,
-		     u32 pixel_format, u64 modifier,
-		     unsigned int rotation)
+		     const struct drm_format_info *info,
+		     u64 modifier, unsigned int rotation)
 {
 	unsigned int max_pixels = 65536; /* PLANE_OFFSET limit */
 	unsigned int max_bytes = 128 * 1024;
 
-	return plane_max_stride(plane, pixel_format,
+	return plane_max_stride(plane, info,
 				modifier, rotation,
 				max_pixels, max_bytes);
 }
 
 static unsigned int
 skl_plane_max_stride(struct intel_plane *plane,
-		     u32 pixel_format, u64 modifier,
-		     unsigned int rotation)
+		     const struct drm_format_info *info,
+		     u64 modifier, unsigned int rotation)
 {
 	unsigned int max_pixels = 8192; /* PLANE_OFFSET limit */
 	unsigned int max_bytes = 32 * 1024;
 
-	return plane_max_stride(plane, pixel_format,
+	return plane_max_stride(plane, info,
 				modifier, rotation,
 				max_pixels, max_bytes);
 }
-- 
2.49.1

