Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD13120446D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 01:28:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BD776E202;
	Mon, 22 Jun 2020 23:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 167CE6E1C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 23:28:28 +0000 (UTC)
IronPort-SDR: tD3dKbCzRYMDMmo6GM4szNnCUwTY6nFX12SGIs/TvoTD2oh2GJrXdbjgiqMaidoBG9+ezBrxya
 z9K9gAtynq2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="161983753"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="161983753"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 16:28:27 -0700
IronPort-SDR: EHz9DzDKjIFKefAUhez1e9QUyjDro5taHrnSSA4M9gnRnntdER8fOajBXvCrR8XitvA0NcAsbE
 JgFej7jJH01w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="422813869"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga004.jf.intel.com with ESMTP; 22 Jun 2020 16:28:26 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 16:28:21 -0700
Message-Id: <20200622232821.3093-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200622232821.3093-1-lucas.demarchi@intel.com>
References: <20200622232821.3093-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: prefer dig_port to
 reference intel_digital_port
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have a mix of dport, intel_dport, intel_dig_port and dig_port to
reference a intel_digital_port struct. Numbers are around

5	intel_dport
36	dport
479	intel_dig_port
352	dig_port

Since we already removed the intel_ prefix from most of our other
structs, do the same here and prefer dig_port.

v2: rename everything in i915, not just a few display sources and
reword commit message (from Matt Roper)

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 143 ++++----
 drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  |  12 +-
 .../drm/i915/display/intel_display_power.c    |   4 +-
 .../drm/i915/display/intel_display_types.h    |  40 +--
 drivers/gpu/drm/i915/display/intel_dp.c       | 338 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h       |   4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  74 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |   6 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  38 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 118 +++---
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 252 ++++++-------
 drivers/gpu/drm/i915/display/intel_hdmi.h     |   4 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_lspcon.h   |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   8 +-
 18 files changed, 530 insertions(+), 533 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 58c9f3d3e7ce..a7c20bbd09f7 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1394,10 +1394,9 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct intel_digital_port *intel_dig_port =
-		enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
-	intel_dp->DP = intel_dig_port->saved_port_bits |
+	intel_dp->DP = dig_port->saved_port_bits |
 		DDI_BUF_CTL_ENABLE | DDI_BUF_TRANS_SELECT(0);
 	intel_dp->DP |= DDI_PORT_WIDTH(intel_dp->lane_count);
 }
