Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FB84E7390
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 13:32:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F0B10E70F;
	Fri, 25 Mar 2022 12:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80E8010E677
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 12:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648211557; x=1679747557;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fCb+wPBNMcfaBM6EzhkpR6DxkDiMFhIsT1R+JLU9aSo=;
 b=ks7q/61vnS8K/YbCy6T53RNnmrfgt8l9YzOMuR0kNNNYRKxV1kg3X3B8
 KtIYUmR7GjOoKrN4vDaWkOMbQjuR6mMKN81e49S+DN68iuwb09Ph1nThF
 1EZBX/mhCe7z21PWPoNEsztKT6ocDQmcjMLQiGPSfAm5DvQT8zVXLPNiz
 wotLPXm0a8LC1jylzkEIcBYBfbH1L4aWARFpUtxP+wTEJBE2f7mpjepUX
 5gZSaJtppUhHxXJzIC1RaNx1J1ivL91DF8Y6AQJ3S2owkyHt1csLiGN6w
 p9QCluUuklPSuJUMbZ+XPE68iZz7iOt2FueXhtF6CvrWHH09NY7tAxWQd A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="246099391"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="246099391"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="545065203"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga007.jf.intel.com with SMTP; 25 Mar 2022 05:32:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 14:32:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 14:32:02 +0200
Message-Id: <20220325123205.22140-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/13] drm/i915: Split shared dpll .get_dplls()
 into compute and get phases
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Split the DPLL state computation into a separate function
from the current .get_dplls() which currently serves a dual duty
by also reserving the shared DPLLs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c     |  14 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 291 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   3 +
 3 files changed, 235 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 2ee7255f3c36..32918e082e9f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -933,7 +933,17 @@ static void i8xx_compute_dpll(struct intel_crtc_state *crtc_state,
 static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
-	return 0;
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_encoder *encoder =
+		intel_get_crtc_new_encoder(state, crtc_state);
+
+	if (DISPLAY_VER(dev_priv) < 11 &&
+	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
+		return 0;
+
+	return intel_compute_shared_dplls(state, crtc, encoder);
 }
 
 static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
@@ -1140,7 +1150,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
 			 &crtc_state->dpll);
 
-	return 0;
+	return intel_compute_shared_dplls(state, crtc, NULL);
 }
 
 static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 22f55574a35c..d426724d5a2e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -90,6 +90,9 @@ struct intel_shared_dpll_funcs {
 struct intel_dpll_mgr {
 	const struct dpll_info *dpll_info;
 
+	int (*compute_dplls)(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc,
+			     struct intel_encoder *encoder);
 	int (*get_dplls)(struct intel_atomic_state *state,
 			 struct intel_crtc *crtc,
 			 struct intel_encoder *encoder);
@@ -514,6 +517,13 @@ static void ibx_pch_dpll_disable(struct drm_i915_private *dev_priv,
 	udelay(200);
 }
 
+static int ibx_compute_dpll(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc,
+			    struct intel_encoder *encoder)
+{
+	return 0;
+}
+
 static int ibx_get_dpll(struct intel_atomic_state *state,
 			struct intel_crtc *crtc,
 			struct intel_encoder *encoder)
@@ -578,6 +588,7 @@ static const struct dpll_info pch_plls[] = {
 
 static const struct intel_dpll_mgr pch_pll_mgr = {
 	.dpll_info = pch_plls,
+	.compute_dplls = ibx_compute_dpll,
 	.get_dplls = ibx_get_dpll,
 	.put_dplls = intel_put_dpll,
 	.dump_hw_state = ibx_dump_hw_state,
@@ -894,33 +905,35 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
 	*r2_out = best.r2;
 }
 
-static struct intel_shared_dpll *
-hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
-		       struct intel_crtc *crtc)
+static int
+hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_shared_dpll *pll;
-	u32 val;
 	unsigned int p, n2, r2;
 
 	hsw_ddi_calculate_wrpll(crtc_state->port_clock * 1000, &r2, &n2, &p);
 
-	val = WRPLL_PLL_ENABLE | WRPLL_REF_LCPLL |
-	      WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
-	      WRPLL_DIVIDER_POST(p);
+	crtc_state->dpll_hw_state.wrpll =
+		WRPLL_PLL_ENABLE | WRPLL_REF_LCPLL |
+		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
+		WRPLL_DIVIDER_POST(p);
 
-	crtc_state->dpll_hw_state.wrpll = val;
+	return 0;
+}
 
-	pll = intel_find_shared_dpll(state, crtc,
-				     &crtc_state->dpll_hw_state,
-				     BIT(DPLL_ID_WRPLL2) |
-				     BIT(DPLL_ID_WRPLL1));
+static struct intel_shared_dpll *
+hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (!pll)
-		return NULL;
-
-	return pll;
+	return intel_find_shared_dpll(state, crtc,
+				      &crtc_state->dpll_hw_state,
+				      BIT(DPLL_ID_WRPLL2) |
+				      BIT(DPLL_ID_WRPLL1));
 }
 
 static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
