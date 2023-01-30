Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E95C568183C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 19:06:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F4110E118;
	Mon, 30 Jan 2023 18:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57A6510E108
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 18:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675101966; x=1706637966;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TJpb5c3/nRqVxE+V/Dpbi3hnJfskCd4F1lebgIo3J4k=;
 b=E4kwfnlXETGlJJtVQPaZS/rlGIjmnk7ZBI3VkdpIwQX6Hlcdb5FC0QMR
 7lLAD23TquFUwU3rHz73nT5G5/YLGNrsaS1/SA4qUOO2wnlfpziPG0h16
 GEhmY4Le+Jt1hBbE4hLln7USVcUxGR8GGGpaBoggXW5VCEwTfpIp5yA8j
 othXed89tVOWQOn0LPTao5ELl0TQ5zjTn+Xuz+GqdSTD5x7bi6Y5l9YIz
 97a03H7rZyC2wN0WZJOCiOxzdaZpUJS4zbS5pmTr+KtWwiwKm80+ypnjL
 EtZdG0uTziBmdXguHKlUNBo9Q+VInn/D7SJX3KNXgXmbm96UL8AcSS2H4 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="329742278"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="329742278"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 10:06:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="752918204"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="752918204"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 30 Jan 2023 10:06:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Jan 2023 20:06:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 20:05:40 +0200
Message-Id: <20230130180540.8972-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
References: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] drm/i915/lvds: s/pipe_config/crtc_state/
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

Call the crtc state 'crtc_state' rather than 'pipe_config',
as is the modern style.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 46 +++++++++++------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 37969aac91b4..1df67457f10a 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -121,13 +121,13 @@ static bool intel_lvds_get_hw_state(struct intel_encoder *encoder,
 }
 
 static void intel_lvds_get_config(struct intel_encoder *encoder,
-				  struct intel_crtc_state *pipe_config)
+				  struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	u32 tmp, flags = 0;
 
-	pipe_config->output_types |= BIT(INTEL_OUTPUT_LVDS);
+	crtc_state->output_types |= BIT(INTEL_OUTPUT_LVDS);
 
 	tmp = intel_de_read(dev_priv, lvds_encoder->reg);
 	if (tmp & LVDS_HSYNC_POLARITY)
@@ -139,20 +139,20 @@ static void intel_lvds_get_config(struct intel_encoder *encoder,
 	else
 		flags |= DRM_MODE_FLAG_PVSYNC;
 
-	pipe_config->hw.adjusted_mode.flags |= flags;
+	crtc_state->hw.adjusted_mode.flags |= flags;
 
 	if (DISPLAY_VER(dev_priv) < 5)
-		pipe_config->gmch_pfit.lvds_border_bits =
+		crtc_state->gmch_pfit.lvds_border_bits =
 			tmp & LVDS_BORDER_ENABLE;
 
 	/* gen2/3 store dither state in pfit control, needs to match */
 	if (DISPLAY_VER(dev_priv) < 4) {
 		tmp = intel_de_read(dev_priv, PFIT_CONTROL);
 
-		pipe_config->gmch_pfit.control |= tmp & PANEL_8TO6_DITHER_ENABLE;
+		crtc_state->gmch_pfit.control |= tmp & PANEL_8TO6_DITHER_ENABLE;
 	}
 
-	pipe_config->hw.adjusted_mode.crtc_clock = pipe_config->port_clock;
+	crtc_state->hw.adjusted_mode.crtc_clock = crtc_state->port_clock;
 }
 
 static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
@@ -231,19 +231,19 @@ static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
 
 static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 				  struct intel_encoder *encoder,
-				  const struct intel_crtc_state *pipe_config,
+				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state)
 {
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	enum pipe pipe = crtc->pipe;
 	u32 temp;
 
 	if (HAS_PCH_SPLIT(i915)) {
 		assert_fdi_rx_pll_disabled(i915, pipe);
-		assert_shared_dpll_disabled(i915, pipe_config->shared_dpll);
+		assert_shared_dpll_disabled(i915, crtc_state->shared_dpll);
 	} else {
 		assert_pll_disabled(i915, pipe);
 	}
@@ -263,7 +263,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 
 	/* set the corresponsding LVDS_BORDER bit */
 	temp &= ~LVDS_BORDER_ENABLE;
-	temp |= pipe_config->gmch_pfit.lvds_border_bits;
+	temp |= crtc_state->gmch_pfit.lvds_border_bits;
 
 	/*
 	 * Set the B0-B3 data pairs corresponding to whether we're going to
@@ -293,7 +293,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 		 * Bspec wording suggests that LVDS port dithering only exists
 		 * for 18bpp panels.
 		 */
-		if (pipe_config->dither && pipe_config->pipe_bpp == 18)
+		if (crtc_state->dither && crtc_state->pipe_bpp == 18)
 			temp |= LVDS_ENABLE_DITHER;
 		else
 			temp &= ~LVDS_ENABLE_DITHER;
@@ -312,7 +312,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
  */
 static void intel_enable_lvds(struct intel_atomic_state *state,
 			      struct intel_encoder *encoder,
-			      const struct intel_crtc_state *pipe_config,
+			      const struct intel_crtc_state *crtc_state,
 			      const struct drm_connector_state *conn_state)
 {
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
@@ -327,7 +327,7 @@ static void intel_enable_lvds(struct intel_atomic_state *state,
 		drm_err(&dev_priv->drm,
 			"timed out waiting for panel to power on\n");
 
-	intel_backlight_enable(pipe_config, conn_state);
+	intel_backlight_enable(crtc_state, conn_state);
 }
 
 static void intel_disable_lvds(struct intel_atomic_state *state,
@@ -407,14 +407,14 @@ intel_lvds_mode_valid(struct drm_connector *_connector,
 }
 
 static int intel_lvds_compute_config(struct intel_encoder *encoder,
-				     struct intel_crtc_state *pipe_config,
+				     struct intel_crtc_state *crtc_state,
 				     struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct intel_connector *connector = lvds_encoder->attached_connector;
-	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	unsigned int lvds_bpp;
 	int ret;
 
@@ -429,14 +429,14 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 	else
 		lvds_bpp = 6*3;
 
-	if (lvds_bpp != pipe_config->pipe_bpp && !pipe_config->bw_constrained) {
+	if (lvds_bpp != crtc_state->pipe_bpp && !crtc_state->bw_constrained) {
 		drm_dbg_kms(&i915->drm,
 			    "forcing display bpp (was %d) to LVDS (%d)\n",
-			    pipe_config->pipe_bpp, lvds_bpp);
-		pipe_config->pipe_bpp = lvds_bpp;
+			    crtc_state->pipe_bpp, lvds_bpp);
+		crtc_state->pipe_bpp = lvds_bpp;
 	}
 
-	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	/*
 	 * We have timings from the BIOS for the panel, put them in
@@ -452,9 +452,9 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	if (HAS_PCH_SPLIT(i915))
-		pipe_config->has_pch_encoder = true;
+		crtc_state->has_pch_encoder = true;
 
-	ret = intel_panel_fitting(pipe_config, conn_state);
+	ret = intel_panel_fitting(crtc_state, conn_state);
 	if (ret)
 		return ret;
 
-- 
2.39.1

