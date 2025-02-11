Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6041A30917
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 11:49:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06CAD10E65C;
	Tue, 11 Feb 2025 10:49:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NBAk3aBh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B973A10E65C;
 Tue, 11 Feb 2025 10:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739270968; x=1770806968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TeSfjCcdN4FElXzKtYtXQsyblEzoSljKL2cYbKFkgxQ=;
 b=NBAk3aBh3/QIfIRuEEsXZtq75yI8uxNX5X7wTu3Yd8YV+264zBkoaJHO
 9pjGQ+3XRwmu8sXnbemug5RwrW//MKyEGgPNa9p0qdEHzALLge19PxePy
 JsHeU4b7u7Fti6MbkJ28ipZaeOxs2yauQ99QVN3DRYTo0xZ3Ap9qR7sjm
 rid3dXhOFc9mOMjo68jWGm5+O2+XuKAKdcyxf4E02Ei03a3F5ocb3P4b3
 Ohjeob0SzVk+29WsSUv/3ke2ZUyzhy1eJBPHwirdouw+RERzpvafgSSvW
 QAPeLeswNmOH3w8IyoHKhZxmzvVW9rdgKSKWu5P1Rqlcunabd23STiua8 A==;
X-CSE-ConnectionGUID: 7WAxds0HQzeUE9x5vOvU2w==
X-CSE-MsgGUID: mU8PNdLOQvKvIbjAfXNkKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="57293214"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="57293214"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 02:49:27 -0800
X-CSE-ConnectionGUID: HSfRCvc2T9iHgX61FFx/Qw==
X-CSE-MsgGUID: xWrxoZMsSGOKk5cz2Yl0dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="112991475"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa010.fm.intel.com with ESMTP; 11 Feb 2025 02:49:25 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 9/9] drm/i915/dpll: Replace all other leftover drm_i915_private
Date: Tue, 11 Feb 2025 16:18:57 +0530
Message-Id: <20250211104857.3501566-10-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250211104857.3501566-1-suraj.kandpal@intel.com>
References: <20250211104857.3501566-1-suraj.kandpal@intel.com>
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

Replace all other left over drm_i915_private with intel_display
in dpll_mgr.c.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 99 +++++++++----------
 1 file changed, 48 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 26b6b9372fa3..96abb7e295a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -117,11 +117,10 @@ struct intel_dpll_mgr {
 };
 
 static void
