Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FE0695420
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 23:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B20F10E76B;
	Mon, 13 Feb 2023 22:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A79610E765
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 22:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676328792; x=1707864792;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OYvWcG7WC0YUuxXnoddaJsTTQhhD9+pWWPJzNc1iRMc=;
 b=G4nuHvGAkiEaz+3qNilnNrrNCssX+SsR7/Ct2uDL3ezlLeY1/FcYfSCs
 ri4vTmhQA5etVF3YHKtvhuLp4AmO2MrYvt0UweKytp9JJ321OA6ZxgF9L
 qLAEAOt0HX8dPowMuaZa9fSWR6VVerA2BfsLii7B1lSLoS9oH67bQnJqT
 NeQtM8YdbuTm9jJEFGty3an5k5mJKxQqPWZGBXgzSkiN9BLj2TAiVv10c
 N6j6u9t4+362YNbeCWdRdP92tdQzV3gSq5aV5/VuxtlLBWs0o1B/QfIvk
 Wt/2W20dYRSmu1S33nQ1l730R6AJ6UNh/8aI8avtAgGASHc/x+T/pwWTp A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417237383"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417237383"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 14:53:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757766426"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="757766426"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 13 Feb 2023 14:53:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 00:53:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 00:52:50 +0200
Message-Id: <20230213225258.2127-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/12] drm/i915: s/PIPECONF/TRANSCONF/
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

Rename PIPECONF to TRANSCONF to make it clear what it actually
applies to.

While the usual convention is to pick the earliers name I think
in this case it's more clear to use the later name. Especially
as even the register offset is in the wrong range (0x70000 vs.
0x60000) and thus makes it look like this is per-pipe.

There is one place in gvt that's doing something with TRANSCONF
while iterating with for_each_pipe(). So that might not be doing
the right thing for TRANSCODER_EDP, dunno. Not knowing what it
does I left it as is to avoid breakage.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  16 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  10 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 171 +++++++++---------
 .../i915/display/intel_display_power_well.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   8 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   8 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  16 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
 drivers/gpu/drm/i915/gvt/display.c            |  16 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  14 +-
 drivers/gpu/drm/i915/i915_reg.h               | 106 +++++------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   8 +-
 12 files changed, 192 insertions(+), 191 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index e1fe59ca0892..07897d6f9c53 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -976,11 +976,11 @@ static void gen11_dsi_enable_transcoder(struct intel_encoder *encoder)
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		intel_de_rmw(dev_priv, PIPECONF(dsi_trans), 0, PIPECONF_ENABLE);
+		intel_de_rmw(dev_priv, TRANSCONF(dsi_trans), 0, TRANSCONF_ENABLE);
 
 		/* wait for transcoder to be enabled */
-		if (intel_de_wait_for_set(dev_priv, PIPECONF(dsi_trans),
-					  PIPECONF_STATE_ENABLE, 10))
+		if (intel_de_wait_for_set(dev_priv, TRANSCONF(dsi_trans),
+					  TRANSCONF_STATE_ENABLE, 10))
 			drm_err(&dev_priv->drm,
 				"DSI transcoder not enabled\n");
 	}
@@ -1238,11 +1238,11 @@ static void gen11_dsi_disable_transcoder(struct intel_encoder *encoder)
 		dsi_trans = dsi_port_to_transcoder(port);
 
 		/* disable transcoder */
-		intel_de_rmw(dev_priv, PIPECONF(dsi_trans), PIPECONF_ENABLE, 0);
+		intel_de_rmw(dev_priv, TRANSCONF(dsi_trans), TRANSCONF_ENABLE, 0);
 
 		/* wait for transcoder to be disabled */
-		if (intel_de_wait_for_clear(dev_priv, PIPECONF(dsi_trans),
-					    PIPECONF_STATE_ENABLE, 50))
+		if (intel_de_wait_for_clear(dev_priv, TRANSCONF(dsi_trans),
+					    TRANSCONF_STATE_ENABLE, 50))
 			drm_err(&dev_priv->drm,
 				"DSI trancoder not disabled\n");
 	}
@@ -1662,8 +1662,8 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
 			goto out;
 		}
 
