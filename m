Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C24CC1A14
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:46:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E94B10E78A;
	Tue, 16 Dec 2025 08:46:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZAU23Wnx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F4DB10E78A;
 Tue, 16 Dec 2025 08:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765874804; x=1797410804;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SzI9Pi3sxx/Q7xsyj30twTpkYEnsX4xW5p+TUPqKvcg=;
 b=ZAU23WnxkF1D5uyDjVntICiCU7k6XiYD3stNxlKq1eQJm6xe5sC5zH8N
 /Edy6jlhSQ2P1nzmMRWLQvK9IQj8gB/UlPL5gXhZwc8vN6Zeq3CkSuIEi
 cOaqvH1/bwyDaHuP38LHqcNTKGCnofU/dBomqTFkup+M554kgL/g2FAnL
 3lBrw3LJ6nLRP4nZVG2NrKqs+6F8UYkMTnI1JKb0NPDPPo3H4uZS8Qady
 1ZqSZBbt0LHuHW7H6aYFOoO8/Ekce2ajrT8WHR0tWKL1avyfy1C3B93fb
 Xe4HEdz/vfYwZaTMbJLO1oBYSrL7aA5mja62ssQNJKfh+jT06LyhDy62Q Q==;
X-CSE-ConnectionGUID: FDxj3wrXRrS8V5k4S7XU9w==
X-CSE-MsgGUID: V2teKGZZTOujA8GIvjWP9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71642300"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="71642300"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:46:44 -0800
X-CSE-ConnectionGUID: 0xfGl5XnSb+ZX8lh4RjhIQ==
X-CSE-MsgGUID: ZxPi/qjUQdGXcTx3Pa50Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="198448761"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa009.fm.intel.com with ESMTP; 16 Dec 2025 00:46:42 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 03/13] drm/i915/display: Drop crtc_state from clock calculation
Date: Tue, 16 Dec 2025 10:37:49 +0200
Message-Id: <20251216083759.383163-4-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216083759.383163-1-mika.kahola@intel.com>
References: <20251216083759.383163-1-mika.kahola@intel.com>
MIME-Version: 1.0
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

Drop crtc_state from intel_lt_phy_calc_port_clock() function call
and replace it with pll state instead.

While at it drop crtc_state from hdmi tmds calculation as well.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 47 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_ddi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 17 +++----
 drivers/gpu/drm/i915/display/intel_lt_phy.h  |  2 +-
 5 files changed, 34 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 1deb865618b7..4cf4b49d1cab 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2414,9 +2414,8 @@ static bool is_arrowlake_s_by_host_bridge(void)
 	return pdev && IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(host_bridge_pci_dev_id);
 }
 
-static u16 intel_c20_hdmi_tmds_tx_cgf_1(const struct intel_crtc_state *crtc_state)
+static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_display *display)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
 	u16 tx_misc;
 	u16 tx_dcc_cal_dac_ctrl_range = 8;
 	u16 tx_term_ctrl = 2;
@@ -2438,7 +2437,8 @@ static u16 intel_c20_hdmi_tmds_tx_cgf_1(const struct intel_crtc_state *crtc_stat
 		C20_PHY_TX_DCC_BYPASS | C20_PHY_TX_TERM_CTL(tx_term_ctrl));
 }
 
