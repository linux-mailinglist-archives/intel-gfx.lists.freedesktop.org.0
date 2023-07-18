Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DB0757647
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 10:11:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48EC310E2FE;
	Tue, 18 Jul 2023 08:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63D1410E2FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 08:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689667907; x=1721203907;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sPqi8UOEeR/wc5Ik6m5i/l3J6OPSTRfH0qpWm7Bp3o4=;
 b=bFfJCgJooC9EVV81ZYlBgaXuc3HK+QKOZ3yypigTw6Ca7CaXVRuKHAVS
 JcuHG6bZmq8ROQHV36cmTVC62uGiZkj//jDAPro41LM41enODMffTNtW7
 QGLCakYfaTu2EagXK6+OpjW/fLgM4ET5xByffhxtx25WUlRvCelFqhmgc
 Zsw1I35cCqOtT99fggfhpVZJ8HPa2e6SCW5WFQ9NY1o0hRiyEWMPS5mJU
 ahEdf814uJptz6+FLUH+Bln37l0TfOwBYCpI0yqPtzUOlTTC+YXsd7Pb+
 9cD+sRnLztUCDg11hafQUgFryG5x3ZzZiIJ/hYxE6tSoH0SQfftdHRtLU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="369696587"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="369696587"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:11:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="723518252"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="723518252"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga002.jf.intel.com with ESMTP; 18 Jul 2023 01:11:43 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 13:41:08 +0530
Message-Id: <20230718081115.166212-9-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
References: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3 08/15] drm/i915/jsl: s/JSL/JASPERLAKE for
 platform/subplatform defines
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow consistent naming convention. Replace JSL with
JASPERLAKE. Unroll IS_JSL_EHL() define  with IS_JASPERLAKE() ||
IS_ELKHARTLAKE() condition. Change in the display step define for
Jasperlake.

v2:
- Change subject  prefix skl instead of SKL(Anusha)

v3:
- Remove the use of define IS_JSL_EHL.
- Replace with IS_JASPERLAKE() || IS_ELKHARTLAKE()
- Unrolled wrapper IS_JSL_ELK_DISPLAY_STEP and Replace
with (IS_JASPERLAKE() || IS_ELKHARTLAKE) && IS_DISPLAY_STEP() (Jani/Tvrtko).

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <Anusha.Srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  5 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  4 +--
 .../gpu/drm/i915/display/intel_combo_phy.c    |  7 +++--
 drivers/gpu/drm/i915/display/intel_ddi.c      |  7 +++--
 drivers/gpu/drm/i915/display/intel_display.c  |  7 +++--
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 29 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_sseu.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  3 +-
 drivers/gpu/drm/i915/i915_drv.h               |  8 ++---
 drivers/gpu/drm/i915/intel_step.c             |  2 +-
 drivers/gpu/drm/i915/soc/intel_pch.c          |  8 +++--
 15 files changed, 50 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 59a2a289d9be..840a69df2f29 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -444,7 +444,8 @@ static void gen11_dsi_config_phy_lanes_sequence(struct intel_encoder *encoder)
 		intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), tmp);
 
 		/* For EHL, TGL, set latency optimization for PCS_DW1 lanes */
-		if (IS_JSL_EHL(dev_priv) || (DISPLAY_VER(dev_priv) >= 12)) {
+		if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv) || 
+			(DISPLAY_VER(dev_priv) >= 12)) {
 			intel_de_rmw(dev_priv, ICL_PORT_PCS_DW1_AUX(phy),
 				     LATENCY_OPTIM_MASK, LATENCY_OPTIM_VAL(0));
 
@@ -553,7 +554,7 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 		}
 	}
 