-		tmp = intel_de_read(dev_priv, PIPECONF(dsi_trans));
-		ret = tmp & PIPECONF_ENABLE;
+		tmp = intel_de_read(dev_priv, TRANSCONF(dsi_trans));
+		ret = tmp & TRANSCONF_ENABLE;
 	}
 out:
 	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 4b7f8cd416fe..ef0c7f5b0ad6 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -708,11 +708,11 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 	intel_de_write(dev_priv, BCLRPAT(cpu_transcoder), 0x500050);
 
 	if (DISPLAY_VER(dev_priv) != 2) {
-		u32 pipeconf = intel_de_read(dev_priv, PIPECONF(pipe));
+		u32 transconf = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
 
-		intel_de_write(dev_priv, PIPECONF(pipe),
-			       pipeconf | PIPECONF_FORCE_BORDER);
-		intel_de_posting_read(dev_priv, PIPECONF(pipe));
+		intel_de_write(dev_priv, TRANSCONF(cpu_transcoder),
+			       transconf | TRANSCONF_FORCE_BORDER);
+		intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
 		/* Wait for next Vblank to substitue
 		 * border color for Color info */
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
@@ -721,7 +721,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 			connector_status_connected :
 			connector_status_disconnected;
 
-		intel_de_write(dev_priv, PIPECONF(pipe), pipeconf);
+		intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), transconf);
 	} else {
 		bool restore_vblank = false;
 		int count, detect;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a93f3630e9f8..0aca842df8f7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -396,8 +396,8 @@ intel_wait_for_pipe_off(const struct intel_crtc_state *old_crtc_state)
 		enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
 		/* Wait for the Pipe State to go off */
-		if (intel_de_wait_for_clear(dev_priv, PIPECONF(cpu_transcoder),
-					    PIPECONF_STATE_ENABLE, 100))
+		if (intel_de_wait_for_clear(dev_priv, TRANSCONF(cpu_transcoder),
+					    TRANSCONF_STATE_ENABLE, 100))
 			drm_WARN(&dev_priv->drm, 1, "pipe_off wait timed out\n");
 	} else {
 		intel_wait_for_pipe_scanline_stopped(crtc);
@@ -418,8 +418,8 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
 	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
 	if (wakeref) {
-		u32 val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
-		cur_state = !!(val & PIPECONF_ENABLE);
+		u32 val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
+		cur_state = !!(val & TRANSCONF_ENABLE);
 
 		intel_display_power_put(dev_priv, power_domain, wakeref);
 	} else {
@@ -531,15 +531,15 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 		intel_de_rmw(dev_priv, PIPE_ARB_CTL(pipe),
 			     0, PIPE_ARB_USE_PROG_SLOTS);
 
-	reg = PIPECONF(cpu_transcoder);
+	reg = TRANSCONF(cpu_transcoder);
 	val = intel_de_read(dev_priv, reg);
-	if (val & PIPECONF_ENABLE) {
+	if (val & TRANSCONF_ENABLE) {
 		/* we keep both pipes enabled on 830 */
 		drm_WARN_ON(&dev_priv->drm, !IS_I830(dev_priv));
 		return;
 	}
 
-	intel_de_write(dev_priv, reg, val | PIPECONF_ENABLE);
+	intel_de_write(dev_priv, reg, val | TRANSCONF_ENABLE);
 	intel_de_posting_read(dev_priv, reg);
 
 	/*
@@ -570,9 +570,9 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 	 */
 	assert_planes_disabled(crtc);
 
-	reg = PIPECONF(cpu_transcoder);
+	reg = TRANSCONF(cpu_transcoder);
 	val = intel_de_read(dev_priv, reg);
-	if ((val & PIPECONF_ENABLE) == 0)
+	if ((val & TRANSCONF_ENABLE) == 0)
 		return;
 
 	/*
@@ -580,11 +580,11 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 	 * so best keep it disabled when not needed.
 	 */
 	if (old_crtc_state->double_wide)
-		val &= ~PIPECONF_DOUBLE_WIDE;
+		val &= ~TRANSCONF_DOUBLE_WIDE;
 
 	/* Don't disable pipe or pipe PLLs if needed */
 	if (!IS_I830(dev_priv))
-		val &= ~PIPECONF_ENABLE;
+		val &= ~TRANSCONF_ENABLE;
 
 	if (DISPLAY_VER(dev_priv) >= 14)
 		intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder),
@@ -594,7 +594,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
 
 	intel_de_write(dev_priv, reg, val);
-	if ((val & PIPECONF_ENABLE) == 0)
+	if ((val & TRANSCONF_ENABLE) == 0)
 		intel_wait_for_pipe_off(old_crtc_state);
 }
 
@@ -2897,9 +2897,9 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
 
 	if (DISPLAY_VER(dev_priv) >= 9 ||
 	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
-		return intel_de_read(dev_priv, PIPECONF(cpu_transcoder)) & PIPECONF_INTERLACE_MASK_HSW;
+		return intel_de_read(dev_priv, TRANSCONF(cpu_transcoder)) & TRANSCONF_INTERLACE_MASK_HSW;
 	else
-		return intel_de_read(dev_priv, PIPECONF(cpu_transcoder)) & PIPECONF_INTERLACE_MASK;
+		return intel_de_read(dev_priv, TRANSCONF(cpu_transcoder)) & TRANSCONF_INTERLACE_MASK;
 }
 
 static void intel_get_transcoder_timings(struct intel_crtc *crtc,
@@ -2984,7 +2984,8 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 pipeconf = 0;
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 val = 0;
 
 	/*
 	 * - We keep both pipes enabled on 830
@@ -2992,18 +2993,18 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	 * - During fastset the pipe is already enabled and must remain so
 	 */
 	if (IS_I830(dev_priv) || !intel_crtc_needs_modeset(crtc_state))
-		pipeconf |= PIPECONF_ENABLE;
+		val |= TRANSCONF_ENABLE;
 
 	if (crtc_state->double_wide)
-		pipeconf |= PIPECONF_DOUBLE_WIDE;
+		val |= TRANSCONF_DOUBLE_WIDE;
 
 	/* only g4x and later have fancy bpc/dither controls */
 	if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
 	    IS_CHERRYVIEW(dev_priv)) {
 		/* Bspec claims that we can't use dithering for 30bpp pipes. */
 		if (crtc_state->dither && crtc_state->pipe_bpp != 30)
-			pipeconf |= PIPECONF_DITHER_EN |
-				    PIPECONF_DITHER_TYPE_SP;
+			val |= TRANSCONF_DITHER_EN |
+				TRANSCONF_DITHER_TYPE_SP;
 
 		switch (crtc_state->pipe_bpp) {
 		default:
@@ -3011,13 +3012,13 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 			MISSING_CASE(crtc_state->pipe_bpp);
 			fallthrough;
 		case 18:
-			pipeconf |= PIPECONF_BPC_6;
+			val |= TRANSCONF_BPC_6;
 			break;
 		case 24:
-			pipeconf |= PIPECONF_BPC_8;
+			val |= TRANSCONF_BPC_8;
 			break;
 		case 30:
-			pipeconf |= PIPECONF_BPC_10;
+			val |= TRANSCONF_BPC_10;
 			break;
 		}
 	}
@@ -3025,23 +3026,23 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
 		if (DISPLAY_VER(dev_priv) < 4 ||
 		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
-			pipeconf |= PIPECONF_INTERLACE_W_FIELD_INDICATION;
+			val |= TRANSCONF_INTERLACE_W_FIELD_INDICATION;
 		else
-			pipeconf |= PIPECONF_INTERLACE_W_SYNC_SHIFT;
+			val |= TRANSCONF_INTERLACE_W_SYNC_SHIFT;
 	} else {
-		pipeconf |= PIPECONF_INTERLACE_PROGRESSIVE;
+		val |= TRANSCONF_INTERLACE_PROGRESSIVE;
 	}
 
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 	     crtc_state->limited_color_range)
-		pipeconf |= PIPECONF_COLOR_RANGE_SELECT;
+		val |= TRANSCONF_COLOR_RANGE_SELECT;
 
-	pipeconf |= PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
+	val |= TRANSCONF_GAMMA_MODE(crtc_state->gamma_mode);
 
-	pipeconf |= PIPECONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
+	val |= TRANSCONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
 
-	intel_de_write(dev_priv, PIPECONF(crtc->pipe), pipeconf);
-	intel_de_posting_read(dev_priv, PIPECONF(crtc->pipe));
+	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
+	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
 }
 
 static bool i9xx_has_pfit(struct drm_i915_private *dev_priv)
@@ -3200,20 +3201,20 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 
 	ret = false;
 
