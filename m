Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A70565EC89
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:11:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5703810E71D;
	Thu,  5 Jan 2023 13:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B3E810E713
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672924280; x=1704460280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AtbXo5BPE4ld0kvgaeszI3dQrcXzpcLsBxWAO7TxDyY=;
 b=elVRCMEj1cBpgWMSn0Pi9IWwoeIKfJOP0yKELsuLF9dpLJaQ6N2FF/T3
 8emiOQrJQgR/4UPSVCP0b3BNiGLZvmNRcoHs+TJ2J+72IrDryOxEc4ZEg
 mBJMmS9yR2tYXW1pE15QvRPnUgJstAeHyxJ5MyYzPECDmgydMVm6BKyhH
 3Dw2ljhUYXekf5YIINyfEuS6aoo0CqAgs5O1+aBRxMlK0X++rD4hpFRwa
 m/qY1ZDTMG47O92TRgUq7vdacvfGujonzlMQeRwK5Wdy/lE5KHkfSnSV8
 Ygp8xYmJznamSumDSKmk+GDngiwjuQmaVkG7qcj6OFeqK6rYzxeSlzFF+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="323429767"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="323429767"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="633129076"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="633129076"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:17 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:10:40 +0100
Message-Id: <20230105131046.2173431-3-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105131046.2173431-1-andrzej.hajda@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/9] drm/i915/display/dpll: use intel_de_rmw
 if possible
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The helper makes the code more compact and readable.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 165 ++++++------------
 1 file changed, 53 insertions(+), 112 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 1974eb580ed198..e9215ebcdfc44d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -608,10 +608,8 @@ static void hsw_ddi_wrpll_disable(struct drm_i915_private *dev_priv,
 				  struct intel_shared_dpll *pll)
 {
 	const enum intel_dpll_id id = pll->info->id;
-	u32 val;
 
-	val = intel_de_read(dev_priv, WRPLL_CTL(id));
-	intel_de_write(dev_priv, WRPLL_CTL(id), val & ~WRPLL_PLL_ENABLE);
+	intel_de_rmw(dev_priv, WRPLL_CTL(id), WRPLL_PLL_ENABLE, 0);
 	intel_de_posting_read(dev_priv, WRPLL_CTL(id));
 
 	/*
@@ -626,10 +624,8 @@ static void hsw_ddi_spll_disable(struct drm_i915_private *dev_priv,
 				 struct intel_shared_dpll *pll)
 {
 	enum intel_dpll_id id = pll->info->id;
-	u32 val;
 
-	val = intel_de_read(dev_priv, SPLL_CTL);
-	intel_de_write(dev_priv, SPLL_CTL, val & ~SPLL_PLL_ENABLE);
+	intel_de_rmw(dev_priv, SPLL_CTL, SPLL_PLL_ENABLE, 0);
 	intel_de_posting_read(dev_priv, SPLL_CTL);
 
 	/*
@@ -1238,16 +1234,10 @@ static void skl_ddi_pll_write_ctrl1(struct drm_i915_private *dev_priv,
 				    struct intel_shared_dpll *pll)
 {
 	const enum intel_dpll_id id = pll->info->id;
-	u32 val;
 
-	val = intel_de_read(dev_priv, DPLL_CTRL1);
-
-	val &= ~(DPLL_CTRL1_HDMI_MODE(id) |
-		 DPLL_CTRL1_SSC(id) |
-		 DPLL_CTRL1_LINK_RATE_MASK(id));
-	val |= pll->state.hw_state.ctrl1 << (id * 6);
-
-	intel_de_write(dev_priv, DPLL_CTRL1, val);
+	intel_de_rmw(dev_priv, DPLL_CTRL1,
+		     DPLL_CTRL1_HDMI_MODE(id) | DPLL_CTRL1_SSC(id) | DPLL_CTRL1_LINK_RATE_MASK(id),
+		     pll->state.hw_state.ctrl1 << (id * 6));
 	intel_de_posting_read(dev_priv, DPLL_CTRL1);
 }
 
@@ -1265,8 +1255,7 @@ static void skl_ddi_pll_enable(struct drm_i915_private *dev_priv,
 	intel_de_posting_read(dev_priv, regs[id].cfgcr2);
 
 	/* the enable bit is always bit 31 */
-	intel_de_write(dev_priv, regs[id].ctl,
-		       intel_de_read(dev_priv, regs[id].ctl) | LCPLL_PLL_ENABLE);
+	intel_de_rmw(dev_priv, regs[id].ctl, 0, LCPLL_PLL_ENABLE);
 
 	if (intel_de_wait_for_set(dev_priv, DPLL_STATUS, DPLL_LOCK(id), 5))
 		drm_err(&dev_priv->drm, "DPLL %d not locked\n", id);
@@ -1285,8 +1274,7 @@ static void skl_ddi_pll_disable(struct drm_i915_private *dev_priv,
 	const enum intel_dpll_id id = pll->info->id;
 
 	/* the enable bit is always bit 31 */
-	intel_de_write(dev_priv, regs[id].ctl,
-		       intel_de_read(dev_priv, regs[id].ctl) & ~LCPLL_PLL_ENABLE);
+	intel_de_rmw(dev_priv, regs[id].ctl, LCPLL_PLL_ENABLE, 0);
 	intel_de_posting_read(dev_priv, regs[id].ctl);
 }
 
@@ -1902,14 +1890,11 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
 	bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);
 
 	/* Non-SSC reference */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