-	if (IS_JSL_EHL(dev_priv)) {
+	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
 		for_each_dsi_phy(phy, intel_dsi->phys)
 			intel_de_rmw(dev_priv, ICL_DPHY_CHKN(phy),
 				     0, ICL_DPHY_CHKN_AFE_OVER_PPI_STRAP);
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 52f858bd23e7..e5b1e065e902 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3147,7 +3147,7 @@ static int intel_compute_max_dotclk(struct drm_i915_private *dev_priv)
  */
 void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 {
-	if (IS_JSL_EHL(dev_priv)) {
+	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
 		if (dev_priv->display.cdclk.hw.ref == 24000)
 			dev_priv->display.cdclk.max_cdclk_freq = 552000;
 		else
@@ -3575,7 +3575,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		dev_priv->display.cdclk.table = icl_cdclk_table;
-	} else if (IS_JSL_EHL(dev_priv)) {
+	} else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
 		dev_priv->display.funcs.cdclk = &ehl_cdclk_funcs;
 		dev_priv->display.cdclk.table = icl_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 922a6d87b553..81147a323e1e 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -141,7 +141,7 @@ static bool has_phy_misc(struct drm_i915_private *i915, enum phy phy)
 
 	if (IS_ALDERLAKE_S(i915))
 		return phy == PHY_A;
-	else if (IS_JSL_EHL(i915) ||
+	else if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) ||
 		 IS_ROCKETLAKE(i915) ||
 		 IS_DG1(i915))
 		return phy < PHY_C;
@@ -242,7 +242,7 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW8(phy),
 				     IREFGEN, IREFGEN);
 
-		if (IS_JSL_EHL(dev_priv)) {
+		if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
 			if (ehl_vbt_ddi_d_present(dev_priv))
 				expected_val = ICL_PHY_MISC_MUX_DDID;
 
@@ -333,7 +333,8 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 		 * "internal" child devices.
 		 */
 		val = intel_de_read(dev_priv, ICL_PHY_MISC(phy));
-		if (IS_JSL_EHL(dev_priv) && phy == PHY_A) {
+		if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) && 
+			phy == PHY_A) {
 			val &= ~ICL_PHY_MISC_MUX_DDID;
 
 			if (ehl_vbt_ddi_d_present(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 090f242e610c..acf7f3fc185b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3582,7 +3582,8 @@ void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_priv,
 {
 	if (DISPLAY_VER(dev_priv) >= 12 && crtc_state->port_clock > 594000)
 		crtc_state->min_voltage_level = 2;
-	else if (IS_JSL_EHL(dev_priv) && crtc_state->port_clock > 594000)
+	else if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) && 
+			crtc_state->port_clock > 594000)
 		crtc_state->min_voltage_level = 3;
 	else if (DISPLAY_VER(dev_priv) >= 11 && crtc_state->port_clock > 594000)
 		crtc_state->min_voltage_level = 1;
@@ -4801,7 +4802,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		encoder->disable_clock = dg1_ddi_disable_clock;
 		encoder->is_clock_enabled = dg1_ddi_is_clock_enabled;
 		encoder->get_config = dg1_ddi_get_config;
-	} else if (IS_JSL_EHL(dev_priv)) {
+	} else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
 		if (intel_ddi_is_tc(dev_priv, port)) {
 			encoder->enable_clock = jsl_ddi_tc_enable_clock;
 			encoder->disable_clock = jsl_ddi_tc_disable_clock;
@@ -4872,7 +4873,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		encoder->hpd_pin = rkl_hpd_pin(dev_priv, port);
 	else if (DISPLAY_VER(dev_priv) >= 12)
 		encoder->hpd_pin = tgl_hpd_pin(dev_priv, port);
-	else if (IS_JSL_EHL(dev_priv))
+	else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
 		encoder->hpd_pin = ehl_hpd_pin(dev_priv, port);
 	else if (DISPLAY_VER(dev_priv) == 11)
 		encoder->hpd_pin = icl_hpd_pin(dev_priv, port);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cc99d47b8d0b..e77eedffaf5c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1750,7 +1750,7 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 		return phy <= PHY_E;
 	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
 		return phy <= PHY_D;
-	else if (IS_JSL_EHL(dev_priv))
+	else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
 		return phy <= PHY_C;
 	else if (IS_ALDERLAKE_P(dev_priv) || IS_DISPLAY_VER(dev_priv, 11, 12))
 		return phy <= PHY_B;
@@ -1802,7 +1802,8 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
 		return PHY_B + port - PORT_TC1;
 	else if ((IS_DG1(i915) || IS_ROCKETLAKE(i915)) && port >= PORT_TC1)
 		return PHY_C + port - PORT_TC1;
-	else if (IS_JSL_EHL(i915) && port == PORT_D)
+	else if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) && 
+			port == PORT_D)
 		return PHY_A;
 
 	return PHY_A + port - PORT_A;
