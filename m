Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9619CC86F2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 16:28:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5527010ECF9;
	Wed, 17 Dec 2025 15:28:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aPrpzQjL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38B3910ED00;
 Wed, 17 Dec 2025 15:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765985330; x=1797521330;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GVfbfh4OrM0lCpf5sbmvt/E3Dj2z87cV1FhUL8y6NvU=;
 b=aPrpzQjLSsmH/79+w3EmSeJHhH1oiCix3ni++qM/SYaH5dOYr6QKRklS
 ZrTNTAhiNv/zsayU4n9wLWubWDy58kcrYVsxIW7JwZpSQp9c3QrApJOkD
 RU20Tw00wVLhzbpD55O02jQeJF3v5kYuSw+wMSWTRDrNfrnGXW0vC8z+C
 e6ezpxPvOY66H3ua6ZaZd9aI0hWrufsb7HbNTE6n+XZuMClW9jnwm7akA
 kmfhZWoSvlF3fBuagXnblXhneoN7zSlOVu1wMsGCCKSSgm7agvfcShnwV
 xgoPVGTR680BVMq1UpQxdL/lv0Ymo0guIEjnJcVwj9ZrHldw7PlUpr/ni g==;
X-CSE-ConnectionGUID: 9HBmSJNjSkGV82Kqf3b9yw==
X-CSE-MsgGUID: Xhkb+jEyQ/K+YfF6ptytPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71781445"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="71781445"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 07:28:50 -0800
X-CSE-ConnectionGUID: la+atYinRSiRfS+ORW8GYQ==
X-CSE-MsgGUID: QoXxMme6RqihAJ6eT9ToMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198097306"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa009.jf.intel.com with ESMTP; 17 Dec 2025 07:28:48 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 07/15] drm/i915/lt_phy: Create macro for lt phy pll state
Date: Wed, 17 Dec 2025 17:19:47 +0200
Message-Id: <20251217151955.1690202-8-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251217151955.1690202-1-mika.kahola@intel.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
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

Create a macro for pll state for lt phy similar as
for cx0 case.

v2:
- Move addition of LT_PHY_PLL_DP/HDMI_PARAMS() to this patch.
- Fix end of table checking while looking up a table.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 83 +++++++++++++--------
 1 file changed, 50 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 74b0bc90c959..64e223f35fdf 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -436,15 +436,32 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr20 = {
 	},
 };
 
