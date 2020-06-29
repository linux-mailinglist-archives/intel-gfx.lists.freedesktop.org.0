Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 151B520D2BD
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 20:58:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9B189C84;
	Mon, 29 Jun 2020 18:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 857FD89F08
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 18:58:51 +0000 (UTC)
IronPort-SDR: DXi3mdYHO6pGu7WCw9E4ZrjPJt2hlLb28blVGsIBAG9NDV66HcyGP8S7kQBOToIM594lO0mcE1
 S98/G37REp2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="126174496"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="126174496"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 11:58:51 -0700
IronPort-SDR: A2JLrmHJfyjvZ/XLOIlK6yLbt2tGOSnf0PymdAoKOZIsTFQYb/Fcdo/iACPKZm4Te26l0FcU/R
 5F7IFWIpKB2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="277169847"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 29 Jun 2020 11:58:50 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jun 2020 21:58:48 +0300
Message-Id: <20200629185848.20550-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200629185848.20550-1-imre.deak@intel.com>
References: <20200629185848.20550-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/icl+: Simplify combo/TBT PLL
 calculation call-chain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To simplify things, call the combo PHY/TBT PLL calculation functions
directly from the corresponding combo/TypeC PLL get functions, instead of
calling the same calculation functions after having to recheck if the
given PHY is combo or TypeC.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 64 ++++++++-----------
 1 file changed, 27 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index f585053d02d8..8306e92dc892 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3046,49 +3046,26 @@ static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
 					icl_wrpll_ref_clock(i915));
 }
 
-static bool icl_calc_dpll_state(struct intel_crtc_state *crtc_state,
-				struct intel_encoder *encoder,
+static void icl_calc_dpll_state(struct drm_i915_private *i915,
+				const struct skl_wrpll_params *pll_params,
 				struct intel_dpll_hw_state *pll_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
-	u32 cfgcr0, cfgcr1;
-	struct skl_wrpll_params pll_params = { 0 };
-	bool ret;
-
-	if (intel_phy_is_tc(dev_priv, intel_port_to_phy(dev_priv,
-							encoder->port)))
-		ret = icl_calc_tbt_pll(crtc_state, &pll_params);
-	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) ||
-		 intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
-		ret = icl_calc_wrpll(crtc_state, &pll_params);
-	else
-		ret = icl_calc_dp_combo_pll(crtc_state, &pll_params);
-
-	if (!ret)
-		return false;
+	memset(pll_state, 0, sizeof(*pll_state));
 
-	cfgcr0 = DPLL_CFGCR0_DCO_FRACTION(pll_params.dco_fraction) |
-		 pll_params.dco_integer;
+	pll_state->cfgcr0 = DPLL_CFGCR0_DCO_FRACTION(pll_params->dco_fraction) |
+			    pll_params->dco_integer;
 
-	cfgcr1 = DPLL_CFGCR1_QDIV_RATIO(pll_params.qdiv_ratio) |
-		 DPLL_CFGCR1_QDIV_MODE(pll_params.qdiv_mode) |
-		 DPLL_CFGCR1_KDIV(pll_params.kdiv) |
-		 DPLL_CFGCR1_PDIV(pll_params.pdiv);
+	pll_state->cfgcr1 = DPLL_CFGCR1_QDIV_RATIO(pll_params->qdiv_ratio) |
+			    DPLL_CFGCR1_QDIV_MODE(pll_params->qdiv_mode) |
+			    DPLL_CFGCR1_KDIV(pll_params->kdiv) |
+			    DPLL_CFGCR1_PDIV(pll_params->pdiv);
 
-	if (INTEL_GEN(dev_priv) >= 12)
-		cfgcr1 |= TGL_DPLL_CFGCR1_CFSELOVRD_NORMAL_XTAL;
+	if (INTEL_GEN(i915) >= 12)
+		pll_state->cfgcr1 |= TGL_DPLL_CFGCR1_CFSELOVRD_NORMAL_XTAL;
 	else
-		cfgcr1 |= DPLL_CFGCR1_CENTRAL_FREQ_8400;
-
-	memset(pll_state, 0, sizeof(*pll_state));
-
-	pll_state->cfgcr0 = cfgcr0;
-	pll_state->cfgcr1 = cfgcr1;
-
-	return true;
+		pll_state->cfgcr1 |= DPLL_CFGCR1_CENTRAL_FREQ_8400;
 }
 
-
 static enum tc_port icl_pll_id_to_tc_port(enum intel_dpll_id id)
 {
 	return id - DPLL_ID_ICL_MGPLL1;
@@ -3501,19 +3478,29 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct skl_wrpll_params pll_params = { };
 	struct icl_port_dpll *port_dpll =
 		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum port port = encoder->port;
 	unsigned long dpll_mask;
+	int ret;
 
-	if (!icl_calc_dpll_state(crtc_state, encoder, &port_dpll->hw_state)) {
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) ||
+	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
+		ret = icl_calc_wrpll(crtc_state, &pll_params);
+	else
+		ret = icl_calc_dp_combo_pll(crtc_state, &pll_params);
+
+	if (!ret) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Could not calculate combo PHY PLL state.\n");
 
 		return false;
 	}
 
+	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
+
 	if (IS_ELKHARTLAKE(dev_priv) && port != PORT_A)
 		dpll_mask =
 			BIT(DPLL_ID_EHL_DPLL4) |
@@ -3547,16 +3534,19 @@ static bool icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct skl_wrpll_params pll_params = { };
 	struct icl_port_dpll *port_dpll;
 	enum intel_dpll_id dpll_id;
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
-	if (!icl_calc_dpll_state(crtc_state, encoder, &port_dpll->hw_state)) {
+	if (!icl_calc_tbt_pll(crtc_state, &pll_params)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Could not calculate TBT PLL state.\n");
 		return false;
 	}
 
+	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
+
 	port_dpll->pll = intel_find_shared_dpll(state, crtc,
 						&port_dpll->hw_state,
 						BIT(DPLL_ID_ICL_TBTPLL));
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