-	tmp = intel_de_read(dev_priv, PIPECONF(crtc->pipe));
-	if (!(tmp & PIPECONF_ENABLE))
+	tmp = intel_de_read(dev_priv, TRANSCONF(pipe_config->cpu_transcoder));
+	if (!(tmp & TRANSCONF_ENABLE))
 		goto out;
 
 	if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
 	    IS_CHERRYVIEW(dev_priv)) {
-		switch (tmp & PIPECONF_BPC_MASK) {
-		case PIPECONF_BPC_6:
+		switch (tmp & TRANSCONF_BPC_MASK) {
+		case TRANSCONF_BPC_6:
 			pipe_config->pipe_bpp = 18;
 			break;
-		case PIPECONF_BPC_8:
+		case TRANSCONF_BPC_8:
 			pipe_config->pipe_bpp = 24;
 			break;
-		case PIPECONF_BPC_10:
+		case TRANSCONF_BPC_10:
 			pipe_config->pipe_bpp = 30;
 			break;
 		default:
@@ -3223,12 +3224,12 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	}
 
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-	    (tmp & PIPECONF_COLOR_RANGE_SELECT))
+	    (tmp & TRANSCONF_COLOR_RANGE_SELECT))
 		pipe_config->limited_color_range = true;
 
-	pipe_config->gamma_mode = REG_FIELD_GET(PIPECONF_GAMMA_MODE_MASK_I9XX, tmp);
+	pipe_config->gamma_mode = REG_FIELD_GET(TRANSCONF_GAMMA_MODE_MASK_I9XX, tmp);
 
-	pipe_config->framestart_delay = REG_FIELD_GET(PIPECONF_FRAME_START_DELAY_MASK, tmp) + 1;
+	pipe_config->framestart_delay = REG_FIELD_GET(TRANSCONF_FRAME_START_DELAY_MASK, tmp) + 1;
 
 	if (IS_CHERRYVIEW(dev_priv))
 		pipe_config->cgm_mode = intel_de_read(dev_priv,
@@ -3238,7 +3239,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	intel_color_get_config(pipe_config);
 
 	if (DISPLAY_VER(dev_priv) < 4)
-		pipe_config->double_wide = tmp & PIPECONF_DOUBLE_WIDE;
+		pipe_config->double_wide = tmp & TRANSCONF_DOUBLE_WIDE;
 
 	intel_get_transcoder_timings(crtc, pipe_config);
 	intel_get_pipe_src_size(crtc, pipe_config);
@@ -3308,7 +3309,7 @@ void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 val = 0;
 
 	/*
@@ -3316,7 +3317,7 @@ void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	 * - During fastset the pipe is already enabled and must remain so
 	 */
 	if (!intel_crtc_needs_modeset(crtc_state))
-		val |= PIPECONF_ENABLE;
+		val |= TRANSCONF_ENABLE;
 
 	switch (crtc_state->pipe_bpp) {
 	default:
@@ -3324,26 +3325,26 @@ void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 		MISSING_CASE(crtc_state->pipe_bpp);
 		fallthrough;
 	case 18:
-		val |= PIPECONF_BPC_6;
+		val |= TRANSCONF_BPC_6;
 		break;
 	case 24:
-		val |= PIPECONF_BPC_8;
+		val |= TRANSCONF_BPC_8;
 		break;
 	case 30:
-		val |= PIPECONF_BPC_10;
+		val |= TRANSCONF_BPC_10;
 		break;
 	case 36:
-		val |= PIPECONF_BPC_12;
+		val |= TRANSCONF_BPC_12;
 		break;
 	}
 
 	if (crtc_state->dither)
-		val |= PIPECONF_DITHER_EN | PIPECONF_DITHER_TYPE_SP;
+		val |= TRANSCONF_DITHER_EN | TRANSCONF_DITHER_TYPE_SP;
 
 	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
-		val |= PIPECONF_INTERLACE_IF_ID_ILK;
+		val |= TRANSCONF_INTERLACE_IF_ID_ILK;
 	else
-		val |= PIPECONF_INTERLACE_PF_PD_ILK;
+		val |= TRANSCONF_INTERLACE_PF_PD_ILK;
 
 	/*
 	 * This would end up with an odd purple hue over
@@ -3354,18 +3355,18 @@ void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 
 	if (crtc_state->limited_color_range &&
 	    !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
-		val |= PIPECONF_COLOR_RANGE_SELECT;
+		val |= TRANSCONF_COLOR_RANGE_SELECT;
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)
-		val |= PIPECONF_OUTPUT_COLORSPACE_YUV709;
+		val |= TRANSCONF_OUTPUT_COLORSPACE_YUV709;
 
-	val |= PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
+	val |= TRANSCONF_GAMMA_MODE(crtc_state->gamma_mode);
 
-	val |= PIPECONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
-	val |= PIPECONF_MSA_TIMING_DELAY(crtc_state->msa_timing_delay);
+	val |= TRANSCONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
+	val |= TRANSCONF_MSA_TIMING_DELAY(crtc_state->msa_timing_delay);
 
-	intel_de_write(dev_priv, PIPECONF(pipe), val);
-	intel_de_posting_read(dev_priv, PIPECONF(pipe));
+	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
+	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
 }
 
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
@@ -3380,22 +3381,22 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
 	 * - During fastset the pipe is already enabled and must remain so
 	 */
 	if (!intel_crtc_needs_modeset(crtc_state))
-		val |= PIPECONF_ENABLE;
+		val |= TRANSCONF_ENABLE;
 
 	if (IS_HASWELL(dev_priv) && crtc_state->dither)
-		val |= PIPECONF_DITHER_EN | PIPECONF_DITHER_TYPE_SP;
+		val |= TRANSCONF_DITHER_EN | TRANSCONF_DITHER_TYPE_SP;
 
 	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
-		val |= PIPECONF_INTERLACE_IF_ID_ILK;
+		val |= TRANSCONF_INTERLACE_IF_ID_ILK;
 	else
-		val |= PIPECONF_INTERLACE_PF_PD_ILK;
+		val |= TRANSCONF_INTERLACE_PF_PD_ILK;
 
 	if (IS_HASWELL(dev_priv) &&
 	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)
-		val |= PIPECONF_OUTPUT_COLORSPACE_YUV_HSW;
+		val |= TRANSCONF_OUTPUT_COLORSPACE_YUV_HSW;
 
-	intel_de_write(dev_priv, PIPECONF(cpu_transcoder), val);
-	intel_de_posting_read(dev_priv, PIPECONF(cpu_transcoder));
+	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
+	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
 }
 
 static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
@@ -3620,33 +3621,33 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	pipe_config->shared_dpll = NULL;
 
 	ret = false;
-	tmp = intel_de_read(dev_priv, PIPECONF(crtc->pipe));
-	if (!(tmp & PIPECONF_ENABLE))
+	tmp = intel_de_read(dev_priv, TRANSCONF(pipe_config->cpu_transcoder));
+	if (!(tmp & TRANSCONF_ENABLE))
 		goto out;
 
