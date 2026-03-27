Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BrXKWlPxmk2IgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 10:35:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1553C341CC0
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 10:35:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9162210ED3D;
	Fri, 27 Mar 2026 09:35:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jAEoZn2b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3729E10ED3D;
 Fri, 27 Mar 2026 09:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774604134; x=1806140134;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bXvFyelMZUYzHvn/NF0n+ZMNrXdEvHJ7Xdt1gPS3T8k=;
 b=jAEoZn2bfJh83uA31/EoUlMD66w62oYOoHecvpbOgrB+GEoka3riGhD+
 rUDQkS/nI15PK8cyP3H6bGVXE7zJLFxOisR03vqRDaW3xEJUn1eugYE+n
 32A64TTaL7ay8EF57XkydOvu/Bihjcrs9G8p6qPKsrpZbkaybIIabEwWi
 psrFG9DzA517v8BGEZiT1NLI1KO0a6lJCBDxhpGblLpZZEUvgpQeJyCYj
 7tmb40e0dcQoWJZ82D+Vo7gmMJqfZbn4NHw0pWzokukx0GnBEoB6TPvWw
 TuIF6bWkAyEzU/pm1B7QviDzebXCEh5C7Xz8lzSQIcQdn228YNWirbRXs g==;
X-CSE-ConnectionGUID: SmP3bmCqQ2iQ+LJ/V2Ia8g==
X-CSE-MsgGUID: XE0hQ/GBSJaZvMhvKMTN+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75873934"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75873934"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 02:35:34 -0700
X-CSE-ConnectionGUID: 3W6HZWz3TRGSmIzk8WC/IA==
X-CSE-MsgGUID: 6U/nxUPATl++gGO8aiS1Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="224310878"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 27 Mar 2026 02:35:33 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH] drm/i915/lt_phy: Build HDMI VDR config from fields and use
 VDR_NUM_REGISTERS
Date: Fri, 27 Mar 2026 09:35:31 +0000
Message-ID: <20260327093531.1203339-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1553C341CC0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Stop hardcoding LT PHY VDR configuration register values for HDMI.
Build VDR config[0] from the mode and (for FRL) the FRL rate encoding,
and select DP PLL vs USB PLL programming (FRL10G uses USB PLL,
so don’t set DP_PLL_ENABLE). Also build VDR config[1] from the PLL recipe
bit and the number-of-registers field.

Make intel_lt_phy_calculate_hdmi_state() static and pass
struct intel_display for debug logging.

Replace the hardcoded <= 12 (13-entry) VDR register loops with a shared
constant (VDR_NUM_REGISTERS, 13 VDR entries) when programming, reading out
and dumping LT PHY VDR state. Also remove a stray blank line at the end of
intel_xe3plpd_pll_disable().

BSpec:74667
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 72 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  3 -
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  5 +-
 3 files changed, 66 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 657ad5cb0eff..31989a9036b7 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -34,6 +34,12 @@
 #define MODE_DP				3
 #define MODE_HDMI_20			4
 #define MODE_HDMI_FRL			5
+#define HDMI_FRL3G_RATE_ENCODING	0
+#define HDMI_FRL6G_RATE_ENCODING	1
+#define HDMI_FRL8G_RATE_ENCODING	2
+#define HDMI_FRL10G_RATE_ENCODING	3
+#define HDMI_FRL12G_RATE_ENCODING	4
+#define VDR_NUM_REGISTERS		13
 #define Q32_TO_INT(x)	((x) >> 32)
 #define Q32_TO_FRAC(x)	((x) & 0xFFFFFFFF)
 #define DCO_MIN_FREQ_MHZ	11850
@@ -1501,8 +1507,40 @@ static void compute_dco_fine(struct lt_phy_params *p, u32 dco_12g)
 		dco_fine0_tune_2_0;
 }
 
