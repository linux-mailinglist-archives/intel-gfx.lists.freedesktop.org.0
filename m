Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E29A6FC92
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 13:36:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34EBE10E556;
	Tue, 25 Mar 2025 12:36:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aAE6JiMr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F6C10E54F;
 Tue, 25 Mar 2025 12:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742906216; x=1774442216;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I23la0z6ZkcXHUHOYW4sE7/YRYc01dTx0s6bKc1ywzg=;
 b=aAE6JiMrBgv0YjgpyI3spzMhIAjriGnpw5KrtbtwHpWebbQ+GbJUkB2N
 Zssb25CPmis9m7n/sQim9fMN/0MWTEs8pMx8U2SFPVrM9nvKOZbODdDJr
 G8IyqYRyQ8sqyOgGlntgkVyEv/5BsipBWaHgZp63HZzOqT5uqBPx3chUS
 JESz6ifuxheGmEzTIwJo9rCiBw5PXT0gLzRQ7JdXQ00RW56gft24C1a6u
 vijijwKk+Zk4JmLMeaXo0UXziCbuwdIYWlJbY/vFUThdu7kzYA1rhNOst
 bK15CtCStWyJZ9gWUvoKeaWc9gbjW8zjtSBagVeXCLcTQ5ROxDLqWeUs0 g==;
X-CSE-ConnectionGUID: VoToyVqyRIy8cr0fQlQEhQ==
X-CSE-MsgGUID: XsvCFGTmRIy+vXfUn9LHAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="47933205"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="47933205"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:36:55 -0700
X-CSE-ConnectionGUID: VaqUCazGS1iwEsZ2p4BTNQ==
X-CSE-MsgGUID: qlEGrCfmSOqk7dtff/2jgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="155274803"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.134])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:36:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/6] drm/i915/ddi: convert intel_ddi.c to struct intel_display
Date: Tue, 25 Mar 2025 14:36:34 +0200
Message-Id: <44aebcf93b2211e917b2ee725433b1f9b5e4e6f6.1742906146.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742906146.git.jani.nikula@intel.com>
References: <cover.1742906146.git.jani.nikula@intel.com>
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
pointer. Convert as much as possible of intel_ddi.c to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 904 +++++++++++------------
 1 file changed, 437 insertions(+), 467 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f38c998935b9..864e97a7a4d4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -106,14 +106,14 @@ static int intel_ddi_hdmi_level(struct intel_encoder *encoder,
 	return level;
 }
 
-static bool has_buf_trans_select(struct drm_i915_private *i915)
+static bool has_buf_trans_select(struct intel_display *display)
 {
-	return DISPLAY_VER(i915) < 10 && !IS_BROXTON(i915);
+	return DISPLAY_VER(display) < 10 && !display->platform.broxton;
 }
 
-static bool has_iboost(struct drm_i915_private *i915)
+static bool has_iboost(struct intel_display *display)
 {
-	return DISPLAY_VER(i915) == 9 && !IS_BROXTON(i915);
+	return DISPLAY_VER(display) == 9 && !display->platform.broxton;
 }
 
 /*
@@ -124,25 +124,25 @@ static bool has_iboost(struct drm_i915_private *i915)
 void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	u32 iboost_bit = 0;
 	int i, n_entries;
 	enum port port = encoder->port;
 	const struct intel_ddi_buf_trans *trans;
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
+	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
 	/* If we're boosting the current, set bit 31 of trans1 */
-	if (has_iboost(dev_priv) &&
+	if (has_iboost(display) &&
 	    intel_bios_dp_boost_level(encoder->devdata))
 		iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;
 
 	for (i = 0; i < n_entries; i++) {
-		intel_de_write(dev_priv, DDI_BUF_TRANS_LO(port, i),
+		intel_de_write(display, DDI_BUF_TRANS_LO(port, i),
 			       trans->entries[i].hsw.trans1 | iboost_bit);
-		intel_de_write(dev_priv, DDI_BUF_TRANS_HI(port, i),
+		intel_de_write(display, DDI_BUF_TRANS_HI(port, i),
 			       trans->entries[i].hsw.trans2);
 	}
 }
@@ -155,7 +155,7 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
 static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	int level = intel_ddi_level(encoder, crtc_state, 0);
 	u32 iboost_bit = 0;
 	int n_entries;
@@ -163,27 +163,25 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
 	const struct intel_ddi_buf_trans *trans;
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
+	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
 	/* If we're boosting the current, set bit 31 of trans1 */
-	if (has_iboost(dev_priv) &&
+	if (has_iboost(display) &&
 	    intel_bios_hdmi_boost_level(encoder->devdata))
 		iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;
 
 	/* Entry 9 is for HDMI: */
-	intel_de_write(dev_priv, DDI_BUF_TRANS_LO(port, 9),
+	intel_de_write(display, DDI_BUF_TRANS_LO(port, 9),
 		       trans->entries[level].hsw.trans1 | iboost_bit);
-	intel_de_write(dev_priv, DDI_BUF_TRANS_HI(port, 9),
+	intel_de_write(display, DDI_BUF_TRANS_HI(port, 9),
 		       trans->entries[level].hsw.trans2);
 }
 
 static i915_reg_t intel_ddi_buf_status_reg(struct intel_display *display, enum port port)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (DISPLAY_VER(display) >= 14)
-		return XELPDP_PORT_BUF_CTL1(i915, port);
+		return XELPDP_PORT_BUF_CTL1(display, port);
 	else
 		return DDI_BUF_CTL(port);
 }
@@ -346,7 +344,6 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
@@ -359,14 +356,14 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 	if (dig_port->ddi_a_4_lanes)
 		intel_dp->DP |= DDI_A_4_LANES;
 
-	if (DISPLAY_VER(i915) >= 14) {
+	if (DISPLAY_VER(display) >= 14) {
 		if (intel_dp_is_uhbr(crtc_state))
 			intel_dp->DP |= DDI_BUF_PORT_DATA_40BIT;
 		else
 			intel_dp->DP |= DDI_BUF_PORT_DATA_10BIT;
 	}
 
-	if (IS_ALDERLAKE_P(i915) && intel_encoder_is_tc(encoder)) {
+	if (display->platform.alderlake_p && intel_encoder_is_tc(encoder)) {
 		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
 		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
 			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
@@ -379,8 +376,7 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 	}
 }
 
-static int icl_calc_tbt_pll_link(struct intel_display *display,
-				 enum port port)
+static int icl_calc_tbt_pll_link(struct intel_display *display, enum port port)
 {
 	u32 val = intel_de_read(display, DDI_CLK_SEL(port)) & DDI_CLK_SEL_MASK;
 
@@ -414,15 +410,14 @@ static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
 void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
 			  const struct drm_connector_state *conn_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 temp;
 
 	if (!intel_crtc_has_dp_encoder(crtc_state))
 		return;
 
-	drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder));
+	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
 
 	temp = DP_MSA_MISC_SYNC_CLOCK;
 
@@ -445,7 +440,7 @@ void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
 	}
 
 	/* nonsense combination */
-	drm_WARN_ON(&dev_priv->drm, crtc_state->limited_color_range &&
+	drm_WARN_ON(display->drm, crtc_state->limited_color_range &&
 		    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB);
 
 	if (crtc_state->limited_color_range)
@@ -468,7 +463,7 @@ void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
 	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state))
 		temp |= DP_MSA_MISC_COLOR_VSC_SDP;
 
-	intel_de_write(dev_priv, TRANS_MSA_MISC(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_MSA_MISC(display, cpu_transcoder),
 		       temp);
 }
 
@@ -507,8 +502,8 @@ static u32
 intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum port port = encoder->port;
@@ -516,7 +511,7 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 
 	/* Enable TRANS_DDI_FUNC_CTL for the pipe to work in HDMI mode */
 	temp = TRANS_DDI_FUNC_ENABLE;
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		temp |= TGL_TRANS_DDI_SELECT_PORT(port);
 	else
 		temp |= TRANS_DDI_SELECT_PORT(port);
@@ -578,7 +573,7 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 			temp |= TRANS_DDI_HDMI_SCRAMBLING;
 		if (crtc_state->hdmi_high_tmds_clock_ratio)
 			temp |= TRANS_DDI_HIGH_TMDS_CHAR_RATE;
-		if (DISPLAY_VER(dev_priv) >= 14)
+		if (DISPLAY_VER(display) >= 14)
 			temp |= TRANS_DDI_PORT_WIDTH(crtc_state->lane_count);
 	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG)) {
 		temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
@@ -591,11 +586,11 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 			temp |= TRANS_DDI_MODE_SELECT_DP_MST;
 		temp |= DDI_PORT_WIDTH(crtc_state->lane_count);
 
-		if (DISPLAY_VER(dev_priv) >= 12) {
+		if (DISPLAY_VER(display) >= 12) {
 			enum transcoder master;
 
 			master = crtc_state->mst_master_transcoder;
-			drm_WARN_ON(&dev_priv->drm,
+			drm_WARN_ON(display->drm,
 				    master == INVALID_TRANSCODER);
 			temp |= TRANS_DDI_MST_TRANSPORT_SELECT(master);
 		}
@@ -604,7 +599,7 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 		temp |= DDI_PORT_WIDTH(crtc_state->lane_count);
 	}
 
-	if (IS_DISPLAY_VER(dev_priv, 8, 10) &&
+	if (IS_DISPLAY_VER(display, 8, 10) &&
 	    crtc_state->master_transcoder != INVALID_TRANSCODER) {
 		u8 master_select =
 			bdw_trans_port_sync_master_select(crtc_state->master_transcoder);
@@ -619,11 +614,10 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(display) >= 11) {
 		enum transcoder master_transcoder = crtc_state->master_transcoder;
 		u32 ctl2 = 0;
 
@@ -635,12 +629,12 @@ void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
 				PORT_SYNC_MODE_MASTER_SELECT(master_select);
 		}
 
-		intel_de_write(dev_priv,
-			       TRANS_DDI_FUNC_CTL2(dev_priv, cpu_transcoder),
+		intel_de_write(display,
+			       TRANS_DDI_FUNC_CTL2(display, cpu_transcoder),
 			       ctl2);
 	}
 
-	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_DDI_FUNC_CTL(display, cpu_transcoder),
 		       intel_ddi_transcoder_func_reg_val_get(encoder,
 							     crtc_state));
 }
@@ -654,8 +648,7 @@ void
 intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 ctl;
 
@@ -663,7 +656,7 @@ intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
 
 	ctl = intel_ddi_transcoder_func_reg_val_get(encoder, crtc_state);
 	ctl &= ~TRANS_DDI_FUNC_ENABLE;
-	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_DDI_FUNC_CTL(display, cpu_transcoder),
 		       ctl);
 }
 
@@ -677,27 +670,26 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 ctl;
 
-	if (DISPLAY_VER(dev_priv) >= 11)
-		intel_de_write(dev_priv,
-			       TRANS_DDI_FUNC_CTL2(dev_priv, cpu_transcoder),
+	if (DISPLAY_VER(display) >= 11)
+		intel_de_write(display,
+			       TRANS_DDI_FUNC_CTL2(display, cpu_transcoder),
 			       0);
 
-	ctl = intel_de_read(dev_priv,
-			    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
+	ctl = intel_de_read(display,
+			    TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
 
 	drm_WARN_ON(crtc->base.dev, ctl & TRANS_DDI_HDCP_SIGNALLING);
 
 	ctl &= ~TRANS_DDI_FUNC_ENABLE;
 
-	if (IS_DISPLAY_VER(dev_priv, 8, 10))
+	if (IS_DISPLAY_VER(display, 8, 10))
 		ctl &= ~(TRANS_DDI_PORT_SYNC_ENABLE |
 			 TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK);
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		if (!intel_dp_mst_is_master_trans(crtc_state)) {
 			ctl &= ~(TGL_TRANS_DDI_PORT_MASK |
 				 TRANS_DDI_MODE_SELECT_MASK);
@@ -706,7 +698,7 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 		ctl &= ~(TRANS_DDI_PORT_MASK | TRANS_DDI_MODE_SELECT_MASK);
 	}
 
-	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_DDI_FUNC_CTL(display, cpu_transcoder),
 		       ctl);
 
 	if (intel_dp_mst_is_slave_trans(crtc_state))
@@ -725,17 +717,15 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 			       bool enable, u32 hdcp_mask)
 {
 	struct intel_display *display = to_intel_display(intel_encoder);
-	struct drm_device *dev = intel_encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	intel_wakeref_t wakeref;
 	int ret = 0;
 
 	wakeref = intel_display_power_get_if_enabled(display,
 						     intel_encoder->power_domain);
-	if (drm_WARN_ON(dev, !wakeref))
+	if (drm_WARN_ON(display->drm, !wakeref))
 		return -ENXIO;
 
-	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
+	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, cpu_transcoder),
 		     hdcp_mask, enable ? hdcp_mask : 0);
 	intel_display_power_put(display, intel_encoder->power_domain, wakeref);
 	return ret;
