Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79200A2B1C4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 19:56:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1662410E92A;
	Thu,  6 Feb 2025 18:56:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mo1fz6YG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A9E410E920;
 Thu,  6 Feb 2025 18:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738868164; x=1770404164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/tQdg8XHYu7BiYYNJ+w+dm/ewYt7QvnzKq0ecA67m0Q=;
 b=mo1fz6YGqExmqmdYsMsNGlc717EhVQxXiYnV0O3FrD3jXjcEA8/VUAaI
 +/kj7phWA0yR+k0x4fjoibwFjy/VrI1rCrXDUL7fAeBd0kb/LuKxyCnTL
 3XuZA9b78TJb0pknzr9jvps4TtrW0HB2SPP6ljTLcMcEXQOireXuLbj2q
 BynLGpEwJ+fRAzkqsSqwSdFonu+xjNdJeaUrUwTjy+UqtMeABcgqKpRGp
 zzyaeAq/WuFQVSfpuPuPMxgciF3sCjUQlGV1oOifEia9QcpqT/4XVGlkF
 X4yWA/eU3MALPsoTB25eD3i+9I7OCh41rKXfS7B5MuRN3IuhxMi6ybm3c w==;
X-CSE-ConnectionGUID: nbZP9YHDS6CkFWJwpU8+4Q==
X-CSE-MsgGUID: +LzTFW6KSoyVpeotBR4JCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39395064"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="39395064"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 10:56:04 -0800
X-CSE-ConnectionGUID: BWA7szqdQWSJFBuD9GPgOg==
X-CSE-MsgGUID: uLAxxW2WR12JNZslG/qlpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="111499610"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Feb 2025 10:56:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Feb 2025 20:56:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 08/12] drm/i915: Finish intel_sprite.c struct intel_display
 conversion
Date: Thu,  6 Feb 2025 20:55:29 +0200
Message-ID: <20250206185533.32306-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
References: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c | 91 +++++++++------------
 drivers/gpu/drm/i915/display/intel_sprite.h |  6 +-
 3 files changed, 43 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 15e81f901aa1..7279e064a565 100644
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
index d1b4b20af4a0..ab5bc8a08f0f 100644
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
@@ -1002,8 +996,7 @@ static u32 g4x_sprite_ctl_crtc(const struct intel_crtc_state *crtc_state)
 static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
 			  const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
@@ -1011,7 +1004,7 @@ static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
 
 	dvscntr = DVS_ENABLE;
 
-	if (IS_SANDYBRIDGE(dev_priv))
+	if (display->platform.sandybridge)
 		dvscntr |= DVS_TRICKLE_FEED_DISABLE;
 
 	switch (fb->format->format) {
@@ -1072,8 +1065,8 @@ static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
 
 static void g4x_sprite_update_gamma(const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct intel_display *display = to_intel_display(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum pipe pipe = plane->pipe;
 	u16 gamma[8];
@@ -1102,8 +1095,8 @@ static void ilk_sprite_linear_gamma(u16 gamma[17])
 
 static void ilk_sprite_update_gamma(const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct intel_display *display = to_intel_display(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum pipe pipe = plane->pipe;
 	u16 gamma[17];
@@ -1132,7 +1125,7 @@ g4x_sprite_update_noarm(struct intel_dsb *dsb,
 			const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	int crtc_x = plane_state->uapi.dst.x1;
 	int crtc_y = plane_state->uapi.dst.y1;
@@ -1162,8 +1155,7 @@ g4x_sprite_update_arm(struct intel_dsb *dsb,
 		      const struct intel_crtc_state *crtc_state,
 		      const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
 	u32 dvssurf_offset = plane_state->view.color_plane[0].offset;
@@ -1195,7 +1187,7 @@ g4x_sprite_update_arm(struct intel_dsb *dsb,
 	intel_de_write_fw(display, DVSSURF(pipe),
 			  intel_plane_ggtt_offset(plane_state) + dvssurf_offset);
 
-	if (IS_G4X(dev_priv))
+	if (display->platform.g4x)
 		g4x_sprite_update_gamma(plane_state);
 	else
 		ilk_sprite_update_gamma(plane_state);
@@ -1206,7 +1198,7 @@ g4x_sprite_disable_arm(struct intel_dsb *dsb,
 		       struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 
 	intel_de_write_fw(display, DVSCNTR(pipe), 0);
@@ -1219,7 +1211,7 @@ static bool
 g4x_sprite_get_hw_state(struct intel_plane *plane,
 			enum pipe *pipe)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	bool ret;
@@ -1259,7 +1251,7 @@ static int
 g4x_sprite_check_scaling(struct intel_crtc_state *crtc_state,
 			 struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	const struct drm_rect *src = &plane_state->uapi.src;
 	const struct drm_rect *dst = &plane_state->uapi.dst;
@@ -1325,9 +1317,7 @@ static int
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
@@ -1336,7 +1326,7 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 		if (DISPLAY_VER(display) < 7) {
 			min_scale = 1;
 			max_scale = 16 << 16;
-		} else if (IS_IVYBRIDGE(dev_priv)) {
+		} else if (display->platform.ivybridge) {
 			min_scale = 1;
 			max_scale = 2 << 16;
 		}
@@ -1372,13 +1362,11 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 
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
@@ -1580,10 +1568,9 @@ static const struct drm_plane_funcs vlv_sprite_funcs = {
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
@@ -1596,7 +1583,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 	if (IS_ERR(plane))
 		return plane;
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.valleyview || display->platform.cherryview) {
 		plane->update_noarm = vlv_sprite_update_noarm;
 		plane->update_arm = vlv_sprite_update_arm;
 		plane->disable_arm = vlv_sprite_disable_arm;
@@ -1610,7 +1597,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		if (intel_scanout_needs_vtd_wa(display))
 			plane->vtd_guard = 128;
 
-		if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
+		if (display->platform.cherryview && pipe == PIPE_B) {
 			formats = chv_pipe_b_sprite_formats;
 			num_formats = ARRAY_SIZE(chv_pipe_b_sprite_formats);
 		} else {
@@ -1626,7 +1613,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		plane->get_hw_state = ivb_sprite_get_hw_state;
 		plane->check_plane = g4x_sprite_check;
 
-		if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv)) {
+		if (display->platform.broadwell || display->platform.haswell) {
 			plane->max_stride = hsw_sprite_max_stride;
 			plane->min_cdclk = hsw_plane_min_cdclk;
 		} else {
@@ -1656,7 +1643,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		if (intel_scanout_needs_vtd_wa(display))
 			plane->vtd_guard = 64;
 
-		if (IS_SANDYBRIDGE(dev_priv)) {
+		if (display->platform.sandybridge) {
 			formats = snb_sprite_formats;
 			num_formats = ARRAY_SIZE(snb_sprite_formats);
 
@@ -1669,7 +1656,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
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