-static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state *crtc_state,
+static int intel_c20_compute_hdmi_tmds_pll(struct intel_display *display,
+					   int port_clock,
 					   struct intel_c20pll_state *pll_state)
 {
 	u64 datarate;
@@ -2452,10 +2452,10 @@ static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state *crtc_s
 	u8  mpllb_ana_freq_vco;
 	u8  mpll_div_multiplier;
 
-	if (crtc_state->port_clock < 25175 || crtc_state->port_clock > 600000)
+	if (port_clock < 25175 || port_clock > 600000)
 		return -EINVAL;
 
-	datarate = ((u64)crtc_state->port_clock * 1000) * 10;
+	datarate = ((u64)port_clock * 1000) * 10;
 	mpll_tx_clk_div = ilog2(div64_u64((u64)CLOCK_9999MHZ, (u64)datarate));
 	vco_freq_shift = ilog2(div64_u64((u64)CLOCK_4999MHZ * (u64)256, (u64)datarate));
 	vco_freq = (datarate << vco_freq_shift) >> 8;
@@ -2477,9 +2477,9 @@ static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state *crtc_s
 	else
 		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_0;
 
-	pll_state->clock	= crtc_state->port_clock;
+	pll_state->clock	= port_clock;
 	pll_state->tx[0]	= 0xbe88;
-	pll_state->tx[1]	= intel_c20_hdmi_tmds_tx_cgf_1(crtc_state);
+	pll_state->tx[1]	= intel_c20_hdmi_tmds_tx_cgf_1(display);
 	pll_state->tx[2]	= 0x0000;
 	pll_state->cmn[0]	= 0x0500;
 	pll_state->cmn[1]	= 0x0005;
@@ -2506,15 +2506,12 @@ static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state *crtc_s
 
 	return 0;
 }
-
 static const struct intel_c20pll_state * const *
