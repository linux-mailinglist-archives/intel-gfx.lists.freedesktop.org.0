Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0909A1BA63
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 17:31:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E842210E9F9;
	Fri, 24 Jan 2025 16:31:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fLKlA1tk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCFA410E9EB;
 Fri, 24 Jan 2025 16:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737736262; x=1769272262;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zxnu4Thb9hn4PWMH0jfnRNfB6myBbKnw/EDuBVZ/7rA=;
 b=fLKlA1tkQzx4xTSQELYBiTxjoXD7DspRYeTB0FyRELo7KzaWxQqBkq8K
 uhSyRnKF03iDrAzxWPfvGLNKk45CXu3hWO0VnctTyVodT6vIKk/l626Q/
 AdBfoldv62JvjCsn+vrYDQhwZ4T8zOeMQwJoEhHAxyaboMHp37SKyzTrZ
 j5pXaO+VjKox6QhkIp1tw0TVw9bjnLH0Ln7UuRt189b3bwOVlPF3GpEgB
 uSa2a77ZkoziTVi2q0Ny0WJ3rTddcuTo4aNUrg0UPncrSWT0MU8JdePAo
 WFKrgjzSQrXIMoCfDRvNmoq22DL08SNf7RPbqFlLwJDeGVrNRVti60ljr w==;
X-CSE-ConnectionGUID: +Lk/9uLGTZaRtz3vQItxcw==
X-CSE-MsgGUID: MYsnEMKxQyWr6gbaCkB6TA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="42200451"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="42200451"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 08:31:02 -0800
X-CSE-ConnectionGUID: QRIHKuFFS22DhyK7D5kuEQ==
X-CSE-MsgGUID: RxgKs938TQG6mgZHeh36JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107925919"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 08:31:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 18:30:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 06/11] drm/i915: Convert i9xx_plane.c to struct intel_display
Date: Fri, 24 Jan 2025 18:30:35 +0200
Message-ID: <20250124163040.8886-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
References: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

struct intel_display will replace struct drm_i915_private as
the main thing for display code. Convert the pre-skl primary plane
code to use it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c | 240 +++++++++++-----------
 drivers/gpu/drm/i915/display/i9xx_plane.h |   6 +-
 drivers/gpu/drm/i915/display/intel_crtc.c |   2 +-
 3 files changed, 122 insertions(+), 126 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 3876b50d2324..c7064e650b5e 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -109,42 +109,42 @@ static bool i965_plane_format_mod_supported(struct drm_plane *_plane,
 	}
 }
 