@@ -963,6 +976,24 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 	return (refclk * n / 10) / (p * r) * 2;
 }
 
+static int
+hsw_ddi_lcpll_compute_dpll(struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	int clock = crtc_state->port_clock;
+
+	switch (clock / 2) {
+	case 81000:
+	case 135000:
+	case 270000:
+		return 0;
+	default:
+		drm_dbg_kms(&dev_priv->drm, "Invalid clock for DP: %d\n",
+			    clock);
+		return -EINVAL;
+	}
+}
+
 static struct intel_shared_dpll *
 hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 {
@@ -982,8 +1013,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 		pll_id = DPLL_ID_LCPLL_2700;
 		break;
 	default:
-		drm_dbg_kms(&dev_priv->drm, "Invalid clock for DP: %d\n",
-			    clock);
+		MISSING_CASE(clock / 2);
 		return NULL;
 	}
 
@@ -1019,6 +1049,22 @@ static int hsw_ddi_lcpll_get_freq(struct drm_i915_private *i915,
 	return link_clock * 2;
 }
 
+static int
+hsw_ddi_spll_compute_dpll(struct intel_atomic_state *state,
+			  struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	if (drm_WARN_ON(crtc->base.dev, crtc_state->port_clock / 2 != 135000))
+		return -EINVAL;
+
+	crtc_state->dpll_hw_state.spll =
+		SPLL_PLL_ENABLE | SPLL_FREQ_1350MHz | SPLL_REF_MUXED_SSC;
+
+	return 0;
+}
+
 static struct intel_shared_dpll *
 hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc)
@@ -1026,12 +1072,6 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (drm_WARN_ON(crtc->base.dev, crtc_state->port_clock / 2 != 135000))
-		return NULL;
-
-	crtc_state->dpll_hw_state.spll = SPLL_PLL_ENABLE | SPLL_FREQ_1350MHz |
-					 SPLL_REF_MUXED_SSC;
-
 	return intel_find_shared_dpll(state, crtc, &crtc_state->dpll_hw_state,
 				      BIT(DPLL_ID_SPLL));
 }
@@ -1060,6 +1100,23 @@ static int hsw_ddi_spll_get_freq(struct drm_i915_private *i915,
 	return link_clock * 2;
 }
 
+static int hsw_compute_dpll(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc,
+			    struct intel_encoder *encoder)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		return hsw_ddi_wrpll_compute_dpll(state, crtc);
+	else if (intel_crtc_has_dp_encoder(crtc_state))
+		return hsw_ddi_lcpll_compute_dpll(crtc_state);
+	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG))
+		return hsw_ddi_spll_compute_dpll(state, crtc);
+	else
+		return -EINVAL;
+}
+
 static int hsw_get_dpll(struct intel_atomic_state *state,
 			struct intel_crtc *crtc,
 			struct intel_encoder *encoder)
