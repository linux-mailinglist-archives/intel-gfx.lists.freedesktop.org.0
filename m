Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 260B7A6B925
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 11:53:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F23510E794;
	Fri, 21 Mar 2025 10:53:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="grF5WA+V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC34210E0BC;
 Fri, 21 Mar 2025 10:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742554412; x=1774090412;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/p41mLZz9moopmfzAtjTrUgjA5ccV6ClGdEZEO+FEaY=;
 b=grF5WA+VNqP/lhX0HTrglfv+bN214t7wERnSXjQf6o/3BI8UVh7Po7vf
 dhM1MBi9HilLRloUnuy+m41B11d2X46ml8MjKSYADJPlJ75SPWMzucIh3
 5tMEgC4fh07vai7WF5texVXOf6PBKJEV1nSKNEKPtb1eaf89gNN9t5UZR
 wFhqlP2MV3LyFX0pGMdI9da18kkhmU+c5gg6bNp+A1Qn7G3k5Ia/Csxiw
 0eo1LYAinT78Tgzlsgg50OL4LOi+6PMakv83TVMsb79FzGloKKTudLFGY
 r6PooptdDX2qFDJn4/QcSL9hyK9pO3VndGloQmPvPEShmY7J+ZO+Uo6cf w==;
X-CSE-ConnectionGUID: mZ9t6pBMR0Sainrr1KGzkQ==
X-CSE-MsgGUID: +spJXmI5QTmByUvNAzLoXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="54483921"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="54483921"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:32 -0700
X-CSE-ConnectionGUID: UgOpHFIRTpqJb9UdCr/jcA==
X-CSE-MsgGUID: 7GvQK83XSvKsySF3v83okQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123830063"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/12] drm/i915/lvds: convert intel_lvds.[ch] to struct
 intel_display
Date: Fri, 21 Mar 2025 12:52:51 +0200
Message-Id: <2b5205db60f956dba788cc894531cc74d0dd853d.1742554320.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742554320.git.jani.nikula@intel.com>
References: <cover.1742554320.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_lvds.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  11 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  13 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     | 142 +++++++++---------
 drivers/gpu/drm/i915/display/intel_lvds.h     |  18 +--
 .../gpu/drm/i915/display/intel_pch_display.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   4 +-
 7 files changed, 97 insertions(+), 95 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5ac5a7061ce..a24206535772 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2342,7 +2342,6 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	intel_joiner_compute_pipe_src(crtc_state);
 
@@ -2361,7 +2360,7 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 		}
 
 		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
