Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8698FB70A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B44810E4E5;
	Tue,  4 Jun 2024 15:28:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b7mEWw2Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E852910E4E5
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514878; x=1749050878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q7fQSw3o/lpHAZOm61g119hw7l+55PTNVswMaIeFZIw=;
 b=b7mEWw2Zuaoeo0lfcn4DVQ++j9Ox9WMSyHXNy39P7qC/IyyaKcEcC1Nd
 +FKGty216Vp/TNCs/PwZhzDZD89MriRZx0vMk/mgt/IuDD/BaVM/fr7mD
 xX7YYC2/huTFRE1spZHuMd+wab6qxGK0uzZ2uzl+QC4JFPwKpwCYSUCaK
 Wj7L3txttyblPgFGRTUo/ty7M8fpRV19/ur24i6mfZ5T5ilWFfH/HVVqU
 OpyWbhkHfuFMr+H3vUsO05MvSdjjEWTbLGf9zb+sp2MDb22TyNmVoYePw
 v4YQD/LYpTIPfCDamSN35KkKYKrHUZlUW3po7wGHLrq3t9mMbuOPUbeLg g==;
X-CSE-ConnectionGUID: J15bp41DTAeCq0NaED79/A==
X-CSE-MsgGUID: o3s/fRgZSamlaLCuJEkAqQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14225591"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14225591"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:57 -0700
X-CSE-ConnectionGUID: dvvPT1g2RaOF//hTGfHjVA==
X-CSE-MsgGUID: 53ThfFYPS9uak0LFuxRNug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37277915"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 18/65] drm/i915: pass dev_priv explicitly to TRANSCONF
Date: Tue,  4 Jun 2024 18:25:36 +0300
Message-Id: <9afc96be1cbe4514cdca701ab434b4c7aa3a55ba.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the TRANSCONF register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        | 12 +++--
 drivers/gpu/drm/i915/display/intel_crt.c      | 11 ++--
 drivers/gpu/drm/i915/display/intel_display.c  | 52 +++++++++++--------
 .../i915/display/intel_display_power_well.c   |  8 +--
 drivers/gpu/drm/i915/display/intel_drrs.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  6 +--
 .../gpu/drm/i915/display/intel_pch_display.c  |  7 +--
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  3 +-
 drivers/gpu/drm/i915/gvt/display.c            | 12 ++---
 drivers/gpu/drm/i915/gvt/handlers.c           | 12 +++--
 drivers/gpu/drm/i915/i915_reg.h               |  2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  8 +--
 12 files changed, 76 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 0625c4d5ee0b..9beb94494b2b 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1013,10 +1013,11 @@ static void gen11_dsi_enable_transcoder(struct intel_encoder *encoder)
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		intel_de_rmw(dev_priv, TRANSCONF(dsi_trans), 0, TRANSCONF_ENABLE);
+		intel_de_rmw(dev_priv, TRANSCONF(dev_priv, dsi_trans), 0,
+			     TRANSCONF_ENABLE);
 
 		/* wait for transcoder to be enabled */
