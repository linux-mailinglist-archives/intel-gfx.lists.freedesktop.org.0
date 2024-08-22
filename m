Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B685795BB52
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 18:05:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5493C10EB46;
	Thu, 22 Aug 2024 16:05:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZjIjpSP8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CD0D10EB46;
 Thu, 22 Aug 2024 16:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724342727; x=1755878727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AIv29qxnhPLvjaB92wZEialk9drL9RJvNghJCXtE40M=;
 b=ZjIjpSP8oPqo1f2mMhd/JAfUzqcuLpV057vN8sNFzTwOknnf/kjHK7sZ
 jixjEy9n2kL0cY/3CJwz7o8SJAv1imW6zI8Vr2QEdFgV9AJSiQmGJUq1c
 Zwm/LyqWiDK2ISQAJtxAyYsfC7L42+33H/ztOtxAcUVbLk9ukxjNaAfzk
 /pDO8SNIBJg8Ud9YpI2p7SmIkELHJgHmJHYV2x4LCBwQyrPp/m+8sfO1u
 fRDyWs4s4lEtgeDm9zu7d7UCxhN8TFe3Y2s+oSIxht/yCt78MvCoUK2tS
 aAJ9hw+yiWfgQl62xpoHa7oFRpU6I37OGqAMu7qeedWOSAJS5WB2qStpV w==;
X-CSE-ConnectionGUID: v/O1YGn0T7WZdOpLWP/PBQ==
X-CSE-MsgGUID: mSjAR+mDRReNh/1mza9kXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22953096"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22953096"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:05:26 -0700
X-CSE-ConnectionGUID: pBjpd3UDQEiyDZHYh2CJqQ==
X-CSE-MsgGUID: 3wjuOVFzTMC7lAuECy7cZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="61169336"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:05:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/7] drm/i915/tv: convert to struct intel_display
Date: Thu, 22 Aug 2024 19:04:53 +0300
Message-Id: <04b1c8d095a52fb817876acdab4e9139d909f306.1724342644.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724342644.git.jani.nikula@intel.com>
References: <cover.1724342644.git.jani.nikula@intel.com>
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_tv.[ch] to struct intel_display.

Some stragglers are left behind where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |   2 +-
 drivers/gpu/drm/i915/display/intel_tv.c      | 203 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_tv.h      |   6 +-
 3 files changed, 108 insertions(+), 103 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1042f65967ba..9049b9a1209d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7935,7 +7935,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			g4x_dp_init(dev_priv, DP_D, PORT_D);
 
 		if (SUPPORTS_TV(dev_priv))