-	switch (tmp & PIPECONF_BPC_MASK) {
-	case PIPECONF_BPC_6:
+	switch (tmp & TRANSCONF_BPC_MASK) {
+	case TRANSCONF_BPC_6:
 		pipe_config->pipe_bpp = 18;
 		break;
-	case PIPECONF_BPC_8:
+	case TRANSCONF_BPC_8:
 		pipe_config->pipe_bpp = 24;
 		break;
-	case PIPECONF_BPC_10:
+	case TRANSCONF_BPC_10:
 		pipe_config->pipe_bpp = 30;
 		break;
-	case PIPECONF_BPC_12:
+	case TRANSCONF_BPC_12:
 		pipe_config->pipe_bpp = 36;
 		break;
 	default:
 		break;
 	}
 
-	if (tmp & PIPECONF_COLOR_RANGE_SELECT)
+	if (tmp & TRANSCONF_COLOR_RANGE_SELECT)
 		pipe_config->limited_color_range = true;
 
-	switch (tmp & PIPECONF_OUTPUT_COLORSPACE_MASK) {
-	case PIPECONF_OUTPUT_COLORSPACE_YUV601:
-	case PIPECONF_OUTPUT_COLORSPACE_YUV709:
+	switch (tmp & TRANSCONF_OUTPUT_COLORSPACE_MASK) {
+	case TRANSCONF_OUTPUT_COLORSPACE_YUV601:
+	case TRANSCONF_OUTPUT_COLORSPACE_YUV709:
 		pipe_config->output_format = INTEL_OUTPUT_FORMAT_YCBCR444;
 		break;
 	default:
@@ -3654,11 +3655,11 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 		break;
 	}
 
-	pipe_config->gamma_mode = REG_FIELD_GET(PIPECONF_GAMMA_MODE_MASK_ILK, tmp);
+	pipe_config->gamma_mode = REG_FIELD_GET(TRANSCONF_GAMMA_MODE_MASK_ILK, tmp);
 
-	pipe_config->framestart_delay = REG_FIELD_GET(PIPECONF_FRAME_START_DELAY_MASK, tmp) + 1;
+	pipe_config->framestart_delay = REG_FIELD_GET(TRANSCONF_FRAME_START_DELAY_MASK, tmp) + 1;
 
-	pipe_config->msa_timing_delay = REG_FIELD_GET(PIPECONF_MSA_TIMING_DELAY_MASK, tmp);
+	pipe_config->msa_timing_delay = REG_FIELD_GET(TRANSCONF_MSA_TIMING_DELAY_MASK, tmp);
 
 	pipe_config->csc_mode = intel_de_read(dev_priv,
 					      PIPE_CSC_MODE(crtc->pipe));
@@ -3935,9 +3936,9 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 			pipe_config->pch_pfit.force_thru = true;
 	}
 
-	tmp = intel_de_read(dev_priv, PIPECONF(pipe_config->cpu_transcoder));
+	tmp = intel_de_read(dev_priv, TRANSCONF(pipe_config->cpu_transcoder));
 
-	return tmp & PIPECONF_ENABLE;
+	return tmp & TRANSCONF_ENABLE;
 }
 
 static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
@@ -4041,9 +4042,9 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	if (IS_HASWELL(dev_priv)) {
 		u32 tmp = intel_de_read(dev_priv,
-					PIPECONF(pipe_config->cpu_transcoder));
+					TRANSCONF(pipe_config->cpu_transcoder));
 
-		if (tmp & PIPECONF_OUTPUT_COLORSPACE_YUV_HSW)
+		if (tmp & TRANSCONF_OUTPUT_COLORSPACE_YUV_HSW)
 			pipe_config->output_format = INTEL_OUTPUT_FORMAT_YCBCR444;
 		else
 			pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
@@ -8855,8 +8856,8 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		udelay(150); /* wait for warmup */
 	}
 
-	intel_de_write(dev_priv, PIPECONF(pipe), PIPECONF_ENABLE);
-	intel_de_posting_read(dev_priv, PIPECONF(pipe));
+	intel_de_write(dev_priv, TRANSCONF(pipe), TRANSCONF_ENABLE);
+	intel_de_posting_read(dev_priv, TRANSCONF(pipe));
 
 	intel_wait_for_pipe_scanline_moving(crtc);
 }
@@ -8879,8 +8880,8 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_de_read(dev_priv, CURCNTR(PIPE_B)) & MCURSOR_MODE_MASK);
 
