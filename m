Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D04A269541F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 23:53:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16EBD10E765;
	Mon, 13 Feb 2023 22:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8647010E763
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 22:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676328789; x=1707864789;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=M5TocMhppMgKSKapgjjCx7Uj5cVyxC/aIc8Zrw0KU74=;
 b=JhxH8iuQuhg9yJv+iF5zLCi04mImVVWgTHDa/6T+D3IjipqdXMRP8rhO
 lHuWCJ504Lbi1RrvCELPer8bI3yLJ/Rf3Ak6PelNQLS0pxV6sNfhEuedK
 LyAHo3IP1ataBAdNX9zX0IIkXybcOszsHkbPlCTN22dNmF9nmgnj/DFH/
 I2GGZniBH55wu/N8MvQvEWOPeAsSG6YC5/t3jsgnNEpbzx9J538UAunK9
 hCQ4MDaK+Of0i32CwutgfyzBue1IEMB1nPAq848PEAoYIGVBlaTrbxRmI
 j3pWfKYpA+nXToyJ1hTTd/zQjZf5w462T1ltl3V46VXhMubqRdylrycQJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417237377"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417237377"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 14:53:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757766424"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="757766424"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 13 Feb 2023 14:53:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 00:53:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 00:52:49 +0200
Message-Id: <20230213225258.2127-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/12] drm/i915: Give CPU transcoder timing
 registers TRANS_ prefix
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

Name the CPU transcoder timing registers TRANS_FOO rather than
just FOO. This is the modern name, after the pipe/transcoder split
happened. Makes it a bit more obvious whether you pass in a pipe or
a transcoder.

PIPESRC is a bit special as it's a pipe register, even though it
lives in the transcoder registers range (0x60000 instead of 0x70000).

And BCLRPAT I suppose is a transcoder register (since it has something
to do with the timing generator), but it doesn't even exist after gen4
so I left it to use the only name it ever had in bspec.

And while at it let's pass in the correct enum in few more
places why don't we. Although in all those places the distinction
doesn't matter.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        | 12 +--
 drivers/gpu/drm/i915/display/intel_crt.c      | 19 ++--
 drivers/gpu/drm/i915/display/intel_display.c  | 49 ++++++-----
 .../gpu/drm/i915/display/intel_pch_display.c  | 14 +--
 drivers/gpu/drm/i915/display/intel_psr.c      |  6 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  4 +-
 drivers/gpu/drm/i915/i915_reg.h               | 88 +++++++++----------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 62 ++++++-------
 8 files changed, 128 insertions(+), 126 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 05e749861658..e1fe59ca0892 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -887,7 +887,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	/* program TRANS_HTOTAL register */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		intel_de_write(dev_priv, HTOTAL(dsi_trans),
+		intel_de_write(dev_priv, TRANS_HTOTAL(dsi_trans),
 			       (hactive - 1) | ((htotal - 1) << 16));
 	}
 
@@ -910,7 +910,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(dev_priv, HSYNC(dsi_trans),
+			intel_de_write(dev_priv, TRANS_HSYNC(dsi_trans),
 				       (hsync_start - 1) | ((hsync_end - 1) << 16));
 		}
 	}
@@ -924,7 +924,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		 * struct drm_display_mode.
 		 * For interlace mode: program required pixel minus 2
 		 */
-		intel_de_write(dev_priv, VTOTAL(dsi_trans),
+		intel_de_write(dev_priv, TRANS_VTOTAL(dsi_trans),
 			       (vactive - 1) | ((vtotal - 1) << 16));
 	}
 
@@ -938,7 +938,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	if (is_vid_mode(intel_dsi)) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(dev_priv, VSYNC(dsi_trans),
+			intel_de_write(dev_priv, TRANS_VSYNC(dsi_trans),
 				       (vsync_start - 1) | ((vsync_end - 1) << 16));
 		}
 	}
@@ -952,7 +952,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	if (is_vid_mode(intel_dsi)) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(dev_priv, VSYNCSHIFT(dsi_trans),
+			intel_de_write(dev_priv, TRANS_VSYNCSHIFT(dsi_trans),
 				       vsync_shift);
 		}
 	}
@@ -961,7 +961,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(dev_priv, VBLANK(dsi_trans),
+			intel_de_write(dev_priv, TRANS_VBLANK(dsi_trans),
 				       (vactive - 1) | ((vtotal - 1) << 16));
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index d5bb02f0868d..4b7f8cd416fe 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -678,10 +678,11 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
 }
 
 static enum drm_connector_status
-intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
+intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 {
 	struct drm_device *dev = crt->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	enum transcoder cpu_transcoder = (enum transcoder)pipe;
 	u32 save_bclrpat;
 	u32 save_vtotal;
 	u32 vtotal, vactive;
@@ -693,9 +694,9 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 
 	drm_dbg_kms(&dev_priv->drm, "starting load-detect on CRT\n");
 
-	save_bclrpat = intel_de_read(dev_priv, BCLRPAT(pipe));
-	save_vtotal = intel_de_read(dev_priv, VTOTAL(pipe));
-	vblank = intel_de_read(dev_priv, VBLANK(pipe));
+	save_bclrpat = intel_de_read(dev_priv, BCLRPAT(cpu_transcoder));
+	save_vtotal = intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder));
+	vblank = intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
 
 	vtotal = ((save_vtotal >> 16) & 0xfff) + 1;
 	vactive = (save_vtotal & 0x7ff) + 1;
@@ -704,7 +705,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 	vblank_end = ((vblank >> 16) & 0xfff) + 1;
 
 	/* Set the border color to purple. */
-	intel_de_write(dev_priv, BCLRPAT(pipe), 0x500050);
+	intel_de_write(dev_priv, BCLRPAT(cpu_transcoder), 0x500050);
 
 	if (DISPLAY_VER(dev_priv) != 2) {
 		u32 pipeconf = intel_de_read(dev_priv, PIPECONF(pipe));
@@ -730,11 +731,11 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 		* Yes, this will flicker
 		*/
 		if (vblank_start <= vactive && vblank_end >= vtotal) {
-			u32 vsync = intel_de_read(dev_priv, VSYNC(pipe));
+			u32 vsync = intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder));
 			u32 vsync_start = (vsync & 0xffff) + 1;
 
 			vblank_start = vsync_start;
-			intel_de_write(dev_priv, VBLANK(pipe),
+			intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
 				       (vblank_start - 1) | ((vblank_end - 1) << 16));
 			restore_vblank = true;
 		}
@@ -766,7 +767,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 
 		/* restore vblank if necessary */
 		if (restore_vblank)
-			intel_de_write(dev_priv, VBLANK(pipe), vblank);
+			intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder), vblank);
 		/*
 		 * If more than 3/4 of the scanline detected a monitor,
 		 * then it is assumed to be present. This works even on i830,
@@ -779,7 +780,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 	}
 
 	/* Restore previous settings */
-	intel_de_write(dev_priv, BCLRPAT(pipe), save_bclrpat);
+	intel_de_write(dev_priv, BCLRPAT(cpu_transcoder), save_bclrpat);
 
 	return status;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 322f3b2c741d..a93f3630e9f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1848,7 +1848,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	intel_set_transcoder_timings(crtc_state);
 
 	if (cpu_transcoder != TRANSCODER_EDP)
-		intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
+		intel_de_write(dev_priv, TRANS_MULT(cpu_transcoder),
 			       crtc_state->pixel_multiplier - 1);
 
 	hsw_set_frame_start_delay(crtc_state);
@@ -2844,21 +2844,21 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	}
 
 	if (DISPLAY_VER(dev_priv) > 3)
-		intel_de_write(dev_priv, VSYNCSHIFT(cpu_transcoder),
-		               vsyncshift);
+		intel_de_write(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder),
+			       vsyncshift);
 
