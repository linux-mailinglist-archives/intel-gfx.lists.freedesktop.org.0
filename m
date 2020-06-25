Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 195F7209779
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 02:11:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 094F96E895;
	Thu, 25 Jun 2020 00:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81AE66E892
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:11:32 +0000 (UTC)
IronPort-SDR: O0Mn8ILqYc0r/PDyf6EfaihGlOlSXwniY2Ztjan/RQOX0Z67ANjHzcG+jppy9wCTKGKWBd52im
 WIkAdTwDxffg==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="229392925"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="229392925"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 17:11:31 -0700
IronPort-SDR: ksmwIUM/6DsYuGqhuA6RAxoCnipde2jfNpam03t6lyAbpJYNlMnFICE/InaYne/wL/XJFYAYmj
 x/Tg87s2dSUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="310949044"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 24 Jun 2020 17:11:30 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jun 2020 17:11:20 -0700
Message-Id: <20200625001120.22810-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200625001120.22810-1-lucas.demarchi@intel.com>
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915/display: replace port to phy
 conversions in intel_ddi.c
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

This is the first level conversion to use port_info directly from
intel_digital_port, rather than derive the phy or tc_port from the port.
This touches only the functions which have the encoder or dig_port
directly available.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 158 +++++++++++------------
 1 file changed, 77 insertions(+), 81 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 27e2f29f47a2..aa0b478ab54a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1061,11 +1061,11 @@ tgl_get_dkl_buf_trans(struct drm_i915_private *dev_priv, int type, int rate,
 static int intel_ddi_hdmi_level(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	int n_entries, level, default_entry;
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 
 	if (INTEL_GEN(dev_priv) >= 12) {
-		if (intel_phy_is_combo(dev_priv, phy))
+		if (intel_ddi_has_combo_phy(dig_port))
 			tgl_get_combo_buf_trans(dev_priv, INTEL_OUTPUT_HDMI,
 						0, &n_entries);
 		else
@@ -1073,7 +1073,7 @@ static int intel_ddi_hdmi_level(struct intel_encoder *encoder)
 					      &n_entries);
 		default_entry = n_entries - 1;
 	} else if (INTEL_GEN(dev_priv) == 11) {
-		if (intel_phy_is_combo(dev_priv, phy))
+		if (intel_ddi_has_combo_phy(dig_port))
 			icl_get_combo_buf_trans(dev_priv, INTEL_OUTPUT_HDMI,
 						0, &n_entries);
 		else
@@ -1453,9 +1453,9 @@ static void intel_ddi_clock_get(struct intel_encoder *encoder,
 				struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
-	if (intel_phy_is_tc(dev_priv, phy) &&
+	if (intel_ddi_has_tc_phy(dig_port) &&
 	    intel_get_shared_dpll_id(dev_priv, pipe_config->shared_dpll) ==
 	    DPLL_ID_ICL_TBTPLL)
 		pipe_config->port_clock = icl_calc_tbt_pll_link(dev_priv,
@@ -1983,7 +1983,6 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port;
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 
 	/*
 	 * TODO: Add support for MST encoders. Atm, the following should never
@@ -1996,7 +1995,7 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 
 	dig_port = enc_to_dig_port(encoder);
 
-	if (!intel_phy_is_tc(dev_priv, phy) ||
+	if (!intel_ddi_has_tc_phy(dig_port) ||
 	    dig_port->tc_mode != TC_PORT_TBT_ALT)
 		intel_display_power_get(dev_priv,
 					dig_port->ddi_io_power_domain);
@@ -2006,7 +2005,7 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 	 * ports.
 	 */
 	if (intel_crtc_has_dp_encoder(crtc_state) ||
-	    intel_phy_is_tc(dev_priv, phy))
+	    intel_ddi_has_tc_phy(dig_port))
 		intel_display_power_get(dev_priv,
 					intel_ddi_main_link_aux_domain(dig_port));
 
@@ -2142,14 +2141,14 @@ static void bxt_ddi_vswing_sequence(struct intel_encoder *encoder,
 
 static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
 	int n_entries;
 
 	if (INTEL_GEN(dev_priv) >= 12) {
-		if (intel_phy_is_combo(dev_priv, phy))
+		if (intel_ddi_has_tc_phy(dig_port))
 			tgl_get_combo_buf_trans(dev_priv, encoder->type,
 						intel_dp->link_rate, &n_entries);
 		else
@@ -2159,7 +2158,7 @@ static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp)
 		if (IS_ELKHARTLAKE(dev_priv))
 			ehl_get_combo_buf_trans(dev_priv, encoder->type,
 						intel_dp->link_rate, &n_entries);
-		else if (intel_phy_is_combo(dev_priv, phy))
+		if (intel_ddi_has_tc_phy(dig_port))
 			icl_get_combo_buf_trans(dev_priv, encoder->type,
 						intel_dp->link_rate, &n_entries);
 		else
@@ -2402,8 +2401,9 @@ static void icl_combo_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 					      u32 level,
 					      enum intel_output_type type)
 {
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	u8 phy = dig_port->port_info->phy_idx;
 	int width = 0;
 	int rate = 0;
 	u32 val;
@@ -2473,7 +2473,8 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 					   enum intel_output_type type)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	u8 phy = dig_port->port_info->phy_idx;
 	const struct icl_mg_phy_ddi_buf_trans *ddi_translations;
 	u32 n_entries, val;
 	int ln, rate = 0;
@@ -2496,33 +2497,33 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 
 	/* Set MG_TX_LINK_PARAMS cri_use_fs32 to 0. */
 	for (ln = 0; ln < 2; ln++) {
-		val = intel_de_read(dev_priv, MG_TX1_LINK_PARAMS(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX1_LINK_PARAMS(ln, phy));
 		val &= ~CRI_USE_FS32;
-		intel_de_write(dev_priv, MG_TX1_LINK_PARAMS(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX1_LINK_PARAMS(ln, phy), val);
 
-		val = intel_de_read(dev_priv, MG_TX2_LINK_PARAMS(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX2_LINK_PARAMS(ln, phy));
 		val &= ~CRI_USE_FS32;
-		intel_de_write(dev_priv, MG_TX2_LINK_PARAMS(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX2_LINK_PARAMS(ln, phy), val);
 	}
 
 	/* Program MG_TX_SWINGCTRL with values from vswing table */
 	for (ln = 0; ln < 2; ln++) {
-		val = intel_de_read(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX1_SWINGCTRL(ln, phy));
 		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
 		val |= CRI_TXDEEMPH_OVERRIDE_17_12(
 			ddi_translations[level].cri_txdeemph_override_17_12);
-		intel_de_write(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX1_SWINGCTRL(ln, phy), val);
 
-		val = intel_de_read(dev_priv, MG_TX2_SWINGCTRL(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX2_SWINGCTRL(ln, phy));
 		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
 		val |= CRI_TXDEEMPH_OVERRIDE_17_12(
 			ddi_translations[level].cri_txdeemph_override_17_12);
-		intel_de_write(dev_priv, MG_TX2_SWINGCTRL(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX2_SWINGCTRL(ln, phy), val);
 	}
 
 	/* Program MG_TX_DRVCTRL with values from vswing table */
 	for (ln = 0; ln < 2; ln++) {
-		val = intel_de_read(dev_priv, MG_TX1_DRVCTRL(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX1_DRVCTRL(ln, phy));
 		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
 			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
 		val |= CRI_TXDEEMPH_OVERRIDE_5_0(
@@ -2530,9 +2531,9 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 			CRI_TXDEEMPH_OVERRIDE_11_6(
 				ddi_translations[level].cri_txdeemph_override_11_6) |
 			CRI_TXDEEMPH_OVERRIDE_EN;
-		intel_de_write(dev_priv, MG_TX1_DRVCTRL(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX1_DRVCTRL(ln, phy), val);
 
-		val = intel_de_read(dev_priv, MG_TX2_DRVCTRL(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX2_DRVCTRL(ln, phy));
 		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
 			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
 		val |= CRI_TXDEEMPH_OVERRIDE_5_0(
@@ -2540,7 +2541,7 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 			CRI_TXDEEMPH_OVERRIDE_11_6(
 				ddi_translations[level].cri_txdeemph_override_11_6) |
 			CRI_TXDEEMPH_OVERRIDE_EN;
-		intel_de_write(dev_priv, MG_TX2_DRVCTRL(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX2_DRVCTRL(ln, phy), val);
 
 		/* FIXME: Program CRI_LOADGEN_SEL after the spec is updated */
 	}
@@ -2551,17 +2552,17 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 	 * values from table for which TX1 and TX2 enabled.
 	 */
 	for (ln = 0; ln < 2; ln++) {
-		val = intel_de_read(dev_priv, MG_CLKHUB(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_CLKHUB(ln, phy));
 		if (link_clock < 300000)
 			val |= CFG_LOW_RATE_LKREN_EN;
 		else
 			val &= ~CFG_LOW_RATE_LKREN_EN;
-		intel_de_write(dev_priv, MG_CLKHUB(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_CLKHUB(ln, phy), val);
 	}
 
 	/* Program the MG_TX_DCC<LN, port being used> based on the link frequency */
 	for (ln = 0; ln < 2; ln++) {
-		val = intel_de_read(dev_priv, MG_TX1_DCC(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX1_DCC(ln, phy));
 		val &= ~CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK;
 		if (link_clock <= 500000) {
 			val &= ~CFG_AMI_CK_DIV_OVERRIDE_EN;
@@ -2569,9 +2570,9 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 			val |= CFG_AMI_CK_DIV_OVERRIDE_EN |
 				CFG_AMI_CK_DIV_OVERRIDE_VAL(1);
 		}
-		intel_de_write(dev_priv, MG_TX1_DCC(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX1_DCC(ln, phy), val);
 
-		val = intel_de_read(dev_priv, MG_TX2_DCC(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX2_DCC(ln, phy));
 		val &= ~CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK;
 		if (link_clock <= 500000) {
 			val &= ~CFG_AMI_CK_DIV_OVERRIDE_EN;
@@ -2579,21 +2580,21 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 			val |= CFG_AMI_CK_DIV_OVERRIDE_EN |
 				CFG_AMI_CK_DIV_OVERRIDE_VAL(1);
 		}
-		intel_de_write(dev_priv, MG_TX2_DCC(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX2_DCC(ln, phy), val);
 	}
 
 	/* Program MG_TX_PISO_READLOAD with values from vswing table */
 	for (ln = 0; ln < 2; ln++) {
 		val = intel_de_read(dev_priv,
-				    MG_TX1_PISO_READLOAD(ln, tc_port));
+				    MG_TX1_PISO_READLOAD(ln, phy));
 		val |= CRI_CALCINIT;
-		intel_de_write(dev_priv, MG_TX1_PISO_READLOAD(ln, tc_port),
+		intel_de_write(dev_priv, MG_TX1_PISO_READLOAD(ln, phy),
 			       val);
 
 		val = intel_de_read(dev_priv,
-				    MG_TX2_PISO_READLOAD(ln, tc_port));
+				    MG_TX2_PISO_READLOAD(ln, phy));
 		val |= CRI_CALCINIT;
-		intel_de_write(dev_priv, MG_TX2_PISO_READLOAD(ln, tc_port),
+		intel_de_write(dev_priv, MG_TX2_PISO_READLOAD(ln, phy),
 			       val);
 	}
 }
@@ -2603,10 +2604,9 @@ static void icl_ddi_vswing_sequence(struct intel_encoder *encoder,
 				    u32 level,
 				    enum intel_output_type type)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
-	if (intel_phy_is_combo(dev_priv, phy))
+	if (intel_ddi_has_combo_phy(dig_port))
 		icl_combo_phy_ddi_vswing_sequence(encoder, level, type);
 	else
 		icl_mg_phy_ddi_vswing_sequence(encoder, link_clock, level,
@@ -2618,7 +2618,8 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder, int link_clock,
 				u32 level, enum intel_output_type type)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	u8 phy = dig_port->port_info->phy_idx;
 	const struct tgl_dkl_phy_ddi_buf_trans *ddi_translations;
 	u32 n_entries, val, ln, dpcnt_mask, dpcnt_val;
 	int rate = 0;
@@ -2643,25 +2644,25 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder, int link_clock,
 	dpcnt_val |= DKL_TX_PRESHOOT_COEFF(ddi_translations[level].dkl_preshoot_control);
 
 	for (ln = 0; ln < 2; ln++) {
-		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
-			       HIP_INDEX_VAL(tc_port, ln));
+		intel_de_write(dev_priv, HIP_INDEX_REG(phy),
+			       HIP_INDEX_VAL(phy, ln));
 
-		intel_de_write(dev_priv, DKL_TX_PMD_LANE_SUS(tc_port), 0);
+		intel_de_write(dev_priv, DKL_TX_PMD_LANE_SUS(phy), 0);
 
 		/* All the registers are RMW */
-		val = intel_de_read(dev_priv, DKL_TX_DPCNTL0(tc_port));
+		val = intel_de_read(dev_priv, DKL_TX_DPCNTL0(phy));
 		val &= ~dpcnt_mask;
 		val |= dpcnt_val;
-		intel_de_write(dev_priv, DKL_TX_DPCNTL0(tc_port), val);
+		intel_de_write(dev_priv, DKL_TX_DPCNTL0(phy), val);
 
-		val = intel_de_read(dev_priv, DKL_TX_DPCNTL1(tc_port));
+		val = intel_de_read(dev_priv, DKL_TX_DPCNTL1(phy));
 		val &= ~dpcnt_mask;
 		val |= dpcnt_val;
-		intel_de_write(dev_priv, DKL_TX_DPCNTL1(tc_port), val);
+		intel_de_write(dev_priv, DKL_TX_DPCNTL1(phy), val);
 
-		val = intel_de_read(dev_priv, DKL_TX_DPCNTL2(tc_port));
+		val = intel_de_read(dev_priv, DKL_TX_DPCNTL2(phy));
 		val &= ~DKL_TX_DP20BITMODE;
-		intel_de_write(dev_priv, DKL_TX_DPCNTL2(tc_port), val);
+		intel_de_write(dev_priv, DKL_TX_DPCNTL2(phy), val);
 	}
 }
 
@@ -2670,10 +2671,9 @@ static void tgl_ddi_vswing_sequence(struct intel_encoder *encoder,
 				    u32 level,
 				    enum intel_output_type type)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
-	if (intel_phy_is_combo(dev_priv, phy))
+	if (intel_ddi_has_combo_phy(dig_port))
 		icl_combo_phy_ddi_vswing_sequence(encoder, level, type);
 	else
 		tgl_dkl_phy_ddi_vswing_sequence(encoder, link_clock, level, type);
@@ -2786,8 +2786,9 @@ static void icl_map_plls_to_ports(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	u8 phy = dig_port->port_info->phy_idx;
 	u32 val;
 
 	mutex_lock(&dev_priv->dpll.lock);
@@ -2796,7 +2797,7 @@ static void icl_map_plls_to_ports(struct intel_encoder *encoder,
 	drm_WARN_ON(&dev_priv->drm,
 		    (val & icl_dpclka_cfgcr0_clk_off(dev_priv, phy)) == 0);
 
-	if (intel_phy_is_combo(dev_priv, phy)) {
+	if (intel_ddi_has_combo_phy(dig_port)) {
 		/*
 		 * Even though this register references DDIs, note that we
 		 * want to pass the PHY rather than the port (DDI).  For
@@ -2822,7 +2823,8 @@ static void icl_map_plls_to_ports(struct intel_encoder *encoder,
 static void icl_unmap_plls_to_ports(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	u8 phy = dig_port->port_info->phy_idx;
 	u32 val;
 
 	mutex_lock(&dev_priv->dpll.lock);
@@ -2923,10 +2925,10 @@ static void intel_ddi_clk_select(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
 	u32 val;
-	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 
 	if (drm_WARN_ON(&dev_priv->drm, !pll))
 		return;
@@ -2934,7 +2936,7 @@ static void intel_ddi_clk_select(struct intel_encoder *encoder,
 	mutex_lock(&dev_priv->dpll.lock);
 
 	if (INTEL_GEN(dev_priv) >= 11) {
-		if (!intel_phy_is_combo(dev_priv, phy))
+		if (intel_ddi_has_combo_phy(dig_port))
 			intel_de_write(dev_priv, DDI_CLK_SEL(port),
 				       icl_pll_to_ddi_clk_sel(encoder, crtc_state));
 		else if (IS_ELKHARTLAKE(dev_priv) && port >= PORT_C)
@@ -2981,11 +2983,11 @@ static void intel_ddi_clk_select(struct intel_encoder *encoder,
 static void intel_ddi_clk_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
 
 	if (INTEL_GEN(dev_priv) >= 11) {
-		if (!intel_phy_is_combo(dev_priv, phy) ||
+		if (!intel_ddi_has_combo_phy(dig_port) ||
 		    (IS_ELKHARTLAKE(dev_priv) && port >= PORT_C))
 			intel_de_write(dev_priv, DDI_CLK_SEL(port),
 				       DDI_CLK_SEL_NONE);
@@ -3150,8 +3152,8 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	u8 phy = dig_port->port_info->phy_idx;
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	int level = intel_ddi_dp_level(intel_dp);
 	enum transcoder transcoder = crtc_state->cpu_transcoder;
@@ -3190,7 +3192,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	intel_ddi_clk_select(encoder, crtc_state);
 
 	/* 5. If IO power is controlled through PWR_WELL_CTL, Enable IO Power */
-	if (!intel_phy_is_tc(dev_priv, phy) ||
+	if (!intel_ddi_has_tc_phy(dig_port) ||
 	    dig_port->tc_mode != TC_PORT_TBT_ALT)
 		intel_display_power_get(dev_priv,
 					dig_port->ddi_io_power_domain);
@@ -3236,7 +3238,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 * 7.f Combo PHY: Configure PORT_CL_DW10 Static Power Down to power up
 	 * the used lanes of the DDI.
 	 */
-	if (intel_phy_is_combo(dev_priv, phy)) {
+	if (intel_ddi_has_combo_phy(dig_port)) {
 		bool lane_reversal =
 			dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
 
@@ -3292,8 +3294,8 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	u8 phy = dig_port->port_info->phy_idx;
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	int level = intel_ddi_dp_level(intel_dp);
 
@@ -3310,7 +3312,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_clk_select(encoder, crtc_state);
 
-	if (!intel_phy_is_tc(dev_priv, phy) ||
+	if (!intel_ddi_has_tc_phy(dig_port) ||
 	    dig_port->tc_mode != TC_PORT_TBT_ALT)
 		intel_display_power_get(dev_priv,
 					dig_port->ddi_io_power_domain);
@@ -3327,7 +3329,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	else
 		intel_prepare_dp_ddi_buffers(encoder, crtc_state);
 
-	if (intel_phy_is_combo(dev_priv, phy)) {
+	if (intel_ddi_has_combo_phy(dig_port)) {
 		bool lane_reversal =
 			dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
 
@@ -3508,7 +3510,6 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	struct intel_dp *intel_dp = &dig_port->dp;
 	bool is_mst = intel_crtc_has_type(old_crtc_state,
 					  INTEL_OUTPUT_DP_MST);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 
 	if (!is_mst)
 		intel_dp_set_infoframes(encoder, false,
@@ -3551,7 +3552,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	intel_edp_panel_vdd_on(intel_dp);
 	intel_edp_panel_off(intel_dp);
 
-	if (!intel_phy_is_tc(dev_priv, phy) ||
+	if (!intel_ddi_has_tc_phy(dig_port) ||
 	    dig_port->tc_mode != TC_PORT_TBT_ALT)
 		intel_display_power_put_unchecked(dev_priv,
 						  dig_port->ddi_io_power_domain);
@@ -3590,8 +3591,6 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
-	bool is_tc_port = intel_phy_is_tc(dev_priv, phy);
 
 	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
 		intel_crtc_vblank_off(old_crtc_state);
@@ -3631,11 +3630,12 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 	if (INTEL_GEN(dev_priv) >= 11)
 		icl_unmap_plls_to_ports(encoder);
 
-	if (intel_crtc_has_dp_encoder(old_crtc_state) || is_tc_port)
+	if (intel_crtc_has_dp_encoder(old_crtc_state) ||
+	    intel_ddi_has_tc_phy(dig_port))
 		intel_display_power_put_unchecked(dev_priv,
 						  intel_ddi_main_link_aux_domain(dig_port));
 
-	if (is_tc_port)
+	if (intel_ddi_has_tc_phy(dig_port))
 		intel_tc_port_put_link(dig_port);
 }
 
@@ -3958,17 +3958,16 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
-	bool is_tc_port = intel_phy_is_tc(dev_priv, phy);
 
-	if (is_tc_port)
+	if (intel_ddi_has_tc_phy(dig_port))
 		intel_tc_port_get_link(dig_port, crtc_state->lane_count);
 
-	if (intel_crtc_has_dp_encoder(crtc_state) || is_tc_port)
+	if (intel_crtc_has_dp_encoder(crtc_state) || intel_ddi_has_tc_phy(dig_port))
 		intel_display_power_get(dev_priv,
 					intel_ddi_main_link_aux_domain(dig_port));
 
-	if (is_tc_port && dig_port->tc_mode != TC_PORT_TBT_ALT)
+	if (intel_ddi_has_tc_phy(dig_port) &&
+	    dig_port->tc_mode != TC_PORT_TBT_ALT)
 		/*
 		 * Program the lane count for static/dynamic connections on
 		 * Type-C ports.  Skip this step for TBT.
@@ -4682,10 +4681,7 @@ static enum intel_hotplug_state
 intel_ddi_hotplug(struct intel_encoder *encoder,
 		  struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-	bool is_tc = intel_phy_is_tc(i915, phy);
 	struct drm_modeset_acquire_ctx ctx;
 	enum intel_hotplug_state state;
 	int ret;
@@ -4736,7 +4732,7 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 	 * connectors to account for this delay.
 	 */
 	if (state == INTEL_HOTPLUG_UNCHANGED &&
-	    connector->hotplug_retries < (is_tc ? 5 : 1) &&
+	    connector->hotplug_retries < (intel_ddi_has_tc_phy(dig_port) ? 5 : 1) &&
 	    !dig_port->dp.is_mst)
 		state = INTEL_HOTPLUG_RETRY;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
