Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EE38814DE
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 16:48:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D02A810F024;
	Wed, 20 Mar 2024 15:48:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A8z4YO6C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD9C010F024
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710949714; x=1742485714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eiuCrhSHWQnVgI+Zrb3VGA1cwRaLEeZMl0l+m2tAl7Y=;
 b=A8z4YO6CxDtQhIrWB4TPuJEwDSCihmzdXjiNAQteDqIMTZHeyzok0fkd
 e9iYSAtD2gUj/o1pMjwxW1CASbhaEvBER3IyfkE0UXnN24/2tm07Df4Tt
 UcqHtFKI0nFj0DpXBaFlEZ42L7qU4yt5eLgB1AKtVP4GucLbIhiMjo0wl
 Usv+fcL0wEynbnh3V2Mx5RBe4Y0Vua99EsY3bdTcCJfVEiHx/X7tiUrz9
 oIQ+sQSJsADEtY38biTAAqYk/F1Dj2hxIvWCvQxmh/QnD538RoxfrbzqW
 Q7YzvN368176HeNJi+yK561iho/a2Ltr1b9vNpuFSSuNq1dNUXbzaSVvV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="5728631"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="5728631"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="37308509"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.133])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [CI 5/7] drm/i915/display: use intel_encoder_is/to_* functions
Date: Wed, 20 Mar 2024 17:48:02 +0200
Message-Id: <ce8d116fcdd7662fa0a0817200a8e6fda313e496.1710949619.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1710949619.git.jani.nikula@intel.com>
References: <cover.1710949619.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Wherever possible, replace the port/phy based functions with the encoder
based functions:

intel_is_c10phy()	-> intel_encoder_is_c10phy()
intel_phy_is_combo()	-> intel_encoder_is_combo()
intel_phy_is_tc()	-> intel_encoder_is_tc()
intel_port_to_phy()	-> intel_encoder_to_phy()
intel_port_to_tc()	-> intel_encoder_to_tc()

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  36 ++----
 drivers/gpu/drm/i915/display/intel_ddi.c      | 116 +++++++-----------
 .../drm/i915/display/intel_ddi_buf_trans.c    |  14 +--
 .../i915/display/intel_display_power_well.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  15 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  22 ++--
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  38 +++---
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  14 +--
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  12 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |  33 ++---
 10 files changed, 110 insertions(+), 192 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f0ae2fe70c41..f893db353f91 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -423,7 +423,6 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_ddi_buf_trans *trans;
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
 	u8 owned_lane_mask;
 	intel_wakeref_t wakeref;
 	int n_entries, ln;
@@ -442,7 +441,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 		return;
 	}
 
