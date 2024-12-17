Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 882A09F5769
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 21:14:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00EDD10E663;
	Tue, 17 Dec 2024 20:14:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dzoYWktc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA4410E65E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2024 20:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734466472; x=1766002472;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XykaXhVtZj310NOwgvXZRWOaIygmm9mgBqrAp8Z8fZ8=;
 b=dzoYWktcRuHR3HOOsCwrT+swoVxWYFbUAwh1r+whywjEe6AmfrukNFPQ
 zDWrEa36M+g3SUbj+UlZaioG4AHSIUnG7ic/QY8rdUHlBamB6y0UskRQ1
 XjhtBrsUjinu6ycZyoQYtnVqc+4RfimeMqYZi02Z0uO401inhRjWyenNL
 7CsJeMkR9J8rzG8VyRlQQPtIs8XsT0FQD3gS+an7U/zjxQunPZspgrWfk
 laV8m1dZVOhEWDG91wmMH/elyWpArffI9u2LdRq/6lnbgz1s07KOBokR8
 jbQDhaMOZ0e7M/u5gG9SUnOVx3ML7+skGtkr9icTOrVt0QWYT2kN7VN01 g==;
X-CSE-ConnectionGUID: WbSxOMpYR0mPZmFy8q1VdA==
X-CSE-MsgGUID: tiabHp9tRiCKQ/zsaRLtyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11289"; a="34233698"
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="34233698"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 12:14:32 -0800
X-CSE-ConnectionGUID: 1mh0vZihTeeH5o2JqpI/kg==
X-CSE-MsgGUID: UFdCQSZDRhOWUdD2MgUz6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="102709786"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orviesa003.jf.intel.com with ESMTP; 17 Dec 2024 12:14:32 -0800
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v4 2/2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Date: Wed, 18 Dec 2024 01:43:01 +0530
Message-Id: <20241217201301.3593054-3-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241217201301.3593054-1-dnyaneshwar.bhadane@intel.com>
References: <20241217201301.3593054-1-dnyaneshwar.bhadane@intel.com>
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

In the C20 algorithm for HDMI TMDS, certain fields have been updated
in the BSpec to set values for SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1,
such as tx_misc and dac_ctrl_range for Xe2LPD, Xe2HPD and MTL/ARL.
This patch covers fields that need to be set based on the platform type.

Some ARLs SoCs cannot be directly distinguished by their GMD version Id,
Specifically to set value of tx_misc, so PCI Host Bridge IDs are used
for differentiation.

v2:
- Relocate defines and Restructure the code(Jani)

v3:
- Replace conditions with display.platform.<platform> (jani)
- Move host bridge check to new function (Jani)

v4:
- Identify/Replace arrowlake_u as meteorlake_u(Jani)

Bspec:74165,74491
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 48 +++++++++++++++----
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  6 +++
 .../drm/i915/display/intel_display_device.h   | 11 +++++
 3 files changed, 57 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 142de06818a7..223fa8ffc889 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2177,9 +2177,47 @@ static void intel_c10pll_dump_hw_state(struct intel_display *display,
 			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
 }
 
