Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAB7A1BA60
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 17:30:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D238110E9E7;
	Fri, 24 Jan 2025 16:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X2IsiYDX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 255EB10E9E3;
 Fri, 24 Jan 2025 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737736253; x=1769272253;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nuKKeD4RvTCODPTOfj0nbMbQeasGRpkFSqS/Ytu1x2g=;
 b=X2IsiYDXexiqDy6LrIZnABXSeYoWlKiTX51qbqiyFJUgsMx/HTx5z3+W
 81Mqu36mCN6LfgOX70r1hfdhd1HPTkJjle9BXGrFHQiOki+yP4XYFx+V7
 RDaU4ZJyQm5iNcu9FfWyZHDPf8weMSxfDR1pEk337R0csXTuVbrHCOVg4
 KleNTbJpoo8MO246oT47wdYmsKEQYyof/xzYPqR0w7PH8uDkz+k2EL5BV
 DKBPDWxia0wQ24jn8gu/xXIAiT1B0JA5VBPRCxj6bZqZ187qce7CBP5tO
 9xSQ0F+fc1Yr9XZSueKt9ea1vG0awqCtGTlA81+4d3+g/MGLFAIOOmGQs g==;
X-CSE-ConnectionGUID: aEfik7/aRk27SBXSngHMlA==
X-CSE-MsgGUID: G4QjJtVnSu2dH0D40oKhYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="42200436"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="42200436"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 08:30:53 -0800
X-CSE-ConnectionGUID: Dckq48YjSTylf58FysN4cQ==
X-CSE-MsgGUID: ycFs/7K0Q9SbBoTpiwCpfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107925911"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 08:30:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 18:30:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/11] drm/i915: Convert intel_crtc.c to struct intel_display
Date: Fri, 24 Jan 2025 18:30:32 +0200
Message-ID: <20250124163040.8886-4-ville.syrjala@linux.intel.com>
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
the main thing for display code. Convert intel_crtc.c code to
use it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  4 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     | 55 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_crtc.h     |  7 +--
 drivers/gpu/drm/i915/display/intel_display.c  |  3 +-
 .../drm/i915/display/intel_display_driver.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  3 +-
 8 files changed, 41 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 56353377466c..434de337814c 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -224,7 +224,7 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 	 * 2. Program DP PLL enable
 	 */
 	if (IS_IRONLAKE(dev_priv))
-		intel_wait_for_vblank_if_active(dev_priv, !crtc->pipe);
+		intel_wait_for_vblank_if_active(display, !crtc->pipe);
 
 	intel_dp->DP |= DP_PLL_ENABLE;
 
@@ -471,7 +471,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
 		intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
 		intel_de_posting_read(display, intel_dp->output_reg);
 
-		intel_wait_for_vblank_if_active(dev_priv, PIPE_A);
+		intel_wait_for_vblank_if_active(display, PIPE_A);
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, true);
 		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
 	}
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 98e6a931042f..3aaa7f9e9210 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -384,6 +384,7 @@ static void intel_disable_hdmi(struct intel_atomic_state *state,
 			       const struct intel_crtc_state *old_crtc_state,
 			       const struct drm_connector_state *old_conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
@@ -426,7 +427,7 @@ static void intel_disable_hdmi(struct intel_atomic_state *state,
 		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
 		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 
-		intel_wait_for_vblank_if_active(dev_priv, PIPE_A);
+		intel_wait_for_vblank_if_active(display, PIPE_A);
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, true);
 		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 113d763e6ef3..f145f83346ca 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -954,13 +954,12 @@ static int glk_force_audio_cdclk_commit(struct intel_atomic_state *state,
 static void glk_force_audio_cdclk(struct intel_display *display,
 				  bool enable)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_modeset_acquire_ctx ctx;
 	struct drm_atomic_state *state;
 	struct intel_crtc *crtc;
 	int ret;
 
-	crtc = intel_first_crtc(i915);
+	crtc = intel_first_crtc(display);
 	if (!crtc)
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index e69b28779ac5..87e4a7a91f23 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -45,9 +45,9 @@ static void assert_vblank_disabled(struct drm_crtc *crtc)
 		drm_crtc_vblank_put(crtc);
 }
 
-struct intel_crtc *intel_first_crtc(struct drm_i915_private *i915)
+struct intel_crtc *intel_first_crtc(struct intel_display *display)
 {
-	return to_intel_crtc(drm_crtc_from_index(&i915->drm, 0));
+	return to_intel_crtc(drm_crtc_from_index(display->drm, 0));
 }
 
 struct intel_crtc *intel_crtc_for_pipe(struct intel_display *display,
@@ -68,10 +68,9 @@ void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc)
 	drm_crtc_wait_one_vblank(&crtc->base);
 }
 