@@ -2072,7 +2071,7 @@ static void _skl_ddi_set_iboost(struct drm_i915_private *dev_priv,
 static void skl_ddi_set_iboost(struct intel_encoder *encoder,
 			       int level, enum intel_output_type type)
 {
-	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
 	u8 iboost;
@@ -2109,7 +2108,7 @@ static void skl_ddi_set_iboost(struct intel_encoder *encoder,
 
 	_skl_ddi_set_iboost(dev_priv, port, iboost);
 
-	if (port == PORT_A && intel_dig_port->max_lanes == 4)
+	if (port == PORT_A && dig_port->max_lanes == 4)
 		_skl_ddi_set_iboost(dev_priv, PORT_E, iboost);
 }
 
@@ -3002,15 +3001,15 @@ static void intel_ddi_clk_disable(struct intel_encoder *encoder)
 }
 
 static void
-icl_program_mg_dp_mode(struct intel_digital_port *intel_dig_port,
+icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 		       const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_dig_port->base.base.dev);
-	enum tc_port tc_port = intel_port_to_tc(dev_priv, intel_dig_port->base.port);
+	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
+	enum tc_port tc_port = intel_port_to_tc(dev_priv, dig_port->base.port);
 	u32 ln0, ln1, pin_assignment;
 	u8 width;
 
-	if (intel_dig_port->tc_mode == TC_PORT_TBT_ALT)
+	if (dig_port->tc_mode == TC_PORT_TBT_ALT)
 		return;
 
 	if (INTEL_GEN(dev_priv) >= 12) {
@@ -3029,13 +3028,13 @@ icl_program_mg_dp_mode(struct intel_digital_port *intel_dig_port,
 	ln1 &= ~(MG_DP_MODE_CFG_DP_X1_MODE | MG_DP_MODE_CFG_DP_X2_MODE);
 
 	/* DPPATC */
-	pin_assignment = intel_tc_port_get_pin_assignment_mask(intel_dig_port);
+	pin_assignment = intel_tc_port_get_pin_assignment_mask(dig_port);
 	width = crtc_state->lane_count;
 
 	switch (pin_assignment) {
 	case 0x0:
 		drm_WARN_ON(&dev_priv->drm,
-			    intel_dig_port->tc_mode != TC_PORT_LEGACY);
+			    dig_port->tc_mode != TC_PORT_LEGACY);
 		if (width == 1) {
 			ln1 |= MG_DP_MODE_CFG_DP_X1_MODE;
 		} else {
@@ -3980,10 +3979,9 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 
 static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp)
 {
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv =
-		to_i915(intel_dig_port->base.base.dev);
-	enum port port = intel_dig_port->base.port;
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
+	enum port port = dig_port->base.port;
 	u32 dp_tp_ctl, ddi_buf_ctl;
 	bool wait = false;
 
@@ -4533,42 +4531,41 @@ static const struct drm_encoder_funcs intel_ddi_funcs = {
 };
 
 static struct intel_connector *
-intel_ddi_init_dp_connector(struct intel_digital_port *intel_dig_port)
+intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	struct intel_connector *connector;
-	enum port port = intel_dig_port->base.port;
+	enum port port = dig_port->base.port;
 
 	connector = intel_connector_alloc();
 	if (!connector)
 		return NULL;
 
-	intel_dig_port->dp.output_reg = DDI_BUF_CTL(port);
-	intel_dig_port->dp.prepare_link_retrain =
-		intel_ddi_prepare_link_retrain;
-	intel_dig_port->dp.set_link_train = intel_ddi_set_link_train;
-	intel_dig_port->dp.set_idle_link_train = intel_ddi_set_idle_link_train;
+	dig_port->dp.output_reg = DDI_BUF_CTL(port);
+	dig_port->dp.prepare_link_retrain = intel_ddi_prepare_link_retrain;
+	dig_port->dp.set_link_train = intel_ddi_set_link_train;
+	dig_port->dp.set_idle_link_train = intel_ddi_set_idle_link_train;
 
 	if (INTEL_GEN(dev_priv) >= 12)
-		intel_dig_port->dp.set_signal_levels = tgl_set_signal_levels;
+		dig_port->dp.set_signal_levels = tgl_set_signal_levels;
 	else if (INTEL_GEN(dev_priv) >= 11)
-		intel_dig_port->dp.set_signal_levels = icl_set_signal_levels;
+		dig_port->dp.set_signal_levels = icl_set_signal_levels;
 	else if (IS_CANNONLAKE(dev_priv))
-		intel_dig_port->dp.set_signal_levels = cnl_set_signal_levels;
+		dig_port->dp.set_signal_levels = cnl_set_signal_levels;
 	else if (IS_GEN9_LP(dev_priv))
-		intel_dig_port->dp.set_signal_levels = bxt_set_signal_levels;
+		dig_port->dp.set_signal_levels = bxt_set_signal_levels;
 	else
-		intel_dig_port->dp.set_signal_levels = hsw_set_signal_levels;
+		dig_port->dp.set_signal_levels = hsw_set_signal_levels;
 
-	intel_dig_port->dp.voltage_max = intel_ddi_dp_voltage_max;
-	intel_dig_port->dp.preemph_max = intel_ddi_dp_preemph_max;
+	dig_port->dp.voltage_max = intel_ddi_dp_voltage_max;
+	dig_port->dp.preemph_max = intel_ddi_dp_preemph_max;
 
 	if (INTEL_GEN(dev_priv) < 12) {
-		intel_dig_port->dp.regs.dp_tp_ctl = DP_TP_CTL(port);
-		intel_dig_port->dp.regs.dp_tp_status = DP_TP_STATUS(port);
+		dig_port->dp.regs.dp_tp_ctl = DP_TP_CTL(port);
+		dig_port->dp.regs.dp_tp_status = DP_TP_STATUS(port);
 	}
 
-	if (!intel_dp_init_connector(intel_dig_port, connector)) {
+	if (!intel_dp_init_connector(dig_port, connector)) {
 		kfree(connector);
 		return NULL;
 	}
@@ -4767,29 +4764,29 @@ static bool bdw_digital_port_connected(struct intel_encoder *encoder)
 }
 
 static struct intel_connector *
-intel_ddi_init_hdmi_connector(struct intel_digital_port *intel_dig_port)
+intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
 {
 	struct intel_connector *connector;
-	enum port port = intel_dig_port->base.port;
+	enum port port = dig_port->base.port;
 
 	connector = intel_connector_alloc();
 	if (!connector)
 		return NULL;
 
-	intel_dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
-	intel_hdmi_init_connector(intel_dig_port, connector);
+	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
+	intel_hdmi_init_connector(dig_port, connector);
 
 	return connector;
 }
 
-static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dport)
+static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *dev_priv = to_i915(dport->base.base.dev);
+	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 
-	if (dport->base.port != PORT_A)
+	if (dig_port->base.port != PORT_A)
 		return false;
 
-	if (dport->saved_port_bits & DDI_A_4_LANES)
+	if (dig_port->saved_port_bits & DDI_A_4_LANES)
 		return false;
 
 	/* Broxton/Geminilake: Bspec says that DDI_A_4_LANES is the only
@@ -4811,10 +4808,10 @@ static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dport)
 }
 
 static int
-intel_ddi_max_lanes(struct intel_digital_port *intel_dport)
+intel_ddi_max_lanes(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_dport->base.base.dev);
-	enum port port = intel_dport->base.port;
+	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
+	enum port port = dig_port->base.port;
 	int max_lanes = 4;
 
 	if (INTEL_GEN(dev_priv) >= 11)
@@ -4833,10 +4830,10 @@ intel_ddi_max_lanes(struct intel_digital_port *intel_dport)
 	 * wasn't lit up at boot.  Force this bit set when needed
 	 * so we use the proper lane count for our calculations.
 	 */
-	if (intel_ddi_a_force_4_lanes(intel_dport)) {
+	if (intel_ddi_a_force_4_lanes(dig_port)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Forcing DDI_A_4_LANES for port A\n");
-		intel_dport->saved_port_bits |= DDI_A_4_LANES;
+		dig_port->saved_port_bits |= DDI_A_4_LANES;
 		max_lanes = 4;
 	}
 
@@ -4845,7 +4842,7 @@ intel_ddi_max_lanes(struct intel_digital_port *intel_dport)
 
 void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 {
-	struct intel_digital_port *intel_dig_port;
+	struct intel_digital_port *dig_port;
 	struct intel_encoder *encoder;
 	bool init_hdmi, init_dp, init_lspcon = false;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
@@ -4874,11 +4871,11 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		return;
 	}
 
-	intel_dig_port = kzalloc(sizeof(*intel_dig_port), GFP_KERNEL);
-	if (!intel_dig_port)
+	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
+	if (!dig_port)
 		return;
 
-	encoder = &intel_dig_port->base;
+	encoder = &dig_port->base;
 
 	drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
 			 DRM_MODE_ENCODER_TMDS, "DDI %c", port_name(port));
@@ -4905,49 +4902,49 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder->pipe_mask = ~0;
 
 	if (INTEL_GEN(dev_priv) >= 11)
-		intel_dig_port->saved_port_bits = intel_de_read(dev_priv,
-								DDI_BUF_CTL(port)) &
-			DDI_BUF_PORT_REVERSAL;
+		dig_port->saved_port_bits =
+			intel_de_read(dev_priv, DDI_BUF_CTL(port))
+			& DDI_BUF_PORT_REVERSAL;
 	else
-		intel_dig_port->saved_port_bits = intel_de_read(dev_priv,
-								DDI_BUF_CTL(port)) &
-			(DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
+		dig_port->saved_port_bits =
+			intel_de_read(dev_priv, DDI_BUF_CTL(port))
+			& (DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
 
-	intel_dig_port->dp.output_reg = INVALID_MMIO_REG;
-	intel_dig_port->max_lanes = intel_ddi_max_lanes(intel_dig_port);
-	intel_dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
+	dig_port->dp.output_reg = INVALID_MMIO_REG;
+	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
+	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
 
 	if (intel_phy_is_tc(dev_priv, phy)) {
 		bool is_legacy =
 			!intel_bios_port_supports_typec_usb(dev_priv, port) &&
 			!intel_bios_port_supports_tbt(dev_priv, port);
 
-		intel_tc_port_init(intel_dig_port, is_legacy);
+		intel_tc_port_init(dig_port, is_legacy);
 
 		encoder->update_prepare = intel_ddi_update_prepare;
 		encoder->update_complete = intel_ddi_update_complete;
 	}
 
 	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
-	intel_dig_port->ddi_io_power_domain = POWER_DOMAIN_PORT_DDI_A_IO +
+	dig_port->ddi_io_power_domain = POWER_DOMAIN_PORT_DDI_A_IO +
 					      port - PORT_A;
 
 	if (init_dp) {
-		if (!intel_ddi_init_dp_connector(intel_dig_port))
+		if (!intel_ddi_init_dp_connector(dig_port))
 			goto err;
 
-		intel_dig_port->hpd_pulse = intel_dp_hpd_pulse;
+		dig_port->hpd_pulse = intel_dp_hpd_pulse;
 	}
 
 	/* In theory we don't need the encoder->type check, but leave it just in
 	 * case we have some really bad VBTs... */
 	if (encoder->type != INTEL_OUTPUT_EDP && init_hdmi) {
-		if (!intel_ddi_init_hdmi_connector(intel_dig_port))
+		if (!intel_ddi_init_hdmi_connector(dig_port))
 			goto err;
 	}
 
 	if (init_lspcon) {
-		if (lspcon_init(intel_dig_port))
+		if (lspcon_init(dig_port))
 			/* TODO: handle hdmi info frame part */
 			drm_dbg_kms(&dev_priv->drm,
 				    "LSPCON init success on port %c\n",
@@ -4964,26 +4961,26 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	if (INTEL_GEN(dev_priv) >= 11) {
 		if (intel_phy_is_tc(dev_priv, phy))
-			intel_dig_port->connected = intel_tc_port_connected;
+			dig_port->connected = intel_tc_port_connected;
 		else
-			intel_dig_port->connected = lpt_digital_port_connected;
+			dig_port->connected = lpt_digital_port_connected;
 	} else if (INTEL_GEN(dev_priv) >= 8) {
 		if (port == PORT_A || IS_GEN9_LP(dev_priv))
-			intel_dig_port->connected = bdw_digital_port_connected;
+			dig_port->connected = bdw_digital_port_connected;
 		else
-			intel_dig_port->connected = lpt_digital_port_connected;
+			dig_port->connected = lpt_digital_port_connected;
 	} else {
 		if (port == PORT_A)
-			intel_dig_port->connected = hsw_digital_port_connected;
+			dig_port->connected = hsw_digital_port_connected;
 		else
-			intel_dig_port->connected = lpt_digital_port_connected;
+			dig_port->connected = lpt_digital_port_connected;
 	}
 
-	intel_infoframe_init(intel_dig_port);
+	intel_infoframe_init(dig_port);
 
 	return;
 
 err:
 	drm_encoder_cleanup(&encoder->base);
-	kfree(intel_dig_port);
+	kfree(dig_port);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a11bb675f9b3..3b1f0b28e585 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1611,13 +1611,13 @@ static void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 }
 
 void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
-			 struct intel_digital_port *dport,
+			 struct intel_digital_port *dig_port,
 			 unsigned int expected_mask)
 {
 	u32 port_mask;
 	i915_reg_t dpll_reg;
 
-	switch (dport->base.port) {
+	switch (dig_port->base.port) {
 	case PORT_B:
 		port_mask = DPLL_PORTB_READY_MASK;
 		dpll_reg = DPLL(0);
@@ -1639,7 +1639,7 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 				       port_mask, expected_mask, 1000))
 		drm_WARN(&dev_priv->drm, 1,
 			 "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expected 0x%x\n",
-			 dport->base.base.base.id, dport->base.base.name,
+			 dig_port->base.base.base.id, dig_port->base.base.name,
 			 intel_de_read(dev_priv, dpll_reg) & port_mask,
 			 expected_mask);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b7a6d56bac5f..bc6021b994b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -542,7 +542,7 @@ void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
 
 int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
 void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
-			 struct intel_digital_port *dport,
+			 struct intel_digital_port *dig_port,
 			 unsigned int expected_mask);
 int intel_get_load_detect_pipe(struct drm_connector *connector,
 			       struct intel_load_detect_pipe *old,
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d1cb48b3f462..3644752cc5ec 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1194,7 +1194,7 @@ static int i915_dp_mst_info(struct seq_file *m, void *unused)
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 	struct drm_device *dev = &dev_priv->drm;
 	struct intel_encoder *intel_encoder;
-	struct intel_digital_port *intel_dig_port;
+	struct intel_digital_port *dig_port;
 	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 
@@ -1207,14 +1207,14 @@ static int i915_dp_mst_info(struct seq_file *m, void *unused)
 		if (!intel_encoder || intel_encoder->type == INTEL_OUTPUT_DP_MST)
 			continue;
 
-		intel_dig_port = enc_to_dig_port(intel_encoder);
-		if (!intel_dig_port->dp.can_mst)
+		dig_port = enc_to_dig_port(intel_encoder);
+		if (!dig_port->dp.can_mst)
 			continue;
 
 		seq_printf(m, "MST Source Port [ENCODER:%d:%s]\n",
-			   intel_dig_port->base.base.base.id,
-			   intel_dig_port->base.base.name);
-		drm_dp_mst_dump_topology(m, &intel_dig_port->dp.mst_mgr);
+			   dig_port->base.base.base.id,
+			   dig_port->base.base.name);
+		drm_dp_mst_dump_topology(m, &dig_port->dp.mst_mgr);
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 834162bc5a3f..ff8cba9d72f1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1817,8 +1817,8 @@ void chv_phy_powergate_lanes(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct i915_power_domains *power_domains = &dev_priv->power_domains;
-	enum dpio_phy phy = vlv_dport_to_phy(enc_to_dig_port(encoder));
-	enum dpio_channel ch = vlv_dport_to_channel(enc_to_dig_port(encoder));
+	enum dpio_phy phy = vlv_dig_port_to_phy(enc_to_dig_port(encoder));
+	enum dpio_channel ch = vlv_dig_port_to_channel(enc_to_dig_port(encoder));
 
 	mutex_lock(&power_domains->lock);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4b0aaa3081c9..e8f809161c75 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -279,10 +279,10 @@ enum check_link_response {
  */
 struct intel_hdcp_shim {
 	/* Outputs the transmitter's An and Aksv values to the receiver. */
-	int (*write_an_aksv)(struct intel_digital_port *intel_dig_port, u8 *an);
+	int (*write_an_aksv)(struct intel_digital_port *dig_port, u8 *an);
 
 	/* Reads the receiver's key selection vector */
-	int (*read_bksv)(struct intel_digital_port *intel_dig_port, u8 *bksv);
+	int (*read_bksv)(struct intel_digital_port *dig_port, u8 *bksv);
 
 	/*
 	 * Reads BINFO from DP receivers and BSTATUS from HDMI receivers. The
@@ -290,52 +290,52 @@ struct intel_hdcp_shim {
 	 * different. Call it BSTATUS since that's the name the HDMI spec
 	 * uses and it was there first.
 	 */
-	int (*read_bstatus)(struct intel_digital_port *intel_dig_port,
+	int (*read_bstatus)(struct intel_digital_port *dig_port,
 			    u8 *bstatus);
 
 	/* Determines whether a repeater is present downstream */
-	int (*repeater_present)(struct intel_digital_port *intel_dig_port,
+	int (*repeater_present)(struct intel_digital_port *dig_port,
 				bool *repeater_present);
 
 	/* Reads the receiver's Ri' value */
-	int (*read_ri_prime)(struct intel_digital_port *intel_dig_port, u8 *ri);
+	int (*read_ri_prime)(struct intel_digital_port *dig_port, u8 *ri);
 
 	/* Determines if the receiver's KSV FIFO is ready for consumption */
-	int (*read_ksv_ready)(struct intel_digital_port *intel_dig_port,
+	int (*read_ksv_ready)(struct intel_digital_port *dig_port,
 			      bool *ksv_ready);
 
 	/* Reads the ksv fifo for num_downstream devices */
-	int (*read_ksv_fifo)(struct intel_digital_port *intel_dig_port,
+	int (*read_ksv_fifo)(struct intel_digital_port *dig_port,
 			     int num_downstream, u8 *ksv_fifo);
 
 	/* Reads a 32-bit part of V' from the receiver */
-	int (*read_v_prime_part)(struct intel_digital_port *intel_dig_port,
+	int (*read_v_prime_part)(struct intel_digital_port *dig_port,
 				 int i, u32 *part);
 
 	/* Enables HDCP signalling on the port */
-	int (*toggle_signalling)(struct intel_digital_port *intel_dig_port,
+	int (*toggle_signalling)(struct intel_digital_port *dig_port,
 				 bool enable);
 
 	/* Ensures the link is still protected */
-	bool (*check_link)(struct intel_digital_port *intel_dig_port);
+	bool (*check_link)(struct intel_digital_port *dig_port);
 
 	/* Detects panel's hdcp capability. This is optional for HDMI. */
-	int (*hdcp_capable)(struct intel_digital_port *intel_dig_port,
+	int (*hdcp_capable)(struct intel_digital_port *dig_port,
 			    bool *hdcp_capable);
 
 	/* HDCP adaptation(DP/HDMI) required on the port */
 	enum hdcp_wired_protocol protocol;
 
 	/* Detects whether sink is HDCP2.2 capable */
-	int (*hdcp_2_2_capable)(struct intel_digital_port *intel_dig_port,
+	int (*hdcp_2_2_capable)(struct intel_digital_port *dig_port,
 				bool *capable);
 
 	/* Write HDCP2.2 messages */
-	int (*write_2_2_msg)(struct intel_digital_port *intel_dig_port,
+	int (*write_2_2_msg)(struct intel_digital_port *dig_port,
 			     void *buf, size_t size);
 
 	/* Read HDCP2.2 messages */
-	int (*read_2_2_msg)(struct intel_digital_port *intel_dig_port,
+	int (*read_2_2_msg)(struct intel_digital_port *dig_port,
 			    u8 msg_id, void *buf, size_t size);
 
 	/*
@@ -343,11 +343,11 @@ struct intel_hdcp_shim {
 	 * type to Receivers. In DP HDCP2.2 Stream type is one of the input to
 	 * the HDCP2.2 Cipher for En/De-Cryption. Not applicable for HDMI.
 	 */
-	int (*config_stream_type)(struct intel_digital_port *intel_dig_port,
+	int (*config_stream_type)(struct intel_digital_port *dig_port,
 				  bool is_repeater, u8 type);
 
 	/* HDCP2.2 Link Integrity Check */
-	int (*check_2_2_link)(struct intel_digital_port *intel_dig_port);
+	int (*check_2_2_link)(struct intel_digital_port *dig_port);
 };
 
 struct intel_hdcp {
@@ -1434,9 +1434,9 @@ struct intel_dp_mst_encoder {
 };
 
 static inline enum dpio_channel
-vlv_dport_to_channel(struct intel_digital_port *dport)
+vlv_dig_port_to_channel(struct intel_digital_port *dig_port)
 {
-	switch (dport->base.port) {
+	switch (dig_port->base.port) {
 	case PORT_B:
 	case PORT_D:
 		return DPIO_CH0;
@@ -1448,9 +1448,9 @@ vlv_dport_to_channel(struct intel_digital_port *dport)
 }
 
 static inline enum dpio_phy
-vlv_dport_to_phy(struct intel_digital_port *dport)
+vlv_dig_port_to_phy(struct intel_digital_port *dig_port)
 {
-	switch (dport->base.port) {
+	switch (dig_port->base.port) {
 	case PORT_B:
 	case PORT_C:
 		return DPIO_PHY0;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 192678bd9b42..ea6dab1f32a5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -140,9 +140,9 @@ static const u8 valid_dsc_slicecount[] = {1, 2, 4};
  */
 bool intel_dp_is_edp(struct intel_dp *intel_dp)
 {
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
-	return intel_dig_port->base.type == INTEL_OUTPUT_EDP;
+	return dig_port->base.type == INTEL_OUTPUT_EDP;
 }
 
 static void intel_dp_link_down(struct intel_encoder *encoder,
@@ -216,10 +216,10 @@ static int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 /* Theoretical max between source and sink */
 static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 {
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
-	int source_max = intel_dig_port->max_lanes;
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	int source_max = dig_port->max_lanes;
 	int sink_max = drm_dp_max_lane_count(intel_dp->dpcd);
-	int fia_max = intel_tc_port_fia_max_lane_count(intel_dig_port);
+	int fia_max = intel_tc_port_fia_max_lane_count(dig_port);
 
 	return min3(source_max, sink_max, fia_max);
 }
@@ -251,8 +251,8 @@ intel_dp_max_data_rate(int max_link_clock, int max_lanes)
 static int
 intel_dp_downstream_max_dotclock(struct intel_dp *intel_dp)
 {
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *encoder = &intel_dig_port->base;
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int max_dotclk = dev_priv->max_dotclk_freq;
 	int ds_max_dotclk;
@@ -769,7 +769,7 @@ static void
 vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum pipe pipe = intel_dp->pps_pipe;
 	bool pll_enabled, release_cl_override = false;
 	enum dpio_phy phy = DPIO_PHY(pipe);
@@ -779,14 +779,14 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	if (drm_WARN(&dev_priv->drm,
 		     intel_de_read(dev_priv, intel_dp->output_reg) & DP_PORT_EN,
 		     "skipping pipe %c power sequencer kick due to [ENCODER:%d:%s] being active\n",
-		     pipe_name(pipe), intel_dig_port->base.base.base.id,
-		     intel_dig_port->base.base.name))
+		     pipe_name(pipe), dig_port->base.base.base.id,
+		     dig_port->base.base.name))
 		return;
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "kicking pipe %c power sequencer for [ENCODER:%d:%s]\n",
-		    pipe_name(pipe), intel_dig_port->base.base.base.id,
-		    intel_dig_port->base.base.name);
+		    pipe_name(pipe), dig_port->base.base.base.id,
+		    dig_port->base.base.name);
 
 	/* Preserve the BIOS-computed detected bit. This is
 	 * supposed to be read-only.
@@ -882,7 +882,7 @@ static enum pipe
 vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum pipe pipe;
 
 	lockdep_assert_held(&dev_priv->pps_mutex);
@@ -911,8 +911,8 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 	drm_dbg_kms(&dev_priv->drm,
 		    "picked pipe %c power sequencer for [ENCODER:%d:%s]\n",
 		    pipe_name(intel_dp->pps_pipe),
-		    intel_dig_port->base.base.base.id,
-		    intel_dig_port->base.base.name);
+		    dig_port->base.base.base.id,
+		    dig_port->base.base.name);
 
 	/* init power sequencer on this pipe and port */
 	intel_dp_init_panel_power_sequencer(intel_dp);
@@ -1000,8 +1000,8 @@ static void
 vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
-	enum port port = intel_dig_port->base.port;
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	enum port port = dig_port->base.port;
 
 	lockdep_assert_held(&dev_priv->pps_mutex);
 
@@ -1022,15 +1022,15 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 	if (intel_dp->pps_pipe == INVALID_PIPE) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "no initial power sequencer for [ENCODER:%d:%s]\n",
-			    intel_dig_port->base.base.base.id,
-			    intel_dig_port->base.base.name);
+			    dig_port->base.base.base.id,
+			    dig_port->base.base.name);
 		return;
 	}
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "initial power sequencer for [ENCODER:%d:%s]: pipe %c\n",
-		    intel_dig_port->base.base.base.id,
-		    intel_dig_port->base.base.name,
+		    dig_port->base.base.base.id,
+		    dig_port->base.base.name,
 		    pipe_name(intel_dp->pps_pipe));
 
 	intel_dp_init_panel_power_sequencer(intel_dp);
@@ -1295,9 +1295,9 @@ static u32 g4x_get_aux_send_ctl(struct intel_dp *intel_dp,
 				int send_bytes,
 				u32 aux_clock_divider)
 {
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv =
-			to_i915(intel_dig_port->base.base.dev);
+			to_i915(dig_port->base.base.dev);
 	u32 precharge, timeout;
 
 	if (IS_GEN(dev_priv, 6))
@@ -1325,10 +1325,10 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
 				int send_bytes,
 				u32 unused)
 {
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *i915 =
-			to_i915(intel_dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(i915, intel_dig_port->base.port);
+			to_i915(dig_port->base.base.dev);
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 	u32 ret;
 
 	ret = DP_AUX_CH_CTL_SEND_BUSY |
@@ -1342,7 +1342,7 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
 	      DP_AUX_CH_CTL_SYNC_PULSE_SKL(32);
 
 	if (intel_phy_is_tc(i915, phy) &&
-	    intel_dig_port->tc_mode == TC_PORT_TBT_ALT)
+	    dig_port->tc_mode == TC_PORT_TBT_ALT)
 		ret |= DP_AUX_CH_CTL_TBT_IO;
 
 	return ret;
@@ -1354,11 +1354,11 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 		  u8 *recv, int recv_size,
 		  u32 aux_send_ctl_flags)
 {
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *i915 =
-			to_i915(intel_dig_port->base.base.dev);
+			to_i915(dig_port->base.base.dev);
 	struct intel_uncore *uncore = &i915->uncore;
-	enum phy phy = intel_port_to_phy(i915, intel_dig_port->base.port);
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 	bool is_tc_port = intel_phy_is_tc(i915, phy);
 	i915_reg_t ch_ctl, ch_data[5];
 	u32 aux_clock_divider;
@@ -1375,9 +1375,9 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 		ch_data[i] = intel_dp->aux_ch_data_reg(intel_dp, i);
 
 	if (is_tc_port)
-		intel_tc_port_lock(intel_dig_port);
+		intel_tc_port_lock(dig_port);
 
-	aux_domain = intel_aux_power_domain(intel_dig_port);
+	aux_domain = intel_aux_power_domain(dig_port);
 
 	aux_wakeref = intel_display_power_get(i915, aux_domain);
 	pps_wakeref = pps_lock(intel_dp);
@@ -1536,7 +1536,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	intel_display_power_put_async(i915, aux_domain, aux_wakeref);
 
 	if (is_tc_port)
-		intel_tc_port_unlock(intel_dig_port);
+		intel_tc_port_unlock(dig_port);
 
 	return ret;
 }
@@ -2882,7 +2882,7 @@ static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
 static bool edp_panel_vdd_on(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	u32 pp;
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
 	bool need_to_disable = !intel_dp->want_panel_vdd;
@@ -2899,11 +2899,11 @@ static bool edp_panel_vdd_on(struct intel_dp *intel_dp)
 		return need_to_disable;
 
 	intel_display_power_get(dev_priv,
-				intel_aux_power_domain(intel_dig_port));
+				intel_aux_power_domain(dig_port));
 
 	drm_dbg_kms(&dev_priv->drm, "Turning [ENCODER:%d:%s] VDD on\n",
-		    intel_dig_port->base.base.base.id,
-		    intel_dig_port->base.base.name);
+		    dig_port->base.base.base.id,
+		    dig_port->base.base.name);
 
 	if (!edp_have_panel_power(intel_dp))
 		wait_panel_power_cycle(intel_dp);
@@ -2925,8 +2925,8 @@ static bool edp_panel_vdd_on(struct intel_dp *intel_dp)
 	if (!edp_have_panel_power(intel_dp)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "[ENCODER:%d:%s] panel power wasn't enabled\n",
-			    intel_dig_port->base.base.base.id,
-			    intel_dig_port->base.base.name);
+			    dig_port->base.base.base.id,
+			    dig_port->base.base.name);
 		msleep(intel_dp->panel_power_up_delay);
 	}
 
@@ -2959,7 +2959,7 @@ void intel_edp_panel_vdd_on(struct intel_dp *intel_dp)
 static void edp_panel_vdd_off_sync(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct intel_digital_port *intel_dig_port =
+	struct intel_digital_port *dig_port =
 		dp_to_dig_port(intel_dp);
 	u32 pp;
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
@@ -2972,8 +2972,8 @@ static void edp_panel_vdd_off_sync(struct intel_dp *intel_dp)
 		return;
 
 	drm_dbg_kms(&dev_priv->drm, "Turning [ENCODER:%d:%s] VDD off\n",
-		    intel_dig_port->base.base.base.id,
-		    intel_dig_port->base.base.name);
+		    dig_port->base.base.base.id,
+		    dig_port->base.base.name);
 
 	pp = ilk_get_pp_control(intel_dp);
 	pp &= ~EDP_FORCE_VDD;
@@ -2993,7 +2993,7 @@ static void edp_panel_vdd_off_sync(struct intel_dp *intel_dp)
 		intel_dp->panel_power_off_time = ktime_get_boottime();
 
 	intel_display_power_put_unchecked(dev_priv,
-					  intel_aux_power_domain(intel_dig_port));
+					  intel_aux_power_domain(dig_port));
 }
 
 static void edp_panel_vdd_work(struct work_struct *__work)
@@ -3824,8 +3824,8 @@ static void g4x_pre_enable_dp(struct intel_atomic_state *state,
 
 static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
 {
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(intel_dig_port->base.base.dev);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	enum pipe pipe = intel_dp->pps_pipe;
 	i915_reg_t pp_on_reg = PP_ON_DELAYS(pipe);
 
@@ -3847,8 +3847,8 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
 	 */
 	drm_dbg_kms(&dev_priv->drm,
 		    "detaching pipe %c power sequencer from [ENCODER:%d:%s]\n",
-		    pipe_name(pipe), intel_dig_port->base.base.base.id,
-		    intel_dig_port->base.base.name);
+		    pipe_name(pipe), dig_port->base.base.base.id,
+		    dig_port->base.base.name);
 	intel_de_write(dev_priv, pp_on_reg, 0);
 	intel_de_posting_read(dev_priv, pp_on_reg);
 
@@ -4914,7 +4914,7 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state,
 			       unsigned int type)
 {
-	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct dp_sdp sdp = {};
 	ssize_t len;
@@ -4940,14 +4940,14 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
 	if (drm_WARN_ON(&dev_priv->drm, len < 0))
 		return;
 
-	intel_dig_port->write_infoframe(encoder, crtc_state, type, &sdp, len);
+	dig_port->write_infoframe(encoder, crtc_state, type, &sdp, len);
 }
 
 void intel_write_dp_vsc_sdp(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
 			    struct drm_dp_vsc_sdp *vsc)
 {
-	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct dp_sdp sdp = {};
 	ssize_t len;
@@ -4957,7 +4957,7 @@ void intel_write_dp_vsc_sdp(struct intel_encoder *encoder,
 	if (drm_WARN_ON(&dev_priv->drm, len < 0))
 		return;
 
-	intel_dig_port->write_infoframe(encoder, crtc_state, DP_SDP_VSC,
+	dig_port->write_infoframe(encoder, crtc_state, DP_SDP_VSC,
 					&sdp, len);
 }
 
@@ -5117,7 +5117,7 @@ static void intel_read_dp_vsc_sdp(struct intel_encoder *encoder,
 				  struct intel_crtc_state *crtc_state,
 				  struct drm_dp_vsc_sdp *vsc)
 {
-	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	unsigned int type = DP_SDP_VSC;
@@ -5132,7 +5132,7 @@ static void intel_read_dp_vsc_sdp(struct intel_encoder *encoder,
 	     intel_hdmi_infoframe_enable(type)) == 0)
 		return;
 
-	intel_dig_port->read_infoframe(encoder, crtc_state, type, &sdp, sizeof(sdp));
+	dig_port->read_infoframe(encoder, crtc_state, type, &sdp, sizeof(sdp));
 
 	ret = intel_dp_vsc_sdp_unpack(vsc, &sdp, sizeof(sdp));
 
@@ -5144,7 +5144,7 @@ static void intel_read_dp_hdr_metadata_infoframe_sdp(struct intel_encoder *encod
 						     struct intel_crtc_state *crtc_state,
 						     struct hdmi_drm_infoframe *drm_infoframe)
 {
-	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	unsigned int type = HDMI_PACKET_TYPE_GAMUT_METADATA;
 	struct dp_sdp sdp = {};
@@ -5154,8 +5154,8 @@ static void intel_read_dp_hdr_metadata_infoframe_sdp(struct intel_encoder *encod
 	    intel_hdmi_infoframe_enable(type)) == 0)
 		return;
 
-	intel_dig_port->read_infoframe(encoder, crtc_state, type, &sdp,
-				       sizeof(sdp));
+	dig_port->read_infoframe(encoder, crtc_state, type, &sdp,
+				 sizeof(sdp));
 
 	ret = intel_dp_hdr_metadata_infoframe_sdp_unpack(drm_infoframe, &sdp,
 							 sizeof(sdp));
@@ -5357,10 +5357,10 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv =
 			to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_dp_phy_test_params *data =
 			&intel_dp->compliance.test_data.phytest;
-	struct intel_crtc *crtc = to_intel_crtc(intel_dig_port->base.base.crtc);
+	struct intel_crtc *crtc = to_intel_crtc(dig_port->base.base.crtc);
 	enum pipe pipe = crtc->pipe;
 	u32 pattern_val;
 
@@ -5422,10 +5422,10 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp)
 static void
 intel_dp_autotest_phy_ddi_disable(struct intel_dp *intel_dp)
 {
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
-	struct drm_device *dev = intel_dig_port->base.base.dev;
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct drm_device *dev = dig_port->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_crtc *crtc = to_intel_crtc(intel_dig_port->base.base.crtc);
+	struct intel_crtc *crtc = to_intel_crtc(dig_port->base.base.crtc);
 	enum pipe pipe = crtc->pipe;
 	u32 trans_ddi_func_ctl_value, trans_conf_value, dp_tp_ctl_value;
 
@@ -5448,11 +5448,11 @@ intel_dp_autotest_phy_ddi_disable(struct intel_dp *intel_dp)
 static void
 intel_dp_autotest_phy_ddi_enable(struct intel_dp *intel_dp, uint8_t lane_cnt)
 {
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
-	struct drm_device *dev = intel_dig_port->base.base.dev;
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct drm_device *dev = dig_port->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	enum port port = intel_dig_port->base.port;
-	struct intel_crtc *crtc = to_intel_crtc(intel_dig_port->base.base.crtc);
+	enum port port = dig_port->base.port;
+	struct intel_crtc *crtc = to_intel_crtc(dig_port->base.base.crtc);
 	enum pipe pipe = crtc->pipe;
 	u32 trans_ddi_func_ctl_value, trans_conf_value, dp_tp_ctl_value;
 
@@ -6319,10 +6319,10 @@ intel_dp_connector_unregister(struct drm_connector *connector)
 
 void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
 {
-	struct intel_digital_port *intel_dig_port = enc_to_dig_port(to_intel_encoder(encoder));
-	struct intel_dp *intel_dp = &intel_dig_port->dp;
+	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
+	struct intel_dp *intel_dp = &dig_port->dp;
 
-	intel_dp_mst_encoder_cleanup(intel_dig_port);
+	intel_dp_mst_encoder_cleanup(dig_port);
 	if (intel_dp_is_edp(intel_dp)) {
 		intel_wakeref_t wakeref;
 
@@ -6381,11 +6381,11 @@ static void intel_dp_hdcp_wait_for_cp_irq(struct intel_hdcp *hdcp, int timeout)
 }
 
 static
-int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
+int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
 				u8 *an)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(&intel_dig_port->base.base));
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(&dig_port->base.base));
 	static const struct drm_dp_aux_msg msg = {
 		.request = DP_AUX_NATIVE_WRITE,
 		.address = DP_AUX_HDCP_AKSV,
@@ -6396,7 +6396,7 @@ int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
 	int ret;
 
 	/* Output An first, that's easy */
-	dpcd_ret = drm_dp_dpcd_write(&intel_dig_port->dp.aux, DP_AUX_HDCP_AN,
+	dpcd_ret = drm_dp_dpcd_write(&dig_port->dp.aux, DP_AUX_HDCP_AN,
 				     an, DRM_HDCP_AN_LEN);
 	if (dpcd_ret != DRM_HDCP_AN_LEN) {
 		drm_dbg_kms(&i915->drm,
@@ -6435,13 +6435,13 @@ int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
 	return 0;
 }
 
-static int intel_dp_hdcp_read_bksv(struct intel_digital_port *intel_dig_port,
+static int intel_dp_hdcp_read_bksv(struct intel_digital_port *dig_port,
 				   u8 *bksv)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 
-	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BKSV, bksv,
+	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BKSV, bksv,
 			       DRM_HDCP_KSV_LEN);
 	if (ret != DRM_HDCP_KSV_LEN) {
 		drm_dbg_kms(&i915->drm,
@@ -6451,10 +6451,10 @@ static int intel_dp_hdcp_read_bksv(struct intel_digital_port *intel_dig_port,
 	return 0;
 }
 
-static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
+static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *dig_port,
 				      u8 *bstatus)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 
 	/*
@@ -6462,7 +6462,7 @@ static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
 	 * definition by different names. In the HDMI spec, it's called BSTATUS,
 	 * but in DP it's called BINFO.
 	 */
-	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BINFO,
+	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BINFO,
 			       bstatus, DRM_HDCP_BSTATUS_LEN);
 	if (ret != DRM_HDCP_BSTATUS_LEN) {
 		drm_dbg_kms(&i915->drm,
@@ -6473,13 +6473,13 @@ static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_dp_hdcp_read_bcaps(struct intel_digital_port *intel_dig_port,
+int intel_dp_hdcp_read_bcaps(struct intel_digital_port *dig_port,
 			     u8 *bcaps)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 
-	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BCAPS,
+	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BCAPS,
 			       bcaps, 1);
 	if (ret != 1) {
 		drm_dbg_kms(&i915->drm,
@@ -6491,13 +6491,13 @@ int intel_dp_hdcp_read_bcaps(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_dp_hdcp_repeater_present(struct intel_digital_port *intel_dig_port,
+int intel_dp_hdcp_repeater_present(struct intel_digital_port *dig_port,
 				   bool *repeater_present)
 {
 	ssize_t ret;
 	u8 bcaps;
 
-	ret = intel_dp_hdcp_read_bcaps(intel_dig_port, &bcaps);
+	ret = intel_dp_hdcp_read_bcaps(dig_port, &bcaps);
 	if (ret)
 		return ret;
 
@@ -6506,13 +6506,13 @@ int intel_dp_hdcp_repeater_present(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_dp_hdcp_read_ri_prime(struct intel_digital_port *intel_dig_port,
+int intel_dp_hdcp_read_ri_prime(struct intel_digital_port *dig_port,
 				u8 *ri_prime)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 
-	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_RI_PRIME,
+	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_RI_PRIME,
 			       ri_prime, DRM_HDCP_RI_LEN);
 	if (ret != DRM_HDCP_RI_LEN) {
 		drm_dbg_kms(&i915->drm, "Read Ri' from DP/AUX failed (%zd)\n",
@@ -6523,14 +6523,14 @@ int intel_dp_hdcp_read_ri_prime(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_dp_hdcp_read_ksv_ready(struct intel_digital_port *intel_dig_port,
+int intel_dp_hdcp_read_ksv_ready(struct intel_digital_port *dig_port,
 				 bool *ksv_ready)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 	u8 bstatus;
 
-	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,
+	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,
 			       &bstatus, 1);
 	if (ret != 1) {
 		drm_dbg_kms(&i915->drm,
@@ -6542,17 +6542,17 @@ int intel_dp_hdcp_read_ksv_ready(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_dp_hdcp_read_ksv_fifo(struct intel_digital_port *intel_dig_port,
+int intel_dp_hdcp_read_ksv_fifo(struct intel_digital_port *dig_port,
 				int num_downstream, u8 *ksv_fifo)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 	int i;
 
 	/* KSV list is read via 15 byte window (3 entries @ 5 bytes each) */
 	for (i = 0; i < num_downstream; i += 3) {
 		size_t len = min(num_downstream - i, 3) * DRM_HDCP_KSV_LEN;
-		ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,
+		ret = drm_dp_dpcd_read(&dig_port->dp.aux,
 				       DP_AUX_HDCP_KSV_FIFO,
 				       ksv_fifo + i * DRM_HDCP_KSV_LEN,
 				       len);
@@ -6567,16 +6567,16 @@ int intel_dp_hdcp_read_ksv_fifo(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_dp_hdcp_read_v_prime_part(struct intel_digital_port *intel_dig_port,
+int intel_dp_hdcp_read_v_prime_part(struct intel_digital_port *dig_port,
 				    int i, u32 *part)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 
 	if (i >= DRM_HDCP_V_PRIME_NUM_PARTS)
 		return -EINVAL;
 
-	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,
+	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
 			       DP_AUX_HDCP_V_PRIME(i), part,
 			       DRM_HDCP_V_PRIME_PART_LEN);
 	if (ret != DRM_HDCP_V_PRIME_PART_LEN) {
@@ -6588,7 +6588,7 @@ int intel_dp_hdcp_read_v_prime_part(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_dp_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
+int intel_dp_hdcp_toggle_signalling(struct intel_digital_port *dig_port,
 				    bool enable)
 {
 	/* Not used for single stream DisplayPort setups */
@@ -6596,13 +6596,13 @@ int intel_dp_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
 }
 
 static
-bool intel_dp_hdcp_check_link(struct intel_digital_port *intel_dig_port)
+bool intel_dp_hdcp_check_link(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 	u8 bstatus;
 
-	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,
+	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,
 			       &bstatus, 1);
 	if (ret != 1) {
 		drm_dbg_kms(&i915->drm,
@@ -6614,13 +6614,13 @@ bool intel_dp_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 }
 
 static
-int intel_dp_hdcp_capable(struct intel_digital_port *intel_dig_port,
+int intel_dp_hdcp_capable(struct intel_digital_port *dig_port,
 			  bool *hdcp_capable)
 {
 	ssize_t ret;
 	u8 bcaps;
 
-	ret = intel_dp_hdcp_read_bcaps(intel_dig_port, &bcaps);
+	ret = intel_dp_hdcp_read_bcaps(dig_port, &bcaps);
 	if (ret)
 		return ret;
 
@@ -6678,13 +6678,13 @@ static const struct hdcp2_dp_msg_data hdcp2_dp_msg_data[] = {
 };
 
 static int
-intel_dp_hdcp2_read_rx_status(struct intel_digital_port *intel_dig_port,
+intel_dp_hdcp2_read_rx_status(struct intel_digital_port *dig_port,
 			      u8 *rx_status)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 
-	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,
+	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
 			       DP_HDCP_2_2_REG_RXSTATUS_OFFSET, rx_status,
 			       HDCP_2_2_DP_RXSTATUS_LEN);
 	if (ret != HDCP_2_2_DP_RXSTATUS_LEN) {
@@ -6697,14 +6697,14 @@ intel_dp_hdcp2_read_rx_status(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int hdcp2_detect_msg_availability(struct intel_digital_port *intel_dig_port,
+int hdcp2_detect_msg_availability(struct intel_digital_port *dig_port,
 				  u8 msg_id, bool *msg_ready)
 {
 	u8 rx_status;
 	int ret;
 
 	*msg_ready = false;
-	ret = intel_dp_hdcp2_read_rx_status(intel_dig_port, &rx_status);
+	ret = intel_dp_hdcp2_read_rx_status(dig_port, &rx_status);
 	if (ret < 0)
 		return ret;
 
@@ -6730,11 +6730,11 @@ int hdcp2_detect_msg_availability(struct intel_digital_port *intel_dig_port,
 }
 
 static ssize_t
-intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *intel_dig_port,
+intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *dig_port,
 			    const struct hdcp2_dp_msg_data *hdcp2_msg_data)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
-	struct intel_dp *dp = &intel_dig_port->dp;
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_dp *dp = &dig_port->dp;
 	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
 	u8 msg_id = hdcp2_msg_data->msg_id;
 	int ret, timeout;
@@ -6758,7 +6758,7 @@ intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *intel_dig_port,
 		 * the timeout at wait for CP_IRQ.
 		 */
 		intel_dp_hdcp_wait_for_cp_irq(hdcp, timeout);
-		ret = hdcp2_detect_msg_availability(intel_dig_port,
+		ret = hdcp2_detect_msg_availability(dig_port,
 						    msg_id, &msg_ready);
 		if (!msg_ready)
 			ret = -ETIMEDOUT;
@@ -6784,10 +6784,10 @@ static const struct hdcp2_dp_msg_data *get_hdcp2_dp_msg_data(u8 msg_id)
 }
 
 static
-int intel_dp_hdcp2_write_msg(struct intel_digital_port *intel_dig_port,
+int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
 			     void *buf, size_t size)
 {
-	struct intel_dp *dp = &intel_dig_port->dp;
+	struct intel_dp *dp = &dig_port->dp;
 	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
 	unsigned int offset;
 	u8 *byte = buf;
@@ -6810,7 +6810,7 @@ int intel_dp_hdcp2_write_msg(struct intel_digital_port *intel_dig_port,
 		len = bytes_to_write > DP_AUX_MAX_PAYLOAD_BYTES ?
 				DP_AUX_MAX_PAYLOAD_BYTES : bytes_to_write;
 
-		ret = drm_dp_dpcd_write(&intel_dig_port->dp.aux,
+		ret = drm_dp_dpcd_write(&dig_port->dp.aux,
 					offset, (void *)byte, len);
 		if (ret < 0)
 			return ret;
@@ -6824,13 +6824,13 @@ int intel_dp_hdcp2_write_msg(struct intel_digital_port *intel_dig_port,
 }
 
 static
-ssize_t get_receiver_id_list_size(struct intel_digital_port *intel_dig_port)
+ssize_t get_receiver_id_list_size(struct intel_digital_port *dig_port)
 {
 	u8 rx_info[HDCP_2_2_RXINFO_LEN];
 	u32 dev_cnt;
 	ssize_t ret;
 
-	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,
+	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
 			       DP_HDCP_2_2_REG_RXINFO_OFFSET,
 			       (void *)rx_info, HDCP_2_2_RXINFO_LEN);
 	if (ret != HDCP_2_2_RXINFO_LEN)
@@ -6850,10 +6850,10 @@ ssize_t get_receiver_id_list_size(struct intel_digital_port *intel_dig_port)
 }
 
 static
-int intel_dp_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
+int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
 			    u8 msg_id, void *buf, size_t size)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_recv, len;
@@ -6864,12 +6864,12 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
 		return -EINVAL;
 	offset = hdcp2_msg_data->offset;
 
-	ret = intel_dp_hdcp2_wait_for_msg(intel_dig_port, hdcp2_msg_data);
+	ret = intel_dp_hdcp2_wait_for_msg(dig_port, hdcp2_msg_data);
 	if (ret < 0)
 		return ret;
 
 	if (msg_id == HDCP_2_2_REP_SEND_RECVID_LIST) {
-		ret = get_receiver_id_list_size(intel_dig_port);
+		ret = get_receiver_id_list_size(dig_port);
 		if (ret < 0)
 			return ret;
 
@@ -6884,7 +6884,7 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
 		len = bytes_to_recv > DP_AUX_MAX_PAYLOAD_BYTES ?
 		      DP_AUX_MAX_PAYLOAD_BYTES : bytes_to_recv;
 
-		ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, offset,
+		ret = drm_dp_dpcd_read(&dig_port->dp.aux, offset,
 				       (void *)byte, len);
 		if (ret < 0) {
 			drm_dbg_kms(&i915->drm, "msg_id %d, ret %zd\n",
@@ -6903,7 +6903,7 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *intel_dig_port,
+int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *dig_port,
 				      bool is_repeater, u8 content_type)
 {
 	int ret;
@@ -6922,7 +6922,7 @@ int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *intel_dig_port,
 	stream_type_msg.msg_id = HDCP_2_2_ERRATA_DP_STREAM_TYPE;
 	stream_type_msg.stream_type = content_type;
 
-	ret =  intel_dp_hdcp2_write_msg(intel_dig_port, &stream_type_msg,
+	ret =  intel_dp_hdcp2_write_msg(dig_port, &stream_type_msg,
 					sizeof(stream_type_msg));
 
 	return ret < 0 ? ret : 0;
@@ -6930,12 +6930,12 @@ int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_dp_hdcp2_check_link(struct intel_digital_port *intel_dig_port)
+int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port)
 {
 	u8 rx_status;
 	int ret;
 
-	ret = intel_dp_hdcp2_read_rx_status(intel_dig_port, &rx_status);
+	ret = intel_dp_hdcp2_read_rx_status(dig_port, &rx_status);
 	if (ret)
 		return ret;
 
@@ -6950,14 +6950,14 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *intel_dig_port)
 }
 
 static
-int intel_dp_hdcp2_capable(struct intel_digital_port *intel_dig_port,
+int intel_dp_hdcp2_capable(struct intel_digital_port *dig_port,
 			   bool *capable)
 {
 	u8 rx_caps[3];
 	int ret;
 
 	*capable = false;
-	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,
+	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
 			       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
 			       rx_caps, HDCP_2_2_RXCAPS_LEN);
 	if (ret != HDCP_2_2_RXCAPS_LEN)
@@ -7236,12 +7236,12 @@ static bool intel_edp_have_power(struct intel_dp *intel_dp)
 }
 
 enum irqreturn
-intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool long_hpd)
+intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
-	struct intel_dp *intel_dp = &intel_dig_port->dp;
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_dp *intel_dp = &dig_port->dp;
 
-	if (intel_dig_port->base.type == INTEL_OUTPUT_EDP &&
+	if (dig_port->base.type == INTEL_OUTPUT_EDP &&
 	    (long_hpd || !intel_edp_have_power(intel_dp))) {
 		/*
 		 * vdd off can generate a long/short pulse on eDP which
@@ -7252,14 +7252,14 @@ intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool long_hpd)
 		drm_dbg_kms(&i915->drm,
 			    "ignoring %s hpd on eDP [ENCODER:%d:%s]\n",
 			    long_hpd ? "long" : "short",
-			    intel_dig_port->base.base.base.id,
-			    intel_dig_port->base.base.name);
+			    dig_port->base.base.base.id,
+			    dig_port->base.base.name);
 		return IRQ_HANDLED;
 	}
 
 	drm_dbg_kms(&i915->drm, "got hpd irq on [ENCODER:%d:%s] - %s\n",
-		    intel_dig_port->base.base.base.id,
-		    intel_dig_port->base.base.name,
+		    dig_port->base.base.base.id,
+		    dig_port->base.base.name,
 		    long_hpd ? "long" : "short");
 
 	if (long_hpd) {
@@ -8122,12 +8122,12 @@ static void intel_dp_modeset_retry_work_fn(struct work_struct *work)
 }
 
 bool
-intel_dp_init_connector(struct intel_digital_port *intel_dig_port,
+intel_dp_init_connector(struct intel_digital_port *dig_port,
 			struct intel_connector *intel_connector)
 {
 	struct drm_connector *connector = &intel_connector->base;
-	struct intel_dp *intel_dp = &intel_dig_port->dp;
-	struct intel_encoder *intel_encoder = &intel_dig_port->base;
+	struct intel_dp *intel_dp = &dig_port->dp;
+	struct intel_encoder *intel_encoder = &dig_port->base;
 	struct drm_device *dev = intel_encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum port port = intel_encoder->port;
@@ -8138,9 +8138,9 @@ intel_dp_init_connector(struct intel_digital_port *intel_dig_port,
 	INIT_WORK(&intel_connector->modeset_retry_work,
 		  intel_dp_modeset_retry_work_fn);
 
-	if (drm_WARN(dev, intel_dig_port->max_lanes < 1,
+	if (drm_WARN(dev, dig_port->max_lanes < 1,
 		     "Not enough lanes (%d) for DP on [ENCODER:%d:%s]\n",
-		     intel_dig_port->max_lanes, intel_encoder->base.base.id,
+		     dig_port->max_lanes, intel_encoder->base.base.id,
 		     intel_encoder->base.name))
 		return false;
 
@@ -8211,12 +8211,12 @@ intel_dp_init_connector(struct intel_digital_port *intel_dig_port,
 		intel_connector->get_hw_state = intel_connector_get_hw_state;
 
 	/* init MST on ports that can support it */
-	intel_dp_mst_encoder_init(intel_dig_port,
+	intel_dp_mst_encoder_init(dig_port,
 				  intel_connector->base.base.id);
 
 	if (!intel_edp_init_connector(intel_dp, intel_connector)) {
 		intel_dp_aux_fini(intel_dp);
-		intel_dp_mst_encoder_cleanup(intel_dig_port);
+		intel_dp_mst_encoder_cleanup(dig_port);
 		goto fail;
 	}
 
@@ -8251,20 +8251,20 @@ bool intel_dp_init(struct drm_i915_private *dev_priv,
 		   i915_reg_t output_reg,
 		   enum port port)
 {
-	struct intel_digital_port *intel_dig_port;
+	struct intel_digital_port *dig_port;
 	struct intel_encoder *intel_encoder;
 	struct drm_encoder *encoder;
 	struct intel_connector *intel_connector;
 
-	intel_dig_port = kzalloc(sizeof(*intel_dig_port), GFP_KERNEL);
-	if (!intel_dig_port)
+	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
+	if (!dig_port)
 		return false;
 
 	intel_connector = intel_connector_alloc();
 	if (!intel_connector)
 		goto err_connector_alloc;
 
-	intel_encoder = &intel_dig_port->base;
+	intel_encoder = &dig_port->base;
 	encoder = &intel_encoder->base;
 
 	if (drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
@@ -8300,34 +8300,34 @@ bool intel_dp_init(struct drm_i915_private *dev_priv,
 
 	if ((IS_IVYBRIDGE(dev_priv) && port == PORT_A) ||
 	    (HAS_PCH_CPT(dev_priv) && port != PORT_A))
-		intel_dig_port->dp.set_link_train = cpt_set_link_train;
+		dig_port->dp.set_link_train = cpt_set_link_train;
 	else
-		intel_dig_port->dp.set_link_train = g4x_set_link_train;
+		dig_port->dp.set_link_train = g4x_set_link_train;
 
 	if (IS_CHERRYVIEW(dev_priv))
-		intel_dig_port->dp.set_signal_levels = chv_set_signal_levels;
+		dig_port->dp.set_signal_levels = chv_set_signal_levels;
 	else if (IS_VALLEYVIEW(dev_priv))
-		intel_dig_port->dp.set_signal_levels = vlv_set_signal_levels;
+		dig_port->dp.set_signal_levels = vlv_set_signal_levels;
 	else if (IS_IVYBRIDGE(dev_priv) && port == PORT_A)
-		intel_dig_port->dp.set_signal_levels = ivb_cpu_edp_set_signal_levels;
+		dig_port->dp.set_signal_levels = ivb_cpu_edp_set_signal_levels;
 	else if (IS_GEN(dev_priv, 6) && port == PORT_A)
-		intel_dig_port->dp.set_signal_levels = snb_cpu_edp_set_signal_levels;
+		dig_port->dp.set_signal_levels = snb_cpu_edp_set_signal_levels;
 	else
-		intel_dig_port->dp.set_signal_levels = g4x_set_signal_levels;
+		dig_port->dp.set_signal_levels = g4x_set_signal_levels;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv) ||
 	    (HAS_PCH_SPLIT(dev_priv) && port != PORT_A)) {
-		intel_dig_port->dp.preemph_max = intel_dp_pre_empemph_max_3;
-		intel_dig_port->dp.voltage_max = intel_dp_voltage_max_3;
+		dig_port->dp.preemph_max = intel_dp_pre_empemph_max_3;
+		dig_port->dp.voltage_max = intel_dp_voltage_max_3;
 	} else {
-		intel_dig_port->dp.preemph_max = intel_dp_pre_empemph_max_2;
-		intel_dig_port->dp.voltage_max = intel_dp_voltage_max_2;
+		dig_port->dp.preemph_max = intel_dp_pre_empemph_max_2;
+		dig_port->dp.voltage_max = intel_dp_voltage_max_2;
 	}
 
-	intel_dig_port->dp.output_reg = output_reg;
-	intel_dig_port->max_lanes = 4;
-	intel_dig_port->dp.regs.dp_tp_ctl = DP_TP_CTL(port);
-	intel_dig_port->dp.regs.dp_tp_status = DP_TP_STATUS(port);
+	dig_port->dp.output_reg = output_reg;
+	dig_port->max_lanes = 4;
+	dig_port->dp.regs.dp_tp_ctl = DP_TP_CTL(port);
+	dig_port->dp.regs.dp_tp_status = DP_TP_STATUS(port);
 
 	intel_encoder->type = INTEL_OUTPUT_DP;
 	intel_encoder->power_domain = intel_port_to_power_domain(port);
@@ -8342,25 +8342,25 @@ bool intel_dp_init(struct drm_i915_private *dev_priv,
 	intel_encoder->cloneable = 0;
 	intel_encoder->port = port;
 
-	intel_dig_port->hpd_pulse = intel_dp_hpd_pulse;
+	dig_port->hpd_pulse = intel_dp_hpd_pulse;
 
 	if (HAS_GMCH(dev_priv)) {
 		if (IS_GM45(dev_priv))
-			intel_dig_port->connected = gm45_digital_port_connected;
+			dig_port->connected = gm45_digital_port_connected;
 		else
-			intel_dig_port->connected = g4x_digital_port_connected;
+			dig_port->connected = g4x_digital_port_connected;
 	} else {
 		if (port == PORT_A)
-			intel_dig_port->connected = ilk_digital_port_connected;
+			dig_port->connected = ilk_digital_port_connected;
 		else
-			intel_dig_port->connected = ibx_digital_port_connected;
+			dig_port->connected = ibx_digital_port_connected;
 	}
 
 	if (port != PORT_A)
-		intel_infoframe_init(intel_dig_port);
+		intel_infoframe_init(dig_port);
 
-	intel_dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
-	if (!intel_dp_init_connector(intel_dig_port, intel_connector))
+	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
+	if (!intel_dp_init_connector(dig_port, intel_connector))
 		goto err_init_connector;
 
 	return true;
@@ -8370,7 +8370,7 @@ bool intel_dp_init(struct drm_i915_private *dev_priv,
 err_encoder_init:
 	kfree(intel_connector);
 err_connector_alloc:
-	kfree(intel_dig_port);
+	kfree(dig_port);
 	return false;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0a8950f744f6..b901ab850cbd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -40,7 +40,7 @@ bool intel_dp_port_enabled(struct drm_i915_private *dev_priv,
 			   enum pipe *pipe);
 bool intel_dp_init(struct drm_i915_private *dev_priv, i915_reg_t output_reg,
 		   enum port port);
-bool intel_dp_init_connector(struct intel_digital_port *intel_dig_port,
+bool intel_dp_init_connector(struct intel_digital_port *dig_port,
 			     struct intel_connector *intel_connector);
 void intel_dp_set_link_params(struct intel_dp *intel_dp,
 			      int link_rate, u8 lane_count,
@@ -61,7 +61,7 @@ int intel_dp_compute_config(struct intel_encoder *encoder,
 			    struct drm_connector_state *conn_state);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
 bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
-enum irqreturn intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port,
+enum irqreturn intel_dp_hpd_pulse(struct intel_digital_port *dig_port,
 				  bool long_hpd);
 void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2e6c6375a23b..f6264e6269a4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -323,8 +323,8 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 				 const struct drm_connector_state *old_conn_state)
 {
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *intel_dig_port = intel_mst->primary;
-	struct intel_dp *intel_dp = &intel_dig_port->dp;
+	struct intel_digital_port *dig_port = intel_mst->primary;
+	struct intel_dp *intel_dp = &dig_port->dp;
 	struct intel_connector *connector =
 		to_intel_connector(old_conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
@@ -350,8 +350,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 				      const struct drm_connector_state *old_conn_state)
 {
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *intel_dig_port = intel_mst->primary;
-	struct intel_dp *intel_dp = &intel_dig_port->dp;
+	struct intel_digital_port *dig_port = intel_mst->primary;
+	struct intel_dp *intel_dp = &dig_port->dp;
 	struct intel_connector *connector =
 		to_intel_connector(old_conn_state->connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
@@ -404,7 +404,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	 * the transcoder clock select is set to none.
 	 */
 	if (last_mst_stream)
-		intel_dp_set_infoframes(&intel_dig_port->base, false,
+		intel_dp_set_infoframes(&dig_port->base, false,
 					old_crtc_state, NULL);
 	/*
 	 * From TGL spec: "If multi-stream slave transcoder: Configure
@@ -419,7 +419,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_mst->connector = NULL;
 	if (last_mst_stream)
-		intel_dig_port->base.post_disable(state, &intel_dig_port->base,
+		dig_port->base.post_disable(state, &dig_port->base,
 						  old_crtc_state, NULL);
 
 	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
@@ -432,11 +432,11 @@ static void intel_mst_pre_pll_enable_dp(struct intel_atomic_state *state,
 					const struct drm_connector_state *conn_state)
 {
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *intel_dig_port = intel_mst->primary;
-	struct intel_dp *intel_dp = &intel_dig_port->dp;
+	struct intel_digital_port *dig_port = intel_mst->primary;
+	struct intel_dp *intel_dp = &dig_port->dp;
 
 	if (intel_dp->active_mst_links == 0)
-		intel_dig_port->base.pre_pll_enable(state, &intel_dig_port->base,
+		dig_port->base.pre_pll_enable(state, &dig_port->base,
 						    pipe_config, NULL);
 }
 
@@ -446,8 +446,8 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 				    const struct drm_connector_state *conn_state)
 {
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *intel_dig_port = intel_mst->primary;
-	struct intel_dp *intel_dp = &intel_dig_port->dp;
+	struct intel_digital_port *dig_port = intel_mst->primary;
+	struct intel_dp *intel_dp = &dig_port->dp;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -474,7 +474,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port, true);
 
 	if (first_mst_stream)
-		intel_dig_port->base.pre_enable(state, &intel_dig_port->base,
+		dig_port->base.pre_enable(state, &dig_port->base,
 						pipe_config, NULL);
 
 	ret = drm_dp_mst_allocate_vcpi(&intel_dp->mst_mgr,
@@ -492,7 +492,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 
 	/*
 	 * Before Gen 12 this is not done as part of
-	 * intel_dig_port->base.pre_enable() and should be done here. For
+	 * dig_port->base.pre_enable() and should be done here. For
 	 * Gen 12+ the step in which this should be done is different for the
 	 * first MST stream, so it's done on the DDI for the first stream and
 	 * here for the following ones.
@@ -511,8 +511,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 				const struct drm_connector_state *conn_state)
 {
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *intel_dig_port = intel_mst->primary;
-	struct intel_dp *intel_dp = &intel_dig_port->dp;
+	struct intel_digital_port *dig_port = intel_mst->primary;
+	struct intel_dp *intel_dp = &dig_port->dp;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
@@ -552,9 +552,9 @@ static void intel_dp_mst_enc_get_config(struct intel_encoder *encoder,
 					struct intel_crtc_state *pipe_config)
 {
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *intel_dig_port = intel_mst->primary;
+	struct intel_digital_port *dig_port = intel_mst->primary;
 
-	intel_ddi_get_config(&intel_dig_port->base, pipe_config);
+	intel_ddi_get_config(&dig_port->base, pipe_config);
 }
 
 static int intel_dp_mst_get_ddc_modes(struct drm_connector *connector)
@@ -712,8 +712,8 @@ static bool intel_dp_mst_get_hw_state(struct intel_connector *connector)
 static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port, const char *pathprop)
 {
 	struct intel_dp *intel_dp = container_of(mgr, struct intel_dp, mst_mgr);
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
-	struct drm_device *dev = intel_dig_port->base.base.dev;
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct drm_device *dev = dig_port->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_connector *intel_connector;
 	struct drm_connector *connector;
@@ -788,11 +788,11 @@ static const struct drm_dp_mst_topology_cbs mst_cbs = {
 };
 
 static struct intel_dp_mst_encoder *
-intel_dp_create_fake_mst_encoder(struct intel_digital_port *intel_dig_port, enum pipe pipe)
+intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe pipe)
 {
 	struct intel_dp_mst_encoder *intel_mst;
 	struct intel_encoder *intel_encoder;
-	struct drm_device *dev = intel_dig_port->base.base.dev;
+	struct drm_device *dev = dig_port->base.base.dev;
 
 	intel_mst = kzalloc(sizeof(*intel_mst), GFP_KERNEL);
 
@@ -801,14 +801,14 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *intel_dig_port, enum
 
 	intel_mst->pipe = pipe;
 	intel_encoder = &intel_mst->base;
-	intel_mst->primary = intel_dig_port;
+	intel_mst->primary = dig_port;
 
 	drm_encoder_init(dev, &intel_encoder->base, &intel_dp_mst_enc_funcs,
 			 DRM_MODE_ENCODER_DPMST, "DP-MST %c", pipe_name(pipe));
 
 	intel_encoder->type = INTEL_OUTPUT_DP_MST;
-	intel_encoder->power_domain = intel_dig_port->base.power_domain;
-	intel_encoder->port = intel_dig_port->base.port;
+	intel_encoder->power_domain = dig_port->base.power_domain;
+	intel_encoder->port = dig_port->base.port;
 	intel_encoder->cloneable = 0;
 	/*
 	 * This is wrong, but broken userspace uses the intersection
@@ -835,29 +835,29 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *intel_dig_port, enum
 }
 
 static bool
-intel_dp_create_fake_mst_encoders(struct intel_digital_port *intel_dig_port)
+intel_dp_create_fake_mst_encoders(struct intel_digital_port *dig_port)
 {
-	struct intel_dp *intel_dp = &intel_dig_port->dp;
-	struct drm_i915_private *dev_priv = to_i915(intel_dig_port->base.base.dev);
+	struct intel_dp *intel_dp = &dig_port->dp;
+	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe)
-		intel_dp->mst_encoders[pipe] = intel_dp_create_fake_mst_encoder(intel_dig_port, pipe);
+		intel_dp->mst_encoders[pipe] = intel_dp_create_fake_mst_encoder(dig_port, pipe);
 	return true;
 }
 
 int
-intel_dp_mst_encoder_active_links(struct intel_digital_port *intel_dig_port)
+intel_dp_mst_encoder_active_links(struct intel_digital_port *dig_port)
 {
-	return intel_dig_port->dp.active_mst_links;
+	return dig_port->dp.active_mst_links;
 }
 
 int
-intel_dp_mst_encoder_init(struct intel_digital_port *intel_dig_port, int conn_base_id)
+intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
-	struct intel_dp *intel_dp = &intel_dig_port->dp;
-	enum port port = intel_dig_port->base.port;
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_dp *intel_dp = &dig_port->dp;
+	enum port port = dig_port->base.port;
 	int ret;
 
 	if (!HAS_DP_MST(i915) || intel_dp_is_edp(intel_dp))
@@ -872,7 +872,7 @@ intel_dp_mst_encoder_init(struct intel_digital_port *intel_dig_port, int conn_ba
 	intel_dp->mst_mgr.cbs = &mst_cbs;
 
 	/* create encoders */
-	intel_dp_create_fake_mst_encoders(intel_dig_port);
+	intel_dp_create_fake_mst_encoders(dig_port);
 	ret = drm_dp_mst_topology_mgr_init(&intel_dp->mst_mgr, &i915->drm,
 					   &intel_dp->aux, 16, 3, conn_base_id);
 	if (ret)
@@ -884,9 +884,9 @@ intel_dp_mst_encoder_init(struct intel_digital_port *intel_dig_port, int conn_ba
 }
 
 void
-intel_dp_mst_encoder_cleanup(struct intel_digital_port *intel_dig_port)
+intel_dp_mst_encoder_cleanup(struct intel_digital_port *dig_port)
 {
-	struct intel_dp *intel_dp = &intel_dig_port->dp;
+	struct intel_dp *intel_dp = &dig_port->dp;
 
 	if (!intel_dp->can_mst)
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
index 854724f68f09..6afda4e86b3c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -11,9 +11,9 @@
 struct intel_digital_port;
 struct intel_crtc_state;
 
-int intel_dp_mst_encoder_init(struct intel_digital_port *intel_dig_port, int conn_id);
-void intel_dp_mst_encoder_cleanup(struct intel_digital_port *intel_dig_port);
-int intel_dp_mst_encoder_active_links(struct intel_digital_port *intel_dig_port);
+int intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_id);
+void intel_dp_mst_encoder_cleanup(struct intel_digital_port *dig_port);
+int intel_dp_mst_encoder_active_links(struct intel_digital_port *dig_port);
 bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_state);
 bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 399a7edb4568..7910522273b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -650,9 +650,9 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 			      bool uniq_trans_scale)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_digital_port *dport = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_crtc *intel_crtc = to_intel_crtc(encoder->base.crtc);
-	enum dpio_channel ch = vlv_dport_to_channel(dport);
+	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum pipe pipe = intel_crtc->pipe;
 	u32 val;
 	int i;
@@ -746,7 +746,7 @@ void chv_data_lane_soft_reset(struct intel_encoder *encoder,
 			      bool reset)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum dpio_channel ch = vlv_dport_to_channel(enc_to_dig_port(encoder));
+	enum dpio_channel ch = vlv_dig_port_to_channel(enc_to_dig_port(encoder));
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
 	u32 val;
@@ -789,10 +789,10 @@ void chv_data_lane_soft_reset(struct intel_encoder *encoder,
 void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state)
 {
-	struct intel_digital_port *dport = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum dpio_channel ch = vlv_dport_to_channel(dport);
+	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum pipe pipe = crtc->pipe;
 	unsigned int lane_mask =
 		intel_dp_unused_lane_mask(crtc_state->lane_count);
@@ -803,7 +803,7 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	 * Otherwise we can't even access the PLL.
 	 */
 	if (ch == DPIO_CH0 && pipe == PIPE_B)
-		dport->release_cl2_override =
+		dig_port->release_cl2_override =
 			!chv_phy_powergate_ch(dev_priv, DPIO_PHY0, DPIO_CH1, true);
 
 	chv_phy_powergate_lanes(encoder, true, lane_mask);
@@ -870,10 +870,10 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct intel_digital_port *dport = dp_to_dig_port(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum dpio_channel ch = vlv_dport_to_channel(dport);
+	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum pipe pipe = crtc->pipe;
 	int data, i, stagger;
 	u32 val;
@@ -948,12 +948,12 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 
 void chv_phy_release_cl2_override(struct intel_encoder *encoder)
 {
-	struct intel_digital_port *dport = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	if (dport->release_cl2_override) {
+	if (dig_port->release_cl2_override) {
 		chv_phy_powergate_ch(dev_priv, DPIO_PHY0, DPIO_CH1, false);
-		dport->release_cl2_override = false;
+		dig_port->release_cl2_override = false;
 	}
 }
 
@@ -997,8 +997,8 @@ void vlv_set_phy_signal_level(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *intel_crtc = to_intel_crtc(encoder->base.crtc);
-	struct intel_digital_port *dport = enc_to_dig_port(encoder);
-	enum dpio_channel port = vlv_dport_to_channel(dport);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
 	enum pipe pipe = intel_crtc->pipe;
 
 	vlv_dpio_get(dev_priv);
@@ -1022,10 +1022,10 @@ void vlv_set_phy_signal_level(struct intel_encoder *encoder,
 void vlv_phy_pre_pll_enable(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state)
 {
-	struct intel_digital_port *dport = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum dpio_channel port = vlv_dport_to_channel(dport);
+	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
 	enum pipe pipe = crtc->pipe;
 
 	/* Program Tx lane resets to default */
@@ -1052,10 +1052,10 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct intel_digital_port *dport = dp_to_dig_port(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum dpio_channel port = vlv_dport_to_channel(dport);
+	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
 	enum pipe pipe = crtc->pipe;
 	u32 val;
 
@@ -1081,10 +1081,10 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *old_crtc_state)
 {
-	struct intel_digital_port *dport = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	enum dpio_channel port = vlv_dport_to_channel(dport);
+	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
 	enum pipe pipe = crtc->pipe;
 
 	vlv_dpio_get(dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 815b054bb167..1b6dadfce4eb 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -40,15 +40,15 @@ bool intel_hdcp_is_ksv_valid(u8 *ksv)
 }
 
 static
-int intel_hdcp_read_valid_bksv(struct intel_digital_port *intel_dig_port,
+int intel_hdcp_read_valid_bksv(struct intel_digital_port *dig_port,
 			       const struct intel_hdcp_shim *shim, u8 *bksv)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	int ret, i, tries = 2;
 
 	/* HDCP spec states that we must retry the bksv if it is invalid */
 	for (i = 0; i < tries; i++) {
-		ret = shim->read_bksv(intel_dig_port, bksv);
+		ret = shim->read_bksv(dig_port, bksv);
 		if (ret)
 			return ret;
 		if (intel_hdcp_is_ksv_valid(bksv))
@@ -65,7 +65,7 @@ int intel_hdcp_read_valid_bksv(struct intel_digital_port *intel_dig_port,
 /* Is HDCP1.4 capable on Platform and Sink */
 bool intel_hdcp_capable(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
 	bool capable = false;
 	u8 bksv[5];
@@ -74,9 +74,9 @@ bool intel_hdcp_capable(struct intel_connector *connector)
 		return capable;
 
 	if (shim->hdcp_capable) {
-		shim->hdcp_capable(intel_dig_port, &capable);
+		shim->hdcp_capable(dig_port, &capable);
 	} else {
-		if (!intel_hdcp_read_valid_bksv(intel_dig_port, shim, bksv))
+		if (!intel_hdcp_read_valid_bksv(dig_port, shim, bksv))
 			capable = true;
 	}
 
@@ -86,7 +86,7 @@ bool intel_hdcp_capable(struct intel_connector *connector)
 /* Is HDCP2.2 capable on Platform and Sink */
 bool intel_hdcp2_capable(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	bool capable = false;
@@ -104,7 +104,7 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	mutex_unlock(&dev_priv->hdcp_comp_mutex);
 
 	/* Sink's capability for HDCP2.2 */
-	hdcp->shim->hdcp_2_2_capable(intel_dig_port, &capable);
+	hdcp->shim->hdcp_2_2_capable(dig_port, &capable);
 
 	return capable;
 }
@@ -125,14 +125,14 @@ static bool intel_hdcp2_in_use(struct drm_i915_private *dev_priv,
 	       LINK_ENCRYPTION_STATUS;
 }
 
-static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *intel_dig_port,
+static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
 				    const struct intel_hdcp_shim *shim)
 {
 	int ret, read_ret;
 	bool ksv_ready;
 
 	/* Poll for ksv list ready (spec says max time allowed is 5s) */
-	ret = __wait_for(read_ret = shim->read_ksv_ready(intel_dig_port,
+	ret = __wait_for(read_ret = shim->read_ksv_ready(dig_port,
 							 &ksv_ready),
 			 read_ret || ksv_ready, 5 * 1000 * 1000, 1000,
 			 100 * 1000);
@@ -300,16 +300,16 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 				const struct intel_hdcp_shim *shim,
 				u8 *ksv_fifo, u8 num_downstream, u8 *bstatus)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	enum transcoder cpu_transcoder = connector->hdcp.cpu_transcoder;
-	enum port port = intel_dig_port->base.port;
+	enum port port = dig_port->base.port;
 	u32 vprime, sha_text, sha_leftovers, rep_ctl;
 	int ret, i, j, sha_idx;
 
 	/* Process V' values from the receiver */
 	for (i = 0; i < DRM_HDCP_V_PRIME_NUM_PARTS; i++) {
-		ret = shim->read_v_prime_part(intel_dig_port, i, &vprime);
+		ret = shim->read_v_prime_part(dig_port, i, &vprime);
 		if (ret)
 			return ret;
 		intel_de_write(dev_priv, HDCP_SHA_V_PRIME(i), vprime);
@@ -528,20 +528,20 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 static
 int intel_hdcp_auth_downstream(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
 	u8 bstatus[2], num_downstream, *ksv_fifo;
 	int ret, i, tries = 3;
 
-	ret = intel_hdcp_poll_ksv_fifo(intel_dig_port, shim);
+	ret = intel_hdcp_poll_ksv_fifo(dig_port, shim);
 	if (ret) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "KSV list failed to become ready (%d)\n", ret);
 		return ret;
 	}
 
-	ret = shim->read_bstatus(intel_dig_port, bstatus);
+	ret = shim->read_bstatus(dig_port, bstatus);
 	if (ret)
 		return ret;
 
@@ -571,7 +571,7 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 		return -ENOMEM;
 	}
 
-	ret = shim->read_ksv_fifo(intel_dig_port, num_downstream, ksv_fifo);
+	ret = shim->read_ksv_fifo(dig_port, num_downstream, ksv_fifo);
 	if (ret)
 		goto err;
 
@@ -611,12 +611,12 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 /* Implements Part 1 of the HDCP authorization procedure */
 static int intel_hdcp_auth(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
 	enum transcoder cpu_transcoder = connector->hdcp.cpu_transcoder;
-	enum port port = intel_dig_port->base.port;
+	enum port port = dig_port->base.port;
 	unsigned long r0_prime_gen_start;
 	int ret, i, tries = 2;
 	union {
@@ -640,7 +640,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	 * displays, this is not necessary.
 	 */
 	if (shim->hdcp_capable) {
-		ret = shim->hdcp_capable(intel_dig_port, &hdcp_capable);
+		ret = shim->hdcp_capable(dig_port, &hdcp_capable);
 		if (ret)
 			return ret;
 		if (!hdcp_capable) {
@@ -670,7 +670,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 				  HDCP_ANLO(dev_priv, cpu_transcoder, port));
 	an.reg[1] = intel_de_read(dev_priv,
 				  HDCP_ANHI(dev_priv, cpu_transcoder, port));
-	ret = shim->write_an_aksv(intel_dig_port, an.shim);
+	ret = shim->write_an_aksv(dig_port, an.shim);
 	if (ret)
 		return ret;
 
@@ -678,7 +678,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 
 	memset(&bksv, 0, sizeof(bksv));
 
-	ret = intel_hdcp_read_valid_bksv(intel_dig_port, shim, bksv.shim);
+	ret = intel_hdcp_read_valid_bksv(dig_port, shim, bksv.shim);
 	if (ret < 0)
 		return ret;
 
@@ -692,14 +692,14 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	intel_de_write(dev_priv, HDCP_BKSVHI(dev_priv, cpu_transcoder, port),
 		       bksv.reg[1]);
 
-	ret = shim->repeater_present(intel_dig_port, &repeater_present);
+	ret = shim->repeater_present(dig_port, &repeater_present);
 	if (ret)
 		return ret;
 	if (repeater_present)
 		intel_de_write(dev_priv, HDCP_REP_CTL,
 			       intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder, port));
 
-	ret = shim->toggle_signalling(intel_dig_port, true);
+	ret = shim->toggle_signalling(dig_port, true);
 	if (ret)
 		return ret;
 
@@ -732,7 +732,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	 */
 	for (i = 0; i < tries; i++) {
 		ri.reg = 0;
-		ret = shim->read_ri_prime(intel_dig_port, ri.shim);
+		ret = shim->read_ri_prime(dig_port, ri.shim);
 		if (ret)
 			return ret;
 		intel_de_write(dev_priv,
@@ -776,10 +776,10 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 
 static int _intel_hdcp_disable(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	enum port port = intel_dig_port->base.port;
+	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	int ret;
 
@@ -796,7 +796,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 		return -ETIMEDOUT;
 	}
 
-	ret = hdcp->shim->toggle_signalling(intel_dig_port, false);
+	ret = hdcp->shim->toggle_signalling(dig_port, false);
 	if (ret) {
 		drm_err(&dev_priv->drm, "Failed to disable HDCP signalling\n");
 		return ret;
@@ -859,10 +859,10 @@ static struct intel_connector *intel_hdcp_to_connector(struct intel_hdcp *hdcp)
 /* Implements Part 3 of the HDCP authorization procedure */
 static int intel_hdcp_check_link(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	enum port port = intel_dig_port->base.port;
+	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder;
 	int ret = 0;
 
@@ -888,7 +888,7 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	if (hdcp->shim->check_link(intel_dig_port)) {
+	if (hdcp->shim->check_link(dig_port)) {
 		if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
 			hdcp->value = DRM_MODE_CONTENT_PROTECTION_ENABLED;
 			schedule_work(&hdcp->prop_work);
@@ -1242,7 +1242,7 @@ static int hdcp2_deauthenticate_port(struct intel_connector *connector)
 /* Authentication flow starts from here */
 static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
@@ -1264,12 +1264,12 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	if (ret < 0)
 		return ret;
 
-	ret = shim->write_2_2_msg(intel_dig_port, &msgs.ake_init,
+	ret = shim->write_2_2_msg(dig_port, &msgs.ake_init,
 				  sizeof(msgs.ake_init));
 	if (ret < 0)
 		return ret;
 
-	ret = shim->read_2_2_msg(intel_dig_port, HDCP_2_2_AKE_SEND_CERT,
+	ret = shim->read_2_2_msg(dig_port, HDCP_2_2_AKE_SEND_CERT,
 				 &msgs.send_cert, sizeof(msgs.send_cert));
 	if (ret < 0)
 		return ret;
@@ -1298,11 +1298,11 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	if (ret < 0)
 		return ret;
 
-	ret = shim->write_2_2_msg(intel_dig_port, &msgs.no_stored_km, size);
+	ret = shim->write_2_2_msg(dig_port, &msgs.no_stored_km, size);
 	if (ret < 0)
 		return ret;
 
-	ret = shim->read_2_2_msg(intel_dig_port, HDCP_2_2_AKE_SEND_HPRIME,
+	ret = shim->read_2_2_msg(dig_port, HDCP_2_2_AKE_SEND_HPRIME,
 				 &msgs.send_hprime, sizeof(msgs.send_hprime));
 	if (ret < 0)
 		return ret;
@@ -1313,7 +1313,7 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 
 	if (!hdcp->is_paired) {
 		/* Pairing is required */
-		ret = shim->read_2_2_msg(intel_dig_port,
+		ret = shim->read_2_2_msg(dig_port,
 					 HDCP_2_2_AKE_SEND_PAIRING_INFO,
 					 &msgs.pairing_info,
 					 sizeof(msgs.pairing_info));
@@ -1331,7 +1331,7 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 
 static int hdcp2_locality_check(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
 		struct hdcp2_lc_init lc_init;
@@ -1345,12 +1345,12 @@ static int hdcp2_locality_check(struct intel_connector *connector)
 		if (ret < 0)
 			continue;
 
-		ret = shim->write_2_2_msg(intel_dig_port, &msgs.lc_init,
+		ret = shim->write_2_2_msg(dig_port, &msgs.lc_init,
 				      sizeof(msgs.lc_init));
 		if (ret < 0)
 			continue;
 
-		ret = shim->read_2_2_msg(intel_dig_port,
+		ret = shim->read_2_2_msg(dig_port,
 					 HDCP_2_2_LC_SEND_LPRIME,
 					 &msgs.send_lprime,
 					 sizeof(msgs.send_lprime));
@@ -1367,7 +1367,7 @@ static int hdcp2_locality_check(struct intel_connector *connector)
 
 static int hdcp2_session_key_exchange(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	struct hdcp2_ske_send_eks send_eks;
 	int ret;
@@ -1376,7 +1376,7 @@ static int hdcp2_session_key_exchange(struct intel_connector *connector)
 	if (ret < 0)
 		return ret;
 
-	ret = hdcp->shim->write_2_2_msg(intel_dig_port, &send_eks,
+	ret = hdcp->shim->write_2_2_msg(dig_port, &send_eks,
 					sizeof(send_eks));
 	if (ret < 0)
 		return ret;
@@ -1387,7 +1387,7 @@ static int hdcp2_session_key_exchange(struct intel_connector *connector)
 static
 int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
@@ -1409,12 +1409,12 @@ int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 	msgs.stream_manage.streams[0].stream_type = hdcp->content_type;
 
 	/* Send it to Repeater */
-	ret = shim->write_2_2_msg(intel_dig_port, &msgs.stream_manage,
+	ret = shim->write_2_2_msg(dig_port, &msgs.stream_manage,
 				  sizeof(msgs.stream_manage));
 	if (ret < 0)
 		return ret;
 
-	ret = shim->read_2_2_msg(intel_dig_port, HDCP_2_2_REP_STREAM_READY,
+	ret = shim->read_2_2_msg(dig_port, HDCP_2_2_REP_STREAM_READY,
 				 &msgs.stream_ready, sizeof(msgs.stream_ready));
 	if (ret < 0)
 		return ret;
@@ -1439,7 +1439,7 @@ int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 static
 int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
@@ -1451,7 +1451,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 	u8 *rx_info;
 	int ret;
 
-	ret = shim->read_2_2_msg(intel_dig_port, HDCP_2_2_REP_SEND_RECVID_LIST,
+	ret = shim->read_2_2_msg(dig_port, HDCP_2_2_REP_SEND_RECVID_LIST,
 				 &msgs.recvid_list, sizeof(msgs.recvid_list));
 	if (ret < 0)
 		return ret;
@@ -1496,7 +1496,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 		return ret;
 
 	hdcp->seq_num_v = seq_num_v;
-	ret = shim->write_2_2_msg(intel_dig_port, &msgs.rep_ack,
+	ret = shim->write_2_2_msg(dig_port, &msgs.rep_ack,
 				  sizeof(msgs.rep_ack));
 	if (ret < 0)
 		return ret;
@@ -1517,7 +1517,7 @@ static int hdcp2_authenticate_repeater(struct intel_connector *connector)
 
 static int hdcp2_authenticate_sink(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
@@ -1543,7 +1543,7 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 	}
 
 	if (shim->config_stream_type) {
-		ret = shim->config_stream_type(intel_dig_port,
+		ret = shim->config_stream_type(dig_port,
 					       hdcp->is_repeater,
 					       hdcp->content_type);
 		if (ret < 0)
@@ -1569,10 +1569,10 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 
 static int hdcp2_enable_encryption(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	enum port port = intel_dig_port->base.port;
+	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	int ret;
 
@@ -1580,7 +1580,7 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 		    intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
 		    LINK_ENCRYPTION_STATUS);
 	if (hdcp->shim->toggle_signalling) {
-		ret = hdcp->shim->toggle_signalling(intel_dig_port, true);
+		ret = hdcp->shim->toggle_signalling(dig_port, true);
 		if (ret) {
 			drm_err(&dev_priv->drm,
 				"Failed to enable HDCP signalling. %d\n",
@@ -1608,10 +1608,10 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 
 static int hdcp2_disable_encryption(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	enum port port = intel_dig_port->base.port;
+	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	int ret;
 
@@ -1630,7 +1630,7 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
 		drm_dbg_kms(&dev_priv->drm, "Disable Encryption Timedout");
 
 	if (hdcp->shim->toggle_signalling) {
-		ret = hdcp->shim->toggle_signalling(intel_dig_port, false);
+		ret = hdcp->shim->toggle_signalling(dig_port, false);
 		if (ret) {
 			drm_err(&dev_priv->drm,
 				"Failed to disable HDCP signalling. %d\n",
@@ -1723,10 +1723,10 @@ static int _intel_hdcp2_disable(struct intel_connector *connector)
 /* Implements the Link Integrity Check for HDCP2.2 */
 static int intel_hdcp2_check_link(struct intel_connector *connector)
 {
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	enum port port = intel_dig_port->base.port;
+	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder;
 	int ret = 0;
 
@@ -1751,7 +1751,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	ret = hdcp->shim->check_2_2_link(intel_dig_port);
+	ret = hdcp->shim->check_2_2_link(dig_port);
 	if (ret == HDCP_LINK_PROTECTED) {
 		if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
 			hdcp->value = DRM_MODE_CONTENT_PROTECTION_ENABLED;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index a31a98d26882..414a0de2aab3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -88,10 +88,10 @@ assert_hdmi_transcoder_func_disabled(struct drm_i915_private *dev_priv,
 
 struct intel_hdmi *enc_to_intel_hdmi(struct intel_encoder *encoder)
 {
-	struct intel_digital_port *intel_dig_port =
+	struct intel_digital_port *dig_port =
 		container_of(&encoder->base, struct intel_digital_port,
 			     base.base);
-	return &intel_dig_port->hdmi;
+	return &dig_port->hdmi;
 }
 
 static struct intel_hdmi *intel_attached_hdmi(struct intel_connector *connector)
@@ -660,7 +660,7 @@ static void intel_write_infoframe(struct intel_encoder *encoder,
 				  enum hdmi_infoframe_type type,
 				  const union hdmi_infoframe *frame)
 {
-	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	u8 buffer[VIDEO_DIP_DATA_SIZE];
 	ssize_t len;
 
@@ -681,7 +681,7 @@ static void intel_write_infoframe(struct intel_encoder *encoder,
 	buffer[3] = 0;
 	len++;
 
-	intel_dig_port->write_infoframe(encoder, crtc_state, type, buffer, len);
+	dig_port->write_infoframe(encoder, crtc_state, type, buffer, len);
 }
 
 void intel_read_infoframe(struct intel_encoder *encoder,
@@ -689,7 +689,7 @@ void intel_read_infoframe(struct intel_encoder *encoder,
 			  enum hdmi_infoframe_type type,
 			  union hdmi_infoframe *frame)
 {
-	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	u8 buffer[VIDEO_DIP_DATA_SIZE];
 	int ret;
 
@@ -697,7 +697,7 @@ void intel_read_infoframe(struct intel_encoder *encoder,
 	     intel_hdmi_infoframe_enable(type)) == 0)
 		return;
 
-	intel_dig_port->read_infoframe(encoder, crtc_state,
+	dig_port->read_infoframe(encoder, crtc_state,
 				       type, buffer, sizeof(buffer));
 
 	/* Fill the 'hole' (see big comment above) at position 3 */
@@ -872,8 +872,8 @@ static void g4x_set_infoframes(struct intel_encoder *encoder,
 			       const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
-	struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
 	i915_reg_t reg = VIDEO_DIP_CTL;
 	u32 val = intel_de_read(dev_priv, reg);
 	u32 port = VIDEO_DIP_PORT(encoder->port);
@@ -1057,8 +1057,8 @@ static void ibx_set_infoframes(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
-	struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
 	i915_reg_t reg = TVIDEO_DIP_CTL(intel_crtc->pipe);
 	u32 val = intel_de_read(dev_priv, reg);
 	u32 port = VIDEO_DIP_PORT(encoder->port);
@@ -1275,11 +1275,11 @@ void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool enable)
 					 adapter, enable);
 }
 
-static int intel_hdmi_hdcp_read(struct intel_digital_port *intel_dig_port,
+static int intel_hdmi_hdcp_read(struct intel_digital_port *dig_port,
 				unsigned int offset, void *buffer, size_t size)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
-	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_hdmi *hdmi = &dig_port->hdmi;
 	struct i2c_adapter *adapter = intel_gmbus_get_adapter(i915,
 							      hdmi->ddc_bus);
 	int ret;
@@ -1304,11 +1304,11 @@ static int intel_hdmi_hdcp_read(struct intel_digital_port *intel_dig_port,
 	return ret >= 0 ? -EIO : ret;
 }
 
-static int intel_hdmi_hdcp_write(struct intel_digital_port *intel_dig_port,
+static int intel_hdmi_hdcp_write(struct intel_digital_port *dig_port,
 				 unsigned int offset, void *buffer, size_t size)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
-	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_hdmi *hdmi = &dig_port->hdmi;
 	struct i2c_adapter *adapter = intel_gmbus_get_adapter(i915,
 							      hdmi->ddc_bus);
 	int ret;
@@ -1338,16 +1338,16 @@ static int intel_hdmi_hdcp_write(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
+int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
 				  u8 *an)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
-	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_hdmi *hdmi = &dig_port->hdmi;
 	struct i2c_adapter *adapter = intel_gmbus_get_adapter(i915,
 							      hdmi->ddc_bus);
 	int ret;
 
-	ret = intel_hdmi_hdcp_write(intel_dig_port, DRM_HDCP_DDC_AN, an,
+	ret = intel_hdmi_hdcp_write(dig_port, DRM_HDCP_DDC_AN, an,
 				    DRM_HDCP_AN_LEN);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "Write An over DDC failed (%d)\n",
@@ -1363,13 +1363,13 @@ int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
 	return 0;
 }
 
-static int intel_hdmi_hdcp_read_bksv(struct intel_digital_port *intel_dig_port,
+static int intel_hdmi_hdcp_read_bksv(struct intel_digital_port *dig_port,
 				     u8 *bksv)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
 	int ret;
-	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BKSV, bksv,
+	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_BKSV, bksv,
 				   DRM_HDCP_KSV_LEN);
 	if (ret)
 		drm_dbg_kms(&i915->drm, "Read Bksv over DDC failed (%d)\n",
@@ -1378,13 +1378,13 @@ static int intel_hdmi_hdcp_read_bksv(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_hdmi_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
+int intel_hdmi_hdcp_read_bstatus(struct intel_digital_port *dig_port,
 				 u8 *bstatus)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
 	int ret;
-	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BSTATUS,
+	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_BSTATUS,
 				   bstatus, DRM_HDCP_BSTATUS_LEN);
 	if (ret)
 		drm_dbg_kms(&i915->drm, "Read bstatus over DDC failed (%d)\n",
@@ -1393,14 +1393,14 @@ int intel_hdmi_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_hdmi_hdcp_repeater_present(struct intel_digital_port *intel_dig_port,
+int intel_hdmi_hdcp_repeater_present(struct intel_digital_port *dig_port,
 				     bool *repeater_present)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	int ret;
 	u8 val;
 
-	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BCAPS, &val, 1);
+	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_BCAPS, &val, 1);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "Read bcaps over DDC failed (%d)\n",
 			    ret);
@@ -1411,13 +1411,13 @@ int intel_hdmi_hdcp_repeater_present(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_hdmi_hdcp_read_ri_prime(struct intel_digital_port *intel_dig_port,
+int intel_hdmi_hdcp_read_ri_prime(struct intel_digital_port *dig_port,
 				  u8 *ri_prime)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
 	int ret;
-	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_RI_PRIME,
+	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_RI_PRIME,
 				   ri_prime, DRM_HDCP_RI_LEN);
 	if (ret)
 		drm_dbg_kms(&i915->drm, "Read Ri' over DDC failed (%d)\n",
@@ -1426,14 +1426,14 @@ int intel_hdmi_hdcp_read_ri_prime(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_hdmi_hdcp_read_ksv_ready(struct intel_digital_port *intel_dig_port,
+int intel_hdmi_hdcp_read_ksv_ready(struct intel_digital_port *dig_port,
 				   bool *ksv_ready)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	int ret;
 	u8 val;
 
-	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BCAPS, &val, 1);
+	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_BCAPS, &val, 1);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "Read bcaps over DDC failed (%d)\n",
 			    ret);
@@ -1444,12 +1444,12 @@ int intel_hdmi_hdcp_read_ksv_ready(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_hdmi_hdcp_read_ksv_fifo(struct intel_digital_port *intel_dig_port,
+int intel_hdmi_hdcp_read_ksv_fifo(struct intel_digital_port *dig_port,
 				  int num_downstream, u8 *ksv_fifo)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	int ret;
-	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_KSV_FIFO,
+	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_KSV_FIFO,
 				   ksv_fifo, num_downstream * DRM_HDCP_KSV_LEN);
 	if (ret) {
 		drm_dbg_kms(&i915->drm,
@@ -1460,16 +1460,16 @@ int intel_hdmi_hdcp_read_ksv_fifo(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_hdmi_hdcp_read_v_prime_part(struct intel_digital_port *intel_dig_port,
+int intel_hdmi_hdcp_read_v_prime_part(struct intel_digital_port *dig_port,
 				      int i, u32 *part)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	int ret;
 
 	if (i >= DRM_HDCP_V_PRIME_NUM_PARTS)
 		return -EINVAL;
 
-	ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_V_PRIME(i),
+	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_V_PRIME(i),
 				   part, DRM_HDCP_V_PRIME_PART_LEN);
 	if (ret)
 		drm_dbg_kms(&i915->drm, "Read V'[%d] over DDC failed (%d)\n",
@@ -1480,7 +1480,7 @@ int intel_hdmi_hdcp_read_v_prime_part(struct intel_digital_port *intel_dig_port,
 static int kbl_repositioning_enc_en_signal(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_crtc *crtc = connector->base.state->crtc;
 	struct intel_crtc *intel_crtc = container_of(crtc,
 						     struct intel_crtc, base);
@@ -1494,13 +1494,13 @@ static int kbl_repositioning_enc_en_signal(struct intel_connector *connector)
 		usleep_range(25, 50);
 	}
 
-	ret = intel_ddi_toggle_hdcp_signalling(&intel_dig_port->base, false);
+	ret = intel_ddi_toggle_hdcp_signalling(&dig_port->base, false);
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"Disable HDCP signalling failed (%d)\n", ret);
 		return ret;
 	}
-	ret = intel_ddi_toggle_hdcp_signalling(&intel_dig_port->base, true);
+	ret = intel_ddi_toggle_hdcp_signalling(&dig_port->base, true);
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"Enable HDCP signalling failed (%d)\n", ret);
@@ -1511,10 +1511,10 @@ static int kbl_repositioning_enc_en_signal(struct intel_connector *connector)
 }
 
 static
-int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
+int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *dig_port,
 				      bool enable)
 {
-	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
+	struct intel_hdmi *hdmi = &dig_port->hdmi;
 	struct intel_connector *connector = hdmi->attached_connector;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	int ret;
@@ -1522,7 +1522,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
 	if (!enable)
 		usleep_range(6, 60); /* Bspec says >= 6us */
 
-	ret = intel_ddi_toggle_hdcp_signalling(&intel_dig_port->base, enable);
+	ret = intel_ddi_toggle_hdcp_signalling(&dig_port->base, enable);
 	if (ret) {
 		drm_err(&dev_priv->drm, "%s HDCP signalling failed (%d)\n",
 			enable ? "Enable" : "Disable", ret);
@@ -1540,12 +1540,12 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
 }
 
 static
-bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
+bool intel_hdmi_hdcp_check_link(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_connector *connector =
-		intel_dig_port->hdmi.attached_connector;
-	enum port port = intel_dig_port->base.port;
+		dig_port->hdmi.attached_connector;
+	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = connector->hdcp.cpu_transcoder;
 	int ret;
 	union {
@@ -1553,7 +1553,7 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 		u8 shim[DRM_HDCP_RI_LEN];
 	} ri;
 
-	ret = intel_hdmi_hdcp_read_ri_prime(intel_dig_port, ri.shim);
+	ret = intel_hdmi_hdcp_read_ri_prime(dig_port, ri.shim);
 	if (ret)
 		return false;
 
@@ -1586,10 +1586,10 @@ static const struct hdcp2_hdmi_msg_timeout hdcp2_msg_timeout[] = {
 };
 
 static
-int intel_hdmi_hdcp2_read_rx_status(struct intel_digital_port *intel_dig_port,
+int intel_hdmi_hdcp2_read_rx_status(struct intel_digital_port *dig_port,
 				    u8 *rx_status)
 {
-	return intel_hdmi_hdcp_read(intel_dig_port,
+	return intel_hdmi_hdcp_read(dig_port,
 				    HDCP_2_2_HDMI_REG_RXSTATUS_OFFSET,
 				    rx_status,
 				    HDCP_2_2_HDMI_RXSTATUS_LEN);
@@ -1615,15 +1615,15 @@ static int get_hdcp2_msg_timeout(u8 msg_id, bool is_paired)
 }
 
 static int
-hdcp2_detect_msg_availability(struct intel_digital_port *intel_dig_port,
+hdcp2_detect_msg_availability(struct intel_digital_port *dig_port,
 			      u8 msg_id, bool *msg_ready,
 			      ssize_t *msg_sz)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	u8 rx_status[HDCP_2_2_HDMI_RXSTATUS_LEN];
 	int ret;
 
-	ret = intel_hdmi_hdcp2_read_rx_status(intel_dig_port, rx_status);
+	ret = intel_hdmi_hdcp2_read_rx_status(dig_port, rx_status);
 	if (ret < 0) {
 		drm_dbg_kms(&i915->drm, "rx_status read failed. Err %d\n",
 			    ret);
@@ -1643,10 +1643,10 @@ hdcp2_detect_msg_availability(struct intel_digital_port *intel_dig_port,
 }
 
 static ssize_t
-intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_port *intel_dig_port,
+intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_port *dig_port,
 			      u8 msg_id, bool paired)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	bool msg_ready = false;
 	int timeout, ret;
 	ssize_t msg_sz = 0;
@@ -1655,7 +1655,7 @@ intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_port *intel_dig_port,
 	if (timeout < 0)
 		return timeout;
 
-	ret = __wait_for(ret = hdcp2_detect_msg_availability(intel_dig_port,
+	ret = __wait_for(ret = hdcp2_detect_msg_availability(dig_port,
 							     msg_id, &msg_ready,
 							     &msg_sz),
 			 !ret && msg_ready && msg_sz, timeout * 1000,
@@ -1668,26 +1668,26 @@ intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_hdmi_hdcp2_write_msg(struct intel_digital_port *intel_dig_port,
+int intel_hdmi_hdcp2_write_msg(struct intel_digital_port *dig_port,
 			       void *buf, size_t size)
 {
 	unsigned int offset;
 
 	offset = HDCP_2_2_HDMI_REG_WR_MSG_OFFSET;
-	return intel_hdmi_hdcp_write(intel_dig_port, offset, buf, size);
+	return intel_hdmi_hdcp_write(dig_port, offset, buf, size);
 }
 
 static
-int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
+int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *dig_port,
 			      u8 msg_id, void *buf, size_t size)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
-	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_hdmi *hdmi = &dig_port->hdmi;
 	struct intel_hdcp *hdcp = &hdmi->attached_connector->hdcp;
 	unsigned int offset;
 	ssize_t ret;
 
-	ret = intel_hdmi_hdcp2_wait_for_msg(intel_dig_port, msg_id,
+	ret = intel_hdmi_hdcp2_wait_for_msg(dig_port, msg_id,
 					    hdcp->is_paired);
 	if (ret < 0)
 		return ret;
@@ -1704,7 +1704,7 @@ int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
 	}
 
 	offset = HDCP_2_2_HDMI_REG_RD_MSG_OFFSET;
-	ret = intel_hdmi_hdcp_read(intel_dig_port, offset, buf, ret);
+	ret = intel_hdmi_hdcp_read(dig_port, offset, buf, ret);
 	if (ret)
 		drm_dbg_kms(&i915->drm, "Failed to read msg_id: %d(%zd)\n",
 			    msg_id, ret);
@@ -1713,12 +1713,12 @@ int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
 }
 
 static
-int intel_hdmi_hdcp2_check_link(struct intel_digital_port *intel_dig_port)
+int intel_hdmi_hdcp2_check_link(struct intel_digital_port *dig_port)
 {
 	u8 rx_status[HDCP_2_2_HDMI_RXSTATUS_LEN];
 	int ret;
 
-	ret = intel_hdmi_hdcp2_read_rx_status(intel_dig_port, rx_status);
+	ret = intel_hdmi_hdcp2_read_rx_status(dig_port, rx_status);
 	if (ret)
 		return ret;
 
@@ -1735,14 +1735,14 @@ int intel_hdmi_hdcp2_check_link(struct intel_digital_port *intel_dig_port)
 }
 
 static
-int intel_hdmi_hdcp2_capable(struct intel_digital_port *intel_dig_port,
+int intel_hdmi_hdcp2_capable(struct intel_digital_port *dig_port,
 			     bool *capable)
 {
 	u8 hdcp2_version;
 	int ret;
 
 	*capable = false;
-	ret = intel_hdmi_hdcp_read(intel_dig_port, HDCP_2_2_HDMI_REG_VER_OFFSET,
+	ret = intel_hdmi_hdcp_read(dig_port, HDCP_2_2_HDMI_REG_VER_OFFSET,
 				   &hdcp2_version, sizeof(hdcp2_version));
 	if (!ret && hdcp2_version & HDCP_2_2_HDMI_SUPPORT_MASK)
 		*capable = true;
@@ -2050,7 +2050,7 @@ static void intel_disable_hdmi(struct intel_atomic_state *state,
 	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
-	struct intel_digital_port *intel_dig_port =
+	struct intel_digital_port *dig_port =
 		hdmi_to_dig_port(intel_hdmi);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	u32 temp;
@@ -2094,7 +2094,7 @@ static void intel_disable_hdmi(struct intel_atomic_state *state,
 		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
 	}
 
-	intel_dig_port->set_infoframes(encoder,
+	dig_port->set_infoframes(encoder,
 				       false,
 				       old_crtc_state, old_conn_state);
 
@@ -2709,12 +2709,12 @@ static void intel_hdmi_pre_enable(struct intel_atomic_state *state,
 				  const struct intel_crtc_state *pipe_config,
 				  const struct drm_connector_state *conn_state)
 {
-	struct intel_digital_port *intel_dig_port =
+	struct intel_digital_port *dig_port =
 		enc_to_dig_port(encoder);
 
 	intel_hdmi_prepare(encoder, pipe_config);
 
-	intel_dig_port->set_infoframes(encoder,
+	dig_port->set_infoframes(encoder,
 				       pipe_config->has_infoframe,
 				       pipe_config, conn_state);
 }
@@ -2724,7 +2724,7 @@ static void vlv_hdmi_pre_enable(struct intel_atomic_state *state,
 				const struct intel_crtc_state *pipe_config,
 				const struct drm_connector_state *conn_state)
 {
-	struct intel_digital_port *dport = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	vlv_phy_pre_encoder_enable(encoder, pipe_config);
@@ -2733,13 +2733,13 @@ static void vlv_hdmi_pre_enable(struct intel_atomic_state *state,
 	vlv_set_phy_signal_level(encoder, 0x2b245f5f, 0x00002000, 0x5578b83a,
 				 0x2b247878);
 
-	dport->set_infoframes(encoder,
+	dig_port->set_infoframes(encoder,
 			      pipe_config->has_infoframe,
 			      pipe_config, conn_state);
 
 	g4x_enable_hdmi(state, encoder, pipe_config, conn_state);
 
-	vlv_wait_port_ready(dev_priv, dport, 0x0);
+	vlv_wait_port_ready(dev_priv, dig_port, 0x0);
 }
 
 static void vlv_hdmi_pre_pll_enable(struct intel_atomic_state *state,
@@ -2800,7 +2800,7 @@ static void chv_hdmi_pre_enable(struct intel_atomic_state *state,
 				const struct intel_crtc_state *pipe_config,
 				const struct drm_connector_state *conn_state)
 {
-	struct intel_digital_port *dport = enc_to_dig_port(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 
@@ -2810,13 +2810,13 @@ static void chv_hdmi_pre_enable(struct intel_atomic_state *state,
 	/* Use 800mV-0dB */
 	chv_set_phy_signal_level(encoder, 128, 102, false);
 
-	dport->set_infoframes(encoder,
+	dig_port->set_infoframes(encoder,
 			      pipe_config->has_infoframe,
 			      pipe_config, conn_state);
 
 	g4x_enable_hdmi(state, encoder, pipe_config, conn_state);
 
-	vlv_wait_port_ready(dev_priv, dport, 0x0);
+	vlv_wait_port_ready(dev_priv, dig_port, 0x0);
 
 	/* Second common lane will stay alive on its own now */
 	chv_phy_release_cl2_override(encoder);
@@ -2910,7 +2910,7 @@ static void
 intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
-	struct intel_digital_port *intel_dig_port =
+	struct intel_digital_port *dig_port =
 				hdmi_to_dig_port(intel_hdmi);
 
 	intel_attach_force_audio_property(connector);
@@ -2922,7 +2922,7 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *c
 	 * ToDo: This needs to be extended for LSPCON implementation
 	 * as well. Will be implemented separately.
 	 */
-	if (!intel_dig_port->lspcon.active)
+	if (!dig_port->lspcon.active)
 		intel_attach_colorspace_property(connector);
 
 	drm_connector_attach_content_type_property(connector);
@@ -3159,52 +3159,52 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 	return ddc_pin;
 }
 
-void intel_infoframe_init(struct intel_digital_port *intel_dig_port)
+void intel_infoframe_init(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *dev_priv =
-		to_i915(intel_dig_port->base.base.dev);
+		to_i915(dig_port->base.base.dev);
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		intel_dig_port->write_infoframe = vlv_write_infoframe;
-		intel_dig_port->read_infoframe = vlv_read_infoframe;
-		intel_dig_port->set_infoframes = vlv_set_infoframes;
-		intel_dig_port->infoframes_enabled = vlv_infoframes_enabled;
+		dig_port->write_infoframe = vlv_write_infoframe;
+		dig_port->read_infoframe = vlv_read_infoframe;
+		dig_port->set_infoframes = vlv_set_infoframes;
+		dig_port->infoframes_enabled = vlv_infoframes_enabled;
 	} else if (IS_G4X(dev_priv)) {
-		intel_dig_port->write_infoframe = g4x_write_infoframe;
-		intel_dig_port->read_infoframe = g4x_read_infoframe;
-		intel_dig_port->set_infoframes = g4x_set_infoframes;
-		intel_dig_port->infoframes_enabled = g4x_infoframes_enabled;
+		dig_port->write_infoframe = g4x_write_infoframe;
+		dig_port->read_infoframe = g4x_read_infoframe;
+		dig_port->set_infoframes = g4x_set_infoframes;
+		dig_port->infoframes_enabled = g4x_infoframes_enabled;
 	} else if (HAS_DDI(dev_priv)) {
-		if (intel_dig_port->lspcon.active) {
-			intel_dig_port->write_infoframe = lspcon_write_infoframe;
-			intel_dig_port->read_infoframe = lspcon_read_infoframe;
-			intel_dig_port->set_infoframes = lspcon_set_infoframes;
-			intel_dig_port->infoframes_enabled = lspcon_infoframes_enabled;
+		if (dig_port->lspcon.active) {
+			dig_port->write_infoframe = lspcon_write_infoframe;
+			dig_port->read_infoframe = lspcon_read_infoframe;
+			dig_port->set_infoframes = lspcon_set_infoframes;
+			dig_port->infoframes_enabled = lspcon_infoframes_enabled;
 		} else {
-			intel_dig_port->write_infoframe = hsw_write_infoframe;
-			intel_dig_port->read_infoframe = hsw_read_infoframe;
-			intel_dig_port->set_infoframes = hsw_set_infoframes;
-			intel_dig_port->infoframes_enabled = hsw_infoframes_enabled;
+			dig_port->write_infoframe = hsw_write_infoframe;
+			dig_port->read_infoframe = hsw_read_infoframe;
+			dig_port->set_infoframes = hsw_set_infoframes;
+			dig_port->infoframes_enabled = hsw_infoframes_enabled;
 		}
 	} else if (HAS_PCH_IBX(dev_priv)) {
-		intel_dig_port->write_infoframe = ibx_write_infoframe;
-		intel_dig_port->read_infoframe = ibx_read_infoframe;
-		intel_dig_port->set_infoframes = ibx_set_infoframes;
-		intel_dig_port->infoframes_enabled = ibx_infoframes_enabled;
+		dig_port->write_infoframe = ibx_write_infoframe;
+		dig_port->read_infoframe = ibx_read_infoframe;
+		dig_port->set_infoframes = ibx_set_infoframes;
+		dig_port->infoframes_enabled = ibx_infoframes_enabled;
 	} else {
-		intel_dig_port->write_infoframe = cpt_write_infoframe;
-		intel_dig_port->read_infoframe = cpt_read_infoframe;
-		intel_dig_port->set_infoframes = cpt_set_infoframes;
-		intel_dig_port->infoframes_enabled = cpt_infoframes_enabled;
+		dig_port->write_infoframe = cpt_write_infoframe;
+		dig_port->read_infoframe = cpt_read_infoframe;
+		dig_port->set_infoframes = cpt_set_infoframes;
+		dig_port->infoframes_enabled = cpt_infoframes_enabled;
 	}
 }
 
-void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
+void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 			       struct intel_connector *intel_connector)
 {
 	struct drm_connector *connector = &intel_connector->base;
-	struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
-	struct intel_encoder *intel_encoder = &intel_dig_port->base;
+	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
+	struct intel_encoder *intel_encoder = &dig_port->base;
 	struct drm_device *dev = intel_encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct i2c_adapter *ddc;
@@ -3218,9 +3218,9 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
 	if (INTEL_GEN(dev_priv) < 12 && drm_WARN_ON(dev, port == PORT_A))
 		return;
 
-	if (drm_WARN(dev, intel_dig_port->max_lanes < 4,
+	if (drm_WARN(dev, dig_port->max_lanes < 4,
 		     "Not enough lanes (%d) for HDMI on [ENCODER:%d:%s]\n",
-		     intel_dig_port->max_lanes, intel_encoder->base.base.id,
+		     dig_port->max_lanes, intel_encoder->base.base.id,
 		     intel_encoder->base.name))
 		return;
 
@@ -3309,21 +3309,21 @@ intel_hdmi_hotplug(struct intel_encoder *encoder,
 void intel_hdmi_init(struct drm_i915_private *dev_priv,
 		     i915_reg_t hdmi_reg, enum port port)
 {
-	struct intel_digital_port *intel_dig_port;
+	struct intel_digital_port *dig_port;
 	struct intel_encoder *intel_encoder;
 	struct intel_connector *intel_connector;
 
-	intel_dig_port = kzalloc(sizeof(*intel_dig_port), GFP_KERNEL);
-	if (!intel_dig_port)
+	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
+	if (!dig_port)
 		return;
 
 	intel_connector = intel_connector_alloc();
 	if (!intel_connector) {
-		kfree(intel_dig_port);
+		kfree(dig_port);
 		return;
 	}
 
-	intel_encoder = &intel_dig_port->base;
+	intel_encoder = &dig_port->base;
 
 	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
 			 &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
@@ -3380,12 +3380,12 @@ void intel_hdmi_init(struct drm_i915_private *dev_priv,
 	if (IS_G4X(dev_priv))
 		intel_encoder->cloneable |= 1 << INTEL_OUTPUT_HDMI;
 
-	intel_dig_port->hdmi.hdmi_reg = hdmi_reg;
-	intel_dig_port->dp.output_reg = INVALID_MMIO_REG;
-	intel_dig_port->max_lanes = 4;
+	dig_port->hdmi.hdmi_reg = hdmi_reg;
+	dig_port->dp.output_reg = INVALID_MMIO_REG;
+	dig_port->max_lanes = 4;
 
-	intel_infoframe_init(intel_dig_port);
+	intel_infoframe_init(dig_port);
 
-	intel_dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
-	intel_hdmi_init_connector(intel_dig_port, intel_connector);
+	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
+	intel_hdmi_init_connector(dig_port, intel_connector);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 8ff1f76a63df..213ff24befde 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -25,7 +25,7 @@ enum port;
 
 void intel_hdmi_init(struct drm_i915_private *dev_priv, i915_reg_t hdmi_reg,
 		     enum port port);
-void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
+void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 			       struct intel_connector *intel_connector);
 struct intel_hdmi *enc_to_intel_hdmi(struct intel_encoder *encoder);
 int intel_hdmi_compute_config(struct intel_encoder *encoder,
@@ -36,7 +36,7 @@ bool intel_hdmi_handle_sink_scrambling(struct intel_encoder *encoder,
 				       bool high_tmds_clock_ratio,
 				       bool scrambling);
 void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool enable);
-void intel_infoframe_init(struct intel_digital_port *intel_dig_port);
+void intel_infoframe_init(struct intel_digital_port *dig_port);
 u32 intel_hdmi_infoframes_enabled(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state);
 u32 intel_hdmi_infoframe_enable(unsigned int type);
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 6ff7b226f0a1..b781bf469644 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -550,11 +550,11 @@ void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
 	lspcon_wait_mode(lspcon, DRM_LSPCON_MODE_PCON);
 }
 
-bool lspcon_init(struct intel_digital_port *intel_dig_port)
+bool lspcon_init(struct intel_digital_port *dig_port)
 {
-	struct intel_dp *dp = &intel_dig_port->dp;
-	struct intel_lspcon *lspcon = &intel_dig_port->lspcon;
-	struct drm_device *dev = intel_dig_port->base.base.dev;
+	struct intel_dp *dp = &dig_port->dp;
+	struct intel_lspcon *lspcon = &dig_port->lspcon;
+	struct drm_device *dev = dig_port->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_connector *connector = &dp->attached_connector->base;
 
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index 37cfddf8a9c5..1cffe8a42a08 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -15,7 +15,7 @@ struct intel_digital_port;
 struct intel_encoder;
 struct intel_lspcon;
 
-bool lspcon_init(struct intel_digital_port *intel_dig_port);
+bool lspcon_init(struct intel_digital_port *dig_port);
 void lspcon_resume(struct intel_lspcon *lspcon);
 void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
 void lspcon_write_infoframe(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 86bf7a76f93d..78762627a8ba 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -905,8 +905,8 @@ static void intel_psr_enable_locked(struct drm_i915_private *dev_priv,
 				    const struct drm_connector_state *conn_state)
 {
 	struct intel_dp *intel_dp = dev_priv->psr.dp;
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *encoder = &intel_dig_port->base;
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
 	u32 val;
 
 	drm_WARN_ON(&dev_priv->drm, dev_priv->psr.enabled);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index d145fe2bed81..c5735c365659 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1045,7 +1045,7 @@ static void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	struct drm_dsc_pps_infoframe dp_dsc_pps_sdp;
 
@@ -1055,9 +1055,9 @@ static void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 	/* Fill the PPS payload bytes as per DSC spec 1.2 Table 4-1 */
 	drm_dsc_pps_payload_pack(&dp_dsc_pps_sdp.pps_payload, vdsc_cfg);
 
-	intel_dig_port->write_infoframe(encoder, crtc_state,
-					DP_SDP_PPS, &dp_dsc_pps_sdp,
-					sizeof(dp_dsc_pps_sdp));
+	dig_port->write_infoframe(encoder, crtc_state,
+				  DP_SDP_PPS, &dp_dsc_pps_sdp,
+				  sizeof(dp_dsc_pps_sdp));
 }
 
 void intel_dsc_enable(struct intel_encoder *encoder,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