-static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
+/*
+ * Some ARLs SoCs have the same drm PCI IDs, so need a helper to differentiate based
+ * on the host bridge device ID to get the correct txx_mics value.
+ */
+static bool is_arrowlake_s_by_host_bridge(void)
+{
+	struct pci_dev *pdev = NULL;
+	u16 host_bridge_pci_dev_id;
+
+	while ((pdev = pci_get_class(PCI_CLASS_BRIDGE_HOST << 8, pdev)))
+		host_bridge_pci_dev_id = pdev->device;
+
+	return pdev && IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(host_bridge_pci_dev_id);
+}
+
+static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	u16 tx_misc;
+	u16 tx_dcc_cal_dac_ctrl_range = 8;
+	u16 tx_term_ctrl = 2;
+
+	if (DISPLAY_VER(display) >= 20) {
+		tx_misc = 5;
+		tx_term_ctrl = 4;
+	} else if (display->platform.battlemage) {
+		tx_misc = 0;
+	} else if (display->platform.meteorlake_u ||
+		   is_arrowlake_s_by_host_bridge()) {
+		tx_misc = 3;
+	} else {
+		tx_misc = 7;
+	}
+
+	return (C20_PHY_TX_MISC(tx_misc) |
+		C20_PHY_TX_DCC_CAL_RANGE(tx_dcc_cal_dac_ctrl_range) |
+		C20_PHY_TX_DCC_BYPASS | C20_PHY_TX_TERM_CTL(tx_term_ctrl));
+}
+
+static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
+{
 	struct intel_c20pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll.c20;
 	u64 datarate;
 	u64 mpll_tx_clk_div;
@@ -2189,7 +2227,6 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
 	u64 mpll_multiplier;
 	u64 mpll_fracn_quot;
 	u64 mpll_fracn_rem;
-	u16 tx_misc;
 	u8  mpllb_ana_freq_vco;
 	u8  mpll_div_multiplier;
 
@@ -2209,11 +2246,6 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
 	mpll_div_multiplier = min_t(u8, div64_u64((vco_freq * 16 + (datarate >> 1)),
 						  datarate), 255);
 
-	if (DISPLAY_VER(display) >= 20)
-		tx_misc = 0x5;
-	else
-		tx_misc = 0x0;
-
 	if (vco_freq <= DATARATE_3000000000)
 		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_3;
 	else if (vco_freq <= DATARATE_3500000000)
@@ -2225,7 +2257,7 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
 
 	pll_state->clock	= crtc_state->port_clock;
 	pll_state->tx[0]	= 0xbe88;
-	pll_state->tx[1]	= 0x9800 | C20_PHY_TX_MISC(tx_misc);
+	pll_state->tx[1]	= intel_c20_hdmi_tmds_tx_cgf_1(crtc_state);
 	pll_state->tx[2]	= 0x0000;
 	pll_state->cmn[0]	= 0x0500;
 	pll_state->cmn[1]	= 0x0005;
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 4dc6e179a774..0bc651c2351d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -294,6 +294,12 @@
 #define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
 #define   C20_PHY_TX_MISC_MASK		REG_GENMASK16(7, 0)
 #define   C20_PHY_TX_MISC(val)		REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
+#define   C20_PHY_TX_DCC_CAL_RANGE_MASK 	REG_GENMASK16(11, 8)
+#define   C20_PHY_TX_DCC_CAL_RANGE(val) \
+		REG_FIELD_PREP16(C20_PHY_TX_DCC_CAL_RANGE_MASK, (val))
+#define   C20_PHY_TX_DCC_BYPASS	REG_BIT(12)
+#define   C20_PHY_TX_TERM_CTL_MASK	REG_GENMASK16(15, 13)
+#define   C20_PHY_TX_TERM_CTL(val)	REG_FIELD_PREP16(C20_PHY_TX_TERM_CTL_MASK, (val))
 
 #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
 		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : _MTL_C20_A_CMN_CNTX_CFG) - (idx))
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 5853472bb9c2..a7b5ce69cf17 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -234,6 +234,17 @@ struct intel_display_platforms {
 	(drm_WARN_ON(__to_intel_display(__display)->drm, INTEL_DISPLAY_STEP(__display) == STEP_NONE), \
 	 INTEL_DISPLAY_STEP(__display) >= (since) && INTEL_DISPLAY_STEP(__display) < (until))
 
+#define ARLS_HOST_BRIDGE_PCI_ID1 0x7D1C
+#define ARLS_HOST_BRIDGE_PCI_ID2 0x7D2D
+#define ARLS_HOST_BRIDGE_PCI_ID3 0x7D2E
+#define ARLS_HOST_BRIDGE_PCI_ID4 0x7D2F
+
+#define IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(id)  \
+	(((id) == ARLS_HOST_BRIDGE_PCI_ID1) || \
+	 ((id) == ARLS_HOST_BRIDGE_PCI_ID2) || \
+	 ((id) == ARLS_HOST_BRIDGE_PCI_ID3) || \
+	 ((id) == ARLS_HOST_BRIDGE_PCI_ID4))
+
 struct intel_display_runtime_info {
 	struct intel_display_ip_ver {
 		u16 ver;
-- 
2.34.1