-			intel_tv_init(dev_priv);
+			intel_tv_init(display);
 	} else if (DISPLAY_VER(dev_priv) == 2) {
 		if (IS_I85X(dev_priv))
 			intel_lvds_init(dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index bfc43bda8532..581844d1db9a 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -914,8 +914,8 @@ static struct intel_tv *intel_attached_tv(struct intel_connector *connector)
 static bool
 intel_tv_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 tmp = intel_de_read(dev_priv, TV_CTL);
+	struct intel_display *display = to_intel_display(encoder);
+	u32 tmp = intel_de_read(display, TV_CTL);
 
 	*pipe = (tmp & TV_ENC_PIPE_SEL_MASK) >> TV_ENC_PIPE_SEL_SHIFT;
 
@@ -928,13 +928,12 @@ intel_enable_tv(struct intel_atomic_state *state,
 		const struct intel_crtc_state *pipe_config,
 		const struct drm_connector_state *conn_state)
 {
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(state);
 
 	/* Prevents vblank waits from timing out in intel_tv_detect_type() */
 	intel_crtc_wait_for_next_vblank(to_intel_crtc(pipe_config->uapi.crtc));
 
-	intel_de_rmw(dev_priv, TV_CTL, 0, TV_ENC_ENABLE);
+	intel_de_rmw(display, TV_CTL, 0, TV_ENC_ENABLE);
 }
 
 static void
@@ -943,10 +942,9 @@ intel_disable_tv(struct intel_atomic_state *state,
 		 const struct intel_crtc_state *old_crtc_state,
 		 const struct drm_connector_state *old_conn_state)
 {
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(state);
 
-	intel_de_rmw(dev_priv, TV_CTL, TV_ENC_ENABLE, 0);
+	intel_de_rmw(display, TV_CTL, TV_ENC_ENABLE, 0);
 }
 
 static const struct tv_mode *intel_tv_mode_find(const struct drm_connector_state *conn_state)
@@ -960,9 +958,10 @@ static enum drm_mode_status
 intel_tv_mode_valid(struct drm_connector *connector,
 		    struct drm_display_mode *mode)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 	const struct tv_mode *tv_mode = intel_tv_mode_find(connector->state);
-	int max_dotclk = i915->display.cdclk.max_dotclk_freq;
+	int max_dotclk = display->cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
 
 	status = intel_cpu_transcoder_mode_valid(i915, mode);
@@ -1092,6 +1091,7 @@ static void
 intel_tv_get_config(struct intel_encoder *encoder,
 		    struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
@@ -1104,11 +1104,11 @@ intel_tv_get_config(struct intel_encoder *encoder,
 
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_TVOUT);
 
-	tv_ctl = intel_de_read(dev_priv, TV_CTL);
-	hctl1 = intel_de_read(dev_priv, TV_H_CTL_1);
-	hctl3 = intel_de_read(dev_priv, TV_H_CTL_3);
-	vctl1 = intel_de_read(dev_priv, TV_V_CTL_1);
-	vctl2 = intel_de_read(dev_priv, TV_V_CTL_2);
+	tv_ctl = intel_de_read(display, TV_CTL);
+	hctl1 = intel_de_read(display, TV_H_CTL_1);
+	hctl3 = intel_de_read(display, TV_H_CTL_3);
+	vctl1 = intel_de_read(display, TV_V_CTL_1);
+	vctl2 = intel_de_read(display, TV_V_CTL_2);
 
 	tv_mode.htotal = (hctl1 & TV_HTOTAL_MASK) >> TV_HTOTAL_SHIFT;
 	tv_mode.hsync_end = (hctl1 & TV_HSYNC_END_MASK) >> TV_HSYNC_END_SHIFT;
@@ -1143,17 +1143,17 @@ intel_tv_get_config(struct intel_encoder *encoder,
 		break;
 	}
 
-	tmp = intel_de_read(dev_priv, TV_WIN_POS);
+	tmp = intel_de_read(display, TV_WIN_POS);
 	xpos = tmp >> 16;
 	ypos = tmp & 0xffff;
 
-	tmp = intel_de_read(dev_priv, TV_WIN_SIZE);
+	tmp = intel_de_read(display, TV_WIN_SIZE);
 	xsize = tmp >> 16;
 	ysize = tmp & 0xffff;
 
 	intel_tv_mode_to_mode(&mode, &tv_mode, pipe_config->port_clock);
 
-	drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
+	drm_dbg_kms(display->drm, "TV mode: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(&mode));
 
 	intel_tv_scale_mode_horiz(&mode, hdisplay,
@@ -1171,10 +1171,10 @@ intel_tv_get_config(struct intel_encoder *encoder,
 			I915_MODE_FLAG_USE_SCANLINE_COUNTER;
 }
 
-static bool intel_tv_source_too_wide(struct drm_i915_private *dev_priv,
+static bool intel_tv_source_too_wide(struct intel_display *display,
 				     int hdisplay)
 {
-	return DISPLAY_VER(dev_priv) == 3 && hdisplay > 1024;
+	return DISPLAY_VER(display) == 3 && hdisplay > 1024;
 }
 
 static bool intel_tv_vert_scaling(const struct drm_display_mode *tv_mode,
@@ -1192,6 +1192,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
 			struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_atomic_state *state =
 		to_intel_atomic_state(pipe_config->uapi.state);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
@@ -1214,7 +1215,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
-	drm_dbg_kms(&dev_priv->drm, "forcing bpc to 8 for TV\n");
+	drm_dbg_kms(display->drm, "forcing bpc to 8 for TV\n");
 	pipe_config->pipe_bpp = 8*3;
 
 	pipe_config->port_clock = tv_mode->clock;
@@ -1228,14 +1229,14 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 	intel_tv_mode_to_mode(adjusted_mode, tv_mode, pipe_config->port_clock);
 	drm_mode_set_crtcinfo(adjusted_mode, 0);
 
-	if (intel_tv_source_too_wide(dev_priv, hdisplay) ||
+	if (intel_tv_source_too_wide(display, hdisplay) ||
 	    !intel_tv_vert_scaling(adjusted_mode, conn_state, vdisplay)) {
 		int extra, top, bottom;
 
 		extra = adjusted_mode->crtc_vdisplay - vdisplay;
 
 		if (extra < 0) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "No vertical scaling for >1024 pixel wide modes\n");
 			return -EINVAL;
 		}
@@ -1269,7 +1270,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 		tv_conn_state->bypass_vfilter = false;
 	}
 
-	drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
+	drm_dbg_kms(display->drm, "TV mode: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(adjusted_mode));
 
 	/*
@@ -1355,7 +1356,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 }
 
 static void
-set_tv_mode_timings(struct drm_i915_private *dev_priv,
+set_tv_mode_timings(struct intel_display *display,
 		    const struct tv_mode *tv_mode,
 		    bool burst_ena)
 {
@@ -1401,32 +1402,32 @@ set_tv_mode_timings(struct drm_i915_private *dev_priv,
 	vctl7 = (tv_mode->vburst_start_f4 << TV_VBURST_START_F4_SHIFT) |
 		(tv_mode->vburst_end_f4 << TV_VBURST_END_F4_SHIFT);
 
-	intel_de_write(dev_priv, TV_H_CTL_1, hctl1);
-	intel_de_write(dev_priv, TV_H_CTL_2, hctl2);
-	intel_de_write(dev_priv, TV_H_CTL_3, hctl3);
-	intel_de_write(dev_priv, TV_V_CTL_1, vctl1);
-	intel_de_write(dev_priv, TV_V_CTL_2, vctl2);
-	intel_de_write(dev_priv, TV_V_CTL_3, vctl3);
-	intel_de_write(dev_priv, TV_V_CTL_4, vctl4);
-	intel_de_write(dev_priv, TV_V_CTL_5, vctl5);
-	intel_de_write(dev_priv, TV_V_CTL_6, vctl6);
-	intel_de_write(dev_priv, TV_V_CTL_7, vctl7);
+	intel_de_write(display, TV_H_CTL_1, hctl1);
+	intel_de_write(display, TV_H_CTL_2, hctl2);
+	intel_de_write(display, TV_H_CTL_3, hctl3);
+	intel_de_write(display, TV_V_CTL_1, vctl1);
+	intel_de_write(display, TV_V_CTL_2, vctl2);
+	intel_de_write(display, TV_V_CTL_3, vctl3);
+	intel_de_write(display, TV_V_CTL_4, vctl4);
+	intel_de_write(display, TV_V_CTL_5, vctl5);
+	intel_de_write(display, TV_V_CTL_6, vctl6);
+	intel_de_write(display, TV_V_CTL_7, vctl7);
 }
 
-static void set_color_conversion(struct drm_i915_private *dev_priv,
+static void set_color_conversion(struct intel_display *display,
 				 const struct color_conversion *color_conversion)
 {
-	intel_de_write(dev_priv, TV_CSC_Y,
+	intel_de_write(display, TV_CSC_Y,
 		       (color_conversion->ry << 16) | color_conversion->gy);
-	intel_de_write(dev_priv, TV_CSC_Y2,
+	intel_de_write(display, TV_CSC_Y2,
 		       (color_conversion->by << 16) | color_conversion->ay);
-	intel_de_write(dev_priv, TV_CSC_U,
+	intel_de_write(display, TV_CSC_U,
 		       (color_conversion->ru << 16) | color_conversion->gu);
-	intel_de_write(dev_priv, TV_CSC_U2,
+	intel_de_write(display, TV_CSC_U2,
 		       (color_conversion->bu << 16) | color_conversion->au);
-	intel_de_write(dev_priv, TV_CSC_V,
+	intel_de_write(display, TV_CSC_V,
 		       (color_conversion->rv << 16) | color_conversion->gv);
-	intel_de_write(dev_priv, TV_CSC_V2,
+	intel_de_write(display, TV_CSC_V2,
 		       (color_conversion->bv << 16) | color_conversion->av);
 }
 
@@ -1435,6 +1436,7 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
 				const struct intel_crtc_state *pipe_config,
 				const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_tv *intel_tv = enc_to_tv(encoder);
@@ -1450,7 +1452,7 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
 	int xpos, ypos;
 	unsigned int xsize, ysize;
 
-	tv_ctl = intel_de_read(dev_priv, TV_CTL);
+	tv_ctl = intel_de_read(display, TV_CTL);
 	tv_ctl &= TV_CTL_SAVE;
 
 	switch (intel_tv->type) {
@@ -1525,21 +1527,21 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
 	if (IS_I915GM(dev_priv))
 		tv_ctl |= TV_ENC_C0_FIX | TV_ENC_SDP_FIX;
 
-	set_tv_mode_timings(dev_priv, tv_mode, burst_ena);
+	set_tv_mode_timings(display, tv_mode, burst_ena);
 
-	intel_de_write(dev_priv, TV_SC_CTL_1, scctl1);
-	intel_de_write(dev_priv, TV_SC_CTL_2, scctl2);
-	intel_de_write(dev_priv, TV_SC_CTL_3, scctl3);
+	intel_de_write(display, TV_SC_CTL_1, scctl1);
+	intel_de_write(display, TV_SC_CTL_2, scctl2);
+	intel_de_write(display, TV_SC_CTL_3, scctl3);
 
-	set_color_conversion(dev_priv, color_conversion);
+	set_color_conversion(display, color_conversion);
 
-	if (DISPLAY_VER(dev_priv) >= 4)
-		intel_de_write(dev_priv, TV_CLR_KNOBS, 0x00404000);
+	if (DISPLAY_VER(display) >= 4)
+		intel_de_write(display, TV_CLR_KNOBS, 0x00404000);
 	else
-		intel_de_write(dev_priv, TV_CLR_KNOBS, 0x00606000);
+		intel_de_write(display, TV_CLR_KNOBS, 0x00606000);
 
 	if (video_levels)
-		intel_de_write(dev_priv, TV_CLR_LEVEL,
+		intel_de_write(display, TV_CLR_LEVEL,
 			       ((video_levels->black << TV_BLACK_LEVEL_SHIFT) | (video_levels->blank << TV_BLANK_LEVEL_SHIFT)));
 
 	assert_transcoder_disabled(dev_priv, pipe_config->cpu_transcoder);
@@ -1548,7 +1550,7 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
 	tv_filter_ctl = TV_AUTO_SCALE;
 	if (tv_conn_state->bypass_vfilter)
 		tv_filter_ctl |= TV_V_FILTER_BYPASS;
-	intel_de_write(dev_priv, TV_FILTER_CTL_1, tv_filter_ctl);
+	intel_de_write(display, TV_FILTER_CTL_1, tv_filter_ctl);
 
 	xsize = tv_mode->hblank_start - tv_mode->hblank_end;
 	ysize = intel_tv_mode_vdisplay(tv_mode);
@@ -1559,31 +1561,32 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
 		  conn_state->tv.margins.right);
 	ysize -= (tv_conn_state->margins.top +
 		  tv_conn_state->margins.bottom);
-	intel_de_write(dev_priv, TV_WIN_POS, (xpos << 16) | ypos);
-	intel_de_write(dev_priv, TV_WIN_SIZE, (xsize << 16) | ysize);
+	intel_de_write(display, TV_WIN_POS, (xpos << 16) | ypos);
+	intel_de_write(display, TV_WIN_SIZE, (xsize << 16) | ysize);
 
 	j = 0;
 	for (i = 0; i < 60; i++)
-		intel_de_write(dev_priv, TV_H_LUMA(i),
+		intel_de_write(display, TV_H_LUMA(i),
 			       tv_mode->filter_table[j++]);
 	for (i = 0; i < 60; i++)
-		intel_de_write(dev_priv, TV_H_CHROMA(i),
+		intel_de_write(display, TV_H_CHROMA(i),
 			       tv_mode->filter_table[j++]);
 	for (i = 0; i < 43; i++)
-		intel_de_write(dev_priv, TV_V_LUMA(i),
+		intel_de_write(display, TV_V_LUMA(i),
 			       tv_mode->filter_table[j++]);
 	for (i = 0; i < 43; i++)
-		intel_de_write(dev_priv, TV_V_CHROMA(i),
+		intel_de_write(display, TV_V_CHROMA(i),
 			       tv_mode->filter_table[j++]);
-	intel_de_write(dev_priv, TV_DAC,
-		       intel_de_read(dev_priv, TV_DAC) & TV_DAC_SAVE);
-	intel_de_write(dev_priv, TV_CTL, tv_ctl);
+	intel_de_write(display, TV_DAC,
+		       intel_de_read(display, TV_DAC) & TV_DAC_SAVE);
+	intel_de_write(display, TV_CTL, tv_ctl);
 }
 
 static int
 intel_tv_detect_type(struct intel_tv *intel_tv,
 		      struct drm_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_crtc *crtc = to_intel_crtc(connector->state->crtc);
 	struct drm_device *dev = connector->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -1600,8 +1603,8 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
 		spin_unlock_irq(&dev_priv->irq_lock);
 	}
 
-	save_tv_dac = tv_dac = intel_de_read(dev_priv, TV_DAC);
-	save_tv_ctl = tv_ctl = intel_de_read(dev_priv, TV_CTL);
+	save_tv_dac = tv_dac = intel_de_read(display, TV_DAC);
+	save_tv_ctl = tv_ctl = intel_de_read(display, TV_CTL);
 
 	/* Poll for TV detection */
 	tv_ctl &= ~(TV_ENC_ENABLE | TV_ENC_PIPE_SEL_MASK | TV_TEST_MODE_MASK);
@@ -1627,15 +1630,15 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
 		tv_dac &= ~(TVDAC_STATE_CHG_EN | TVDAC_A_SENSE_CTL |
 			    TVDAC_B_SENSE_CTL | TVDAC_C_SENSE_CTL);
 
-	intel_de_write(dev_priv, TV_CTL, tv_ctl);
-	intel_de_write(dev_priv, TV_DAC, tv_dac);
-	intel_de_posting_read(dev_priv, TV_DAC);
+	intel_de_write(display, TV_CTL, tv_ctl);
+	intel_de_write(display, TV_DAC, tv_dac);
+	intel_de_posting_read(display, TV_DAC);
 
 	intel_crtc_wait_for_next_vblank(crtc);
 
 	type = -1;
-	tv_dac = intel_de_read(dev_priv, TV_DAC);
-	drm_dbg_kms(&dev_priv->drm, "TV detected: %x, %x\n", tv_ctl, tv_dac);
+	tv_dac = intel_de_read(display, TV_DAC);
+	drm_dbg_kms(display->drm, "TV detected: %x, %x\n", tv_ctl, tv_dac);
 	/*
 	 *  A B C
 	 *  0 1 1 Composite
@@ -1643,25 +1646,25 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
 	 *  0 0 0 Component
 	 */
 	if ((tv_dac & TVDAC_SENSE_MASK) == (TVDAC_B_SENSE | TVDAC_C_SENSE)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Detected Composite TV connection\n");
 		type = DRM_MODE_CONNECTOR_Composite;
 	} else if ((tv_dac & (TVDAC_A_SENSE|TVDAC_B_SENSE)) == TVDAC_A_SENSE) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Detected S-Video TV connection\n");
 		type = DRM_MODE_CONNECTOR_SVIDEO;
 	} else if ((tv_dac & TVDAC_SENSE_MASK) == 0) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Detected Component TV connection\n");
 		type = DRM_MODE_CONNECTOR_Component;
 	} else {
-		drm_dbg_kms(&dev_priv->drm, "Unrecognised TV connection\n");
+		drm_dbg_kms(display->drm, "Unrecognised TV connection\n");
 		type = -1;
 	}
 
-	intel_de_write(dev_priv, TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
-	intel_de_write(dev_priv, TV_CTL, save_tv_ctl);
-	intel_de_posting_read(dev_priv, TV_CTL);
+	intel_de_write(display, TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
+	intel_de_write(display, TV_CTL, save_tv_ctl);
+	intel_de_posting_read(display, TV_CTL);
 
 	/* For unknown reasons the hw barfs if we don't do this vblank wait. */
 	intel_crtc_wait_for_next_vblank(crtc);
@@ -1711,12 +1714,13 @@ intel_tv_detect(struct drm_connector *connector,
 		struct drm_modeset_acquire_ctx *ctx,
 		bool force)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_tv *intel_tv = intel_attached_tv(to_intel_connector(connector));
 	enum drm_connector_status status;
 	int type;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] force=%d\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] force=%d\n",
 		    connector->base.id, connector->name, force);
 
 	if (!intel_display_device_enabled(i915))
@@ -1791,7 +1795,7 @@ intel_tv_set_mode_type(struct drm_display_mode *mode,
 static int
 intel_tv_get_modes(struct drm_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	const struct tv_mode *tv_mode = intel_tv_mode_find(connector->state);
 	int i, count = 0;
 
@@ -1805,7 +1809,7 @@ intel_tv_get_modes(struct drm_connector *connector)
 			continue;
 
 		/* no vertical scaling with wide sources on gen3 */
-		if (DISPLAY_VER(dev_priv) == 3 && input->w > 1024 &&
+		if (DISPLAY_VER(display) == 3 && input->w > 1024 &&
 		    input->h > intel_tv_mode_vdisplay(tv_mode))
 			continue;
 
@@ -1822,7 +1826,8 @@ intel_tv_get_modes(struct drm_connector *connector)
 		 */
 		intel_tv_mode_to_mode(mode, tv_mode, tv_mode->clock);
 		if (count == 0) {
-			drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
+			drm_dbg_kms(display->drm,
+				    "TV mode: " DRM_MODE_FMT "\n",
 				    DRM_MODE_ARG(mode));
 		}
 		intel_tv_scale_mode_horiz(mode, input->w, 0, 0);
@@ -1887,7 +1892,7 @@ static const struct drm_encoder_funcs intel_tv_enc_funcs = {
 
 static void intel_tv_add_properties(struct drm_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_connector_state *conn_state = connector->state;
 	const char *tv_format_names[ARRAY_SIZE(tv_modes)];
 	int i;
@@ -1903,45 +1908,44 @@ static void intel_tv_add_properties(struct drm_connector *connector)
 	/* Create TV properties then attach current values */
 	for (i = 0; i < ARRAY_SIZE(tv_modes); i++) {
 		/* 1080p50/1080p60 not supported on gen3 */
-		if (DISPLAY_VER(i915) == 3 && tv_modes[i].oversample == 1)
+		if (DISPLAY_VER(display) == 3 && tv_modes[i].oversample == 1)
 			break;
 
 		tv_format_names[i] = tv_modes[i].name;
 	}
-	drm_mode_create_tv_properties_legacy(&i915->drm, i, tv_format_names);
+	drm_mode_create_tv_properties_legacy(display->drm, i, tv_format_names);
 
 	drm_object_attach_property(&connector->base,
-				   i915->drm.mode_config.legacy_tv_mode_property,
+				   display->drm->mode_config.legacy_tv_mode_property,
 				   conn_state->tv.legacy_mode);
 	drm_object_attach_property(&connector->base,
-				   i915->drm.mode_config.tv_left_margin_property,
+				   display->drm->mode_config.tv_left_margin_property,
 				   conn_state->tv.margins.left);
 	drm_object_attach_property(&connector->base,
-				   i915->drm.mode_config.tv_top_margin_property,
+				   display->drm->mode_config.tv_top_margin_property,
 				   conn_state->tv.margins.top);
 	drm_object_attach_property(&connector->base,
-				   i915->drm.mode_config.tv_right_margin_property,
+				   display->drm->mode_config.tv_right_margin_property,
 				   conn_state->tv.margins.right);
 	drm_object_attach_property(&connector->base,
-				   i915->drm.mode_config.tv_bottom_margin_property,
+				   display->drm->mode_config.tv_bottom_margin_property,
 				   conn_state->tv.margins.bottom);
 }
 
 void
-intel_tv_init(struct drm_i915_private *dev_priv)
+intel_tv_init(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct drm_connector *connector;
 	struct intel_tv *intel_tv;
 	struct intel_encoder *intel_encoder;
 	struct intel_connector *intel_connector;
 	u32 tv_dac_on, tv_dac_off, save_tv_dac;
 
-	if ((intel_de_read(dev_priv, TV_CTL) & TV_FUSE_STATE_MASK) == TV_FUSE_STATE_DISABLED)
+	if ((intel_de_read(display, TV_CTL) & TV_FUSE_STATE_MASK) == TV_FUSE_STATE_DISABLED)
 		return;
 
 	if (!intel_bios_is_tv_present(display)) {
-		drm_dbg_kms(&dev_priv->drm, "Integrated TV is not present.\n");
+		drm_dbg_kms(display->drm, "Integrated TV is not present.\n");
 		return;
 	}
 
@@ -1949,15 +1953,15 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	 * Sanity check the TV output by checking to see if the
 	 * DAC register holds a value
 	 */
-	save_tv_dac = intel_de_read(dev_priv, TV_DAC);
+	save_tv_dac = intel_de_read(display, TV_DAC);
 
-	intel_de_write(dev_priv, TV_DAC, save_tv_dac | TVDAC_STATE_CHG_EN);
-	tv_dac_on = intel_de_read(dev_priv, TV_DAC);
+	intel_de_write(display, TV_DAC, save_tv_dac | TVDAC_STATE_CHG_EN);
+	tv_dac_on = intel_de_read(display, TV_DAC);
 
-	intel_de_write(dev_priv, TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
-	tv_dac_off = intel_de_read(dev_priv, TV_DAC);
+	intel_de_write(display, TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
+	tv_dac_off = intel_de_read(display, TV_DAC);
 
-	intel_de_write(dev_priv, TV_DAC, save_tv_dac);
+	intel_de_write(display, TV_DAC, save_tv_dac);
 
 	/*
 	 * If the register does not hold the state change enable
@@ -1995,10 +1999,11 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
 	intel_connector->base.polled = intel_connector->polled;
 
-	drm_connector_init(&dev_priv->drm, connector, &intel_tv_connector_funcs,
+	drm_connector_init(display->drm, connector, &intel_tv_connector_funcs,
 			   DRM_MODE_CONNECTOR_SVIDEO);
 
-	drm_encoder_init(&dev_priv->drm, &intel_encoder->base, &intel_tv_enc_funcs,
+	drm_encoder_init(display->drm, &intel_encoder->base,
+			 &intel_tv_enc_funcs,
 			 DRM_MODE_ENCODER_TVDAC, "TV");
 
 	intel_encoder->compute_config = intel_tv_compute_config;
diff --git a/drivers/gpu/drm/i915/display/intel_tv.h b/drivers/gpu/drm/i915/display/intel_tv.h
index f08827b8bf2b..0f280f69e73c 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.h
+++ b/drivers/gpu/drm/i915/display/intel_tv.h
@@ -6,12 +6,12 @@
 #ifndef __INTEL_TV_H__
 #define __INTEL_TV_H__
 
-struct drm_i915_private;
+struct intel_display;
 
 #ifdef I915
-void intel_tv_init(struct drm_i915_private *dev_priv);
+void intel_tv_init(struct intel_display *display);
 #else
-static inline void intel_tv_init(struct drm_i915_private *dev_priv)
+static inline void intel_tv_init(struct intel_display *display)
 {
 }
 #endif
-- 
2.39.2

