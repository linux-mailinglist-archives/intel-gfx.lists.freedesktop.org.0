Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7582496F6D5
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 16:33:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E692210EA5B;
	Fri,  6 Sep 2024 14:33:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="av866nDp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 398A510EA6E;
 Fri,  6 Sep 2024 14:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725633205; x=1757169205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FkLMOPAtrKvLpBRWwSkTepfCgHvLEEy243/iLkswgQg=;
 b=av866nDp5REvBQCZyfGeTzsKlHnBHVznjTfkjgr70oqEdWvvXT3i3nwi
 MkTUeFA3VI2/8NoBxMdI5+VjpfP3l1f2I71Pimg/1iu9csmwz5+0Ln4Nh
 EEc/NOq/xU//pBKArMe3PxmRF2rRGvxnXKqc4CxeHUAPTf/3Te4wqmk6K
 jghXucj8VYcYHtG9yu6v8MSDBkCvgmLObCsW3nd5S1z/PQ3igt9RnYm0E
 AF/GMqUHkKJ6w78z0YdR8u6EyVRQXmNNXCcFOF+6FQ8o5znT29iTPqYIH
 2LFK99uduTuUr2gcKY8068etmqwOIu/LZzRrrKSDMfdRIkq4xaZP5ErdB g==;
X-CSE-ConnectionGUID: 6fUsd80fTdmWyq2GUS/9FQ==
X-CSE-MsgGUID: /ak0dSsjRgCZ+T63d5Sn0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="41903104"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="41903104"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 07:33:25 -0700
X-CSE-ConnectionGUID: MF5BEhNlRdKHiB48KadwOg==
X-CSE-MsgGUID: Pt/pj8qRRnSFBA8nMz2p0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="66003970"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Sep 2024 07:33:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2024 17:33:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/6] drm/i915/power: Convert "i830 power well" code to
 intel_display
Date: Fri,  6 Sep 2024 17:33:05 +0300
Message-ID: <20240906143306.15937-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
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
the main thing for display code. Convert the "i830 power well"
code to use it (as much as possible at this stage).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 79 +++++++++----------
 drivers/gpu/drm/i915/display/intel_display.h  |  5 +-
 .../i915/display/intel_display_power_well.c   | 22 ++++--
 3 files changed, 56 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b4ec9bf12aa7..0ec78b06ca80 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2226,9 +2226,10 @@ static void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 static void i9xx_crtc_disable(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
 	/*
@@ -2267,7 +2268,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 
 	/* clock the pipe down to 640x480@60 to potentially save power */
 	if (IS_I830(dev_priv))
-		i830_enable_pipe(dev_priv, pipe);
+		i830_enable_pipe(display, pipe);
 }
 
 void intel_encoder_destroy(struct drm_encoder *encoder)
@@ -8257,9 +8258,8 @@ int intel_initial_commit(struct drm_device *dev)
 	return ret;
 }
 
-void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
+void i830_enable_pipe(struct intel_display *display, enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 	enum transcoder cpu_transcoder = (enum transcoder)pipe;
 	/* 640x480@60Hz, ~25175 kHz */
@@ -8273,10 +8273,10 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 	u32 dpll, fp;
 	int i;
 
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(display->drm,
 		    i9xx_calc_dpll_params(48000, &clock) != 25154);
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "enabling pipe %c due to force quirk (vco=%d dot=%d)\n",
 		    pipe_name(pipe), clock.vco, clock.dot);
 
@@ -8288,35 +8288,35 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		PLL_REF_INPUT_DREFCLK |
 		DPLL_VCO_ENABLE;
 
-	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
 		       HACTIVE(640 - 1) | HTOTAL(800 - 1));
-	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
 		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
-	intel_de_write(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
 		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
-	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
 		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
-	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
 		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
-	intel_de_write(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
 		       VSYNC_START(490 - 1) | VSYNC_END(492 - 1));
-	intel_de_write(dev_priv, PIPESRC(dev_priv, pipe),
+	intel_de_write(display, PIPESRC(display, pipe),
 		       PIPESRC_WIDTH(640 - 1) | PIPESRC_HEIGHT(480 - 1));
 
-	intel_de_write(dev_priv, FP0(pipe), fp);
-	intel_de_write(dev_priv, FP1(pipe), fp);
+	intel_de_write(display, FP0(pipe), fp);
+	intel_de_write(display, FP1(pipe), fp);
 
 	/*
 	 * Apparently we need to have VGA mode enabled prior to changing
 	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
 	 * dividers, even though the register value does change.
 	 */
-	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
+	intel_de_write(display, DPLL(display, pipe),
 		       dpll & ~DPLL_VGA_MODE_DIS);
-	intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
+	intel_de_write(display, DPLL(display, pipe), dpll);
 
 	/* Wait for the clocks to stabilize. */
-	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
+	intel_de_posting_read(display, DPLL(display, pipe));
 	udelay(150);
 
 	/* The pixel multiplier can only be updated once the
@@ -8324,47 +8324,46 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 	 *
 	 * So write it again.
 	 */
-	intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
+	intel_de_write(display, DPLL(display, pipe), dpll);
 
 	/* We do this three times for luck */
 	for (i = 0; i < 3 ; i++) {
-		intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
-		intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
+		intel_de_write(display, DPLL(display, pipe), dpll);
+		intel_de_posting_read(display, DPLL(display, pipe));
 		udelay(150); /* wait for warmup */
 	}
 
-	intel_de_write(dev_priv, TRANSCONF(dev_priv, pipe), TRANSCONF_ENABLE);
-	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, pipe));
+	intel_de_write(display, TRANSCONF(display, pipe), TRANSCONF_ENABLE);
+	intel_de_posting_read(display, TRANSCONF(display, pipe));
 
 	intel_wait_for_pipe_scanline_moving(crtc);
 }
 
