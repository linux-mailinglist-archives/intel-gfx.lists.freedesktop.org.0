Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CEDA2B1C6
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 19:56:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD9F310E2E7;
	Thu,  6 Feb 2025 18:56:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fP4asMSm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1577C10E2E7;
 Thu,  6 Feb 2025 18:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738868172; x=1770404172;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c3mY/NbpSsA1hpACXSMytAOm5NLQrB3+ow8RYEYwO1M=;
 b=fP4asMSmH0/8bemaMzy6haq4AoRKxJIoupa1psKGxApp01Dm4sJTeHAt
 Pia61sRdqq8bJjJE1JYIj9BSRK4Tmji9j+c3OhG1NVH5mr3c5nTgqWIkd
 d2yZ7G7HcoEtSDpF3yWZCVuVBzA+7sRQH+7IXaPahO4Xp+VCaTVtfUqGw
 4VVcep5WnFZyS8nK8PwnVHsjqK6JKtBWxfQwJjhiiw0O+i9z2O9hS7dGf
 s00/pFRSZmrpy0Fc/5f8SUfSUWQlpEAqk35RCh52mn606cQfCO5kTKoqJ
 /vdjsPp3Jvnik8GcjgfRpAfN+vuQSihVUjtHU1ZLK16E0hGMccFsGRsnZ Q==;
X-CSE-ConnectionGUID: lJcje0+ERgyukODjpLme+w==
X-CSE-MsgGUID: QajApJGETkS63FCtr+FDIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39395069"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="39395069"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 10:56:11 -0800
X-CSE-ConnectionGUID: OeqGnUklQWGhL0zu+ghGcw==
X-CSE-MsgGUID: JASkm/3bT6OjR6boCVt4Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="111499628"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Feb 2025 10:56:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Feb 2025 20:56:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 10/12] drm/i915: Convert skl_univeral_plane.c to struct
 intel_display
Date: Thu,  6 Feb 2025 20:55:31 +0200
Message-ID: <20250206185533.32306-11-ville.syrjala@linux.intel.com>
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

struct intel_display will replace struct drm_i915_private as
the main thing for display code. Convert the skl+ universal plane
code to use it.

Note that we still have two straggles in the form on
HAS_FLAT_CCS() and the pxp stuff.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |  13 +-
 .../drm/i915/display/skl_universal_plane.c    | 360 +++++++++---------
 .../drm/i915/display/skl_universal_plane.h    |   8 +-
 5 files changed, 189 insertions(+), 201 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 2dc495659563..89785da93603 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -319,7 +319,7 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 	crtc->num_scalers = DISPLAY_RUNTIME_INFO(display)->num_scalers[pipe];
 
 	if (DISPLAY_VER(display) >= 9)
