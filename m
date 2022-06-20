Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBE355230E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F72810ED7D;
	Mon, 20 Jun 2022 17:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F173610ED7D
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747539; x=1687283539;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uan7pqduxkcIWcjkRmBvU20Mhr2Nm7lr7e+Zb0gO538=;
 b=dQmJhWSYvPc7U8gn8IwMrm4dKlF9wB2kad0i66oD6+xQYYW3g77kwiky
 61cM42VnsdtX3r2WUHcouenk4Ybh+q1jiRaAjnicUW65Tgu0StyE2a2ZI
 xRTX0lX0KCOAdx9dMe5RoaazSZ70H6OPcCeYTo1gDEzX53OTV1Jj22/XN
 pcwqNJaAC9lVvxETJvrU1Q6iCGpkFI5gUfLiexsRnxB/0xqecT1RfR0HF
 1pPnQmciGepZZfbe+YLhRwtRo/PuGfxhj/Uto6ZG+Wze6D/ha4QXr+SSv
 +PnT5NdmxS8Ph5YGSYFpcqkef9Hd35d8MuouJf/0OB3BFUnhsxNFbzWvy w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="341633516"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="341633516"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:52:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="729483726"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga001.fm.intel.com with SMTP; 20 Jun 2022 10:52:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:52:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:51:55 +0300
Message-Id: <20220620175210.28788-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/17] drm/i915: Shuffle some PLL code around
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Shuffle some PLL functions around a bit to avoid ugle
forward declarations later on. No functional changes.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 176 +++++++++---------
 1 file changed, 88 insertions(+), 88 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ddae7e42ac46..bfccc96f16fe 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -905,37 +905,6 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
 	*r2_out = best.r2;
 }
 
-static int
-hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
-			   struct intel_crtc *crtc)
-{
-	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	unsigned int p, n2, r2;
-
-	hsw_ddi_calculate_wrpll(crtc_state->port_clock * 1000, &r2, &n2, &p);
-
-	crtc_state->dpll_hw_state.wrpll =
-		WRPLL_PLL_ENABLE | WRPLL_REF_LCPLL |
-		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
-		WRPLL_DIVIDER_POST(p);
-
-	return 0;
-}
-
-static struct intel_shared_dpll *
-hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
-		       struct intel_crtc *crtc)
-{
-	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-
-	return intel_find_shared_dpll(state, crtc,
-				      &crtc_state->dpll_hw_state,
-				      BIT(DPLL_ID_WRPLL2) |
-				      BIT(DPLL_ID_WRPLL1));
-}
-
 static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 				  const struct intel_shared_dpll *pll,
 				  const struct intel_dpll_hw_state *pll_state)
@@ -976,6 +945,37 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 	return (refclk * n / 10) / (p * r) * 2;
 }
 
+static int
+hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	unsigned int p, n2, r2;
+
+	hsw_ddi_calculate_wrpll(crtc_state->port_clock * 1000, &r2, &n2, &p);
+
+	crtc_state->dpll_hw_state.wrpll =
+		WRPLL_PLL_ENABLE | WRPLL_REF_LCPLL |
+		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
+		WRPLL_DIVIDER_POST(p);
+
+	return 0;
+}
+
+static struct intel_shared_dpll *
+hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	return intel_find_shared_dpll(state, crtc,
+				      &crtc_state->dpll_hw_state,
+				      BIT(DPLL_ID_WRPLL2) |
+				      BIT(DPLL_ID_WRPLL1));
+}
+
 static int
 hsw_ddi_lcpll_compute_dpll(struct intel_crtc_state *crtc_state)
 {
@@ -1618,43 +1618,6 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
 	return 0;
 }
 