@@ -1153,6 +1210,7 @@ static const struct dpll_info hsw_plls[] = {
 
 static const struct intel_dpll_mgr hsw_pll_mgr = {
 	.dpll_info = hsw_plls,
+	.compute_dplls = hsw_compute_dpll,
 	.get_dplls = hsw_get_dpll,
 	.put_dplls = intel_put_dpll,
 	.update_ref_clks = hsw_update_dpll_ref_clks,
@@ -1741,6 +1799,21 @@ static int skl_ddi_lcpll_get_freq(struct drm_i915_private *i915,
 	return link_clock * 2;
 }
 
+static int skl_compute_dpll(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc,
+			    struct intel_encoder *encoder)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		return skl_ddi_hdmi_pll_dividers(crtc_state);
+	else if (intel_crtc_has_dp_encoder(crtc_state))
+		return skl_ddi_dp_set_dpll_hw_state(crtc_state);
+	else
+		return -EINVAL;
+}
+
 static int skl_get_dpll(struct intel_atomic_state *state,
 			struct intel_crtc *crtc,
 			struct intel_encoder *encoder)
@@ -1748,16 +1821,6 @@ static int skl_get_dpll(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_shared_dpll *pll;
-	int ret;
-
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		ret = skl_ddi_hdmi_pll_dividers(crtc_state);
-	else if (intel_crtc_has_dp_encoder(crtc_state))
-		ret = skl_ddi_dp_set_dpll_hw_state(crtc_state);
-	else
-		ret = -EINVAL;
-	if (ret)
-		return ret;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
 		pll = intel_find_shared_dpll(state, crtc,
@@ -1834,6 +1897,7 @@ static const struct dpll_info skl_plls[] = {
 
 static const struct intel_dpll_mgr skl_pll_mgr = {
 	.dpll_info = skl_plls,
+	.compute_dplls = skl_compute_dpll,
 	.get_dplls = skl_get_dpll,
 	.put_dplls = intel_put_dpll,
 	.update_ref_clks = skl_update_dpll_ref_clks,
@@ -2225,6 +2289,21 @@ static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
 	return chv_calc_dpll_params(i915->dpll.ref_clks.nssc, &clock);
 }
 
+static int bxt_compute_dpll(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc,
+			    struct intel_encoder *encoder)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		return bxt_ddi_hdmi_set_dpll_hw_state(crtc_state);
+	else if (intel_crtc_has_dp_encoder(crtc_state))
+		return bxt_ddi_dp_set_dpll_hw_state(crtc_state);
+	else
+		return -EINVAL;
+}
+
 static int bxt_get_dpll(struct intel_atomic_state *state,
 			struct intel_crtc *crtc,
 			struct intel_encoder *encoder)
@@ -2234,16 +2313,6 @@ static int bxt_get_dpll(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll;
 	enum intel_dpll_id id;
-	int ret;
-
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		ret = bxt_ddi_hdmi_set_dpll_hw_state(crtc_state);
-	else if (intel_crtc_has_dp_encoder(crtc_state))
-		ret = bxt_ddi_dp_set_dpll_hw_state(crtc_state);
-	else
-		ret = -EINVAL;
-	if (ret)
-		return ret;
 
 	/* 1:1 mapping between ports and PLLs */
 	id = (enum intel_dpll_id) encoder->port;
@@ -2302,6 +2371,7 @@ static const struct dpll_info bxt_plls[] = {
 
 static const struct intel_dpll_mgr bxt_pll_mgr = {
 	.dpll_info = bxt_plls,
+	.compute_dplls = bxt_compute_dpll,
 	.get_dplls = bxt_get_dpll,
 	.put_dplls = intel_put_dpll,
 	.update_ref_clks = bxt_update_dpll_ref_clks,
@@ -3119,19 +3189,16 @@ static u32 intel_get_hti_plls(struct drm_i915_private *i915)
 	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, i915->hti_state);
 }
 
-static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
-				  struct intel_crtc *crtc,
-				  struct intel_encoder *encoder)
+static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
+				      struct intel_crtc *crtc)
 {
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct skl_wrpll_params pll_params = { };
 	struct icl_port_dpll *port_dpll =
 		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum port port = encoder->port;
-	unsigned long dpll_mask;
-	int ret;
+	struct skl_wrpll_params pll_params = {};
+	bool ret;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) ||
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
@@ -3147,6 +3214,21 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 
 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
 
+	return 0;
+}
+
+static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc,
+				  struct intel_encoder *encoder)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct icl_port_dpll *port_dpll =
+		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
+	enum port port = encoder->port;
+	unsigned long dpll_mask;
+
 	if (IS_ALDERLAKE_S(dev_priv)) {
 		dpll_mask =
 			BIT(DPLL_ID_DG1_DPLL3) |
@@ -3198,6 +3280,38 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct icl_port_dpll *port_dpll =
+		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
+	struct skl_wrpll_params pll_params = {};
+	int ret;
+
+	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
+	ret = icl_calc_tbt_pll(crtc_state, &pll_params);
+	if (ret) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Could not calculate TBT PLL state.\n");
+		return ret;
+	}
+
+	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
+
+	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
+	ret = icl_calc_mg_pll_state(crtc_state, &port_dpll->hw_state);
+	if (ret) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Could not calculate MG PHY PLL state.\n");
+		return ret;
+	}
+
+	return 0;
+}
+
 static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 				struct intel_crtc *crtc,
 				struct intel_encoder *encoder)
