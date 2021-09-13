Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA0A4095B6
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 16:45:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE16B6ECB1;
	Mon, 13 Sep 2021 14:45:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DCAE6ECC2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 14:45:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="208923088"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="208923088"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 07:45:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="515467576"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 13 Sep 2021 07:45:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Sep 2021 17:45:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Sep 2021 17:44:40 +0300
Message-Id: <20210913144440.23008-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/16] drm/i915: Nuke
 PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE
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

Now that the bigjoiner state readout/computation has been
made to do the right thing nuke the related state checker
quirk.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 105 ++++++++----------
 .../drm/i915/display/intel_display_types.h    |   1 -
 2 files changed, 47 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 17d12d12bc0a..a6d1d6fbaeef 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8087,51 +8087,48 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_X(output_types);
 
-	/* FIXME do the readout properly and get rid of this quirk */
-	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE)) {
-		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
-		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_htotal);
-		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hblank_start);
-		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hblank_end);
-		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hsync_start);
-		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hsync_end);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_htotal);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hblank_start);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hblank_end);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hsync_start);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hsync_end);
 
-		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vdisplay);
-		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vtotal);
-		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vblank_start);
-		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vblank_end);
-		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vsync_start);
-		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vsync_end);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vdisplay);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vtotal);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vblank_start);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vblank_end);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vsync_start);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vsync_end);
 
-		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hdisplay);
-		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_htotal);
-		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_start);
-		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_end);
-		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_start);
-		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_end);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hdisplay);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_htotal);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_start);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_end);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_start);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_end);
 
-		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vdisplay);
-		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vtotal);
-		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_start);
-		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_end);
-		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_start);
-		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_end);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vdisplay);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vtotal);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_start);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_end);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_start);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_end);
 
-		PIPE_CONF_CHECK_I(pixel_multiplier);
+	PIPE_CONF_CHECK_I(pixel_multiplier);
 
-		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
-				      DRM_MODE_FLAG_INTERLACE);
+	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
+			      DRM_MODE_FLAG_INTERLACE);
 
-		if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
-			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
-					      DRM_MODE_FLAG_PHSYNC);
-			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
-					      DRM_MODE_FLAG_NHSYNC);
-			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
-					      DRM_MODE_FLAG_PVSYNC);
-			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
-					      DRM_MODE_FLAG_NVSYNC);
-		}
+	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
+		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
+				      DRM_MODE_FLAG_PHSYNC);
+		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
+				      DRM_MODE_FLAG_NHSYNC);
+		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
+				      DRM_MODE_FLAG_PVSYNC);
+		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
+				      DRM_MODE_FLAG_NVSYNC);
 	}
 
 	PIPE_CONF_CHECK_I(output_format);
@@ -8143,9 +8140,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(hdmi_scrambling);
 	PIPE_CONF_CHECK_BOOL(hdmi_high_tmds_clock_ratio);
 	PIPE_CONF_CHECK_BOOL(has_infoframe);
-	/* FIXME do the readout properly and get rid of this quirk */
-	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE))
-		PIPE_CONF_CHECK_BOOL(fec_enable);
+	PIPE_CONF_CHECK_BOOL(fec_enable);
 
 	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
 
@@ -8174,9 +8169,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		}
 
 		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
-		/* FIXME do the readout properly and get rid of this quirk */
-		if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE))
-			PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
+		PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
 
 		PIPE_CONF_CHECK_X(gamma_mode);
 		if (IS_CHERRYVIEW(dev_priv))
@@ -8201,11 +8194,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_BOOL(double_wide);
 
-	if (dev_priv->dpll.mgr)
+	if (dev_priv->dpll.mgr) {
 		PIPE_CONF_CHECK_P(shared_dpll);
 
-	/* FIXME do the readout properly and get rid of this quirk */
-	if (dev_priv->dpll.mgr && !PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE)) {
 		PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
 		PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
 		PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
@@ -8239,19 +8230,17 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
 	}
 
-	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE)) {
-		PIPE_CONF_CHECK_X(dsi_pll.ctrl);
-		PIPE_CONF_CHECK_X(dsi_pll.div);
+	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
+	PIPE_CONF_CHECK_X(dsi_pll.div);
 
-		if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
-			PIPE_CONF_CHECK_I(pipe_bpp);
+	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
+		PIPE_CONF_CHECK_I(pipe_bpp);
 
-		PIPE_CONF_CHECK_CLOCK_FUZZY(hw.pipe_mode.crtc_clock);
-		PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
-		PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
+	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.pipe_mode.crtc_clock);
+	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
+	PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
 
-		PIPE_CONF_CHECK_I(min_voltage_level);
-	}
+	PIPE_CONF_CHECK_I(min_voltage_level);
 
 	if (fastset && (current_config->has_psr || pipe_config->has_psr))
 		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7d852affead1..ee45fc3b1672 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -938,7 +938,6 @@ struct intel_crtc_state {
 	 * accordingly.
 	 */
 #define PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS	(1<<0) /* unreliable sync mode.flags */
-#define PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE      (1<<1) /* bigjoiner slave, partial readout */
 	unsigned long quirks;
 
 	unsigned fb_bits; /* framebuffers to flip */
-- 
2.32.0

