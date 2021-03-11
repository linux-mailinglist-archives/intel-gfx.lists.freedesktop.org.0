Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7099C33806B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:36:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D4C96EE8D;
	Thu, 11 Mar 2021 22:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF75C6EE86
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:45 +0000 (UTC)
IronPort-SDR: Ygt/x1fbQPEQu2faOdZVJ39V4VPF3fjoTim53qJR2rYimSWJcjRcU1Yc8DhxY5TDeoS43q54NG
 J7fi2YrExJtA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="185395061"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="185395061"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:44 -0800
IronPort-SDR: HJAF0ZM1QJqfpU+cxnawCf4UYNnLtcmahvGVknnYHs7ZJSkZXY8Fqoh2SIuknhMIWjxGJ+eX9F
 JeBt4vwiOgxg==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852645"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:43 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:35:37 -0800
Message-Id: <20210311223632.3191939-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/56] drm/i915/display: Convert gen5/gen6 tests
 to IS_IRONLAKE/IS_SANDYBRIDGE
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ILK is the only platform that we consider "gen5" and SNB is the only
platform we consider "gen6."  Add an IS_SANDYBRIDGE() macro and then
replace numeric platform tests for these two generations with direct
platform tests with the following Coccinelle semantic patch:

        @@ expression dev_priv; @@
        - IS_GEN(dev_priv, 5)
        + IS_IRONLAKE(dev_priv)

        @@ expression dev_priv; @@
        - IS_GEN(dev_priv, 6)
        + IS_SANDYBRIDGE(dev_priv)

        @@ expression dev_priv; @@
        - IS_GEN_RANGE(dev_priv, 5, 6)
        + IS_SANDYBRIDGE(dev_priv) || IS_IRONLAKE(dev_priv)