-		    intel_is_dual_link_lvds(i915)) {
+		    intel_is_dual_link_lvds(display)) {
 			drm_dbg_kms(display->drm,
 				    "[CRTC:%d:%s] Odd pipe source width not supported with dual link LVDS\n",
 				    crtc->base.base.id, crtc->base.name);
@@ -7678,7 +7677,7 @@ void intel_setup_outputs(struct intel_display *display)
 		 * to prevent the registration of both eDP and LVDS and the
 		 * incorrect sharing of the PPS.
 		 */
-		intel_lvds_init(dev_priv);
+		intel_lvds_init(display);
 		intel_crt_init(display);
 
 		dpd_is_edp = intel_dp_is_port_edp(display, PORT_D);
@@ -7755,13 +7754,13 @@ void intel_setup_outputs(struct intel_display *display)
 
 		vlv_dsi_init(display);
 	} else if (display->platform.pineview) {
-		intel_lvds_init(dev_priv);
+		intel_lvds_init(display);
 		intel_crt_init(display);
 	} else if (IS_DISPLAY_VER(display, 3, 4)) {
 		bool found = false;
 
 		if (display->platform.mobile)
-			intel_lvds_init(dev_priv);
+			intel_lvds_init(display);
 
 		intel_crt_init(display);
 
@@ -7803,7 +7802,7 @@ void intel_setup_outputs(struct intel_display *display)
 			intel_tv_init(display);
 	} else if (DISPLAY_VER(display) == 2) {
 		if (display->platform.i85x)
-			intel_lvds_init(dev_priv);
+			intel_lvds_init(display);
 
 		intel_crt_init(display);
 		intel_dvo_init(display);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e3821ccfabe3..f21f9b441fc2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6325,7 +6325,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	 * eDP and LVDS bail out early in this case to prevent interfering
 	 * with an already powered-on LVDS power sequencer.
 	 */
-	if (intel_get_lvds_encoder(dev_priv)) {
+	if (intel_get_lvds_encoder(display)) {
 		drm_WARN_ON(display->drm,
 			    !(HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)));
 		drm_info(display->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 08a30e5aafce..23f4e01c3e8f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -421,6 +421,7 @@ void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
 /* Returns the clock of the currently programmed mode of the given pipe. */
 void i9xx_crtc_clock_get(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
@@ -476,7 +477,7 @@ void i9xx_crtc_clock_get(struct intel_crtc_state *crtc_state)
 		enum pipe lvds_pipe;
 
 		if (IS_I85X(dev_priv) &&
-		    intel_lvds_port_enabled(dev_priv, LVDS, &lvds_pipe) &&
+		    intel_lvds_port_enabled(display, LVDS, &lvds_pipe) &&
 		    lvds_pipe == crtc->pipe) {
 			u32 lvds = intel_de_read(dev_priv, LVDS);
 
@@ -620,7 +621,7 @@ i9xx_select_p2_div(const struct intel_limit *limit,
 		   const struct intel_crtc_state *crtc_state,
 		   int target)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		/*
@@ -628,7 +629,7 @@ i9xx_select_p2_div(const struct intel_limit *limit,
 		 * We haven't figured out how to reliably set up different
 		 * single/dual channel state, if we even can.
 		 */
-		if (intel_is_dual_link_lvds(dev_priv))
+		if (intel_is_dual_link_lvds(display))
 			return limit->p2.p2_fast;
 		else
 			return limit->p2.p2_slow;
@@ -1246,7 +1247,7 @@ static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
 	    ((intel_panel_use_ssc(display) && i915->display.vbt.lvds_ssc_freq == 100000) ||
-	     (HAS_PCH_IBX(i915) && intel_is_dual_link_lvds(i915))))
+	     (HAS_PCH_IBX(i915) && intel_is_dual_link_lvds(display))))
 		return 25;
 
 	if (crtc_state->sdvo_tv_clock)
@@ -1381,7 +1382,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 			refclk = dev_priv->display.vbt.lvds_ssc_freq;
 		}
 
-		if (intel_is_dual_link_lvds(dev_priv)) {
+		if (intel_is_dual_link_lvds(display)) {
 			if (refclk == 100000)
 				limit = &ilk_limits_dual_lvds_100m;
 			else
@@ -1553,7 +1554,7 @@ static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
 				    refclk);
 		}
 
-		if (intel_is_dual_link_lvds(dev_priv))
+		if (intel_is_dual_link_lvds(display))
 			limit = &intel_limits_g4x_dual_channel_lvds;
 		else
 			limit = &intel_limits_g4x_single_channel_lvds;
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 19f52d1659fa..89d26913e253 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -84,12 +84,13 @@ static struct intel_lvds_encoder *to_lvds_encoder(struct intel_encoder *encoder)
 	return container_of(encoder, struct intel_lvds_encoder, base);
 }
 
