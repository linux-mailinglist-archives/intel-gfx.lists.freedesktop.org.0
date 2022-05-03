Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DB5518C2E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:22:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C7810E820;
	Tue,  3 May 2022 18:22:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A676610E820
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602175; x=1683138175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=04X2Oq2QCowUT8UmbNSGM3PAIrc4iSxnhroTqZTsJoE=;
 b=QAhxTrin/CA+fBWGqODGA2LvxFCTBY5GO/DMPB80hVgbwh6U534L3T9O
 ZmQpR4DISwXuQpz/KpcqkUZCTJr1kpL2+mrYS6yyjgoeCvgh5Fi2UHOq9
 8OBuwJ/KlNcbrlSlY4RHYTKSAZcjUrbkFZrl8UFozYGhcNvy+aWuo3OjH
 TlMsBV2B7khC+Kx6RwKLaSJftbPKI0gAd+PpcQi6ixCfvzU77NhxR3GiU
 ED1k47RDANDteZfsDk8q/goFb4kxb3r6bGayp1fUMwy/pvt1YOqXtULKH
 buAGprfJ92ZAagNg5+ZD4zo5WKdoM/Hz2pdQATF3Z8gBlBIT0j3unNWcN g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="267709072"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="267709072"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:22:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="653372423"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by FMSMGA003.fm.intel.com with SMTP; 03 May 2022 11:22:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:22:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:19 +0300
Message-Id: <20220503182242.18797-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/26] drm/i915: Clean up DPLL related debugs
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

The debugs in lower level DPLL code don't really provide any
useful extra information AFAICS. Better just streamline the
code and just put the necessary debugs (to identify at which
step the modeset failed) into the higher level code. In
addition we'll get the full state dump as well, which should
hopefully have enough information to figure out what went wrong.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c     | 75 +++++++------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 48 +++---------
 2 files changed, 35 insertions(+), 88 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 7f0538ee2b51..2b3f72550e5a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -954,21 +954,12 @@ static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
 		intel_get_crtc_new_encoder(state, crtc_state);
-	int ret;
 
 	if (DISPLAY_VER(dev_priv) < 11 &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	ret = intel_reserve_shared_dplls(state, crtc, encoder);
-	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "failed to find PLL for pipe %c\n",
-			    pipe_name(crtc->pipe));
-		return ret;
-	}
-
-	return 0;
+	return intel_reserve_shared_dplls(state, crtc, encoder);
 }
 
 static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
@@ -1135,11 +1126,8 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (!crtc_state->clock_set &&
 	    !g4x_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
-				refclk, NULL, &crtc_state->dpll)) {
-		drm_err(&dev_priv->drm,
-			"Couldn't find PLL settings for mode!\n");
+				refclk, NULL, &crtc_state->dpll))
 		return -EINVAL;
-	}
 
 	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
 			 &crtc_state->dpll);
@@ -1150,24 +1138,14 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	int ret;
 
 	/* CPU eDP is the only output that doesn't need a PCH PLL of its own. */
 	if (!crtc_state->has_pch_encoder)
 		return 0;
 
-	ret = intel_reserve_shared_dplls(state, crtc, NULL);
-	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "failed to find PLL for pipe %c\n",
-			    pipe_name(crtc->pipe));
-		return ret;
-	}
-
-	return 0;
+	return intel_reserve_shared_dplls(state, crtc, NULL);
 }
 
 void vlv_compute_dpll(struct intel_crtc_state *crtc_state)
@@ -1208,7 +1186,6 @@ void chv_compute_dpll(struct intel_crtc_state *crtc_state)
 static int chv_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit = &intel_limits_chv;
@@ -1216,10 +1193,8 @@ static int chv_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (!crtc_state->clock_set &&
 	    !chv_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
-				refclk, NULL, &crtc_state->dpll)) {
-		drm_err(&i915->drm, "Couldn't find PLL settings for mode!\n");
+				refclk, NULL, &crtc_state->dpll))
 		return -EINVAL;
-	}
 
 	chv_compute_dpll(crtc_state);
 
@@ -1229,7 +1204,6 @@ static int chv_crtc_compute_clock(struct intel_atomic_state *state,
 static int vlv_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit = &intel_limits_vlv;
@@ -1238,7 +1212,6 @@ static int vlv_crtc_compute_clock(struct intel_atomic_state *state,
 	if (!crtc_state->clock_set &&
 	    !vlv_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
 				refclk, NULL, &crtc_state->dpll)) {
-		drm_err(&i915->drm,  "Couldn't find PLL settings for mode!\n");
 		return -EINVAL;
 	}
 
@@ -1280,11 +1253,8 @@ static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (!crtc_state->clock_set &&
 	    !g4x_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
-				refclk, NULL, &crtc_state->dpll)) {
-		drm_err(&dev_priv->drm,
-			"Couldn't find PLL settings for mode!\n");
+				refclk, NULL, &crtc_state->dpll))
 		return -EINVAL;
-	}
 
 	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
@@ -1316,11 +1286,8 @@ static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (!crtc_state->clock_set &&
 	    !pnv_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
-				refclk, NULL, &crtc_state->dpll)) {
-		drm_err(&dev_priv->drm,
-			"Couldn't find PLL settings for mode!\n");
+				refclk, NULL, &crtc_state->dpll))
 		return -EINVAL;
-	}
 
 	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
@@ -1352,11 +1319,8 @@ static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (!crtc_state->clock_set &&
 	    !i9xx_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
-				 refclk, NULL, &crtc_state->dpll)) {
-		drm_err(&dev_priv->drm,
-			"Couldn't find PLL settings for mode!\n");
+				 refclk, NULL, &crtc_state->dpll))
 		return -EINVAL;
-	}
 
 	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
