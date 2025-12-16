Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2853CC1A1A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:46:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF8410E799;
	Tue, 16 Dec 2025 08:46:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bmJeM+sp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1FAA10E798;
 Tue, 16 Dec 2025 08:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765874808; x=1797410808;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gQxAf8y7lw/mlNdYd5HOGZBJGVPD19BToQQ1k6ZId4U=;
 b=bmJeM+sprKttkQrbTfYhlct0DdbPh4Sifz0XfCPLgtJguWK34VBkQKgu
 be+KlCZXmxlC/loFl/S/mIkymffTKE6f6+AUQ+z0wO3v+z1m4cVYy/1c2
 ZEkVmvA7x9ky1t6pMIiMGTaDrZRarSgkWPOaKFozLr+1R083uqvXq2fQm
 U6ii3lN16+RBkVPR/fMHMy2lwExKMW8kuuUWewi8Rt6yso29IaFLaCJne
 9IoOPfhnPVwRVvcD11pv3y92uN4UXGxtzSuU3J+4j9Ah0g6X9KVz8M6WP
 O4qpOkrt5rEIe1+RKxjsnMQOtTcrt69SMmtPRNsRg2dSjUDm3kO1K1MMA Q==;
X-CSE-ConnectionGUID: WC34lAFdRN2qgBifE6g1YQ==
X-CSE-MsgGUID: PAdCRlgtRaWiOG10iXgD1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71642310"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="71642310"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:46:48 -0800
X-CSE-ConnectionGUID: QvBSo2oMTM+QQTnCRwCsEA==
X-CSE-MsgGUID: /z2YaRQXSNqYbhS7I32veA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="198448800"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa009.fm.intel.com with ESMTP; 16 Dec 2025 00:46:47 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 06/13] drm/i915/lt_phy: Create macro for lt phy pll state
Date: Tue, 16 Dec 2025 10:37:52 +0200
Message-Id: <20251216083759.383163-7-mika.kahola@intel.com>
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

Create a macro for pll state for lt phy similar as
for cx0 case.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 75 ++++++++++++---------
 1 file changed, 42 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 2b8f93db3ebf..447dc29555a5 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -436,15 +436,26 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr20 = {
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
+	int clock_rate;
+	const struct intel_lt_phy_pll_state *pll;
+};
+
+#define LT_PHY_PLL_PARAMS(__clock_rate, __state)    { \
+	.name = __stringify(__state), \
+	.clock_rate = __clock_rate, \
+	.pll = &__state, \
+}
+
+static const struct intel_lt_phy_pll_params xe3plpd_lt_dp_tables[] = {
+	LT_PHY_PLL_PARAMS(162000, xe3plpd_lt_dp_rbr),
+	LT_PHY_PLL_PARAMS(270000, xe3plpd_lt_dp_hbr1),
+	LT_PHY_PLL_PARAMS(540000, xe3plpd_lt_dp_hbr2),
+	LT_PHY_PLL_PARAMS(810000, xe3plpd_lt_dp_hbr3),
+	LT_PHY_PLL_PARAMS(1000000, xe3plpd_lt_dp_uhbr10),
+	LT_PHY_PLL_PARAMS(1350000, xe3plpd_lt_dp_uhbr13_5),
+	LT_PHY_PLL_PARAMS(2000000, xe3plpd_lt_dp_uhbr20),
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_16 = {
@@ -717,17 +728,16 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_6_75 = {
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
+	LT_PHY_PLL_PARAMS(162000, xe3plpd_lt_dp_rbr),
+	LT_PHY_PLL_PARAMS(216000, xe3plpd_lt_edp_2_16),
+	LT_PHY_PLL_PARAMS(243000, xe3plpd_lt_edp_2_43),
+	LT_PHY_PLL_PARAMS(270000, xe3plpd_lt_dp_hbr1),
+	LT_PHY_PLL_PARAMS(324000, xe3plpd_lt_edp_3_24),
+	LT_PHY_PLL_PARAMS(432000, xe3plpd_lt_edp_4_32),
+	LT_PHY_PLL_PARAMS(540000, xe3plpd_lt_dp_hbr2),
+	LT_PHY_PLL_PARAMS(675000, xe3plpd_lt_edp_6_75),
+	LT_PHY_PLL_PARAMS(810000, xe3plpd_lt_dp_hbr3),
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 = {
@@ -1000,13 +1010,12 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_5p94 = {
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
+	LT_PHY_PLL_PARAMS(25200, xe3plpd_lt_hdmi_252),
+	LT_PHY_PLL_PARAMS(27200, xe3plpd_lt_hdmi_272),
+	LT_PHY_PLL_PARAMS(74250, xe3plpd_lt_hdmi_742p5),
+	LT_PHY_PLL_PARAMS(148500, xe3plpd_lt_hdmi_1p485),
+	LT_PHY_PLL_PARAMS(594000, xe3plpd_lt_hdmi_5p94),
 };
 
 static u8 intel_lt_phy_get_owned_lane_mask(struct intel_encoder *encoder)
@@ -1345,7 +1354,7 @@ static void intel_lt_phy_transaction_end(struct intel_encoder *encoder, struct r
 	intel_display_power_put(display, POWER_DOMAIN_DC_OFF, wakeref);
 }
 
-static const struct intel_lt_phy_pll_state * const *
+static const struct intel_lt_phy_pll_params *
 intel_lt_phy_pll_tables_get(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder)
 {
@@ -1735,7 +1744,7 @@ intel_lt_phy_calc_hdmi_port_clock(struct intel_encoder *encoder,
 	if (d8 == 0) {
 		drm_WARN_ON(display->drm,
 			    "Invalid port clock using lowest HDMI portclock\n");
-		return xe3plpd_lt_hdmi_252.clock;
+		return xe3plpd_lt_hdmi_tables[0].clock_rate;
 	}
 	m2div_int = (pll_reg_3  & REG_GENMASK(14, 5)) >> 5;
 	temp0 = ((u64)m2div_frac * REF_CLK_KHZ) >> 32;
@@ -1776,16 +1785,16 @@ int
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
+	for (i = 0; tables; i++) {
+		if (crtc_state->port_clock == tables[i].clock_rate) {
+			crtc_state->dpll_hw_state.ltpll = *tables[i].pll;
 			if (intel_crtc_has_dp_encoder(crtc_state)) {
 				if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
 					crtc_state->dpll_hw_state.ltpll.config[2] = 1;
-- 
2.34.1

