Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D86338093
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:37:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 128AF6EEC1;
	Thu, 11 Mar 2021 22:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C6CB6EE8E
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:47 +0000 (UTC)
IronPort-SDR: czi/HLSrh9Roi7cKiZxw49kU1lPn3tK0pyX1+j+6WyVs329RR6EgJR1G5w9Yz40hau5vHxD0Uu
 Zb2owzkzcdxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="185395068"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="185395068"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:44 -0800
IronPort-SDR: HywQbebWUxbOTrx+BEsAlfIAmUwmK5m4PXfjsED6emIfHn1xje1jenWWs6tQHA3J9GfjtzUIPN
 4yLIFWyYFkSw==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852662"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:44 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:35:42 -0800
Message-Id: <20210311223632.3191939-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/56] drm/i915/display: Simplify GLK display
 version tests
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

GLK has always been a bit of a special case since it reports INTEL_GEN()
as 9, but has version 10 display IP.  Now we can properly represent the
display version as 10 and simplify the display generation tests
throughout the display code.

Aside from manually adding the version to the glk_info structure, the
rest of this patch is generated with a Coccinelle semantic patch:

        @@ expression dev_priv; @@
        - DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)
        + DISPLAY_VER(dev_priv) >= 10

        @@ expression dev_priv, E; @@
        - E || DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)
        + E || DISPLAY_VER(dev_priv) >= 10

        @@ expression dev_priv; @@
        - IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 10
        + DISPLAY_VER(dev_priv) >= 10

        @@ expression dev_priv; @@
        - IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) == 10
        + DISPLAY_VER(dev_priv) == 10

        @@ expression dev_priv; @@
        - DISPLAY_VER(dev_priv) > 9 || IS_GEMINILAKE(dev_priv)
        + DISPLAY_VER(dev_priv) > 9

        @@ expression dev_priv; @@
        - IS_GEMINILAKE(dev_priv) || IS_CANNONLAKE(dev_priv)
        + DISPLAY_VER(dev_priv) == 10

        @@ expression dev_priv; @@
        - IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)
        + DISPLAY_VER(dev_priv) == 10

        @@ expression dev_priv; @@
        - DISPLAY_VER(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)
        + DISPLAY_VER(dev_priv) < 10

        @@ expression dev_priv; @@
        - (DISPLAY_VER(dev_priv) == 9) && !IS_GEMINILAKE(dev_priv)
        + DISPLAY_VER(dev_priv) == 9

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |  7 ++---
 drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 +++----
 drivers/gpu/drm/i915/display/intel_color.c    |  8 +++---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  7 ++---
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 +--
 drivers/gpu/drm/i915/display/intel_fbc.c      |  4 +--
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  1 -
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 13 ++++-----
 drivers/gpu/drm/i915/display/intel_psr.c      |  7 ++---
 .../drm/i915/display/skl_universal_plane.c    | 28 +++++++++----------
 drivers/gpu/drm/i915/i915_pci.c               |  1 +
 13 files changed, 45 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 8b1ecd86a688..d0b5414127df 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -332,8 +332,7 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
 	    plane_state->hw.fb->format->is_yuv &&
 	    plane_state->hw.fb->format->num_planes > 1) {
 		struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-		if (DISPLAY_VER(dev_priv) == 9 &&
-		    !IS_GEMINILAKE(dev_priv)) {
+		if (DISPLAY_VER(dev_priv) == 9) {
 			mode = SKL_PS_SCALER_MODE_NV12;
 		} else if (icl_is_hdr_plane(dev_priv, plane->id)) {
 			/*
@@ -351,7 +350,7 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
 			if (linked)
 				mode |= PS_PLANE_Y_SEL(linked->id);
 		}
-	} else if (DISPLAY_VER(dev_priv) > 9 || IS_GEMINILAKE(dev_priv)) {
+	} else if (DISPLAY_VER(dev_priv) > 9) {
 		mode = PS_SCALER_MODE_NORMAL;
 	} else if (num_scalers_need == 1 && intel_crtc->num_scalers > 1) {
 		/*
@@ -460,7 +459,7 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 				 * isn't necessary to change between HQ and dyn mode
 				 * on those platforms.
 				 */
-				if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+				if (DISPLAY_VER(dev_priv) >= 10)
 					continue;
 
 				plane = drm_plane_from_index(&dev_priv->drm, i);
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index eefe211ed958..2d21a7796598 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1022,7 +1022,7 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 		if (IS_GEMINILAKE(dev_priv))
 			glk_force_audio_cdclk(dev_priv, true);
 
-		if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+		if (DISPLAY_VER(dev_priv) >= 10)
 			intel_de_write(dev_priv, AUD_PIN_BUF_CTL,
 				       (intel_de_read(dev_priv, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABLE));
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 640b6423f23b..1c7cdd17f89a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1433,7 +1433,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 		break;
 	case BXT_CDCLK_CD2X_DIV_SEL_1_5:
 		drm_WARN(&dev_priv->drm,
-			 IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 10,
+			 DISPLAY_VER(dev_priv) >= 10,
 			 "Unsupported divider\n");
 		div = 3;
 		break;
@@ -1592,7 +1592,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		break;
 	case 3:
 		drm_WARN(&dev_priv->drm,
-			 IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 10,
+			 DISPLAY_VER(dev_priv) >= 10,
 			 "Unsupported divider\n");
 		divider = BXT_CDCLK_CD2X_DIV_SEL_1_5;
 		break;
@@ -2000,7 +2000,7 @@ static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	int pixel_rate = crtc_state->pixel_rate;
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		return DIV_ROUND_UP(pixel_rate, 2);
 	else if (DISPLAY_VER(dev_priv) == 9 ||
 		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
@@ -2050,7 +2050,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	    crtc_state->has_audio &&
 	    crtc_state->port_clock >= 540000 &&
 	    crtc_state->lane_count == 4) {
-		if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
+		if (DISPLAY_VER(dev_priv) == 10) {
 			/* Display WA #1145: glk,cnl */
 			min_cdclk = max(316800, min_cdclk);
 		} else if (DISPLAY_VER(dev_priv) == 9 || IS_BROADWELL(dev_priv)) {
@@ -2590,7 +2590,7 @@ static int intel_compute_max_dotclk(struct drm_i915_private *dev_priv)
 {
 	int max_cdclk_freq = dev_priv->max_cdclk_freq;
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		return 2 * max_cdclk_freq;
 	else if (DISPLAY_VER(dev_priv) == 9 ||
 		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 558f21c6803b..c7cf7360309c 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -737,7 +737,7 @@ static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
 	 * ToDo: Extend the ABI to be able to program values
 	 * from 3.0 to 7.0
 	 */
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 10) {
 		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0),
 				    1 << 16);
 		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1),
@@ -1711,7 +1711,7 @@ int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_stat
 	} else {
 		if (DISPLAY_VER(dev_priv) >= 11)
 			return icl_gamma_precision(crtc_state);
-		else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
+		else if (DISPLAY_VER(dev_priv) == 10)
 			return glk_gamma_precision(crtc_state);
 		else if (IS_IRONLAKE(dev_priv))
 			return ilk_gamma_precision(crtc_state);
@@ -2119,7 +2119,7 @@ void intel_color_init(struct intel_crtc *crtc)
 	} else {
 		if (DISPLAY_VER(dev_priv) >= 11)
 			dev_priv->display.color_check = icl_color_check;
-		else if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+		else if (DISPLAY_VER(dev_priv) >= 10)
 			dev_priv->display.color_check = glk_color_check;
 		else if (DISPLAY_VER(dev_priv) >= 7)
 			dev_priv->display.color_check = ivb_color_check;
@@ -2136,7 +2136,7 @@ void intel_color_init(struct intel_crtc *crtc)
 		if (DISPLAY_VER(dev_priv) >= 11) {
 			dev_priv->display.load_luts = icl_load_luts;
 			dev_priv->display.read_luts = icl_read_luts;
-		} else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
+		} else if (DISPLAY_VER(dev_priv) == 10) {
 			dev_priv->display.load_luts = glk_load_luts;
 			dev_priv->display.read_luts = glk_read_luts;
 		} else if (DISPLAY_VER(dev_priv) >= 8) {
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3e641b36bbd3..9e677220f276 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -174,7 +174,7 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 				      enum port port)
 {
 	/* Wait > 518 usecs for DDI_BUF_CTL to be non idle */
-	if (DISPLAY_VER(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) < 10) {
 		usleep_range(518, 1000);
 		return;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 933b9d791691..10cedd4d6828 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3257,7 +3257,7 @@ static bool needs_nv12_wa(const struct intel_crtc_state *crtc_state)
 		return false;
 
 	/* WA Display #0827: Gen9:all */
-	if (DISPLAY_VER(dev_priv) == 9 && !IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) == 9)
 		return true;
 
 	return false;
@@ -3987,7 +3987,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	crtc->active = true;
 
 	/* Display WA #1180: WaDisableScalarClockGating: glk, cnl */
-	psl_clkgate_wa = (IS_GEMINILAKE(dev_priv) || IS_CANNONLAKE(dev_priv)) &&
+	psl_clkgate_wa = (DISPLAY_VER(dev_priv) == 10) &&
 		new_crtc_state->pch_pfit.enabled;
 	if (psl_clkgate_wa)
 		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
@@ -13327,8 +13327,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			 * use plane->min_cdclk() :(
 			 */
 			if (plane_state->uapi.visible && plane->min_cdclk) {
-				if (crtc_state->double_wide ||
-				    DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+				if (crtc_state->double_wide || DISPLAY_VER(dev_priv) >= 10)
 					crtc_state->min_cdclk[plane->id] =
 						DIV_ROUND_UP(crtc_state->pixel_rate, 2);
 				else
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 04bf536f6a12..95c1f25e1bf3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -823,7 +823,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
 	 * integer value since we support only integer values of bpp.
 	 */
-	if ((DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) &&
+	if ((DISPLAY_VER(dev_priv) >= 10) &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
 		if (intel_dp_is_edp(intel_dp)) {
 			dsc_max_output_bpp =
@@ -3681,7 +3681,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 	intel_dp_set_common_rates(intel_dp);
 
 	/* Read the eDP DSC DPCD registers */
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		intel_dp_get_dsc_sink_cap(intel_dp);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index f888e1c6ff7a..2abb03cf0e71 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -653,7 +653,7 @@ static bool intel_fbc_hw_tracking_covers_screen(struct intel_crtc *crtc)
 	struct intel_fbc *fbc = &dev_priv->fbc;
 	unsigned int effective_w, effective_h, max_w, max_h;
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 10) {
 		max_w = 5120;
 		max_h = 4096;
 	} else if (DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL(dev_priv)) {
@@ -1036,7 +1036,7 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 		 * if at least one frame has already passed.
 		 */
 		if (fbc->activated &&
-		    (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)))
+		    (DISPLAY_VER(dev_priv) >= 10))
 			need_vblank_wait = true;
 		fbc->activated = false;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index d418fe796263..f13704562049 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2177,7 +2177,6 @@ static bool is_hdcp2_supported(struct drm_i915_private *dev_priv)
 		return false;
 
 	return (DISPLAY_VER(dev_priv) >= 10 ||
-		IS_GEMINILAKE(dev_priv) ||
 		IS_KABYLAKE(dev_priv) ||
 		IS_COFFEELAKE(dev_priv) ||
 		IS_COMETLAKE(dev_priv));
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index b122c46a5657..4f285c7d54c4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -583,7 +583,7 @@ static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
 		VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
 		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW);
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		mask |= VIDEO_DIP_ENABLE_DRM_GLK;
 
 	return val & mask;
@@ -839,7 +839,7 @@ intel_hdmi_compute_drm_infoframe(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int ret;
 
-	if (!(DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)))
+	if (!(DISPLAY_VER(dev_priv) >= 10))
 		return true;
 
 	if (!crtc_state->has_infoframe)
@@ -2157,7 +2157,7 @@ static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int max_tmds_clock, vbt_max_tmds_clock;
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		max_tmds_clock = 594000;
 	else if (DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL(dev_priv))
 		max_tmds_clock = 300000;
@@ -2546,8 +2546,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->lane_count = 4;
 
-	if (scdc->scrambling.supported && (DISPLAY_VER(dev_priv) >= 10 ||
-					   IS_GEMINILAKE(dev_priv))) {
+	if (scdc->scrambling.supported && (DISPLAY_VER(dev_priv) >= 10)) {
 		if (scdc->scrambling.low_rates)
 			pipe_config->hdmi_scrambling = true;
 
@@ -2965,7 +2964,7 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *c
 	intel_attach_hdmi_colorspace_property(connector);
 	drm_connector_attach_content_type_property(connector);
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		drm_object_attach_property(&connector->base,
 			connector->dev->mode_config.hdr_output_metadata_property, 0);
 
@@ -3320,7 +3319,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 	connector->doublescan_allowed = 0;
 	connector->stereo_allowed = 1;
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		connector->ycbcr_420_allowed = true;
 
 	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f6d1bc3269b2..e71d2dd6a4a5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -524,7 +524,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	val = psr_compute_idle_frames(intel_dp) << EDP_PSR2_IDLE_FRAME_SHIFT;
 
 	val |= EDP_PSR2_ENABLE | EDP_SU_TRACK_ENABLE;
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		val |= EDP_Y_COORDINATE_ENABLE;
 
 	val |= EDP_PSR2_FRAME_BEFORE_SU(intel_dp->psr.sink_sync_latency + 1);
@@ -765,7 +765,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		psr_max_h = 5120;
 		psr_max_v = 3200;
 		max_bpp = 30;
-	} else if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
+	} else if (DISPLAY_VER(dev_priv) >= 10) {
 		psr_max_h = 4096;
 		psr_max_v = 2304;
 		max_bpp = 24;
@@ -909,8 +909,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
 		hsw_psr_setup_aux(intel_dp);
 
-	if (intel_dp->psr.psr2_enabled && (DISPLAY_VER(dev_priv) == 9 &&
-					   !IS_GEMINILAKE(dev_priv))) {
+	if (intel_dp->psr.psr2_enabled && (DISPLAY_VER(dev_priv) == 9)) {
 		i915_reg_t reg = CHICKEN_TRANS(cpu_transcoder);
 		u32 chicken = intel_de_read(dev_priv, reg);
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 91e5d8a5d4a9..f24aaadec70d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -294,7 +294,7 @@ skl_plane_ratio(const struct intel_crtc_state *crtc_state,
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	if (fb->format->cpp[0] == 8) {
-		if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
+		if (DISPLAY_VER(dev_priv) >= 10) {
 			*num = 10;
 			*den = 8;
 		} else {
@@ -317,7 +317,7 @@ static int skl_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 	skl_plane_ratio(crtc_state, plane_state, &num, &den);
 
 	/* two pixels per clock on glk+ */
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		den *= 2;
 
 	return DIV_ROUND_UP(pixel_rate * num, den);
@@ -810,7 +810,7 @@ static u32 skl_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	u32 plane_ctl = 0;
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		return plane_ctl;
 
 	if (crtc_state->gamma_enable)
@@ -834,7 +834,7 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 
 	plane_ctl = PLANE_CTL_ENABLE;
 
-	if (DISPLAY_VER(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) < 10) {
 		plane_ctl |= skl_plane_ctl_alpha(plane_state);
 		plane_ctl |= PLANE_CTL_PLANE_GAMMA_DISABLE;
 
@@ -976,7 +976,7 @@ skl_program_plane(struct intel_plane *plane,
 
 	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		plane_color_ctl = plane_state->color_ctl |
 			glk_plane_color_ctl_crtc(crtc_state);
 
@@ -1017,7 +1017,7 @@ skl_program_plane(struct intel_plane *plane,
 		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
 				  plane_state->cus_ctl);
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id),
 				  plane_color_ctl);
 
@@ -1222,7 +1222,7 @@ static int skl_plane_check_dst_coordinates(const struct intel_crtc_state *crtc_s
 	 * than the cursor ending less than 4 pixels from the left edge of the
 	 * screen may cause FIFO underflow and display corruption.
 	 */
-	if ((IS_GEMINILAKE(dev_priv) || IS_CANNONLAKE(dev_priv)) &&
+	if ((DISPLAY_VER(dev_priv) == 10) &&
 	    (crtc_x + crtc_w < 4 || crtc_x > pipe_src_w - 4)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "requested plane X %s position %d invalid (valid range %d-%d)\n",
@@ -1262,7 +1262,7 @@ static int skl_plane_max_scale(struct drm_i915_private *dev_priv,
 	 * the best case.
 	 * FIXME need to properly check this later.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv) ||
+	if (DISPLAY_VER(dev_priv) >= 10 ||
 	    !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
 		return 0x30000 - 1;
 	else
@@ -1687,7 +1687,7 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 
 	plane_state->ctl = skl_plane_ctl(crtc_state, plane_state);
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		plane_state->color_ctl = glk_plane_color_ctl(crtc_state,
 							     plane_state);
 
@@ -1719,7 +1719,7 @@ static bool skl_plane_has_planar(struct drm_i915_private *dev_priv,
 	if (IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))
 		return false;
 
-	if (DISPLAY_VER(dev_priv) == 9 && !IS_GEMINILAKE(dev_priv) && pipe == PIPE_C)
+	if (DISPLAY_VER(dev_priv) == 9 && pipe == PIPE_C)
 		return false;
 
 	if (plane_id != PLANE_PRIMARY && plane_id != PLANE_SPRITE0)
@@ -2013,7 +2013,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 		plane->min_width = icl_plane_min_width;
 		plane->max_width = icl_plane_max_width;
 		plane->max_height = icl_plane_max_height;
-	} else if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
+	} else if (DISPLAY_VER(dev_priv) >= 10) {
 		plane->max_width = glk_plane_max_width;
 		plane->max_height = skl_plane_max_height;
 	} else {
@@ -2038,7 +2038,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	if (DISPLAY_VER(dev_priv) >= 11)
 		formats = icl_get_plane_formats(dev_priv, pipe,
 						plane_id, &num_formats);
-	else if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	else if (DISPLAY_VER(dev_priv) >= 10)
 		formats = glk_get_plane_formats(dev_priv, pipe,
 						plane_id, &num_formats);
 	else
@@ -2084,7 +2084,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 	supported_csc = BIT(DRM_COLOR_YCBCR_BT601) | BIT(DRM_COLOR_YCBCR_BT709);
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10)
 		supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);
 
 	drm_plane_create_color_properties(&plane->base,
@@ -2164,7 +2164,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	else
 		pixel_format = val & PLANE_CTL_FORMAT_MASK;
 
-	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 10) {
 		alpha = intel_de_read(dev_priv,
 				      PLANE_COLOR_CTL(pipe, plane_id));
 		alpha &= PLANE_COLOR_ALPHA_MASK;
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 3543611cf0fc..5bfd94e2cc6f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -723,6 +723,7 @@ static const struct intel_device_info bxt_info = {
 static const struct intel_device_info glk_info = {
 	GEN9_LP_FEATURES,
 	PLATFORM(INTEL_GEMINILAKE),
+	.display_ver = 10,
 	.ddb_size = 1024,
 	GLK_COLORS,
 };
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