-int
-intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
+static int intel_hdmi_vdr_rate_encoding(struct intel_display *display,
+					u8 mode, u32 clock_khz)
+{
+	switch (mode) {
+	case MODE_HDMI_20:
+		/* For TMDS/HDMI2.0 the rate encoding is not used (don't care). */
+		return 0;
+
+	case MODE_HDMI_FRL:
+		if (intel_dpll_clock_matches(clock_khz, 300000))
+			return HDMI_FRL3G_RATE_ENCODING;
+		if (intel_dpll_clock_matches(clock_khz, 600000))
+			return HDMI_FRL6G_RATE_ENCODING;
+		if (intel_dpll_clock_matches(clock_khz, 800000))
+			return HDMI_FRL8G_RATE_ENCODING;
+		if (intel_dpll_clock_matches(clock_khz, 1000000))
+			return HDMI_FRL10G_RATE_ENCODING;
+		if (intel_dpll_clock_matches(clock_khz, 1200000))
+			return HDMI_FRL12G_RATE_ENCODING;
+
+		drm_dbg_kms(display->drm,
+			    "Unsupported LT PHY HDMI FRL rate %u kHz\n",
+			    clock_khz);
+		return -EINVAL;
+
+	default:
+		/* Not an HDMI mode */
+		return -EINVAL;
+	}
+}
+
+static int
+intel_lt_phy_calculate_hdmi_state(struct intel_display *display,
+				  struct intel_lt_phy_pll_state *lt_state,
 				  u32 frequency_khz)
 {
 #define DATA_ASSIGN(i, pll_reg)	\
@@ -1520,6 +1558,8 @@ intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 
 	bool found = false;
 	struct lt_phy_params p;
+	u8 mode;
+	int rate;
 	u32 dco_fmin = DCO_MIN_FREQ_MHZ;
 	u64 refclk_khz = REF_CLK_KHZ;
 	u32 refclk_mhz_int = REF_CLK_KHZ / 1000;
@@ -1616,8 +1656,21 @@ intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 		    (frequency_khz == 2500) || (dco_12g == 1)) ? 0 : 1;
 	set_phy_vdr_addresses(&p, pll_type);
 
-	lt_state->config[0] = 0x84;
-	lt_state->config[1] = 0x2d;
+	mode = intel_hdmi_is_frl(frequency_khz) ? MODE_HDMI_FRL : MODE_HDMI_20;
+	rate = intel_hdmi_vdr_rate_encoding(display, mode, frequency_khz);
+
+	if (rate < 0)
+		return rate;
+
+	/* Only HDMI FRL 10G mode uses USB PLL */
+	if (mode == MODE_HDMI_FRL && rate == HDMI_FRL10G_RATE_ENCODING)
+		lt_state->config[0] = REG_FIELD_PREP(LT_PHY_VDR_RATE_ENCODING_MASK, rate) |
+				      REG_FIELD_PREP(LT_PHY_VDR_MODE_ENCODING_MASK, mode);
+	else
+		lt_state->config[0] = LT_PHY_VDR_DP_PLL_ENABLE |
+				      REG_FIELD_PREP(LT_PHY_VDR_RATE_ENCODING_MASK, rate) |
+				      REG_FIELD_PREP(LT_PHY_VDR_MODE_ENCODING_MASK, mode);
+	lt_state->config[1] = LT_PHY_VDR_PLL_RECIPE | LT_PHY_VDR_NUMBER_OF_REGISTERS(VDR_NUM_REGISTERS);
 	ADDR_ASSIGN(0, p.pll_reg4);
 	ADDR_ASSIGN(1, p.pll_reg3);
 	ADDR_ASSIGN(2, p.pll_reg5);
@@ -1778,7 +1831,7 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
 		hw_state->ltpll.lane_count = crtc_state->lane_count;
-		return intel_lt_phy_calculate_hdmi_state(&hw_state->ltpll,
+		return intel_lt_phy_calculate_hdmi_state(display, &hw_state->ltpll,
 							 crtc_state->port_clock);
 	}
 