-	intel_de_write(dev_priv, PIPECONF(pipe), 0);
-	intel_de_posting_read(dev_priv, PIPECONF(pipe));
+	intel_de_write(dev_priv, TRANSCONF(pipe), 0);
+	intel_de_posting_read(dev_priv, TRANSCONF(pipe));
 
 	intel_wait_for_pipe_scanline_stopped(crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 8710dd41ffd4..b34851e42614 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1033,9 +1033,9 @@ static bool i9xx_always_on_power_well_enabled(struct drm_i915_private *dev_priv,
 static void i830_pipes_power_well_enable(struct drm_i915_private *dev_priv,
 					 struct i915_power_well *power_well)
 {
-	if ((intel_de_read(dev_priv, PIPECONF(PIPE_A)) & PIPECONF_ENABLE) == 0)
+	if ((intel_de_read(dev_priv, TRANSCONF(PIPE_A)) & TRANSCONF_ENABLE) == 0)
 		i830_enable_pipe(dev_priv, PIPE_A);
-	if ((intel_de_read(dev_priv, PIPECONF(PIPE_B)) & PIPECONF_ENABLE) == 0)
+	if ((intel_de_read(dev_priv, TRANSCONF(PIPE_B)) & TRANSCONF_ENABLE) == 0)
 		i830_enable_pipe(dev_priv, PIPE_B);
 }
 
@@ -1049,8 +1049,8 @@ static void i830_pipes_power_well_disable(struct drm_i915_private *dev_priv,
 static bool i830_pipes_power_well_enabled(struct drm_i915_private *dev_priv,
 					  struct i915_power_well *power_well)
 {
-	return intel_de_read(dev_priv, PIPECONF(PIPE_A)) & PIPECONF_ENABLE &&
-		intel_de_read(dev_priv, PIPECONF(PIPE_B)) & PIPECONF_ENABLE;
+	return intel_de_read(dev_priv, TRANSCONF(PIPE_A)) & TRANSCONF_ENABLE &&
+		intel_de_read(dev_priv, TRANSCONF(PIPE_B)) & TRANSCONF_ENABLE;
 }
 
 static void i830_pipes_power_well_sync_hw(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 29c6421cd666..fe4c531a2574 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -71,18 +71,18 @@ intel_drrs_set_refresh_rate_pipeconf(struct intel_crtc *crtc,
 	u32 val, bit;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		bit = PIPECONF_REFRESH_RATE_ALT_VLV;
+		bit = TRANSCONF_REFRESH_RATE_ALT_VLV;
 	else
-		bit = PIPECONF_REFRESH_RATE_ALT_ILK;
+		bit = TRANSCONF_REFRESH_RATE_ALT_ILK;
 
-	val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
+	val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
 
 	if (refresh_rate == DRRS_REFRESH_RATE_LOW)
 		val |= bit;
 	else
 		val &= ~bit;
 
-	intel_de_write(dev_priv, PIPECONF(cpu_transcoder), val);
+	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index f62d9a931349..091d4d36d9de 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -902,7 +902,7 @@ void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
 	temp = intel_de_read(dev_priv, reg);
 	temp &= ~(FDI_DP_PORT_WIDTH_MASK | (0x7 << 16));
 	temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
-	temp |= (intel_de_read(dev_priv, PIPECONF(pipe)) & PIPECONF_BPC_MASK) << 11;
+	temp |= (intel_de_read(dev_priv, TRANSCONF(pipe)) & TRANSCONF_BPC_MASK) << 11;
 	intel_de_write(dev_priv, reg, temp | FDI_RX_PLL_ENABLE);
 
 	intel_de_posting_read(dev_priv, reg);
@@ -958,7 +958,7 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
 	reg = FDI_RX_CTL(pipe);
 	temp = intel_de_read(dev_priv, reg);
 	temp &= ~(0x7 << 16);
-	temp |= (intel_de_read(dev_priv, PIPECONF(pipe)) & PIPECONF_BPC_MASK) << 11;
+	temp |= (intel_de_read(dev_priv, TRANSCONF(pipe)) & TRANSCONF_BPC_MASK) << 11;
 	intel_de_write(dev_priv, reg, temp & ~FDI_RX_ENABLE);
 
 	intel_de_posting_read(dev_priv, reg);
@@ -982,9 +982,9 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
 		temp &= ~FDI_LINK_TRAIN_NONE;
 		temp |= FDI_LINK_TRAIN_PATTERN_1;
 	}
-	/* BPC in FDI rx is consistent with that in PIPECONF */
+	/* BPC in FDI rx is consistent with that in TRANSCONF */
 	temp &= ~(0x07 << 16);
-	temp |= (intel_de_read(dev_priv, PIPECONF(pipe)) & PIPECONF_BPC_MASK) << 11;
+	temp |= (intel_de_read(dev_priv, TRANSCONF(pipe)) & TRANSCONF_BPC_MASK) << 11;
 	intel_de_write(dev_priv, reg, temp);
 
 	intel_de_posting_read(dev_priv, reg);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index e55bc4763278..c1d336f39770 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -267,7 +267,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 
 	reg = PCH_TRANSCONF(pipe);
 	val = intel_de_read(dev_priv, reg);
-	pipeconf_val = intel_de_read(dev_priv, PIPECONF(pipe));
+	pipeconf_val = intel_de_read(dev_priv, TRANSCONF(pipe));
 
 	if (HAS_PCH_IBX(dev_priv)) {
 		/* Configure frame start delay to match the CPU */
@@ -279,15 +279,15 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 		 * that in pipeconf reg. For HDMI we must use 8bpc
 		 * here for both 8bpc and 12bpc.
 		 */
-		val &= ~PIPECONF_BPC_MASK;
+		val &= ~TRANSCONF_BPC_MASK;
 		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-			val |= PIPECONF_BPC_8;
+			val |= TRANSCONF_BPC_8;
 		else
-			val |= pipeconf_val & PIPECONF_BPC_MASK;
+			val |= pipeconf_val & TRANSCONF_BPC_MASK;
 	}
 
 	val &= ~TRANS_INTERLACE_MASK;
-	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_ILK) == PIPECONF_INTERLACE_IF_ID_ILK) {
+	if ((pipeconf_val & TRANSCONF_INTERLACE_MASK_ILK) == TRANSCONF_INTERLACE_IF_ID_ILK) {
 		if (HAS_PCH_IBX(dev_priv) &&
 		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
 			val |= TRANS_INTERLACE_LEGACY_VSYNC_IBX;
@@ -415,7 +415,7 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 	    intel_crtc_has_dp_encoder(crtc_state)) {
 		const struct drm_display_mode *adjusted_mode =
 			&crtc_state->hw.adjusted_mode;
-		u32 bpc = (intel_de_read(dev_priv, PIPECONF(pipe)) & PIPECONF_BPC_MASK) >> 5;
+		u32 bpc = (intel_de_read(dev_priv, TRANSCONF(pipe)) & TRANSCONF_BPC_MASK) >> 5;
 		i915_reg_t reg = TRANS_DP_CTL(pipe);
 		enum port port;
 
@@ -566,9 +566,9 @@ static void lpt_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
 
 	val = TRANS_ENABLE;
-	pipeconf_val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
+	pipeconf_val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
 
-	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_HSW) == PIPECONF_INTERLACE_IF_ID_ILK)
+	if ((pipeconf_val & TRANSCONF_INTERLACE_MASK_HSW) == TRANSCONF_INTERLACE_IF_ID_ILK)
 		val |= TRANS_INTERLACE_INTERLACED;
 	else
 		val |= TRANS_INTERLACE_PROGRESSIVE;
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 2c945a949ad2..8d2e6e151ba0 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1000,7 +1000,7 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 		 */
 		if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 		    port == PORT_C)
-			enabled = intel_de_read(dev_priv, PIPECONF(PIPE_B)) & PIPECONF_ENABLE;
+			enabled = intel_de_read(dev_priv, TRANSCONF(PIPE_B)) & TRANSCONF_ENABLE;
 
 		/* Try command mode if video mode not enabled */
 		if (!enabled) {
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 4d898b14de93..e0c5dfb788eb 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -63,7 +63,7 @@ static int edp_pipe_is_enabled(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 
-	if (!(vgpu_vreg_t(vgpu, PIPECONF(_PIPE_EDP)) & PIPECONF_ENABLE))
+	if (!(vgpu_vreg_t(vgpu, TRANSCONF(TRANSCODER_EDP)) & TRANSCONF_ENABLE))
 		return 0;
 
 	if (!(vgpu_vreg(vgpu, _TRANS_DDI_FUNC_CTL_EDP) & TRANS_DDI_FUNC_ENABLE))
@@ -79,7 +79,7 @@ int pipe_is_enabled(struct intel_vgpu *vgpu, int pipe)
 			pipe < PIPE_A || pipe >= I915_MAX_PIPES))
 		return -EINVAL;
 
-	if (vgpu_vreg_t(vgpu, PIPECONF(pipe)) & PIPECONF_ENABLE)
+	if (vgpu_vreg_t(vgpu, TRANSCONF(pipe)) & TRANSCONF_ENABLE)
 		return 1;
 
 	if (edp_pipe_is_enabled(vgpu) &&
@@ -187,8 +187,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			  GEN8_DE_PORT_HOTPLUG(HPD_PORT_C));
 
 		for_each_pipe(dev_priv, pipe) {
-			vgpu_vreg_t(vgpu, PIPECONF(pipe)) &=
-				~(PIPECONF_ENABLE | PIPECONF_STATE_ENABLE);
+			vgpu_vreg_t(vgpu, TRANSCONF(pipe)) &=
+				~(TRANSCONF_ENABLE | TRANSCONF_STATE_ENABLE);
 			vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &= ~DISP_ENABLE;
 			vgpu_vreg_t(vgpu, SPRCTL(pipe)) &= ~SPRITE_ENABLE;
 			vgpu_vreg_t(vgpu, CURCNTR(pipe)) &= ~MCURSOR_MODE_MASK;
@@ -248,8 +248,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		 *   TRANSCODER_A can be enabled. PORT_x depends on the input of
 		 *   setup_virtual_dp_monitor.
 		 */
-		vgpu_vreg_t(vgpu, PIPECONF(PIPE_A)) |= PIPECONF_ENABLE;
-		vgpu_vreg_t(vgpu, PIPECONF(PIPE_A)) |= PIPECONF_STATE_ENABLE;
+		vgpu_vreg_t(vgpu, TRANSCONF(TRANSCODER_A)) |= TRANSCONF_ENABLE;
+		vgpu_vreg_t(vgpu, TRANSCONF(TRANSCODER_A)) |= TRANSCONF_STATE_ENABLE;
 
 		/*
 		 * Golden M/N are calculated based on:
@@ -506,7 +506,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, CURCNTR(pipe)) |= MCURSOR_MODE_DISABLE;
 	}
 
-	vgpu_vreg_t(vgpu, PIPECONF(PIPE_A)) |= PIPECONF_ENABLE;
+	vgpu_vreg_t(vgpu, TRANSCONF(TRANSCODER_A)) |= TRANSCONF_ENABLE;
 }
 
 static void clean_virtual_dp_monitor(struct intel_vgpu *vgpu, int port_num)
@@ -584,7 +584,7 @@ static int setup_virtual_dp_monitor(struct intel_vgpu *vgpu, int port_num,
  * @turnon: Turn ON/OFF vblank_timer
  *
  * This function is used to turn on/off or update the per-vGPU vblank_timer
- * when PIPECONF is enabled or disabled. vblank_timer period is also updated
+ * when TRANSCONF is enabled or disabled. vblank_timer period is also updated
  * if guest changed the refresh rate.
  *
  */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index eed15fbc7069..3c8e0d198c4f 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -697,12 +697,12 @@ static int pipeconf_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 	write_vreg(vgpu, offset, p_data, bytes);
 	data = vgpu_vreg(vgpu, offset);
 
-	if (data & PIPECONF_ENABLE) {
-		vgpu_vreg(vgpu, offset) |= PIPECONF_STATE_ENABLE;
+	if (data & TRANSCONF_ENABLE) {
+		vgpu_vreg(vgpu, offset) |= TRANSCONF_STATE_ENABLE;
 		vgpu_update_refresh_rate(vgpu);
 		vgpu_update_vblank_emulation(vgpu, true);
 	} else {
-		vgpu_vreg(vgpu, offset) &= ~PIPECONF_STATE_ENABLE;
+		vgpu_vreg(vgpu, offset) &= ~TRANSCONF_STATE_ENABLE;
 		vgpu_update_vblank_emulation(vgpu, false);
 	}
 	return 0;
@@ -2262,10 +2262,10 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_DFH(GEN7_HALF_SLICE_CHICKEN1, D_ALL, F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
 
 	/* display */
-	MMIO_DH(PIPECONF(PIPE_A), D_ALL, NULL, pipeconf_mmio_write);
-	MMIO_DH(PIPECONF(PIPE_B), D_ALL, NULL, pipeconf_mmio_write);
-	MMIO_DH(PIPECONF(PIPE_C), D_ALL, NULL, pipeconf_mmio_write);
-	MMIO_DH(PIPECONF(_PIPE_EDP), D_ALL, NULL, pipeconf_mmio_write);
+	MMIO_DH(TRANSCONF(TRANSCODER_A), D_ALL, NULL, pipeconf_mmio_write);
+	MMIO_DH(TRANSCONF(TRANSCODER_B), D_ALL, NULL, pipeconf_mmio_write);
+	MMIO_DH(TRANSCONF(TRANSCODER_C), D_ALL, NULL, pipeconf_mmio_write);
+	MMIO_DH(TRANSCONF(TRANSCODER_EDP), D_ALL, NULL, pipeconf_mmio_write);
 	MMIO_DH(DSPSURF(PIPE_A), D_ALL, NULL, pri_surf_mmio_write);
 	MMIO_DH(REG_50080(PIPE_A, PLANE_PRIMARY), D_ALL, NULL,
 		reg50080_mmio_write);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 28b1226688b8..04de4d0671b7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3444,61 +3444,61 @@
 #define _PIPEADSL		0x70000
 #define   PIPEDSL_CURR_FIELD	REG_BIT(31) /* ctg+ */
 #define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
-#define _PIPEACONF		0x70008
-#define   PIPECONF_ENABLE			REG_BIT(31)
-#define   PIPECONF_DOUBLE_WIDE			REG_BIT(30) /* pre-i965 */
-#define   PIPECONF_STATE_ENABLE			REG_BIT(30) /* i965+ */
-#define   PIPECONF_DSI_PLL_LOCKED		REG_BIT(29) /* vlv & pipe A only */
-#define   PIPECONF_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27) /* pre-hsw */
-#define   PIPECONF_FRAME_START_DELAY(x)		REG_FIELD_PREP(PIPECONF_FRAME_START_DELAY_MASK, (x)) /* pre-hsw: 0-3 */
-#define   PIPECONF_PIPE_LOCKED			REG_BIT(25)
-#define   PIPECONF_FORCE_BORDER			REG_BIT(25)
-#define   PIPECONF_GAMMA_MODE_MASK_I9XX		REG_BIT(24) /* gmch */
-#define   PIPECONF_GAMMA_MODE_MASK_ILK		REG_GENMASK(25, 24) /* ilk-ivb */
-#define   PIPECONF_GAMMA_MODE_8BIT		REG_FIELD_PREP(PIPECONF_GAMMA_MODE_MASK, 0)
-#define   PIPECONF_GAMMA_MODE_10BIT		REG_FIELD_PREP(PIPECONF_GAMMA_MODE_MASK, 1)
-#define   PIPECONF_GAMMA_MODE_12BIT		REG_FIELD_PREP(PIPECONF_GAMMA_MODE_MASK_ILK, 2) /* ilk-ivb */
-#define   PIPECONF_GAMMA_MODE_SPLIT		REG_FIELD_PREP(PIPECONF_GAMMA_MODE_MASK_ILK, 3) /* ivb */
-#define   PIPECONF_GAMMA_MODE(x)		REG_FIELD_PREP(PIPECONF_GAMMA_MODE_MASK_ILK, (x)) /* pass in GAMMA_MODE_MODE_* */
-#define   PIPECONF_INTERLACE_MASK		REG_GENMASK(23, 21) /* gen3+ */
-#define   PIPECONF_INTERLACE_PROGRESSIVE	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK, 0)
-#define   PIPECONF_INTERLACE_W_SYNC_SHIFT_PANEL	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK, 4) /* gen4 only */
-#define   PIPECONF_INTERLACE_W_SYNC_SHIFT	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK, 5) /* gen4 only */
-#define   PIPECONF_INTERLACE_W_FIELD_INDICATION	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK, 6)
-#define   PIPECONF_INTERLACE_FIELD_0_ONLY	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK, 7) /* gen3 only */
+#define _TRANSACONF		0x70008
+#define   TRANSCONF_ENABLE			REG_BIT(31)
+#define   TRANSCONF_DOUBLE_WIDE			REG_BIT(30) /* pre-i965 */
+#define   TRANSCONF_STATE_ENABLE			REG_BIT(30) /* i965+ */
+#define   TRANSCONF_DSI_PLL_LOCKED		REG_BIT(29) /* vlv & pipe A only */
+#define   TRANSCONF_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27) /* pre-hsw */
+#define   TRANSCONF_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANSCONF_FRAME_START_DELAY_MASK, (x)) /* pre-hsw: 0-3 */
+#define   TRANSCONF_PIPE_LOCKED			REG_BIT(25)
+#define   TRANSCONF_FORCE_BORDER			REG_BIT(25)
+#define   TRANSCONF_GAMMA_MODE_MASK_I9XX		REG_BIT(24) /* gmch */
+#define   TRANSCONF_GAMMA_MODE_MASK_ILK		REG_GENMASK(25, 24) /* ilk-ivb */
+#define   TRANSCONF_GAMMA_MODE_8BIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK, 0)
+#define   TRANSCONF_GAMMA_MODE_10BIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK, 1)
+#define   TRANSCONF_GAMMA_MODE_12BIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, 2) /* ilk-ivb */
+#define   TRANSCONF_GAMMA_MODE_SPLIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, 3) /* ivb */
+#define   TRANSCONF_GAMMA_MODE(x)		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, (x)) /* pass in GAMMA_MODE_MODE_* */
+#define   TRANSCONF_INTERLACE_MASK		REG_GENMASK(23, 21) /* gen3+ */
+#define   TRANSCONF_INTERLACE_PROGRESSIVE	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 0)
+#define   TRANSCONF_INTERLACE_W_SYNC_SHIFT_PANEL	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 4) /* gen4 only */
+#define   TRANSCONF_INTERLACE_W_SYNC_SHIFT	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 5) /* gen4 only */
+#define   TRANSCONF_INTERLACE_W_FIELD_INDICATION	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 6)
+#define   TRANSCONF_INTERLACE_FIELD_0_ONLY	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 7) /* gen3 only */
 /*
  * ilk+: PF/D=progressive fetch/display, IF/D=interlaced fetch/display,
  * DBL=power saving pixel doubling, PF-ID* requires panel fitter
  */
-#define   PIPECONF_INTERLACE_MASK_ILK		REG_GENMASK(23, 21) /* ilk+ */
-#define   PIPECONF_INTERLACE_MASK_HSW		REG_GENMASK(22, 21) /* hsw+ */
-#define   PIPECONF_INTERLACE_PF_PD_ILK		REG_FIELD_PREP(PIPECONF_INTERLACE_MASK_ILK, 0)
-#define   PIPECONF_INTERLACE_PF_ID_ILK		REG_FIELD_PREP(PIPECONF_INTERLACE_MASK_ILK, 1)
-#define   PIPECONF_INTERLACE_IF_ID_ILK		REG_FIELD_PREP(PIPECONF_INTERLACE_MASK_ILK, 3)
-#define   PIPECONF_INTERLACE_IF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK_ILK, 4) /* ilk/snb only */
-#define   PIPECONF_INTERLACE_PF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK_ILK, 5) /* ilk/snb only */
-#define   PIPECONF_REFRESH_RATE_ALT_ILK		REG_BIT(20)
-#define   PIPECONF_MSA_TIMING_DELAY_MASK	REG_GENMASK(19, 18) /* ilk/snb/ivb */
-#define   PIPECONF_MSA_TIMING_DELAY(x)		REG_FIELD_PREP(PIPECONF_MSA_TIMING_DELAY_MASK, (x))
-#define   PIPECONF_CXSR_DOWNCLOCK		REG_BIT(16)
-#define   PIPECONF_REFRESH_RATE_ALT_VLV		REG_BIT(14)
-#define   PIPECONF_COLOR_RANGE_SELECT		REG_BIT(13)
-#define   PIPECONF_OUTPUT_COLORSPACE_MASK	REG_GENMASK(12, 11) /* ilk-ivb */
-#define   PIPECONF_OUTPUT_COLORSPACE_RGB	REG_FIELD_PREP(PIPECONF_OUTPUT_COLORSPACE_MASK, 0) /* ilk-ivb */
-#define   PIPECONF_OUTPUT_COLORSPACE_YUV601	REG_FIELD_PREP(PIPECONF_OUTPUT_COLORSPACE_MASK, 1) /* ilk-ivb */
-#define   PIPECONF_OUTPUT_COLORSPACE_YUV709	REG_FIELD_PREP(PIPECONF_OUTPUT_COLORSPACE_MASK, 2) /* ilk-ivb */
-#define   PIPECONF_OUTPUT_COLORSPACE_YUV_HSW	REG_BIT(11) /* hsw only */
-#define   PIPECONF_BPC_MASK			REG_GENMASK(7, 5) /* ctg-ivb */
-#define   PIPECONF_BPC_8			REG_FIELD_PREP(PIPECONF_BPC_MASK, 0)
-#define   PIPECONF_BPC_10			REG_FIELD_PREP(PIPECONF_BPC_MASK, 1)
-#define   PIPECONF_BPC_6			REG_FIELD_PREP(PIPECONF_BPC_MASK, 2)
-#define   PIPECONF_BPC_12			REG_FIELD_PREP(PIPECONF_BPC_MASK, 3)
-#define   PIPECONF_DITHER_EN			REG_BIT(4)
-#define   PIPECONF_DITHER_TYPE_MASK		REG_GENMASK(3, 2)
-#define   PIPECONF_DITHER_TYPE_SP		REG_FIELD_PREP(PIPECONF_DITHER_TYPE_MASK, 0)
-#define   PIPECONF_DITHER_TYPE_ST1		REG_FIELD_PREP(PIPECONF_DITHER_TYPE_MASK, 1)
-#define   PIPECONF_DITHER_TYPE_ST2		REG_FIELD_PREP(PIPECONF_DITHER_TYPE_MASK, 2)
-#define   PIPECONF_DITHER_TYPE_TEMP		REG_FIELD_PREP(PIPECONF_DITHER_TYPE_MASK, 3)
+#define   TRANSCONF_INTERLACE_MASK_ILK		REG_GENMASK(23, 21) /* ilk+ */
+#define   TRANSCONF_INTERLACE_MASK_HSW		REG_GENMASK(22, 21) /* hsw+ */
+#define   TRANSCONF_INTERLACE_PF_PD_ILK		REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 0)
+#define   TRANSCONF_INTERLACE_PF_ID_ILK		REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 1)
+#define   TRANSCONF_INTERLACE_IF_ID_ILK		REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 3)
+#define   TRANSCONF_INTERLACE_IF_ID_DBL_ILK	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 4) /* ilk/snb only */
+#define   TRANSCONF_INTERLACE_PF_ID_DBL_ILK	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 5) /* ilk/snb only */
+#define   TRANSCONF_REFRESH_RATE_ALT_ILK		REG_BIT(20)
+#define   TRANSCONF_MSA_TIMING_DELAY_MASK	REG_GENMASK(19, 18) /* ilk/snb/ivb */
+#define   TRANSCONF_MSA_TIMING_DELAY(x)		REG_FIELD_PREP(TRANSCONF_MSA_TIMING_DELAY_MASK, (x))
+#define   TRANSCONF_CXSR_DOWNCLOCK		REG_BIT(16)
+#define   TRANSCONF_REFRESH_RATE_ALT_VLV		REG_BIT(14)
+#define   TRANSCONF_COLOR_RANGE_SELECT		REG_BIT(13)
+#define   TRANSCONF_OUTPUT_COLORSPACE_MASK	REG_GENMASK(12, 11) /* ilk-ivb */
+#define   TRANSCONF_OUTPUT_COLORSPACE_RGB	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 0) /* ilk-ivb */
+#define   TRANSCONF_OUTPUT_COLORSPACE_YUV601	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 1) /* ilk-ivb */
+#define   TRANSCONF_OUTPUT_COLORSPACE_YUV709	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 2) /* ilk-ivb */
+#define   TRANSCONF_OUTPUT_COLORSPACE_YUV_HSW	REG_BIT(11) /* hsw only */
+#define   TRANSCONF_BPC_MASK			REG_GENMASK(7, 5) /* ctg-ivb */
+#define   TRANSCONF_BPC_8			REG_FIELD_PREP(TRANSCONF_BPC_MASK, 0)
+#define   TRANSCONF_BPC_10			REG_FIELD_PREP(TRANSCONF_BPC_MASK, 1)
+#define   TRANSCONF_BPC_6			REG_FIELD_PREP(TRANSCONF_BPC_MASK, 2)
+#define   TRANSCONF_BPC_12			REG_FIELD_PREP(TRANSCONF_BPC_MASK, 3)
+#define   TRANSCONF_DITHER_EN			REG_BIT(4)
+#define   TRANSCONF_DITHER_TYPE_MASK		REG_GENMASK(3, 2)
+#define   TRANSCONF_DITHER_TYPE_SP		REG_FIELD_PREP(TRANSCONF_DITHER_TYPE_MASK, 0)
+#define   TRANSCONF_DITHER_TYPE_ST1		REG_FIELD_PREP(TRANSCONF_DITHER_TYPE_MASK, 1)
+#define   TRANSCONF_DITHER_TYPE_ST2		REG_FIELD_PREP(TRANSCONF_DITHER_TYPE_MASK, 2)
+#define   TRANSCONF_DITHER_TYPE_TEMP		REG_FIELD_PREP(TRANSCONF_DITHER_TYPE_MASK, 3)
 #define _PIPEASTAT		0x70024
 #define   PIPE_FIFO_UNDERRUN_STATUS		(1UL << 31)
 #define   SPRITE1_FLIP_DONE_INT_EN_VLV		(1UL << 30)
@@ -3567,7 +3567,7 @@
 #define PIPE_DSI0_OFFSET	0x7b000
 #define PIPE_DSI1_OFFSET	0x7b800
 
-#define PIPECONF(pipe)		_MMIO_PIPE2(pipe, _PIPEACONF)
+#define TRANSCONF(trans)	_MMIO_PIPE2((trans), _TRANSACONF)
 #define PIPEDSL(pipe)		_MMIO_PIPE2(pipe, _PIPEADSL)
 #define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe, _PIPEAFRAMEHIGH)
 #define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(pipe, _PIPEAFRAMEPIXEL)
@@ -4207,7 +4207,7 @@
 
 /* Pipe B */
 #define _PIPEBDSL		(DISPLAY_MMIO_BASE(dev_priv) + 0x71000)
-#define _PIPEBCONF		(DISPLAY_MMIO_BASE(dev_priv) + 0x71008)
+#define _TRANSBCONF		(DISPLAY_MMIO_BASE(dev_priv) + 0x71008)
 #define _PIPEBSTAT		(DISPLAY_MMIO_BASE(dev_priv) + 0x71024)
 #define _PIPEBFRAMEHIGH		0x71040
 #define _PIPEBFRAMEPIXEL	0x71044
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index d649ff2bb780..2b3fe469b360 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -118,10 +118,10 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPEDSL(PIPE_B));
 	MMIO_D(PIPEDSL(PIPE_C));
 	MMIO_D(PIPEDSL(_PIPE_EDP));
-	MMIO_D(PIPECONF(PIPE_A));
-	MMIO_D(PIPECONF(PIPE_B));
-	MMIO_D(PIPECONF(PIPE_C));
-	MMIO_D(PIPECONF(_PIPE_EDP));
+	MMIO_D(TRANSCONF(TRANSCODER_A));
+	MMIO_D(TRANSCONF(TRANSCODER_B));
+	MMIO_D(TRANSCONF(TRANSCODER_C));
+	MMIO_D(TRANSCONF(TRANSCODER_EDP));
 	MMIO_D(PIPESTAT(PIPE_A));
 	MMIO_D(PIPESTAT(PIPE_B));
 	MMIO_D(PIPESTAT(PIPE_C));
-- 
2.39.1

