Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63268A1BA64
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 17:31:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0425810E9E3;
	Fri, 24 Jan 2025 16:31:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WaXVtaEn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B054C10E9FE;
 Fri, 24 Jan 2025 16:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737736265; x=1769272265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Z0428tbLDIx4ko/+NrYSD6iUtD0irshwmPz6SscmTM=;
 b=WaXVtaEn8DTxG9lFy6nXRFnVILyZdr0rONxcOY8LuY4WvEyDOAEix+9T
 BLVzPqfOHEICYFsIC/pOYCafmmARq8mZrdrdUaJPWb4/46m/V7fw/eimj
 RRQ1EdBcQv3kPUDkKn9dNcsYUbeT/sdj6Vl3L+qXTypJ0vPuJVqwKbSRP
 kEgoL/Otql0nlKyoyxzrMa30EzpwyP+PDoZeObdT1AKO8/q4fQPYqFSTf
 IJ662xujirZ531hKKWNS2SannP9QCS6gtOO4YTyEkVUZBsNhBqWqWuPf5
 z6DsslXsQkF/w53nF/N/BucDLAGkb9u27HEnexqGDxv3X+8IyzuvoLCab w==;
X-CSE-ConnectionGUID: JVEM7KqoQtmyJmWgyFQEdQ==
X-CSE-MsgGUID: dILqySE7TSKh4D3kecs2Fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="42200457"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="42200457"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 08:31:05 -0800
X-CSE-ConnectionGUID: cZ7smNCZQ+S6fy4hMwGhjA==
X-CSE-MsgGUID: gAU94050Rsu+1SPx+icfzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107925935"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 08:31:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 18:31:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/11] drm/i915: Finish intel_sprite.c struct intel_display
 conversion
Date: Fri, 24 Jan 2025 18:30:36 +0200
Message-ID: <20250124163040.8886-8-ville.syrjala@linux.intel.com>
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

intel_sprite.c was partially converted to struct intel_display.
Finish the job now that we can deal with the platform checks
as well.

And while at it we also move the 'display' variable declaration
to be the first thing in most functions, consistency. We can
actually do that now since intel_display() accepts the intel_plane
and intel_plane_state types.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c | 91 +++++++++------------
 drivers/gpu/drm/i915/display/intel_sprite.h |  6 +-
 3 files changed, 43 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index d17a08dfa0d6..33df07ae67f7 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -336,7 +336,7 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 		if (DISPLAY_VER(dev_priv) >= 9)
 			plane = skl_universal_plane_create(dev_priv, pipe, PLANE_2 + sprite);
 		else
