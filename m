Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBB59E9AA8
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 16:35:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 712D110E2A7;
	Mon,  9 Dec 2024 15:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bn1cw9tD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E8C810E2A7
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2024 15:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733758535; x=1765294535;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bbZTNyG6Y8xQey6FYf0Ge+08LAusWL9aLEdsV5dWMP0=;
 b=bn1cw9tDX/CqjMmydtcS+6/QXaXgc346SMrRRDE0jjcK2pwfVxHDvsZi
 nfRUERLwGieytXmBUrxFoqL8LSZS7/kCyRhQ+bNmSpS3Kd3NvFg4Y2NLI
 wPQyg7Z4dIcP3Bi/yHeTL60M8tIDYuuu+uZr6yzmAEDLDmvaKq8XqoV0W
 gLAD8h6wcIzo2QyydILib8+PX0snVf18gtjpJpXapQspyymTTcr1CcTA+
 VRanjkNpD3IfjRHHNd/XknjZBoCQv7glQC8rkl+xpruhMxeqIkoyUX6ig
 xN+u3dJSdcrB6NYpbGR9d9XzO3JK/1ZTkT10oV97dn4xRyb3dHzaZ/cRa w==;
X-CSE-ConnectionGUID: Ae/avMYTTG2WG6PbVMEqCA==
X-CSE-MsgGUID: 91emAJE1QJazkoHpirN6JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="33795761"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="33795761"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 07:35:34 -0800
X-CSE-ConnectionGUID: blbz0p4QQo+vU9H/KKjjZw==
X-CSE-MsgGUID: lkonzbxWR96eBuwyLMHTXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="99924875"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmviesa004.fm.intel.com with ESMTP; 09 Dec 2024 07:35:33 -0800
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Date: Mon,  9 Dec 2024 21:04:18 +0530
Message-Id: <20241209153418.49580-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
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
such as tx_misc and dac_ctrl_range for xe2LPD, xe2HPD and MTL/ARL.
This patch covers fields that need to be set based on the platform type.

Some ARLs SoCs cannot be directly distinguished by their GMD version Id,
Specifically to set value of tx_misc, so PCI Host Bridge IDs are used
for differentiation.

v2:
- Relocate defines and Restructure the code(Jani)

Bspec:74165,74491
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 47 +++++++++++++++----
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  8 +++-
 .../drm/i915/display/intel_display_device.h   | 11 +++++
 drivers/gpu/drm/i915/i915_drv.h               |  3 ++
 drivers/gpu/drm/i915/intel_device_info.c      |  7 +++
 drivers/gpu/drm/i915/intel_device_info.h      |  3 +-
 include/drm/intel/pciids.h                    |  7 ++-
 7 files changed, 75 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index cc734079c3b8..0f39d877a713 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2175,9 +2175,46 @@ static void intel_c10pll_dump_hw_state(struct intel_display *display,
 			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
 }
 
-static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
+static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct pci_dev *pdev = NULL;
+	u16 tx_misc;
+	u16 tx_dcc_cal_dac_ctrl_range = 8;
+	u16 tx_term_ctrl;
+	u16 host_bridge_pci_dev_id;
+
+	if (IS_BATTLEMAGE(to_i915(display->drm))) {
+		tx_misc = 0;
+		tx_term_ctrl = 2;
+	} else if (DISPLAY_VER(display) >= 20) {
+		tx_misc = 5;
+		tx_term_ctrl = 4;
+	} else if (IS_METEORLAKE(to_i915(display->drm))) {
+		/*
+		 * Some SoCs have the same drm PCI IDs, so differentiate based
+		 * on the host bridge device ID to use the correct txx_mics value.
+		 */
+		while ((pdev = pci_get_class(PCI_CLASS_BRIDGE_HOST << 8, pdev)))
+			host_bridge_pci_dev_id = pdev->device;
+
+		if (IS_METEORLAKE_U(to_i915(display->drm)) ||
+		    IS_ARROWLAKE_U(to_i915(display->drm)) ||
+		    (pdev && IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(host_bridge_pci_dev_id))) {
+			tx_misc = 3;
+		} else {
+			tx_misc = 7;
+		}
+
+		tx_term_ctrl = 2;
+	}
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
@@ -2187,7 +2224,6 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
 	u64 mpll_multiplier;
 	u64 mpll_fracn_quot;
 	u64 mpll_fracn_rem;
-	u16 tx_misc;
 	u8  mpllb_ana_freq_vco;
 	u8  mpll_div_multiplier;
 
@@ -2207,11 +2243,6 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
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
@@ -2223,7 +2254,7 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
 
 	pll_state->clock	= crtc_state->port_clock;
 	pll_state->tx[0]	= 0xbe88;