-static bool i9xx_plane_has_fbc(struct drm_i915_private *dev_priv,
+static bool i9xx_plane_has_fbc(struct intel_display *display,
 			       enum i9xx_plane_id i9xx_plane)
 {
-	if (!HAS_FBC(dev_priv))
+	if (!HAS_FBC(display))
 		return false;
 
-	if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
+	if (display->platform.broadwell || display->platform.haswell)
 		return i9xx_plane == PLANE_A; /* tied to pipe A */
-	else if (IS_IVYBRIDGE(dev_priv))
+	else if (display->platform.ivybridge)
 		return i9xx_plane == PLANE_A || i9xx_plane == PLANE_B ||
 			i9xx_plane == PLANE_C;
-	else if (DISPLAY_VER(dev_priv) >= 4)
+	else if (DISPLAY_VER(display) >= 4)
 		return i9xx_plane == PLANE_A || i9xx_plane == PLANE_B;
 	else
 		return i9xx_plane == PLANE_A;
 }
 
-static struct intel_fbc *i9xx_plane_fbc(struct drm_i915_private *dev_priv,
+static struct intel_fbc *i9xx_plane_fbc(struct intel_display *display,
 					enum i9xx_plane_id i9xx_plane)
 {
-	if (i9xx_plane_has_fbc(dev_priv, i9xx_plane))
-		return dev_priv->display.fbc[INTEL_FBC_A];
+	if (i9xx_plane_has_fbc(display, i9xx_plane))
+		return display->fbc[INTEL_FBC_A];
 	else
 		return NULL;
 }
 
 static bool i9xx_plane_has_windowing(struct intel_plane *plane)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 
-	if (IS_CHERRYVIEW(dev_priv))
+	if (display->platform.cherryview)
 		return i9xx_plane == PLANE_B;
-	else if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
+	else if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
 		return false;
-	else if (DISPLAY_VER(dev_priv) == 4)
+	else if (DISPLAY_VER(display) == 4)
 		return i9xx_plane == PLANE_C;
 	else
 		return i9xx_plane == PLANE_B ||
@@ -154,16 +154,15 @@ static bool i9xx_plane_has_windowing(struct intel_plane *plane)
 static u32 i9xx_plane_ctl(const struct intel_crtc_state *crtc_state,
 			  const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 	u32 dspcntr;
 
 	dspcntr = DISP_ENABLE;
 
-	if (IS_G4X(dev_priv) || IS_IRONLAKE(dev_priv) ||
-	    IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
+	if (display->platform.g4x || display->platform.ironlake ||
+	    display->platform.sandybridge || display->platform.ivybridge)
 		dspcntr |= DISP_TRICKLE_FEED_DISABLE;
 
 	switch (fb->format->format) {
@@ -211,7 +210,7 @@ static u32 i9xx_plane_ctl(const struct intel_crtc_state *crtc_state,
 		return 0;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 4 &&
+	if (DISPLAY_VER(display) >= 4 &&
 	    fb->modifier == I915_FORMAT_MOD_X_TILED)
 		dspcntr |= DISP_TILED;
 
@@ -226,8 +225,8 @@ static u32 i9xx_plane_ctl(const struct intel_crtc_state *crtc_state,
 
 int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	int src_x, src_y, src_w;
 	u32 offset;
@@ -245,12 +244,12 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
 	src_y = plane_state->uapi.src.y1 >> 16;
 
 	/* Undocumented hardware limit on i965/g4x/vlv/chv */
-	if (HAS_GMCH(dev_priv) && fb->format->cpp[0] == 8 && src_w > 2048)
+	if (HAS_GMCH(display) && fb->format->cpp[0] == 8 && src_w > 2048)
 		return -EINVAL;
 
 	intel_add_fb_offsets(&src_x, &src_y, plane_state, 0);
 
-	if (DISPLAY_VER(dev_priv) >= 4)
+	if (DISPLAY_VER(display) >= 4)
 		offset = intel_plane_compute_aligned_offset(&src_x, &src_y,
 							    plane_state, 0);
 	else
@@ -267,13 +266,13 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
 	 * Linear surfaces seem to work just fine, even on hsw/bdw
 	 * despite them not using the linear offset anymore.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 4 && fb->modifier == I915_FORMAT_MOD_X_TILED) {
+	if (DISPLAY_VER(display) >= 4 && fb->modifier == I915_FORMAT_MOD_X_TILED) {
 		unsigned int alignment = plane->min_alignment(plane, fb, 0);
 		int cpp = fb->format->cpp[0];
 
 		while ((src_x + src_w) * cpp > plane_state->view.color_plane[0].mapping_stride) {
 			if (offset == 0) {
-				drm_dbg_kms(&dev_priv->drm,
+				drm_dbg_kms(display->drm,
 					    "Unable to find suitable display surface offset due to X-tiling\n");
 				return -EINVAL;
 			}
@@ -291,7 +290,7 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
 			      src_x << 16, src_y << 16);
 
 	/* HSW/BDW do this automagically in hardware */
-	if (!IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv)) {
+	if (!display->platform.haswell && !display->platform.broadwell) {
 		unsigned int rotation = plane_state->hw.rotation;
 		int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 		int src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
@@ -304,11 +303,11 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
 		}
 	}
 
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		drm_WARN_ON(&dev_priv->drm, src_x > 8191 || src_y > 4095);
-	} else if (DISPLAY_VER(dev_priv) >= 4 &&
+	if (display->platform.haswell || display->platform.broadwell) {
+		drm_WARN_ON(display->drm, src_x > 8191 || src_y > 4095);
+	} else if (DISPLAY_VER(display) >= 4 &&
 		   fb->modifier == I915_FORMAT_MOD_X_TILED) {
-		drm_WARN_ON(&dev_priv->drm, src_x > 4095 || src_y > 4095);
+		drm_WARN_ON(display->drm, src_x > 4095 || src_y > 4095);
 	}
 
 	plane_state->view.color_plane[0].offset = offset;
@@ -354,8 +353,8 @@ i9xx_plane_check(struct intel_crtc_state *crtc_state,
 
 static u32 i9xx_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dspcntr = 0;
 
 	if (crtc_state->gamma_enable)
@@ -364,7 +363,7 @@ static u32 i9xx_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->csc_enable)
 		dspcntr |= DISP_PIPE_CSC_ENABLE;
 
-	if (DISPLAY_VER(dev_priv) < 5)
+	if (DISPLAY_VER(display) < 5)
 		dspcntr |= DISP_PIPE_SEL(crtc->pipe);
 
 	return dspcntr;
@@ -422,13 +421,13 @@ static void i9xx_plane_update_noarm(struct intel_dsb *dsb,
 				    const struct intel_crtc_state *crtc_state,
 				    const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 
-	intel_de_write_fw(dev_priv, DSPSTRIDE(dev_priv, i9xx_plane),
+	intel_de_write_fw(display, DSPSTRIDE(display, i9xx_plane),
 			  plane_state->view.color_plane[0].mapping_stride);
 
-	if (DISPLAY_VER(dev_priv) < 4) {
+	if (DISPLAY_VER(display) < 4) {
 		int crtc_x = plane_state->uapi.dst.x1;
 		int crtc_y = plane_state->uapi.dst.y1;
 		int crtc_w = drm_rect_width(&plane_state->uapi.dst);
@@ -439,9 +438,9 @@ static void i9xx_plane_update_noarm(struct intel_dsb *dsb,
 		 * generator but let's assume we still need to
 		 * program whatever is there.
 		 */
-		intel_de_write_fw(dev_priv, DSPPOS(dev_priv, i9xx_plane),
+		intel_de_write_fw(display, DSPPOS(display, i9xx_plane),
 				  DISP_POS_Y(crtc_y) | DISP_POS_X(crtc_x));
-		intel_de_write_fw(dev_priv, DSPSIZE(dev_priv, i9xx_plane),
+		intel_de_write_fw(display, DSPSIZE(display, i9xx_plane),
 				  DISP_HEIGHT(crtc_h - 1) | DISP_WIDTH(crtc_w - 1));
 	}
 }
@@ -451,7 +450,7 @@ static void i9xx_plane_update_arm(struct intel_dsb *dsb,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 	int x = plane_state->view.color_plane[0].x;
 	int y = plane_state->view.color_plane[0].y;
@@ -466,32 +465,32 @@ static void i9xx_plane_update_arm(struct intel_dsb *dsb,
 
 	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
 
-	if (DISPLAY_VER(dev_priv) >= 4)
+	if (DISPLAY_VER(display) >= 4)
 		dspaddr_offset = plane_state->view.color_plane[0].offset;
 	else
 		dspaddr_offset = linear_offset;
 
-	if (IS_CHERRYVIEW(dev_priv) && i9xx_plane == PLANE_B) {
+	if (display->platform.cherryview && i9xx_plane == PLANE_B) {
 		int crtc_x = plane_state->uapi.dst.x1;
 		int crtc_y = plane_state->uapi.dst.y1;
 		int crtc_w = drm_rect_width(&plane_state->uapi.dst);
 		int crtc_h = drm_rect_height(&plane_state->uapi.dst);
 
-		intel_de_write_fw(dev_priv, PRIMPOS(dev_priv, i9xx_plane),
+		intel_de_write_fw(display, PRIMPOS(display, i9xx_plane),
 				  PRIM_POS_Y(crtc_y) | PRIM_POS_X(crtc_x));
-		intel_de_write_fw(dev_priv, PRIMSIZE(dev_priv, i9xx_plane),
+		intel_de_write_fw(display, PRIMSIZE(display, i9xx_plane),
 				  PRIM_HEIGHT(crtc_h - 1) | PRIM_WIDTH(crtc_w - 1));
-		intel_de_write_fw(dev_priv,
-				  PRIMCNSTALPHA(dev_priv, i9xx_plane), 0);
+		intel_de_write_fw(display,
+				  PRIMCNSTALPHA(display, i9xx_plane), 0);
 	}
 
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		intel_de_write_fw(dev_priv, DSPOFFSET(dev_priv, i9xx_plane),
+	if (display->platform.haswell || display->platform.broadwell) {
+		intel_de_write_fw(display, DSPOFFSET(display, i9xx_plane),
 				  DISP_OFFSET_Y(y) | DISP_OFFSET_X(x));
-	} else if (DISPLAY_VER(dev_priv) >= 4) {
-		intel_de_write_fw(dev_priv, DSPLINOFF(dev_priv, i9xx_plane),
+	} else if (DISPLAY_VER(display) >= 4) {
+		intel_de_write_fw(display, DSPLINOFF(display, i9xx_plane),
 				  linear_offset);
-		intel_de_write_fw(dev_priv, DSPTILEOFF(dev_priv, i9xx_plane),
+		intel_de_write_fw(display, DSPTILEOFF(display, i9xx_plane),
 				  DISP_OFFSET_Y(y) | DISP_OFFSET_X(x));
 	}
 
@@ -500,13 +499,13 @@ static void i9xx_plane_update_arm(struct intel_dsb *dsb,
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	intel_de_write_fw(dev_priv, DSPCNTR(dev_priv, i9xx_plane), dspcntr);
+	intel_de_write_fw(display, DSPCNTR(display, i9xx_plane), dspcntr);
 
-	if (DISPLAY_VER(dev_priv) >= 4)
-		intel_de_write_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane),
+	if (DISPLAY_VER(display) >= 4)
+		intel_de_write_fw(display, DSPSURF(display, i9xx_plane),
 				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 	else
-		intel_de_write_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane),
+		intel_de_write_fw(display, DSPADDR(display, i9xx_plane),
 				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 }
 
@@ -529,7 +528,7 @@ static void i9xx_plane_disable_arm(struct intel_dsb *dsb,
 				   struct intel_plane *plane,
 				   const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 	u32 dspcntr;
 
@@ -545,12 +544,12 @@ static void i9xx_plane_disable_arm(struct intel_dsb *dsb,
 	 */
 	dspcntr = i9xx_plane_ctl_crtc(crtc_state);
 
-	intel_de_write_fw(dev_priv, DSPCNTR(dev_priv, i9xx_plane), dspcntr);
+	intel_de_write_fw(display, DSPCNTR(display, i9xx_plane), dspcntr);
 
-	if (DISPLAY_VER(dev_priv) >= 4)
-		intel_de_write_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane), 0);
+	if (DISPLAY_VER(display) >= 4)
+		intel_de_write_fw(display, DSPSURF(display, i9xx_plane), 0);
 	else
-		intel_de_write_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane), 0);
+		intel_de_write_fw(display, DSPADDR(display, i9xx_plane), 0);
 }
 
 static void
@@ -560,7 +559,7 @@ g4x_primary_async_flip(struct intel_dsb *dsb,
 		       const struct intel_plane_state *plane_state,
 		       bool async_flip)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	u32 dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
 	u32 dspaddr_offset = plane_state->view.color_plane[0].offset;
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
@@ -568,9 +567,9 @@ g4x_primary_async_flip(struct intel_dsb *dsb,
 	if (async_flip)
 		dspcntr |= DISP_ASYNC_FLIP;
 
-	intel_de_write_fw(dev_priv, DSPCNTR(dev_priv, i9xx_plane), dspcntr);
+	intel_de_write_fw(display, DSPCNTR(display, i9xx_plane), dspcntr);
 
-	intel_de_write_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane),
+	intel_de_write_fw(display, DSPSURF(display, i9xx_plane),
 			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 }
 
@@ -581,11 +580,11 @@ vlv_primary_async_flip(struct intel_dsb *dsb,
 		       const struct intel_plane_state *plane_state,
 		       bool async_flip)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	u32 dspaddr_offset = plane_state->view.color_plane[0].offset;
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 
-	intel_de_write_fw(dev_priv, DSPADDR_VLV(dev_priv, i9xx_plane),
+	intel_de_write_fw(display, DSPADDR_VLV(display, i9xx_plane),
 			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 }
 
@@ -682,7 +681,6 @@ static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
 				    enum pipe *pipe)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum intel_display_power_domain power_domain;
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 	intel_wakeref_t wakeref;
@@ -699,11 +697,11 @@ static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(dev_priv, DSPCNTR(dev_priv, i9xx_plane));
+	val = intel_de_read(display, DSPCNTR(display, i9xx_plane));
 
 	ret = val & DISP_ENABLE;
 
-	if (DISPLAY_VER(dev_priv) >= 5)
+	if (DISPLAY_VER(display) >= 5)
 		*pipe = plane->pipe;
 	else
 		*pipe = REG_FIELD_GET(DISP_PIPE_SEL_MASK, val);
@@ -853,9 +851,8 @@ static const struct drm_plane_funcs i8xx_plane_funcs = {
 };
 
 struct intel_plane *
-intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
+intel_primary_plane_create(struct intel_display *display, enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_plane *plane;
 	const struct drm_plane_funcs *plane_funcs;
 	unsigned int supported_rotations;
@@ -873,20 +870,20 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	 * On gen2/3 only plane A can do FBC, but the panel fitter and LVDS
 	 * port is hooked to pipe B. Hence we want plane A feeding pipe B.
 	 */
-	if (HAS_FBC(dev_priv) && DISPLAY_VER(dev_priv) < 4 &&
-	    INTEL_NUM_PIPES(dev_priv) == 2)
+	if (HAS_FBC(display) && DISPLAY_VER(display) < 4 &&
+	    INTEL_NUM_PIPES(display) == 2)
 		plane->i9xx_plane = (enum i9xx_plane_id) !pipe;
 	else
 		plane->i9xx_plane = (enum i9xx_plane_id) pipe;
 	plane->id = PLANE_PRIMARY;
 	plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane->id);
 
-	intel_fbc_add_plane(i9xx_plane_fbc(dev_priv, plane->i9xx_plane), plane);
+	intel_fbc_add_plane(i9xx_plane_fbc(display, plane->i9xx_plane), plane);
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.valleyview || display->platform.cherryview) {
 		formats = vlv_primary_formats;
 		num_formats = ARRAY_SIZE(vlv_primary_formats);
-	} else if (DISPLAY_VER(dev_priv) >= 4) {
+	} else if (DISPLAY_VER(display) >= 4) {
 		/*
 		 * WaFP16GammaEnabling:ivb
 		 * "Workaround : When using the 64-bit format, the plane
@@ -900,7 +897,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 		 * planes, so we choose not to expose fp16 on IVB primary
 		 * planes. HSW primary planes no longer have this problem.
 		 */
-		if (IS_IVYBRIDGE(dev_priv)) {
+		if (display->platform.ivybridge) {
 			formats = ivb_primary_formats;
 			num_formats = ARRAY_SIZE(ivb_primary_formats);
 		} else {
@@ -912,44 +909,44 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 		num_formats = ARRAY_SIZE(i8xx_primary_formats);
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 4)
+	if (DISPLAY_VER(display) >= 4)
 		plane_funcs = &i965_plane_funcs;
 	else
 		plane_funcs = &i8xx_plane_funcs;
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if (display->platform.valleyview || display->platform.cherryview)
 		plane->min_cdclk = vlv_plane_min_cdclk;
-	else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
+	else if (display->platform.broadwell || display->platform.haswell)
 		plane->min_cdclk = hsw_plane_min_cdclk;
-	else if (IS_IVYBRIDGE(dev_priv))
+	else if (display->platform.ivybridge)
 		plane->min_cdclk = ivb_plane_min_cdclk;
 	else
 		plane->min_cdclk = i9xx_plane_min_cdclk;
 
-	if (HAS_GMCH(dev_priv)) {
-		if (DISPLAY_VER(dev_priv) >= 4)
+	if (HAS_GMCH(display)) {
+		if (DISPLAY_VER(display) >= 4)
 			plane->max_stride = i965_plane_max_stride;
-		else if (DISPLAY_VER(dev_priv) == 3)
+		else if (DISPLAY_VER(display) == 3)
 			plane->max_stride = i915_plane_max_stride;
 		else
 			plane->max_stride = i8xx_plane_max_stride;
 	} else {
-		if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
+		if (display->platform.broadwell || display->platform.haswell)
 			plane->max_stride = hsw_primary_max_stride;
 		else
 			plane->max_stride = ilk_primary_max_stride;
 	}
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if (display->platform.valleyview || display->platform.cherryview)
 		plane->min_alignment = vlv_plane_min_alignment;
-	else if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
+	else if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
 		plane->min_alignment = g4x_primary_min_alignment;
-	else if (DISPLAY_VER(dev_priv) == 4)
+	else if (DISPLAY_VER(display) == 4)
 		plane->min_alignment = i965_plane_min_alignment;
 	else
 		plane->min_alignment = i9xx_plane_min_alignment;
 
-	if (IS_I830(dev_priv) || IS_I845G(dev_priv)) {
+	if (display->platform.i830 || display->platform.i845g) {
 		plane->update_arm = i830_plane_update_arm;
 	} else {
 		plane->update_noarm = i9xx_plane_update_noarm;
@@ -959,24 +956,24 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	plane->get_hw_state = i9xx_plane_get_hw_state;
 	plane->check_plane = i9xx_plane_check;
 
-	if (HAS_ASYNC_FLIPS(dev_priv)) {
-		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	if (HAS_ASYNC_FLIPS(display)) {
+		if (display->platform.valleyview || display->platform.cherryview) {
 			plane->async_flip = vlv_primary_async_flip;
 			plane->enable_flip_done = vlv_primary_enable_flip_done;
 			plane->disable_flip_done = vlv_primary_disable_flip_done;
 			plane->can_async_flip = i9xx_plane_can_async_flip;
-		} else if (IS_BROADWELL(dev_priv)) {
+		} else if (display->platform.broadwell) {
 			plane->need_async_flip_toggle_wa = true;
 			plane->async_flip = g4x_primary_async_flip;
 			plane->enable_flip_done = bdw_primary_enable_flip_done;
 			plane->disable_flip_done = bdw_primary_disable_flip_done;
 			plane->can_async_flip = i9xx_plane_can_async_flip;
-		} else if (DISPLAY_VER(dev_priv) >= 7) {
+		} else if (DISPLAY_VER(display) >= 7) {
 			plane->async_flip = g4x_primary_async_flip;
 			plane->enable_flip_done = ivb_primary_enable_flip_done;
 			plane->disable_flip_done = ivb_primary_disable_flip_done;
 			plane->can_async_flip = i9xx_plane_can_async_flip;
-		} else if (DISPLAY_VER(dev_priv) >= 5) {
+		} else if (DISPLAY_VER(display) >= 5) {
 			plane->async_flip = g4x_primary_async_flip;
 			plane->enable_flip_done = ilk_primary_enable_flip_done;
 			plane->disable_flip_done = ilk_primary_disable_flip_done;
@@ -986,15 +983,15 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 	modifiers = intel_fb_plane_get_modifiers(display, INTEL_PLANE_CAP_TILING_X);
 
-	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
-		ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
+	if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
+		ret = drm_universal_plane_init(display->drm, &plane->base,
 					       0, plane_funcs,
 					       formats, num_formats,
 					       modifiers,
 					       DRM_PLANE_TYPE_PRIMARY,
 					       "primary %c", pipe_name(pipe));
 	else
-		ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
+		ret = drm_universal_plane_init(display->drm, &plane->base,
 					       0, plane_funcs,
 					       formats, num_formats,
 					       modifiers,
@@ -1007,18 +1004,18 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (ret)
 		goto fail;
 
-	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
+	if (display->platform.cherryview && pipe == PIPE_B) {
 		supported_rotations =
 			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180 |
 			DRM_MODE_REFLECT_X;
-	} else if (DISPLAY_VER(dev_priv) >= 4) {
+	} else if (DISPLAY_VER(display) >= 4) {
 		supported_rotations =
 			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
 	} else {
 		supported_rotations = DRM_MODE_ROTATE_0;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 4)
+	if (DISPLAY_VER(display) >= 4)
 		drm_plane_create_rotation_property(&plane->base,
 						   DRM_MODE_ROTATE_0,
 						   supported_rotations);
@@ -1073,8 +1070,7 @@ void
 i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 			      struct intel_initial_plane_config *plane_config)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 	enum pipe pipe;
@@ -1087,21 +1083,21 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 	if (!plane->get_hw_state(plane, &pipe))
 		return;
 
-	drm_WARN_ON(dev, pipe != crtc->pipe);
+	drm_WARN_ON(display->drm, pipe != crtc->pipe);
 
 	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
 	if (!intel_fb) {
-		drm_dbg_kms(&dev_priv->drm, "failed to alloc fb\n");
+		drm_dbg_kms(display->drm, "failed to alloc fb\n");
 		return;
 	}
 
 	fb = &intel_fb->base;
 
-	fb->dev = dev;
+	fb->dev = display->drm;
 
-	val = intel_de_read(dev_priv, DSPCNTR(dev_priv, i9xx_plane));
+	val = intel_de_read(display, DSPCNTR(display, i9xx_plane));
 
-	if (DISPLAY_VER(dev_priv) >= 4) {
+	if (DISPLAY_VER(display) >= 4) {
 		if (val & DISP_TILED) {
 			plane_config->tiling = I915_TILING_X;
 			fb->modifier = I915_FORMAT_MOD_X_TILED;
@@ -1111,46 +1107,46 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 			plane_config->rotation = DRM_MODE_ROTATE_180;
 	}
 
-	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B &&
-	    val & DISP_MIRROR)
+	if (display->platform.cherryview &&
+	    pipe == PIPE_B && val & DISP_MIRROR)
 		plane_config->rotation |= DRM_MODE_REFLECT_X;
 
 	pixel_format = val & DISP_FORMAT_MASK;
 	fourcc = i9xx_format_to_fourcc(pixel_format);
 	fb->format = drm_format_info(fourcc);
 
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		offset = intel_de_read(dev_priv,
-				       DSPOFFSET(dev_priv, i9xx_plane));
-		base = intel_de_read(dev_priv, DSPSURF(dev_priv, i9xx_plane)) & DISP_ADDR_MASK;
-	} else if (DISPLAY_VER(dev_priv) >= 4) {
+	if (display->platform.haswell || display->platform.broadwell) {
+		offset = intel_de_read(display,
+				       DSPOFFSET(display, i9xx_plane));
+		base = intel_de_read(display, DSPSURF(display, i9xx_plane)) & DISP_ADDR_MASK;
+	} else if (DISPLAY_VER(display) >= 4) {
 		if (plane_config->tiling)
-			offset = intel_de_read(dev_priv,
-					       DSPTILEOFF(dev_priv, i9xx_plane));
+			offset = intel_de_read(display,
+					       DSPTILEOFF(display, i9xx_plane));
 		else
-			offset = intel_de_read(dev_priv,
-					       DSPLINOFF(dev_priv, i9xx_plane));
-		base = intel_de_read(dev_priv, DSPSURF(dev_priv, i9xx_plane)) & DISP_ADDR_MASK;
+			offset = intel_de_read(display,
+					       DSPLINOFF(display, i9xx_plane));
+		base = intel_de_read(display, DSPSURF(display, i9xx_plane)) & DISP_ADDR_MASK;
 	} else {
 		offset = 0;
-		base = intel_de_read(dev_priv, DSPADDR(dev_priv, i9xx_plane));
+		base = intel_de_read(display, DSPADDR(display, i9xx_plane));
 	}
 	plane_config->base = base;
 
-	drm_WARN_ON(&dev_priv->drm, offset != 0);
+	drm_WARN_ON(display->drm, offset != 0);
 
-	val = intel_de_read(dev_priv, PIPESRC(dev_priv, pipe));
+	val = intel_de_read(display, PIPESRC(display, pipe));
 	fb->width = REG_FIELD_GET(PIPESRC_WIDTH_MASK, val) + 1;
 	fb->height = REG_FIELD_GET(PIPESRC_HEIGHT_MASK, val) + 1;
 
-	val = intel_de_read(dev_priv, DSPSTRIDE(dev_priv, i9xx_plane));
+	val = intel_de_read(display, DSPSTRIDE(display, i9xx_plane));
 	fb->pitches[0] = val & 0xffffffc0;
 
 	aligned_height = intel_fb_align_height(fb, 0, fb->height);
 
 	plane_config->size = fb->pitches[0] * aligned_height;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "%s/%s with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
 		    crtc->base.name, plane->base.name, fb->width, fb->height,
 		    fb->format->cpp[0] * 8, base, fb->pitches[0],
@@ -1162,7 +1158,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,
 				     const struct intel_initial_plane_config *plane_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 	const struct intel_plane_state *plane_state =
 		to_intel_plane_state(plane->base.state);
@@ -1181,10 +1177,10 @@ bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,
 	if (plane_config->base == base)
 		return false;
 
-	if (DISPLAY_VER(dev_priv) >= 4)
-		intel_de_write(dev_priv, DSPSURF(dev_priv, i9xx_plane), base);
+	if (DISPLAY_VER(display) >= 4)
+		intel_de_write(display, DSPSURF(display, i9xx_plane), base);
 	else
-		intel_de_write(dev_priv, DSPADDR(dev_priv, i9xx_plane), base);
+		intel_de_write(display, DSPADDR(display, i9xx_plane), base);
 
 	return true;
 }
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.h b/drivers/gpu/drm/i915/display/i9xx_plane.h
index 457f4bccf106..d90546d60855 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.h
@@ -10,8 +10,8 @@
 
 enum pipe;
 struct drm_framebuffer;
-struct drm_i915_private;
 struct intel_crtc;
+struct intel_display;
 struct intel_initial_plane_config;
 struct intel_plane;
 struct intel_plane_state;
@@ -26,7 +26,7 @@ unsigned int vlv_plane_min_alignment(struct intel_plane *plane,
 int i9xx_check_plane_surface(struct intel_plane_state *plane_state);
 
 struct intel_plane *
-intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe);
+intel_primary_plane_create(struct intel_display *display, enum pipe pipe);
 
 void i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 				   struct intel_initial_plane_config *plane_config);
@@ -44,7 +44,7 @@ static inline int i9xx_check_plane_surface(struct intel_plane_state *plane_state
 	return 0;
 }
 static inline struct intel_plane *
-intel_primary_plane_create(struct drm_i915_private *dev_priv, int pipe)
+intel_primary_plane_create(struct intel_display *display, int pipe)
 {
 	return NULL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 87e4a7a91f23..d17a08dfa0d6 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -321,7 +321,7 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 	if (DISPLAY_VER(display) >= 9)
 		primary = skl_universal_plane_create(dev_priv, pipe, PLANE_1);
 	else
-		primary = intel_primary_plane_create(dev_priv, pipe);
+		primary = intel_primary_plane_create(display, pipe);
 	if (IS_ERR(primary)) {
 		ret = PTR_ERR(primary);
 		goto fail;
-- 
2.45.3