-static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	struct skl_wrpll_params wrpll_params = {};
-	u32 ctrl1, cfgcr1, cfgcr2;
-	int ret;
-
-	/*
-	 * See comment in intel_dpll_hw_state to understand why we always use 0
-	 * as the DPLL id in this function.
-	 */
-	ctrl1 = DPLL_CTRL1_OVERRIDE(0);
-
-	ctrl1 |= DPLL_CTRL1_HDMI_MODE(0);
-
-	ret = skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000,
-				      i915->dpll.ref_clks.nssc, &wrpll_params);
-	if (ret)
-		return ret;
-
-	cfgcr1 = DPLL_CFGCR1_FREQ_ENABLE |
-		DPLL_CFGCR1_DCO_FRACTION(wrpll_params.dco_fraction) |
-		wrpll_params.dco_integer;
-
-	cfgcr2 = DPLL_CFGCR2_QDIV_RATIO(wrpll_params.qdiv_ratio) |
-		DPLL_CFGCR2_QDIV_MODE(wrpll_params.qdiv_mode) |
-		DPLL_CFGCR2_KDIV(wrpll_params.kdiv) |
-		DPLL_CFGCR2_PDIV(wrpll_params.pdiv) |
-		wrpll_params.central_freq;
-
-	crtc_state->dpll_hw_state.ctrl1 = ctrl1;
-	crtc_state->dpll_hw_state.cfgcr1 = cfgcr1;
-	crtc_state->dpll_hw_state.cfgcr2 = cfgcr2;
-
-	return 0;
-}
-
 static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 				  const struct intel_shared_dpll *pll,
 				  const struct intel_dpll_hw_state *pll_state)
@@ -1726,6 +1689,43 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 	return dco_freq / (p0 * p1 * p2 * 5);
 }
 
+static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct skl_wrpll_params wrpll_params = {};
+	u32 ctrl1, cfgcr1, cfgcr2;
+	int ret;
+
+	/*
+	 * See comment in intel_dpll_hw_state to understand why we always use 0
+	 * as the DPLL id in this function.
+	 */
+	ctrl1 = DPLL_CTRL1_OVERRIDE(0);
+
+	ctrl1 |= DPLL_CTRL1_HDMI_MODE(0);
+
+	ret = skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000,
+				      i915->dpll.ref_clks.nssc, &wrpll_params);
+	if (ret)
+		return ret;
+
+	cfgcr1 = DPLL_CFGCR1_FREQ_ENABLE |
+		DPLL_CFGCR1_DCO_FRACTION(wrpll_params.dco_fraction) |
+		wrpll_params.dco_integer;
+
+	cfgcr2 = DPLL_CFGCR2_QDIV_RATIO(wrpll_params.qdiv_ratio) |
+		DPLL_CFGCR2_QDIV_MODE(wrpll_params.qdiv_mode) |
+		DPLL_CFGCR2_KDIV(wrpll_params.kdiv) |
+		DPLL_CFGCR2_PDIV(wrpll_params.pdiv) |
+		wrpll_params.central_freq;
+
+	crtc_state->dpll_hw_state.ctrl1 = ctrl1;
+	crtc_state->dpll_hw_state.cfgcr1 = cfgcr1;
+	crtc_state->dpll_hw_state.cfgcr2 = cfgcr2;
+
+	return 0;
+}
+
 static int
 skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
@@ -2245,26 +2245,6 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static int
-bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
-{
-	struct dpll clk_div = {};
-
-	bxt_ddi_dp_pll_dividers(crtc_state, &clk_div);
-
-	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
-}
-
-static int
-bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
-{
-	struct dpll clk_div = {};
-
-	bxt_ddi_hdmi_pll_dividers(crtc_state, &clk_div);
-
-	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
-}
-
 static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
 				const struct intel_shared_dpll *pll,
 				const struct intel_dpll_hw_state *pll_state)
@@ -2282,6 +2262,26 @@ static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
 	return chv_calc_dpll_params(i915->dpll.ref_clks.nssc, &clock);
 }
 
+static int
+bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
+{
+	struct dpll clk_div = {};
+
+	bxt_ddi_dp_pll_dividers(crtc_state, &clk_div);
+
+	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
+}
+
+static int
+bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
+{
+	struct dpll clk_div = {};
+
+	bxt_ddi_hdmi_pll_dividers(crtc_state, &clk_div);
+
+	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
+}
+
 static int bxt_compute_dpll(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc,
 			    struct intel_encoder *encoder)
-- 
2.35.1