-	if (intel_is_c10phy(i915, phy)) {
+	if (intel_encoder_is_c10phy(encoder)) {
 		intel_cx0_rmw(i915, encoder->port, owned_lane_mask, PHY_C10_VDR_CONTROL(1),
 			      0, C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
 		intel_cx0_rmw(i915, encoder->port, owned_lane_mask, PHY_C10_VDR_CMN(3),
@@ -483,7 +482,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 		      0, PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
 		      MB_WRITE_COMMITTED);
 
-	if (intel_is_c10phy(i915, phy))
+	if (intel_encoder_is_c10phy(encoder))
 		intel_cx0_rmw(i915, encoder->port, owned_lane_mask, PHY_C10_VDR_CONTROL(1),
 			      0, C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
 
@@ -2046,10 +2045,8 @@ static int intel_c20_phy_check_hdmi_link_rate(int clock)
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock)
 {
 	struct intel_digital_port *dig_port = hdmi_to_dig_port(hdmi);
-	struct drm_i915_private *i915 = intel_hdmi_to_i915(hdmi);
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 
-	if (intel_is_c10phy(i915, phy))
+	if (intel_encoder_is_c10phy(&dig_port->base))
 		return intel_c10_phy_check_hdmi_link_rate(clock);
 	return intel_c20_phy_check_hdmi_link_rate(clock);
 }
@@ -2097,10 +2094,7 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-
-	if (intel_is_c10phy(i915, phy))
+	if (intel_encoder_is_c10phy(encoder))
 		return intel_c10pll_calc_state(crtc_state, encoder);
 	return intel_c20pll_calc_state(crtc_state, encoder);
 }
@@ -2652,7 +2646,7 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
 	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(i915, encoder);
 	enum port port = encoder->port;
 
-	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
+	if (intel_encoder_is_c10phy(encoder))
 		intel_cx0_rmw(i915, port, owned_lane_mask,
 			      PHY_C10_VDR_CONTROL(1), 0,
 			      C10_VDR_CTRL_MSGBUS_ACCESS,
@@ -2681,7 +2675,7 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
 			      MB_WRITE_COMMITTED);
 	}
 
-	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
+	if (intel_encoder_is_c10phy(encoder))
 		intel_cx0_rmw(i915, port, owned_lane_mask,
 			      PHY_C10_VDR_CONTROL(1), 0,
 			      C10_VDR_CTRL_UPDATE_CFG,
@@ -2744,7 +2738,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	 */
 
 	/* 5. Program PHY internal PLL internal registers. */
-	if (intel_is_c10phy(i915, phy))
+	if (intel_encoder_is_c10phy(encoder))
 		intel_c10_pll_program(i915, crtc_state, encoder);
 	else
 		intel_c20_pll_program(i915, crtc_state, encoder);
@@ -2902,7 +2896,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
-	bool is_c10 = intel_is_c10phy(i915, phy);
+	bool is_c10 = intel_encoder_is_c10phy(encoder);
 	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/* 1. Change owned PHY lane power to Disable state. */
@@ -3052,10 +3046,7 @@ static void intel_c10pll_state_verify(const struct intel_crtc_state *state,
 void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_cx0pll_state *pll_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-
-	if (intel_is_c10phy(i915, phy))
+	if (intel_encoder_is_c10phy(encoder))
 		intel_c10pll_readout_hw_state(encoder, &pll_state->c10);
 	else
 		intel_c20pll_readout_hw_state(encoder, &pll_state->c20);
@@ -3064,10 +3055,7 @@ void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_cx0pll_state *pll_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-
-	if (intel_is_c10phy(i915, phy))
+	if (intel_encoder_is_c10phy(encoder))
 		return intel_c10pll_calc_port_clock(encoder, &pll_state->c10);
 
 	return intel_c20pll_calc_port_clock(encoder, &pll_state->c20);
@@ -3133,7 +3121,6 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 	struct intel_cx0pll_state mpll_hw_state = {};
-	enum phy phy;
 
 	if (DISPLAY_VER(i915) < 14)
 		return;
@@ -3147,14 +3134,13 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 		return;
 
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
-	phy = intel_port_to_phy(i915, encoder->port);
 
 	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
 		return;
 
 	intel_cx0pll_readout_hw_state(encoder, &mpll_hw_state);
 
-	if (intel_is_c10phy(i915, phy))
+	if (intel_encoder_is_c10phy(encoder))
 		intel_c10pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c10);
 	else
 		intel_c20pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c20);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 82132fa1bb2c..a3d3d4942eb1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -204,7 +204,6 @@ static void intel_wait_ddi_buf_active(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
 	int timeout_us;
 	int ret;
 
@@ -219,7 +218,7 @@ static void intel_wait_ddi_buf_active(struct intel_encoder *encoder)
 	} else if (IS_DG2(dev_priv)) {
 		timeout_us = 1200;
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		if (intel_phy_is_tc(dev_priv, phy))
+		if (intel_encoder_is_tc(encoder))
 			timeout_us = 3000;
 		else
 			timeout_us = 1000;
@@ -332,7 +331,6 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
 	/* DDI_BUF_CTL_ENABLE will be set by intel_ddi_prepare_link_retrain() later */
 	intel_dp->DP = dig_port->saved_port_bits |
@@ -346,7 +344,7 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 			intel_dp->DP |= DDI_BUF_PORT_DATA_10BIT;
 	}
 
-	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
+	if (IS_ALDERLAKE_P(i915) && intel_encoder_is_tc(encoder)) {
 		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
 		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
 			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
@@ -896,7 +894,6 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
 			       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 
 	/*
 	 * ICL+ HW requires corresponding AUX IOs to be powered up for PSR with
@@ -915,7 +912,7 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
 		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
 	else if (DISPLAY_VER(i915) < 14 &&
 		 (intel_crtc_has_dp_encoder(crtc_state) ||
-		  intel_phy_is_tc(i915, phy)))
+		  intel_encoder_is_tc(&dig_port->base)))
 		return intel_aux_power_domain(dig_port);
 	else
 		return POWER_DOMAIN_INVALID;
@@ -985,7 +982,7 @@ void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	u32 val;
 
 	if (cpu_transcoder == TRANSCODER_EDP)
@@ -1114,7 +1111,7 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	const struct intel_ddi_buf_trans *trans;
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	int n_entries, ln;
 	u32 val;
 
@@ -1177,7 +1174,7 @@ static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
 					    const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	u32 val;
 	int ln;
 
@@ -1228,7 +1225,7 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
+	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	const struct intel_ddi_buf_trans *trans;
 	int n_entries, ln;
 
@@ -1329,7 +1326,7 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 					  const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
+	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	const struct intel_ddi_buf_trans *trans;
 	int n_entries, ln;
 
@@ -1527,7 +1524,7 @@ static void adls_ddi_enable_clock(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	if (drm_WARN_ON(&i915->drm, !pll))
 		return;
@@ -1541,7 +1538,7 @@ static void adls_ddi_enable_clock(struct intel_encoder *encoder,
 static void adls_ddi_disable_clock(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	_icl_ddi_disable_clock(i915, ADLS_DPCLKA_CFGCR(phy),
 			       ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
@@ -1550,7 +1547,7 @@ static void adls_ddi_disable_clock(struct intel_encoder *encoder)
 static bool adls_ddi_is_clock_enabled(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	return _icl_ddi_is_clock_enabled(i915, ADLS_DPCLKA_CFGCR(phy),
 					 ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
@@ -1559,7 +1556,7 @@ static bool adls_ddi_is_clock_enabled(struct intel_encoder *encoder)
 static struct intel_shared_dpll *adls_ddi_get_pll(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	return _icl_ddi_get_pll(i915, ADLS_DPCLKA_CFGCR(phy),
 				ADLS_DPCLKA_CFGCR_DDI_CLK_SEL_MASK(phy),
@@ -1571,7 +1568,7 @@ static void rkl_ddi_enable_clock(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	if (drm_WARN_ON(&i915->drm, !pll))
 		return;
@@ -1585,7 +1582,7 @@ static void rkl_ddi_enable_clock(struct intel_encoder *encoder,
 static void rkl_ddi_disable_clock(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	_icl_ddi_disable_clock(i915, ICL_DPCLKA_CFGCR0,
 			       RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
@@ -1594,7 +1591,7 @@ static void rkl_ddi_disable_clock(struct intel_encoder *encoder)
 static bool rkl_ddi_is_clock_enabled(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	return _icl_ddi_is_clock_enabled(i915, ICL_DPCLKA_CFGCR0,
 					 RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
@@ -1603,7 +1600,7 @@ static bool rkl_ddi_is_clock_enabled(struct intel_encoder *encoder)
 static struct intel_shared_dpll *rkl_ddi_get_pll(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	return _icl_ddi_get_pll(i915, ICL_DPCLKA_CFGCR0,
 				RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy),
@@ -1615,7 +1612,7 @@ static void dg1_ddi_enable_clock(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	if (drm_WARN_ON(&i915->drm, !pll))
 		return;
@@ -1638,7 +1635,7 @@ static void dg1_ddi_enable_clock(struct intel_encoder *encoder,
 static void dg1_ddi_disable_clock(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	_icl_ddi_disable_clock(i915, DG1_DPCLKA_CFGCR0(phy),
 			       DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
@@ -1647,7 +1644,7 @@ static void dg1_ddi_disable_clock(struct intel_encoder *encoder)
 static bool dg1_ddi_is_clock_enabled(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	return _icl_ddi_is_clock_enabled(i915, DG1_DPCLKA_CFGCR0(phy),
 					 DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
@@ -1656,7 +1653,7 @@ static bool dg1_ddi_is_clock_enabled(struct intel_encoder *encoder)
 static struct intel_shared_dpll *dg1_ddi_get_pll(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	enum intel_dpll_id id;
 	u32 val;
 
@@ -1681,7 +1678,7 @@ static void icl_ddi_combo_enable_clock(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	if (drm_WARN_ON(&i915->drm, !pll))
 		return;
@@ -1695,7 +1692,7 @@ static void icl_ddi_combo_enable_clock(struct intel_encoder *encoder,
 static void icl_ddi_combo_disable_clock(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	_icl_ddi_disable_clock(i915, ICL_DPCLKA_CFGCR0,
 			       ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
@@ -1704,7 +1701,7 @@ static void icl_ddi_combo_disable_clock(struct intel_encoder *encoder)
 static bool icl_ddi_combo_is_clock_enabled(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	return _icl_ddi_is_clock_enabled(i915, ICL_DPCLKA_CFGCR0,
 					 ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
@@ -1713,7 +1710,7 @@ static bool icl_ddi_combo_is_clock_enabled(struct intel_encoder *encoder)
 struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	return _icl_ddi_get_pll(i915, ICL_DPCLKA_CFGCR0,
 				ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy),
@@ -1768,7 +1765,7 @@ static void icl_ddi_tc_enable_clock(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
-	enum tc_port tc_port = intel_port_to_tc(i915, encoder->port);
+	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	enum port port = encoder->port;
 
 	if (drm_WARN_ON(&i915->drm, !pll))
@@ -1788,7 +1785,7 @@ static void icl_ddi_tc_enable_clock(struct intel_encoder *encoder,
 static void icl_ddi_tc_disable_clock(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum tc_port tc_port = intel_port_to_tc(i915, encoder->port);
+	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	enum port port = encoder->port;
 
 	mutex_lock(&i915->display.dpll.lock);
@@ -1804,7 +1801,7 @@ static void icl_ddi_tc_disable_clock(struct intel_encoder *encoder)
 static bool icl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum tc_port tc_port = intel_port_to_tc(i915, encoder->port);
+	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	enum port port = encoder->port;
 	u32 tmp;
 
@@ -1821,7 +1818,7 @@ static bool icl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
 static struct intel_shared_dpll *icl_ddi_tc_get_pll(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum tc_port tc_port = intel_port_to_tc(i915, encoder->port);
+	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	enum port port = encoder->port;
 	enum intel_dpll_id id;
 	u32 tmp;
@@ -2087,12 +2084,11 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 		       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
-	enum tc_port tc_port = intel_port_to_tc(dev_priv, dig_port->base.port);
-	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
+	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
 	u32 ln0, ln1, pin_assignment;
 	u8 width;
 
-	if (!intel_phy_is_tc(dev_priv, phy) ||
+	if (!intel_encoder_is_tc(&dig_port->base) ||
 	    intel_tc_port_in_tbt_alt_mode(dig_port))
 		return;
 
@@ -2328,9 +2324,9 @@ static void intel_ddi_power_up_lanes(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
-	if (intel_phy_is_combo(i915, phy)) {
+	if (intel_encoder_is_combo(encoder)) {
+		enum phy phy = intel_encoder_to_phy(encoder);
 		bool lane_reversal =
 			dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
 
@@ -3156,14 +3152,11 @@ static void intel_ddi_post_pll_disable(struct intel_atomic_state *state,
 				       const struct intel_crtc_state *old_crtc_state,
 				       const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-	bool is_tc_port = intel_phy_is_tc(i915, phy);
 
 	main_link_aux_power_domain_put(dig_port, old_crtc_state);
 
-	if (is_tc_port)
+	if (intel_encoder_is_tc(encoder))
 		intel_tc_port_put_link(dig_port);
 }
 
@@ -3264,7 +3257,6 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_connector *connector = conn_state->connector;
 	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
 	u32 buf_ctl;
 
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
@@ -3348,7 +3340,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 
 		if (DISPLAY_VER(dev_priv) >= 20)
 			buf_ctl |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
-	} else if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
+	} else if (IS_ALDERLAKE_P(dev_priv) && intel_encoder_is_tc(encoder)) {
 		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
 		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
@@ -3474,10 +3466,9 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_crtc *slave_crtc;
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
 	/* FIXME: Add MTL pll_mgr */
-	if (DISPLAY_VER(i915) >= 14 || !intel_phy_is_tc(i915, phy))
+	if (DISPLAY_VER(i915) >= 14 || !intel_encoder_is_tc(encoder))
 		return;
 
 	intel_update_active_dpll(state, crtc, encoder);
@@ -3494,8 +3485,7 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
-	bool is_tc_port = intel_phy_is_tc(dev_priv, phy);
+	bool is_tc_port = intel_encoder_is_tc(encoder);
 
 	if (is_tc_port) {
 		struct intel_crtc *master_crtc =
@@ -3521,7 +3511,7 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 static void adlp_tbt_to_dp_alt_switch_wa(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum tc_port tc_port = intel_port_to_tc(i915, encoder->port);
+	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	int ln;
 
 	for (ln = 0; ln < 2; ln++)
@@ -4145,10 +4135,7 @@ void hsw_ddi_get_config(struct intel_encoder *encoder,
 static void intel_ddi_sync_state(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-
-	if (intel_phy_is_tc(i915, phy))
+	if (intel_encoder_is_tc(encoder))
 		intel_tc_port_sanitize_mode(enc_to_dig_port(encoder),
 					    crtc_state);
 
@@ -4160,10 +4147,9 @@ static bool intel_ddi_initial_fastset_check(struct intel_encoder *encoder,
 					    struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
 	bool fastset = true;
 
-	if (intel_phy_is_tc(i915, phy)) {
+	if (intel_encoder_is_tc(encoder)) {
 		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compute TC port DPLLs\n",
 			    encoder->base.base.id, encoder->base.name);
 		crtc_state->uapi.mode_changed = true;
@@ -4349,10 +4335,9 @@ static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 
 	intel_dp_encoder_flush_work(encoder);
-	if (intel_phy_is_tc(i915, phy))
+	if (intel_encoder_is_tc(&dig_port->base))
 		intel_tc_port_cleanup(dig_port);
 	intel_display_power_flush_work(i915);
 
@@ -4363,16 +4348,14 @@ static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
 
 static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
 	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 
 	intel_dp->reset_link_params = true;
 
 	intel_pps_encoder_reset(intel_dp);
 
-	if (intel_phy_is_tc(i915, phy))
+	if (intel_encoder_is_tc(&dig_port->base))
 		intel_tc_port_init_mode(dig_port);
 }
 
@@ -4539,11 +4522,9 @@ static enum intel_hotplug_state
 intel_ddi_hotplug(struct intel_encoder *encoder,
 		  struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_dp *intel_dp = &dig_port->dp;
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-	bool is_tc = intel_phy_is_tc(i915, phy);
+	bool is_tc = intel_encoder_is_tc(encoder);
 	struct drm_modeset_acquire_ctx ctx;
 	enum intel_hotplug_state state;
 	int ret;
@@ -4825,10 +4806,7 @@ static bool port_strap_detected(struct drm_i915_private *i915, enum port port)
 
 static bool need_aux_ch(struct intel_encoder *encoder, bool init_dp)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-
-	return init_dp || intel_phy_is_tc(i915, phy);
+	return init_dp || intel_encoder_is_tc(encoder);
 }
 
 static bool assert_has_icl_dsi(struct drm_i915_private *i915)
@@ -5072,12 +5050,12 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 	} else if (IS_DG2(dev_priv)) {
 		encoder->set_signal_levels = intel_snps_phy_set_signal_levels;
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		if (intel_phy_is_combo(dev_priv, phy))
+		if (intel_encoder_is_combo(encoder))
 			encoder->set_signal_levels = icl_combo_phy_set_signal_levels;
 		else
 			encoder->set_signal_levels = tgl_dkl_phy_set_signal_levels;
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
-		if (intel_phy_is_combo(dev_priv, phy))
+		if (intel_encoder_is_combo(encoder))
 			encoder->set_signal_levels = icl_combo_phy_set_signal_levels;
 		else
 			encoder->set_signal_levels = icl_mg_phy_set_signal_levels;
@@ -5127,7 +5105,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 			goto err;
 	}
 
-	if (intel_phy_is_tc(dev_priv, phy)) {
+	if (intel_encoder_is_tc(encoder)) {
 		bool is_legacy =
 			!intel_bios_encoder_supports_typec_usb(devdata) &&
 			!intel_bios_encoder_supports_tbt(devdata);
@@ -5156,7 +5134,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 	dig_port->ddi_io_power_domain = intel_display_power_ddi_io_domain(dev_priv, port);
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
-		if (intel_phy_is_tc(dev_priv, phy))
+		if (intel_encoder_is_tc(encoder))
 			dig_port->connected = intel_tc_port_connected;
 		else
 			dig_port->connected = lpt_digital_port_connected;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index de809e2d9cac..39e0ae6734ae 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1691,14 +1691,11 @@ mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state,
 		      int *n_entries)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-
 	if (intel_crtc_has_dp_encoder(crtc_state) && crtc_state->port_clock >= 1000000)
 		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
-	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) && !(intel_is_c10phy(i915, phy)))
+	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) && !(intel_encoder_is_c10phy(encoder)))
 		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
-	else if (!intel_is_c10phy(i915, phy))
+	else if (!intel_encoder_is_c10phy(encoder))
 		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
 	else
 		return intel_get_buf_trans(&mtl_c10_trans_dp14, n_entries);
@@ -1707,14 +1704,13 @@ mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
 	if (DISPLAY_VER(i915) >= 14) {
 		encoder->get_buf_trans = mtl_get_cx0_buf_trans;
 	} else if (IS_DG2(i915)) {
 		encoder->get_buf_trans = dg2_get_snps_buf_trans;
 	} else if (IS_ALDERLAKE_P(i915)) {
-		if (intel_phy_is_combo(i915, phy))
+		if (intel_encoder_is_combo(encoder))
 			encoder->get_buf_trans = adlp_get_combo_buf_trans;
 		else
 			encoder->get_buf_trans = adlp_get_dkl_buf_trans;
@@ -1725,7 +1721,7 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 	} else if (IS_DG1(i915)) {
 		encoder->get_buf_trans = dg1_get_combo_buf_trans;
 	} else if (DISPLAY_VER(i915) >= 12) {
-		if (intel_phy_is_combo(i915, phy))
+		if (intel_encoder_is_combo(encoder))
 			encoder->get_buf_trans = tgl_get_combo_buf_trans;
 		else
 			encoder->get_buf_trans = tgl_get_dkl_buf_trans;
@@ -1734,7 +1730,7 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 			encoder->get_buf_trans = jsl_get_combo_buf_trans;
 		else if (IS_PLATFORM(i915, INTEL_ELKHARTLAKE))
 			encoder->get_buf_trans = ehl_get_combo_buf_trans;
-		else if (intel_phy_is_combo(i915, phy))
+		else if (intel_encoder_is_combo(encoder))
 			encoder->get_buf_trans = icl_get_combo_buf_trans;
 		else
 			encoder->get_buf_trans = icl_get_mg_buf_trans;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 217f82f1da84..99a03a934e30 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -251,7 +251,7 @@ static enum phy icl_aux_pw_to_phy(struct drm_i915_private *i915,
 	 * as HDMI-only and routed to a combo PHY, the encoder either won't be
 	 * present at all or it will not have an aux_ch assigned.
 	 */
-	return dig_port ? intel_port_to_phy(i915, dig_port->base.port) : PHY_NONE;
+	return dig_port ? intel_encoder_to_phy(&dig_port->base) : PHY_NONE;
 }
 
 static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index af7ca00e9bc0..e9aacc7eb5bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -443,11 +443,9 @@ static int dg2_max_source_rate(struct intel_dp *intel_dp)
 
 static int icl_max_source_rate(struct intel_dp *intel_dp)
 {
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
-	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(intel_dp))
+	if (intel_encoder_is_combo(encoder) && !intel_dp_is_edp(intel_dp))
 		return 540000;
 
 	return 810000;
@@ -463,11 +461,9 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
 
 static int mtl_max_source_rate(struct intel_dp *intel_dp)
 {
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
-	if (intel_is_c10phy(i915, phy))
+	if (intel_encoder_is_c10phy(encoder))
 		return 810000;
 
 	return 2000000;
@@ -6489,7 +6485,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	struct drm_device *dev = intel_encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum port port = intel_encoder->port;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
 	int type;
 
 	/* Initialize the work for modeset in case of link train failure */
@@ -6514,7 +6509,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		 * Currently we don't support eDP on TypeC ports, although in
 		 * theory it could work on TypeC legacy ports.
 		 */
-		drm_WARN_ON(dev, intel_phy_is_tc(dev_priv, phy));
+		drm_WARN_ON(dev, intel_encoder_is_tc(intel_encoder));
 		type = DRM_MODE_CONNECTOR_eDP;
 		intel_encoder->type = INTEL_OUTPUT_EDP;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 24a70de3f8e3..9ff6c4cc2e4b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3378,7 +3378,6 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 				struct intel_crtc *crtc,
 				struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct icl_port_dpll *port_dpll =
@@ -3397,8 +3396,7 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
-	dpll_id = icl_tc_port_to_pll_id(intel_port_to_tc(i915,
-							 encoder->port));
+	dpll_id = icl_tc_port_to_pll_id(intel_encoder_to_tc(encoder));
 	port_dpll->pll = intel_find_shared_dpll(state, crtc,
 						&port_dpll->hw_state,
 						BIT(dpll_id));
@@ -3424,15 +3422,12 @@ static int icl_compute_dplls(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc,
 			     struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-
-	if (intel_phy_is_combo(i915, phy))
+	if (intel_encoder_is_combo(encoder))
 		return icl_compute_combo_phy_dpll(state, crtc);
-	else if (intel_phy_is_tc(i915, phy))
+	else if (intel_encoder_is_tc(encoder))
 		return icl_compute_tc_phy_dplls(state, crtc);
 
-	MISSING_CASE(phy);
+	MISSING_CASE(encoder->port);
 
 	return 0;
 }
@@ -3441,15 +3436,12 @@ static int icl_get_dplls(struct intel_atomic_state *state,
 			 struct intel_crtc *crtc,
 			 struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-
-	if (intel_phy_is_combo(i915, phy))
+	if (intel_encoder_is_combo(encoder))
 		return icl_get_combo_phy_dpll(state, crtc, encoder);
-	else if (intel_phy_is_tc(i915, phy))
+	else if (intel_encoder_is_tc(encoder))
 		return icl_get_tc_phy_dplls(state, crtc, encoder);
 
-	MISSING_CASE(phy);
+	MISSING_CASE(encoder->port);
 
 	return -EINVAL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f1fc9669238f..a32cb4d25bc7 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1832,7 +1832,7 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 		      bool has_hdmi_sink)
 {
 	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
-	enum phy phy = intel_port_to_phy(dev_priv, hdmi_to_dig_port(hdmi)->base.port);
+	struct intel_encoder *encoder = &hdmi_to_dig_port(hdmi)->base;
 
 	if (clock < 25000)
 		return MODE_CLOCK_LOW;
@@ -1854,11 +1854,11 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 		return MODE_CLOCK_RANGE;
 
 	/* ICL+ combo PHY PLL can't generate 500-533.2 MHz */
-	if (intel_phy_is_combo(dev_priv, phy) && clock > 500000 && clock < 533200)
+	if (intel_encoder_is_combo(encoder) && clock > 500000 && clock < 533200)
 		return MODE_CLOCK_RANGE;
 
 	/* ICL+ TC PHY PLL can't generate 500-532.8 MHz */
-	if (intel_phy_is_tc(dev_priv, phy) && clock > 500000 && clock < 532800)
+	if (intel_encoder_is_tc(encoder) && clock > 500000 && clock < 532800)
 		return MODE_CLOCK_RANGE;
 
 	/*
@@ -2737,12 +2737,11 @@ static u8 icl_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
 
-	if (intel_phy_is_combo(dev_priv, phy))
+	if (intel_encoder_is_combo(encoder))
 		return GMBUS_PIN_1_BXT + port;
-	else if (intel_phy_is_tc(dev_priv, phy))
-		return GMBUS_PIN_9_TC1_ICP + intel_port_to_tc(dev_priv, port);
+	else if (intel_encoder_is_tc(encoder))
+		return GMBUS_PIN_9_TC1_ICP + intel_encoder_to_tc(encoder);
 
 	drm_WARN(&dev_priv->drm, 1, "Unknown port:%c\n", port_name(port));
 	return GMBUS_PIN_2_BXT;
@@ -2750,9 +2749,7 @@ static u8 icl_encoder_to_ddc_pin(struct intel_encoder *encoder)
 
 static u8 mcc_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	u8 ddc_pin;
 
 	switch (phy) {
@@ -2776,10 +2773,9 @@ static u8 mcc_encoder_to_ddc_pin(struct intel_encoder *encoder)
 static u8 rkl_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
-	WARN_ON(port == PORT_C);
+	WARN_ON(encoder->port == PORT_C);
 
 	/*
 	 * Pin mapping for RKL depends on which PCH is present.  With TGP, the
@@ -2796,10 +2792,9 @@ static u8 rkl_encoder_to_ddc_pin(struct intel_encoder *encoder)
 static u8 gen9bc_tgp_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(i915, port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
-	drm_WARN_ON(&i915->drm, port == PORT_A);
+	drm_WARN_ON(&i915->drm, encoder->port == PORT_A);
 
 	/*
 	 * Pin mapping for GEN9 BC depends on which PCH is present.  With TGP,
@@ -2815,19 +2810,14 @@ static u8 gen9bc_tgp_encoder_to_ddc_pin(struct intel_encoder *encoder)
 
 static u8 dg1_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum port port = encoder->port;
-
-	return intel_port_to_phy(dev_priv, port) + 1;
+	return intel_encoder_to_phy(encoder) + 1;
 }
 
 static u8 adls_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
-	WARN_ON(port == PORT_B || port == PORT_C);
+	WARN_ON(encoder->port == PORT_B || encoder->port == PORT_C);
 
 	/*
 	 * Pin mapping for ADL-S requires TC pins for all combo phy outputs
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 744e332fa2af..9ca981b7a12c 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -119,10 +119,11 @@ intel_pmdemand_update_phys_mask(struct drm_i915_private *i915,
 	if (!encoder)
 		return;
 
-	phy = intel_port_to_phy(i915, encoder->port);
-	if (intel_phy_is_tc(i915, phy))
+	if (intel_encoder_is_tc(encoder))
 		return;
 
+	phy = intel_encoder_to_phy(encoder);
+
 	if (set_bit)
 		pmdemand_state->active_combo_phys_mask |= BIT(phy);
 	else
@@ -222,14 +223,7 @@ static bool
 intel_pmdemand_encoder_has_tc_phy(struct drm_i915_private *i915,
 				  struct intel_encoder *encoder)
 {
-	enum phy phy;
-
-	if (!encoder)
-		return false;
-
-	phy = intel_port_to_phy(i915, encoder->port);
-
-	return intel_phy_is_tc(i915, phy);
+	return encoder && intel_encoder_is_tc(encoder);
 }
 
 static bool
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 7fc002268482..53dbcdf140b5 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -48,10 +48,10 @@ void intel_snps_phy_update_psr_power_state(struct intel_encoder *encoder,
 					   bool enable)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	u32 val;
 
-	if (!intel_phy_is_snps(i915, phy))
+	if (!intel_encoder_is_snps(encoder))
 		return;
 
 	val = REG_FIELD_PREP(SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR,
@@ -65,7 +65,7 @@ void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	const struct intel_ddi_buf_trans *trans;
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	int n_entries, ln;
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
@@ -1824,7 +1824,7 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	const struct intel_mpllb_state *pll_state = &crtc_state->mpllb_state;
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	i915_reg_t enable_reg = (phy <= PHY_D ?
 				 DG2_PLL_ENABLE(phy) : MG_PLL_ENABLE(0));
 
@@ -1881,7 +1881,7 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
 void intel_mpllb_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	i915_reg_t enable_reg = (phy <= PHY_D ?
 				 DG2_PLL_ENABLE(phy) : MG_PLL_ENABLE(0));
 
@@ -1953,7 +1953,7 @@ void intel_mpllb_readout_hw_state(struct intel_encoder *encoder,
 				  struct intel_mpllb_state *pll_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	pll_state->mpllb_cp = intel_de_read(dev_priv, SNPS_PHY_MPLLB_CP(phy));
 	pll_state->mpllb_div = intel_de_read(dev_priv, SNPS_PHY_MPLLB_DIV(phy));
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 6b374d481cd9..9887967b2ca5 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -100,11 +100,9 @@ static struct drm_i915_private *tc_to_i915(struct intel_tc_port *tc)
 static bool intel_tc_port_in_mode(struct intel_digital_port *dig_port,
 				  enum tc_port_mode mode)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 
-	return intel_phy_is_tc(i915, phy) && tc->mode == mode;
+	return intel_encoder_is_tc(&dig_port->base) && tc->mode == mode;
 }
 
 bool intel_tc_port_in_tbt_alt_mode(struct intel_digital_port *dig_port)
@@ -124,11 +122,9 @@ bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port)
 
 bool intel_tc_port_handles_hpd_glitches(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 
-	return intel_phy_is_tc(i915, phy) && !tc->legacy_port;
+	return intel_encoder_is_tc(&dig_port->base) && !tc->legacy_port;
 }
 
 /*
@@ -254,8 +250,7 @@ assert_tc_cold_blocked(struct intel_tc_port *tc)
 static enum intel_display_power_domain
 tc_port_power_domain(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
-	enum tc_port tc_port = intel_port_to_tc(i915, tc->dig_port->base.port);
+	enum tc_port tc_port = intel_encoder_to_tc(&tc->dig_port->base);
 
 	return POWER_DOMAIN_PORT_DDI_LANES_TC1 + tc_port - TC_PORT_1;
 }
@@ -302,7 +297,7 @@ u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
 static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
+	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
 	intel_wakeref_t wakeref;
 	u32 val, pin_assignment;
 
@@ -375,9 +370,8 @@ int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 
-	if (!intel_phy_is_tc(i915, phy) || tc->mode != TC_PORT_DP_ALT)
+	if (!intel_encoder_is_tc(&dig_port->base) || tc->mode != TC_PORT_DP_ALT)
 		return 4;
 
 	assert_tc_cold_blocked(tc);
@@ -458,9 +452,7 @@ static void tc_port_fixup_legacy_flag(struct intel_tc_port *tc,
 
 static void tc_phy_load_fia_params(struct intel_tc_port *tc, bool modular_fia)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
-	enum port port = tc->dig_port->base.port;
-	enum tc_port tc_port = intel_port_to_tc(i915, port);
+	enum tc_port tc_port = intel_encoder_to_tc(&tc->dig_port->base);
 
 	/*
 	 * Each Modular FIA instance houses 2 TC ports. In SOC that has more
@@ -812,7 +804,7 @@ static u32 adlp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 static bool adlp_tc_phy_is_ready(struct intel_tc_port *tc)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
-	enum tc_port tc_port = intel_port_to_tc(i915, tc->dig_port->base.port);
+	enum tc_port tc_port = intel_encoder_to_tc(&tc->dig_port->base);
 	u32 val;
 
 	assert_display_core_power_enabled(tc);
@@ -1635,10 +1627,7 @@ static bool __intel_tc_port_link_needs_reset(struct intel_tc_port *tc)
 
 bool intel_tc_port_link_needs_reset(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
-
-	if (!intel_phy_is_tc(i915, phy))
+	if (!intel_encoder_is_tc(&dig_port->base))
 		return false;
 
 	return __intel_tc_port_link_needs_reset(to_tc_port(dig_port));
@@ -1740,11 +1729,9 @@ bool intel_tc_port_link_reset(struct intel_digital_port *dig_port)
 
 void intel_tc_port_link_cancel_reset_work(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 
-	if (!intel_phy_is_tc(i915, phy))
+	if (!intel_encoder_is_tc(&dig_port->base))
 		return;
 
 	cancel_delayed_work(&tc->link_reset_work);
@@ -1861,7 +1848,7 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_tc_port *tc;
 	enum port port = dig_port->base.port;
-	enum tc_port tc_port = intel_port_to_tc(i915, port);
+	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
 
 	if (drm_WARN_ON(&i915->drm, tc_port == TC_PORT_NONE))
 		return -EINVAL;
-- 
2.39.2