This will simplify our upcoming patches which eliminate INTEL_GEN()
usage in the display code.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          |  4 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.c         |  4 ++--
 drivers/gpu/drm/i915/display/intel_cursor.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c       | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_dp.c            |  6 +++---
 drivers/gpu/drm/i915/display/intel_dp_aux.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c           |  6 +++---
 drivers/gpu/drm/i915/display/intel_fdi.c           |  6 +++---
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c |  2 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.c      |  4 ++--
 drivers/gpu/drm/i915/display/intel_pps.c           |  6 +++---
 drivers/gpu/drm/i915/display/intel_sprite.c        |  4 ++--
 drivers/gpu/drm/i915/i915_drv.h                    |  1 +
 13 files changed, 30 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 8a52beaed2da..95933cc13d58 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -161,8 +161,8 @@ static u32 i9xx_plane_ctl(const struct intel_crtc_state *crtc_state,
 
 	dspcntr = DISPLAY_PLANE_ENABLE;
 
-	if (IS_G4X(dev_priv) || IS_GEN(dev_priv, 5) ||
-	    IS_GEN(dev_priv, 6) || IS_IVYBRIDGE(dev_priv))
+	if (IS_G4X(dev_priv) || IS_IRONLAKE(dev_priv) ||
+	    IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
 		dspcntr |= DISPPLANE_TRICKLE_FEED_DISABLE;
 
 	switch (fb->format->format) {
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index a9019287f7d5..83678feb8897 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2916,9 +2916,9 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->display.get_cdclk = hsw_get_cdclk;
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		dev_priv->display.get_cdclk = vlv_get_cdclk;
-	else if (IS_GEN(dev_priv, 6) || IS_IVYBRIDGE(dev_priv))
+	else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
 		dev_priv->display.get_cdclk = fixed_400mhz_get_cdclk;
-	else if (IS_GEN(dev_priv, 5))
+	else if (IS_IRONLAKE(dev_priv))
 		dev_priv->display.get_cdclk = fixed_450mhz_get_cdclk;
 	else if (IS_GM45(dev_priv))
 		dev_priv->display.get_cdclk = gm45_get_cdclk;
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 21fe4d2753e9..3057179dd4eb 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -360,7 +360,7 @@ static u32 i9xx_cursor_ctl(const struct intel_crtc_state *crtc_state,
 		to_i915(plane_state->uapi.plane->dev);
 	u32 cntl = 0;
 
-	if (IS_GEN(dev_priv, 6) || IS_IVYBRIDGE(dev_priv))
+	if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
 		cntl |= MCURSOR_TRICKLE_FEED_DISABLE;
 
 	switch (drm_rect_width(&plane_state->uapi.dst)) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5bfc06c46e28..f47bbe042a64 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -359,7 +359,7 @@ static void assert_fdi_tx_pll_enabled(struct drm_i915_private *dev_priv,
 	u32 val;
 
 	/* ILK FDI PLL is always enabled */
-	if (IS_GEN(dev_priv, 5))
+	if (IS_IRONLAKE(dev_priv))
 		return;
 
 	/* On Haswell, DDI ports are responsible for the FDI PLL setup */
@@ -7439,7 +7439,7 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
 	 * plane, not only sprite plane.
 	 */
 	if (plane->id != PLANE_CURSOR &&
-	    (IS_GEN_RANGE(dev_priv, 5, 6) ||
+	    (IS_SANDYBRIDGE(dev_priv) || IS_IRONLAKE(dev_priv) ||
 	     IS_IVYBRIDGE(dev_priv)) &&
 	    (turn_on || (!needs_scaling(old_plane_state) &&
 			 needs_scaling(plane_state))))
@@ -11599,7 +11599,7 @@ static bool ilk_has_edp_a(struct drm_i915_private *dev_priv)
 	if ((intel_de_read(dev_priv, DP_A) & DP_DETECTED) == 0)
 		return false;
 
-	if (IS_GEN(dev_priv, 5) && (intel_de_read(dev_priv, FUSE_STRAP) & ILK_eDP_A_DISABLE))
+	if (IS_IRONLAKE(dev_priv) && (intel_de_read(dev_priv, FUSE_STRAP) & ILK_eDP_A_DISABLE))
 		return false;
 
 	return true;
@@ -12407,12 +12407,12 @@ static void sanitize_watermarks(struct drm_i915_private *dev_priv)
 
 static void intel_update_fdi_pll_freq(struct drm_i915_private *dev_priv)
 {
-	if (IS_GEN(dev_priv, 5)) {
+	if (IS_IRONLAKE(dev_priv)) {
 		u32 fdi_pll_clk =
 			intel_de_read(dev_priv, FDI_PLL_BIOS_0) & FDI_PLL_FB_CLOCK_MASK;
 
 		dev_priv->fdi_pll_freq = (fdi_pll_clk + 2) * 10000;
-	} else if (IS_GEN(dev_priv, 6) || IS_IVYBRIDGE(dev_priv)) {
+	} else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) {
 		dev_priv->fdi_pll_freq = 270000;
 	} else {
 		return;
@@ -13057,7 +13057,7 @@ static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
 	 * without several WARNs, but for now let's take the easy
 	 * road.
 	 */
-	return IS_GEN(dev_priv, 6) &&
+	return IS_SANDYBRIDGE(dev_priv) &&
 		crtc_state->hw.active &&
 		crtc_state->shared_dpll &&
 		crtc_state->port_clock == 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b6b5776f5a66..31263250e7f9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2049,7 +2049,7 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 	 * 1. Wait for the start of vertical blank on the enabled pipe going to FDI
 	 * 2. Program DP PLL enable
 	 */
-	if (IS_GEN(dev_priv, 5))
+	if (IS_IRONLAKE(dev_priv))
 		intel_wait_for_vblank_if_active(dev_priv, !crtc->pipe);
 
 	intel_dp->DP |= DP_PLL_ENABLE;
@@ -5399,7 +5399,7 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 	 * ILK doesn't seem capable of DP YCbCr output. The
 	 * displayed image is severly corrupted. SNB+ is fine.
 	 */
-	if (IS_GEN(i915, 5))
+	if (IS_IRONLAKE(i915))
 		return;
 
 	is_branch = drm_dp_is_branch(intel_dp->dpcd);
@@ -6817,7 +6817,7 @@ bool intel_dp_init(struct drm_i915_private *dev_priv,
 		dig_port->dp.set_signal_levels = vlv_set_signal_levels;
 	else if (IS_IVYBRIDGE(dev_priv) && port == PORT_A)
 		dig_port->dp.set_signal_levels = ivb_cpu_edp_set_signal_levels;
-	else if (IS_GEN(dev_priv, 6) && port == PORT_A)
+	else if (IS_SANDYBRIDGE(dev_priv) && port == PORT_A)
 		dig_port->dp.set_signal_levels = snb_cpu_edp_set_signal_levels;
 	else
 		dig_port->dp.set_signal_levels = g4x_set_signal_levels;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index eaebf123310a..4ba08aa4680b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -128,7 +128,7 @@ static u32 g4x_get_aux_send_ctl(struct intel_dp *intel_dp,
 			to_i915(dig_port->base.base.dev);
 	u32 precharge, timeout;
 
-	if (IS_GEN(dev_priv, 6))
+	if (IS_SANDYBRIDGE(dev_priv))
 		precharge = 3;
 	else
 		precharge = 5;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 5fd4fa4805ef..c7beda2e35bc 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -255,16 +255,16 @@ static void ilk_fbc_activate(struct drm_i915_private *dev_priv)
 
 	if (params->fence_id >= 0) {
 		dpfc_ctl |= DPFC_CTL_FENCE_EN;
-		if (IS_GEN(dev_priv, 5))
+		if (IS_IRONLAKE(dev_priv))
 			dpfc_ctl |= params->fence_id;
-		if (IS_GEN(dev_priv, 6)) {
+		if (IS_SANDYBRIDGE(dev_priv)) {
 			intel_de_write(dev_priv, SNB_DPFC_CTL_SA,
 				       SNB_CPU_FENCE_ENABLE | params->fence_id);
 			intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET,
 				       params->fence_y_offset);
 		}
 	} else {
-		if (IS_GEN(dev_priv, 6)) {
+		if (IS_SANDYBRIDGE(dev_priv)) {
 			intel_de_write(dev_priv, SNB_DPFC_CTL_SA, 0);
 			intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET, 0);
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 60b29110099a..d719cd9c5b73 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -373,7 +373,7 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 	temp = intel_de_read(dev_priv, reg);
 	temp &= ~FDI_LINK_TRAIN_NONE;
 	temp |= FDI_LINK_TRAIN_PATTERN_2;
-	if (IS_GEN(dev_priv, 6)) {
+	if (IS_SANDYBRIDGE(dev_priv)) {
 		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
 		/* SNB-B */
 		temp |= FDI_LINK_TRAIN_400MV_0DB_SNB_B;
@@ -810,9 +810,9 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
 void
 intel_fdi_init_hook(struct drm_i915_private *dev_priv)
 {
-	if (IS_GEN(dev_priv, 5)) {
+	if (IS_IRONLAKE(dev_priv)) {
 		dev_priv->display.fdi_link_train = ilk_fdi_link_train;
-	} else if (IS_GEN(dev_priv, 6)) {
+	} else if (IS_SANDYBRIDGE(dev_priv)) {
 		dev_priv->display.fdi_link_train = gen6_fdi_link_train;
 	} else if (IS_IVYBRIDGE(dev_priv)) {
 		/* FIXME: detect B0+ stepping and use auto training */
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 813a4f7033e1..a3715cd42ed0 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -269,7 +269,7 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
 
 	if (HAS_GMCH(dev_priv))
 		i9xx_set_fifo_underrun_reporting(dev, pipe, enable, old);
-	else if (IS_GEN_RANGE(dev_priv, 5, 6))
+	else if (IS_SANDYBRIDGE(dev_priv) || IS_IRONLAKE(dev_priv))
 		ilk_set_fifo_underrun_reporting(dev, pipe, enable);
 	else if (IS_GEN(dev_priv, 7))
 		ivb_set_fifo_underrun_reporting(dev, pipe, enable, old);
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index a9a5df2fee4d..3c4024409d85 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -415,7 +415,7 @@ static int get_new_crc_ctl_reg(struct drm_i915_private *dev_priv,
 		return i9xx_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		return vlv_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
-	else if (IS_GEN_RANGE(dev_priv, 5, 6))
+	else if (IS_SANDYBRIDGE(dev_priv) || IS_IRONLAKE(dev_priv))
 		return ilk_pipe_crc_ctl_reg(source, val);
 	else if (INTEL_GEN(dev_priv) < 9)
 		return ivb_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
@@ -545,7 +545,7 @@ intel_is_valid_crc_source(struct drm_i915_private *dev_priv,
 		return i9xx_crc_source_valid(dev_priv, source);
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		return vlv_crc_source_valid(dev_priv, source);
-	else if (IS_GEN_RANGE(dev_priv, 5, 6))
+	else if (IS_SANDYBRIDGE(dev_priv) || IS_IRONLAKE(dev_priv))
 		return ilk_crc_source_valid(dev_priv, source);
 	else if (INTEL_GEN(dev_priv) < 9)
 		return ivb_crc_source_valid(dev_priv, source);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index f20ba71f4307..27477cafdc38 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -777,7 +777,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 
 	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 	pp = ilk_get_pp_control(intel_dp);
-	if (IS_GEN(dev_priv, 5)) {
+	if (IS_IRONLAKE(dev_priv)) {
 		/* ILK workaround: disable reset around power sequence */
 		pp &= ~PANEL_POWER_RESET;
 		intel_de_write(dev_priv, pp_ctrl_reg, pp);
@@ -785,7 +785,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 	}
 
 	pp |= PANEL_POWER_ON;
-	if (!IS_GEN(dev_priv, 5))
+	if (!IS_IRONLAKE(dev_priv))
 		pp |= PANEL_POWER_RESET;
 
 	intel_de_write(dev_priv, pp_ctrl_reg, pp);
@@ -794,7 +794,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 	wait_panel_on(intel_dp);
 	intel_dp->pps.last_power_on = jiffies;
 
-	if (IS_GEN(dev_priv, 5)) {
+	if (IS_IRONLAKE(dev_priv)) {
 		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
 		intel_de_write(dev_priv, pp_ctrl_reg, pp);
 		intel_de_posting_read(dev_priv, pp_ctrl_reg);
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 4cbdb8fd4bb1..fb506409a63b 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1078,7 +1078,7 @@ static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
 
 	dvscntr = DVS_ENABLE;
 
-	if (IS_GEN(dev_priv, 6))
+	if (IS_SANDYBRIDGE(dev_priv))
 		dvscntr |= DVS_TRICKLE_FEED_DISABLE;
 
 	switch (fb->format->format) {
@@ -1838,7 +1838,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		plane->min_cdclk = g4x_sprite_min_cdclk;
 
 		modifiers = i9xx_plane_format_modifiers;
-		if (IS_GEN(dev_priv, 6)) {
+		if (IS_SANDYBRIDGE(dev_priv)) {
 			formats = snb_plane_formats;
 			num_formats = ARRAY_SIZE(snb_plane_formats);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1d45d7492d10..4fe90a9782e8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1356,6 +1356,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_IRONLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_IRONLAKE)
 #define IS_IRONLAKE_M(dev_priv) \
 	(IS_PLATFORM(dev_priv, INTEL_IRONLAKE) && IS_MOBILE(dev_priv))
+#define IS_SANDYBRIDGE(dev_priv) IS_PLATFORM(dev_priv, INTEL_SANDYBRIDGE)
 #define IS_IVYBRIDGE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_IVYBRIDGE)
 #define IS_IVB_GT1(dev_priv)	(IS_IVYBRIDGE(dev_priv) && \
 				 INTEL_INFO(dev_priv)->gt == 1)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