-void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
+void intel_wait_for_vblank_if_active(struct intel_display *display,
 				     enum pipe pipe)
 {
-	struct intel_display *display = &i915->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 
 	if (crtc->active)
@@ -93,7 +92,7 @@ u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
 
 u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	/*
 	 * From Gen 11, in case of dsi cmd mode, frame counter wouldn't
@@ -109,13 +108,13 @@ u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state)
 	 * On i965gm the hardware frame counter reads
 	 * zero when the TV encoder is enabled :(
 	 */
-	if (IS_I965GM(dev_priv) &&
+	if (display->platform.i965gm &&
 	    (crtc_state->output_types & BIT(INTEL_OUTPUT_TVOUT)))
 		return 0;
 
-	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
+	if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
 		return 0xffffffff; /* full 32 bit counter */
-	else if (DISPLAY_VER(dev_priv) >= 3)
+	else if (DISPLAY_VER(display) >= 3)
 		return 0xffffff; /* only 24 bits of frame count */
 	else
 		return 0; /* Gen2 doesn't have a hardware frame counter */
@@ -142,8 +141,8 @@ void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state)
 
 void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_display *display = to_intel_display(crtc);
 
 	/*
 	 * Should really happen exactly when we disable the pipe
@@ -304,8 +303,9 @@ static const struct drm_crtc_funcs i8xx_crtc_funcs = {
 	.get_vblank_timestamp = intel_crtc_get_vblank_timestamp,
 };
 
-int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
+int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_plane *primary, *cursor;
 	const struct drm_crtc_funcs *funcs;
 	struct intel_crtc *crtc;
@@ -316,9 +316,9 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 		return PTR_ERR(crtc);
 
 	crtc->pipe = pipe;
-	crtc->num_scalers = DISPLAY_RUNTIME_INFO(dev_priv)->num_scalers[pipe];
+	crtc->num_scalers = DISPLAY_RUNTIME_INFO(display)->num_scalers[pipe];
 
-	if (DISPLAY_VER(dev_priv) >= 9)
+	if (DISPLAY_VER(display) >= 9)
 		primary = skl_universal_plane_create(dev_priv, pipe, PLANE_1);
 	else
 		primary = intel_primary_plane_create(dev_priv, pipe);
@@ -351,32 +351,34 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 	}
 	crtc->plane_ids_mask |= BIT(cursor->id);
 
-	if (HAS_GMCH(dev_priv)) {
-		if (IS_CHERRYVIEW(dev_priv) ||
-		    IS_VALLEYVIEW(dev_priv) || IS_G4X(dev_priv))
+	if (HAS_GMCH(display)) {
+		if (display->platform.cherryview ||
+		    display->platform.valleyview ||
+		    display->platform.g4x)
 			funcs = &g4x_crtc_funcs;
-		else if (DISPLAY_VER(dev_priv) == 4)
+		else if (DISPLAY_VER(display) == 4)
 			funcs = &i965_crtc_funcs;
-		else if (IS_I945GM(dev_priv) || IS_I915GM(dev_priv))
+		else if (display->platform.i945gm ||
+			 display->platform.i915gm)
 			funcs = &i915gm_crtc_funcs;
-		else if (DISPLAY_VER(dev_priv) == 3)
+		else if (DISPLAY_VER(display) == 3)
 			funcs = &i915_crtc_funcs;
 		else
 			funcs = &i8xx_crtc_funcs;
 	} else {
-		if (DISPLAY_VER(dev_priv) >= 8)
+		if (DISPLAY_VER(display) >= 8)
 			funcs = &bdw_crtc_funcs;
 		else
 			funcs = &ilk_crtc_funcs;
 	}
 
-	ret = drm_crtc_init_with_planes(&dev_priv->drm, &crtc->base,
+	ret = drm_crtc_init_with_planes(display->drm, &crtc->base,
 					&primary->base, &cursor->base,
 					funcs, "pipe %c", pipe_name(pipe));
 	if (ret)
 		goto fail;
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		drm_crtc_create_scaling_filter_property(&crtc->base,
 						BIT(DRM_SCALING_FILTER_DEFAULT) |
 						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
@@ -387,7 +389,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
 
-	drm_WARN_ON(&dev_priv->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
+	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
 
 	return 0;
 
@@ -512,7 +514,7 @@ int intel_scanlines_to_usecs(const struct drm_display_mode *adjusted_mode,
 void intel_pipe_update_start(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
@@ -546,7 +548,7 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 
 	intel_vblank_evade_init(old_crtc_state, new_crtc_state, &evade);
 
-	if (drm_WARN_ON(&dev_priv->drm, drm_crtc_vblank_get(&crtc->base)))
+	if (drm_WARN_ON(display->drm, drm_crtc_vblank_get(&crtc->base)))
 		goto irq_disable;
 
 	/*
@@ -649,13 +651,14 @@ void intel_crtc_prepare_vblank_event(struct intel_crtc_state *crtc_state,
 void intel_pipe_update_end(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 	int scanline_end = intel_get_crtc_scanline(crtc);
 	u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc);
 	ktime_t end_vbl_time = ktime_get();
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	if (new_crtc_state->do_async_flip)
 		goto out;
@@ -666,7 +669,7 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	 * Incase of mipi dsi command mode, we need to set frame update
 	 * request for every commit.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 11 &&
+	if (DISPLAY_VER(display) >= 11 &&
 	    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
 		icl_dsi_frame_update(new_crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index de54ae1deedf..8c14ff8b391e 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -13,7 +13,6 @@ enum pipe;
 struct drm_device;
 struct drm_display_mode;
 struct drm_file;
-struct drm_i915_private;
 struct drm_pending_vblank_event;
 struct intel_atomic_state;
 struct intel_crtc;
@@ -38,7 +37,7 @@ void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state);
 void intel_crtc_prepare_vblank_event(struct intel_crtc_state *crtc_state,
 				     struct drm_pending_vblank_event **event);
 u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state);
-int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe);
+int intel_crtc_init(struct intel_display *display, enum pipe pipe);
 int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
 					   struct drm_file *file_priv);
 struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc);
@@ -52,10 +51,10 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 void intel_pipe_update_end(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc);
 void intel_wait_for_vblank_workers(struct intel_atomic_state *state);
-struct intel_crtc *intel_first_crtc(struct drm_i915_private *i915);
+struct intel_crtc *intel_first_crtc(struct intel_display *display);
 struct intel_crtc *intel_crtc_for_pipe(struct intel_display *display,
 				       enum pipe pipe);
-void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
+void intel_wait_for_vblank_if_active(struct intel_display *display,
 				     enum pipe pipe);
 void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 157863428b52..51e87ef3e4e4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -717,7 +717,6 @@ u32 intel_plane_fb_max_stride(struct drm_device *dev,
 			      u32 pixel_format, u64 modifier)
 {
 	struct intel_display *display = to_intel_display(dev);
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_crtc *crtc;
 	struct intel_plane *plane;
 
@@ -729,7 +728,7 @@ u32 intel_plane_fb_max_stride(struct drm_device *dev,
 	 * the highest stride limits of them all,
 	 * if in case pipe A is disabled, use the first pipe from pipe_mask.
 	 */
-	crtc = intel_first_crtc(dev_priv);
+	crtc = intel_first_crtc(display);
 	if (!crtc)
 		return 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 73ea0e906014..f1db87182de6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -444,7 +444,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 		    INTEL_NUM_PIPES(display) > 1 ? "s" : "");
 
 	for_each_pipe(display, pipe) {
-		ret = intel_crtc_init(i915, pipe);
+		ret = intel_crtc_init(display, pipe);
 		if (ret)
 			goto err_mode_config;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index ca8aeb17c909..6ebd099d8861 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1838,6 +1838,7 @@ static void intel_disable_sdvo(struct intel_atomic_state *state,
 			       const struct intel_crtc_state *old_crtc_state,
 			       const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
@@ -1873,7 +1874,7 @@ static void intel_disable_sdvo(struct intel_atomic_state *state,
 		temp &= ~SDVO_ENABLE;
 		intel_sdvo_write_sdvox(intel_sdvo, temp);
 
-		intel_wait_for_vblank_if_active(dev_priv, PIPE_A);
+		intel_wait_for_vblank_if_active(display, PIPE_A);
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, true);
 		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
 	}
-- 
2.45.3