@@ -744,7 +734,6 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 {
 	struct intel_display *display = to_intel_display(intel_connector);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder = intel_attached_encoder(intel_connector);
 	int type = intel_connector->base.connector_type;
 	enum port port = encoder->port;
@@ -765,12 +754,12 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 		goto out;
 	}
 
-	if (HAS_TRANSCODER(dev_priv, TRANSCODER_EDP) && port == PORT_A)
+	if (HAS_TRANSCODER(display, TRANSCODER_EDP) && port == PORT_A)
 		cpu_transcoder = TRANSCODER_EDP;
 	else
 		cpu_transcoder = (enum transcoder) pipe;
 
-	ddi_mode = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder)) &
+	ddi_mode = intel_de_read(display, TRANS_DDI_FUNC_CTL(display, cpu_transcoder)) &
 		TRANS_DDI_MODE_SELECT_MASK;
 
 	if (ddi_mode == TRANS_DDI_MODE_SELECT_HDMI ||
@@ -804,7 +793,6 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 					u8 *pipe_mask, bool *is_dp_mst)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum port port = encoder->port;
 	intel_wakeref_t wakeref;
 	enum pipe p;
@@ -819,13 +807,13 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	if (!wakeref)
 		return;
 
-	tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+	tmp = intel_de_read(display, DDI_BUF_CTL(port));
 	if (!(tmp & DDI_BUF_CTL_ENABLE))
 		goto out;
 
-	if (HAS_TRANSCODER(dev_priv, TRANSCODER_EDP) && port == PORT_A) {
-		tmp = intel_de_read(dev_priv,
-				    TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_EDP));
+	if (HAS_TRANSCODER(display, TRANSCODER_EDP) && port == PORT_A) {
+		tmp = intel_de_read(display,
+				    TRANS_DDI_FUNC_CTL(display, TRANSCODER_EDP));
 
 		switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
 		default:
@@ -846,7 +834,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 		goto out;
 	}
 
-	for_each_pipe(dev_priv, p) {
+	for_each_pipe(display, p) {
 		enum transcoder cpu_transcoder = (enum transcoder)p;
 		u32 port_mask, ddi_select, ddi_mode;
 		intel_wakeref_t trans_wakeref;
@@ -856,7 +844,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 		if (!trans_wakeref)
 			continue;
 
-		if (DISPLAY_VER(dev_priv) >= 12) {
+		if (DISPLAY_VER(display) >= 12) {
 			port_mask = TGL_TRANS_DDI_PORT_MASK;
 			ddi_select = TGL_TRANS_DDI_SELECT_PORT(port);
 		} else {
@@ -864,8 +852,8 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 			ddi_select = TRANS_DDI_SELECT_PORT(port);
 		}
 
-		tmp = intel_de_read(dev_priv,
-				    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
+		tmp = intel_de_read(display,
+				    TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
 		intel_display_power_put(display, POWER_DOMAIN_TRANSCODER(cpu_transcoder),
 					trans_wakeref);
 
@@ -883,7 +871,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	}
 
 	if (!*pipe_mask)
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "No pipe for [ENCODER:%d:%s] found\n",
 			    encoder->base.base.id, encoder->base.name);
 
@@ -906,7 +894,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	}
 
 	if (!mst_pipe_mask && hweight8(*pipe_mask) > 1) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Multiple pipes for [ENCODER:%d:%s] (pipe_mask %02x)\n",
 			    encoder->base.base.id, encoder->base.name,
 			    *pipe_mask);
@@ -914,7 +902,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	}
 
 	if (mst_pipe_mask && mst_pipe_mask != *pipe_mask)
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Conflicting MST and non-MST state for [ENCODER:%d:%s] (pipe masks: all %02x, MST %02x, 128b/132b %02x)\n",
 			    encoder->base.base.id, encoder->base.name,
 			    *pipe_mask, mst_pipe_mask, dp128b132b_pipe_mask);
@@ -922,12 +910,12 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 		*is_dp_mst = mst_pipe_mask;
 
 out:
-	if (*pipe_mask && (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))) {
-		tmp = intel_de_read(dev_priv, BXT_PHY_CTL(port));
+	if (*pipe_mask && (display->platform.geminilake || display->platform.broxton)) {
+		tmp = intel_de_read(display, BXT_PHY_CTL(port));
 		if ((tmp & (BXT_PHY_CMNLANE_POWERDOWN_ACK |
 			    BXT_PHY_LANE_POWERDOWN_ACK |
 			    BXT_PHY_LANE_ENABLED)) != BXT_PHY_LANE_ENABLED)
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"[ENCODER:%d:%s] enabled but PHY powered down? (PHY_CTL %08x)\n",
 				encoder->base.base.id, encoder->base.name, tmp);
 	}
@@ -1041,8 +1029,7 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum phy phy = intel_encoder_to_phy(encoder);
 	u32 val;
@@ -1050,53 +1037,53 @@ void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
 	if (cpu_transcoder == TRANSCODER_EDP)
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 13)
+	if (DISPLAY_VER(display) >= 13)
 		val = TGL_TRANS_CLK_SEL_PORT(phy);
-	else if (DISPLAY_VER(dev_priv) >= 12)
+	else if (DISPLAY_VER(display) >= 12)
 		val = TGL_TRANS_CLK_SEL_PORT(encoder->port);
 	else
 		val = TRANS_CLK_SEL_PORT(encoder->port);
 
-	intel_de_write(dev_priv, TRANS_CLK_SEL(cpu_transcoder), val);
+	intel_de_write(display, TRANS_CLK_SEL(cpu_transcoder), val);
 }
 
 void intel_ddi_disable_transcoder_clock(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 val;
 
 	if (cpu_transcoder == TRANSCODER_EDP)
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		val = TGL_TRANS_CLK_SEL_DISABLED;
 	else
 		val = TRANS_CLK_SEL_DISABLED;
 
-	intel_de_write(dev_priv, TRANS_CLK_SEL(cpu_transcoder), val);
+	intel_de_write(display, TRANS_CLK_SEL(cpu_transcoder), val);
 }
 
-static void _skl_ddi_set_iboost(struct drm_i915_private *dev_priv,
+static void _skl_ddi_set_iboost(struct intel_display *display,
 				enum port port, u8 iboost)
 {
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, DISPIO_CR_TX_BMU_CR0);
+	tmp = intel_de_read(display, DISPIO_CR_TX_BMU_CR0);
 	tmp &= ~(BALANCE_LEG_MASK(port) | BALANCE_LEG_DISABLE(port));
 	if (iboost)
 		tmp |= iboost << BALANCE_LEG_SHIFT(port);
 	else
 		tmp |= BALANCE_LEG_DISABLE(port);
-	intel_de_write(dev_priv, DISPIO_CR_TX_BMU_CR0, tmp);
+	intel_de_write(display, DISPIO_CR_TX_BMU_CR0, tmp);
 }
 
 static void skl_ddi_set_iboost(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state,
 			       int level)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u8 iboost;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