-static const struct intel_lt_phy_pll_state * const xe3plpd_lt_dp_tables[] = {
-	&xe3plpd_lt_dp_rbr,
-	&xe3plpd_lt_dp_hbr1,
-	&xe3plpd_lt_dp_hbr2,
-	&xe3plpd_lt_dp_hbr3,
-	&xe3plpd_lt_dp_uhbr10,
-	&xe3plpd_lt_dp_uhbr13_5,
-	&xe3plpd_lt_dp_uhbr20,
-	NULL,
+struct intel_lt_phy_pll_params {
+	const char *name;
+	bool is_hdmi;
+	int clock_rate;
+	const struct intel_lt_phy_pll_state *state;
+};
+
+#define __LT_PHY_PLL_PARAMS(__is_hdmi, __clock_rate, __state)    { \
+	.name = __stringify(__state), \
+	.is_hdmi = __is_hdmi, \
+	.clock_rate = __clock_rate, \
+	.state = &__state, \
+}
+
+#define LT_PHY_PLL_HDMI_PARAMS(__clock_rate, __state)	__LT_PHY_PLL_PARAMS(true, __clock_rate, __state)
+#define LT_PHY_PLL_DP_PARAMS(__clock_rate, __state)	__LT_PHY_PLL_PARAMS(false, __clock_rate, __state)
+
+static const struct intel_lt_phy_pll_params xe3plpd_lt_dp_tables[] = {
+	LT_PHY_PLL_DP_PARAMS(162000, xe3plpd_lt_dp_rbr),
+	LT_PHY_PLL_DP_PARAMS(270000, xe3plpd_lt_dp_hbr1),
+	LT_PHY_PLL_DP_PARAMS(540000, xe3plpd_lt_dp_hbr2),
+	LT_PHY_PLL_DP_PARAMS(810000, xe3plpd_lt_dp_hbr3),
+	LT_PHY_PLL_DP_PARAMS(1000000, xe3plpd_lt_dp_uhbr10),
+	LT_PHY_PLL_DP_PARAMS(1350000, xe3plpd_lt_dp_uhbr13_5),
+	LT_PHY_PLL_DP_PARAMS(2000000, xe3plpd_lt_dp_uhbr20),
+	{}
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_16 = {
@@ -717,17 +734,17 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_6_75 = {
 	},
 };
 
-static const struct intel_lt_phy_pll_state * const xe3plpd_lt_edp_tables[] = {
-	&xe3plpd_lt_dp_rbr,
-	&xe3plpd_lt_edp_2_16,
-	&xe3plpd_lt_edp_2_43,
-	&xe3plpd_lt_dp_hbr1,
-	&xe3plpd_lt_edp_3_24,
-	&xe3plpd_lt_edp_4_32,
-	&xe3plpd_lt_dp_hbr2,
-	&xe3plpd_lt_edp_6_75,
-	&xe3plpd_lt_dp_hbr3,
-	NULL,
+static const struct intel_lt_phy_pll_params xe3plpd_lt_edp_tables[] = {
+	LT_PHY_PLL_DP_PARAMS(162000, xe3plpd_lt_dp_rbr),
+	LT_PHY_PLL_DP_PARAMS(216000, xe3plpd_lt_edp_2_16),
+	LT_PHY_PLL_DP_PARAMS(243000, xe3plpd_lt_edp_2_43),
+	LT_PHY_PLL_DP_PARAMS(270000, xe3plpd_lt_dp_hbr1),
+	LT_PHY_PLL_DP_PARAMS(324000, xe3plpd_lt_edp_3_24),
+	LT_PHY_PLL_DP_PARAMS(432000, xe3plpd_lt_edp_4_32),
+	LT_PHY_PLL_DP_PARAMS(540000, xe3plpd_lt_dp_hbr2),
+	LT_PHY_PLL_DP_PARAMS(675000, xe3plpd_lt_edp_6_75),
+	LT_PHY_PLL_DP_PARAMS(810000, xe3plpd_lt_dp_hbr3),
+	{}
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 = {
@@ -1000,13 +1017,13 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_5p94 = {
 	},
 };
 
-static const struct intel_lt_phy_pll_state * const xe3plpd_lt_hdmi_tables[] = {
-	&xe3plpd_lt_hdmi_252,
-	&xe3plpd_lt_hdmi_272,
-	&xe3plpd_lt_hdmi_742p5,
-	&xe3plpd_lt_hdmi_1p485,
-	&xe3plpd_lt_hdmi_5p94,
-	NULL,
+static const struct intel_lt_phy_pll_params xe3plpd_lt_hdmi_tables[] = {
+	LT_PHY_PLL_HDMI_PARAMS(25200, xe3plpd_lt_hdmi_252),
+	LT_PHY_PLL_HDMI_PARAMS(27200, xe3plpd_lt_hdmi_272),
+	LT_PHY_PLL_HDMI_PARAMS(74250, xe3plpd_lt_hdmi_742p5),
+	LT_PHY_PLL_HDMI_PARAMS(148500, xe3plpd_lt_hdmi_1p485),
+	LT_PHY_PLL_HDMI_PARAMS(594000, xe3plpd_lt_hdmi_5p94),
+	{}
 };
 
 static u8 intel_lt_phy_get_owned_lane_mask(struct intel_encoder *encoder)
@@ -1345,7 +1362,7 @@ static void intel_lt_phy_transaction_end(struct intel_encoder *encoder, struct r
 	intel_display_power_put(display, POWER_DOMAIN_DC_OFF, wakeref);
 }
 
-static const struct intel_lt_phy_pll_state * const *
+static const struct intel_lt_phy_pll_params *
 intel_lt_phy_pll_tables_get(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder)
 {
@@ -1734,7 +1751,7 @@ intel_lt_phy_calc_hdmi_port_clock(struct intel_display *display,
 	if (d8 == 0) {
 		drm_WARN_ON(display->drm,
 			    "Invalid port clock using lowest HDMI portclock\n");
-		return xe3plpd_lt_hdmi_252.clock;
+		return xe3plpd_lt_hdmi_tables[0].clock_rate;
 	}
 	m2div_int = (pll_reg_3  & REG_GENMASK(14, 5)) >> 5;
 	temp0 = ((u64)m2div_frac * REF_CLK_KHZ) >> 32;
@@ -1775,16 +1792,16 @@ int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder)
 {
-	const struct intel_lt_phy_pll_state * const *tables;
+	const struct intel_lt_phy_pll_params *tables;
 	int i;
 
 	tables = intel_lt_phy_pll_tables_get(crtc_state, encoder);
 	if (!tables)
 		return -EINVAL;
 
-	for (i = 0; tables[i]; i++) {
-		if (crtc_state->port_clock == tables[i]->clock) {
-			crtc_state->dpll_hw_state.ltpll = *tables[i];
+	for (i = 0; tables[i].name; i++) {
+		if (crtc_state->port_clock == tables[i].clock_rate) {
+			crtc_state->dpll_hw_state.ltpll = *tables[i].state;
 			if (intel_crtc_has_dp_encoder(crtc_state)) {
 				if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
 					crtc_state->dpll_hw_state.ltpll.config[2] = 1;
-- 
2.34.1