-	intel_de_write(dev_priv, HTOTAL(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_HTOTAL(cpu_transcoder),
 		       (adjusted_mode->crtc_hdisplay - 1) | ((adjusted_mode->crtc_htotal - 1) << 16));
-	intel_de_write(dev_priv, HBLANK(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
 		       (adjusted_mode->crtc_hblank_start - 1) | ((adjusted_mode->crtc_hblank_end - 1) << 16));
-	intel_de_write(dev_priv, HSYNC(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
 		       (adjusted_mode->crtc_hsync_start - 1) | ((adjusted_mode->crtc_hsync_end - 1) << 16));
 
-	intel_de_write(dev_priv, VTOTAL(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
 		       (adjusted_mode->crtc_vdisplay - 1) | ((crtc_vtotal - 1) << 16));
-	intel_de_write(dev_priv, VBLANK(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
 		       (adjusted_mode->crtc_vblank_start - 1) | ((crtc_vblank_end - 1) << 16));
-	intel_de_write(dev_priv, VSYNC(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
 		       (adjusted_mode->crtc_vsync_start - 1) | ((adjusted_mode->crtc_vsync_end - 1) << 16));
 
 	/* Workaround: when the EDP input selection is B, the VTOTAL_B must be
@@ -2867,8 +2867,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	 * bits. */
 	if (IS_HASWELL(dev_priv) && cpu_transcoder == TRANSCODER_EDP &&
 	    (pipe == PIPE_B || pipe == PIPE_C))
-		intel_de_write(dev_priv, VTOTAL(pipe),
-		               intel_de_read(dev_priv, VTOTAL(cpu_transcoder)));
+		intel_de_write(dev_priv, TRANS_VTOTAL(pipe),
+			       intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder)));
 
 }
 
@@ -2910,33 +2910,33 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, HTOTAL(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, TRANS_HTOTAL(cpu_transcoder));
 	pipe_config->hw.adjusted_mode.crtc_hdisplay = (tmp & 0xffff) + 1;
 	pipe_config->hw.adjusted_mode.crtc_htotal = ((tmp >> 16) & 0xffff) + 1;
 
 	if (!transcoder_is_dsi(cpu_transcoder)) {
-		tmp = intel_de_read(dev_priv, HBLANK(cpu_transcoder));
+		tmp = intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder));
 		pipe_config->hw.adjusted_mode.crtc_hblank_start =
 							(tmp & 0xffff) + 1;
 		pipe_config->hw.adjusted_mode.crtc_hblank_end =
 						((tmp >> 16) & 0xffff) + 1;
 	}
-	tmp = intel_de_read(dev_priv, HSYNC(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, TRANS_HSYNC(cpu_transcoder));
 	pipe_config->hw.adjusted_mode.crtc_hsync_start = (tmp & 0xffff) + 1;
 	pipe_config->hw.adjusted_mode.crtc_hsync_end = ((tmp >> 16) & 0xffff) + 1;
 
-	tmp = intel_de_read(dev_priv, VTOTAL(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder));
 	pipe_config->hw.adjusted_mode.crtc_vdisplay = (tmp & 0xffff) + 1;
 	pipe_config->hw.adjusted_mode.crtc_vtotal = ((tmp >> 16) & 0xffff) + 1;
 
 	if (!transcoder_is_dsi(cpu_transcoder)) {
-		tmp = intel_de_read(dev_priv, VBLANK(cpu_transcoder));
+		tmp = intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
 		pipe_config->hw.adjusted_mode.crtc_vblank_start =
 							(tmp & 0xffff) + 1;
 		pipe_config->hw.adjusted_mode.crtc_vblank_end =
 						((tmp >> 16) & 0xffff) + 1;
 	}
-	tmp = intel_de_read(dev_priv, VSYNC(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder));
 	pipe_config->hw.adjusted_mode.crtc_vsync_start = (tmp & 0xffff) + 1;
 	pipe_config->hw.adjusted_mode.crtc_vsync_end = ((tmp >> 16) & 0xffff) + 1;
 
@@ -4092,7 +4092,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
 		pipe_config->pixel_multiplier =
 			intel_de_read(dev_priv,
-				      PIPE_MULT(pipe_config->cpu_transcoder)) + 1;
+				      TRANS_MULT(pipe_config->cpu_transcoder)) + 1;
 	} else {
 		pipe_config->pixel_multiplier = 1;
 	}