-void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
+void i830_disable_pipe(struct intel_display *display, enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 
-	drm_dbg_kms(&dev_priv->drm, "disabling pipe %c due to force quirk\n",
+	drm_dbg_kms(display->drm, "disabling pipe %c due to force quirk\n",
 		    pipe_name(pipe));
 
-	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, DSPCNTR(dev_priv, PLANE_A)) & DISP_ENABLE);
-	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, DSPCNTR(dev_priv, PLANE_B)) & DISP_ENABLE);
-	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, DSPCNTR(dev_priv, PLANE_C)) & DISP_ENABLE);
-	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, CURCNTR(dev_priv, PIPE_A)) & MCURSOR_MODE_MASK);
-	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, CURCNTR(dev_priv, PIPE_B)) & MCURSOR_MODE_MASK);
+	drm_WARN_ON(display->drm,
+		    intel_de_read(display, DSPCNTR(display, PLANE_A)) & DISP_ENABLE);
+	drm_WARN_ON(display->drm,
+		    intel_de_read(display, DSPCNTR(display, PLANE_B)) & DISP_ENABLE);
+	drm_WARN_ON(display->drm,
+		    intel_de_read(display, DSPCNTR(display, PLANE_C)) & DISP_ENABLE);
+	drm_WARN_ON(display->drm,
+		    intel_de_read(display, CURCNTR(display, PIPE_A)) & MCURSOR_MODE_MASK);
+	drm_WARN_ON(display->drm,
+		    intel_de_read(display, CURCNTR(display, PIPE_B)) & MCURSOR_MODE_MASK);
 
-	intel_de_write(dev_priv, TRANSCONF(dev_priv, pipe), 0);
-	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, pipe));
+	intel_de_write(display, TRANSCONF(display, pipe), 0);
+	intel_de_posting_read(display, TRANSCONF(display, pipe));
 
 	intel_wait_for_pipe_scanline_stopped(crtc);
 
-	intel_de_write(dev_priv, DPLL(dev_priv, pipe), DPLL_VGA_MODE_DIS);
-	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
+	intel_de_write(display, DPLL(display, pipe), DPLL_VGA_MODE_DIS);
+	intel_de_posting_read(display, DPLL(display, pipe));
 }
 
 void intel_hpd_poll_fini(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b21d9578d5db..7ca26e5cb20e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -52,6 +52,7 @@ struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_digital_port;
+struct intel_display;
 struct intel_dp;
 struct intel_encoder;
 struct intel_initial_plane_config;
@@ -437,8 +438,8 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
 void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
 void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
 void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
-void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe);
-void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe);
+void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
+void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
 int vlv_get_hpll_vco(struct drm_i915_private *dev_priv);
 int vlv_get_cck_clock(struct drm_i915_private *dev_priv,
 		      const char *name, u32 reg, int ref_freq);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index a5d9b17e03a2..9f275a6674a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1066,24 +1066,30 @@ static bool i9xx_always_on_power_well_enabled(struct drm_i915_private *dev_priv,
 static void i830_pipes_power_well_enable(struct drm_i915_private *dev_priv,
 					 struct i915_power_well *power_well)
 {
-	if ((intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE) == 0)
-		i830_enable_pipe(dev_priv, PIPE_A);
-	if ((intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE) == 0)
-		i830_enable_pipe(dev_priv, PIPE_B);
+	struct intel_display *display = &dev_priv->display;
+
+	if ((intel_de_read(display, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE) == 0)
+		i830_enable_pipe(display, PIPE_A);
+	if ((intel_de_read(display, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE) == 0)
+		i830_enable_pipe(display, PIPE_B);
 }
 
 static void i830_pipes_power_well_disable(struct drm_i915_private *dev_priv,
 					  struct i915_power_well *power_well)
 {
-	i830_disable_pipe(dev_priv, PIPE_B);
-	i830_disable_pipe(dev_priv, PIPE_A);
+	struct intel_display *display = &dev_priv->display;
+
+	i830_disable_pipe(display, PIPE_B);
+	i830_disable_pipe(display, PIPE_A);
 }
 
 static bool i830_pipes_power_well_enabled(struct drm_i915_private *dev_priv,
 					  struct i915_power_well *power_well)
 {
-	return intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE &&
-		intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE;
+	struct intel_display *display = &dev_priv->display;
+
+	return intel_de_read(display, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE &&
+		intel_de_read(display, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE;
 }
 
 static void i830_pipes_power_well_sync_hw(struct drm_i915_private *dev_priv,
-- 
2.44.2