@@ -3205,21 +3319,12 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct skl_wrpll_params pll_params = { };
-	struct icl_port_dpll *port_dpll;
+	struct icl_port_dpll *port_dpll =
+		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
 	enum intel_dpll_id dpll_id;
 	int ret;
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
-	ret = icl_calc_tbt_pll(crtc_state, &pll_params);
-	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Could not calculate TBT PLL state.\n");
-		return ret;
-	}
-
-	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
-
 	port_dpll->pll = intel_find_shared_dpll(state, crtc,
 						&port_dpll->hw_state,
 						BIT(DPLL_ID_ICL_TBTPLL));
@@ -3232,13 +3337,6 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
-	ret = icl_calc_mg_pll_state(crtc_state, &port_dpll->hw_state);
-	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Could not calculate MG PHY PLL state.\n");
-		goto err_unreference_tbt_pll;
-	}
-
 	dpll_id = icl_tc_port_to_pll_id(intel_port_to_tc(dev_priv,
 							 encoder->port));
 	port_dpll->pll = intel_find_shared_dpll(state, crtc,
@@ -3263,6 +3361,23 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 	return ret;
 }
 
+static int icl_compute_dplls(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc,
+			     struct intel_encoder *encoder)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+
+	if (intel_phy_is_combo(dev_priv, phy))
+		return icl_compute_combo_phy_dpll(state, crtc);
+	else if (intel_phy_is_tc(dev_priv, phy))
+		return icl_compute_tc_phy_dplls(state, crtc);
+
+	MISSING_CASE(phy);
+
+	return 0;
+}
+
 static int icl_get_dplls(struct intel_atomic_state *state,
 			 struct intel_crtc *crtc,
 			 struct intel_encoder *encoder)