-		if (intel_de_wait_for_set(dev_priv, TRANSCONF(dsi_trans),
+		if (intel_de_wait_for_set(dev_priv, TRANSCONF(dev_priv, dsi_trans),
 					  TRANSCONF_STATE_ENABLE, 10))
 			drm_err(&dev_priv->drm,
 				"DSI transcoder not enabled\n");
@@ -1279,10 +1280,11 @@ static void gen11_dsi_disable_transcoder(struct intel_encoder *encoder)
 		dsi_trans = dsi_port_to_transcoder(port);
 
 		/* disable transcoder */
-		intel_de_rmw(dev_priv, TRANSCONF(dsi_trans), TRANSCONF_ENABLE, 0);
+		intel_de_rmw(dev_priv, TRANSCONF(dev_priv, dsi_trans),
+			     TRANSCONF_ENABLE, 0);
 
 		/* wait for transcoder to be disabled */
-		if (intel_de_wait_for_clear(dev_priv, TRANSCONF(dsi_trans),
+		if (intel_de_wait_for_clear(dev_priv, TRANSCONF(dev_priv, dsi_trans),
 					    TRANSCONF_STATE_ENABLE, 50))
 			drm_err(&dev_priv->drm,
 				"DSI trancoder not disabled\n");
@@ -1714,7 +1716,7 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
 			goto out;
 		}
 
-		tmp = intel_de_read(dev_priv, TRANSCONF(dsi_trans));
+		tmp = intel_de_read(dev_priv, TRANSCONF(dev_priv, dsi_trans));
 		ret = tmp & TRANSCONF_ENABLE;
 	}
 out:
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 808fa8afb164..d4f16d894eda 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -725,11 +725,13 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 	intel_de_write(dev_priv, BCLRPAT(dev_priv, cpu_transcoder), 0x500050);
 
 	if (DISPLAY_VER(dev_priv) != 2) {
-		u32 transconf = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
+		u32 transconf = intel_de_read(dev_priv,
+					      TRANSCONF(dev_priv, cpu_transcoder));
 
-		intel_de_write(dev_priv, TRANSCONF(cpu_transcoder),
+		intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
 			       transconf | TRANSCONF_FORCE_BORDER);
-		intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
+		intel_de_posting_read(dev_priv,
+				      TRANSCONF(dev_priv, cpu_transcoder));
 		/* Wait for next Vblank to substitue
 		 * border color for Color info */
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
@@ -738,7 +740,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 			connector_status_connected :
 			connector_status_disconnected;
 
-		intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), transconf);
+		intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
+			       transconf);
 	} else {
 		bool restore_vblank = false;
 		int count, detect;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1e2ddae5ba94..9434eba91839 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -307,7 +307,7 @@ intel_wait_for_pipe_off(const struct intel_crtc_state *old_crtc_state)
 		enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
 		/* Wait for the Pipe State to go off */
-		if (intel_de_wait_for_clear(dev_priv, TRANSCONF(cpu_transcoder),
+		if (intel_de_wait_for_clear(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
 					    TRANSCONF_STATE_ENABLE, 100))
 			drm_WARN(&dev_priv->drm, 1, "pipe_off wait timed out\n");
 	} else {
@@ -329,7 +329,8 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
 	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
 	if (wakeref) {
-		u32 val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
+		u32 val = intel_de_read(dev_priv,
+					TRANSCONF(dev_priv, cpu_transcoder));
 		cur_state = !!(val & TRANSCONF_ENABLE);
 
 		intel_display_power_put(dev_priv, power_domain, wakeref);
@@ -453,7 +454,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 			     clear, set);
 	}
 
-	val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
+	val = intel_de_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
 	if (val & TRANSCONF_ENABLE) {
 		/* we keep both pipes enabled on 830 */
 		drm_WARN_ON(&dev_priv->drm, !IS_I830(dev_priv));
@@ -468,9 +469,9 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 				      TRANSCONF_PIXEL_COUNT_SCALING_X4);
 	}
 
-	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder),
+	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
 		       val | TRANSCONF_ENABLE);
-	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
+	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
 
 	/*
 	 * Until the pipe starts PIPEDSL reads will return a stale value,
@@ -499,7 +500,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 	 */
 	assert_planes_disabled(crtc);
 
-	val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
+	val = intel_de_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
 	if ((val & TRANSCONF_ENABLE) == 0)
 		return;
 
@@ -519,7 +520,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 	    old_crtc_state->dsc.compression_enable)
 		val &= ~TRANSCONF_PIXEL_COUNT_SCALING_MASK;
 
-	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
+	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
 
 	if (DISPLAY_VER(dev_priv) >= 12)
 		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