-	temp |= PORT_PLL_REF_SEL;
-	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
+	intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_REF_SEL);
 
 	if (IS_GEMINILAKE(dev_priv)) {
-		temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
-		temp |= PORT_PLL_POWER_ENABLE;
-		intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
+		intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port),
+			     0, PORT_PLL_POWER_ENABLE);
 
 		if (wait_for_us((intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) &
 				 PORT_PLL_POWER_STATE), 200))
@@ -1918,39 +1903,28 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
 	}
 
 	/* Disable 10 bit clock */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch));
-	temp &= ~PORT_PLL_10BIT_CLK_ENABLE;
-	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch), temp);
+	intel_de_rmw(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch),
+		     PORT_PLL_10BIT_CLK_ENABLE, 0);
 
 	/* Write P1 & P2 */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch));
-	temp &= ~(PORT_PLL_P1_MASK | PORT_PLL_P2_MASK);
-	temp |= pll->state.hw_state.ebb0;
-	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch), temp);
+	intel_de_rmw(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch),
+		     PORT_PLL_P1_MASK | PORT_PLL_P2_MASK, pll->state.hw_state.ebb0);
 
 	/* Write M2 integer */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 0));
-	temp &= ~PORT_PLL_M2_INT_MASK;
-	temp |= pll->state.hw_state.pll0;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 0), temp);
+	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 0),
+		     PORT_PLL_M2_INT_MASK, pll->state.hw_state.pll0);
 
 	/* Write N */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 1));
-	temp &= ~PORT_PLL_N_MASK;
-	temp |= pll->state.hw_state.pll1;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 1), temp);
+	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 1),
+		     PORT_PLL_N_MASK, pll->state.hw_state.pll1);
 
 	/* Write M2 fraction */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 2));
-	temp &= ~PORT_PLL_M2_FRAC_MASK;
-	temp |= pll->state.hw_state.pll2;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 2), temp);
+	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 2),
+		     PORT_PLL_M2_FRAC_MASK, pll->state.hw_state.pll2);
 
 	/* Write M2 fraction enable */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 3));
-	temp &= ~PORT_PLL_M2_FRAC_ENABLE;
-	temp |= pll->state.hw_state.pll3;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 3), temp);
+	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 3),
+		     PORT_PLL_M2_FRAC_ENABLE, pll->state.hw_state.pll3);
 
 	/* Write coeff */
 	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 6));
@@ -1961,15 +1935,11 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
 	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 6), temp);
 
 	/* Write calibration val */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 8));
-	temp &= ~PORT_PLL_TARGET_CNT_MASK;
-	temp |= pll->state.hw_state.pll8;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 8), temp);
+	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 8),
+		     PORT_PLL_TARGET_CNT_MASK, pll->state.hw_state.pll8);
 
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 9));
-	temp &= ~PORT_PLL_LOCK_THRESHOLD_MASK;
-	temp |= pll->state.hw_state.pll9;
-	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 9), temp);
+	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 9),
+		     PORT_PLL_LOCK_THRESHOLD_MASK, pll->state.hw_state.pll9);
 
 	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 10));
 	temp &= ~PORT_PLL_DCO_AMP_OVR_EN_H;
