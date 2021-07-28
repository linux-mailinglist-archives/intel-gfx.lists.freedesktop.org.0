Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE4A3D9801
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 00:00:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02FE86E8CB;
	Wed, 28 Jul 2021 22:00:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE7E76EA79
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 22:00:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="199937026"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="199937026"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:05 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="663663240"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:04 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 14:59:31 -0700
Message-Id: <20210728215946.1573015-11-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210728215946.1573015-1-lucas.demarchi@intel.com>
References: <20210728215946.1573015-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/25] drm/i915/display: remove explicit CNL
 handling from intel_dpll_mgr.c
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

The only real platform with DISPLAY_VER == 10 is GLK. We don't need to
handle CNL explicitly in intel_ddi.c.

A lot of special code for CNL can be removed. There were some
__cnl.*() functions that were created to share the implementation
between ICL and CNL. Those are now embedded in the only caller, in ICL.

Remove code and rename functions/macros accordingly to use ICL prefix
for those that are still needed.

Verified with:

	make EXTRA_CFLAGS=-Wunused drivers/gpu/drm/i915/display/intel_dpll_mgr.o

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 586 +++---------------
 drivers/gpu/drm/i915/i915_reg.h               |   4 +-
 2 files changed, 96 insertions(+), 494 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index d180aec4e530..a379649d3e9e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -168,7 +168,7 @@ intel_combo_pll_enable_reg(struct drm_i915_private *i915,
 	else if (IS_JSL_EHL(i915) && (pll->info->id == DPLL_ID_EHL_DPLL4))
 		return MG_PLL_ENABLE(0);
 
-	return CNL_DPLL_ENABLE(pll->info->id);
+	return ICL_DPLL_ENABLE(pll->info->id);
 }
 
 static i915_reg_t
@@ -2346,160 +2346,7 @@ static const struct intel_dpll_mgr bxt_pll_mgr = {
 	.dump_hw_state = bxt_dump_hw_state,
 };
 