@@ -1390,11 +1354,8 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (!crtc_state->clock_set &&
 	    !i9xx_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
-				 refclk, NULL, &crtc_state->dpll)) {
-		drm_err(&dev_priv->drm,
-			"Couldn't find PLL settings for mode!\n");
+				 refclk, NULL, &crtc_state->dpll))
 		return -EINVAL;
-	}
 
 	i8xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
@@ -1446,6 +1407,7 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	int ret;
 
 	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
 
@@ -1455,7 +1417,14 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 	if (!crtc_state->hw.enable)
 		return 0;
 
-	return i915->dpll_funcs->crtc_compute_clock(state, crtc);
+	ret = i915->dpll_funcs->crtc_compute_clock(state, crtc);
+	if (ret) {
+		drm_dbg_kms(&i915->drm,  "[CRTC:%d:%s] Couldn't calculate DPLL settings\n",
+			    crtc->base.base.id, crtc->base.name);
+		return ret;
+	}
+
+	return 0;
 }
 
 int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
@@ -1464,6 +1433,7 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	int ret;
 
 	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
 
@@ -1476,7 +1446,14 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	if (!i915->dpll_funcs->crtc_get_shared_dpll)
 		return 0;
 
-	return i915->dpll_funcs->crtc_get_shared_dpll(state, crtc);
+	ret = i915->dpll_funcs->crtc_get_shared_dpll(state, crtc);
+	if (ret) {
+		drm_dbg_kms(&i915->drm,  "[CRTC:%d:%s] Couldn't get a shared DPLL\n",
+			    crtc->base.base.id, crtc->base.name);
+		return ret;
+	}
+
+	return 0;
 }
 
 void
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 4c5c3439b745..64708e874b13 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1603,10 +1603,8 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
 			break;
 	}
 
-	if (!ctx.p) {
-		DRM_DEBUG_DRIVER("No valid divider found for %dHz\n", clock);
+	if (!ctx.p)
 		return -EINVAL;
-	}
 
 	/*
 	 * gcc incorrectly analyses that these can be used without being
@@ -2145,19 +2143,14 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
 			  struct dpll *clk_div)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	/* Calculate HDMI div */
 	/*
 	 * FIXME: tie the following calculation into
 	 * i9xx_crtc_compute_clock
 	 */
-	if (!bxt_find_best_dpll(crtc_state, clk_div)) {
-		drm_dbg(&i915->drm, "no PLL dividers found for clock %d pipe %c\n",
-			crtc_state->port_clock,
-			pipe_name(crtc->pipe));
+	if (!bxt_find_best_dpll(crtc_state, clk_div))
 		return -EINVAL;
-	}
 
 	drm_WARN_ON(&i915->drm, clk_div->m1 != 2);
 
@@ -2879,11 +2872,8 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 
 	ret = icl_mg_pll_find_divisors(clock, is_dp, use_ssc, &dco_khz,
 				       pll_state, is_dkl);
-	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Failed to find divisors for clock %d\n", clock);
+	if (ret)
 		return ret;
-	}
 
 	m1div = 2;
 	m2div_int = dco_khz / (refclk_khz * m1div);
@@ -2893,12 +2883,8 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 			m2div_int = dco_khz / (refclk_khz * m1div);
 		}
 
-		if (m2div_int > 255) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "Failed to find mdiv for clock %d\n",
-				    clock);
+		if (m2div_int > 255)
 			return -EINVAL;
-		}
 	}
 	m2div_rem = dco_khz % (refclk_khz * m1div);
 
@@ -3206,11 +3192,8 @@ static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
 	else
 		ret = icl_calc_dp_combo_pll(crtc_state, &pll_params);
 
-	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Could not calculate combo PHY PLL state.\n");
+	if (ret)
 		return ret;
-	}
 
 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
 
@@ -3265,12 +3248,8 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 	port_dpll->pll = intel_find_shared_dpll(state, crtc,
 						&port_dpll->hw_state,
 						dpll_mask);
-	if (!port_dpll->pll) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "No combo PHY PLL found for [ENCODER:%d:%s]\n",
-			    encoder->base.base.id, encoder->base.name);
+	if (!port_dpll->pll)
 		return -EINVAL;
-	}
 
 	intel_reference_shared_dpll(state, crtc,
 				    port_dpll->pll, &port_dpll->hw_state);
@@ -3293,21 +3272,15 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
 	ret = icl_calc_tbt_pll(crtc_state, &pll_params);
-	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Could not calculate TBT PLL state.\n");
+	if (ret)
 		return ret;
-	}
 
 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
 	ret = icl_calc_mg_pll_state(crtc_state, &port_dpll->hw_state);
-	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Could not calculate MG PHY PLL state.\n");
+	if (ret)
 		return ret;
-	}
 
 	return 0;
 }
@@ -3328,10 +3301,8 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 	port_dpll->pll = intel_find_shared_dpll(state, crtc,
 						&port_dpll->hw_state,
 						BIT(DPLL_ID_ICL_TBTPLL));
-	if (!port_dpll->pll) {
-		drm_dbg_kms(&dev_priv->drm, "No TBT-ALT PLL found\n");
+	if (!port_dpll->pll)
 		return -EINVAL;
-	}
 	intel_reference_shared_dpll(state, crtc,
 				    port_dpll->pll, &port_dpll->hw_state);
 
@@ -3344,7 +3315,6 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 						BIT(dpll_id));
 	if (!port_dpll->pll) {
 		ret = -EINVAL;
-		drm_dbg_kms(&dev_priv->drm, "No MG PHY PLL found\n");
 		goto err_unreference_tbt_pll;
 	}
 	intel_reference_shared_dpll(state, crtc,
-- 
2.35.1