-intel_c20_pll_tables_get(const struct intel_crtc_state *crtc_state,
+intel_c20_pll_tables_get(struct intel_display *display,
 			 struct intel_encoder *encoder)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-
-	if (intel_crtc_has_dp_encoder(crtc_state)) {
-		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+	if (intel_encoder_is_dp(encoder) || encoder->type == INTEL_OUTPUT_DP_MST) {
+		if (encoder->type == INTEL_OUTPUT_EDP) {
 			if (DISPLAY_RUNTIME_INFO(display)->edp_typec_support)
 				return xe3lpd_c20_dp_edp_tables;
 			if (DISPLAY_VERx100(display) == 1401)
@@ -2528,7 +2525,7 @@ intel_c20_pll_tables_get(const struct intel_crtc_state *crtc_state,
 		else
 			return mtl_c20_dp_tables;
 
-	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+	} else if (intel_encoder_is_hdmi(encoder)) {
 		return mtl_c20_hdmi_tables;
 	}
 
@@ -2676,36 +2673,38 @@ static void intel_c20_program_vdr_params(struct intel_encoder *encoder,
 }
 
 static const struct intel_c20pll_state *
-intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
-			 struct intel_encoder *encoder)
+intel_c20_pll_find_table(struct intel_display *display,
+			 struct intel_encoder *encoder,
+			 int port_clock)
 {
 	const struct intel_c20pll_state * const *tables;
 	int i;
 
-	tables = intel_c20_pll_tables_get(crtc_state, encoder);
+	tables = intel_c20_pll_tables_get(display, encoder);
 	if (!tables)
 		return NULL;
 
 	for (i = 0; tables[i]; i++)
-		if (crtc_state->port_clock == tables[i]->clock)
+		if (port_clock == tables[i]->clock)
 			return tables[i];
 
 	return NULL;
 }
 
-static int intel_c20pll_calc_state_from_table(const struct intel_crtc_state *crtc_state,
+static int intel_c20pll_calc_state_from_table(struct intel_display *display,
 					      struct intel_encoder *encoder,
+					      int port_clock,
 					      struct intel_cx0pll_state *pll_state)
 {
 	const struct intel_c20pll_state *table;
 
-	table = intel_c20_pll_find_table(crtc_state, encoder);
+	table = intel_c20_pll_find_table(display, encoder, port_clock);
 	if (!table)
 		return -EINVAL;
 
 	pll_state->c20 = *table;
 
-	intel_cx0pll_update_ssc(encoder, pll_state, intel_crtc_has_dp_encoder(crtc_state));
+	intel_cx0pll_update_ssc(encoder, pll_state, intel_encoder_is_dp(encoder));
 
 	return 0;
 }
@@ -2724,10 +2723,12 @@ static int intel_c20pll_calc_state(const struct intel_crtc_state *crtc_state,
 	/* try computed C20 HDMI tables before using consolidated tables */
 	if (!is_dp)
 		/* TODO: Update SSC state for HDMI as well */
-		err = intel_c20_compute_hdmi_tmds_pll(crtc_state, &hw_state->cx0pll.c20);
+		err = intel_c20_compute_hdmi_tmds_pll(display, crtc_state->port_clock,
+						      &hw_state->cx0pll.c20);
 
 	if (err)
-		err = intel_c20pll_calc_state_from_table(crtc_state, encoder,
+		err = intel_c20pll_calc_state_from_table(display, encoder,
+							 crtc_state->port_clock,
 							 &hw_state->cx0pll);
 
 	if (err)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cb91d07cdaa6..8e8bd1514a74 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4253,7 +4253,7 @@ static void xe3plpd_ddi_get_config(struct intel_encoder *encoder,
 		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
 	else
 		crtc_state->port_clock =
-			intel_lt_phy_calc_port_clock(encoder, crtc_state);
+			intel_lt_phy_calc_port_clock(encoder, &crtc_state->dpll_hw_state.ltpll);
 	intel_ddi_get_config(encoder, crtc_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index a4f372c9e6fc..48410e081175 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1227,7 +1227,7 @@ static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
 
 	/* TODO: Do the readback via intel_compute_shared_dplls() */
 	crtc_state->port_clock =
-			intel_lt_phy_calc_port_clock(encoder, crtc_state);
+			intel_lt_phy_calc_port_clock(encoder, &crtc_state->dpll_hw_state.ltpll);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 939c8975fd4c..2b8f93db3ebf 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1679,7 +1679,8 @@ intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 }
 
 static int
-intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
+intel_lt_phy_calc_hdmi_port_clock(struct intel_encoder *encoder,
+				  const struct intel_lt_phy_pll_state *lt_state)
 {
 #define REGVAL(i) (				\
 	(lt_state->data[i][3])		|	\
@@ -1688,9 +1689,7 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
 	(lt_state->data[i][0] << 24)		\
 )
 
-	struct intel_display *display = to_intel_display(crtc_state);
-	const struct intel_lt_phy_pll_state *lt_state =
-		&crtc_state->dpll_hw_state.ltpll;
+	struct intel_display *display = to_intel_display(encoder);
 	int clk = 0;
 	u32 d8, pll_reg_5, pll_reg_3, pll_reg_57, m2div_frac, m2div_int;
 	u64 temp0, temp1;
@@ -1749,11 +1748,9 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
 
 int
 intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
-			     const struct intel_crtc_state *crtc_state)
+			     const struct intel_lt_phy_pll_state *lt_state)
 {
 	int clk;
-	const struct intel_lt_phy_pll_state *lt_state =
-		&crtc_state->dpll_hw_state.ltpll;
 	u8 mode, rate;
 
 	mode = REG_FIELD_GET8(LT_PHY_VDR_MODE_ENCODING_MASK,
@@ -1769,7 +1766,7 @@ intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
 				      lt_state->config[0]);
 		clk = intel_lt_phy_get_dp_clock(rate);
 	} else {
-		clk = intel_lt_phy_calc_hdmi_port_clock(crtc_state);
+		clk = intel_lt_phy_calc_hdmi_port_clock(encoder, lt_state);
 	}
 
 	return clk;
@@ -2245,7 +2242,7 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 	}
 
 	pll_state->clock =
-		intel_lt_phy_calc_port_clock(encoder, crtc_state);
+		intel_lt_phy_calc_port_clock(encoder, &crtc_state->dpll_hw_state.ltpll);
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
@@ -2275,7 +2272,7 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
 	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state, &pll_hw_state);
-	clock = intel_lt_phy_calc_port_clock(encoder, new_crtc_state);
+	clock = intel_lt_phy_calc_port_clock(encoder, &new_crtc_state->dpll_hw_state.ltpll);
 
 	dig_port = enc_to_dig_port(encoder);
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 7659c92b6c3c..ad94b47e4279 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -22,7 +22,7 @@ int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder);
 int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
-				 const struct intel_crtc_state *crtc_state);
+				 const struct intel_lt_phy_pll_state *lt_state);
 void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state);
 void intel_lt_phy_dump_hw_state(struct intel_display *display,
-- 
2.34.1