-static void cnl_ddi_pll_enable(struct drm_i915_private *dev_priv,
-			       struct intel_shared_dpll *pll)
-{
-	const enum intel_dpll_id id = pll->info->id;
-	u32 val;
-
-	/* 1. Enable DPLL power in DPLL_ENABLE. */
-	val = intel_de_read(dev_priv, CNL_DPLL_ENABLE(id));
-	val |= PLL_POWER_ENABLE;
-	intel_de_write(dev_priv, CNL_DPLL_ENABLE(id), val);
-
-	/* 2. Wait for DPLL power state enabled in DPLL_ENABLE. */
-	if (intel_de_wait_for_set(dev_priv, CNL_DPLL_ENABLE(id),
-				  PLL_POWER_STATE, 5))
-		drm_err(&dev_priv->drm, "PLL %d Power not enabled\n", id);
-
-	/*
-	 * 3. Configure DPLL_CFGCR0 to set SSC enable/disable,
-	 * select DP mode, and set DP link rate.
-	 */
-	val = pll->state.hw_state.cfgcr0;
-	intel_de_write(dev_priv, CNL_DPLL_CFGCR0(id), val);
-
-	/* 4. Reab back to ensure writes completed */
-	intel_de_posting_read(dev_priv, CNL_DPLL_CFGCR0(id));
-
-	/* 3. Configure DPLL_CFGCR0 */
-	/* Avoid touch CFGCR1 if HDMI mode is not enabled */
-	if (pll->state.hw_state.cfgcr0 & DPLL_CFGCR0_HDMI_MODE) {
-		val = pll->state.hw_state.cfgcr1;
-		intel_de_write(dev_priv, CNL_DPLL_CFGCR1(id), val);
-		/* 4. Reab back to ensure writes completed */
-		intel_de_posting_read(dev_priv, CNL_DPLL_CFGCR1(id));
-	}
-
-	/*
-	 * 5. If the frequency will result in a change to the voltage
-	 * requirement, follow the Display Voltage Frequency Switching
-	 * Sequence Before Frequency Change
-	 *
-	 * Note: DVFS is actually handled via the cdclk code paths,
-	 * hence we do nothing here.
-	 */
-
-	/* 6. Enable DPLL in DPLL_ENABLE. */
-	val = intel_de_read(dev_priv, CNL_DPLL_ENABLE(id));
-	val |= PLL_ENABLE;
-	intel_de_write(dev_priv, CNL_DPLL_ENABLE(id), val);
-
-	/* 7. Wait for PLL lock status in DPLL_ENABLE. */
-	if (intel_de_wait_for_set(dev_priv, CNL_DPLL_ENABLE(id), PLL_LOCK, 5))
-		drm_err(&dev_priv->drm, "PLL %d not locked\n", id);
-
-	/*
-	 * 8. If the frequency will result in a change to the voltage
-	 * requirement, follow the Display Voltage Frequency Switching
-	 * Sequence After Frequency Change
-	 *
-	 * Note: DVFS is actually handled via the cdclk code paths,
-	 * hence we do nothing here.
-	 */
-
-	/*
-	 * 9. turn on the clock for the DDI and map the DPLL to the DDI
-	 * Done at intel_ddi_clk_select
-	 */
-}
-
-static void cnl_ddi_pll_disable(struct drm_i915_private *dev_priv,
-				struct intel_shared_dpll *pll)
-{
-	const enum intel_dpll_id id = pll->info->id;
-	u32 val;
-
-	/*
-	 * 1. Configure DPCLKA_CFGCR0 to turn off the clock for the DDI.
-	 * Done at intel_ddi_post_disable
-	 */
-
-	/*
-	 * 2. If the frequency will result in a change to the voltage
-	 * requirement, follow the Display Voltage Frequency Switching
-	 * Sequence Before Frequency Change
-	 *
-	 * Note: DVFS is actually handled via the cdclk code paths,
-	 * hence we do nothing here.
-	 */
-
-	/* 3. Disable DPLL through DPLL_ENABLE. */
-	val = intel_de_read(dev_priv, CNL_DPLL_ENABLE(id));
-	val &= ~PLL_ENABLE;
-	intel_de_write(dev_priv, CNL_DPLL_ENABLE(id), val);
-
-	/* 4. Wait for PLL not locked status in DPLL_ENABLE. */
-	if (intel_de_wait_for_clear(dev_priv, CNL_DPLL_ENABLE(id), PLL_LOCK, 5))
-		drm_err(&dev_priv->drm, "PLL %d locked\n", id);
-
-	/*
-	 * 5. If the frequency will result in a change to the voltage
-	 * requirement, follow the Display Voltage Frequency Switching
-	 * Sequence After Frequency Change
-	 *
-	 * Note: DVFS is actually handled via the cdclk code paths,
-	 * hence we do nothing here.
-	 */
-
-	/* 6. Disable DPLL power in DPLL_ENABLE. */
-	val = intel_de_read(dev_priv, CNL_DPLL_ENABLE(id));
-	val &= ~PLL_POWER_ENABLE;
-	intel_de_write(dev_priv, CNL_DPLL_ENABLE(id), val);
-
-	/* 7. Wait for DPLL power state disabled in DPLL_ENABLE. */
-	if (intel_de_wait_for_clear(dev_priv, CNL_DPLL_ENABLE(id),
-				    PLL_POWER_STATE, 5))
-		drm_err(&dev_priv->drm, "PLL %d Power not disabled\n", id);
-}
-
-static bool cnl_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
-				     struct intel_shared_dpll *pll,
-				     struct intel_dpll_hw_state *hw_state)
-{
-	const enum intel_dpll_id id = pll->info->id;
-	intel_wakeref_t wakeref;
-	u32 val;
-	bool ret;
-
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
-						     POWER_DOMAIN_DISPLAY_CORE);
-	if (!wakeref)
-		return false;
-
-	ret = false;
-
-	val = intel_de_read(dev_priv, CNL_DPLL_ENABLE(id));
-	if (!(val & PLL_ENABLE))
-		goto out;
-
-	val = intel_de_read(dev_priv, CNL_DPLL_CFGCR0(id));
-	hw_state->cfgcr0 = val;
-
-	/* avoid reading back stale values if HDMI mode is not enabled */
-	if (val & DPLL_CFGCR0_HDMI_MODE) {
-		hw_state->cfgcr1 = intel_de_read(dev_priv,
-						 CNL_DPLL_CFGCR1(id));
-	}
-	ret = true;
-
-out:
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
-
-	return ret;
-}
-
-static void cnl_wrpll_get_multipliers(int bestdiv, int *pdiv,
+static void icl_wrpll_get_multipliers(int bestdiv, int *pdiv,
 				      int *qdiv, int *kdiv)
 {
 	/* even dividers */
@@ -2538,7 +2385,7 @@ static void cnl_wrpll_get_multipliers(int bestdiv, int *pdiv,
 	}
 }
 
-static void cnl_wrpll_params_populate(struct skl_wrpll_params *params,
+static void icl_wrpll_params_populate(struct skl_wrpll_params *params,
 				      u32 dco_freq, u32 ref_freq,
 				      int pdiv, int qdiv, int kdiv)
 {
@@ -2586,86 +2433,6 @@ static void cnl_wrpll_params_populate(struct skl_wrpll_params *params,
 	params->dco_fraction = dco & 0x7fff;
 }
 
-static bool
-__cnl_ddi_calculate_wrpll(struct intel_crtc_state *crtc_state,
-			  struct skl_wrpll_params *wrpll_params,
-			  int ref_clock)
-{
-	u32 afe_clock = crtc_state->port_clock * 5;
-	u32 dco_min = 7998000;
-	u32 dco_max = 10000000;
-	u32 dco_mid = (dco_min + dco_max) / 2;
-	static const int dividers[] = {  2,  4,  6,  8, 10, 12,  14,  16,
-					 18, 20, 24, 28, 30, 32,  36,  40,
-					 42, 44, 48, 50, 52, 54,  56,  60,
-					 64, 66, 68, 70, 72, 76,  78,  80,
-					 84, 88, 90, 92, 96, 98, 100, 102,
-					  3,  5,  7,  9, 15, 21 };
-	u32 dco, best_dco = 0, dco_centrality = 0;
-	u32 best_dco_centrality = U32_MAX; /* Spec meaning of 999999 MHz */
-	int d, best_div = 0, pdiv = 0, qdiv = 0, kdiv = 0;
-
-	for (d = 0; d < ARRAY_SIZE(dividers); d++) {
-		dco = afe_clock * dividers[d];
-
-		if ((dco <= dco_max) && (dco >= dco_min)) {
-			dco_centrality = abs(dco - dco_mid);
-
-			if (dco_centrality < best_dco_centrality) {
-				best_dco_centrality = dco_centrality;
-				best_div = dividers[d];
-				best_dco = dco;
-			}
-		}
-	}
-
-	if (best_div == 0)
-		return false;
-
-	cnl_wrpll_get_multipliers(best_div, &pdiv, &qdiv, &kdiv);
-	cnl_wrpll_params_populate(wrpll_params, best_dco, ref_clock,
-				  pdiv, qdiv, kdiv);
-
-	return true;
-}
-
-static bool
-cnl_ddi_calculate_wrpll(struct intel_crtc_state *crtc_state,
-			struct skl_wrpll_params *wrpll_params)
-{
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-
-	return __cnl_ddi_calculate_wrpll(crtc_state, wrpll_params,
-					 i915->dpll.ref_clks.nssc);
-}
-
-static bool cnl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
-{
-	u32 cfgcr0, cfgcr1;
-	struct skl_wrpll_params wrpll_params = { 0, };
-
-	cfgcr0 = DPLL_CFGCR0_HDMI_MODE;
-
-	if (!cnl_ddi_calculate_wrpll(crtc_state, &wrpll_params))
-		return false;
-
-	cfgcr0 |= DPLL_CFGCR0_DCO_FRACTION(wrpll_params.dco_fraction) |
-		wrpll_params.dco_integer;
-
-	cfgcr1 = DPLL_CFGCR1_QDIV_RATIO(wrpll_params.qdiv_ratio) |
-		DPLL_CFGCR1_QDIV_MODE(wrpll_params.qdiv_mode) |
-		DPLL_CFGCR1_KDIV(wrpll_params.kdiv) |
-		DPLL_CFGCR1_PDIV(wrpll_params.pdiv) |
-		DPLL_CFGCR1_CENTRAL_FREQ;
-
-	memset(&crtc_state->dpll_hw_state, 0,
-	       sizeof(crtc_state->dpll_hw_state));
-
-	crtc_state->dpll_hw_state.cfgcr0 = cfgcr0;
-	crtc_state->dpll_hw_state.cfgcr1 = cfgcr1;
-	return true;
-}
-
 /*
  * Display WA #22010492432: ehl, tgl
  * Program half of the nominal DCO divider fraction value.
@@ -2679,256 +2446,6 @@ ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
 		 i915->dpll.ref_clks.nssc == 38400;
 }
 
-static int __cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
-				    const struct intel_shared_dpll *pll,
-				    const struct intel_dpll_hw_state *pll_state,
-				    int ref_clock)
-{
-	u32 dco_fraction;
-	u32 p0, p1, p2, dco_freq;
-
-	p0 = pll_state->cfgcr1 & DPLL_CFGCR1_PDIV_MASK;
-	p2 = pll_state->cfgcr1 & DPLL_CFGCR1_KDIV_MASK;
-
-	if (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_MODE(1))
-		p1 = (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_RATIO_MASK) >>
-			DPLL_CFGCR1_QDIV_RATIO_SHIFT;
-	else
-		p1 = 1;
-
-
-	switch (p0) {
-	case DPLL_CFGCR1_PDIV_2:
-		p0 = 2;
-		break;
-	case DPLL_CFGCR1_PDIV_3:
-		p0 = 3;
-		break;
-	case DPLL_CFGCR1_PDIV_5:
-		p0 = 5;
-		break;
-	case DPLL_CFGCR1_PDIV_7:
-		p0 = 7;
-		break;
-	}
-
-	switch (p2) {
-	case DPLL_CFGCR1_KDIV_1:
-		p2 = 1;
-		break;
-	case DPLL_CFGCR1_KDIV_2:
-		p2 = 2;
-		break;
-	case DPLL_CFGCR1_KDIV_3:
-		p2 = 3;
-		break;
-	}
-
-	dco_freq = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_INTEGER_MASK) *
-		   ref_clock;
-
-	dco_fraction = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
-		       DPLL_CFGCR0_DCO_FRACTION_SHIFT;
-
-	if (ehl_combo_pll_div_frac_wa_needed(dev_priv))
-		dco_fraction *= 2;
-
-	dco_freq += (dco_fraction * ref_clock) / 0x8000;
-
-	if (drm_WARN_ON(&dev_priv->drm, p0 == 0 || p1 == 0 || p2 == 0))
-		return 0;
-
-	return dco_freq / (p0 * p1 * p2 * 5);
-}
-
-static int cnl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
-				  const struct intel_shared_dpll *pll,
-				  const struct intel_dpll_hw_state *pll_state)
-{
-	return __cnl_ddi_wrpll_get_freq(i915, pll, pll_state,
-					i915->dpll.ref_clks.nssc);
-}
-
-static bool
-cnl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
-{
-	u32 cfgcr0;
-
-	cfgcr0 = DPLL_CFGCR0_SSC_ENABLE;
-
-	switch (crtc_state->port_clock / 2) {
-	case 81000:
-		cfgcr0 |= DPLL_CFGCR0_LINK_RATE_810;
-		break;
-	case 135000:
-		cfgcr0 |= DPLL_CFGCR0_LINK_RATE_1350;
-		break;
-	case 270000:
-		cfgcr0 |= DPLL_CFGCR0_LINK_RATE_2700;
-		break;
-		/* eDP 1.4 rates */
-	case 162000:
-		cfgcr0 |= DPLL_CFGCR0_LINK_RATE_1620;
-		break;
-	case 108000:
-		cfgcr0 |= DPLL_CFGCR0_LINK_RATE_1080;
-		break;
-	case 216000:
-		cfgcr0 |= DPLL_CFGCR0_LINK_RATE_2160;
-		break;
-	case 324000:
-		/* Some SKUs may require elevated I/O voltage to support this */
-		cfgcr0 |= DPLL_CFGCR0_LINK_RATE_3240;
-		break;
-	case 405000:
-		/* Some SKUs may require elevated I/O voltage to support this */
-		cfgcr0 |= DPLL_CFGCR0_LINK_RATE_4050;
-		break;
-	}
-
-	memset(&crtc_state->dpll_hw_state, 0,
-	       sizeof(crtc_state->dpll_hw_state));
-
-	crtc_state->dpll_hw_state.cfgcr0 = cfgcr0;
-
-	return true;
-}
-
-static int cnl_ddi_lcpll_get_freq(struct drm_i915_private *i915,
-				  const struct intel_shared_dpll *pll,
-				  const struct intel_dpll_hw_state *pll_state)
-{
-	int link_clock = 0;
-
-	switch (pll_state->cfgcr0 & DPLL_CFGCR0_LINK_RATE_MASK) {
-	case DPLL_CFGCR0_LINK_RATE_810:
-		link_clock = 81000;
-		break;
-	case DPLL_CFGCR0_LINK_RATE_1080:
-		link_clock = 108000;
-		break;
-	case DPLL_CFGCR0_LINK_RATE_1350:
-		link_clock = 135000;
-		break;
-	case DPLL_CFGCR0_LINK_RATE_1620:
-		link_clock = 162000;
-		break;
-	case DPLL_CFGCR0_LINK_RATE_2160:
-		link_clock = 216000;
-		break;
-	case DPLL_CFGCR0_LINK_RATE_2700:
-		link_clock = 270000;
-		break;
-	case DPLL_CFGCR0_LINK_RATE_3240:
-		link_clock = 324000;
-		break;
-	case DPLL_CFGCR0_LINK_RATE_4050:
-		link_clock = 405000;
-		break;
-	default:
-		drm_WARN(&i915->drm, 1, "Unsupported link rate\n");
-		break;
-	}
-
-	return link_clock * 2;
-}
-
-static bool cnl_get_dpll(struct intel_atomic_state *state,
-			 struct intel_crtc *crtc,
-			 struct intel_encoder *encoder)
-{
-	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	struct intel_shared_dpll *pll;
-	bool bret;
-
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
-		bret = cnl_ddi_hdmi_pll_dividers(crtc_state);
-		if (!bret) {
-			drm_dbg_kms(&i915->drm,
-				    "Could not get HDMI pll dividers.\n");
-			return false;
-		}
-	} else if (intel_crtc_has_dp_encoder(crtc_state)) {
-		bret = cnl_ddi_dp_set_dpll_hw_state(crtc_state);
-		if (!bret) {
-			drm_dbg_kms(&i915->drm,
-				    "Could not set DP dpll HW state.\n");
-			return false;
-		}
-	} else {
-		drm_dbg_kms(&i915->drm,
-			    "Skip DPLL setup for output_types 0x%x\n",
-			    crtc_state->output_types);
-		return false;
-	}
-
-	pll = intel_find_shared_dpll(state, crtc,
-				     &crtc_state->dpll_hw_state,
-				     BIT(DPLL_ID_SKL_DPLL2) |
-				     BIT(DPLL_ID_SKL_DPLL1) |
-				     BIT(DPLL_ID_SKL_DPLL0));
-	if (!pll) {
-		drm_dbg_kms(&i915->drm, "No PLL selected\n");
-		return false;
-	}
-
-	intel_reference_shared_dpll(state, crtc,
-				    pll, &crtc_state->dpll_hw_state);
-
-	crtc_state->shared_dpll = pll;
-
-	return true;
-}
-
-static int cnl_ddi_pll_get_freq(struct drm_i915_private *i915,
-				const struct intel_shared_dpll *pll,
-				const struct intel_dpll_hw_state *pll_state)
-{
-	if (pll_state->cfgcr0 & DPLL_CFGCR0_HDMI_MODE)
-		return cnl_ddi_wrpll_get_freq(i915, pll, pll_state);
-	else
-		return cnl_ddi_lcpll_get_freq(i915, pll, pll_state);
-}
-
-static void cnl_update_dpll_ref_clks(struct drm_i915_private *i915)
-{
-	/* No SSC reference */
-	i915->dpll.ref_clks.nssc = i915->cdclk.hw.ref;
-}
-
-static void cnl_dump_hw_state(struct drm_i915_private *dev_priv,
-			      const struct intel_dpll_hw_state *hw_state)
-{
-	drm_dbg_kms(&dev_priv->drm, "dpll_hw_state: "
-		    "cfgcr0: 0x%x, cfgcr1: 0x%x\n",
-		    hw_state->cfgcr0,
-		    hw_state->cfgcr1);
-}
-
-static const struct intel_shared_dpll_funcs cnl_ddi_pll_funcs = {
-	.enable = cnl_ddi_pll_enable,
-	.disable = cnl_ddi_pll_disable,
-	.get_hw_state = cnl_ddi_pll_get_hw_state,
-	.get_freq = cnl_ddi_pll_get_freq,
-};
-
-static const struct dpll_info cnl_plls[] = {
-	{ "DPLL 0", &cnl_ddi_pll_funcs, DPLL_ID_SKL_DPLL0, 0 },
-	{ "DPLL 1", &cnl_ddi_pll_funcs, DPLL_ID_SKL_DPLL1, 0 },
-	{ "DPLL 2", &cnl_ddi_pll_funcs, DPLL_ID_SKL_DPLL2, 0 },
-	{ },
-};
-
-static const struct intel_dpll_mgr cnl_pll_mgr = {
-	.dpll_info = cnl_plls,
-	.get_dplls = cnl_get_dpll,
-	.put_dplls = intel_put_dpll,
-	.update_ref_clks = cnl_update_dpll_ref_clks,
-	.dump_hw_state = cnl_dump_hw_state,
-};
-
 struct icl_combo_pll_params {
 	int clock;
 	struct skl_wrpll_params wrpll;
@@ -3105,17 +2622,104 @@ icl_calc_wrpll(struct intel_crtc_state *crtc_state,
 	       struct skl_wrpll_params *wrpll_params)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	int ref_clock = icl_wrpll_ref_clock(i915);
+	u32 afe_clock = crtc_state->port_clock * 5;
+	u32 dco_min = 7998000;
+	u32 dco_max = 10000000;
+	u32 dco_mid = (dco_min + dco_max) / 2;
+	static const int dividers[] = {  2,  4,  6,  8, 10, 12,  14,  16,
+					 18, 20, 24, 28, 30, 32,  36,  40,
+					 42, 44, 48, 50, 52, 54,  56,  60,
+					 64, 66, 68, 70, 72, 76,  78,  80,
+					 84, 88, 90, 92, 96, 98, 100, 102,
+					  3,  5,  7,  9, 15, 21 };
+	u32 dco, best_dco = 0, dco_centrality = 0;
+	u32 best_dco_centrality = U32_MAX; /* Spec meaning of 999999 MHz */
+	int d, best_div = 0, pdiv = 0, qdiv = 0, kdiv = 0;
+
+	for (d = 0; d < ARRAY_SIZE(dividers); d++) {
+		dco = afe_clock * dividers[d];
+
+		if (dco <= dco_max && dco >= dco_min) {
+			dco_centrality = abs(dco - dco_mid);
 
-	return __cnl_ddi_calculate_wrpll(crtc_state, wrpll_params,
-					 icl_wrpll_ref_clock(i915));
+			if (dco_centrality < best_dco_centrality) {
+				best_dco_centrality = dco_centrality;
+				best_div = dividers[d];
+				best_dco = dco;
+			}
+		}
+	}
+
+	if (best_div == 0)
+		return false;
+
+	icl_wrpll_get_multipliers(best_div, &pdiv, &qdiv, &kdiv);
+	icl_wrpll_params_populate(wrpll_params, best_dco, ref_clock,
+				  pdiv, qdiv, kdiv);
+
+	return true;
 }
 
 static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
 				      const struct intel_shared_dpll *pll,
 				      const struct intel_dpll_hw_state *pll_state)
 {
-	return __cnl_ddi_wrpll_get_freq(i915, pll, pll_state,
-					icl_wrpll_ref_clock(i915));
+	int ref_clock = icl_wrpll_ref_clock(i915);
+	u32 dco_fraction;
+	u32 p0, p1, p2, dco_freq;
+
+	p0 = pll_state->cfgcr1 & DPLL_CFGCR1_PDIV_MASK;
+	p2 = pll_state->cfgcr1 & DPLL_CFGCR1_KDIV_MASK;
+
+	if (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_MODE(1))
+		p1 = (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_RATIO_MASK) >>
+			DPLL_CFGCR1_QDIV_RATIO_SHIFT;
+	else
+		p1 = 1;
+
+	switch (p0) {
+	case DPLL_CFGCR1_PDIV_2:
+		p0 = 2;
+		break;
+	case DPLL_CFGCR1_PDIV_3:
+		p0 = 3;
+		break;
+	case DPLL_CFGCR1_PDIV_5:
+		p0 = 5;
+		break;
+	case DPLL_CFGCR1_PDIV_7:
+		p0 = 7;
+		break;
+	}
+
+	switch (p2) {
+	case DPLL_CFGCR1_KDIV_1:
+		p2 = 1;
+		break;
+	case DPLL_CFGCR1_KDIV_2:
+		p2 = 2;
+		break;
+	case DPLL_CFGCR1_KDIV_3:
+		p2 = 3;
+		break;
+	}
+
+	dco_freq = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_INTEGER_MASK) *
+		   ref_clock;
+
+	dco_fraction = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
+		       DPLL_CFGCR0_DCO_FRACTION_SHIFT;
+
+	if (ehl_combo_pll_div_frac_wa_needed(i915))
+		dco_fraction *= 2;
+
+	dco_freq += (dco_fraction * ref_clock) / 0x8000;
+
+	if (drm_WARN_ON(&i915->drm, p0 == 0 || p1 == 0 || p2 == 0))
+		return 0;
+
+	return dco_freq / (p0 * p1 * p2 * 5);
 }
 
 static void icl_calc_dpll_state(struct drm_i915_private *i915,
@@ -4479,8 +4083,6 @@ void intel_shared_dpll_init(struct drm_device *dev)
 		dpll_mgr = &ehl_pll_mgr;
 	else if (DISPLAY_VER(dev_priv) >= 11)
 		dpll_mgr = &icl_pll_mgr;
-	else if (IS_CANNONLAKE(dev_priv))
-		dpll_mgr = &cnl_pll_mgr;
 	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		dpll_mgr = &bxt_pll_mgr;
 	else if (DISPLAY_VER(dev_priv) == 9)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5812662fadfc..c40d40753da6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10569,7 +10569,7 @@ enum skl_power_gate {
 							ADLS_DPCLKA_DDIJ_SEL_MASK, \
 							ADLS_DPCLKA_DDIK_SEL_MASK)
 
-/* CNL PLL */
+/* ICL PLL */
 #define DPLL0_ENABLE		0x46010
 #define DPLL1_ENABLE		0x46014
 #define _ADLS_DPLL2_ENABLE	0x46018
@@ -10578,7 +10578,7 @@ enum skl_power_gate {
 #define  PLL_LOCK		(1 << 30)
 #define  PLL_POWER_ENABLE	(1 << 27)
 #define  PLL_POWER_STATE	(1 << 26)
-#define CNL_DPLL_ENABLE(pll)	_MMIO_PLL3(pll, DPLL0_ENABLE, DPLL1_ENABLE, \
+#define ICL_DPLL_ENABLE(pll)	_MMIO_PLL3(pll, DPLL0_ENABLE, DPLL1_ENABLE, \
 					   _ADLS_DPLL2_ENABLE, _ADLS_DPLL3_ENABLE)
 
 #define TBT_PLL_ENABLE		_MMIO(0x46020)
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