-bool intel_lvds_port_enabled(struct drm_i915_private *i915,
+bool intel_lvds_port_enabled(struct intel_display *display,
 			     i915_reg_t lvds_reg, enum pipe *pipe)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 val;
 
-	val = intel_de_read(i915, lvds_reg);
+	val = intel_de_read(display, lvds_reg);
 
 	/* asserts want to know the pipe even if the port is disabled */
 	if (HAS_PCH_CPT(i915))
@@ -104,7 +105,6 @@ static bool intel_lvds_get_hw_state(struct intel_encoder *encoder,
 				    enum pipe *pipe)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	intel_wakeref_t wakeref;
 	bool ret;
@@ -113,7 +113,7 @@ static bool intel_lvds_get_hw_state(struct intel_encoder *encoder,
 	if (!wakeref)
 		return false;
 
-	ret = intel_lvds_port_enabled(i915, lvds_encoder->reg, pipe);
+	ret = intel_lvds_port_enabled(display, lvds_encoder->reg, pipe);
 
 	intel_display_power_put(display, encoder->power_domain, wakeref);
 
@@ -123,13 +123,13 @@ static bool intel_lvds_get_hw_state(struct intel_encoder *encoder,
 static void intel_lvds_get_config(struct intel_encoder *encoder,
 				  struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	u32 tmp, flags = 0;
 
 	crtc_state->output_types |= BIT(INTEL_OUTPUT_LVDS);
 
-	tmp = intel_de_read(dev_priv, lvds_encoder->reg);
+	tmp = intel_de_read(display, lvds_encoder->reg);
 	if (tmp & LVDS_HSYNC_POLARITY)
 		flags |= DRM_MODE_FLAG_NHSYNC;
 	else
@@ -141,13 +141,13 @@ static void intel_lvds_get_config(struct intel_encoder *encoder,
 
 	crtc_state->hw.adjusted_mode.flags |= flags;
 
-	if (DISPLAY_VER(dev_priv) < 5)
+	if (DISPLAY_VER(display) < 5)
 		crtc_state->gmch_pfit.lvds_border_bits =
 			tmp & LVDS_BORDER_ENABLE;
 
 	/* gen2/3 store dither state in pfit control, needs to match */
-	if (DISPLAY_VER(dev_priv) < 4) {
-		tmp = intel_de_read(dev_priv, PFIT_CONTROL(dev_priv));
+	if (DISPLAY_VER(display) < 4) {
+		tmp = intel_de_read(display, PFIT_CONTROL(display));
 
 		crtc_state->gmch_pfit.control |= tmp & PFIT_PANEL_8TO6_DITHER_ENABLE;
 	}
@@ -155,24 +155,24 @@ static void intel_lvds_get_config(struct intel_encoder *encoder,
 	crtc_state->hw.adjusted_mode.crtc_clock = crtc_state->port_clock;
 }
 
-static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
+static void intel_lvds_pps_get_hw_state(struct intel_display *display,
 					struct intel_lvds_pps *pps)
 {
 	u32 val;
 
-	pps->powerdown_on_reset = intel_de_read(dev_priv,
-						PP_CONTROL(dev_priv, 0)) & PANEL_POWER_RESET;
+	pps->powerdown_on_reset = intel_de_read(display,
+						PP_CONTROL(display, 0)) & PANEL_POWER_RESET;
 
-	val = intel_de_read(dev_priv, PP_ON_DELAYS(dev_priv, 0));
+	val = intel_de_read(display, PP_ON_DELAYS(display, 0));
 	pps->port = REG_FIELD_GET(PANEL_PORT_SELECT_MASK, val);
 	pps->delays.power_up = REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, val);
 	pps->delays.backlight_on = REG_FIELD_GET(PANEL_LIGHT_ON_DELAY_MASK, val);
 
-	val = intel_de_read(dev_priv, PP_OFF_DELAYS(dev_priv, 0));
+	val = intel_de_read(display, PP_OFF_DELAYS(display, 0));
 	pps->delays.power_down = REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, val);
 	pps->delays.backlight_off = REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK, val);
 
-	val = intel_de_read(dev_priv, PP_DIVISOR(dev_priv, 0));
+	val = intel_de_read(display, PP_DIVISOR(display, 0));
 	pps->divider = REG_FIELD_GET(PP_REFERENCE_DIVIDER_MASK, val);
 	val = REG_FIELD_GET(PANEL_POWER_CYCLE_DELAY_MASK, val);
 	/*
@@ -185,12 +185,12 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 	/* Convert from 100ms to 100us units */
 	pps->delays.power_cycle = val * 1000;
 
-	if (DISPLAY_VER(dev_priv) < 5 &&
+	if (DISPLAY_VER(display) < 5 &&
 	    pps->delays.power_up == 0 &&
 	    pps->delays.backlight_on == 0 &&
 	    pps->delays.power_down == 0 &&
 	    pps->delays.backlight_off == 0) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Panel power timings uninitialized, "
 			    "setting defaults\n");
 		/* Set T2 to 40ms and T5 to 200ms in 100 usec units */
@@ -201,7 +201,7 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 		pps->delays.backlight_off = 200 * 10;
 	}
 
-	drm_dbg(&dev_priv->drm, "LVDS PPS:power_up %d power_down %d power_cycle %d backlight_on %d backlight_off %d "
+	drm_dbg(display->drm, "LVDS PPS:power_up %d power_down %d power_cycle %d backlight_on %d backlight_off %d "
 		"divider %d port %d powerdown_on_reset %d\n",
 		pps->delays.power_up, pps->delays.power_down,
 		pps->delays.power_cycle, pps->delays.backlight_on,
@@ -209,28 +209,28 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 		pps->port, pps->powerdown_on_reset);
 }
 
-static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
+static void intel_lvds_pps_init_hw(struct intel_display *display,
 				   struct intel_lvds_pps *pps)
 {
 	u32 val;
 
-	val = intel_de_read(dev_priv, PP_CONTROL(dev_priv, 0));
-	drm_WARN_ON(&dev_priv->drm,
+	val = intel_de_read(display, PP_CONTROL(display, 0));
+	drm_WARN_ON(display->drm,
 		    (val & PANEL_UNLOCK_MASK) != PANEL_UNLOCK_REGS);
 	if (pps->powerdown_on_reset)
 		val |= PANEL_POWER_RESET;
-	intel_de_write(dev_priv, PP_CONTROL(dev_priv, 0), val);
+	intel_de_write(display, PP_CONTROL(display, 0), val);
 
-	intel_de_write(dev_priv, PP_ON_DELAYS(dev_priv, 0),
+	intel_de_write(display, PP_ON_DELAYS(display, 0),
 		       REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, pps->port) |
 		       REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->delays.power_up) |
 		       REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->delays.backlight_on));
 
-	intel_de_write(dev_priv, PP_OFF_DELAYS(dev_priv, 0),
+	intel_de_write(display, PP_OFF_DELAYS(display, 0),
 		       REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->delays.power_down) |
 		       REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->delays.backlight_off));
 
-	intel_de_write(dev_priv, PP_DIVISOR(dev_priv, 0),
+	intel_de_write(display, PP_DIVISOR(display, 0),
 		       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, pps->divider) |
 		       REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK,
 				      DIV_ROUND_UP(pps->delays.power_cycle, 1000) + 1));
@@ -256,7 +256,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 		assert_pll_disabled(display, pipe);
 	}
 