@@ -2799,9 +2800,11 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
 
 	if (DISPLAY_VER(dev_priv) >= 9 ||
 	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
-		return intel_de_read(dev_priv, TRANSCONF(cpu_transcoder)) & TRANSCONF_INTERLACE_MASK_HSW;
+		return intel_de_read(dev_priv,
+				     TRANSCONF(dev_priv, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK_HSW;
 	else
-		return intel_de_read(dev_priv, TRANSCONF(cpu_transcoder)) & TRANSCONF_INTERLACE_MASK;
+		return intel_de_read(dev_priv,
+				     TRANSCONF(dev_priv, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK;
 }
 
 static void intel_get_transcoder_timings(struct intel_crtc *crtc,
@@ -2952,8 +2955,8 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 
 	val |= TRANSCONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
 
-	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
-	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
+	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
+	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
 }
 
 static bool i9xx_has_pfit(struct drm_i915_private *dev_priv)
@@ -3035,7 +3038,8 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 
 	ret = false;
 
-	tmp = intel_de_read(dev_priv, TRANSCONF(pipe_config->cpu_transcoder));
+	tmp = intel_de_read(dev_priv,
+			    TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
 	if (!(tmp & TRANSCONF_ENABLE))
 		goto out;
 
@@ -3182,8 +3186,8 @@ void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	val |= TRANSCONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
 	val |= TRANSCONF_MSA_TIMING_DELAY(crtc_state->msa_timing_delay);
 
-	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
-	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
+	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
+	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
 }
 
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
@@ -3212,8 +3216,8 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
 	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)
 		val |= TRANSCONF_OUTPUT_COLORSPACE_YUV_HSW;
 
-	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
-	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
+	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
+	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
 }
 
 static void bdw_set_pipe_misc(const struct intel_crtc_state *crtc_state)
@@ -3408,7 +3412,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	pipe_config->shared_dpll = NULL;
 
 	ret = false;
-	tmp = intel_de_read(dev_priv, TRANSCONF(pipe_config->cpu_transcoder));
+	tmp = intel_de_read(dev_priv,
+			    TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
 	if (!(tmp & TRANSCONF_ENABLE))
 		goto out;
 
@@ -3721,7 +3726,8 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 			pipe_config->pch_pfit.force_thru = true;
 	}
 
-	tmp = intel_de_read(dev_priv, TRANSCONF(pipe_config->cpu_transcoder));
+	tmp = intel_de_read(dev_priv,
+			    TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
 
 	return tmp & TRANSCONF_ENABLE;
 }
@@ -3827,7 +3833,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	if (IS_HASWELL(dev_priv)) {
 		u32 tmp = intel_de_read(dev_priv,
-					TRANSCONF(pipe_config->cpu_transcoder));
+					TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
 
 		if (tmp & TRANSCONF_OUTPUT_COLORSPACE_YUV_HSW)
 			pipe_config->output_format = INTEL_OUTPUT_FORMAT_YCBCR444;
@@ -8238,8 +8244,8 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		udelay(150); /* wait for warmup */
 	}
 
-	intel_de_write(dev_priv, TRANSCONF(pipe), TRANSCONF_ENABLE);
-	intel_de_posting_read(dev_priv, TRANSCONF(pipe));
+	intel_de_write(dev_priv, TRANSCONF(dev_priv, pipe), TRANSCONF_ENABLE);
+	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, pipe));
 
 	intel_wait_for_pipe_scanline_moving(crtc);
 }
@@ -8262,8 +8268,8 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_de_read(dev_priv, CURCNTR(dev_priv, PIPE_B)) & MCURSOR_MODE_MASK);
 
-	intel_de_write(dev_priv, TRANSCONF(pipe), 0);
-	intel_de_posting_read(dev_priv, TRANSCONF(pipe));
+	intel_de_write(dev_priv, TRANSCONF(dev_priv, pipe), 0);
+	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, pipe));
 
 	intel_wait_for_pipe_scanline_stopped(crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 3b6cb237d80a..919f712fef13 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1044,9 +1044,9 @@ static bool i9xx_always_on_power_well_enabled(struct drm_i915_private *dev_priv,
 static void i830_pipes_power_well_enable(struct drm_i915_private *dev_priv,
 					 struct i915_power_well *power_well)
 {
-	if ((intel_de_read(dev_priv, TRANSCONF(PIPE_A)) & TRANSCONF_ENABLE) == 0)
+	if ((intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE) == 0)
 		i830_enable_pipe(dev_priv, PIPE_A);
-	if ((intel_de_read(dev_priv, TRANSCONF(PIPE_B)) & TRANSCONF_ENABLE) == 0)
+	if ((intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE) == 0)
 		i830_enable_pipe(dev_priv, PIPE_B);
 }
 
@@ -1060,8 +1060,8 @@ static void i830_pipes_power_well_disable(struct drm_i915_private *dev_priv,
 static bool i830_pipes_power_well_enabled(struct drm_i915_private *dev_priv,
 					  struct i915_power_well *power_well)
 {
-	return intel_de_read(dev_priv, TRANSCONF(PIPE_A)) & TRANSCONF_ENABLE &&
-		intel_de_read(dev_priv, TRANSCONF(PIPE_B)) & TRANSCONF_ENABLE;
+	return intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE &&
+		intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE;
 }
 
 static void i830_pipes_power_well_sync_hw(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 597f8bd6aa1a..5250622f1479 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -85,7 +85,7 @@ intel_drrs_set_refresh_rate_pipeconf(struct intel_crtc *crtc,
 	else
 		bit = TRANSCONF_REFRESH_RATE_ALT_ILK;
 
-	intel_de_rmw(dev_priv, TRANSCONF(cpu_transcoder),
+	intel_de_rmw(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
 		     bit, refresh_rate == DRRS_REFRESH_RATE_LOW ? bit : 0);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 295a0f24ebbf..8b17b8ad71c3 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -1034,7 +1034,7 @@ void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
 	temp = intel_de_read(dev_priv, reg);
 	temp &= ~(FDI_DP_PORT_WIDTH_MASK | (0x7 << 16));
 	temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
-	temp |= (intel_de_read(dev_priv, TRANSCONF(pipe)) & TRANSCONF_BPC_MASK) << 11;
+	temp |= (intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe)) & TRANSCONF_BPC_MASK) << 11;
 	intel_de_write(dev_priv, reg, temp | FDI_RX_PLL_ENABLE);
 
 	intel_de_posting_read(dev_priv, reg);
@@ -1090,7 +1090,7 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
 	reg = FDI_RX_CTL(pipe);
 	temp = intel_de_read(dev_priv, reg);
 	temp &= ~(0x7 << 16);
-	temp |= (intel_de_read(dev_priv, TRANSCONF(pipe)) & TRANSCONF_BPC_MASK) << 11;
+	temp |= (intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe)) & TRANSCONF_BPC_MASK) << 11;
 	intel_de_write(dev_priv, reg, temp & ~FDI_RX_ENABLE);
 
 	intel_de_posting_read(dev_priv, reg);
@@ -1116,7 +1116,7 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
 	}
 	/* BPC in FDI rx is consistent with that in TRANSCONF */
 	temp &= ~(0x07 << 16);
-	temp |= (intel_de_read(dev_priv, TRANSCONF(pipe)) & TRANSCONF_BPC_MASK) << 11;
+	temp |= (intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe)) & TRANSCONF_BPC_MASK) << 11;
 	intel_de_write(dev_priv, reg, temp);
 
 	intel_de_posting_read(dev_priv, reg);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 6a45bc1651c3..0d48b9bec29c 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -271,7 +271,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 
 	reg = PCH_TRANSCONF(pipe);
 	val = intel_de_read(dev_priv, reg);
