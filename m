Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FA8C1EC9D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:35:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9974810E90E;
	Thu, 30 Oct 2025 07:35:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="egbVALCT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B97010E8FE;
 Thu, 30 Oct 2025 07:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809721; x=1793345721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rXwVZwEg40ULrIBDhZ+IX/Z/V3rDrooiGGbZ1EgE4do=;
 b=egbVALCTQ3usujM21A7e4XrbRCFAoOHSAQzet1K0iGZrOEoeodyk/egz
 oIU28SZkieAmmcEV0/BqvvPnb1VUhRmuuTttVf8LGkjXjPh/040LRN5lq
 YCP9DHT1qoQI1rujHEgLt5Q7FK+MAyLwvdPJxNxYtoD3NymdfgTchQ4rB
 g5UFwng6Zj113Uvg+IMCdD+gz5wpdBEedVVgPjBIOGGb5cc678gkK9GvW
 +6+jlfk228O/lsjjPwpaWmf1SFVvaFNGesqx8SXZrcuQZnynQL/obcMvG
 mSkK736X0PKpYBUPLzlyEQpmNv52ZrfYfHkfc4rvZ8oG0/hHNLCjz49PO g==;
X-CSE-ConnectionGUID: AyTNTBtCTF2mb5mK2s3mGQ==
X-CSE-MsgGUID: IIhciKlrTUiY9S+C7PrpRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063410"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063410"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:35:20 -0700
X-CSE-ConnectionGUID: SWMRy/1eTYS7toSDLdYdiQ==
X-CSE-MsgGUID: YTnlKY7aRd2mcOXZmaB1Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075542"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:35:18 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH 30/32] drm/i915/display: Get configuration for C10 and C20
Date: Thu, 30 Oct 2025 09:22:47 +0200
Message-Id: <20251030072249.155095-31-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251030072249.155095-1-mika.kahola@intel.com>
References: <20251030072249.155095-1-mika.kahola@intel.com>
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

For DDI initialization get configuration for C10 and C20
chips.

v2: Getting configuration either for a C10 or on the PTL port B
    eDP on TypeC PHY case for a C20 PHY PLL. Hence refer to this
    case as "non_tc_phy" instead of "c10phy".

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 81 ++++++++++++++++++++++--
 1 file changed, 75 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d0bfa7f397dc..f554921f59a3 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4255,6 +4255,77 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 	intel_ddi_get_config(encoder, crtc_state);
 }
 
+static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll)
+{
+	return pll->info->id == DPLL_ID_ICL_TBTPLL;
+}
+
+static void mtl_ddi_cx0_get_config(struct intel_encoder *encoder,
+				   struct intel_crtc_state *crtc_state,
+				   enum icl_port_dpll_id port_dpll_id,
+				   enum intel_dpll_id pll_id)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct icl_port_dpll *port_dpll;
+	struct intel_dpll *pll;
+	bool pll_active;
+
+	port_dpll = &crtc_state->icl_port_dplls[port_dpll_id];
+	pll = intel_get_dpll_by_id(display, pll_id);
+
+	if (drm_WARN_ON(display->drm, !pll))
+		return;
+
+	port_dpll->pll = pll;
+	pll_active = intel_dpll_get_hw_state(display, pll, &port_dpll->hw_state);
+	drm_WARN_ON(display->drm, !pll_active);
+
+	icl_set_active_port_dpll(crtc_state, port_dpll_id);
+
+	if (icl_ddi_tc_pll_is_tbt(crtc_state->intel_dpll))
+		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
+	else
+		crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->intel_dpll,
+							     &crtc_state->dpll_hw_state);
+
+	intel_ddi_get_config(encoder, crtc_state);
+}
+
+/*
+ * Get the configuration for either a port using a C10 PHY PLL, or in the case of
+ * the PTL port B eDP on TypeC PHY case the configuration of a port using a C20
+ * PHY PLL.
+ */
+static void mtl_ddi_non_tc_phy_get_config(struct intel_encoder *encoder,
+					     struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	/* TODO: Remove when the PLL manager is in place. */
+	mtl_ddi_get_config(encoder, crtc_state);
+	return;
+
+	mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_DEFAULT,
+			       mtl_port_to_pll_id(display, encoder->port));
+}
+
+static void mtl_ddi_tc_phy_get_config(struct intel_encoder *encoder,
+				      struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	/* TODO: Remove when the PLL manager is in place. */
+	mtl_ddi_get_config(encoder, crtc_state);
+	return;
+
+	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
+		mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_DEFAULT,
+				       DPLL_ID_ICL_TBTPLL);
+	else
+		mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_MG_PHY,
+				       mtl_port_to_pll_id(display, encoder->port));
+}
+
 static void dg2_ddi_get_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state)
 {
@@ -4292,11 +4363,6 @@ static void icl_ddi_combo_get_config(struct intel_encoder *encoder,
 	intel_ddi_get_config(encoder, crtc_state);
 }
 
-static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll)
-{
-	return pll->info->id == DPLL_ID_ICL_TBTPLL;
-}
-
 static enum icl_port_dpll_id
 icl_ddi_tc_port_pll_type(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state)
@@ -5237,7 +5303,10 @@ void intel_ddi_init(struct intel_display *display,
 		encoder->enable_clock = intel_mtl_pll_enable_clock;
 		encoder->disable_clock = intel_mtl_pll_disable_clock;
 		encoder->port_pll_type = intel_mtl_port_pll_type;
-		encoder->get_config = mtl_ddi_get_config;
+		if (intel_encoder_is_tc(encoder))
+			encoder->get_config = mtl_ddi_tc_phy_get_config;
+		else
+			encoder->get_config = mtl_ddi_non_tc_phy_get_config;
 	} else if (display->platform.dg2) {
 		encoder->enable_clock = intel_mpllb_enable;
 		encoder->disable_clock = intel_mpllb_disable;
-- 
2.34.1