-		primary = skl_universal_plane_create(dev_priv, pipe, PLANE_1);
+		primary = skl_universal_plane_create(display, pipe, PLANE_1);
 	else
 		primary = intel_primary_plane_create(display, pipe);
 	if (IS_ERR(primary)) {
@@ -334,7 +334,7 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 		struct intel_plane *plane;
 
 		if (DISPLAY_VER(dev_priv) >= 9)
-			plane = skl_universal_plane_create(dev_priv, pipe, PLANE_2 + sprite);
+			plane = skl_universal_plane_create(display, pipe, PLANE_2 + sprite);
 		else
 			plane = intel_sprite_plane_create(display, pipe, sprite);
 		if (IS_ERR(plane)) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 83bc3cf1cf97..a451c46d3795 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4438,6 +4438,7 @@ static int icl_add_linked_planes(struct intel_atomic_state *state)
 static int icl_check_nv12_planes(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -4479,7 +4480,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 			continue;
 
 		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, linked) {
-			if (!icl_is_nv12_y_plane(dev_priv, linked->id))
+			if (!icl_is_nv12_y_plane(display, linked->id))
 				continue;
 
 			if (crtc_state->active_planes & BIT(linked->id))
@@ -4524,7 +4525,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 		linked_state->uapi.src = plane_state->uapi.src;
 		linked_state->uapi.dst = plane_state->uapi.dst;
 
-		if (icl_is_hdr_plane(dev_priv, plane->id)) {
+		if (icl_is_hdr_plane(display, plane->id)) {
 			if (linked->id == PLANE_7)
 				plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_7_ICL;
 			else if (linked->id == PLANE_6)
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index c8bf6fd92ce8..3d24fa773094 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -279,14 +279,14 @@ int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
 int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 			    struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 	bool force_detach = !fb || !plane_state->uapi.visible;
 	bool need_scaler = false;
 
 	/* Pre-gen11 and SDR planes always need a scaler for planar formats. */
-	if (!icl_is_hdr_plane(dev_priv, plane->id) &&
+	if (!icl_is_hdr_plane(display, plane->id) &&
 	    fb && intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
 		need_scaler = true;
 
@@ -364,9 +364,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 				     int *scaler_id)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct intel_crtc_scaler_state *scaler_state =
-					&crtc_state->scaler_state;
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
 	u32 mode;
 	int hscale = 0;
 	int vscale = 0;
@@ -386,7 +384,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 
 		if (DISPLAY_VER(display) == 9) {
 			mode = SKL_PS_SCALER_MODE_NV12;
-		} else if (icl_is_hdr_plane(dev_priv, plane->id)) {
+		} else if (icl_is_hdr_plane(display, plane->id)) {
 			/*
 			 * On gen11+'s HDR planes we only use the scaler for
 			 * scaling. They have a dedicated chroma upsampler, so
@@ -782,7 +780,6 @@ skl_program_plane_scaler(struct intel_plane *plane,
 			 const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum pipe pipe = plane->pipe;
 	int scaler_id = plane_state->scaler_id;
@@ -806,7 +803,7 @@ skl_program_plane_scaler(struct intel_plane *plane,
 
 	/* TODO: handle sub-pixel coordinates */
 	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
-	    !icl_is_hdr_plane(dev_priv, plane->id)) {
+	    !icl_is_hdr_plane(display, plane->id)) {
 		y_hphase = skl_scaler_calc_phase(1, hscale, false);
 		y_vphase = skl_scaler_calc_phase(1, vscale, false);
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 3a60d6d49662..f8d3a79a96ff 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -233,21 +233,19 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
 	}
 }
 
-static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
+static u8 icl_nv12_y_plane_mask(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-
 	if (DISPLAY_VER(display) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
 		return BIT(PLANE_4) | BIT(PLANE_5);
 	else
 		return BIT(PLANE_6) | BIT(PLANE_7);
 }
 
-bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
+bool icl_is_nv12_y_plane(struct intel_display *display,
 			 enum plane_id plane_id)
 {
-	return DISPLAY_VER(dev_priv) >= 11 &&
-		icl_nv12_y_plane_mask(dev_priv) & BIT(plane_id);
+	return DISPLAY_VER(display) >= 11 &&
+		icl_nv12_y_plane_mask(display) & BIT(plane_id);
 }
 
 u8 icl_hdr_plane_mask(void)
@@ -255,9 +253,9 @@ u8 icl_hdr_plane_mask(void)
 	return BIT(PLANE_1) | BIT(PLANE_2) | BIT(PLANE_3);
 }
 
-bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id plane_id)
+bool icl_is_hdr_plane(struct intel_display *display, enum plane_id plane_id)
 {
-	return DISPLAY_VER(dev_priv) >= 11 &&
+	return DISPLAY_VER(display) >= 11 &&
 		icl_hdr_plane_mask() & BIT(plane_id);
 }
 
@@ -589,7 +587,7 @@ static u32 tgl_plane_min_alignment(struct intel_plane *plane,
 				   const struct drm_framebuffer *fb,
 				   int color_plane)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	/* PLANE_SURF GGTT -> DPT alignment */
 	int mult = intel_fb_uses_dpt(fb) ? 512 : 1;
 
@@ -602,7 +600,7 @@ static u32 tgl_plane_min_alignment(struct intel_plane *plane,
 	 * flips unless we align to 16k at least.
 	 * Figure out what's going on here...
 	 */
-	if (IS_ALDERLAKE_P(i915) &&
+	if (display->platform.alderlake_p &&
 	    intel_plane_can_async_flip(plane, fb->modifier))
 		return mult * 16 * 1024;
 
@@ -684,7 +682,7 @@ icl_program_input_csc(struct intel_dsb *dsb,
 		      struct intel_plane *plane,
 		      const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
 
@@ -829,7 +827,7 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
 			       struct intel_plane *plane,
 			       const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
@@ -875,7 +873,7 @@ skl_plane_disable_arm(struct intel_dsb *dsb,
 		      struct intel_plane *plane,
 		      const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 
@@ -889,7 +887,7 @@ static void icl_plane_disable_sel_fetch_arm(struct intel_dsb *dsb,
 					    struct intel_plane *plane,
 					    const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
@@ -903,12 +901,11 @@ icl_plane_disable_arm(struct intel_dsb *dsb,
 		      struct intel_plane *plane,
 		      const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 
-	if (icl_is_hdr_plane(dev_priv, plane_id))
+	if (icl_is_hdr_plane(display, plane_id))
 		intel_de_write_dsb(display, dsb, PLANE_CUS_CTL(pipe, plane_id), 0);
 
 	skl_write_plane_wm(dsb, plane, crtc_state);
@@ -923,7 +920,6 @@ skl_plane_get_hw_state(struct intel_plane *plane,
 		       enum pipe *pipe)
 {
 	struct intel_display *display = to_intel_display(plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum intel_display_power_domain power_domain;
 	enum plane_id plane_id = plane->id;
 	intel_wakeref_t wakeref;
@@ -934,7 +930,7 @@ skl_plane_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	ret = intel_de_read(dev_priv, PLANE_CTL(plane->pipe, plane_id)) & PLANE_CTL_ENABLE;
+	ret = intel_de_read(display, PLANE_CTL(plane->pipe, plane_id)) & PLANE_CTL_ENABLE;
 
 	*pipe = plane->pipe;
 
@@ -1155,10 +1151,10 @@ static u32 adlp_plane_ctl_arb_slots(const struct intel_plane_state *plane_state)
 
 static u32 skl_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	u32 plane_ctl = 0;
 
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(display) >= 10)
 		return plane_ctl;
 
 	if (crtc_state->gamma_enable)
@@ -1173,8 +1169,7 @@ static u32 skl_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
 static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 			 const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
@@ -1182,7 +1177,7 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 
 	plane_ctl = PLANE_CTL_ENABLE;
 
-	if (DISPLAY_VER(dev_priv) < 10) {
+	if (DISPLAY_VER(display) < 10) {
 		plane_ctl |= skl_plane_ctl_alpha(plane_state);
 		plane_ctl |= PLANE_CTL_PLANE_GAMMA_DISABLE;
 
@@ -1197,7 +1192,7 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 	plane_ctl |= skl_plane_ctl_tiling(fb->modifier);
 	plane_ctl |= skl_plane_ctl_rotate(rotation & DRM_MODE_ROTATE_MASK);
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		plane_ctl |= icl_plane_ctl_flip(rotation &
 						DRM_MODE_REFLECT_MASK);
 
@@ -1207,7 +1202,7 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 		plane_ctl |= PLANE_CTL_KEY_ENABLE_SOURCE;
 
 	/* Wa_22012358565:adl-p */
-	if (DISPLAY_VER(dev_priv) == 13)
+	if (DISPLAY_VER(display) == 13)
 		plane_ctl |= adlp_plane_ctl_arb_slots(plane_state);
 
 	return plane_ctl;
@@ -1215,10 +1210,10 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 
 static u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	u32 plane_color_ctl = 0;
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		return plane_color_ctl;
 
 	if (crtc_state->gamma_enable)
@@ -1233,8 +1228,7 @@ static u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state)
 static u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
 			       const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	u32 plane_color_ctl = 0;
@@ -1242,7 +1236,7 @@ static u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
 	plane_color_ctl |= PLANE_COLOR_PLANE_GAMMA_DISABLE;
 	plane_color_ctl |= glk_plane_color_ctl_alpha(plane_state);
 
-	if (fb->format->is_yuv && !icl_is_hdr_plane(dev_priv, plane->id)) {
+	if (fb->format->is_yuv && !icl_is_hdr_plane(display, plane->id)) {
 		switch (plane_state->hw.color_encoding) {
 		case DRM_COLOR_YCBCR_BT709:
 			plane_color_ctl |= PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
@@ -1272,7 +1266,7 @@ static u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
 static u32 skl_surf_address(const struct intel_plane_state *plane_state,
 			    int color_plane)
 {
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	u32 offset = plane_state->view.color_plane[color_plane].offset;
 
@@ -1281,12 +1275,12 @@ static u32 skl_surf_address(const struct intel_plane_state *plane_state,
 		 * The DPT object contains only one vma, so the VMA's offset
 		 * within the DPT is always 0.
 		 */
-		drm_WARN_ON(&i915->drm, plane_state->dpt_vma &&
+		drm_WARN_ON(display->drm, plane_state->dpt_vma &&
 			    intel_dpt_offset(plane_state->dpt_vma));
-		drm_WARN_ON(&i915->drm, offset & 0x1fffff);
+		drm_WARN_ON(display->drm, offset & 0x1fffff);
 		return offset >> 9;
 	} else {
-		drm_WARN_ON(&i915->drm, offset & 0xfff);
+		drm_WARN_ON(display->drm, offset & 0xfff);
 		return offset;
 	}
 }
@@ -1308,7 +1302,7 @@ static u32 skl_plane_surf(const struct intel_plane_state *plane_state,
 u32 skl_plane_aux_dist(const struct intel_plane_state *plane_state,
 		       int color_plane)
 {
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	int aux_plane = skl_main_to_aux_plane(fb, color_plane);
 	u32 aux_dist;
@@ -1319,7 +1313,7 @@ u32 skl_plane_aux_dist(const struct intel_plane_state *plane_state,
 	aux_dist = skl_surf_address(plane_state, aux_plane) -
 		skl_surf_address(plane_state, color_plane);
 
-	if (DISPLAY_VER(i915) < 12)
+	if (DISPLAY_VER(display) < 12)
 		aux_dist |= PLANE_AUX_STRIDE(skl_plane_stride(plane_state, aux_plane));
 
 	return aux_dist;
@@ -1357,7 +1351,7 @@ static void icl_plane_csc_load_black(struct intel_dsb *dsb,
 				     struct intel_plane *plane,
 				     const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 
@@ -1394,7 +1388,7 @@ skl_plane_update_noarm(struct intel_dsb *dsb,
 		       const struct intel_crtc_state *crtc_state,
 		       const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	u32 stride = skl_plane_stride(plane_state, 0);
@@ -1425,8 +1419,7 @@ skl_plane_update_arm(struct intel_dsb *dsb,
 		     const struct intel_crtc_state *crtc_state,
 		     const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	u32 x = plane_state->view.color_plane[0].x;
@@ -1441,7 +1434,7 @@ skl_plane_update_arm(struct intel_dsb *dsb,
 	    crtc_state->async_flip_planes & BIT(plane->id))
 		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
 
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(display) >= 10)
 		plane_color_ctl = plane_state->color_ctl |
 			glk_plane_color_ctl_crtc(crtc_state);
 
@@ -1462,7 +1455,7 @@ skl_plane_update_arm(struct intel_dsb *dsb,
 			   PLANE_OFFSET_Y(plane_state->view.color_plane[1].y) |
 			   PLANE_OFFSET_X(plane_state->view.color_plane[1].x));
 
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(display) >= 10)
 		intel_de_write_dsb(display, dsb, PLANE_COLOR_CTL(pipe, plane_id),
 				   plane_color_ctl);
 
@@ -1493,7 +1486,7 @@ static void icl_plane_update_sel_fetch_noarm(struct intel_dsb *dsb,
 					     const struct intel_plane_state *plane_state,
 					     int color_plane)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 	const struct drm_rect *clip;
 	u32 val;
@@ -1539,8 +1532,7 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
 		       const struct intel_crtc_state *crtc_state,
 		       const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	int color_plane = icl_plane_color_plane(plane_state);
@@ -1588,18 +1580,18 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
 	}
 
 	/* FLAT CCS doesn't need to program AUX_DIST */
-	if (!HAS_FLAT_CCS(dev_priv) && DISPLAY_VER(dev_priv) < 20)
+	if (!HAS_FLAT_CCS(to_i915(display->drm)) && DISPLAY_VER(display) < 20)
 		intel_de_write_dsb(display, dsb, PLANE_AUX_DIST(pipe, plane_id),
 				   skl_plane_aux_dist(plane_state, color_plane));
 
-	if (icl_is_hdr_plane(dev_priv, plane_id))
+	if (icl_is_hdr_plane(display, plane_id))
 		intel_de_write_dsb(display, dsb, PLANE_CUS_CTL(pipe, plane_id),
 				   plane_state->cus_ctl);
 
 	intel_de_write_dsb(display, dsb, PLANE_COLOR_CTL(pipe, plane_id),
 			   plane_color_ctl);
 
-	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
+	if (fb->format->is_yuv && icl_is_hdr_plane(display, plane_id))
 		icl_program_input_csc(dsb, plane, plane_state);
 
 	skl_write_plane_wm(dsb, plane, crtc_state);
@@ -1619,7 +1611,7 @@ static void icl_plane_update_sel_fetch_arm(struct intel_dsb *dsb,
 					   const struct intel_crtc_state *crtc_state,
 					   const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum pipe pipe = plane->pipe;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
@@ -1638,7 +1630,7 @@ icl_plane_update_arm(struct intel_dsb *dsb,
 		     const struct intel_crtc_state *crtc_state,
 		     const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	int color_plane = icl_plane_color_plane(plane_state);
@@ -1677,7 +1669,7 @@ skl_plane_async_flip(struct intel_dsb *dsb,
 		     const struct intel_plane_state *plane_state,
 		     bool async_flip)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	u32 plane_ctl = plane_state->ctl, plane_surf;
@@ -1713,8 +1705,7 @@ static bool intel_format_is_p01x(u32 format)
 static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 			      const struct intel_plane_state *plane_state)
 {
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 
@@ -1723,7 +1714,7 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 
 	if (rotation & ~(DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180) &&
 	    intel_fb_is_ccs_modifier(fb->modifier)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "RC support only with 0/180 degree rotation (%x)\n",
 			    rotation);
 		return -EINVAL;
@@ -1731,7 +1722,7 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 
 	if (rotation & DRM_MODE_REFLECT_X &&
 	    fb->modifier == DRM_FORMAT_MOD_LINEAR) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "horizontal flip is not supported with linear surface formats\n");
 		return -EINVAL;
 	}
@@ -1741,15 +1732,15 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	 */
 	if (rotation & DRM_MODE_REFLECT_X &&
 	    intel_fb_is_tile4_modifier(fb->modifier) &&
-	    DISPLAY_VER(dev_priv) >= 20) {
-		drm_dbg_kms(&dev_priv->drm,
+	    DISPLAY_VER(display) >= 20) {
+		drm_dbg_kms(display->drm,
 			    "horizontal flip is not supported with tile4 surface formats\n");
 		return -EINVAL;
 	}
 
 	if (drm_rotation_90_or_270(rotation)) {
 		if (!intel_fb_supports_90_270_rotation(to_intel_framebuffer(fb))) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "Y/Yf tiling required for 90/270!\n");
 			return -EINVAL;
 		}
@@ -1760,7 +1751,7 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 		 */
 		switch (fb->format->format) {
 		case DRM_FORMAT_RGB565:
-			if (DISPLAY_VER(dev_priv) >= 11)
+			if (DISPLAY_VER(display) >= 11)
 				break;
 			fallthrough;
 		case DRM_FORMAT_C8:
@@ -1773,7 +1764,7 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 		case DRM_FORMAT_Y216:
 		case DRM_FORMAT_XVYU12_16161616:
 		case DRM_FORMAT_XVYU16161616:
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "Unsupported pixel format %p4cc for 90/270!\n",
 				    &fb->format->format);
 			return -EINVAL;
@@ -1787,16 +1778,16 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	    crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE &&
 	    fb->modifier != DRM_FORMAT_MOD_LINEAR &&
 	    fb->modifier != I915_FORMAT_MOD_X_TILED) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Y/Yf tiling not supported in IF-ID mode\n");
 		return -EINVAL;
 	}
 
 	/* Wa_1606054188:tgl,adl-s */
-	if ((IS_ALDERLAKE_S(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
+	if ((display->platform.alderlake_s || display->platform.tigerlake) &&
 	    plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE &&
 	    intel_format_is_p01x(fb->format->format)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Source color keying not supported with P01x formats\n");
 		return -EINVAL;
 	}
@@ -1807,8 +1798,7 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 static int skl_plane_check_dst_coordinates(const struct intel_crtc_state *crtc_state,
 					   const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	int crtc_x = plane_state->uapi.dst.x1;
 	int crtc_w = drm_rect_width(&plane_state->uapi.dst);
 	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
@@ -1822,9 +1812,9 @@ static int skl_plane_check_dst_coordinates(const struct intel_crtc_state *crtc_s
 	 * than the cursor ending less than 4 pixels from the left edge of the
 	 * screen may cause FIFO underflow and display corruption.
 	 */
-	if (DISPLAY_VER(dev_priv) == 10 &&
+	if (DISPLAY_VER(display) == 10 &&
 	    (crtc_x + crtc_w < 4 || crtc_x > pipe_src_w - 4)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "requested plane X %s position %d invalid (valid range %d-%d)\n",
 			    crtc_x + crtc_w < 4 ? "end" : "start",
 			    crtc_x + crtc_w < 4 ? crtc_x + crtc_w : crtc_x,
@@ -1837,7 +1827,7 @@ static int skl_plane_check_dst_coordinates(const struct intel_crtc_state *crtc_s
 
 static int skl_plane_check_nv12_rotation(const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 	int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
@@ -1847,14 +1837,14 @@ static int skl_plane_check_nv12_rotation(const struct intel_plane_state *plane_s
 	    src_w & 3 &&
 	    (rotation == DRM_MODE_ROTATE_270 ||
 	     rotation == (DRM_MODE_REFLECT_X | DRM_MODE_ROTATE_90))) {
-		drm_dbg_kms(&i915->drm, "src width must be multiple of 4 for rotated planar YUV\n");
+		drm_dbg_kms(display->drm, "src width must be multiple of 4 for rotated planar YUV\n");
 		return -EINVAL;
 	}
 
 	return 0;
 }
 
-static int skl_plane_max_scale(struct drm_i915_private *dev_priv,
+static int skl_plane_max_scale(struct intel_display *display,
 			       const struct drm_framebuffer *fb)
 {
 	/*
@@ -1863,7 +1853,7 @@ static int skl_plane_max_scale(struct drm_i915_private *dev_priv,
 	 * the best case.
 	 * FIXME need to properly check this later.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 10 ||
+	if (DISPLAY_VER(display) >= 10 ||
 	    !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
 		return 0x30000 - 1;
 	else
@@ -1952,8 +1942,8 @@ skl_check_main_ccs_coordinates(struct intel_plane_state *plane_state,
 int skl_calc_main_surface_offset(const struct intel_plane_state *plane_state,
 				 int *x, int *y, u32 *offset)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	int aux_plane = skl_main_to_aux_plane(fb, 0);
 	u32 aux_offset = plane_state->view.color_plane[aux_plane].offset;
@@ -1962,7 +1952,7 @@ int skl_calc_main_surface_offset(const struct intel_plane_state *plane_state,
 
 	intel_add_fb_offsets(x, y, plane_state, 0);
 	*offset = intel_plane_compute_aligned_offset(x, y, plane_state, 0);
-	if (drm_WARN_ON(&dev_priv->drm, alignment && !is_power_of_2(alignment)))
+	if (drm_WARN_ON(display->drm, alignment && !is_power_of_2(alignment)))
 		return -EINVAL;
 
 	/*
@@ -1986,7 +1976,7 @@ int skl_calc_main_surface_offset(const struct intel_plane_state *plane_state,
 
 		while ((*x + w) * cpp > plane_state->view.color_plane[0].mapping_stride) {
 			if (*offset == 0) {
-				drm_dbg_kms(&dev_priv->drm,
+				drm_dbg_kms(display->drm,
 					    "Unable to find suitable display surface offset due to X-tiling\n");
 				return -EINVAL;
 			}
@@ -2002,8 +1992,8 @@ int skl_calc_main_surface_offset(const struct intel_plane_state *plane_state,
 
 static int skl_check_main_surface(struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 	int x = plane_state->uapi.src.x1 >> 16;
@@ -2019,7 +2009,7 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 	int ret;
 
 	if (w > max_width || w < min_width || h > max_height || h < 1) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "requested Y/RGB source size %dx%d outside limits (min: %dx1 max: %dx%d)\n",
 			    w, h, min_width, max_width, max_height);
 		return -EINVAL;
@@ -2046,16 +2036,16 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 
 		if (x != plane_state->view.color_plane[aux_plane].x ||
 		    y != plane_state->view.color_plane[aux_plane].y) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "Unable to find suitable display surface offset due to CCS\n");
 			return -EINVAL;
 		}
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 13)
-		drm_WARN_ON(&dev_priv->drm, x > 65535 || y > 65535);
+	if (DISPLAY_VER(display) >= 13)
+		drm_WARN_ON(display->drm, x > 65535 || y > 65535);
 	else
-		drm_WARN_ON(&dev_priv->drm, x > 8191 || y > 8191);
+		drm_WARN_ON(display->drm, x > 8191 || y > 8191);
 
 	plane_state->view.color_plane[0].offset = offset;
 	plane_state->view.color_plane[0].x = x;
@@ -2073,8 +2063,8 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 
 static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 	int uv_plane = 1;
@@ -2090,7 +2080,7 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 
 	/* FIXME not quite sure how/if these apply to the chroma plane */
 	if (w > max_width || h > max_height) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "CbCr source size %dx%d too big (limit %dx%d)\n",
 			    w, h, max_width, max_height);
 		return -EINVAL;
@@ -2124,16 +2114,16 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 
 		if (x != plane_state->view.color_plane[ccs_plane].x ||
 		    y != plane_state->view.color_plane[ccs_plane].y) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Unable to find suitable display surface offset due to CCS\n");
 			return -EINVAL;
 		}
 	}
 
-	if (DISPLAY_VER(i915) >= 13)
-		drm_WARN_ON(&i915->drm, x > 65535 || y > 65535);
+	if (DISPLAY_VER(display) >= 13)
+		drm_WARN_ON(display->drm, x > 65535 || y > 65535);
 	else
-		drm_WARN_ON(&i915->drm, x > 8191 || y > 8191);
+		drm_WARN_ON(display->drm, x > 8191 || y > 8191);
 
 	plane_state->view.color_plane[uv_plane].offset = offset;
 	plane_state->view.color_plane[uv_plane].x = x;
@@ -2219,9 +2209,13 @@ static int skl_check_plane_surface(struct intel_plane_state *plane_state)
 
 static bool skl_fb_scalable(const struct drm_framebuffer *fb)
 {
+	struct intel_display *display;
+
 	if (!fb)
 		return false;
 
+	display = to_intel_display(fb->dev);
+
 	switch (fb->format->format) {
 	case DRM_FORMAT_C8:
 		return false;
@@ -2229,7 +2223,7 @@ static bool skl_fb_scalable(const struct drm_framebuffer *fb)
 	case DRM_FORMAT_ARGB16161616F:
 	case DRM_FORMAT_XBGR16161616F:
 	case DRM_FORMAT_ABGR16161616F:
-		return DISPLAY_VER(to_i915(fb->dev)) >= 11;
+		return DISPLAY_VER(display) >= 11;
 	default:
 		return true;
 	}
@@ -2237,12 +2231,12 @@ static bool skl_fb_scalable(const struct drm_framebuffer *fb)
 
 static void check_protection(struct intel_plane_state *plane_state)
 {
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane_state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct drm_gem_object *obj = intel_fb_bo(fb);
 
-	if (DISPLAY_VER(i915) < 11)
+	if (DISPLAY_VER(display) < 11)
 		return;
 
 	plane_state->decrypt = intel_pxp_key_check(i915->pxp, obj, false) == 0;
@@ -2253,8 +2247,8 @@ static void check_protection(struct intel_plane_state *plane_state)
 static int skl_plane_check(struct intel_crtc_state *crtc_state,
 			   struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	int min_scale = DRM_PLANE_NO_SCALING;
 	int max_scale = DRM_PLANE_NO_SCALING;
@@ -2267,7 +2261,7 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 	/* use scaler when colorkey is not required */
 	if (!plane_state->ckey.flags && skl_fb_scalable(fb)) {
 		min_scale = 1;
-		max_scale = skl_plane_max_scale(dev_priv, fb);
+		max_scale = skl_plane_max_scale(display, fb);
 	}
 
 	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
@@ -2302,12 +2296,12 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 
 	plane_state->ctl = skl_plane_ctl(crtc_state, plane_state);
 
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(display) >= 10)
 		plane_state->color_ctl = glk_plane_color_ctl(crtc_state,
 							     plane_state);
 
 	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
-	    icl_is_hdr_plane(dev_priv, plane->id))
+	    icl_is_hdr_plane(display, plane->id))
 		/* Enable and use MPEG-2 chroma siting */
 		plane_state->cus_ctl = PLANE_CUS_ENABLE |
 			PLANE_CUS_HPHASE_0 |
@@ -2323,37 +2317,37 @@ static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe)
 	return pipe - PIPE_A + INTEL_FBC_A;
 }
 
-static bool skl_plane_has_fbc(struct drm_i915_private *i915,
+static bool skl_plane_has_fbc(struct intel_display *display,
 			      enum intel_fbc_id fbc_id, enum plane_id plane_id)
 {
-	if ((DISPLAY_RUNTIME_INFO(i915)->fbc_mask & BIT(fbc_id)) == 0)
+	if ((DISPLAY_RUNTIME_INFO(display)->fbc_mask & BIT(fbc_id)) == 0)
 		return false;
 
-	if (DISPLAY_VER(i915) >= 20)
-		return icl_is_hdr_plane(i915, plane_id);
+	if (DISPLAY_VER(display) >= 20)
+		return icl_is_hdr_plane(display, plane_id);
 	else
 		return plane_id == PLANE_1;
 }
 
-static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
+static struct intel_fbc *skl_plane_fbc(struct intel_display *display,
 				       enum pipe pipe, enum plane_id plane_id)
 {
 	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(pipe);
 
-	if (skl_plane_has_fbc(dev_priv, fbc_id, plane_id))
-		return dev_priv->display.fbc[fbc_id];
+	if (skl_plane_has_fbc(display, fbc_id, plane_id))
+		return display->fbc[fbc_id];
 	else
 		return NULL;
 }
 
-static bool skl_plane_has_planar(struct drm_i915_private *dev_priv,
+static bool skl_plane_has_planar(struct intel_display *display,
 				 enum pipe pipe, enum plane_id plane_id)
 {
 	/* Display WA #0870: skl, bxt */
-	if (IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))
+	if (display->platform.skylake || display->platform.broxton)
 		return false;
 
-	if (DISPLAY_VER(dev_priv) == 9 && pipe == PIPE_C)
+	if (DISPLAY_VER(display) == 9 && pipe == PIPE_C)
 		return false;
 
 	if (plane_id != PLANE_1 && plane_id != PLANE_2)
@@ -2362,11 +2356,11 @@ static bool skl_plane_has_planar(struct drm_i915_private *dev_priv,
 	return true;
 }
 
-static const u32 *skl_get_plane_formats(struct drm_i915_private *dev_priv,
+static const u32 *skl_get_plane_formats(struct intel_display *display,
 					enum pipe pipe, enum plane_id plane_id,
 					int *num_formats)
 {
-	if (skl_plane_has_planar(dev_priv, pipe, plane_id)) {
+	if (skl_plane_has_planar(display, pipe, plane_id)) {
 		*num_formats = ARRAY_SIZE(skl_planar_formats);
 		return skl_planar_formats;
 	} else {
@@ -2375,11 +2369,11 @@ static const u32 *skl_get_plane_formats(struct drm_i915_private *dev_priv,
 	}
 }
 
-static const u32 *glk_get_plane_formats(struct drm_i915_private *dev_priv,
+static const u32 *glk_get_plane_formats(struct intel_display *display,
 					enum pipe pipe, enum plane_id plane_id,
 					int *num_formats)
 {
-	if (skl_plane_has_planar(dev_priv, pipe, plane_id)) {
+	if (skl_plane_has_planar(display, pipe, plane_id)) {
 		*num_formats = ARRAY_SIZE(glk_planar_formats);
 		return glk_planar_formats;
 	} else {
@@ -2388,14 +2382,14 @@ static const u32 *glk_get_plane_formats(struct drm_i915_private *dev_priv,
 	}
 }
 
-static const u32 *icl_get_plane_formats(struct drm_i915_private *dev_priv,
+static const u32 *icl_get_plane_formats(struct intel_display *display,
 					enum pipe pipe, enum plane_id plane_id,
 					int *num_formats)
 {
-	if (icl_is_hdr_plane(dev_priv, plane_id)) {
+	if (icl_is_hdr_plane(display, plane_id)) {
 		*num_formats = ARRAY_SIZE(icl_hdr_plane_formats);
 		return icl_hdr_plane_formats;
-	} else if (icl_is_nv12_y_plane(dev_priv, plane_id)) {
+	} else if (icl_is_nv12_y_plane(display, plane_id)) {
 		*num_formats = ARRAY_SIZE(icl_sdr_y_plane_formats);
 		return icl_sdr_y_plane_formats;
 	} else {
@@ -2613,46 +2607,46 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
 	spin_unlock_irq(&i915->irq_lock);
 }
 
-static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
+static bool skl_plane_has_rc_ccs(struct intel_display *display,
 				 enum pipe pipe, enum plane_id plane_id)
 {
 	return pipe != PIPE_C &&
 		(plane_id == PLANE_1 || plane_id == PLANE_2);
 }
 
-static u8 skl_plane_caps(struct drm_i915_private *i915,
+static u8 skl_plane_caps(struct intel_display *display,
 			 enum pipe pipe, enum plane_id plane_id)
 {
 	u8 caps = INTEL_PLANE_CAP_TILING_X |
 		INTEL_PLANE_CAP_TILING_Y |
 		INTEL_PLANE_CAP_TILING_Yf;
 
-	if (skl_plane_has_rc_ccs(i915, pipe, plane_id))
+	if (skl_plane_has_rc_ccs(display, pipe, plane_id))
 		caps |= INTEL_PLANE_CAP_CCS_RC;
 
 	return caps;
 }
 
-static bool glk_plane_has_rc_ccs(struct drm_i915_private *i915,
+static bool glk_plane_has_rc_ccs(struct intel_display *display,
 				 enum pipe pipe)
 {
 	return pipe != PIPE_C;
 }
 
-static u8 glk_plane_caps(struct drm_i915_private *i915,
+static u8 glk_plane_caps(struct intel_display *display,
 			 enum pipe pipe, enum plane_id plane_id)
 {
 	u8 caps = INTEL_PLANE_CAP_TILING_X |
 		INTEL_PLANE_CAP_TILING_Y |
 		INTEL_PLANE_CAP_TILING_Yf;
 
-	if (glk_plane_has_rc_ccs(i915, pipe))
+	if (glk_plane_has_rc_ccs(display, pipe))
 		caps |= INTEL_PLANE_CAP_CCS_RC;
 
 	return caps;
 }
 
-static u8 icl_plane_caps(struct drm_i915_private *i915,
+static u8 icl_plane_caps(struct intel_display *display,
 			 enum pipe pipe, enum plane_id plane_id)
 {
 	return INTEL_PLANE_CAP_TILING_X |
@@ -2661,21 +2655,20 @@ static u8 icl_plane_caps(struct drm_i915_private *i915,
 		INTEL_PLANE_CAP_CCS_RC;
 }
 
-static bool tgl_plane_has_mc_ccs(struct drm_i915_private *i915,
+static bool tgl_plane_has_mc_ccs(struct intel_display *display,
 				 enum plane_id plane_id)
 {
 	/* Wa_14010477008 */
-	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
-	    (IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
+	if (display->platform.dg1 || display->platform.rocketlake ||
+	    (display->platform.tigerlake && IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)))
 		return false;
 
 	return plane_id < PLANE_6;
 }
 
-static u8 tgl_plane_caps(struct drm_i915_private *i915,
+static u8 tgl_plane_caps(struct intel_display *display,
 			 enum pipe pipe, enum plane_id plane_id)
 {
-	struct intel_display *display = &i915->display;
 	u8 caps = INTEL_PLANE_CAP_TILING_X |
 		INTEL_PLANE_CAP_CCS_RC |
 		INTEL_PLANE_CAP_CCS_RC_CC;
@@ -2685,7 +2678,7 @@ static u8 tgl_plane_caps(struct drm_i915_private *i915,
 	else
 		caps |= INTEL_PLANE_CAP_TILING_Y;
 
-	if (tgl_plane_has_mc_ccs(i915, plane_id))
+	if (tgl_plane_has_mc_ccs(display, plane_id))
 		caps |= INTEL_PLANE_CAP_CCS_MC;
 
 	if (DISPLAY_VER(display) >= 14 && display->platform.dgfx)
@@ -2695,10 +2688,9 @@ static u8 tgl_plane_caps(struct drm_i915_private *i915,
 }
 
 struct intel_plane *
-skl_universal_plane_create(struct drm_i915_private *dev_priv,
+skl_universal_plane_create(struct intel_display *display,
 			   enum pipe pipe, enum plane_id plane_id)
 {
-	struct intel_display *display = &dev_priv->display;
 	const struct drm_plane_funcs *plane_funcs;
 	struct intel_plane *plane;
 	enum drm_plane_type plane_type;
@@ -2718,21 +2710,21 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	plane->id = plane_id;
 	plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane_id);
 
-	intel_fbc_add_plane(skl_plane_fbc(dev_priv, pipe, plane_id), plane);
+	intel_fbc_add_plane(skl_plane_fbc(display, pipe, plane_id), plane);
 
-	if (DISPLAY_VER(dev_priv) >= 30) {
+	if (DISPLAY_VER(display) >= 30) {
 		plane->max_width = xe3_plane_max_width;
 		plane->max_height = icl_plane_max_height;
 		plane->min_cdclk = icl_plane_min_cdclk;
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
+	} else if (DISPLAY_VER(display) >= 11) {
 		plane->min_width = icl_plane_min_width;
-		if (icl_is_hdr_plane(dev_priv, plane_id))
+		if (icl_is_hdr_plane(display, plane_id))
 			plane->max_width = icl_hdr_plane_max_width;
 		else
 			plane->max_width = icl_sdr_plane_max_width;
 		plane->max_height = icl_plane_max_height;
 		plane->min_cdclk = icl_plane_min_cdclk;
-	} else if (DISPLAY_VER(dev_priv) >= 10) {
+	} else if (DISPLAY_VER(display) >= 10) {
 		plane->max_width = glk_plane_max_width;
 		plane->max_height = skl_plane_max_height;
 		plane->min_cdclk = glk_plane_min_cdclk;
@@ -2742,20 +2734,20 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 		plane->min_cdclk = skl_plane_min_cdclk;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 13)
+	if (DISPLAY_VER(display) >= 13)
 		plane->max_stride = adl_plane_max_stride;
 	else
 		plane->max_stride = skl_plane_max_stride;
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		plane->min_alignment = tgl_plane_min_alignment;
 	else
 		plane->min_alignment = skl_plane_min_alignment;
 
 	if (intel_scanout_needs_vtd_wa(display))
-		plane->vtd_guard = DISPLAY_VER(dev_priv) >= 10 ? 168 : 136;
+		plane->vtd_guard = DISPLAY_VER(display) >= 10 ? 168 : 136;
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(display) >= 11) {
 		plane->update_noarm = icl_plane_update_noarm;
 		plane->update_arm = icl_plane_update_arm;
 		plane->disable_arm = icl_plane_disable_arm;
@@ -2767,33 +2759,33 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	plane->get_hw_state = skl_plane_get_hw_state;
 	plane->check_plane = skl_plane_check;
 
-	if (HAS_ASYNC_FLIPS(dev_priv) && plane_id == PLANE_1) {
-		plane->need_async_flip_toggle_wa = IS_DISPLAY_VER(dev_priv, 9, 10);
+	if (HAS_ASYNC_FLIPS(display) && plane_id == PLANE_1) {
+		plane->need_async_flip_toggle_wa = IS_DISPLAY_VER(display, 9, 10);
 		plane->async_flip = skl_plane_async_flip;
 		plane->enable_flip_done = skl_plane_enable_flip_done;
 		plane->disable_flip_done = skl_plane_disable_flip_done;
 
-		if (DISPLAY_VER(dev_priv) >= 12)
+		if (DISPLAY_VER(display) >= 12)
 			plane->can_async_flip = tgl_plane_can_async_flip;
-		else if (DISPLAY_VER(dev_priv) == 11)
+		else if (DISPLAY_VER(display) == 11)
 			plane->can_async_flip = icl_plane_can_async_flip;
 		else
 			plane->can_async_flip = skl_plane_can_async_flip;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 11)
-		formats = icl_get_plane_formats(dev_priv, pipe,
+	if (DISPLAY_VER(display) >= 11)
+		formats = icl_get_plane_formats(display, pipe,
 						plane_id, &num_formats);
-	else if (DISPLAY_VER(dev_priv) >= 10)
-		formats = glk_get_plane_formats(dev_priv, pipe,
+	else if (DISPLAY_VER(display) >= 10)
+		formats = glk_get_plane_formats(display, pipe,
 						plane_id, &num_formats);
 	else
-		formats = skl_get_plane_formats(dev_priv, pipe,
+		formats = skl_get_plane_formats(display, pipe,
 						plane_id, &num_formats);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		plane_funcs = &tgl_plane_funcs;
-	else if (DISPLAY_VER(dev_priv) == 11)
+	else if (DISPLAY_VER(display) == 11)
 		plane_funcs = &icl_plane_funcs;
 	else
 		plane_funcs = &skl_plane_funcs;
@@ -2803,24 +2795,24 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	else
 		plane_type = DRM_PLANE_TYPE_OVERLAY;
 
-	if (DISPLAY_VER(dev_priv) >= 12)
-		caps = tgl_plane_caps(dev_priv, pipe, plane_id);
-	else if (DISPLAY_VER(dev_priv) == 11)
-		caps = icl_plane_caps(dev_priv, pipe, plane_id);
-	else if (DISPLAY_VER(dev_priv) == 10)
-		caps = glk_plane_caps(dev_priv, pipe, plane_id);
+	if (DISPLAY_VER(display) >= 12)
+		caps = tgl_plane_caps(display, pipe, plane_id);
+	else if (DISPLAY_VER(display) == 11)
+		caps = icl_plane_caps(display, pipe, plane_id);
+	else if (DISPLAY_VER(display) == 10)
+		caps = glk_plane_caps(display, pipe, plane_id);
 	else
-		caps = skl_plane_caps(dev_priv, pipe, plane_id);
+		caps = skl_plane_caps(display, pipe, plane_id);
 
 	/* FIXME: xe has problems with AUX */
-	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(dev_priv))
+	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(to_i915(display->drm)))
 		caps &= ~(INTEL_PLANE_CAP_CCS_RC |
 			  INTEL_PLANE_CAP_CCS_RC_CC |
 			  INTEL_PLANE_CAP_CCS_MC);
 
 	modifiers = intel_fb_plane_get_modifiers(display, caps);
 
-	ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
+	ret = drm_universal_plane_init(display->drm, &plane->base,
 				       0, plane_funcs,
 				       formats, num_formats, modifiers,
 				       plane_type,
@@ -2832,14 +2824,14 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	if (ret)
 		goto fail;
 
-	if (DISPLAY_VER(dev_priv) >= 13)
+	if (DISPLAY_VER(display) >= 13)
 		supported_rotations = DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
 	else
 		supported_rotations =
 			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_90 |
 			DRM_MODE_ROTATE_180 | DRM_MODE_ROTATE_270;
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		supported_rotations |= DRM_MODE_REFLECT_X;
 
 	drm_plane_create_rotation_property(&plane->base,
@@ -2848,7 +2840,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 	supported_csc = BIT(DRM_COLOR_YCBCR_BT601) | BIT(DRM_COLOR_YCBCR_BT709);
 
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(display) >= 10)
 		supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);
 
 	drm_plane_create_color_properties(&plane->base,
@@ -2866,10 +2858,10 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 	drm_plane_create_zpos_immutable_property(&plane->base, plane_id);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		drm_plane_enable_fb_damage_clips(&plane->base);
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		drm_plane_create_scaling_filter_property(&plane->base,
 						BIT(DRM_SCALING_FILTER_DEFAULT) |
 						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
@@ -2890,8 +2882,6 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe;
@@ -2905,35 +2895,35 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	if (!plane->get_hw_state(plane, &pipe))
 		return;
 
-	drm_WARN_ON(dev, pipe != crtc->pipe);
+	drm_WARN_ON(display->drm, pipe != crtc->pipe);
 
 	if (crtc_state->joiner_pipes) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Unsupported joiner configuration for initial FB\n");
 		return;
 	}
 
 	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
 	if (!intel_fb) {
-		drm_dbg_kms(&dev_priv->drm, "failed to alloc fb\n");
+		drm_dbg_kms(display->drm, "failed to alloc fb\n");
 		return;
 	}
 
 	fb = &intel_fb->base;
 
-	fb->dev = dev;
+	fb->dev = display->drm;
 
-	val = intel_de_read(dev_priv, PLANE_CTL(pipe, plane_id));
+	val = intel_de_read(display, PLANE_CTL(pipe, plane_id));
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		pixel_format = val & PLANE_CTL_FORMAT_MASK_ICL;
 	else
 		pixel_format = val & PLANE_CTL_FORMAT_MASK_SKL;
 
-	if (DISPLAY_VER(dev_priv) >= 10) {
+	if (DISPLAY_VER(display) >= 10) {
 		u32 color_ctl;
 
-		color_ctl = intel_de_read(dev_priv, PLANE_COLOR_CTL(pipe, plane_id));
+		color_ctl = intel_de_read(display, PLANE_COLOR_CTL(pipe, plane_id));
 		alpha = REG_FIELD_GET(PLANE_COLOR_ALPHA_MASK, color_ctl);
 	} else {
 		alpha = REG_FIELD_GET(PLANE_CTL_ALPHA_MASK, val);
@@ -2955,14 +2945,14 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	case PLANE_CTL_TILED_Y:
 		plane_config->tiling = I915_TILING_Y;
 		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
-			if (DISPLAY_VER(dev_priv) >= 14)
+			if (DISPLAY_VER(display) >= 14)
 				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS;
-			else if (DISPLAY_VER(dev_priv) >= 12)
+			else if (DISPLAY_VER(display) >= 12)
 				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS;
 			else
 				fb->modifier = I915_FORMAT_MOD_Y_TILED_CCS;
 		else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
-			if (DISPLAY_VER(dev_priv) >= 14)
+			if (DISPLAY_VER(display) >= 14)
 				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS;
 			else
 				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
@@ -2994,9 +2984,9 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		goto error;
 	}
 
-	if (!dev_priv->display.params.enable_dpt &&
+	if (!display->params.enable_dpt &&
 	    intel_fb_modifier_uses_dpt(display, fb->modifier)) {
-		drm_dbg_kms(&dev_priv->drm, "DPT disabled, skipping initial FB\n");
+		drm_dbg_kms(display->drm, "DPT disabled, skipping initial FB\n");
 		goto error;
 	}
 
@@ -3019,24 +3009,24 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		break;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 11 && val & PLANE_CTL_FLIP_HORIZONTAL)
+	if (DISPLAY_VER(display) >= 11 && val & PLANE_CTL_FLIP_HORIZONTAL)
 		plane_config->rotation |= DRM_MODE_REFLECT_X;
 
 	/* 90/270 degree rotation would require extra work */
 	if (drm_rotation_90_or_270(plane_config->rotation))
 		goto error;
 
-	base = intel_de_read(dev_priv, PLANE_SURF(pipe, plane_id)) & PLANE_SURF_ADDR_MASK;
+	base = intel_de_read(display, PLANE_SURF(pipe, plane_id)) & PLANE_SURF_ADDR_MASK;
 	plane_config->base = base;
 
-	offset = intel_de_read(dev_priv, PLANE_OFFSET(pipe, plane_id));
-	drm_WARN_ON(&dev_priv->drm, offset != 0);
+	offset = intel_de_read(display, PLANE_OFFSET(pipe, plane_id));
+	drm_WARN_ON(display->drm, offset != 0);
 
-	val = intel_de_read(dev_priv, PLANE_SIZE(pipe, plane_id));
+	val = intel_de_read(display, PLANE_SIZE(pipe, plane_id));
 	fb->height = REG_FIELD_GET(PLANE_HEIGHT_MASK, val) + 1;
 	fb->width = REG_FIELD_GET(PLANE_WIDTH_MASK, val) + 1;
 
-	val = intel_de_read(dev_priv, PLANE_STRIDE(pipe, plane_id));
+	val = intel_de_read(display, PLANE_STRIDE(pipe, plane_id));
 	stride_mult = skl_plane_stride_mult(fb, 0, DRM_MODE_ROTATE_0);
 
 	fb->pitches[0] = REG_FIELD_GET(PLANE_STRIDE__MASK, val) * stride_mult;
@@ -3045,7 +3035,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 
 	plane_config->size = fb->pitches[0] * aligned_height;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "%s/%s with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
 		    crtc->base.name, plane->base.name, fb->width, fb->height,
 		    fb->format->cpp[0] * 8, base, fb->pitches[0],
@@ -3061,7 +3051,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
 				    const struct intel_initial_plane_config *plane_config)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 	const struct intel_plane_state *plane_state =
 		to_intel_plane_state(plane->base.state);
@@ -3081,7 +3071,7 @@ bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
 	if (plane_config->base == base)
 		return false;
 
-	intel_de_write(i915, PLANE_SURF(pipe, plane_id), base);
+	intel_de_write(display, PLANE_SURF(pipe, plane_id), base);
 
 	return true;
 }
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers/gpu/drm/i915/display/skl_universal_plane.h
index 18b41d13f0bd..0ce240e9ca5a 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
@@ -8,8 +8,8 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
 struct intel_crtc;
+struct intel_display;
 struct intel_initial_plane_config;
 struct intel_plane_state;
 struct skl_ddb_entry;
@@ -19,7 +19,7 @@ enum pipe;
 enum plane_id;
 
 struct intel_plane *
-skl_universal_plane_create(struct drm_i915_private *dev_priv,
+skl_universal_plane_create(struct intel_display *display,
 			   enum pipe pipe, enum plane_id plane_id);
 
 void skl_get_initial_plane_config(struct intel_crtc *crtc,
@@ -32,10 +32,10 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha);
 int skl_calc_main_surface_offset(const struct intel_plane_state *plane_state,
 				 int *x, int *y, u32 *offset);
 
-bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
+bool icl_is_nv12_y_plane(struct intel_display *display,
 			 enum plane_id plane_id);
 u8 icl_hdr_plane_mask(void);
-bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id plane_id);
+bool icl_is_hdr_plane(struct intel_display *display, enum plane_id plane_id);
 
 u32 skl_plane_aux_dist(const struct intel_plane_state *plane_state,
 		       int color_plane);
-- 
2.45.3