@@ -1109,7 +1096,7 @@ static void skl_ddi_set_iboost(struct intel_encoder *encoder,
 		int n_entries;
 
 		trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
-		if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
+		if (drm_WARN_ON_ONCE(display->drm, !trans))
 			return;
 
 		iboost = trans->entries[level].hsw.i_boost;
@@ -1117,28 +1104,28 @@ static void skl_ddi_set_iboost(struct intel_encoder *encoder,
 
 	/* Make sure that the requested I_boost is valid */
 	if (iboost && iboost != 0x1 && iboost != 0x3 && iboost != 0x7) {
-		drm_err(&dev_priv->drm, "Invalid I_boost value %u\n", iboost);
+		drm_err(display->drm, "Invalid I_boost value %u\n", iboost);
 		return;
 	}
 
-	_skl_ddi_set_iboost(dev_priv, encoder->port, iboost);
+	_skl_ddi_set_iboost(display, encoder->port, iboost);
 
 	if (encoder->port == PORT_A && dig_port->max_lanes == 4)
-		_skl_ddi_set_iboost(dev_priv, PORT_E, iboost);
+		_skl_ddi_set_iboost(display, PORT_E, iboost);
 }
 
 static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp,
 				   const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int n_entries;
 
 	encoder->get_buf_trans(encoder, crtc_state, &n_entries);
 
-	if (drm_WARN_ON(&dev_priv->drm, n_entries < 1))
+	if (drm_WARN_ON(display->drm, n_entries < 1))
 		n_entries = 1;
-	if (drm_WARN_ON(&dev_priv->drm,
+	if (drm_WARN_ON(display->drm,
 			n_entries > ARRAY_SIZE(index_to_dp_signal_levels)))
 		n_entries = ARRAY_SIZE(index_to_dp_signal_levels);
 
@@ -1171,14 +1158,14 @@ static u32 icl_combo_phy_loadgen_select(const struct intel_crtc_state *crtc_stat
 static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_ddi_buf_trans *trans;
 	enum phy phy = intel_encoder_to_phy(encoder);
 	int n_entries, ln;
 	u32 val;
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
+	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
@@ -1186,25 +1173,25 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 
 		val = EDP4K2K_MODE_OVRD_EN | EDP4K2K_MODE_OVRD_OPTIMIZED;
 		intel_dp->hobl_active = is_hobl_buf_trans(trans);
-		intel_de_rmw(dev_priv, ICL_PORT_CL_DW10(phy), val,
+		intel_de_rmw(display, ICL_PORT_CL_DW10(phy), val,
 			     intel_dp->hobl_active ? val : 0);
 	}
 
 	/* Set PORT_TX_DW5 */
-	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
+	val = intel_de_read(display, ICL_PORT_TX_DW5_LN(0, phy));
 	val &= ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK |
 		 COEFF_POLARITY | CURSOR_PROGRAM |
 		 TAP2_DISABLE | TAP3_DISABLE);
 	val |= SCALING_MODE_SEL(0x2);
 	val |= RTERM_SELECT(0x6);
 	val |= TAP3_DISABLE;
-	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
+	intel_de_write(display, ICL_PORT_TX_DW5_GRP(phy), val);
 
 	/* Program PORT_TX_DW2 */
 	for (ln = 0; ln < 4; ln++) {
 		int level = intel_ddi_level(encoder, crtc_state, ln);
 
-		intel_de_rmw(dev_priv, ICL_PORT_TX_DW2_LN(ln, phy),
+		intel_de_rmw(display, ICL_PORT_TX_DW2_LN(ln, phy),
 			     SWING_SEL_UPPER_MASK | SWING_SEL_LOWER_MASK | RCOMP_SCALAR_MASK,
 			     SWING_SEL_UPPER(trans->entries[level].icl.dw2_swing_sel) |
 			     SWING_SEL_LOWER(trans->entries[level].icl.dw2_swing_sel) |
@@ -1216,7 +1203,7 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	for (ln = 0; ln < 4; ln++) {
 		int level = intel_ddi_level(encoder, crtc_state, ln);
 
-		intel_de_rmw(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy),
+		intel_de_rmw(display, ICL_PORT_TX_DW4_LN(ln, phy),
 			     POST_CURSOR_1_MASK | POST_CURSOR_2_MASK | CURSOR_COEFF_MASK,
 			     POST_CURSOR_1(trans->entries[level].icl.dw4_post_cursor_1) |
 			     POST_CURSOR_2(trans->entries[level].icl.dw4_post_cursor_2) |
@@ -1227,7 +1214,7 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	for (ln = 0; ln < 4; ln++) {
 		int level = intel_ddi_level(encoder, crtc_state, ln);
 
-		intel_de_rmw(dev_priv, ICL_PORT_TX_DW7_LN(ln, phy),
+		intel_de_rmw(display, ICL_PORT_TX_DW7_LN(ln, phy),
 			     N_SCALAR_MASK,
 			     N_SCALAR(trans->entries[level].icl.dw7_n_scalar));
 	}
@@ -1236,7 +1223,7 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
 					    const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	u32 val;
 	int ln;
@@ -1246,12 +1233,12 @@ static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
 	 * set PORT_PCS_DW1 cmnkeeper_enable to 1b,
 	 * else clear to 0b.
 	 */
-	val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
+	val = intel_de_read(display, ICL_PORT_PCS_DW1_LN(0, phy));
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		val &= ~COMMON_KEEPER_EN;
 	else
 		val |= COMMON_KEEPER_EN;
-	intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
+	intel_de_write(display, ICL_PORT_PCS_DW1_GRP(phy), val);
 
 	/* 2. Program loadgen select */
 	/*
@@ -1261,33 +1248,33 @@ static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
 	 * > 6 GHz (LN0=0, LN1=0, LN2=0, LN3=0)
 	 */
 	for (ln = 0; ln < 4; ln++) {
-		intel_de_rmw(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy),
+		intel_de_rmw(display, ICL_PORT_TX_DW4_LN(ln, phy),
 			     LOADGEN_SELECT,
 			     icl_combo_phy_loadgen_select(crtc_state, ln));
 	}
 
 	/* 3. Set PORT_CL_DW5 SUS Clock Config to 11b */
-	intel_de_rmw(dev_priv, ICL_PORT_CL_DW5(phy),
+	intel_de_rmw(display, ICL_PORT_CL_DW5(phy),
 		     0, SUS_CLOCK_CONFIG);
 
 	/* 4. Clear training enable to change swing values */
-	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
+	val = intel_de_read(display, ICL_PORT_TX_DW5_LN(0, phy));
 	val &= ~TX_TRAINING_EN;
-	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
+	intel_de_write(display, ICL_PORT_TX_DW5_GRP(phy), val);
 
 	/* 5. Program swing and de-emphasis */
 	icl_ddi_combo_vswing_program(encoder, crtc_state);
 
 	/* 6. Set training enable to trigger update */
-	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
+	val = intel_de_read(display, ICL_PORT_TX_DW5_LN(0, phy));
 	val |= TX_TRAINING_EN;
-	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
+	intel_de_write(display, ICL_PORT_TX_DW5_GRP(phy), val);
 }
 
 static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	const struct intel_ddi_buf_trans *trans;
 	int n_entries, ln;
@@ -1296,13 +1283,13 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 		return;
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
+	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
 	for (ln = 0; ln < 2; ln++) {
-		intel_de_rmw(dev_priv, MG_TX1_LINK_PARAMS(ln, tc_port),
+		intel_de_rmw(display, MG_TX1_LINK_PARAMS(ln, tc_port),
 			     CRI_USE_FS32, 0);
-		intel_de_rmw(dev_priv, MG_TX2_LINK_PARAMS(ln, tc_port),
+		intel_de_rmw(display, MG_TX2_LINK_PARAMS(ln, tc_port),
 			     CRI_USE_FS32, 0);
 	}
 
@@ -1312,13 +1299,13 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 
-		intel_de_rmw(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port),
+		intel_de_rmw(display, MG_TX1_SWINGCTRL(ln, tc_port),
 			     CRI_TXDEEMPH_OVERRIDE_17_12_MASK,
 			     CRI_TXDEEMPH_OVERRIDE_17_12(trans->entries[level].mg.cri_txdeemph_override_17_12));
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 
-		intel_de_rmw(dev_priv, MG_TX2_SWINGCTRL(ln, tc_port),
+		intel_de_rmw(display, MG_TX2_SWINGCTRL(ln, tc_port),
 			     CRI_TXDEEMPH_OVERRIDE_17_12_MASK,
 			     CRI_TXDEEMPH_OVERRIDE_17_12(trans->entries[level].mg.cri_txdeemph_override_17_12));
 	}
@@ -1329,7 +1316,7 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 
-		intel_de_rmw(dev_priv, MG_TX1_DRVCTRL(ln, tc_port),
+		intel_de_rmw(display, MG_TX1_DRVCTRL(ln, tc_port),
 			     CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
 			     CRI_TXDEEMPH_OVERRIDE_5_0_MASK,
 			     CRI_TXDEEMPH_OVERRIDE_11_6(trans->entries[level].mg.cri_txdeemph_override_11_6) |
@@ -1338,7 +1325,7 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 
-		intel_de_rmw(dev_priv, MG_TX2_DRVCTRL(ln, tc_port),
+		intel_de_rmw(display, MG_TX2_DRVCTRL(ln, tc_port),
 			     CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
 			     CRI_TXDEEMPH_OVERRIDE_5_0_MASK,
 			     CRI_TXDEEMPH_OVERRIDE_11_6(trans->entries[level].mg.cri_txdeemph_override_11_6) |
@@ -1354,21 +1341,21 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 	 * values from table for which TX1 and TX2 enabled.
 	 */
 	for (ln = 0; ln < 2; ln++) {
-		intel_de_rmw(dev_priv, MG_CLKHUB(ln, tc_port),
+		intel_de_rmw(display, MG_CLKHUB(ln, tc_port),
 			     CFG_LOW_RATE_LKREN_EN,
 			     crtc_state->port_clock < 300000 ? CFG_LOW_RATE_LKREN_EN : 0);
 	}
 
 	/* Program the MG_TX_DCC<LN, port being used> based on the link frequency */
 	for (ln = 0; ln < 2; ln++) {
-		intel_de_rmw(dev_priv, MG_TX1_DCC(ln, tc_port),
+		intel_de_rmw(display, MG_TX1_DCC(ln, tc_port),
 			     CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK |
 			     CFG_AMI_CK_DIV_OVERRIDE_EN,
 			     crtc_state->port_clock > 500000 ?
 			     CFG_AMI_CK_DIV_OVERRIDE_VAL(1) |
 			     CFG_AMI_CK_DIV_OVERRIDE_EN : 0);
 
-		intel_de_rmw(dev_priv, MG_TX2_DCC(ln, tc_port),
+		intel_de_rmw(display, MG_TX2_DCC(ln, tc_port),
 			     CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK |
 			     CFG_AMI_CK_DIV_OVERRIDE_EN,
 			     crtc_state->port_clock > 500000 ?
@@ -1378,9 +1365,9 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 
 	/* Program MG_TX_PISO_READLOAD with values from vswing table */
 	for (ln = 0; ln < 2; ln++) {
-		intel_de_rmw(dev_priv, MG_TX1_PISO_READLOAD(ln, tc_port),
+		intel_de_rmw(display, MG_TX1_PISO_READLOAD(ln, tc_port),
 			     0, CRI_CALCINIT);
-		intel_de_rmw(dev_priv, MG_TX2_PISO_READLOAD(ln, tc_port),
+		intel_de_rmw(display, MG_TX2_PISO_READLOAD(ln, tc_port),
 			     0, CRI_CALCINIT);
 	}
 }
@@ -1490,12 +1477,12 @@ int intel_ddi_level(struct intel_encoder *encoder,
 		    const struct intel_crtc_state *crtc_state,
 		    int lane)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_ddi_buf_trans *trans;
 	int level, n_entries;
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
-	if (drm_WARN_ON_ONCE(&i915->drm, !trans))
+	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return 0;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
@@ -1504,7 +1491,7 @@ int intel_ddi_level(struct intel_encoder *encoder,
 		level = intel_ddi_dp_level(enc_to_intel_dp(encoder), crtc_state,
 					   lane);
 
-	if (drm_WARN_ON_ONCE(&i915->drm, level >= n_entries))
+	if (drm_WARN_ON_ONCE(display->drm, level >= n_entries))
 		level = n_entries - 1;
 
 	return level;
@@ -1514,13 +1501,13 @@ static void
 hsw_set_signal_levels(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	int level = intel_ddi_level(encoder, crtc_state, 0);
 	enum port port = encoder->port;
 	u32 signal_levels;
 
-	if (has_iboost(dev_priv))
+	if (has_iboost(display))
 		skl_ddi_set_iboost(encoder, crtc_state, level);
 
 	/* HDMI ignores the rest */
@@ -1529,46 +1516,46 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
 
 	signal_levels = DDI_BUF_TRANS_SELECT(level);
 
-	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
+	drm_dbg_kms(display->drm, "Using signal levels %08x\n",
 		    signal_levels);
 
 	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
 	intel_dp->DP |= signal_levels;
 
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
-	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
+	intel_de_write(display, DDI_BUF_CTL(port), intel_dp->DP);
+	intel_de_posting_read(display, DDI_BUF_CTL(port));
 }
 
-static void _icl_ddi_enable_clock(struct drm_i915_private *i915, i915_reg_t reg,
+static void _icl_ddi_enable_clock(struct intel_display *display, i915_reg_t reg,
 				  u32 clk_sel_mask, u32 clk_sel, u32 clk_off)
 {
-	mutex_lock(&i915->display.dpll.lock);
+	mutex_lock(&display->dpll.lock);
 
-	intel_de_rmw(i915, reg, clk_sel_mask, clk_sel);
+	intel_de_rmw(display, reg, clk_sel_mask, clk_sel);
 
 	/*
 	 * "This step and the step before must be
 	 *  done with separate register writes."
 	 */
-	intel_de_rmw(i915, reg, clk_off, 0);
+	intel_de_rmw(display, reg, clk_off, 0);
 
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&display->dpll.lock);
 }
 
-static void _icl_ddi_disable_clock(struct drm_i915_private *i915, i915_reg_t reg,
+static void _icl_ddi_disable_clock(struct intel_display *display, i915_reg_t reg,
 				   u32 clk_off)
 {
-	mutex_lock(&i915->display.dpll.lock);
+	mutex_lock(&display->dpll.lock);
 
-	intel_de_rmw(i915, reg, 0, clk_off);
+	intel_de_rmw(display, reg, 0, clk_off);
 
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&display->dpll.lock);
 }
 
-static bool _icl_ddi_is_clock_enabled(struct drm_i915_private *i915, i915_reg_t reg,
+static bool _icl_ddi_is_clock_enabled(struct intel_display *display, i915_reg_t reg,
 				      u32 clk_off)
 {
-	return !(intel_de_read(i915, reg) & clk_off);
+	return !(intel_de_read(display, reg) & clk_off);
 }
 
 static struct intel_shared_dpll *
@@ -1585,14 +1572,14 @@ _icl_ddi_get_pll(struct intel_display *display, i915_reg_t reg,
 static void adls_ddi_enable_clock(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	if (drm_WARN_ON(&i915->drm, !pll))
+	if (drm_WARN_ON(display->drm, !pll))
 		return;
 
-	_icl_ddi_enable_clock(i915, ADLS_DPCLKA_CFGCR(phy),
+	_icl_ddi_enable_clock(display, ADLS_DPCLKA_CFGCR(phy),
 			      ADLS_DPCLKA_CFGCR_DDI_CLK_SEL_MASK(phy),
 			      pll->info->id << ADLS_DPCLKA_CFGCR_DDI_SHIFT(phy),
 			      ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
@@ -1600,19 +1587,19 @@ static void adls_ddi_enable_clock(struct intel_encoder *encoder,
 
 static void adls_ddi_disable_clock(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	_icl_ddi_disable_clock(i915, ADLS_DPCLKA_CFGCR(phy),
+	_icl_ddi_disable_clock(display, ADLS_DPCLKA_CFGCR(phy),
 			       ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
 }
 
 static bool adls_ddi_is_clock_enabled(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	return _icl_ddi_is_clock_enabled(i915, ADLS_DPCLKA_CFGCR(phy),
+	return _icl_ddi_is_clock_enabled(display, ADLS_DPCLKA_CFGCR(phy),
 					 ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
 }
 
@@ -1629,14 +1616,14 @@ static struct intel_shared_dpll *adls_ddi_get_pll(struct intel_encoder *encoder)
 static void rkl_ddi_enable_clock(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	if (drm_WARN_ON(&i915->drm, !pll))
+	if (drm_WARN_ON(display->drm, !pll))
 		return;
 
-	_icl_ddi_enable_clock(i915, ICL_DPCLKA_CFGCR0,
+	_icl_ddi_enable_clock(display, ICL_DPCLKA_CFGCR0,
 			      RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy),
 			      RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy),
 			      RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
@@ -1644,19 +1631,19 @@ static void rkl_ddi_enable_clock(struct intel_encoder *encoder,
 
 static void rkl_ddi_disable_clock(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	_icl_ddi_disable_clock(i915, ICL_DPCLKA_CFGCR0,
+	_icl_ddi_disable_clock(display, ICL_DPCLKA_CFGCR0,
 			       RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
 }
 
 static bool rkl_ddi_is_clock_enabled(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	return _icl_ddi_is_clock_enabled(i915, ICL_DPCLKA_CFGCR0,
+	return _icl_ddi_is_clock_enabled(display, ICL_DPCLKA_CFGCR0,
 					 RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
 }
 
@@ -1673,23 +1660,23 @@ static struct intel_shared_dpll *rkl_ddi_get_pll(struct intel_encoder *encoder)
 static void dg1_ddi_enable_clock(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	if (drm_WARN_ON(&i915->drm, !pll))
+	if (drm_WARN_ON(display->drm, !pll))
 		return;
 
 	/*
 	 * If we fail this, something went very wrong: first 2 PLLs should be
 	 * used by first 2 phys and last 2 PLLs by last phys
 	 */
-	if (drm_WARN_ON(&i915->drm,
+	if (drm_WARN_ON(display->drm,
 			(pll->info->id < DPLL_ID_DG1_DPLL2 && phy >= PHY_C) ||
 			(pll->info->id >= DPLL_ID_DG1_DPLL2 && phy < PHY_C)))
 		return;
 
-	_icl_ddi_enable_clock(i915, DG1_DPCLKA_CFGCR0(phy),
+	_icl_ddi_enable_clock(display, DG1_DPCLKA_CFGCR0(phy),
 			      DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy),
 			      DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy),
 			      DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
@@ -1697,19 +1684,19 @@ static void dg1_ddi_enable_clock(struct intel_encoder *encoder,
 
 static void dg1_ddi_disable_clock(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	_icl_ddi_disable_clock(i915, DG1_DPCLKA_CFGCR0(phy),
+	_icl_ddi_disable_clock(display, DG1_DPCLKA_CFGCR0(phy),
 			       DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
 }
 
 static bool dg1_ddi_is_clock_enabled(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	return _icl_ddi_is_clock_enabled(i915, DG1_DPCLKA_CFGCR0(phy),
+	return _icl_ddi_is_clock_enabled(display, DG1_DPCLKA_CFGCR0(phy),
 					 DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
 }
 
@@ -1739,14 +1726,14 @@ static struct intel_shared_dpll *dg1_ddi_get_pll(struct intel_encoder *encoder)
 static void icl_ddi_combo_enable_clock(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	if (drm_WARN_ON(&i915->drm, !pll))
+	if (drm_WARN_ON(display->drm, !pll))
 		return;
 
-	_icl_ddi_enable_clock(i915, ICL_DPCLKA_CFGCR0,
+	_icl_ddi_enable_clock(display, ICL_DPCLKA_CFGCR0,
 			      ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy),
 			      ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy),
 			      ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
@@ -1754,19 +1741,19 @@ static void icl_ddi_combo_enable_clock(struct intel_encoder *encoder,
 
 static void icl_ddi_combo_disable_clock(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	_icl_ddi_disable_clock(i915, ICL_DPCLKA_CFGCR0,
+	_icl_ddi_disable_clock(display, ICL_DPCLKA_CFGCR0,
 			       ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
 }
 
 static bool icl_ddi_combo_is_clock_enabled(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	return _icl_ddi_is_clock_enabled(i915, ICL_DPCLKA_CFGCR0,
+	return _icl_ddi_is_clock_enabled(display, ICL_DPCLKA_CFGCR0,
 					 ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
 }
 
@@ -1783,39 +1770,39 @@ struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder)
 static void jsl_ddi_tc_enable_clock(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	enum port port = encoder->port;
 
-	if (drm_WARN_ON(&i915->drm, !pll))
+	if (drm_WARN_ON(display->drm, !pll))
 		return;
 
 	/*
 	 * "For DDIC and DDID, program DDI_CLK_SEL to map the MG clock to the port.
 	 *  MG does not exist, but the programming is required to ungate DDIC and DDID."
 	 */
-	intel_de_write(i915, DDI_CLK_SEL(port), DDI_CLK_SEL_MG);
+	intel_de_write(display, DDI_CLK_SEL(port), DDI_CLK_SEL_MG);
 
 	icl_ddi_combo_enable_clock(encoder, crtc_state);
 }
 
 static void jsl_ddi_tc_disable_clock(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 
 	icl_ddi_combo_disable_clock(encoder);
 
-	intel_de_write(i915, DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
+	intel_de_write(display, DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
 }
 
 static bool jsl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, DDI_CLK_SEL(port));
+	tmp = intel_de_read(display, DDI_CLK_SEL(port));
 
 	if ((tmp & DDI_CLK_SEL_MASK) == DDI_CLK_SEL_NONE)
 		return false;
@@ -1826,54 +1813,54 @@ static bool jsl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
 static void icl_ddi_tc_enable_clock(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	enum port port = encoder->port;
 
-	if (drm_WARN_ON(&i915->drm, !pll))
+	if (drm_WARN_ON(display->drm, !pll))
 		return;
 
-	intel_de_write(i915, DDI_CLK_SEL(port),
+	intel_de_write(display, DDI_CLK_SEL(port),
 		       icl_pll_to_ddi_clk_sel(encoder, crtc_state));
 
-	mutex_lock(&i915->display.dpll.lock);
+	mutex_lock(&display->dpll.lock);
 
-	intel_de_rmw(i915, ICL_DPCLKA_CFGCR0,
+	intel_de_rmw(display, ICL_DPCLKA_CFGCR0,
 		     ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port), 0);
 
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&display->dpll.lock);
 }
 
 static void icl_ddi_tc_disable_clock(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	enum port port = encoder->port;
 
-	mutex_lock(&i915->display.dpll.lock);
+	mutex_lock(&display->dpll.lock);
 
-	intel_de_rmw(i915, ICL_DPCLKA_CFGCR0,
+	intel_de_rmw(display, ICL_DPCLKA_CFGCR0,
 		     0, ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port));
 
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&display->dpll.lock);
 
-	intel_de_write(i915, DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
+	intel_de_write(display, DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
 }
 
 static bool icl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	enum port port = encoder->port;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, DDI_CLK_SEL(port));
+	tmp = intel_de_read(display, DDI_CLK_SEL(port));
 
 	if ((tmp & DDI_CLK_SEL_MASK) == DDI_CLK_SEL_NONE)
 		return false;
 
-	tmp = intel_de_read(i915, ICL_DPCLKA_CFGCR0);
+	tmp = intel_de_read(display, ICL_DPCLKA_CFGCR0);
 
 	return !(tmp & ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port));
 }
@@ -1934,47 +1921,47 @@ static struct intel_shared_dpll *bxt_ddi_get_pll(struct intel_encoder *encoder)
 static void skl_ddi_enable_clock(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	enum port port = encoder->port;
 
-	if (drm_WARN_ON(&i915->drm, !pll))
+	if (drm_WARN_ON(display->drm, !pll))
 		return;
 
-	mutex_lock(&i915->display.dpll.lock);
+	mutex_lock(&display->dpll.lock);
 
-	intel_de_rmw(i915, DPLL_CTRL2,
+	intel_de_rmw(display, DPLL_CTRL2,
 		     DPLL_CTRL2_DDI_CLK_OFF(port) |
 		     DPLL_CTRL2_DDI_CLK_SEL_MASK(port),
 		     DPLL_CTRL2_DDI_CLK_SEL(pll->info->id, port) |
 		     DPLL_CTRL2_DDI_SEL_OVERRIDE(port));
 
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&display->dpll.lock);
 }
 
 static void skl_ddi_disable_clock(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 
-	mutex_lock(&i915->display.dpll.lock);
+	mutex_lock(&display->dpll.lock);
 
-	intel_de_rmw(i915, DPLL_CTRL2,
+	intel_de_rmw(display, DPLL_CTRL2,
 		     0, DPLL_CTRL2_DDI_CLK_OFF(port));
 
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&display->dpll.lock);
 }
 
 static bool skl_ddi_is_clock_enabled(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 
 	/*
 	 * FIXME Not sure if the override affects both
 	 * the PLL selection and the CLK_OFF bit.
 	 */
-	return !(intel_de_read(i915, DPLL_CTRL2) & DPLL_CTRL2_DDI_CLK_OFF(port));
+	return !(intel_de_read(display, DPLL_CTRL2) & DPLL_CTRL2_DDI_CLK_OFF(port));
 }
 
 static struct intel_shared_dpll *skl_ddi_get_pll(struct intel_encoder *encoder)
@@ -2002,30 +1989,30 @@ static struct intel_shared_dpll *skl_ddi_get_pll(struct intel_encoder *encoder)
 void hsw_ddi_enable_clock(struct intel_encoder *encoder,
 			  const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	enum port port = encoder->port;
 
-	if (drm_WARN_ON(&i915->drm, !pll))
+	if (drm_WARN_ON(display->drm, !pll))
 		return;
 
-	intel_de_write(i915, PORT_CLK_SEL(port), hsw_pll_to_ddi_pll_sel(pll));
+	intel_de_write(display, PORT_CLK_SEL(port), hsw_pll_to_ddi_pll_sel(pll));
 }
 
 void hsw_ddi_disable_clock(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 
-	intel_de_write(i915, PORT_CLK_SEL(port), PORT_CLK_SEL_NONE);
+	intel_de_write(display, PORT_CLK_SEL(port), PORT_CLK_SEL_NONE);
 }
 
 bool hsw_ddi_is_clock_enabled(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 
-	return intel_de_read(i915, PORT_CLK_SEL(port)) != PORT_CLK_SEL_NONE;
+	return intel_de_read(display, PORT_CLK_SEL(port)) != PORT_CLK_SEL_NONE;
 }
 
 static struct intel_shared_dpll *hsw_ddi_get_pll(struct intel_encoder *encoder)
@@ -2081,7 +2068,7 @@ void intel_ddi_disable_clock(struct intel_encoder *encoder)
 
 void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	u32 port_mask;
 	bool ddi_clk_needed;
 
@@ -2101,7 +2088,7 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
 		 * In the unlikely case that BIOS enables DP in MST mode, just
 		 * warn since our MST HW readout is incomplete.
 		 */
-		if (drm_WARN_ON(&i915->drm, is_mst))
+		if (drm_WARN_ON(display->drm, is_mst))
 			return;
 	}
 
@@ -2116,11 +2103,11 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
 		 * Sanity check that we haven't incorrectly registered another
 		 * encoder using any of the ports of this DSI encoder.
 		 */
-		for_each_intel_encoder(&i915->drm, other_encoder) {
+		for_each_intel_encoder(display->drm, other_encoder) {
 			if (other_encoder == encoder)
 				continue;
 
-			if (drm_WARN_ON(&i915->drm,
+			if (drm_WARN_ON(display->drm,
 					port_mask & BIT(other_encoder->port)))
 				return;
 		}
@@ -2135,7 +2122,7 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
 	    !encoder->is_clock_enabled(encoder))
 		return;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[ENCODER:%d:%s] is disabled/in DSI mode with an ungated DDI clock, gate it\n",
 		    encoder->base.base.id, encoder->base.name);
 
@@ -2255,10 +2242,10 @@ tgl_dp_tp_transcoder(const struct intel_crtc_state *crtc_state)
 i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
-		return TGL_DP_TP_CTL(dev_priv,
+	if (DISPLAY_VER(display) >= 12)
+		return TGL_DP_TP_CTL(display,
 				     tgl_dp_tp_transcoder(crtc_state));
 	else
 		return DP_TP_CTL(encoder->port);
@@ -2267,10 +2254,10 @@ i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
 static i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
-		return TGL_DP_TP_STATUS(dev_priv,
+	if (DISPLAY_VER(display) >= 12)
+		return TGL_DP_TP_STATUS(display,
 					tgl_dp_tp_transcoder(crtc_state));
 	else
 		return DP_TP_STATUS(encoder->port);
@@ -2445,14 +2432,14 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
 static void intel_ddi_disable_fec(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
 	if (!crtc_state->fec_enable)
 		return;
 
-	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
 		     DP_TP_CTL_FEC_ENABLE, 0);
-	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
+	intel_de_posting_read(display, dp_tp_ctl_reg(encoder, crtc_state));
 }
 
 static void intel_ddi_power_up_lanes(struct intel_encoder *encoder,
@@ -2474,11 +2461,11 @@ static void intel_ddi_power_up_lanes(struct intel_encoder *encoder,
  * Splitter enable for eDP MSO is limited to certain pipes, on certain
  * platforms.
  */
-static u8 intel_ddi_splitter_pipe_mask(struct drm_i915_private *i915)
+static u8 intel_ddi_splitter_pipe_mask(struct intel_display *display)
 {
-	if (DISPLAY_VER(i915) > 20)
+	if (DISPLAY_VER(display) > 20)
 		return ~0;
-	else if (IS_ALDERLAKE_P(i915))
+	else if (display->platform.alderlake_p)
 		return BIT(PIPE_A) | BIT(PIPE_B);
 	else
 		return BIT(PIPE_A);
@@ -2487,28 +2474,28 @@ static u8 intel_ddi_splitter_pipe_mask(struct drm_i915_private *i915)
 static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
 				     struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(pipe_config);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	u32 dss1;
 
-	if (!HAS_MSO(i915))
+	if (!HAS_MSO(display))
 		return;
 
-	dss1 = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
+	dss1 = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 	pipe_config->splitter.enable = dss1 & SPLITTER_ENABLE;
 	if (!pipe_config->splitter.enable)
 		return;
 
-	if (drm_WARN_ON(&i915->drm, !(intel_ddi_splitter_pipe_mask(i915) & BIT(pipe)))) {
+	if (drm_WARN_ON(display->drm, !(intel_ddi_splitter_pipe_mask(display) & BIT(pipe)))) {
 		pipe_config->splitter.enable = false;
 		return;
 	}
 
 	switch (dss1 & SPLITTER_CONFIGURATION_MASK) {
 	default:
-		drm_WARN(&i915->drm, true,
+		drm_WARN(display->drm, true,
 			 "Invalid splitter configuration, dss1=0x%08x\n", dss1);
 		fallthrough;
 	case SPLITTER_CONFIGURATION_2_SEGMENT:
@@ -2524,12 +2511,12 @@ static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
 
 static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	u32 dss1 = 0;
 
-	if (!HAS_MSO(i915))
+	if (!HAS_MSO(display))
 		return;
 
 	if (crtc_state->splitter.enable) {
@@ -2541,7 +2528,7 @@ static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
 			dss1 |= SPLITTER_CONFIGURATION_4_SEGMENT;
 	}
 
-	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe),
+	intel_de_rmw(display, ICL_PIPE_DSS_CTL1(pipe),
 		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
 		     OVERLAP_PIXELS_MASK, dss1);
 }
@@ -2549,27 +2536,27 @@ static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
 static void
 mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	i915_reg_t reg;
 	u32 set_bits, wait_bits;
 
-	if (DISPLAY_VER(dev_priv) < 14)
+	if (DISPLAY_VER(display) < 14)
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 20) {
+	if (DISPLAY_VER(display) >= 20) {
 		reg = DDI_BUF_CTL(port);
 		set_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
 		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
 	} else {
-		reg = XELPDP_PORT_BUF_CTL1(dev_priv, port);
+		reg = XELPDP_PORT_BUF_CTL1(display, port);
 		set_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
 		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
 	}
 
-	intel_de_rmw(dev_priv, reg, 0, set_bits);
-	if (wait_for_us(intel_de_read(dev_priv, reg) & wait_bits, 100)) {
-		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link enable for DDI/PORT_BUF_CTL %c\n",
+	intel_de_rmw(display, reg, 0, set_bits);
+	if (wait_for_us(intel_de_read(display, reg) & wait_bits, 100)) {
+		drm_err(display->drm, "Timeout waiting for D2D Link enable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
 	}
 }
@@ -2599,13 +2586,13 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
 
 static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	u32 val;
 
 	val = intel_tc_port_in_tbt_alt_mode(dig_port) ?
 	      XELPDP_PORT_BUF_IO_SELECT_TBT : 0;
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(i915, encoder->port),
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, encoder->port),
 		     XELPDP_PORT_BUF_IO_SELECT_TBT, val);
 }
 
@@ -2734,7 +2721,6 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	int ret;
@@ -2778,7 +2764,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 
 	/* 5. If IO power is controlled through PWR_WELL_CTL, Enable IO Power */
 	if (!intel_tc_port_in_tbt_alt_mode(dig_port)) {
-		drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
+		drm_WARN_ON(display->drm, dig_port->ddi_io_wakeref);
 		dig_port->ddi_io_wakeref = intel_display_power_get(display,
 								   dig_port->ddi_io_power_domain);
 	}
@@ -2882,16 +2868,15 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 
-	if (DISPLAY_VER(dev_priv) < 11)
-		drm_WARN_ON(&dev_priv->drm,
+	if (DISPLAY_VER(display) < 11)
+		drm_WARN_ON(display->drm,
 			    is_mst && (port == PORT_A || port == PORT_E));
 	else
-		drm_WARN_ON(&dev_priv->drm, is_mst && port == PORT_A);
+		drm_WARN_ON(display->drm, is_mst && port == PORT_A);
 
 	intel_dp_set_link_params(intel_dp,
 				 crtc_state->port_clock,
@@ -2908,14 +2893,14 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	intel_ddi_enable_clock(encoder, crtc_state);
 
 	if (!intel_tc_port_in_tbt_alt_mode(dig_port)) {
-		drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
+		drm_WARN_ON(display->drm, dig_port->ddi_io_wakeref);
 		dig_port->ddi_io_wakeref = intel_display_power_get(display,
 								   dig_port->ddi_io_power_domain);
 	}
 
 	icl_program_mg_dp_mode(dig_port, crtc_state);
 
-	if (has_buf_trans_select(dev_priv))
+	if (has_buf_trans_select(display))
 		hsw_prepare_dp_ddi_buffers(encoder, crtc_state);
 
 	encoder->set_signal_levels(encoder, crtc_state);
@@ -2931,7 +2916,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 						   crtc_state);
 	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
 	intel_dp_start_link_train(state, intel_dp, crtc_state);
-	if ((port != PORT_A || DISPLAY_VER(dev_priv) >= 9) &&
+	if ((port != PORT_A || DISPLAY_VER(display) >= 9) &&
 	    !is_trans_port_sync_mode(crtc_state))
 		intel_dp_stop_link_train(intel_dp, crtc_state);
 
@@ -2979,12 +2964,11 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
 	intel_ddi_enable_clock(encoder, crtc_state);
 
-	drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
+	drm_WARN_ON(display->drm, dig_port->ddi_io_wakeref);
 	dig_port->ddi_io_wakeref = intel_display_power_get(display,
 							   dig_port->ddi_io_power_domain);
 
@@ -3022,10 +3006,9 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	drm_WARN_ON(&dev_priv->drm, crtc_state->has_pch_encoder);
+	drm_WARN_ON(display->drm, crtc_state->has_pch_encoder);
 
 	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
 
@@ -3050,27 +3033,27 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
 static void
 mtl_ddi_disable_d2d(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	i915_reg_t reg;
 	u32 clr_bits, wait_bits;
 
-	if (DISPLAY_VER(dev_priv) < 14)
+	if (DISPLAY_VER(display) < 14)
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 20) {
+	if (DISPLAY_VER(display) >= 20) {
 		reg = DDI_BUF_CTL(port);
 		clr_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
 		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
 	} else {
-		reg = XELPDP_PORT_BUF_CTL1(dev_priv, port);
+		reg = XELPDP_PORT_BUF_CTL1(display, port);
 		clr_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
 		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
 	}
 
-	intel_de_rmw(dev_priv, reg, clr_bits, 0);
-	if (wait_for_us(!(intel_de_read(dev_priv, reg) & wait_bits), 100))
-		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link disable for DDI/PORT_BUF_CTL %c\n",
+	intel_de_rmw(display, reg, clr_bits, 0);
+	if (wait_for_us(!(intel_de_read(display, reg) & wait_bits), 100))
+		drm_err(display->drm, "Timeout waiting for D2D Link disable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
 }
 
@@ -3089,10 +3072,9 @@ static void intel_ddi_buf_disable(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
 
-	intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
+	intel_de_rmw(display, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
 
 	if (DISPLAY_VER(display) >= 14)
 		intel_wait_ddi_buf_idle(display, port);
@@ -3100,7 +3082,7 @@ static void intel_ddi_buf_disable(struct intel_encoder *encoder,
 	mtl_ddi_disable_d2d(encoder);
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
-		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+		intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
 			     DP_TP_CTL_ENABLE, 0);
 	}
 
@@ -3118,7 +3100,6 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 				      const struct drm_connector_state *old_conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_dp *intel_dp = &dig_port->dp;
 	intel_wakeref_t wakeref;
@@ -3135,12 +3116,12 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	 */
 	intel_dp_set_power(intel_dp, DP_SET_POWER_D3);
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		if (is_mst || intel_dp_is_uhbr(old_crtc_state)) {
 			enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
-			intel_de_rmw(dev_priv,
-				     TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
+			intel_de_rmw(display,
+				     TRANS_DDI_FUNC_CTL(display, cpu_transcoder),
 				     TGL_TRANS_DDI_PORT_MASK | TRANS_DDI_MODE_SELECT_MASK,
 				     0);
 		}
@@ -3160,7 +3141,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	 * Configure Transcoder Clock select to direct no clock to the
 	 * transcoder"
 	 */
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		intel_ddi_disable_transcoder_clock(old_crtc_state);
 
 	intel_pps_vdd_on(intel_dp);
@@ -3176,8 +3157,8 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	intel_ddi_disable_clock(encoder);
 
 	/* De-select Thunderbolt */
-	if (DISPLAY_VER(dev_priv) >= 14)
-		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, encoder->port),
+	if (DISPLAY_VER(display) >= 14)
+		intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, encoder->port),
 			     XELPDP_PORT_BUF_IO_SELECT_TBT, 0);
 }
 
@@ -3187,7 +3168,6 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 					const struct drm_connector_state *old_conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
 	intel_wakeref_t wakeref;
@@ -3195,12 +3175,12 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 	dig_port->set_infoframes(encoder, false,
 				 old_crtc_state, old_conn_state);
 
-	if (DISPLAY_VER(dev_priv) < 12)
+	if (DISPLAY_VER(display) < 12)
 		intel_ddi_disable_transcoder_clock(old_crtc_state);
 
 	intel_ddi_buf_disable(encoder, old_crtc_state);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		intel_ddi_disable_transcoder_clock(old_crtc_state);
 
 	wakeref = fetch_and_zero(&dig_port->ddi_io_wakeref);
@@ -3220,7 +3200,6 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 					       const struct drm_connector_state *old_conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_crtc *pipe_crtc;
 	bool is_hdmi = intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI);
@@ -3257,7 +3236,7 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 
 		intel_dsc_disable(old_pipe_crtc_state);
 
-		if (DISPLAY_VER(dev_priv) >= 9)
+		if (DISPLAY_VER(display) >= 9)
 			skl_scaler_disable(old_pipe_crtc_state);
 		else
 			ilk_pfit_disable(old_pipe_crtc_state);
@@ -3359,12 +3338,12 @@ static void intel_ddi_enable_dp(struct intel_atomic_state *state,
 				const struct intel_crtc_state *crtc_state,
 				const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum port port = encoder->port;
 
-	if (port == PORT_A && DISPLAY_VER(dev_priv) < 9)
+	if (port == PORT_A && DISPLAY_VER(display) < 9)
 		intel_dp_stop_link_train(intel_dp, crtc_state);
 
 	drm_connector_update_privacy_screen(conn_state);
@@ -3401,7 +3380,6 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 				  const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_connector *connector = conn_state->connector;
 	enum port port = encoder->port;
@@ -3410,11 +3388,11 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
 					       crtc_state->hdmi_high_tmds_clock_ratio,
 					       crtc_state->hdmi_scrambling))
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "[CONNECTOR:%d:%s] Failed to configure sink scrambling/TMDS bit clock ratio\n",
 			    connector->base.id, connector->name);
 
-	if (has_buf_trans_select(dev_priv))
+	if (has_buf_trans_select(display))
 		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state);
 
 	/* e. Enable D2D Link for C10/C20 Phy */
@@ -3423,7 +3401,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	encoder->set_signal_levels(encoder, crtc_state);
 
 	/* Display WA #1143: skl,kbl,cfl */
-	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) {
+	if (DISPLAY_VER(display) == 9 && !display->platform.broxton) {
 		/*
 		 * For some reason these chicken bits have been
 		 * stuffed into a transcoder register, event though
@@ -3433,7 +3411,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 		i915_reg_t reg = gen9_chicken_trans_reg_by_port(display, port);
 		u32 val;
 
-		val = intel_de_read(dev_priv, reg);
+		val = intel_de_read(display, reg);
 
 		if (port == PORT_E)
 			val |= DDIE_TRAINING_OVERRIDE_ENABLE |
@@ -3442,8 +3420,8 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 			val |= DDI_TRAINING_OVERRIDE_ENABLE |
 				DDI_TRAINING_OVERRIDE_VALUE;
 
-		intel_de_write(dev_priv, reg, val);
-		intel_de_posting_read(dev_priv, reg);
+		intel_de_write(display, reg, val);
+		intel_de_posting_read(display, reg);
 
 		udelay(1);
 
@@ -3454,7 +3432,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 			val &= ~(DDI_TRAINING_OVERRIDE_ENABLE |
 				 DDI_TRAINING_OVERRIDE_VALUE);
 
-		intel_de_write(dev_priv, reg, val);
+		intel_de_write(display, reg, val);
 	}
 
 	intel_ddi_power_up_lanes(encoder, crtc_state);
@@ -3475,7 +3453,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	if (dig_port->ddi_a_4_lanes)
 		buf_ctl |= DDI_A_4_LANES;
 
-	if (DISPLAY_VER(dev_priv) >= 14) {
+	if (DISPLAY_VER(display) >= 14) {
 		u32 port_buf = 0;
 
 		port_buf |= XELPDP_PORT_WIDTH(crtc_state->lane_count);
@@ -3483,15 +3461,15 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 		if (dig_port->lane_reversal)
 			port_buf |= XELPDP_PORT_REVERSAL;
 
-		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, port),
+		intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, port),
 			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
 
 		buf_ctl |= DDI_PORT_WIDTH(crtc_state->lane_count);
 
-		if (DISPLAY_VER(dev_priv) >= 20)
+		if (DISPLAY_VER(display) >= 20)
 			buf_ctl |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
-	} else if (IS_ALDERLAKE_P(dev_priv) && intel_encoder_is_tc(encoder)) {
-		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
+	} else if (display->platform.alderlake_p && intel_encoder_is_tc(encoder)) {
+		drm_WARN_ON(display->drm, !intel_tc_port_in_legacy_mode(dig_port));
 		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
 
@@ -3584,12 +3562,12 @@ static void intel_ddi_disable_hdmi(struct intel_atomic_state *state,
 				   const struct intel_crtc_state *old_crtc_state,
 				   const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_connector *connector = old_conn_state->connector;
 
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
 					       false, false))
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CONNECTOR:%d:%s] Failed to reset sink scrambling/TMDS bit clock ratio\n",
 			    connector->base.id, connector->name);
 }
@@ -3653,16 +3631,16 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 				  struct intel_encoder *encoder,
 				  struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
 
 	/* FIXME: Add MTL pll_mgr */
-	if (DISPLAY_VER(i915) >= 14 || !intel_encoder_is_tc(encoder))
+	if (DISPLAY_VER(display) >= 14 || !intel_encoder_is_tc(encoder))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
+	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
 					 intel_crtc_joined_pipe_mask(crtc_state))
 		intel_update_active_dpll(state, pipe_crtc, encoder);
 }
@@ -3678,7 +3656,7 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 			 const struct intel_crtc_state *crtc_state,
 			 const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_tc_port = intel_encoder_is_tc(encoder);
 
@@ -3697,7 +3675,7 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 		 * Type-C ports.  Skip this step for TBT.
 		 */
 		intel_tc_port_set_fia_lane_count(dig_port, crtc_state->lane_count);
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	else if (display->platform.geminilake || display->platform.broxton)
 		bxt_dpio_phy_set_lane_optim_mask(encoder,
 						 crtc_state->lane_lat_optim_mask);
 }
@@ -3765,10 +3743,9 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u32 dp_tp_ctl;
 
-	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
+	dp_tp_ctl = intel_de_read(display, dp_tp_ctl_reg(encoder, crtc_state));
 
 	drm_WARN_ON(display->drm, dp_tp_ctl & DP_TP_CTL_ENABLE);
 
@@ -3781,10 +3758,10 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 		if (crtc_state->enhanced_framing)
 			dp_tp_ctl |= DP_TP_CTL_ENHANCED_FRAME_ENABLE;
 	}
-	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
-	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
+	intel_de_write(display, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
+	intel_de_posting_read(display, dp_tp_ctl_reg(encoder, crtc_state));
 
-	if (IS_ALDERLAKE_P(dev_priv) &&
+	if (display->platform.alderlake_p &&
 	    (intel_tc_port_in_dp_alt_mode(dig_port) || intel_tc_port_in_legacy_mode(dig_port)))
 		adlp_tbt_to_dp_alt_switch_wa(encoder);
 
@@ -3796,11 +3773,11 @@ static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
 				     const struct intel_crtc_state *crtc_state,
 				     u8 dp_train_pat)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u32 temp;
 
-	temp = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
+	temp = intel_de_read(display, dp_tp_ctl_reg(encoder, crtc_state));
 
 	temp &= ~DP_TP_CTL_LINK_TRAIN_MASK;
 	switch (intel_dp_training_pattern_symbol(dp_train_pat)) {
@@ -3821,17 +3798,17 @@ static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
 		break;
 	}
 
-	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), temp);
+	intel_de_write(display, dp_tp_ctl_reg(encoder, crtc_state), temp);
 }
 
 static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 					  const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
 
-	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
 		     DP_TP_CTL_LINK_TRAIN_MASK, DP_TP_CTL_LINK_TRAIN_IDLE);
 
 	/*
@@ -3841,28 +3818,26 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 	 * In this case there is requirement to wait for a minimum number of
 	 * idle patterns to be sent.
 	 */
-	if (port == PORT_A && DISPLAY_VER(dev_priv) < 12)
+	if (port == PORT_A && DISPLAY_VER(display) < 12)
 		return;
 
-	if (intel_de_wait_for_set(dev_priv,
+	if (intel_de_wait_for_set(display,
 				  dp_tp_status_reg(encoder, crtc_state),
 				  DP_TP_STATUS_IDLE_DONE, 2))
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Timed out waiting for DP idle patterns\n");
 }
 
-static bool intel_ddi_is_audio_enabled(struct drm_i915_private *dev_priv,
+static bool intel_ddi_is_audio_enabled(struct intel_display *display,
 				       enum transcoder cpu_transcoder)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	if (cpu_transcoder == TRANSCODER_EDP)
 		return false;
 
 	if (!intel_display_power_is_enabled(display, POWER_DOMAIN_AUDIO_MMIO))
 		return false;
 
-	return intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD) &
+	return intel_de_read(display, HSW_AUD_PIN_ELD_CP_VLD) &
 		AUDIO_OUTPUT_ENABLE(cpu_transcoder);
 }
 
@@ -3892,34 +3867,34 @@ static int icl_ddi_min_voltage_level(const struct intel_crtc_state *crtc_state)
 
 void intel_ddi_compute_min_voltage_level(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		crtc_state->min_voltage_level = icl_ddi_min_voltage_level(crtc_state);
-	else if (DISPLAY_VER(dev_priv) >= 12)
+	else if (DISPLAY_VER(display) >= 12)
 		crtc_state->min_voltage_level = tgl_ddi_min_voltage_level(crtc_state);
-	else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
+	else if (display->platform.jasperlake || display->platform.elkhartlake)
 		crtc_state->min_voltage_level = jsl_ddi_min_voltage_level(crtc_state);
-	else if (DISPLAY_VER(dev_priv) >= 11)
+	else if (DISPLAY_VER(display) >= 11)
 		crtc_state->min_voltage_level = icl_ddi_min_voltage_level(crtc_state);
 }
 
-static enum transcoder bdw_transcoder_master_readout(struct drm_i915_private *dev_priv,
+static enum transcoder bdw_transcoder_master_readout(struct intel_display *display,
 						     enum transcoder cpu_transcoder)
 {
 	u32 master_select;
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
-		u32 ctl2 = intel_de_read(dev_priv,
-					 TRANS_DDI_FUNC_CTL2(dev_priv, cpu_transcoder));
+	if (DISPLAY_VER(display) >= 11) {
+		u32 ctl2 = intel_de_read(display,
+					 TRANS_DDI_FUNC_CTL2(display, cpu_transcoder));
 
 		if ((ctl2 & PORT_SYNC_MODE_ENABLE) == 0)
 			return INVALID_TRANSCODER;
 
 		master_select = REG_FIELD_GET(PORT_SYNC_MODE_MASTER_SELECT_MASK, ctl2);
 	} else {
-		u32 ctl = intel_de_read(dev_priv,
-					TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
+		u32 ctl = intel_de_read(display,
+					TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
 
 		if ((ctl & TRANS_DDI_PORT_SYNC_ENABLE) == 0)
 			return INVALID_TRANSCODER;
@@ -3936,15 +3911,14 @@ static enum transcoder bdw_transcoder_master_readout(struct drm_i915_private *de
 static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	u32 transcoders = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
 	enum transcoder cpu_transcoder;
 
 	crtc_state->master_transcoder =
-		bdw_transcoder_master_readout(dev_priv, crtc_state->cpu_transcoder);
+		bdw_transcoder_master_readout(display, crtc_state->cpu_transcoder);
 
-	for_each_cpu_transcoder_masked(dev_priv, cpu_transcoder, transcoders) {
+	for_each_cpu_transcoder_masked(display, cpu_transcoder, transcoders) {
 		enum intel_display_power_domain power_domain;
 		intel_wakeref_t trans_wakeref;
 
@@ -3955,14 +3929,14 @@ static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
 		if (!trans_wakeref)
 			continue;
 
-		if (bdw_transcoder_master_readout(dev_priv, cpu_transcoder) ==
+		if (bdw_transcoder_master_readout(display, cpu_transcoder) ==
 		    crtc_state->cpu_transcoder)
 			crtc_state->sync_mode_slaves_mask |= BIT(cpu_transcoder);
 
 		intel_display_power_put(display, power_domain, trans_wakeref);
 	}
 
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(display->drm,
 		    crtc_state->master_transcoder != INVALID_TRANSCODER &&
 		    crtc_state->sync_mode_slaves_mask);
 }
@@ -4085,11 +4059,10 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
 	u32 ddi_func_ctl, ddi_mode, flags = 0;
 
-	ddi_func_ctl = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
+	ddi_func_ctl = intel_de_read(display, TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
 	if (ddi_func_ctl & TRANS_DDI_PHSYNC)
 		flags |= DRM_MODE_FLAG_PHSYNC;
 	else
@@ -4152,11 +4125,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 static void intel_ddi_get_config(struct intel_encoder *encoder,
 				 struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
 
 	/* XXX: DSI transcoder paranoia */
-	if (drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder)))
+	if (drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder)))
 		return;
 
 	intel_ddi_read_func_ctl(encoder, pipe_config);
@@ -4164,14 +4137,14 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 	intel_ddi_mso_get_config(encoder, pipe_config);
 
 	pipe_config->has_audio =
-		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
+		intel_ddi_is_audio_enabled(display, cpu_transcoder);
 
 	if (encoder->type == INTEL_OUTPUT_EDP)
 		intel_edp_fixup_vbt_bpp(encoder, pipe_config->pipe_bpp);
 
 	ddi_dotclock_get(pipe_config);
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	if (display->platform.geminilake || display->platform.broxton)
 		pipe_config->lane_lat_optim_mask =
 			bxt_dpio_phy_get_lane_lat_optim_mask(encoder);
 
@@ -4192,7 +4165,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 			     HDMI_INFOFRAME_TYPE_DRM,
 			     &pipe_config->infoframes.drm);
 
-	if (DISPLAY_VER(dev_priv) >= 8)
+	if (DISPLAY_VER(display) >= 8)
 		bdw_get_trans_port_sync_config(pipe_config);
 
 	intel_psr_get_config(encoder, pipe_config);
@@ -4285,10 +4258,10 @@ static enum icl_port_dpll_id
 icl_ddi_tc_port_pll_type(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 
-	if (drm_WARN_ON(&i915->drm, !pll))
+	if (drm_WARN_ON(display->drm, !pll))
 		return ICL_PORT_DPLL_DEFAULT;
 
 	if (icl_ddi_tc_pll_is_tbt(pll))
@@ -4382,11 +4355,11 @@ static void intel_ddi_sync_state(struct intel_encoder *encoder,
 static bool intel_ddi_initial_fastset_check(struct intel_encoder *encoder,
 					    struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	bool fastset = true;
 
 	if (intel_encoder_is_tc(encoder)) {
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compute TC port DPLLs\n",
+		drm_dbg_kms(display->drm, "[ENCODER:%d:%s] Forcing full modeset to compute TC port DPLLs\n",
 			    encoder->base.base.id, encoder->base.name);
 		crtc_state->uapi.mode_changed = true;
 		fastset = false;
@@ -4421,12 +4394,12 @@ static int intel_ddi_compute_config(struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config,
 				    struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
 	int ret;
 
-	if (HAS_TRANSCODER(dev_priv, TRANSCODER_EDP) && port == PORT_A)
+	if (HAS_TRANSCODER(display, TRANSCODER_EDP) && port == PORT_A)
 		pipe_config->cpu_transcoder = TRANSCODER_EDP;
 
 	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_HDMI)) {
@@ -4441,13 +4414,13 @@ static int intel_ddi_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	if (IS_HASWELL(dev_priv) && crtc->pipe == PIPE_A &&
+	if (display->platform.haswell && crtc->pipe == PIPE_A &&
 	    pipe_config->cpu_transcoder == TRANSCODER_EDP)
 		pipe_config->pch_pfit.force_thru =
 			pipe_config->pch_pfit.enabled ||
 			pipe_config->crc_enabled;
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	if (display->platform.geminilake || display->platform.broxton)
 		pipe_config->lane_lat_optim_mask =
 			bxt_dpio_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
 
@@ -4498,9 +4471,9 @@ static u8
 intel_ddi_port_sync_transcoders(const struct intel_crtc_state *ref_crtc_state,
 				int tile_group_id)
 {
+	struct intel_display *display = to_intel_display(ref_crtc_state);
 	struct drm_connector *connector;
 	const struct drm_connector_state *conn_state;
-	struct drm_i915_private *dev_priv = to_i915(ref_crtc_state->uapi.crtc->dev);
 	struct intel_atomic_state *state =
 		to_intel_atomic_state(ref_crtc_state->uapi.state);
 	u8 transcoders = 0;
@@ -4510,7 +4483,7 @@ intel_ddi_port_sync_transcoders(const struct intel_crtc_state *ref_crtc_state,
 	 * We don't enable port sync on BDW due to missing w/as and
 	 * due to not having adjusted the modeset sequence appropriately.
 	 */
-	if (DISPLAY_VER(dev_priv) < 9)
+	if (DISPLAY_VER(display) < 9)
 		return 0;
 
 	if (!intel_crtc_has_type(ref_crtc_state, INTEL_OUTPUT_DP))
@@ -4542,11 +4515,11 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 					 struct intel_crtc_state *crtc_state,
 					 struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_connector *connector = conn_state->connector;
 	u8 port_sync_transcoders = 0;
 
-	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] [CRTC:%d:%s]\n",
+	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] [CRTC:%d:%s]\n",
 		    encoder->base.base.id, encoder->base.name,
 		    crtc_state->uapi.crtc->base.id, crtc_state->uapi.crtc->name);
 
@@ -4618,7 +4591,7 @@ static const struct drm_encoder_funcs intel_ddi_funcs = {
 
 static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_connector *connector;
 	enum port port = dig_port->base.port;
 
@@ -4627,7 +4600,7 @@ static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 		return -ENOMEM;
 
 	dig_port->dp.output_reg = DDI_BUF_CTL(port);
-	if (DISPLAY_VER(i915) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		dig_port->dp.prepare_link_retrain = mtl_ddi_prepare_link_retrain;
 	else
 		dig_port->dp.prepare_link_retrain = intel_ddi_prepare_link_retrain;
@@ -4643,15 +4616,14 @@ static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 	}
 
 	if (dig_port->base.type == INTEL_OUTPUT_EDP) {
-		struct drm_device *dev = dig_port->base.base.dev;
 		struct drm_privacy_screen *privacy_screen;
 
-		privacy_screen = drm_privacy_screen_get(dev->dev, NULL);
+		privacy_screen = drm_privacy_screen_get(display->drm->dev, NULL);
 		if (!IS_ERR(privacy_screen)) {
 			drm_connector_attach_privacy_screen_provider(&connector->base,
 								     privacy_screen);
 		} else if (PTR_ERR(privacy_screen) != -ENODEV) {
-			drm_warn(dev, "Error getting privacy-screen\n");
+			drm_warn(display->drm, "Error getting privacy-screen\n");
 		}
 	}
 
@@ -4662,7 +4634,6 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 				 struct drm_modeset_acquire_ctx *ctx)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_hdmi *hdmi = enc_to_intel_hdmi(encoder);
 	struct intel_connector *connector = hdmi->attached_connector;
 	struct i2c_adapter *ddc = connector->base.ddc;
@@ -4675,7 +4646,7 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 	if (connector->base.status != connector_status_connected)
 		return 0;
 
-	ret = drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
+	ret = drm_modeset_lock(&display->drm->mode_config.connection_mutex,
 			       ctx);
 	if (ret)
 		return ret;
@@ -4692,7 +4663,7 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 
 	crtc_state = to_intel_crtc_state(crtc->base.state);
 
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(display->drm,
 		    !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI));
 
 	if (!crtc_state->hw.active)
@@ -4708,7 +4679,7 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 
 	ret = drm_scdc_readb(ddc, SCDC_TMDS_CONFIG, &config);
 	if (ret < 0) {
-		drm_err(&dev_priv->drm, "[CONNECTOR:%d:%s] Failed to read TMDS config: %d\n",
+		drm_err(display->drm, "[CONNECTOR:%d:%s] Failed to read TMDS config: %d\n",
 			connector->base.base.id, connector->base.name, ret);
 		return 0;
 	}
@@ -4733,11 +4704,11 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 
 static void intel_ddi_link_check(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	/* TODO: Move checking the HDMI link state here as well. */
-	drm_WARN_ON(&i915->drm, !dig_port->dp.attached_connector);
+	drm_WARN_ON(display->drm, !dig_port->dp.attached_connector);
 
 	intel_dp_link_check(encoder);
 }
@@ -4800,26 +4771,26 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 
 static bool lpt_digital_port_connected(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit = dev_priv->display.hotplug.pch_hpd[encoder->hpd_pin];
+	struct intel_display *display = to_intel_display(encoder);
+	u32 bit = display->hotplug.pch_hpd[encoder->hpd_pin];
 
-	return intel_de_read(dev_priv, SDEISR) & bit;
+	return intel_de_read(display, SDEISR) & bit;
 }
 
 static bool hsw_digital_port_connected(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit = dev_priv->display.hotplug.hpd[encoder->hpd_pin];
+	struct intel_display *display = to_intel_display(encoder);
+	u32 bit = display->hotplug.hpd[encoder->hpd_pin];
 
-	return intel_de_read(dev_priv, DEISR) & bit;
+	return intel_de_read(display, DEISR) & bit;
 }
 
 static bool bdw_digital_port_connected(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit = dev_priv->display.hotplug.hpd[encoder->hpd_pin];
+	struct intel_display *display = to_intel_display(encoder);
+	u32 bit = display->hotplug.hpd[encoder->hpd_pin];
 
-	return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & bit;
+	return intel_de_read(display, GEN8_DE_PORT_ISR) & bit;
 }
 
 static int intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
@@ -4848,7 +4819,7 @@ static int intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
 
 static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 
 	if (dig_port->base.port != PORT_A)
 		return false;
@@ -4859,7 +4830,7 @@ static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dig_port)
 	/* Broxton/Geminilake: Bspec says that DDI_A_4_LANES is the only
 	 *                     supported configuration
 	 */
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	if (display->platform.geminilake || display->platform.broxton)
 		return true;
 
 	return false;
@@ -4868,15 +4839,15 @@ static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dig_port)
 static int
 intel_ddi_max_lanes(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	enum port port = dig_port->base.port;
 	int max_lanes = 4;
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		return max_lanes;
 
 	if (port == PORT_A || port == PORT_E) {
-		if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
+		if (intel_de_read(display, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
 			max_lanes = port == PORT_A ? 4 : 0;
 		else
 			/* Both A and E share 2 lanes */
@@ -4889,7 +4860,7 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_port)
 	 * so we use the proper lane count for our calculations.
 	 */
 	if (intel_ddi_a_force_4_lanes(dig_port)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Forcing DDI_A_4_LANES for port A\n");
 		dig_port->ddi_a_4_lanes = true;
 		max_lanes = 4;
@@ -4898,8 +4869,7 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_port)
 	return max_lanes;
 }
 
-static enum hpd_pin xelpd_hpd_pin(struct drm_i915_private *dev_priv,
-				  enum port port)
+static enum hpd_pin xelpd_hpd_pin(struct intel_display *display, enum port port)
 {
 	if (port >= PORT_D_XELPD)
 		return HPD_PORT_D + port - PORT_D_XELPD;
@@ -4909,8 +4879,7 @@ static enum hpd_pin xelpd_hpd_pin(struct drm_i915_private *dev_priv,
 		return HPD_PORT_A + port - PORT_A;
 }
 
-static enum hpd_pin dg1_hpd_pin(struct drm_i915_private *dev_priv,
-				enum port port)
+static enum hpd_pin dg1_hpd_pin(struct intel_display *display, enum port port)
 {
 	if (port >= PORT_TC1)
 		return HPD_PORT_C + port - PORT_TC1;
@@ -4918,8 +4887,7 @@ static enum hpd_pin dg1_hpd_pin(struct drm_i915_private *dev_priv,
 		return HPD_PORT_A + port - PORT_A;
 }
 
-static enum hpd_pin tgl_hpd_pin(struct drm_i915_private *dev_priv,
-				enum port port)
+static enum hpd_pin tgl_hpd_pin(struct intel_display *display, enum port port)
 {
 	if (port >= PORT_TC1)
 		return HPD_PORT_TC1 + port - PORT_TC1;
@@ -4927,11 +4895,12 @@ static enum hpd_pin tgl_hpd_pin(struct drm_i915_private *dev_priv,
 		return HPD_PORT_A + port - PORT_A;
 }
 
-static enum hpd_pin rkl_hpd_pin(struct drm_i915_private *dev_priv,
-				enum port port)
+static enum hpd_pin rkl_hpd_pin(struct intel_display *display, enum port port)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	if (HAS_PCH_TGP(dev_priv))
-		return tgl_hpd_pin(dev_priv, port);
+		return tgl_hpd_pin(display, port);
 
 	if (port >= PORT_TC1)
 		return HPD_PORT_C + port - PORT_TC1;
@@ -4939,8 +4908,7 @@ static enum hpd_pin rkl_hpd_pin(struct drm_i915_private *dev_priv,
 		return HPD_PORT_A + port - PORT_A;
 }
 
-static enum hpd_pin icl_hpd_pin(struct drm_i915_private *dev_priv,
-				enum port port)
+static enum hpd_pin icl_hpd_pin(struct intel_display *display, enum port port)
 {
 	if (port >= PORT_C)
 		return HPD_PORT_TC1 + port - PORT_C;
@@ -4948,31 +4916,34 @@ static enum hpd_pin icl_hpd_pin(struct drm_i915_private *dev_priv,
 		return HPD_PORT_A + port - PORT_A;
 }
 
-static enum hpd_pin ehl_hpd_pin(struct drm_i915_private *dev_priv,
-				enum port port)
+static enum hpd_pin ehl_hpd_pin(struct intel_display *display, enum port port)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	if (port == PORT_D)
 		return HPD_PORT_A;
 
 	if (HAS_PCH_TGP(dev_priv))
-		return icl_hpd_pin(dev_priv, port);
+		return icl_hpd_pin(display, port);
 
 	return HPD_PORT_A + port - PORT_A;
 }
 
-static enum hpd_pin skl_hpd_pin(struct drm_i915_private *dev_priv, enum port port)
+static enum hpd_pin skl_hpd_pin(struct intel_display *display, enum port port)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	if (HAS_PCH_TGP(dev_priv))
-		return icl_hpd_pin(dev_priv, port);
+		return icl_hpd_pin(display, port);
 
 	return HPD_PORT_A + port - PORT_A;
 }
 
-static bool intel_ddi_is_tc(struct drm_i915_private *i915, enum port port)
+static bool intel_ddi_is_tc(struct intel_display *display, enum port port)
 {
-	if (DISPLAY_VER(i915) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		return port >= PORT_TC1;
-	else if (DISPLAY_VER(i915) >= 11)
+	else if (DISPLAY_VER(display) >= 11)
 		return port >= PORT_C;
 	else
 		return false;
@@ -5015,21 +4986,21 @@ static void intel_ddi_tc_encoder_shutdown_complete(struct intel_encoder *encoder
 #define port_tc_name(port) ((port) - PORT_TC1 + '1')
 #define tc_port_name(tc_port) ((tc_port) - TC_PORT_1 + '1')
 
-static bool port_strap_detected(struct drm_i915_private *i915, enum port port)
+static bool port_strap_detected(struct intel_display *display, enum port port)
 {
 	/* straps not used on skl+ */
-	if (DISPLAY_VER(i915) >= 9)
+	if (DISPLAY_VER(display) >= 9)
 		return true;
 
 	switch (port) {
 	case PORT_A:
-		return intel_de_read(i915, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
+		return intel_de_read(display, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
 	case PORT_B:
-		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDIB_DETECTED;
+		return intel_de_read(display, SFUSE_STRAP) & SFUSE_STRAP_DDIB_DETECTED;
 	case PORT_C:
-		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDIC_DETECTED;
+		return intel_de_read(display, SFUSE_STRAP) & SFUSE_STRAP_DDIC_DETECTED;
 	case PORT_D:
-		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDID_DETECTED;
+		return intel_de_read(display, SFUSE_STRAP) & SFUSE_STRAP_DDID_DETECTED;
 	case PORT_E:
 		return true; /* no strap for DDI-E */
 	default:
@@ -5043,18 +5014,18 @@ static bool need_aux_ch(struct intel_encoder *encoder, bool init_dp)
 	return init_dp || intel_encoder_is_tc(encoder);
 }
 
-static bool assert_has_icl_dsi(struct drm_i915_private *i915)
+static bool assert_has_icl_dsi(struct intel_display *display)
 {
-	return !drm_WARN(&i915->drm, !IS_ALDERLAKE_P(i915) &&
-			 !IS_TIGERLAKE(i915) && DISPLAY_VER(i915) != 11,
+	return !drm_WARN(display->drm, !display->platform.alderlake_p &&
+			 !display->platform.tigerlake && DISPLAY_VER(display) != 11,
 			 "Platform does not support DSI\n");
 }
 
-static bool port_in_use(struct drm_i915_private *i915, enum port port)
+static bool port_in_use(struct intel_display *display, enum port port)
 {
 	struct intel_encoder *encoder;
 
-	for_each_intel_encoder(&i915->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		/* FIXME what about second port for dual link DSI? */
 		if (encoder->port == port)
 			return true;
@@ -5066,7 +5037,6 @@ static bool port_in_use(struct drm_i915_private *i915, enum port port)
 void intel_ddi_init(struct intel_display *display,
 		    const struct intel_bios_encoder_data *devdata)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *encoder;
 	bool init_hdmi, init_dp;
@@ -5078,8 +5048,8 @@ void intel_ddi_init(struct intel_display *display,
 	if (port == PORT_NONE)
 		return;
 
-	if (!port_strap_detected(dev_priv, port)) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (!port_strap_detected(display, port)) {
+		drm_dbg_kms(display->drm,
 			    "Port %c strap not detected\n", port_name(port));
 		return;
 	}
@@ -5087,15 +5057,15 @@ void intel_ddi_init(struct intel_display *display,
 	if (!assert_port_valid(display, port))
 		return;
 
-	if (port_in_use(dev_priv, port)) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (port_in_use(display, port)) {
+		drm_dbg_kms(display->drm,
 			    "Port %c already claimed\n", port_name(port));
 		return;
 	}
 
 	if (intel_bios_encoder_supports_dsi(devdata)) {
 		/* BXT/GLK handled elsewhere, for now at least */
-		if (!assert_has_icl_dsi(dev_priv))
+		if (!assert_has_icl_dsi(display))
 			return;
 
 		icl_dsi_init(display, devdata);
@@ -5111,7 +5081,7 @@ void intel_ddi_init(struct intel_display *display,
 	 * outputs.
 	 */
 	if (intel_hti_uses_phy(display, phy)) {
-		drm_dbg_kms(&dev_priv->drm, "PORT %c / PHY %c reserved by HTI\n",
+		drm_dbg_kms(display->drm, "PORT %c / PHY %c reserved by HTI\n",
 			    port_name(port), phy_name(phy));
 		return;
 	}
@@ -5128,20 +5098,20 @@ void intel_ddi_init(struct intel_display *display,
 		 */
 		init_dp = true;
 		init_hdmi = false;
-		drm_dbg_kms(&dev_priv->drm, "VBT says port %c has lspcon\n",
+		drm_dbg_kms(display->drm, "VBT says port %c has lspcon\n",
 			    port_name(port));
 	}
 
 	if (!init_dp && !init_hdmi) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "VBT says port %c is not DVI/HDMI/DP compatible, respect it\n",
 			    port_name(port));
 		return;
 	}
 
 	if (intel_phy_is_snps(display, phy) &&
-	    dev_priv->display.snps.phy_failed_calibration & BIT(phy)) {
-		drm_dbg_kms(&dev_priv->drm,
+	    display->snps.phy_failed_calibration & BIT(phy)) {
+		drm_dbg_kms(display->drm,
 			    "SNPS PHY %c failed to calibrate, proceeding anyway\n",
 			    phy_name(phy));
 	}
@@ -5155,26 +5125,26 @@ void intel_ddi_init(struct intel_display *display,
 	encoder = &dig_port->base;
 	encoder->devdata = devdata;
 
-	if (DISPLAY_VER(dev_priv) >= 13 && port >= PORT_D_XELPD) {
-		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
+	if (DISPLAY_VER(display) >= 13 && port >= PORT_D_XELPD) {
+		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
 				 DRM_MODE_ENCODER_TMDS,
 				 "DDI %c/PHY %c",
 				 port_name(port - PORT_D_XELPD + PORT_D),
 				 phy_name(phy));
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
+	} else if (DISPLAY_VER(display) >= 12) {
 		enum tc_port tc_port = intel_port_to_tc(display, port);
 
-		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
+		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
 				 DRM_MODE_ENCODER_TMDS,
 				 "DDI %s%c/PHY %s%c",
 				 port >= PORT_TC1 ? "TC" : "",
 				 port >= PORT_TC1 ? port_tc_name(port) : port_name(port),
 				 tc_port != TC_PORT_NONE ? "TC" : "",
 				 tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
+	} else if (DISPLAY_VER(display) >= 11) {
 		enum tc_port tc_port = intel_port_to_tc(display, port);
 
-		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
+		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
 				 DRM_MODE_ENCODER_TMDS,
 				 "DDI %c%s/PHY %s%c",
 				 port_name(port),
@@ -5182,7 +5152,7 @@ void intel_ddi_init(struct intel_display *display,
 				 tc_port != TC_PORT_NONE ? "TC" : "",
 				 tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
 	} else {
-		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
+		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
 				 DRM_MODE_ENCODER_TMDS,
 				 "DDI %c/PHY %c", port_name(port), phy_name(phy));
 	}
@@ -5218,32 +5188,32 @@ void intel_ddi_init(struct intel_display *display,
 	encoder->cloneable = 0;
 	encoder->pipe_mask = ~0;
 
-	if (DISPLAY_VER(dev_priv) >= 14) {
+	if (DISPLAY_VER(display) >= 14) {
 		encoder->enable_clock = intel_mtl_pll_enable;
 		encoder->disable_clock = intel_mtl_pll_disable;
 		encoder->port_pll_type = intel_mtl_port_pll_type;
 		encoder->get_config = mtl_ddi_get_config;
-	} else if (IS_DG2(dev_priv)) {
+	} else if (display->platform.dg2) {
 		encoder->enable_clock = intel_mpllb_enable;
 		encoder->disable_clock = intel_mpllb_disable;
 		encoder->get_config = dg2_ddi_get_config;
-	} else if (IS_ALDERLAKE_S(dev_priv)) {
+	} else if (display->platform.alderlake_s) {
 		encoder->enable_clock = adls_ddi_enable_clock;
 		encoder->disable_clock = adls_ddi_disable_clock;
 		encoder->is_clock_enabled = adls_ddi_is_clock_enabled;
 		encoder->get_config = adls_ddi_get_config;
-	} else if (IS_ROCKETLAKE(dev_priv)) {
+	} else if (display->platform.rocketlake) {
 		encoder->enable_clock = rkl_ddi_enable_clock;
 		encoder->disable_clock = rkl_ddi_disable_clock;
 		encoder->is_clock_enabled = rkl_ddi_is_clock_enabled;
 		encoder->get_config = rkl_ddi_get_config;
-	} else if (IS_DG1(dev_priv)) {
+	} else if (display->platform.dg1) {
 		encoder->enable_clock = dg1_ddi_enable_clock;
 		encoder->disable_clock = dg1_ddi_disable_clock;
 		encoder->is_clock_enabled = dg1_ddi_is_clock_enabled;
 		encoder->get_config = dg1_ddi_get_config;
-	} else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
-		if (intel_ddi_is_tc(dev_priv, port)) {
+	} else if (display->platform.jasperlake || display->platform.elkhartlake) {
+		if (intel_ddi_is_tc(display, port)) {
 			encoder->enable_clock = jsl_ddi_tc_enable_clock;
 			encoder->disable_clock = jsl_ddi_tc_disable_clock;
 			encoder->is_clock_enabled = jsl_ddi_tc_is_clock_enabled;
@@ -5255,8 +5225,8 @@ void intel_ddi_init(struct intel_display *display,
 			encoder->is_clock_enabled = icl_ddi_combo_is_clock_enabled;
 			encoder->get_config = icl_ddi_combo_get_config;
 		}
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
-		if (intel_ddi_is_tc(dev_priv, port)) {
+	} else if (DISPLAY_VER(display) >= 11) {
+		if (intel_ddi_is_tc(display, port)) {
 			encoder->enable_clock = icl_ddi_tc_enable_clock;
 			encoder->disable_clock = icl_ddi_tc_disable_clock;
 			encoder->is_clock_enabled = icl_ddi_tc_is_clock_enabled;
@@ -5268,36 +5238,36 @@ void intel_ddi_init(struct intel_display *display,
 			encoder->is_clock_enabled = icl_ddi_combo_is_clock_enabled;
 			encoder->get_config = icl_ddi_combo_get_config;
 		}
-	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+	} else if (display->platform.geminilake || display->platform.broxton) {
 		/* BXT/GLK have fixed PLL->port mapping */
 		encoder->get_config = bxt_ddi_get_config;
-	} else if (DISPLAY_VER(dev_priv) == 9) {
+	} else if (DISPLAY_VER(display) == 9) {
 		encoder->enable_clock = skl_ddi_enable_clock;
 		encoder->disable_clock = skl_ddi_disable_clock;
 		encoder->is_clock_enabled = skl_ddi_is_clock_enabled;
 		encoder->get_config = skl_ddi_get_config;
-	} else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv)) {
+	} else if (display->platform.broadwell || display->platform.haswell) {
 		encoder->enable_clock = hsw_ddi_enable_clock;
 		encoder->disable_clock = hsw_ddi_disable_clock;
 		encoder->is_clock_enabled = hsw_ddi_is_clock_enabled;
 		encoder->get_config = hsw_ddi_get_config;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 14) {
+	if (DISPLAY_VER(display) >= 14) {
 		encoder->set_signal_levels = intel_cx0_phy_set_signal_levels;
-	} else if (IS_DG2(dev_priv)) {
+	} else if (display->platform.dg2) {
 		encoder->set_signal_levels = intel_snps_phy_set_signal_levels;
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
+	} else if (DISPLAY_VER(display) >= 12) {
 		if (intel_encoder_is_combo(encoder))
 			encoder->set_signal_levels = icl_combo_phy_set_signal_levels;
 		else
 			encoder->set_signal_levels = tgl_dkl_phy_set_signal_levels;
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
+	} else if (DISPLAY_VER(display) >= 11) {
 		if (intel_encoder_is_combo(encoder))
 			encoder->set_signal_levels = icl_combo_phy_set_signal_levels;
 		else
 			encoder->set_signal_levels = icl_mg_phy_set_signal_levels;
-	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+	} else if (display->platform.geminilake || display->platform.broxton) {
 		encoder->set_signal_levels = bxt_dpio_phy_set_signal_levels;
 	} else {
 		encoder->set_signal_levels = hsw_set_signal_levels;
@@ -5305,29 +5275,29 @@ void intel_ddi_init(struct intel_display *display,
 
 	intel_ddi_buf_trans_init(encoder);
 
-	if (DISPLAY_VER(dev_priv) >= 13)
-		encoder->hpd_pin = xelpd_hpd_pin(dev_priv, port);
-	else if (IS_DG1(dev_priv))
-		encoder->hpd_pin = dg1_hpd_pin(dev_priv, port);
-	else if (IS_ROCKETLAKE(dev_priv))
-		encoder->hpd_pin = rkl_hpd_pin(dev_priv, port);
-	else if (DISPLAY_VER(dev_priv) >= 12)
-		encoder->hpd_pin = tgl_hpd_pin(dev_priv, port);
-	else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
-		encoder->hpd_pin = ehl_hpd_pin(dev_priv, port);
-	else if (DISPLAY_VER(dev_priv) == 11)
-		encoder->hpd_pin = icl_hpd_pin(dev_priv, port);
-	else if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
-		encoder->hpd_pin = skl_hpd_pin(dev_priv, port);
+	if (DISPLAY_VER(display) >= 13)
+		encoder->hpd_pin = xelpd_hpd_pin(display, port);
+	else if (display->platform.dg1)
+		encoder->hpd_pin = dg1_hpd_pin(display, port);
+	else if (display->platform.rocketlake)
+		encoder->hpd_pin = rkl_hpd_pin(display, port);
+	else if (DISPLAY_VER(display) >= 12)
+		encoder->hpd_pin = tgl_hpd_pin(display, port);
+	else if (display->platform.jasperlake || display->platform.elkhartlake)
+		encoder->hpd_pin = ehl_hpd_pin(display, port);
+	else if (DISPLAY_VER(display) == 11)
+		encoder->hpd_pin = icl_hpd_pin(display, port);
+	else if (DISPLAY_VER(display) == 9 && !display->platform.broxton)
+		encoder->hpd_pin = skl_hpd_pin(display, port);
 	else
 		encoder->hpd_pin = intel_hpd_pin_default(port);
 
-	ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+	ddi_buf_ctl = intel_de_read(display, DDI_BUF_CTL(port));
 
 	dig_port->lane_reversal = intel_bios_encoder_lane_reversal(devdata) ||
 		ddi_buf_ctl & DDI_BUF_PORT_REVERSAL;
 
-	dig_port->ddi_a_4_lanes = DISPLAY_VER(dev_priv) < 11 && ddi_buf_ctl & DDI_A_4_LANES;
+	dig_port->ddi_a_4_lanes = DISPLAY_VER(display) < 11 && ddi_buf_ctl & DDI_A_4_LANES;
 
 	dig_port->dp.output_reg = INVALID_MMIO_REG;
 	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
@@ -5346,7 +5316,7 @@ void intel_ddi_init(struct intel_display *display,
 		if (!is_legacy && init_hdmi) {
 			is_legacy = !init_dp;
 
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "VBT says port %c is non-legacy TC and has HDMI (with DP: %s), assume it's %s\n",
 				    port_name(port),
 				    str_yes_no(init_dp),
@@ -5363,24 +5333,24 @@ void intel_ddi_init(struct intel_display *display,
 			goto err;
 	}
 
-	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
+	drm_WARN_ON(display->drm, port > PORT_I);
 	dig_port->ddi_io_power_domain = intel_display_power_ddi_io_domain(display, port);
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(display) >= 11) {
 		if (intel_encoder_is_tc(encoder))
 			dig_port->connected = intel_tc_port_connected;
 		else
 			dig_port->connected = lpt_digital_port_connected;
-	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+	} else if (display->platform.geminilake || display->platform.broxton) {
 		dig_port->connected = bdw_digital_port_connected;
-	} else if (DISPLAY_VER(dev_priv) == 9) {
+	} else if (DISPLAY_VER(display) == 9) {
 		dig_port->connected = lpt_digital_port_connected;
-	} else if (IS_BROADWELL(dev_priv)) {
+	} else if (display->platform.broadwell) {
 		if (port == PORT_A)
 			dig_port->connected = bdw_digital_port_connected;
 		else
 			dig_port->connected = lpt_digital_port_connected;
-	} else if (IS_HASWELL(dev_priv)) {
+	} else if (display->platform.haswell) {
 		if (port == PORT_A)
 			dig_port->connected = hsw_digital_port_connected;
 		else
@@ -5396,7 +5366,7 @@ void intel_ddi_init(struct intel_display *display,
 		dig_port->hpd_pulse = intel_dp_hpd_pulse;
 
 		if (dig_port->dp.mso_link_count)
-			encoder->pipe_mask = intel_ddi_splitter_pipe_mask(dev_priv);
+			encoder->pipe_mask = intel_ddi_splitter_pipe_mask(display);
 	}
 
 	/*
-- 
2.39.5