-	intel_lvds_pps_init_hw(i915, &lvds_encoder->init_pps);
+	intel_lvds_pps_init_hw(display, &lvds_encoder->init_pps);
 
 	temp = lvds_encoder->init_lvds_val;
 	temp |= LVDS_PORT_EN | LVDS_A0A2_CLKA_POWER_UP;
@@ -296,7 +296,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 	 * special lvds dither control bit on pch-split platforms, dithering is
 	 * only controlled through the TRANSCONF reg.
 	 */
-	if (DISPLAY_VER(i915) == 4) {
+	if (DISPLAY_VER(display) == 4) {
 		/*
 		 * Bspec wording suggests that LVDS port dithering only exists
 		 * for 18bpp panels.
@@ -312,7 +312,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_NVSYNC)
 		temp |= LVDS_VSYNC_POLARITY;
 
-	intel_de_write(i915, lvds_encoder->reg, temp);
+	intel_de_write(display, lvds_encoder->reg, temp);
 }
 
 /*
@@ -323,16 +323,16 @@ static void intel_enable_lvds(struct intel_atomic_state *state,
 			      const struct intel_crtc_state *crtc_state,
 			      const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	intel_de_rmw(dev_priv, lvds_encoder->reg, 0, LVDS_PORT_EN);
+	intel_de_rmw(display, lvds_encoder->reg, 0, LVDS_PORT_EN);
 
-	intel_de_rmw(dev_priv, PP_CONTROL(dev_priv, 0), 0, PANEL_POWER_ON);
-	intel_de_posting_read(dev_priv, lvds_encoder->reg);
+	intel_de_rmw(display, PP_CONTROL(display, 0), 0, PANEL_POWER_ON);
+	intel_de_posting_read(display, lvds_encoder->reg);
 
-	if (intel_de_wait_for_set(dev_priv, PP_STATUS(dev_priv, 0), PP_ON, 5000))
-		drm_err(&dev_priv->drm,
+	if (intel_de_wait_for_set(display, PP_STATUS(display, 0), PP_ON, 5000))
+		drm_err(display->drm,
 			"timed out waiting for panel to power on\n");
 
 	intel_backlight_enable(crtc_state, conn_state);
@@ -343,16 +343,16 @@ static void intel_disable_lvds(struct intel_atomic_state *state,
 			       const struct intel_crtc_state *old_crtc_state,
 			       const struct drm_connector_state *old_conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	intel_de_rmw(dev_priv, PP_CONTROL(dev_priv, 0), PANEL_POWER_ON, 0);
-	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(dev_priv, 0), PP_ON, 1000))
-		drm_err(&dev_priv->drm,
+	intel_de_rmw(display, PP_CONTROL(display, 0), PANEL_POWER_ON, 0);
+	if (intel_de_wait_for_clear(display, PP_STATUS(display, 0), PP_ON, 1000))
+		drm_err(display->drm,
 			"timed out waiting for panel to power off\n");
 
-	intel_de_rmw(dev_priv, lvds_encoder->reg, LVDS_PORT_EN, 0);
-	intel_de_posting_read(dev_priv, lvds_encoder->reg);
+	intel_de_rmw(display, lvds_encoder->reg, LVDS_PORT_EN, 0);
+	intel_de_posting_read(display, lvds_encoder->reg);
 }
 
 static void gmch_disable_lvds(struct intel_atomic_state *state,
@@ -384,10 +384,10 @@ static void pch_post_disable_lvds(struct intel_atomic_state *state,
 
 static void intel_lvds_shutdown(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(dev_priv, 0), PP_CYCLE_DELAY_ACTIVE, 5000))
-		drm_err(&dev_priv->drm,
+	if (intel_de_wait_for_clear(display, PP_STATUS(display, 0), PP_CYCLE_DELAY_ACTIVE, 5000))
+		drm_err(display->drm,
 			"timed out waiting for panel power cycle delay\n");
 }
 
@@ -420,6 +420,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 				     struct intel_crtc_state *crtc_state,
 				     struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct intel_connector *connector = lvds_encoder->attached_connector;
@@ -429,8 +430,8 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 	int ret;
 
 	/* Should never happen!! */
-	if (DISPLAY_VER(i915) < 4 && crtc->pipe == 0) {
-		drm_err(&i915->drm, "Can't support LVDS on pipe A\n");
+	if (DISPLAY_VER(display) < 4 && crtc->pipe == 0) {
+		drm_err(display->drm, "Can't support LVDS on pipe A\n");
 		return -EINVAL;
 	}
 
@@ -447,7 +448,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 
 	/* TODO: Check crtc_state->max_link_bpp_x16 instead of bw_constrained */
 	if (lvds_bpp != crtc_state->pipe_bpp && !crtc_state->bw_constrained) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "forcing display bpp (was %d) to LVDS (%d)\n",
 			    crtc_state->pipe_bpp, lvds_bpp);
 		crtc_state->pipe_bpp = lvds_bpp;
@@ -775,11 +776,11 @@ static const struct dmi_system_id intel_dual_link_lvds[] = {
 	{ }	/* terminating entry */
 };
 
-struct intel_encoder *intel_get_lvds_encoder(struct drm_i915_private *i915)
+struct intel_encoder *intel_get_lvds_encoder(struct intel_display *display)
 {
 	struct intel_encoder *encoder;
 
-	for_each_intel_encoder(&i915->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		if (encoder->type == INTEL_OUTPUT_LVDS)
 			return encoder;
 	}
@@ -787,15 +788,16 @@ struct intel_encoder *intel_get_lvds_encoder(struct drm_i915_private *i915)
 	return NULL;
 }
 
-bool intel_is_dual_link_lvds(struct drm_i915_private *i915)
+bool intel_is_dual_link_lvds(struct intel_display *display)
 {
-	struct intel_encoder *encoder = intel_get_lvds_encoder(i915);
+	struct intel_encoder *encoder = intel_get_lvds_encoder(display);
 
 	return encoder && to_lvds_encoder(encoder)->is_dual_link;
 }
 
 static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
 {
+	struct intel_display *display = to_intel_display(&lvds_encoder->base);
 	struct drm_i915_private *i915 = to_i915(lvds_encoder->base.base.dev);
 	struct intel_connector *connector = lvds_encoder->attached_connector;
 	const struct drm_display_mode *fixed_mode =
@@ -803,8 +805,8 @@ static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
 	unsigned int val;
 
 	/* use the module option value if specified */
-	if (i915->display.params.lvds_channel_mode > 0)
-		return i915->display.params.lvds_channel_mode == 2;
+	if (display->params.lvds_channel_mode > 0)
+		return display->params.lvds_channel_mode == 2;
 
 	/* single channel LVDS is limited to 112 MHz */
 	if (fixed_mode->clock > 112999)
@@ -819,7 +821,7 @@ static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
 	 * we need to check "the value to be set" in VBT when LVDS
 	 * register is uninitialized.
 	 */
-	val = intel_de_read(i915, lvds_encoder->reg);
+	val = intel_de_read(display, lvds_encoder->reg);
 	if (HAS_PCH_CPT(i915))
 		val &= ~(LVDS_DETECTED | LVDS_PIPE_SEL_MASK_CPT);
 	else
@@ -837,14 +839,14 @@ static void intel_lvds_add_properties(struct drm_connector *connector)
 
 /**
  * intel_lvds_init - setup LVDS connectors on this device
- * @i915: i915 device
+ * @display: display device
  *
  * Create the connector, register the LVDS DDC bus, and try to figure out what
  * modes we can display on the LVDS panel (if present).
  */
-void intel_lvds_init(struct drm_i915_private *i915)
+void intel_lvds_init(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_lvds_encoder *lvds_encoder;
 	struct intel_connector *connector;
 	const struct drm_edid *drm_edid;
@@ -855,13 +857,13 @@ void intel_lvds_init(struct drm_i915_private *i915)
 
 	/* Skip init on machines we know falsely report LVDS */
 	if (dmi_check_system(intel_no_lvds)) {
-		drm_WARN(&i915->drm, !i915->display.vbt.int_lvds_support,
+		drm_WARN(display->drm, !display->vbt.int_lvds_support,
 			 "Useless DMI match. Internal LVDS support disabled by VBT\n");
 		return;
 	}
 
-	if (!i915->display.vbt.int_lvds_support) {
-		drm_dbg_kms(&i915->drm,
+	if (!display->vbt.int_lvds_support) {
+		drm_dbg_kms(display->drm,
 			    "Internal LVDS support disabled by VBT\n");
 		return;
 	}
@@ -871,7 +873,7 @@ void intel_lvds_init(struct drm_i915_private *i915)
 	else
 		lvds_reg = LVDS;
 
-	lvds = intel_de_read(i915, lvds_reg);
+	lvds = intel_de_read(display, lvds_reg);
 
 	if (HAS_PCH_SPLIT(i915)) {
 		if ((lvds & LVDS_DETECTED) == 0)
@@ -881,11 +883,11 @@ void intel_lvds_init(struct drm_i915_private *i915)
 	ddc_pin = GMBUS_PIN_PANEL;
 	if (!intel_bios_is_lvds_present(display, &ddc_pin)) {
 		if ((lvds & LVDS_PORT_EN) == 0) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "LVDS is not present in VBT\n");
 			return;
 		}
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "LVDS is not present in VBT, but enabled anyway\n");
 	}
 
@@ -902,12 +904,12 @@ void intel_lvds_init(struct drm_i915_private *i915)
 	lvds_encoder->attached_connector = connector;
 	encoder = &lvds_encoder->base;
 
-	drm_connector_init_with_ddc(&i915->drm, &connector->base,
+	drm_connector_init_with_ddc(display->drm, &connector->base,
 				    &intel_lvds_connector_funcs,
 				    DRM_MODE_CONNECTOR_LVDS,
 				    intel_gmbus_get_adapter(display, ddc_pin));
 
-	drm_encoder_init(&i915->drm, &encoder->base, &intel_lvds_enc_funcs,
+	drm_encoder_init(display->drm, &encoder->base, &intel_lvds_enc_funcs,
 			 DRM_MODE_ENCODER_LVDS, "LVDS");
 
 	encoder->enable = intel_enable_lvds;
@@ -931,7 +933,7 @@ void intel_lvds_init(struct drm_i915_private *i915)
 	encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
 	encoder->port = PORT_NONE;
 	encoder->cloneable = 0;
-	if (DISPLAY_VER(i915) < 4)
+	if (DISPLAY_VER(display) < 4)
 		encoder->pipe_mask = BIT(PIPE_B);
 	else
 		encoder->pipe_mask = ~0;
@@ -943,7 +945,7 @@ void intel_lvds_init(struct drm_i915_private *i915)
 
 	intel_lvds_add_properties(&connector->base);
 
-	intel_lvds_pps_get_hw_state(i915, &lvds_encoder->init_pps);
+	intel_lvds_pps_get_hw_state(display, &lvds_encoder->init_pps);
 	lvds_encoder->init_lvds_val = lvds;
 
 	/*
@@ -958,7 +960,7 @@ void intel_lvds_init(struct drm_i915_private *i915)
 	 * Attempt to get the fixed panel mode from DDC.  Assume that the
 	 * preferred mode is the right one.
 	 */
-	mutex_lock(&i915->drm.mode_config.mutex);
+	mutex_lock(&display->drm->mode_config.mutex);
 	if (vga_switcheroo_handler_flags() & VGA_SWITCHEROO_CAN_SWITCH_DDC)
 		drm_edid = drm_edid_read_switcheroo(&connector->base, connector->base.ddc);
 	else
@@ -991,7 +993,7 @@ void intel_lvds_init(struct drm_i915_private *i915)
 	if (!intel_panel_preferred_fixed_mode(connector))
 		intel_panel_add_encoder_fixed_mode(connector, encoder);
 
-	mutex_unlock(&i915->drm.mode_config.mutex);
+	mutex_unlock(&display->drm->mode_config.mutex);
 
 	/* If we still don't have a mode after all that, give up. */
 	if (!intel_panel_preferred_fixed_mode(connector))
@@ -1002,7 +1004,7 @@ void intel_lvds_init(struct drm_i915_private *i915)
 	intel_backlight_setup(connector, INVALID_PIPE);
 
 	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
-	drm_dbg_kms(&i915->drm, "detected %s-link lvds configuration\n",
+	drm_dbg_kms(display->drm, "detected %s-link lvds configuration\n",
 		    lvds_encoder->is_dual_link ? "dual" : "single");
 
 	lvds_encoder->a3_power = lvds & LVDS_A3_POWER_MASK;
@@ -1010,7 +1012,7 @@ void intel_lvds_init(struct drm_i915_private *i915)
 	return;
 
 failed:
-	drm_dbg_kms(&i915->drm, "No LVDS modes found, disabling.\n");
+	drm_dbg_kms(display->drm, "No LVDS modes found, disabling.\n");
 	drm_connector_cleanup(&connector->base);
 	drm_encoder_cleanup(&encoder->base);
 	kfree(lvds_encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.h b/drivers/gpu/drm/i915/display/intel_lvds.h
index 7ad5fa9c0434..a6db1706a97c 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.h
+++ b/drivers/gpu/drm/i915/display/intel_lvds.h
@@ -11,28 +11,28 @@
 #include "i915_reg_defs.h"
 
 enum pipe;
-struct drm_i915_private;
+struct intel_display;
 
 #ifdef I915
-bool intel_lvds_port_enabled(struct drm_i915_private *dev_priv,
+bool intel_lvds_port_enabled(struct intel_display *display,
 			     i915_reg_t lvds_reg, enum pipe *pipe);
-void intel_lvds_init(struct drm_i915_private *dev_priv);
-struct intel_encoder *intel_get_lvds_encoder(struct drm_i915_private *dev_priv);
-bool intel_is_dual_link_lvds(struct drm_i915_private *dev_priv);
+void intel_lvds_init(struct intel_display *display);
+struct intel_encoder *intel_get_lvds_encoder(struct intel_display *display);
+bool intel_is_dual_link_lvds(struct intel_display *display);
 #else
-static inline bool intel_lvds_port_enabled(struct drm_i915_private *dev_priv,
+static inline bool intel_lvds_port_enabled(struct intel_display *display,
 					   i915_reg_t lvds_reg, enum pipe *pipe)
 {
 	return false;
 }
-static inline void intel_lvds_init(struct drm_i915_private *dev_priv)
+static inline void intel_lvds_init(struct intel_display *display)
 {
 }
-static inline struct intel_encoder *intel_get_lvds_encoder(struct drm_i915_private *dev_priv)
+static inline struct intel_encoder *intel_get_lvds_encoder(struct intel_display *display)
 {
 	return NULL;
 }
-static inline bool intel_is_dual_link_lvds(struct drm_i915_private *dev_priv)
+static inline bool intel_is_dual_link_lvds(struct intel_display *display)
 {
 	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 99f6d6f53fa7..0bfa84c758af 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -93,7 +93,7 @@ static void assert_pch_ports_disabled(struct drm_i915_private *dev_priv,
 				 pipe_name(pipe));
 
 	INTEL_DISPLAY_STATE_WARN(display,
-				 intel_lvds_port_enabled(dev_priv, PCH_LVDS, &port_pipe) && port_pipe == pipe,
+				 intel_lvds_port_enabled(display, PCH_LVDS, &port_pipe) && port_pipe == pipe,
 				 "PCH LVDS enabled on transcoder %c, should be disabled\n",
 				 pipe_name(pipe));
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 617ce4993172..6a92acfa1634 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1855,7 +1855,7 @@ void assert_pps_unlocked(struct intel_display *display, enum pipe pipe)
 
 		switch (port_sel) {
 		case PANEL_PORT_SELECT_LVDS:
-			intel_lvds_port_enabled(dev_priv, PCH_LVDS, &panel_pipe);
+			intel_lvds_port_enabled(display, PCH_LVDS, &panel_pipe);
 			break;
 		case PANEL_PORT_SELECT_DPA:
 			g4x_dp_port_enabled(display, DP_A, PORT_A, &panel_pipe);
@@ -1883,7 +1883,7 @@ void assert_pps_unlocked(struct intel_display *display, enum pipe pipe)
 
 		drm_WARN_ON(display->drm,
 			    port_sel != PANEL_PORT_SELECT_LVDS);
-		intel_lvds_port_enabled(dev_priv, LVDS, &panel_pipe);
+		intel_lvds_port_enabled(display, LVDS, &panel_pipe);
 	}
 
 	val = intel_de_read(display, pp_reg);
-- 
2.39.5