-	pipeconf_val = intel_de_read(dev_priv, TRANSCONF(pipe));
+	pipeconf_val = intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe));
 
 	if (HAS_PCH_IBX(dev_priv)) {
 		/* Configure frame start delay to match the CPU */
@@ -413,7 +413,7 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 	    intel_crtc_has_dp_encoder(crtc_state)) {
 		const struct drm_display_mode *adjusted_mode =
 			&crtc_state->hw.adjusted_mode;
-		u32 bpc = (intel_de_read(dev_priv, TRANSCONF(pipe)) & TRANSCONF_BPC_MASK) >> 5;
+		u32 bpc = (intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe)) & TRANSCONF_BPC_MASK) >> 5;
 		i915_reg_t reg = TRANS_DP_CTL(pipe);
 		enum port port;
 
@@ -557,7 +557,8 @@ static void lpt_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
 
 	val = TRANS_ENABLE;
-	pipeconf_val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
+	pipeconf_val = intel_de_read(dev_priv,
+				     TRANSCONF(dev_priv, cpu_transcoder));
 
 	if ((pipeconf_val & TRANSCONF_INTERLACE_MASK_HSW) == TRANSCONF_INTERLACE_IF_ID_ILK)
 		val |= TRANS_INTERLACE_INTERLACED;
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index ee9923c7b115..eae5b5e09aa8 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -972,7 +972,8 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 		 */
 		if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 		    port == PORT_C)
-			enabled = intel_de_read(display, TRANSCONF(PIPE_B)) & TRANSCONF_ENABLE;
+			enabled = intel_de_read(display,
+						TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE;
 
 		/* Try command mode if video mode not enabled */
 		if (!enabled) {
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index eaa92d392189..ad21b8f65d6b 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -67,7 +67,7 @@ static int edp_pipe_is_enabled(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 
-	if (!(vgpu_vreg_t(vgpu, TRANSCONF(TRANSCODER_EDP)) & TRANSCONF_ENABLE))
+	if (!(vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, TRANSCODER_EDP)) & TRANSCONF_ENABLE))
 		return 0;
 
 	if (!(vgpu_vreg(vgpu, _TRANS_DDI_FUNC_CTL_EDP) & TRANS_DDI_FUNC_ENABLE))
@@ -83,7 +83,7 @@ int pipe_is_enabled(struct intel_vgpu *vgpu, int pipe)
 			pipe < PIPE_A || pipe >= I915_MAX_PIPES))
 		return -EINVAL;
 