@@ -1986,9 +1956,7 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
 	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch), temp);
 
 	/* Enable PLL */
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
-	temp |= PORT_PLL_ENABLE;
-	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
+	intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_ENABLE);
 	intel_de_posting_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
 
 	if (wait_for_us((intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) & PORT_PLL_LOCK),
@@ -2016,17 +1984,13 @@ static void bxt_ddi_pll_disable(struct drm_i915_private *dev_priv,
 					struct intel_shared_dpll *pll)
 {
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
-	u32 temp;
 
-	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
-	temp &= ~PORT_PLL_ENABLE;
-	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
+	intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port), PORT_PLL_ENABLE, 0);
 	intel_de_posting_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
 
 	if (IS_GEMINILAKE(dev_priv)) {
-		temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
-		temp &= ~PORT_PLL_POWER_ENABLE;
-		intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
+		intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port),
+			     PORT_PLL_POWER_ENABLE, 0);
 
 		if (wait_for_us(!(intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) &
 				  PORT_PLL_POWER_STATE), 200))
@@ -3641,8 +3605,8 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
 			 !i915_mmio_reg_valid(div0_reg));
 	if (dev_priv->display.vbt.override_afc_startup &&
 	    i915_mmio_reg_valid(div0_reg))
-		intel_de_rmw(dev_priv, div0_reg, TGL_DPLL0_DIV0_AFC_STARTUP_MASK,
-			     hw_state->div0);
+		intel_de_rmw(dev_priv, div0_reg,
+			     TGL_DPLL0_DIV0_AFC_STARTUP_MASK, hw_state->div0);
 	intel_de_posting_read(dev_priv, cfgcr1_reg);
 }
 
@@ -3651,7 +3615,6 @@ static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
 {
 	struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	enum tc_port tc_port = icl_pll_id_to_tc_port(pll->info->id);
-	u32 val;
 
 	/*
 	 * Some of the following registers have reserved fields, so program
@@ -3659,23 +3622,19 @@ static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
 	 * during the calc/readout phase if the mask depends on some other HW
 	 * state like refclk, see icl_calc_mg_pll_state().
 	 */
-	val = intel_de_read(dev_priv, MG_REFCLKIN_CTL(tc_port));
-	val &= ~MG_REFCLKIN_CTL_OD_2_MUX_MASK;
-	val |= hw_state->mg_refclkin_ctl;
-	intel_de_write(dev_priv, MG_REFCLKIN_CTL(tc_port), val);
+	intel_de_rmw(dev_priv, MG_REFCLKIN_CTL(tc_port),
+		     MG_REFCLKIN_CTL_OD_2_MUX_MASK, hw_state->mg_refclkin_ctl);
 
-	val = intel_de_read(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port));
-	val &= ~MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
-	val |= hw_state->mg_clktop2_coreclkctl1;
-	intel_de_write(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port), val);
+	intel_de_rmw(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port),
+		     MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK,
+		     hw_state->mg_clktop2_coreclkctl1);
 
-	val = intel_de_read(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port));
-	val &= ~(MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
-		 MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
-		 MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
-		 MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK);
-	val |= hw_state->mg_clktop2_hsclkctl;
-	intel_de_write(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port), val);
+	intel_de_rmw(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port),
+		     MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
+		     MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
+		     MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
+		     MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK,
+		     hw_state->mg_clktop2_hsclkctl);
 
 	intel_de_write(dev_priv, MG_PLL_DIV0(tc_port), hw_state->mg_pll_div0);
 	intel_de_write(dev_priv, MG_PLL_DIV1(tc_port), hw_state->mg_pll_div1);
@@ -3684,15 +3643,12 @@ static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
 		       hw_state->mg_pll_frac_lock);
 	intel_de_write(dev_priv, MG_PLL_SSC(tc_port), hw_state->mg_pll_ssc);
 