@@ -7440,7 +7441,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_ddi_init(dev_priv, PORT_TC5);
 		intel_ddi_init(dev_priv, PORT_TC6);
 		icl_dsi_init(dev_priv);
-	} else if (IS_JSL_EHL(dev_priv)) {
+	} else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_C);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a76d9768473b..76c6f1b74ba8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -500,7 +500,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
 			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
 			max_rate = 810000;
-		else if (IS_JSL_EHL(dev_priv))
+		else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
 			max_rate = ehl_max_source_rate(intel_dp);
 		else
 			max_rate = icl_max_source_rate(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 66afdb91fcdf..b44e8aa46b18 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -191,7 +191,8 @@ intel_combo_pll_enable_reg(struct drm_i915_private *i915,
 {
 	if (IS_DG1(i915))
 		return DG1_DPLL_ENABLE(pll->info->id);
-	else if (IS_JSL_EHL(i915) && (pll->info->id == DPLL_ID_EHL_DPLL4))
+	else if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) && 
+			(pll->info->id == DPLL_ID_EHL_DPLL4))
 		return MG_PLL_ENABLE(0);
 
 	return ICL_DPLL_ENABLE(pll->info->id);
@@ -2460,8 +2461,8 @@ static void icl_wrpll_params_populate(struct skl_wrpll_params *params,
 static bool
 ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
 {
-	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
-		 IS_JSL_EHL_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
+	return (((IS_ELKHARTLAKE(i915) || IS_JASPERLAKE(i915)) && 
+		 IS_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
 		 IS_TIGERLAKE(i915) || IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) &&
 		 i915->display.dpll.ref_clks.nssc == 38400;
 }
@@ -3226,7 +3227,8 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 			BIT(DPLL_ID_EHL_DPLL4) |
 			BIT(DPLL_ID_ICL_DPLL1) |
 			BIT(DPLL_ID_ICL_DPLL0);
-	} else if (IS_JSL_EHL(dev_priv) && port != PORT_A) {
+	} else if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) && 
+				port != PORT_A) {
 		dpll_mask =
 			BIT(DPLL_ID_EHL_DPLL4) |
 			BIT(DPLL_ID_ICL_DPLL1) |
@@ -3567,7 +3569,8 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 			hw_state->div0 &= TGL_DPLL0_DIV0_AFC_STARTUP_MASK;
 		}
 	} else {
-		if (IS_JSL_EHL(dev_priv) && id == DPLL_ID_EHL_DPLL4) {
+		if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) && 
+			id == DPLL_ID_EHL_DPLL4) {
 			hw_state->cfgcr0 = intel_de_read(dev_priv,
 							 ICL_DPLL_CFGCR0(4));
 			hw_state->cfgcr1 = intel_de_read(dev_priv,
@@ -3623,7 +3626,8 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
 		cfgcr1_reg = TGL_DPLL_CFGCR1(id);
 		div0_reg = TGL_DPLL0_DIV0(id);
 	} else {
-		if (IS_JSL_EHL(dev_priv) && id == DPLL_ID_EHL_DPLL4) {
+		if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
+			id == DPLL_ID_EHL_DPLL4) {
 			cfgcr0_reg = ICL_DPLL_CFGCR0(4);
 			cfgcr1_reg = ICL_DPLL_CFGCR1(4);
 		} else {
@@ -3806,8 +3810,8 @@ static void combo_pll_enable(struct drm_i915_private *dev_priv,
 {
 	i915_reg_t enable_reg = intel_combo_pll_enable_reg(dev_priv, pll);
 
-	if (IS_JSL_EHL(dev_priv) &&
-	    pll->info->id == DPLL_ID_EHL_DPLL4) {
+	if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
+		pll->info->id == DPLL_ID_EHL_DPLL4) {
 
 		/*
 		 * We need to disable DC states when this DPLL is enabled.
@@ -3914,8 +3918,8 @@ static void combo_pll_disable(struct drm_i915_private *dev_priv,
 
 	icl_pll_disable(dev_priv, pll, enable_reg);
 
-	if (IS_JSL_EHL(dev_priv) &&
-	    pll->info->id == DPLL_ID_EHL_DPLL4)
+	if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
+		pll->info->id == DPLL_ID_EHL_DPLL4)
 		intel_display_power_put(dev_priv, POWER_DOMAIN_DC_OFF,
 					pll->wakeref);
 }
@@ -4150,7 +4154,7 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 		dpll_mgr = &rkl_pll_mgr;
 	else if (DISPLAY_VER(dev_priv) >= 12)
 		dpll_mgr = &tgl_pll_mgr;
-	else if (IS_JSL_EHL(dev_priv))
+	else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
 		dpll_mgr = &ehl_pll_mgr;
 	else if (DISPLAY_VER(dev_priv) >= 11)
 		dpll_mgr = &icl_pll_mgr;
@@ -4335,7 +4339,8 @@ static void readout_dpll_hw_state(struct drm_i915_private *i915,
 
 	pll->on = intel_dpll_get_hw_state(i915, pll, &pll->state.hw_state);
 
-	if (IS_JSL_EHL(i915) && pll->on &&
+	if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) && 
+		pll->on &&
 	    pll->info->id == DPLL_ID_EHL_DPLL4) {
 		pll->wakeref = intel_display_power_get(i915,
 						       POWER_DOMAIN_DC_OFF);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 7ac5e6c5e00d..4e094ce6000a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2903,7 +2903,8 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 		ddc_pin = rkl_port_to_ddc_pin(dev_priv, port);
 	else if (DISPLAY_VER(dev_priv) == 9 && HAS_PCH_TGP(dev_priv))
 		ddc_pin = gen9bc_tgp_port_to_ddc_pin(dev_priv, port);
-	else if (IS_JSL_EHL(dev_priv) && HAS_PCH_TGP(dev_priv))
+	else if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) && 
+			HAS_PCH_TGP(dev_priv))
 		ddc_pin = mcc_port_to_ddc_pin(dev_priv, port);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		ddc_pin = icl_port_to_ddc_pin(dev_priv, port);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d58ed9b62e67..3c213f51e840 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -963,7 +963,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 
 	/* JSL and EHL only supports eDP 1.3 */
-	if (IS_JSL_EHL(dev_priv)) {
+	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
 		drm_dbg_kms(&dev_priv->drm, "PSR2 not supported by phy\n");
 		return false;
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 97ac6fb37958..d690f329ee12 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -226,7 +226,7 @@ bool i915_gem_object_can_bypass_llc(struct drm_i915_gem_object *obj)
 	 * it, but since i915 takes the stance of always zeroing memory before
 	 * handing it to userspace, we need to prevent this.
 	 */
-	return IS_JSL_EHL(i915);
+	return (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915));
 }
 
 static void i915_gem_close_object(struct drm_gem_object *gem, struct drm_file *file)
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 1141f875f5bd..f602895f6d0d 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -302,7 +302,7 @@ static void gen11_sseu_info_init(struct intel_gt *gt)
 	u8 eu_en;
 	u8 s_en;
 
-	if (IS_JSL_EHL(gt->i915))
+	if (IS_JASPERLAKE(gt->i915) || IS_ELKHARTLAKE(gt->i915))
 		intel_sseu_set_info(sseu, 1, 4, 8);
 	else
 		intel_sseu_set_info(sseu, 1, 8, 8);
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 5f6a461d5d04..29e76604dcd0 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1441,7 +1441,8 @@ icl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 
 	/* Wa_1607087056:icl,ehl,jsl */
 	if (IS_ICELAKE(i915) ||
-	    IS_JSL_EHL_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
+		((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) && 
+		IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)))
 		wa_write_or(wal,
 			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e5433bb1d8a7..228936ee2f4c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -563,8 +563,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_COFFEELAKE(i915)	IS_PLATFORM(i915, INTEL_COFFEELAKE)
 #define IS_COMETLAKE(i915)	IS_PLATFORM(i915, INTEL_COMETLAKE)
 #define IS_ICELAKE(i915)	IS_PLATFORM(i915, INTEL_ICELAKE)
-#define IS_JSL_EHL(i915)	(IS_PLATFORM(i915, INTEL_JASPERLAKE) || \
-				IS_PLATFORM(i915, INTEL_ELKHARTLAKE))
+#define IS_JASPERLAKE(i915)	IS_PLATFORM(i915, INTEL_JASPERLAKE)
+#define IS_ELKHARTLAKE(i915)	IS_PLATFORM(i915, INTEL_ELKHARTLAKE)
 #define IS_TIGERLAKE(i915)	IS_PLATFORM(i915, INTEL_TIGERLAKE)
 #define IS_ROCKETLAKE(i915)	IS_PLATFORM(i915, INTEL_ROCKETLAKE)
 #define IS_DG1(i915)        IS_PLATFORM(i915, INTEL_DG1)
@@ -658,10 +658,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_KABYLAKE_DISPLAY_STEP(i915, since, until) \
 	(IS_KABYLAKE(i915) && IS_DISPLAY_STEP(i915, since, until))
 
-#define IS_JSL_EHL_GRAPHICS_STEP(p, since, until) \
-	(IS_JSL_EHL(p) && IS_GRAPHICS_STEP(p, since, until))
-#define IS_JSL_EHL_DISPLAY_STEP(p, since, until) \
-	(IS_JSL_EHL(p) && IS_DISPLAY_STEP(p, since, until))
 
 #define IS_TGL_DISPLAY_STEP(__i915, since, until) \
 	(IS_TIGERLAKE(__i915) && \
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 8a9ff6227e53..f9068086b956 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -219,7 +219,7 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_TIGERLAKE(i915)) {
 		revids = tgl_revids;
 		size = ARRAY_SIZE(tgl_revids);
-	} else if (IS_JSL_EHL(i915)) {
+	} else if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915) ) {
 		revids = jsl_ehl_revids;
 		size = ARRAY_SIZE(jsl_ehl_revids);
 	} else if (IS_ICELAKE(i915)) {
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 382a4a8015b4..7c7fb5feee7c 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -115,7 +115,8 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		return PCH_ICP;
 	case INTEL_PCH_MCC_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Mule Creek Canyon PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
+		drm_WARN_ON(&dev_priv->drm, !(IS_JASPERLAKE(dev_priv) || 
+				IS_ELKHARTLAKE(dev_priv)));
 		/* MCC is TGP compatible */
 		return PCH_TGP;
 	case INTEL_PCH_TGP_DEVICE_ID_TYPE:
@@ -127,7 +128,8 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		return PCH_TGP;
 	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
+		drm_WARN_ON(&dev_priv->drm, !(IS_JASPERLAKE(dev_priv) || 
+				IS_ELKHARTLAKE(dev_priv)));
 		/* JSP is ICP compatible */
 		return PCH_ICP;
 	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
@@ -177,7 +179,7 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
 		id = INTEL_PCH_ADP_DEVICE_ID_TYPE;
 	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
 		id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
-	else if (IS_JSL_EHL(dev_priv))
+	else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
 		id = INTEL_PCH_MCC_DEVICE_ID_TYPE;
 	else if (IS_ICELAKE(dev_priv))
 		id = INTEL_PCH_ICP_DEVICE_ID_TYPE;
-- 
2.34.1