@@ -3943,6 +4058,7 @@ static const struct dpll_info icl_plls[] = {
 
 static const struct intel_dpll_mgr icl_pll_mgr = {
 	.dpll_info = icl_plls,
+	.compute_dplls = icl_compute_dplls,
 	.get_dplls = icl_get_dplls,
 	.put_dplls = icl_put_dplls,
 	.update_active_dpll = icl_update_active_dpll,
@@ -3959,6 +4075,7 @@ static const struct dpll_info ehl_plls[] = {
 
 static const struct intel_dpll_mgr ehl_pll_mgr = {
 	.dpll_info = ehl_plls,
+	.compute_dplls = icl_compute_dplls,
 	.get_dplls = icl_get_dplls,
 	.put_dplls = icl_put_dplls,
 	.update_ref_clks = icl_update_dpll_ref_clks,
@@ -3987,6 +4104,7 @@ static const struct dpll_info tgl_plls[] = {
 
 static const struct intel_dpll_mgr tgl_pll_mgr = {
 	.dpll_info = tgl_plls,
+	.compute_dplls = icl_compute_dplls,
 	.get_dplls = icl_get_dplls,
 	.put_dplls = icl_put_dplls,
 	.update_active_dpll = icl_update_active_dpll,
@@ -4003,6 +4121,7 @@ static const struct dpll_info rkl_plls[] = {
 
 static const struct intel_dpll_mgr rkl_pll_mgr = {
 	.dpll_info = rkl_plls,
+	.compute_dplls = icl_compute_dplls,
 	.get_dplls = icl_get_dplls,
 	.put_dplls = icl_put_dplls,
 	.update_ref_clks = icl_update_dpll_ref_clks,
@@ -4019,6 +4138,7 @@ static const struct dpll_info dg1_plls[] = {
 
 static const struct intel_dpll_mgr dg1_pll_mgr = {
 	.dpll_info = dg1_plls,
+	.compute_dplls = icl_compute_dplls,
 	.get_dplls = icl_get_dplls,
 	.put_dplls = icl_put_dplls,
 	.update_ref_clks = icl_update_dpll_ref_clks,
@@ -4035,6 +4155,7 @@ static const struct dpll_info adls_plls[] = {
 
 static const struct intel_dpll_mgr adls_pll_mgr = {
 	.dpll_info = adls_plls,
+	.compute_dplls = icl_compute_dplls,
 	.get_dplls = icl_get_dplls,
 	.put_dplls = icl_put_dplls,
 	.update_ref_clks = icl_update_dpll_ref_clks,
@@ -4054,6 +4175,7 @@ static const struct dpll_info adlp_plls[] = {
 
 static const struct intel_dpll_mgr adlp_pll_mgr = {
 	.dpll_info = adlp_plls,
+	.compute_dplls = icl_compute_dplls,
 	.get_dplls = icl_get_dplls,
 	.put_dplls = icl_put_dplls,
 	.update_active_dpll = icl_update_active_dpll,
@@ -4118,6 +4240,33 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 	BUG_ON(dev_priv->dpll.num_shared_dpll > I915_NUM_PLLS);
 }
 
+/**
+ * intel_compute_shared_dplls - compute DPLL state CRTC and encoder combination
+ * @state: atomic state
+ * @crtc: CRTC to compute DPLLs for
+ * @encoder: encoder
+ *
+ * This function computes the DPLL state for the given CRTC and encoder.
+ *
+ * The new configuration in the atomic commit @state is made effective by
+ * calling intel_shared_dpll_swap_state().
+ *
+ * Returns:
+ * 0 on success, negative error code on falure.
+ */
+int intel_compute_shared_dplls(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc,
+			       struct intel_encoder *encoder)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll.mgr;
+
+	if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
+		return false;
+
+	return dpll_mgr->compute_dplls(state, crtc, encoder);
+}
+
 /**
  * intel_reserve_shared_dplls - reserve DPLLs for CRTC and encoder combination
  * @state: atomic state
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index f7c96a1f13c8..02412bf7625c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -336,6 +336,9 @@ void assert_shared_dpll(struct drm_i915_private *dev_priv,
 			bool state);
 #define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p, true)
 #define assert_shared_dpll_disabled(d, p) assert_shared_dpll(d, p, false)
+int intel_compute_shared_dplls(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc,
+			       struct intel_encoder *encoder);
 int intel_reserve_shared_dplls(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder);
-- 
2.34.1