-	val = intel_de_read(dev_priv, MG_PLL_BIAS(tc_port));
-	val &= ~hw_state->mg_pll_bias_mask;
-	val |= hw_state->mg_pll_bias;
-	intel_de_write(dev_priv, MG_PLL_BIAS(tc_port), val);
+	intel_de_rmw(dev_priv, MG_PLL_BIAS(tc_port),
+		     hw_state->mg_pll_bias_mask, hw_state->mg_pll_bias);
 
-	val = intel_de_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
-	val &= ~hw_state->mg_pll_tdc_coldst_bias_mask;
-	val |= hw_state->mg_pll_tdc_coldst_bias;
-	intel_de_write(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port), val);
+	intel_de_rmw(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port),
+		     hw_state->mg_pll_tdc_coldst_bias_mask,
+		     hw_state->mg_pll_tdc_coldst_bias);
 
 	intel_de_posting_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
 }
@@ -3766,11 +3722,7 @@ static void icl_pll_power_enable(struct drm_i915_private *dev_priv,
 				 struct intel_shared_dpll *pll,
 				 i915_reg_t enable_reg)
 {
-	u32 val;
-
-	val = intel_de_read(dev_priv, enable_reg);
-	val |= PLL_POWER_ENABLE;
-	intel_de_write(dev_priv, enable_reg, val);
+	intel_de_rmw(dev_priv, enable_reg, 0, PLL_POWER_ENABLE);
 
 	/*
 	 * The spec says we need to "wait" but it also says it should be
@@ -3785,11 +3737,7 @@ static void icl_pll_enable(struct drm_i915_private *dev_priv,
 			   struct intel_shared_dpll *pll,
 			   i915_reg_t enable_reg)
 {
-	u32 val;
-
-	val = intel_de_read(dev_priv, enable_reg);
-	val |= PLL_ENABLE;
-	intel_de_write(dev_priv, enable_reg, val);
+	intel_de_rmw(dev_priv, enable_reg, 0, PLL_ENABLE);
 
 	/* Timeout is actually 600us. */
 	if (intel_de_wait_for_set(dev_priv, enable_reg, PLL_LOCK, 1))
@@ -3815,8 +3763,7 @@ static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct inte
 	 * since TRANS_CMTG_CHICKEN is only accessible while DPLL0 is enabled.
 	 */
 	val = intel_de_read(i915, TRANS_CMTG_CHICKEN);
-	val = intel_de_read(i915, TRANS_CMTG_CHICKEN);
-	intel_de_write(i915, TRANS_CMTG_CHICKEN, DISABLE_DPT_CLK_GATING);
+	val = intel_de_rmw(i915, TRANS_CMTG_CHICKEN, ~0, DISABLE_DPT_CLK_GATING);
 	if (drm_WARN_ON(&i915->drm, val & ~DISABLE_DPT_CLK_GATING))
 		drm_dbg_kms(&i915->drm, "Unexpected flags in TRANS_CMTG_CHICKEN: %08x\n", val);
 }
@@ -3900,8 +3847,6 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
 			    struct intel_shared_dpll *pll,
 			    i915_reg_t enable_reg)
 {
-	u32 val;
-
 	/* The first steps are done by intel_ddi_post_disable(). */
 
 	/*
@@ -3910,9 +3855,7 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
 	 * nothing here.
 	 */
 
-	val = intel_de_read(dev_priv, enable_reg);
-	val &= ~PLL_ENABLE;
-	intel_de_write(dev_priv, enable_reg, val);
+	intel_de_rmw(dev_priv, enable_reg, PLL_ENABLE, 0);
 
 	/* Timeout is actually 1us. */
 	if (intel_de_wait_for_clear(dev_priv, enable_reg, PLL_LOCK, 1))
@@ -3920,9 +3863,7 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
 
 	/* DVFS post sequence would be here. See the comment above. */
 
-	val = intel_de_read(dev_priv, enable_reg);
-	val &= ~PLL_POWER_ENABLE;
-	intel_de_write(dev_priv, enable_reg, val);
+	intel_de_rmw(dev_priv, enable_reg, PLL_POWER_ENABLE, 0);
 
 	/*
 	 * The spec says we need to "wait" but it also says it should be
-- 
2.34.1