@@ -1806,7 +1859,7 @@ intel_lt_phy_program_pll(struct intel_encoder *encoder,
 	intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_VDR_2_CONFIG,
 			   ltpll->config[2], MB_WRITE_COMMITTED);
 
-	for (i = 0; i <= 12; i++) {
+	for (i = 0; i < VDR_NUM_REGISTERS; i++) {
 		intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_X_ADDR_MSB(i),
 				   ltpll->addr_msb[i],
 				   MB_WRITE_COMMITTED);
@@ -2186,7 +2239,7 @@ void intel_lt_phy_dump_hw_state(struct drm_printer *p,
 			   i, hw_state->config[i]);
 	}
 
-	for (i = 0; i <= 12; i++)
+	for (i = 0; i < VDR_NUM_REGISTERS; i++)
 		for (j = 3; j >= 0; j--)
 			drm_printf(p, "vdr_data[%d][%d] = 0x%.4x,\n",
 				   i, j, hw_state->data[i][j]);
@@ -2257,7 +2310,7 @@ bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 	pll_state->config[1] = intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_1_CONFIG);
 	pll_state->config[2] = intel_lt_phy_read(encoder, lane, LT_PHY_VDR_2_CONFIG);
 
-	for (i = 0; i <= 12; i++) {
+	for (i = 0; i < VDR_NUM_REGISTERS; i++) {
 		for (j = 3, k = 0; j >= 0; j--, k++)
 			pll_state->data[i][k] =
 				intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0,
@@ -2284,7 +2337,6 @@ void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
 		intel_mtl_tbt_pll_disable_clock(encoder);
 	else
 		intel_lt_phy_pll_disable(encoder);
-
 }
 
 static void intel_lt_phy_pll_verify_clock(struct intel_display *display,
@@ -2328,7 +2380,7 @@ static void intel_lt_phy_pll_verify_params(struct intel_display *display,
 	if (!pll_params->is_hdmi)
 		return;
 
-	if (intel_lt_phy_calculate_hdmi_state(&pll_state, pll_params->clock_rate) != 0)
+	if (intel_lt_phy_calculate_hdmi_state(display, &pll_state, pll_params->clock_rate) != 0)
 		return;
 
 	intel_lt_phy_pll_verify_clock(display, pll_params->clock_rate, pll_params->name, &pll_state, false);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 16de39484779..a6f022f64d88 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -41,9 +41,6 @@ bool intel_lt_phy_tbt_pll_readout_hw_state(struct intel_display *display,
 					   struct intel_dpll_hw_state *hw_state);
 bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       struct intel_lt_phy_pll_state *pll_state);
-int
-intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
-				  u32 frequency_khz);
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      struct intel_dpll *pll,
 			      const struct intel_dpll_hw_state *dpll_hw_state);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
index ff6d7829dbb9..1bcda721c1d7 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -38,9 +38,12 @@
 /* LT Phy Vendor Register */
 #define LT_PHY_VDR_0_CONFIG	0xC02
 #define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
-#define LT_PHY_VDR_1_CONFIG	0xC03
 #define  LT_PHY_VDR_RATE_ENCODING_MASK	REG_GENMASK8(6, 3)
 #define  LT_PHY_VDR_MODE_ENCODING_MASK	REG_GENMASK8(2, 0)
+#define LT_PHY_VDR_1_CONFIG	0xC03
+#define  LT_PHY_VDR_PLL_RECIPE		REG_BIT(5)
+#define  LT_PHY_VDR_NUMBER_OF_REGISTERS_MASK	REG_GENMASK(4, 0)
+#define  LT_PHY_VDR_NUMBER_OF_REGISTERS(val)	REG_FIELD_PREP8(LT_PHY_VDR_NUMBER_OF_REGISTERS_MASK, val)
 #define LT_PHY_VDR_2_CONFIG	0xCC3
 
 #define LT_PHY_VDR_X_ADDR_MSB(idx)	(0xC04 + 0x6 * (idx))
-- 
2.43.0