-			plane = intel_sprite_plane_create(dev_priv, pipe, sprite);
+			plane = intel_sprite_plane_create(display, pipe, sprite);
 		if (IS_ERR(plane)) {
 			ret = PTR_ERR(plane);
 			goto fail;
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index abb54d7c9608..04743c9d89f9 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -66,8 +66,8 @@ static void i9xx_plane_linear_gamma(u16 gamma[8])
 static void
 chv_sprite_update_csc(const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct intel_display *display = to_intel_display(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum plane_id plane_id = plane->id;
 	/*
@@ -138,8 +138,8 @@ chv_sprite_update_csc(const struct intel_plane_state *plane_state)
 static void
 vlv_sprite_update_clrc(const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct intel_display *display = to_intel_display(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
@@ -341,8 +341,8 @@ static u32 vlv_sprite_ctl(const struct intel_crtc_state *crtc_state,
 
 static void vlv_sprite_update_gamma(const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct intel_display *display = to_intel_display(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
@@ -368,7 +368,7 @@ vlv_sprite_update_noarm(struct intel_dsb *dsb,
 			const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
 	int crtc_x = plane_state->uapi.dst.x1;
@@ -390,8 +390,7 @@ vlv_sprite_update_arm(struct intel_dsb *dsb,
 		      const struct intel_crtc_state *crtc_state,
 		      const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
@@ -404,7 +403,7 @@ vlv_sprite_update_arm(struct intel_dsb *dsb,
 
 	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
 
-	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B)
+	if (display->platform.cherryview && pipe == PIPE_B)
 		chv_sprite_update_csc(plane_state);
 
 	if (key->flags) {
@@ -440,7 +439,7 @@ vlv_sprite_disable_arm(struct intel_dsb *dsb,
 		       struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
 
@@ -645,19 +644,17 @@ static u32 ivb_sprite_ctl_crtc(const struct intel_crtc_state *crtc_state)
 
 static bool ivb_need_sprite_gamma(const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	return fb->format->cpp[0] == 8 &&
-		(IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv));
+		(display->platform.ivybridge || display->platform.haswell);
 }
 
 static u32 ivb_sprite_ctl(const struct intel_crtc_state *crtc_state,
 			  const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
@@ -665,7 +662,7 @@ static u32 ivb_sprite_ctl(const struct intel_crtc_state *crtc_state,
 
 	sprctl = SPRITE_ENABLE;
 
-	if (IS_IVYBRIDGE(dev_priv))
+	if (display->platform.ivybridge)
 		sprctl |= SPRITE_TRICKLE_FEED_DISABLE;
 
 	switch (fb->format->format) {
@@ -754,8 +751,8 @@ static void ivb_sprite_linear_gamma(const struct intel_plane_state *plane_state,
 
 static void ivb_sprite_update_gamma(const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	u16 gamma[18];
 	int i;
@@ -787,8 +784,7 @@ ivb_sprite_update_noarm(struct intel_dsb *dsb,
 			const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	int crtc_x = plane_state->uapi.dst.x1;
 	int crtc_y = plane_state->uapi.dst.y1;
@@ -809,7 +805,7 @@ ivb_sprite_update_noarm(struct intel_dsb *dsb,
 			  SPRITE_POS_Y(crtc_y) | SPRITE_POS_X(crtc_x));
 	intel_de_write_fw(display, SPRSIZE(pipe),
 			  SPRITE_HEIGHT(crtc_h - 1) | SPRITE_WIDTH(crtc_w - 1));
-	if (IS_IVYBRIDGE(dev_priv))
+	if (display->platform.ivybridge)
 		intel_de_write_fw(display, SPRSCALE(pipe), sprscale);
 }
 
@@ -819,8 +815,7 @@ ivb_sprite_update_arm(struct intel_dsb *dsb,
 		      const struct intel_crtc_state *crtc_state,
 		      const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
 	u32 sprsurf_offset = plane_state->view.color_plane[0].offset;
@@ -841,7 +836,7 @@ ivb_sprite_update_arm(struct intel_dsb *dsb,
 
 	/* HSW consolidates SPRTILEOFF and SPRLINOFF into a single SPROFFSET
 	 * register */
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
+	if (display->platform.haswell || display->platform.broadwell) {
 		intel_de_write_fw(display, SPROFFSET(pipe),
 				  SPRITE_OFFSET_Y(y) | SPRITE_OFFSET_X(x));
 	} else {
@@ -867,13 +862,12 @@ ivb_sprite_disable_arm(struct intel_dsb *dsb,
 		       struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 
 	intel_de_write_fw(display, SPRCTL(pipe), 0);
 	/* Disable the scaler */
-	if (IS_IVYBRIDGE(dev_priv))
+	if (display->platform.ivybridge)
 		intel_de_write_fw(display, SPRSCALE(pipe), 0);
 	intel_de_write_fw(display, SPRSURF(pipe), 0);
 }
@@ -882,7 +876,7 @@ static bool
 ivb_sprite_get_hw_state(struct intel_plane *plane,
 			enum pipe *pipe)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	bool ret;
@@ -997,8 +991,7 @@ static u32 g4x_sprite_ctl_crtc(const struct intel_crtc_state *crtc_state)
 static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
 			  const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
@@ -1006,7 +999,7 @@ static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
 
 	dvscntr = DVS_ENABLE;
 
-	if (IS_SANDYBRIDGE(dev_priv))
+	if (display->platform.sandybridge)
 		dvscntr |= DVS_TRICKLE_FEED_DISABLE;
 
 	switch (fb->format->format) {
@@ -1067,8 +1060,8 @@ static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
 
 static void g4x_sprite_update_gamma(const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct intel_display *display = to_intel_display(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum pipe pipe = plane->pipe;
 	u16 gamma[8];
@@ -1097,8 +1090,8 @@ static void ilk_sprite_linear_gamma(u16 gamma[17])
 
 static void ilk_sprite_update_gamma(const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct intel_display *display = to_intel_display(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum pipe pipe = plane->pipe;
 	u16 gamma[17];
@@ -1127,7 +1120,7 @@ g4x_sprite_update_noarm(struct intel_dsb *dsb,
 			const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	int crtc_x = plane_state->uapi.dst.x1;
 	int crtc_y = plane_state->uapi.dst.y1;
@@ -1157,8 +1150,7 @@ g4x_sprite_update_arm(struct intel_dsb *dsb,
 		      const struct intel_crtc_state *crtc_state,
 		      const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
 	u32 dvssurf_offset = plane_state->view.color_plane[0].offset;
@@ -1190,7 +1182,7 @@ g4x_sprite_update_arm(struct intel_dsb *dsb,
 	intel_de_write_fw(display, DVSSURF(pipe),
 			  intel_plane_ggtt_offset(plane_state) + dvssurf_offset);
 
-	if (IS_G4X(dev_priv))
+	if (display->platform.g4x)
 		g4x_sprite_update_gamma(plane_state);
 	else
 		ilk_sprite_update_gamma(plane_state);
@@ -1201,7 +1193,7 @@ g4x_sprite_disable_arm(struct intel_dsb *dsb,
 		       struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 
 	intel_de_write_fw(display, DVSCNTR(pipe), 0);
@@ -1214,7 +1206,7 @@ static bool
 g4x_sprite_get_hw_state(struct intel_plane *plane,
 			enum pipe *pipe)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	bool ret;
@@ -1254,7 +1246,7 @@ static int
 g4x_sprite_check_scaling(struct intel_crtc_state *crtc_state,
 			 struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	const struct drm_rect *src = &plane_state->uapi.src;
 	const struct drm_rect *dst = &plane_state->uapi.dst;
@@ -1320,9 +1312,7 @@ static int
 g4x_sprite_check(struct intel_crtc_state *crtc_state,
 		 struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	int min_scale = DRM_PLANE_NO_SCALING;
 	int max_scale = DRM_PLANE_NO_SCALING;
 	int ret;
@@ -1331,7 +1321,7 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 		if (DISPLAY_VER(display) < 7) {
 			min_scale = 1;
 			max_scale = 16 << 16;
-		} else if (IS_IVYBRIDGE(dev_priv)) {
+		} else if (display->platform.ivybridge) {
 			min_scale = 1;
 			max_scale = 2 << 16;
 		}
@@ -1367,13 +1357,11 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 
 int chv_plane_check_rotation(const struct intel_plane_state *plane_state)
 {
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	unsigned int rotation = plane_state->hw.rotation;
 
 	/* CHV ignores the mirror bit when the rotate bit is set :( */
-	if (IS_CHERRYVIEW(dev_priv) &&
+	if (display->platform.cherryview &&
 	    rotation & DRM_MODE_ROTATE_180 &&
 	    rotation & DRM_MODE_REFLECT_X) {
 		drm_dbg_kms(display->drm,
@@ -1575,10 +1563,9 @@ static const struct drm_plane_funcs vlv_sprite_funcs = {
 };
 
 struct intel_plane *
-intel_sprite_plane_create(struct drm_i915_private *dev_priv,
+intel_sprite_plane_create(struct intel_display *display,
 			  enum pipe pipe, int sprite)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_plane *plane;
 	const struct drm_plane_funcs *plane_funcs;
 	unsigned int supported_rotations;
@@ -1591,7 +1578,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 	if (IS_ERR(plane))
 		return plane;
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.valleyview || display->platform.cherryview) {
 		plane->update_noarm = vlv_sprite_update_noarm;
 		plane->update_arm = vlv_sprite_update_arm;
 		plane->disable_arm = vlv_sprite_disable_arm;
@@ -1601,7 +1588,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		plane->min_alignment = vlv_plane_min_alignment;
 		plane->min_cdclk = vlv_plane_min_cdclk;
 
-		if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
+		if (display->platform.cherryview && pipe == PIPE_B) {
 			formats = chv_pipe_b_sprite_formats;
 			num_formats = ARRAY_SIZE(chv_pipe_b_sprite_formats);
 		} else {
@@ -1617,7 +1604,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		plane->get_hw_state = ivb_sprite_get_hw_state;
 		plane->check_plane = g4x_sprite_check;
 
-		if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv)) {
+		if (display->platform.broadwell || display->platform.haswell) {
 			plane->max_stride = hsw_sprite_max_stride;
 			plane->min_cdclk = hsw_plane_min_cdclk;
 		} else {
@@ -1641,7 +1628,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		plane->min_alignment = g4x_sprite_min_alignment;
 		plane->min_cdclk = g4x_sprite_min_cdclk;
 
-		if (IS_SANDYBRIDGE(dev_priv)) {
+		if (display->platform.sandybridge) {
 			formats = snb_sprite_formats;
 			num_formats = ARRAY_SIZE(snb_sprite_formats);
 
@@ -1654,7 +1641,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		}
 	}
 
-	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
+	if (display->platform.cherryview && pipe == PIPE_B) {
 		supported_rotations =
 			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180 |
 			DRM_MODE_REFLECT_X;
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/drm/i915/display/intel_sprite.h
index 531079979c05..c33a2808da8c 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.h
+++ b/drivers/gpu/drm/i915/display/intel_sprite.h
@@ -8,13 +8,13 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_plane_state;
 enum pipe;
 
 #ifdef I915
-struct intel_plane *intel_sprite_plane_create(struct drm_i915_private *dev_priv,
+struct intel_plane *intel_sprite_plane_create(struct intel_display *display,
 					      enum pipe pipe, int plane);
 int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
 int chv_plane_check_rotation(const struct intel_plane_state *plane_state);
@@ -26,7 +26,7 @@ int hsw_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 int vlv_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state);
 #else
-static inline struct intel_plane *intel_sprite_plane_create(struct drm_i915_private *dev_priv,
+static inline struct intel_plane *intel_sprite_plane_create(struct intel_display *display,
 							    int pipe, int plane)
 {
 	return NULL;
-- 
2.45.3