-	if (vgpu_vreg_t(vgpu, TRANSCONF(pipe)) & TRANSCONF_ENABLE)
+	if (vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, pipe)) & TRANSCONF_ENABLE)
 		return 1;
 
 	if (edp_pipe_is_enabled(vgpu) &&
@@ -191,7 +191,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			  GEN8_DE_PORT_HOTPLUG(HPD_PORT_C));
 
 		for_each_pipe(dev_priv, pipe) {
-			vgpu_vreg_t(vgpu, TRANSCONF(pipe)) &=
+			vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, pipe)) &=
 				~(TRANSCONF_ENABLE | TRANSCONF_STATE_ENABLE);
 			vgpu_vreg_t(vgpu, DSPCNTR(dev_priv, pipe)) &= ~DISP_ENABLE;
 			vgpu_vreg_t(vgpu, SPRCTL(pipe)) &= ~SPRITE_ENABLE;
@@ -252,8 +252,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		 *   TRANSCODER_A can be enabled. PORT_x depends on the input of
 		 *   setup_virtual_dp_monitor.
 		 */
-		vgpu_vreg_t(vgpu, TRANSCONF(TRANSCODER_A)) |= TRANSCONF_ENABLE;
-		vgpu_vreg_t(vgpu, TRANSCONF(TRANSCODER_A)) |= TRANSCONF_STATE_ENABLE;
+		vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, TRANSCODER_A)) |= TRANSCONF_ENABLE;
+		vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, TRANSCODER_A)) |= TRANSCONF_STATE_ENABLE;
 
 		/*
 		 * Golden M/N are calculated based on:
@@ -510,7 +510,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) |= MCURSOR_MODE_DISABLE;
 	}
 
-	vgpu_vreg_t(vgpu, TRANSCONF(TRANSCODER_A)) |= TRANSCONF_ENABLE;
+	vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, TRANSCODER_A)) |= TRANSCONF_ENABLE;
 }
 
 static void clean_virtual_dp_monitor(struct intel_vgpu *vgpu, int port_num)
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 00cf35a9669e..039d2cb273df 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -2270,10 +2270,14 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_DFH(GEN7_HALF_SLICE_CHICKEN1, D_ALL, F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
 
 	/* display */
-	MMIO_DH(TRANSCONF(TRANSCODER_A), D_ALL, NULL, pipeconf_mmio_write);
-	MMIO_DH(TRANSCONF(TRANSCODER_B), D_ALL, NULL, pipeconf_mmio_write);
-	MMIO_DH(TRANSCONF(TRANSCODER_C), D_ALL, NULL, pipeconf_mmio_write);
-	MMIO_DH(TRANSCONF(TRANSCODER_EDP), D_ALL, NULL, pipeconf_mmio_write);
+	MMIO_DH(TRANSCONF(dev_priv, TRANSCODER_A), D_ALL, NULL,
+		pipeconf_mmio_write);
+	MMIO_DH(TRANSCONF(dev_priv, TRANSCODER_B), D_ALL, NULL,
+		pipeconf_mmio_write);
+	MMIO_DH(TRANSCONF(dev_priv, TRANSCODER_C), D_ALL, NULL,
+		pipeconf_mmio_write);
+	MMIO_DH(TRANSCONF(dev_priv, TRANSCODER_EDP), D_ALL, NULL,
+		pipeconf_mmio_write);
 	MMIO_DH(DSPSURF(dev_priv, PIPE_A), D_ALL, NULL, pri_surf_mmio_write);
 	MMIO_DH(REG_50080(PIPE_A, PLANE_PRIMARY), D_ALL, NULL,
 		reg50080_mmio_write);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index cd6eda1b6bef..72f5140cf109 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1876,7 +1876,7 @@
 #define PIPESTAT_INT_ENABLE_MASK		0x7fff0000
 #define PIPESTAT_INT_STATUS_MASK		0x0000ffff
 
-#define TRANSCONF(trans)	_MMIO_PIPE2(dev_priv, (trans), _TRANSACONF)
+#define TRANSCONF(dev_priv, trans)	_MMIO_PIPE2(dev_priv, (trans), _TRANSACONF)
 #define PIPEDSL(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
 #define PIPEFRAME(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
 #define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 600e89148f77..436d4a2eccd7 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -130,10 +130,10 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPEDSL(PIPE_B));
 	MMIO_D(PIPEDSL(PIPE_C));
 	MMIO_D(PIPEDSL(_PIPE_EDP));
-	MMIO_D(TRANSCONF(TRANSCODER_A));
-	MMIO_D(TRANSCONF(TRANSCODER_B));
-	MMIO_D(TRANSCONF(TRANSCODER_C));
-	MMIO_D(TRANSCONF(TRANSCODER_EDP));
+	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_A));
+	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_B));
+	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_C));
+	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPESTAT(PIPE_A));
 	MMIO_D(PIPESTAT(PIPE_B));
 	MMIO_D(PIPESTAT(PIPE_C));
-- 
2.39.2