-	pll_state->tx[1]	= 0x9800 | C20_PHY_TX_MISC(tx_misc);
+	pll_state->tx[1]	= intel_c20_hdmi_tmds_tx_cgf_1(crtc_state);
 	pll_state->tx[2]	= 0x0000;
 	pll_state->cmn[0]	= 0x0500;
 	pll_state->cmn[1]	= 0x0005;
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index c685479c9756..5e9bc03b6833 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -286,9 +286,15 @@
 		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_TX_CNTX_CFG : _MTL_C20_A_TX_CNTX_CFG) - (idx))
 #define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
 		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG : _MTL_C20_B_TX_CNTX_CFG) - (idx))
-#define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
+#define   C20_PHY_TX_RATE REG_GENMASK(2, 0)
 #define   C20_PHY_TX_MISC_MASK		REG_GENMASK16(7, 0)
 #define   C20_PHY_TX_MISC(val)		REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
+#define   C20_PHY_TX_DCC_CAL_RANGE_MASK	REG_GENMASK16(11, 8)
+#define   C20_PHY_TX_DCC_CAL_RANGE(val) \
+			REG_FIELD_PREP16(C20_PHY_TX_DCC_CAL_RANGE_MASK, (val))
+#define   C20_PHY_TX_DCC_BYPASS	REG_BIT(12)
+#define   C20_PHY_TX_TERM_CTL_MASK	REG_GENMASK16(15, 13)
+#define   C20_PHY_TX_TERM_CTL(val)	REG_FIELD_PREP16(C20_PHY_TX_TERM_CTL_MASK, (val))
 
 #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
 		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : _MTL_C20_A_CMN_CNTX_CFG) - (idx))
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 9a333d9e6601..8522e65a46f7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -233,6 +233,17 @@ struct intel_display_platforms {
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
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index dcf6050e5550..dc8dcefb3b9c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -543,6 +543,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_U)
 #define IS_ARROWLAKE_S(i915) \
 	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_S)
+
+#define IS_METEORLAKE_U(i915) \
+	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_MTL_U)
 #define IS_DG2_G10(i915) \
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
 #define IS_DG2_G11(i915) \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 856b30fa37dc..e4edfd81ab7c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -212,6 +212,10 @@ static const u16 subplatform_arl_s_ids[] = {
 	INTEL_ARL_S_IDS(ID),
 };
 
+static const u16 subplatform_mtl_u_ids[] = {
+	INTEL_MTL_U_IDS(ID),
+};
+
 static bool find_devid(u16 id, const u16 *p, unsigned int num)
 {
 	for (; num; num--, p++) {
@@ -278,6 +282,9 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	} else if (find_devid(devid, subplatform_arl_s_ids,
 			      ARRAY_SIZE(subplatform_arl_s_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_ARL_S);
+	} else if (find_devid(devid, subplatform_mtl_u_ids,
+			      ARRAY_SIZE(subplatform_mtl_u_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_MTL_U);
 	}
 
 	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index ef84eea9ba0b..b4a1cddeabc3 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -97,7 +97,7 @@ enum intel_platform {
  * it is fine for the same bit to be used on multiple parent platforms.
  */
 
-#define INTEL_SUBPLATFORM_BITS (3)
+#define INTEL_SUBPLATFORM_BITS (4)
 #define INTEL_SUBPLATFORM_MASK (BIT(INTEL_SUBPLATFORM_BITS) - 1)
 
 /* HSW/BDW/SKL/KBL/CFL */
@@ -131,6 +131,7 @@ enum intel_platform {
 #define INTEL_SUBPLATFORM_ARL_H	0
 #define INTEL_SUBPLATFORM_ARL_U	1
 #define INTEL_SUBPLATFORM_ARL_S	2
+#define INTEL_SUBPLATFORM_MTL_U	3
 
 enum intel_ppgtt_type {
 	INTEL_PPGTT_NONE = I915_GEM_PPGTT_NONE,
diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
index 7883384acd5e..dc664a61c0aa 100644
--- a/include/drm/intel/pciids.h
+++ b/include/drm/intel/pciids.h
@@ -765,6 +765,7 @@
 	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
 
 /* ARL */
+
 #define INTEL_ARL_H_IDS(MACRO__, ...) \
 	MACRO__(0x7D51, ## __VA_ARGS__), \
 	MACRO__(0x7DD1, ## __VA_ARGS__)
@@ -782,9 +783,13 @@
 	INTEL_ARL_S_IDS(MACRO__, ## __VA_ARGS__)
 
 /* MTL */
+
+#define INTEL_MTL_U_IDS(MACRO__, ...) \
+	MACRO__(0x7D45, ## __VA_ARGS__)
+
 #define INTEL_MTL_IDS(MACRO__, ...) \
 	MACRO__(0x7D40, ## __VA_ARGS__), \
-	MACRO__(0x7D45, ## __VA_ARGS__), \
+	INTEL_MTL_U_IDS(MACRO__, ## __VA_ARGS__),	\
 	MACRO__(0x7D55, ## __VA_ARGS__), \
 	MACRO__(0x7D60, ## __VA_ARGS__), \
 	MACRO__(0x7DD5, ## __VA_ARGS__)
-- 
2.34.1