-intel_atomic_duplicate_dpll_state(struct drm_i915_private *i915,
+intel_atomic_duplicate_dpll_state(struct intel_display *display,
 				  struct intel_shared_dpll_state *shared_dpll)
 {
 	struct intel_shared_dpll *pll;
-	struct intel_display *display = to_intel_display(&i915->drm);
 	int i;
 
 	/* Copy shared dpll state */
@@ -139,7 +138,7 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
 	if (!state->dpll_set) {
 		state->dpll_set = true;
 
-		intel_atomic_duplicate_dpll_state(to_i915(s->dev),
+		intel_atomic_duplicate_dpll_state(to_intel_display(state),
 						  state->shared_dpll);
 	}
 
@@ -420,13 +419,13 @@ intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
 				 const struct intel_shared_dpll *pll,
 				 struct intel_shared_dpll_state *shared_dpll_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
-	drm_WARN_ON(&i915->drm, (shared_dpll_state->pipe_mask & BIT(crtc->pipe)) != 0);
+	drm_WARN_ON(display->drm, (shared_dpll_state->pipe_mask & BIT(crtc->pipe)) != 0);
 
 	shared_dpll_state->pipe_mask |= BIT(crtc->pipe);
 
-	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] reserving %s\n",
+	drm_dbg_kms(display->drm, "[CRTC:%d:%s] reserving %s\n",
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
 }
 
@@ -459,13 +458,13 @@ intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
 				   const struct intel_shared_dpll *pll,
 				   struct intel_shared_dpll_state *shared_dpll_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
-	drm_WARN_ON(&i915->drm, (shared_dpll_state->pipe_mask & BIT(crtc->pipe)) == 0);
+	drm_WARN_ON(display->drm, (shared_dpll_state->pipe_mask & BIT(crtc->pipe)) == 0);
 
 	shared_dpll_state->pipe_mask &= ~BIT(crtc->pipe);
 
-	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] releasing %s\n",
+	drm_dbg_kms(display->drm, "[CRTC:%d:%s] releasing %s\n",
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
 }
 
@@ -545,9 +544,8 @@ static bool ibx_pch_dpll_get_hw_state(struct intel_display *display,
 	return val & DPLL_VCO_ENABLE;
 }
 
-static void ibx_assert_pch_refclk_enabled(struct drm_i915_private *i915)
+static void ibx_assert_pch_refclk_enabled(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	u32 val;
 	bool enabled;
 
@@ -562,12 +560,11 @@ static void ibx_pch_dpll_enable(struct intel_display *display,
 				struct intel_shared_dpll *pll,
 				const struct intel_dpll_hw_state *dpll_hw_state)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
 	const enum intel_dpll_id id = pll->info->id;
 
 	/* PCH refclock must be enabled first */
-	ibx_assert_pch_refclk_enabled(i915);
+	ibx_assert_pch_refclk_enabled(display);
 
 	intel_de_write(display, PCH_FP0(id), hw_state->fp0);
 	intel_de_write(display, PCH_FP1(id), hw_state->fp1);
@@ -1074,7 +1071,7 @@ hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
 static int
 hsw_ddi_lcpll_compute_dpll(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	int clock = crtc_state->port_clock;
 
 	switch (clock / 2) {
@@ -1083,7 +1080,7 @@ hsw_ddi_lcpll_compute_dpll(struct intel_crtc_state *crtc_state)
 	case 270000:
 		return 0;
 	default:
-		drm_dbg_kms(&i915->drm, "Invalid clock for DP: %d\n",
+		drm_dbg_kms(display->drm, "Invalid clock for DP: %d\n",
 			    clock);
 		return -EINVAL;
 	}
@@ -2255,7 +2252,7 @@ static int
 bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
 			  struct dpll *clk_div)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	/* Calculate HDMI div */
 	/*
@@ -2265,7 +2262,7 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
 	if (!bxt_find_best_dpll(crtc_state, clk_div))
 		return -EINVAL;
 
-	drm_WARN_ON(&i915->drm, clk_div->m1 != 2);
+	drm_WARN_ON(display->drm, clk_div->m1 != 2);
 
 	return 0;
 }
@@ -2273,7 +2270,7 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
 static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
 				    struct dpll *clk_div)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	int i;
 
 	*clk_div = bxt_dp_clk_val[0];
@@ -2284,16 +2281,16 @@ static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	chv_calc_dpll_params(i915->display.dpll.ref_clks.nssc, clk_div);
+	chv_calc_dpll_params(display->dpll.ref_clks.nssc, clk_div);
 
-	drm_WARN_ON(&i915->drm, clk_div->vco == 0 ||
+	drm_WARN_ON(display->drm, clk_div->vco == 0 ||
 		    clk_div->dot != crtc_state->port_clock);
 }
 
 static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 				     const struct dpll *clk_div)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct bxt_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.bxt;
 	int clock = crtc_state->port_clock;
 	int vco = clk_div->vco;
@@ -2317,7 +2314,7 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 		gain_ctl = 1;
 		targ_cnt = 9;
 	} else {
-		drm_err(&i915->drm, "Invalid VCO\n");
+		drm_err(display->drm, "Invalid VCO\n");
 		return -EINVAL;
 	}
 
@@ -2700,9 +2697,9 @@ static const struct skl_wrpll_params tgl_tbt_pll_24MHz_values = {
 static int icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
 				 struct skl_wrpll_params *pll_params)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct icl_combo_pll_params *params =
-		i915->display.dpll.ref_clks.nssc == 24000 ?
+		display->dpll.ref_clks.nssc == 24000 ?
 		icl_dp_combo_pll_24MHz_values :
 		icl_dp_combo_pll_19_2MHz_values;
 	int clock = crtc_state->port_clock;
@@ -2722,12 +2719,12 @@ static int icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
 static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 			    struct skl_wrpll_params *pll_params)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (DISPLAY_VER(i915) >= 12) {
-		switch (i915->display.dpll.ref_clks.nssc) {
+	if (DISPLAY_VER(display) >= 12) {
+		switch (display->dpll.ref_clks.nssc) {
 		default:
-			MISSING_CASE(i915->display.dpll.ref_clks.nssc);
+			MISSING_CASE(display->dpll.ref_clks.nssc);
 			fallthrough;
 		case 19200:
 		case 38400:
@@ -2738,9 +2735,9 @@ static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 			break;
 		}
 	} else {
-		switch (i915->display.dpll.ref_clks.nssc) {
+		switch (display->dpll.ref_clks.nssc) {
 		default:
-			MISSING_CASE(i915->display.dpll.ref_clks.nssc);
+			MISSING_CASE(display->dpll.ref_clks.nssc);
 			fallthrough;
 		case 19200:
 		case 38400:
@@ -2998,9 +2995,9 @@ static int icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
 static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 				 struct intel_dpll_hw_state *dpll_hw_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
-	int refclk_khz = i915->display.dpll.ref_clks.nssc;
+	int refclk_khz = display->dpll.ref_clks.nssc;
 	int clock = crtc_state->port_clock;
 	u32 dco_khz, m1div, m2div_int, m2div_rem, m2div_frac;
 	u32 iref_ndiv, iref_trim, iref_pulse_w;
@@ -3010,7 +3007,7 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 	u64 tmp;
 	bool use_ssc = false;
 	bool is_dp = !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI);
-	bool is_dkl = DISPLAY_VER(i915) >= 12;
+	bool is_dkl = DISPLAY_VER(display) >= 12;
 	int ret;
 
 	ret = icl_mg_pll_find_divisors(clock, is_dp, use_ssc, &dco_khz,
@@ -3108,8 +3105,8 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 					 DKL_PLL_DIV0_PROP_COEFF(prop_coeff) |
 					 DKL_PLL_DIV0_FBPREDIV(m1div) |
 					 DKL_PLL_DIV0_FBDIV_INT(m2div_int);
-		if (i915->display.vbt.override_afc_startup) {
-			u8 val = i915->display.vbt.override_afc_startup_val;
+		if (display->vbt.override_afc_startup) {
+			u8 val = display->vbt.override_afc_startup_val;
 
 			hw_state->mg_pll_div0 |= DKL_PLL_DIV0_AFC_STARTUP(val);
 		}
@@ -3347,7 +3344,6 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 				  struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct icl_port_dpll *port_dpll =
@@ -3355,13 +3351,13 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 	enum port port = encoder->port;
 	unsigned long dpll_mask;
 
-	if (IS_ALDERLAKE_S(i915)) {
+	if (display->platform.alderlake_s) {
 		dpll_mask =
 			BIT(DPLL_ID_DG1_DPLL3) |
 			BIT(DPLL_ID_DG1_DPLL2) |
 			BIT(DPLL_ID_ICL_DPLL1) |
 			BIT(DPLL_ID_ICL_DPLL0);
-	} else if (IS_DG1(i915)) {
+	} else if (display->platform.dg1) {
 		if (port == PORT_D || port == PORT_E) {
 			dpll_mask =
 				BIT(DPLL_ID_DG1_DPLL2) |
@@ -3371,12 +3367,13 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 				BIT(DPLL_ID_DG1_DPLL0) |
 				BIT(DPLL_ID_DG1_DPLL1);
 		}
-	} else if (IS_ROCKETLAKE(i915)) {
+	} else if (display->platform.rocketlake) {
 		dpll_mask =
 			BIT(DPLL_ID_EHL_DPLL4) |
 			BIT(DPLL_ID_ICL_DPLL1) |
 			BIT(DPLL_ID_ICL_DPLL0);
-	} else if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
+	} else if ((display->platform.jasperlake ||
+		    display->platform.elkhartlake) &&
 		   port != PORT_A) {
 		dpll_mask =
 			BIT(DPLL_ID_EHL_DPLL4) |
@@ -4381,10 +4378,10 @@ int intel_compute_shared_dplls(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = i915->display.dpll.mgr;
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
 
-	if (drm_WARN_ON(&i915->drm, !dpll_mgr))
+	if (drm_WARN_ON(display->drm, !dpll_mgr))
 		return -EINVAL;
 
 	return dpll_mgr->compute_dplls(state, crtc, encoder);
@@ -4414,10 +4411,10 @@ int intel_reserve_shared_dplls(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = i915->display.dpll.mgr;
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
 
-	if (drm_WARN_ON(&i915->drm, !dpll_mgr))
+	if (drm_WARN_ON(display->drm, !dpll_mgr))
 		return -EINVAL;
 
 	return dpll_mgr->get_dplls(state, crtc, encoder);
@@ -4437,8 +4434,8 @@ int intel_reserve_shared_dplls(struct intel_atomic_state *state,
 void intel_release_shared_dplls(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = i915->display.dpll.mgr;
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
 
 	/*
 	 * FIXME: this function is called for every platform having a
@@ -4466,10 +4463,10 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc,
 			      struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = i915->display.dpll.mgr;
+	struct intel_display *display = to_intel_display(encoder);
+	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
 
-	if (drm_WARN_ON(&i915->drm, !dpll_mgr))
+	if (drm_WARN_ON(display->drm, !dpll_mgr))
 		return;
 
 	dpll_mgr->update_active_dpll(state, crtc, encoder);
-- 
2.34.1