@@ -8791,6 +8791,7 @@ int intel_modeset_init(struct drm_i915_private *i915)
 void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
 	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+	enum transcoder cpu_transcoder = (enum transcoder)pipe;
 	/* 640x480@60Hz, ~25175 kHz */
 	struct dpll clock = {
 		.m1 = 18,
@@ -8817,12 +8818,12 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		PLL_REF_INPUT_DREFCLK |
 		DPLL_VCO_ENABLE;
 
-	intel_de_write(dev_priv, HTOTAL(pipe), (640 - 1) | ((800 - 1) << 16));
-	intel_de_write(dev_priv, HBLANK(pipe), (640 - 1) | ((800 - 1) << 16));
-	intel_de_write(dev_priv, HSYNC(pipe), (656 - 1) | ((752 - 1) << 16));
-	intel_de_write(dev_priv, VTOTAL(pipe), (480 - 1) | ((525 - 1) << 16));
-	intel_de_write(dev_priv, VBLANK(pipe), (480 - 1) | ((525 - 1) << 16));
-	intel_de_write(dev_priv, VSYNC(pipe), (490 - 1) | ((492 - 1) << 16));
+	intel_de_write(dev_priv, TRANS_HTOTAL(cpu_transcoder), (640 - 1) | ((800 - 1) << 16));
+	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder), (640 - 1) | ((800 - 1) << 16));
+	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder), (656 - 1) | ((752 - 1) << 16));
+	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder), (480 - 1) | ((525 - 1) << 16));
+	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder), (480 - 1) | ((525 - 1) << 16));
+	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder), (490 - 1) | ((492 - 1) << 16));
 	intel_de_write(dev_priv, PIPESRC(pipe), ((640 - 1) << 16) | (480 - 1));
 
 	intel_de_write(dev_priv, FP0(pipe), fp);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 419221f4b454..e55bc4763278 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -220,20 +220,20 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	intel_de_write(dev_priv, PCH_TRANS_HTOTAL(pch_transcoder),
-		       intel_de_read(dev_priv, HTOTAL(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_HTOTAL(cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_HBLANK(pch_transcoder),
-		       intel_de_read(dev_priv, HBLANK(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_HSYNC(pch_transcoder),
-		       intel_de_read(dev_priv, HSYNC(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_HSYNC(cpu_transcoder)));
 
 	intel_de_write(dev_priv, PCH_TRANS_VTOTAL(pch_transcoder),
-		       intel_de_read(dev_priv, VTOTAL(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_VBLANK(pch_transcoder),
-		       intel_de_read(dev_priv, VBLANK(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_VSYNC(pch_transcoder),
-		       intel_de_read(dev_priv, VSYNC(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_VSYNCSHIFT(pch_transcoder),
-		       intel_de_read(dev_priv, VSYNCSHIFT(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder)));
 }
 
 static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2954759e9d12..a021f59f0ac7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1051,7 +1051,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		val = intel_de_read(dev_priv, EXITLINE(intel_dp->psr.transcoder));
+		val = intel_de_read(dev_priv, TRANS_EXITLINE(intel_dp->psr.transcoder));
 		val &= EXITLINE_MASK;
 		pipe_config->dc3co_exitline = val;
 	}
@@ -1132,11 +1132,11 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		 * TODO: if future platforms supports DC3CO in more than one
 		 * transcoder, EXITLINE will need to be unset when disabling PSR
 		 */
-		val = intel_de_read(dev_priv, EXITLINE(cpu_transcoder));
+		val = intel_de_read(dev_priv, TRANS_EXITLINE(cpu_transcoder));
 		val &= ~EXITLINE_MASK;
 		val |= intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT;
 		val |= EXITLINE_ENABLE;
-		intel_de_write(dev_priv, EXITLINE(cpu_transcoder), val);
+		intel_de_write(dev_priv, TRANS_EXITLINE(cpu_transcoder), val);
 	}
 
 	if (HAS_PSR_HW_TRACKING(dev_priv) && HAS_PSR2_SEL_FETCH(dev_priv))
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 735fc83e7026..eed15fbc7069 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -666,8 +666,8 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
 	link_n = vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A));
 
 	/* Get H/V total from transcoder timing */
-	htotal = (vgpu_vreg_t(vgpu, HTOTAL(TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
-	vtotal = (vgpu_vreg_t(vgpu, VTOTAL(TRANSCODER_A)) >> TRANS_VTOTAL_SHIFT);
+	htotal = (vgpu_vreg_t(vgpu, TRANS_HTOTAL(TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
+	vtotal = (vgpu_vreg_t(vgpu, TRANS_VTOTAL(TRANSCODER_A)) >> TRANS_VTOTAL_SHIFT);
 
 	if (dp_br && link_n && htotal && vtotal) {
 		u64 pixel_clk = 0;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 596efc940ee7..28b1226688b8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1911,48 +1911,48 @@
 #define PIPE_CRC_RES_RES1_I915(pipe)	_MMIO_TRANS2(pipe, _PIPE_CRC_RES_RES1_A_I915)
 #define PIPE_CRC_RES_RES2_G4X(pipe)	_MMIO_TRANS2(pipe, _PIPE_CRC_RES_RES2_A_G4X)
 
-/* Pipe A timing regs */
-#define _HTOTAL_A	0x60000
-#define _HBLANK_A	0x60004
-#define _HSYNC_A	0x60008
-#define _VTOTAL_A	0x6000c
-#define _VBLANK_A	0x60010
-#define _VSYNC_A	0x60014
-#define _EXITLINE_A	0x60018
-#define _PIPEASRC	0x6001c
+/* Pipe/transcoder A timing regs */
+#define _TRANS_HTOTAL_A		0x60000
+#define _TRANS_HBLANK_A		0x60004
+#define _TRANS_HSYNC_A		0x60008
+#define _TRANS_VTOTAL_A		0x6000c
+#define _TRANS_VBLANK_A		0x60010
+#define _TRANS_VSYNC_A		0x60014
+#define _TRANS_EXITLINE_A	0x60018
+#define _PIPEASRC		0x6001c
 #define   PIPESRC_WIDTH_MASK	REG_GENMASK(31, 16)
 #define   PIPESRC_WIDTH(w)	REG_FIELD_PREP(PIPESRC_WIDTH_MASK, (w))
 #define   PIPESRC_HEIGHT_MASK	REG_GENMASK(15, 0)
 #define   PIPESRC_HEIGHT(h)	REG_FIELD_PREP(PIPESRC_HEIGHT_MASK, (h))
-#define _BCLRPAT_A	0x60020
-#define _VSYNCSHIFT_A	0x60028
-#define _PIPE_MULT_A	0x6002c
+#define _BCLRPAT_A		0x60020
+#define _TRANS_VSYNCSHIFT_A	0x60028
+#define _TRANS_MULT_A		0x6002c
 
-/* Pipe B timing regs */
-#define _HTOTAL_B	0x61000
-#define _HBLANK_B	0x61004
-#define _HSYNC_B	0x61008
-#define _VTOTAL_B	0x6100c
-#define _VBLANK_B	0x61010
-#define _VSYNC_B	0x61014
-#define _PIPEBSRC	0x6101c
-#define _BCLRPAT_B	0x61020
-#define _VSYNCSHIFT_B	0x61028
-#define _PIPE_MULT_B	0x6102c
+/* Pipe/transcoder B timing regs */
+#define _TRANS_HTOTAL_B		0x61000
+#define _TRANS_HBLANK_B		0x61004
+#define _TRANS_HSYNC_B		0x61008
+#define _TRANS_VTOTAL_B		0x6100c
+#define _TRANS_VBLANK_B		0x61010
+#define _TRANS_VSYNC_B		0x61014
+#define _PIPEBSRC		0x6101c
+#define _BCLRPAT_B		0x61020
+#define _TRANS_VSYNCSHIFT_B	0x61028
+#define _TRANS_MULT_B		0x6102c
 
 /* DSI 0 timing regs */
-#define _HTOTAL_DSI0		0x6b000
-#define _HSYNC_DSI0		0x6b008
-#define _VTOTAL_DSI0		0x6b00c
-#define _VSYNC_DSI0		0x6b014
-#define _VSYNCSHIFT_DSI0	0x6b028
+#define _TRANS_HTOTAL_DSI0	0x6b000
+#define _TRANS_HSYNC_DSI0	0x6b008
+#define _TRANS_VTOTAL_DSI0	0x6b00c
+#define _TRANS_VSYNC_DSI0	0x6b014
+#define _TRANS_VSYNCSHIFT_DSI0	0x6b028
 
 /* DSI 1 timing regs */
-#define _HTOTAL_DSI1		0x6b800
-#define _HSYNC_DSI1		0x6b808
-#define _VTOTAL_DSI1		0x6b80c
-#define _VSYNC_DSI1		0x6b814
-#define _VSYNCSHIFT_DSI1	0x6b828
+#define _TRANS_HTOTAL_DSI1	0x6b800
+#define _TRANS_HSYNC_DSI1	0x6b808
+#define _TRANS_VTOTAL_DSI1	0x6b80c
+#define _TRANS_VSYNC_DSI1	0x6b814
+#define _TRANS_VSYNCSHIFT_DSI1	0x6b828
 
 #define TRANSCODER_A_OFFSET 0x60000
 #define TRANSCODER_B_OFFSET 0x61000
@@ -1963,18 +1963,18 @@
 #define TRANSCODER_DSI0_OFFSET	0x6b000
 #define TRANSCODER_DSI1_OFFSET	0x6b800
 
-#define HTOTAL(trans)		_MMIO_TRANS2(trans, _HTOTAL_A)
-#define HBLANK(trans)		_MMIO_TRANS2(trans, _HBLANK_A)
-#define HSYNC(trans)		_MMIO_TRANS2(trans, _HSYNC_A)
-#define VTOTAL(trans)		_MMIO_TRANS2(trans, _VTOTAL_A)
-#define VBLANK(trans)		_MMIO_TRANS2(trans, _VBLANK_A)
-#define VSYNC(trans)		_MMIO_TRANS2(trans, _VSYNC_A)
-#define BCLRPAT(trans)		_MMIO_TRANS2(trans, _BCLRPAT_A)
-#define VSYNCSHIFT(trans)	_MMIO_TRANS2(trans, _VSYNCSHIFT_A)
-#define PIPESRC(trans)		_MMIO_TRANS2(trans, _PIPEASRC)
-#define PIPE_MULT(trans)	_MMIO_TRANS2(trans, _PIPE_MULT_A)
+#define TRANS_HTOTAL(trans)	_MMIO_TRANS2((trans), _TRANS_HTOTAL_A)
+#define TRANS_HBLANK(trans)	_MMIO_TRANS2((trans), _TRANS_HBLANK_A)
+#define TRANS_HSYNC(trans)	_MMIO_TRANS2((trans), _TRANS_HSYNC_A)
+#define TRANS_VTOTAL(trans)	_MMIO_TRANS2((trans), _TRANS_VTOTAL_A)
+#define TRANS_VBLANK(trans)	_MMIO_TRANS2((trans), _TRANS_VBLANK_A)
+#define TRANS_VSYNC(trans)	_MMIO_TRANS2((trans), _TRANS_VSYNC_A)
+#define BCLRPAT(trans)		_MMIO_TRANS2((trans), _BCLRPAT_A)
+#define TRANS_VSYNCSHIFT(trans)	_MMIO_TRANS2((trans), _TRANS_VSYNCSHIFT_A)
+#define PIPESRC(pipe)		_MMIO_TRANS2((pipe), _PIPEASRC)
+#define TRANS_MULT(trans)	_MMIO_TRANS2((trans), _TRANS_MULT_A)
 
-#define EXITLINE(trans)		_MMIO_TRANS2(trans, _EXITLINE_A)
+#define TRANS_EXITLINE(trans)	_MMIO_TRANS2((trans), _TRANS_EXITLINE_A)
 #define   EXITLINE_ENABLE	REG_BIT(31)
 #define   EXITLINE_MASK		REG_GENMASK(12, 0)
 #define   EXITLINE_SHIFT	0
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index c5cdff38cc5a..d649ff2bb780 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -219,41 +219,41 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(SPRSCALE(PIPE_C));
 	MMIO_D(SPRSURFLIVE(PIPE_C));
 	MMIO_D(REG_50080(PIPE_C, PLANE_SPRITE0));
-	MMIO_D(HTOTAL(TRANSCODER_A));
-	MMIO_D(HBLANK(TRANSCODER_A));
-	MMIO_D(HSYNC(TRANSCODER_A));
-	MMIO_D(VTOTAL(TRANSCODER_A));
-	MMIO_D(VBLANK(TRANSCODER_A));
-	MMIO_D(VSYNC(TRANSCODER_A));
+	MMIO_D(TRANS_HTOTAL(TRANSCODER_A));
+	MMIO_D(TRANS_HBLANK(TRANSCODER_A));
+	MMIO_D(TRANS_HSYNC(TRANSCODER_A));
+	MMIO_D(TRANS_VTOTAL(TRANSCODER_A));
+	MMIO_D(TRANS_VBLANK(TRANSCODER_A));
+	MMIO_D(TRANS_VSYNC(TRANSCODER_A));
 	MMIO_D(BCLRPAT(TRANSCODER_A));
-	MMIO_D(VSYNCSHIFT(TRANSCODER_A));
+	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
 	MMIO_D(PIPESRC(TRANSCODER_A));
-	MMIO_D(HTOTAL(TRANSCODER_B));
-	MMIO_D(HBLANK(TRANSCODER_B));
-	MMIO_D(HSYNC(TRANSCODER_B));
-	MMIO_D(VTOTAL(TRANSCODER_B));
-	MMIO_D(VBLANK(TRANSCODER_B));
-	MMIO_D(VSYNC(TRANSCODER_B));
+	MMIO_D(TRANS_HTOTAL(TRANSCODER_B));
+	MMIO_D(TRANS_HBLANK(TRANSCODER_B));
+	MMIO_D(TRANS_HSYNC(TRANSCODER_B));
+	MMIO_D(TRANS_VTOTAL(TRANSCODER_B));
+	MMIO_D(TRANS_VBLANK(TRANSCODER_B));
+	MMIO_D(TRANS_VSYNC(TRANSCODER_B));
 	MMIO_D(BCLRPAT(TRANSCODER_B));
-	MMIO_D(VSYNCSHIFT(TRANSCODER_B));
+	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
 	MMIO_D(PIPESRC(TRANSCODER_B));
-	MMIO_D(HTOTAL(TRANSCODER_C));
-	MMIO_D(HBLANK(TRANSCODER_C));
-	MMIO_D(HSYNC(TRANSCODER_C));
-	MMIO_D(VTOTAL(TRANSCODER_C));
-	MMIO_D(VBLANK(TRANSCODER_C));
-	MMIO_D(VSYNC(TRANSCODER_C));
+	MMIO_D(TRANS_HTOTAL(TRANSCODER_C));
+	MMIO_D(TRANS_HBLANK(TRANSCODER_C));
+	MMIO_D(TRANS_HSYNC(TRANSCODER_C));
+	MMIO_D(TRANS_VTOTAL(TRANSCODER_C));
+	MMIO_D(TRANS_VBLANK(TRANSCODER_C));
+	MMIO_D(TRANS_VSYNC(TRANSCODER_C));
 	MMIO_D(BCLRPAT(TRANSCODER_C));
-	MMIO_D(VSYNCSHIFT(TRANSCODER_C));
+	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_C));
 	MMIO_D(PIPESRC(TRANSCODER_C));
-	MMIO_D(HTOTAL(TRANSCODER_EDP));
-	MMIO_D(HBLANK(TRANSCODER_EDP));
-	MMIO_D(HSYNC(TRANSCODER_EDP));
-	MMIO_D(VTOTAL(TRANSCODER_EDP));
-	MMIO_D(VBLANK(TRANSCODER_EDP));
-	MMIO_D(VSYNC(TRANSCODER_EDP));
+	MMIO_D(TRANS_HTOTAL(TRANSCODER_EDP));
+	MMIO_D(TRANS_HBLANK(TRANSCODER_EDP));
+	MMIO_D(TRANS_HSYNC(TRANSCODER_EDP));
+	MMIO_D(TRANS_VTOTAL(TRANSCODER_EDP));
+	MMIO_D(TRANS_VBLANK(TRANSCODER_EDP));
+	MMIO_D(TRANS_VSYNC(TRANSCODER_EDP));
 	MMIO_D(BCLRPAT(TRANSCODER_EDP));
-	MMIO_D(VSYNCSHIFT(TRANSCODER_EDP));
+	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_M1(TRANSCODER_A));
 	MMIO_D(PIPE_DATA_N1(TRANSCODER_A));
 	MMIO_D(PIPE_DATA_M2(TRANSCODER_A));
@@ -494,9 +494,9 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(GAMMA_MODE(PIPE_A));
 	MMIO_D(GAMMA_MODE(PIPE_B));
 	MMIO_D(GAMMA_MODE(PIPE_C));
-	MMIO_D(PIPE_MULT(PIPE_A));
-	MMIO_D(PIPE_MULT(PIPE_B));
-	MMIO_D(PIPE_MULT(PIPE_C));
+	MMIO_D(TRANS_MULT(TRANSCODER_A));
+	MMIO_D(TRANS_MULT(TRANSCODER_B));
+	MMIO_D(TRANS_MULT(TRANSCODER_C));
 	MMIO_D(HSW_TVIDEO_DIP_CTL(TRANSCODER_A));
 	MMIO_D(HSW_TVIDEO_DIP_CTL(TRANSCODER_B));
 	MMIO_D(HSW_TVIDEO_DIP_CTL(TRANSCODER_C));
-- 
2.39.1

