Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 353BF148600
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:25:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7371272A7D;
	Fri, 24 Jan 2020 13:25:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6379E72A79
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:25:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:54 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="251285723"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:33 +0200
Message-Id: <11c589dc6bbbed34374568d9a501a9df2e35d6b3.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 12/33] drm/i915/dpll_mgr: use intel_de_*()
 functions for register access
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 388 +++++++++---------
 1 file changed, 201 insertions(+), 187 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index c75e34d87111..13535c5ca3cf 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -378,10 +378,10 @@ static bool ibx_pch_dpll_get_hw_state(struct drm_i915_private *dev_priv,
 	if (!wakeref)
 		return false;
 
-	val = I915_READ(PCH_DPLL(id));
+	val = intel_de_read(dev_priv, PCH_DPLL(id));
 	hw_state->dpll = val;
-	hw_state->fp0 = I915_READ(PCH_FP0(id));
-	hw_state->fp1 = I915_READ(PCH_FP1(id));
+	hw_state->fp0 = intel_de_read(dev_priv, PCH_FP0(id));
+	hw_state->fp1 = intel_de_read(dev_priv, PCH_FP1(id));
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
@@ -393,8 +393,8 @@ static void ibx_pch_dpll_prepare(struct drm_i915_private *dev_priv,
 {
 	const enum intel_dpll_id id = pll->info->id;
 
-	I915_WRITE(PCH_FP0(id), pll->state.hw_state.fp0);
-	I915_WRITE(PCH_FP1(id), pll->state.hw_state.fp1);
+	intel_de_write(dev_priv, PCH_FP0(id), pll->state.hw_state.fp0);
+	intel_de_write(dev_priv, PCH_FP1(id), pll->state.hw_state.fp1);
 }
 
 static void ibx_assert_pch_refclk_enabled(struct drm_i915_private *dev_priv)
@@ -404,7 +404,7 @@ static void ibx_assert_pch_refclk_enabled(struct drm_i915_private *dev_priv)
 
 	I915_STATE_WARN_ON(!(HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)));
 
-	val = I915_READ(PCH_DREF_CONTROL);
+	val = intel_de_read(dev_priv, PCH_DREF_CONTROL);
 	enabled = !!(val & (DREF_SSC_SOURCE_MASK | DREF_NONSPREAD_SOURCE_MASK |
 			    DREF_SUPERSPREAD_SOURCE_MASK));
 	I915_STATE_WARN(!enabled, "PCH refclk assertion failure, should be active but is disabled\n");
@@ -418,10 +418,10 @@ static void ibx_pch_dpll_enable(struct drm_i915_private *dev_priv,
 	/* PCH refclock must be enabled first */
 	ibx_assert_pch_refclk_enabled(dev_priv);
 
-	I915_WRITE(PCH_DPLL(id), pll->state.hw_state.dpll);
+	intel_de_write(dev_priv, PCH_DPLL(id), pll->state.hw_state.dpll);
 
 	/* Wait for the clocks to stabilize. */
-	POSTING_READ(PCH_DPLL(id));
+	intel_de_posting_read(dev_priv, PCH_DPLL(id));
 	udelay(150);
 
 	/* The pixel multiplier can only be updated once the
@@ -429,8 +429,8 @@ static void ibx_pch_dpll_enable(struct drm_i915_private *dev_priv,
 	 *
 	 * So write it again.
 	 */
-	I915_WRITE(PCH_DPLL(id), pll->state.hw_state.dpll);
-	POSTING_READ(PCH_DPLL(id));
+	intel_de_write(dev_priv, PCH_DPLL(id), pll->state.hw_state.dpll);
+	intel_de_posting_read(dev_priv, PCH_DPLL(id));
 	udelay(200);
 }
 
@@ -439,8 +439,8 @@ static void ibx_pch_dpll_disable(struct drm_i915_private *dev_priv,
 {
 	const enum intel_dpll_id id = pll->info->id;
 
-	I915_WRITE(PCH_DPLL(id), 0);
-	POSTING_READ(PCH_DPLL(id));
+	intel_de_write(dev_priv, PCH_DPLL(id), 0);
+	intel_de_posting_read(dev_priv, PCH_DPLL(id));
 	udelay(200);
 }
 
@@ -504,16 +504,16 @@ static void hsw_ddi_wrpll_enable(struct drm_i915_private *dev_priv,
 {
 	const enum intel_dpll_id id = pll->info->id;
 
-	I915_WRITE(WRPLL_CTL(id), pll->state.hw_state.wrpll);
-	POSTING_READ(WRPLL_CTL(id));
+	intel_de_write(dev_priv, WRPLL_CTL(id), pll->state.hw_state.wrpll);
+	intel_de_posting_read(dev_priv, WRPLL_CTL(id));
 	udelay(20);
 }
 
 static void hsw_ddi_spll_enable(struct drm_i915_private *dev_priv,
 				struct intel_shared_dpll *pll)
 {
-	I915_WRITE(SPLL_CTL, pll->state.hw_state.spll);
-	POSTING_READ(SPLL_CTL);
+	intel_de_write(dev_priv, SPLL_CTL, pll->state.hw_state.spll);
+	intel_de_posting_read(dev_priv, SPLL_CTL);
 	udelay(20);
 }
 
@@ -523,9 +523,9 @@ static void hsw_ddi_wrpll_disable(struct drm_i915_private *dev_priv,
 	const enum intel_dpll_id id = pll->info->id;
 	u32 val;
 
-	val = I915_READ(WRPLL_CTL(id));
-	I915_WRITE(WRPLL_CTL(id), val & ~WRPLL_PLL_ENABLE);
-	POSTING_READ(WRPLL_CTL(id));
+	val = intel_de_read(dev_priv, WRPLL_CTL(id));
+	intel_de_write(dev_priv, WRPLL_CTL(id), val & ~WRPLL_PLL_ENABLE);
+	intel_de_posting_read(dev_priv, WRPLL_CTL(id));
 
 	/*
 	 * Try to set up the PCH reference clock once all DPLLs
@@ -541,9 +541,9 @@ static void hsw_ddi_spll_disable(struct drm_i915_private *dev_priv,
 	enum intel_dpll_id id = pll->info->id;
 	u32 val;
 
-	val = I915_READ(SPLL_CTL);
-	I915_WRITE(SPLL_CTL, val & ~SPLL_PLL_ENABLE);
-	POSTING_READ(SPLL_CTL);
+	val = intel_de_read(dev_priv, SPLL_CTL);
+	intel_de_write(dev_priv, SPLL_CTL, val & ~SPLL_PLL_ENABLE);
+	intel_de_posting_read(dev_priv, SPLL_CTL);
 
 	/*
 	 * Try to set up the PCH reference clock once all DPLLs
@@ -566,7 +566,7 @@ static bool hsw_ddi_wrpll_get_hw_state(struct drm_i915_private *dev_priv,
 	if (!wakeref)
 		return false;
 
-	val = I915_READ(WRPLL_CTL(id));
+	val = intel_de_read(dev_priv, WRPLL_CTL(id));
 	hw_state->wrpll = val;
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
@@ -586,7 +586,7 @@ static bool hsw_ddi_spll_get_hw_state(struct drm_i915_private *dev_priv,
 	if (!wakeref)
 		return false;
 
-	val = I915_READ(SPLL_CTL);
+	val = intel_de_read(dev_priv, SPLL_CTL);
 	hw_state->spll = val;
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
@@ -989,15 +989,15 @@ static void skl_ddi_pll_write_ctrl1(struct drm_i915_private *dev_priv,
 	const enum intel_dpll_id id = pll->info->id;
 	u32 val;
 
-	val = I915_READ(DPLL_CTRL1);
+	val = intel_de_read(dev_priv, DPLL_CTRL1);
 
 	val &= ~(DPLL_CTRL1_HDMI_MODE(id) |
 		 DPLL_CTRL1_SSC(id) |
 		 DPLL_CTRL1_LINK_RATE_MASK(id));
 	val |= pll->state.hw_state.ctrl1 << (id * 6);
 
-	I915_WRITE(DPLL_CTRL1, val);
-	POSTING_READ(DPLL_CTRL1);
+	intel_de_write(dev_priv, DPLL_CTRL1, val);
+	intel_de_posting_read(dev_priv, DPLL_CTRL1);
 }
 
 static void skl_ddi_pll_enable(struct drm_i915_private *dev_priv,
@@ -1008,14 +1008,14 @@ static void skl_ddi_pll_enable(struct drm_i915_private *dev_priv,
 
 	skl_ddi_pll_write_ctrl1(dev_priv, pll);
 
-	I915_WRITE(regs[id].cfgcr1, pll->state.hw_state.cfgcr1);
-	I915_WRITE(regs[id].cfgcr2, pll->state.hw_state.cfgcr2);
-	POSTING_READ(regs[id].cfgcr1);
-	POSTING_READ(regs[id].cfgcr2);
+	intel_de_write(dev_priv, regs[id].cfgcr1, pll->state.hw_state.cfgcr1);
+	intel_de_write(dev_priv, regs[id].cfgcr2, pll->state.hw_state.cfgcr2);
+	intel_de_posting_read(dev_priv, regs[id].cfgcr1);
+	intel_de_posting_read(dev_priv, regs[id].cfgcr2);
 
 	/* the enable bit is always bit 31 */
-	I915_WRITE(regs[id].ctl,
-		   I915_READ(regs[id].ctl) | LCPLL_PLL_ENABLE);
+	intel_de_write(dev_priv, regs[id].ctl,
+		       intel_de_read(dev_priv, regs[id].ctl) | LCPLL_PLL_ENABLE);
 
 	if (intel_de_wait_for_set(dev_priv, DPLL_STATUS, DPLL_LOCK(id), 5))
 		DRM_ERROR("DPLL %d not locked\n", id);
@@ -1034,9 +1034,9 @@ static void skl_ddi_pll_disable(struct drm_i915_private *dev_priv,
 	const enum intel_dpll_id id = pll->info->id;
 
 	/* the enable bit is always bit 31 */
-	I915_WRITE(regs[id].ctl,
-		   I915_READ(regs[id].ctl) & ~LCPLL_PLL_ENABLE);
-	POSTING_READ(regs[id].ctl);
+	intel_de_write(dev_priv, regs[id].ctl,
+		       intel_de_read(dev_priv, regs[id].ctl) & ~LCPLL_PLL_ENABLE);
+	intel_de_posting_read(dev_priv, regs[id].ctl);
 }
 
 static void skl_ddi_dpll0_disable(struct drm_i915_private *dev_priv,
@@ -1061,17 +1061,17 @@ static bool skl_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
 
 	ret = false;
 
-	val = I915_READ(regs[id].ctl);
+	val = intel_de_read(dev_priv, regs[id].ctl);
 	if (!(val & LCPLL_PLL_ENABLE))
 		goto out;
 
-	val = I915_READ(DPLL_CTRL1);
+	val = intel_de_read(dev_priv, DPLL_CTRL1);
 	hw_state->ctrl1 = (val >> (id * 6)) & 0x3f;
 
 	/* avoid reading back stale values if HDMI mode is not enabled */
 	if (val & DPLL_CTRL1_HDMI_MODE(id)) {
-		hw_state->cfgcr1 = I915_READ(regs[id].cfgcr1);
-		hw_state->cfgcr2 = I915_READ(regs[id].cfgcr2);
+		hw_state->cfgcr1 = intel_de_read(dev_priv, regs[id].cfgcr1);
+		hw_state->cfgcr2 = intel_de_read(dev_priv, regs[id].cfgcr2);
 	}
 	ret = true;
 
@@ -1099,11 +1099,11 @@ static bool skl_ddi_dpll0_get_hw_state(struct drm_i915_private *dev_priv,
 	ret = false;
 
 	/* DPLL0 is always enabled since it drives CDCLK */
-	val = I915_READ(regs[id].ctl);
+	val = intel_de_read(dev_priv, regs[id].ctl);
 	if (WARN_ON(!(val & LCPLL_PLL_ENABLE)))
 		goto out;
 
-	val = I915_READ(DPLL_CTRL1);
+	val = intel_de_read(dev_priv, DPLL_CTRL1);
 	hw_state->ctrl1 = (val >> (id * 6)) & 0x3f;
 
 	ret = true;
@@ -1515,113 +1515,113 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
 	bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);
 
 	/* Non-SSC reference */
-	temp = I915_READ(BXT_PORT_PLL_ENABLE(port));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
 	temp |= PORT_PLL_REF_SEL;
-	I915_WRITE(BXT_PORT_PLL_ENABLE(port), temp);
+	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
 
 	if (IS_GEMINILAKE(dev_priv)) {
-		temp = I915_READ(BXT_PORT_PLL_ENABLE(port));
+		temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
 		temp |= PORT_PLL_POWER_ENABLE;
-		I915_WRITE(BXT_PORT_PLL_ENABLE(port), temp);
+		intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
 
-		if (wait_for_us((I915_READ(BXT_PORT_PLL_ENABLE(port)) &
+		if (wait_for_us((intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) &
 				 PORT_PLL_POWER_STATE), 200))
 			DRM_ERROR("Power state not set for PLL:%d\n", port);
 	}
 
 	/* Disable 10 bit clock */
-	temp = I915_READ(BXT_PORT_PLL_EBB_4(phy, ch));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch));
 	temp &= ~PORT_PLL_10BIT_CLK_ENABLE;
-	I915_WRITE(BXT_PORT_PLL_EBB_4(phy, ch), temp);
+	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch), temp);
 
 	/* Write P1 & P2 */
-	temp = I915_READ(BXT_PORT_PLL_EBB_0(phy, ch));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch));
 	temp &= ~(PORT_PLL_P1_MASK | PORT_PLL_P2_MASK);
 	temp |= pll->state.hw_state.ebb0;
-	I915_WRITE(BXT_PORT_PLL_EBB_0(phy, ch), temp);
+	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch), temp);
 
 	/* Write M2 integer */
-	temp = I915_READ(BXT_PORT_PLL(phy, ch, 0));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 0));
 	temp &= ~PORT_PLL_M2_MASK;
 	temp |= pll->state.hw_state.pll0;
-	I915_WRITE(BXT_PORT_PLL(phy, ch, 0), temp);
+	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 0), temp);
 
 	/* Write N */
-	temp = I915_READ(BXT_PORT_PLL(phy, ch, 1));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 1));
 	temp &= ~PORT_PLL_N_MASK;
 	temp |= pll->state.hw_state.pll1;
-	I915_WRITE(BXT_PORT_PLL(phy, ch, 1), temp);
+	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 1), temp);
 
 	/* Write M2 fraction */
-	temp = I915_READ(BXT_PORT_PLL(phy, ch, 2));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 2));
 	temp &= ~PORT_PLL_M2_FRAC_MASK;
 	temp |= pll->state.hw_state.pll2;
-	I915_WRITE(BXT_PORT_PLL(phy, ch, 2), temp);
+	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 2), temp);
 
 	/* Write M2 fraction enable */
-	temp = I915_READ(BXT_PORT_PLL(phy, ch, 3));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 3));
 	temp &= ~PORT_PLL_M2_FRAC_ENABLE;
 	temp |= pll->state.hw_state.pll3;
-	I915_WRITE(BXT_PORT_PLL(phy, ch, 3), temp);
+	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 3), temp);
 
 	/* Write coeff */
-	temp = I915_READ(BXT_PORT_PLL(phy, ch, 6));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 6));
 	temp &= ~PORT_PLL_PROP_COEFF_MASK;
 	temp &= ~PORT_PLL_INT_COEFF_MASK;
 	temp &= ~PORT_PLL_GAIN_CTL_MASK;
 	temp |= pll->state.hw_state.pll6;
-	I915_WRITE(BXT_PORT_PLL(phy, ch, 6), temp);
+	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 6), temp);
 
 	/* Write calibration val */
-	temp = I915_READ(BXT_PORT_PLL(phy, ch, 8));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 8));
 	temp &= ~PORT_PLL_TARGET_CNT_MASK;
 	temp |= pll->state.hw_state.pll8;
-	I915_WRITE(BXT_PORT_PLL(phy, ch, 8), temp);
+	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 8), temp);
 
-	temp = I915_READ(BXT_PORT_PLL(phy, ch, 9));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 9));
 	temp &= ~PORT_PLL_LOCK_THRESHOLD_MASK;
 	temp |= pll->state.hw_state.pll9;
-	I915_WRITE(BXT_PORT_PLL(phy, ch, 9), temp);
+	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 9), temp);
 
-	temp = I915_READ(BXT_PORT_PLL(phy, ch, 10));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 10));
 	temp &= ~PORT_PLL_DCO_AMP_OVR_EN_H;
 	temp &= ~PORT_PLL_DCO_AMP_MASK;
 	temp |= pll->state.hw_state.pll10;
-	I915_WRITE(BXT_PORT_PLL(phy, ch, 10), temp);
+	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 10), temp);
 
 	/* Recalibrate with new settings */
-	temp = I915_READ(BXT_PORT_PLL_EBB_4(phy, ch));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch));
 	temp |= PORT_PLL_RECALIBRATE;
-	I915_WRITE(BXT_PORT_PLL_EBB_4(phy, ch), temp);
+	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch), temp);
 	temp &= ~PORT_PLL_10BIT_CLK_ENABLE;
 	temp |= pll->state.hw_state.ebb4;
-	I915_WRITE(BXT_PORT_PLL_EBB_4(phy, ch), temp);
+	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch), temp);
 
 	/* Enable PLL */
-	temp = I915_READ(BXT_PORT_PLL_ENABLE(port));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
 	temp |= PORT_PLL_ENABLE;
-	I915_WRITE(BXT_PORT_PLL_ENABLE(port), temp);
-	POSTING_READ(BXT_PORT_PLL_ENABLE(port));
+	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
+	intel_de_posting_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
 
-	if (wait_for_us((I915_READ(BXT_PORT_PLL_ENABLE(port)) & PORT_PLL_LOCK),
+	if (wait_for_us((intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) & PORT_PLL_LOCK),
 			200))
 		DRM_ERROR("PLL %d not locked\n", port);
 
 	if (IS_GEMINILAKE(dev_priv)) {
-		temp = I915_READ(BXT_PORT_TX_DW5_LN0(phy, ch));
+		temp = intel_de_read(dev_priv, BXT_PORT_TX_DW5_LN0(phy, ch));
 		temp |= DCC_DELAY_RANGE_2;
-		I915_WRITE(BXT_PORT_TX_DW5_GRP(phy, ch), temp);
+		intel_de_write(dev_priv, BXT_PORT_TX_DW5_GRP(phy, ch), temp);
 	}
 
 	/*
 	 * While we write to the group register to program all lanes at once we
 	 * can read only lane registers and we pick lanes 0/1 for that.
 	 */
-	temp = I915_READ(BXT_PORT_PCS_DW12_LN01(phy, ch));
+	temp = intel_de_read(dev_priv, BXT_PORT_PCS_DW12_LN01(phy, ch));
 	temp &= ~LANE_STAGGER_MASK;
 	temp &= ~LANESTAGGER_STRAP_OVRD;
 	temp |= pll->state.hw_state.pcsdw12;
-	I915_WRITE(BXT_PORT_PCS_DW12_GRP(phy, ch), temp);
+	intel_de_write(dev_priv, BXT_PORT_PCS_DW12_GRP(phy, ch), temp);
 }
 
 static void bxt_ddi_pll_disable(struct drm_i915_private *dev_priv,
@@ -1630,18 +1630,18 @@ static void bxt_ddi_pll_disable(struct drm_i915_private *dev_priv,
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 	u32 temp;
 
-	temp = I915_READ(BXT_PORT_PLL_ENABLE(port));
+	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
 	temp &= ~PORT_PLL_ENABLE;
-	I915_WRITE(BXT_PORT_PLL_ENABLE(port), temp);
-	POSTING_READ(BXT_PORT_PLL_ENABLE(port));
+	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
+	intel_de_posting_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
 
 	if (IS_GEMINILAKE(dev_priv)) {
-		temp = I915_READ(BXT_PORT_PLL_ENABLE(port));
+		temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
 		temp &= ~PORT_PLL_POWER_ENABLE;
-		I915_WRITE(BXT_PORT_PLL_ENABLE(port), temp);
+		intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
 
-		if (wait_for_us(!(I915_READ(BXT_PORT_PLL_ENABLE(port)) &
-				PORT_PLL_POWER_STATE), 200))
+		if (wait_for_us(!(intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) &
+				  PORT_PLL_POWER_STATE), 200))
 			DRM_ERROR("Power state not reset for PLL:%d\n", port);
 	}
 }
@@ -1666,40 +1666,40 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
 
 	ret = false;
 
-	val = I915_READ(BXT_PORT_PLL_ENABLE(port));
+	val = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
 	if (!(val & PORT_PLL_ENABLE))
 		goto out;
 
-	hw_state->ebb0 = I915_READ(BXT_PORT_PLL_EBB_0(phy, ch));
+	hw_state->ebb0 = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch));
 	hw_state->ebb0 &= PORT_PLL_P1_MASK | PORT_PLL_P2_MASK;
 
-	hw_state->ebb4 = I915_READ(BXT_PORT_PLL_EBB_4(phy, ch));
+	hw_state->ebb4 = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch));
 	hw_state->ebb4 &= PORT_PLL_10BIT_CLK_ENABLE;
 
-	hw_state->pll0 = I915_READ(BXT_PORT_PLL(phy, ch, 0));
+	hw_state->pll0 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 0));
 	hw_state->pll0 &= PORT_PLL_M2_MASK;
 
-	hw_state->pll1 = I915_READ(BXT_PORT_PLL(phy, ch, 1));
+	hw_state->pll1 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 1));
 	hw_state->pll1 &= PORT_PLL_N_MASK;
 
-	hw_state->pll2 = I915_READ(BXT_PORT_PLL(phy, ch, 2));
+	hw_state->pll2 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 2));
 	hw_state->pll2 &= PORT_PLL_M2_FRAC_MASK;
 
-	hw_state->pll3 = I915_READ(BXT_PORT_PLL(phy, ch, 3));
+	hw_state->pll3 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 3));
 	hw_state->pll3 &= PORT_PLL_M2_FRAC_ENABLE;
 
-	hw_state->pll6 = I915_READ(BXT_PORT_PLL(phy, ch, 6));
+	hw_state->pll6 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 6));
 	hw_state->pll6 &= PORT_PLL_PROP_COEFF_MASK |
 			  PORT_PLL_INT_COEFF_MASK |
 			  PORT_PLL_GAIN_CTL_MASK;
 
-	hw_state->pll8 = I915_READ(BXT_PORT_PLL(phy, ch, 8));
+	hw_state->pll8 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 8));
 	hw_state->pll8 &= PORT_PLL_TARGET_CNT_MASK;
 
-	hw_state->pll9 = I915_READ(BXT_PORT_PLL(phy, ch, 9));
+	hw_state->pll9 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 9));
 	hw_state->pll9 &= PORT_PLL_LOCK_THRESHOLD_MASK;
 
-	hw_state->pll10 = I915_READ(BXT_PORT_PLL(phy, ch, 10));
+	hw_state->pll10 = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 10));
 	hw_state->pll10 &= PORT_PLL_DCO_AMP_OVR_EN_H |
 			   PORT_PLL_DCO_AMP_MASK;
 
@@ -1708,11 +1708,12 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	 * can read only lane registers. We configure all lanes the same way, so
 	 * here just read out lanes 0/1 and output a note if lanes 2/3 differ.
 	 */
-	hw_state->pcsdw12 = I915_READ(BXT_PORT_PCS_DW12_LN01(phy, ch));
-	if (I915_READ(BXT_PORT_PCS_DW12_LN23(phy, ch)) != hw_state->pcsdw12)
+	hw_state->pcsdw12 = intel_de_read(dev_priv,
+					  BXT_PORT_PCS_DW12_LN01(phy, ch));
+	if (intel_de_read(dev_priv, BXT_PORT_PCS_DW12_LN23(phy, ch)) != hw_state->pcsdw12)
 		DRM_DEBUG_DRIVER("lane stagger config different for lane 01 (%08x) and 23 (%08x)\n",
 				 hw_state->pcsdw12,
-				 I915_READ(BXT_PORT_PCS_DW12_LN23(phy, ch)));
+				 intel_de_read(dev_priv, BXT_PORT_PCS_DW12_LN23(phy, ch)));
 	hw_state->pcsdw12 &= LANE_STAGGER_MASK | LANESTAGGER_STRAP_OVRD;
 
 	ret = true;
@@ -2024,9 +2025,9 @@ static void cnl_ddi_pll_enable(struct drm_i915_private *dev_priv,
 	u32 val;
 
 	/* 1. Enable DPLL power in DPLL_ENABLE. */
-	val = I915_READ(CNL_DPLL_ENABLE(id));
+	val = intel_de_read(dev_priv, CNL_DPLL_ENABLE(id));
 	val |= PLL_POWER_ENABLE;
-	I915_WRITE(CNL_DPLL_ENABLE(id), val);
+	intel_de_write(dev_priv, CNL_DPLL_ENABLE(id), val);
 
 	/* 2. Wait for DPLL power state enabled in DPLL_ENABLE. */
 	if (intel_de_wait_for_set(dev_priv, CNL_DPLL_ENABLE(id),
@@ -2038,18 +2039,18 @@ static void cnl_ddi_pll_enable(struct drm_i915_private *dev_priv,
 	 * select DP mode, and set DP link rate.
 	 */
 	val = pll->state.hw_state.cfgcr0;
-	I915_WRITE(CNL_DPLL_CFGCR0(id), val);
+	intel_de_write(dev_priv, CNL_DPLL_CFGCR0(id), val);
 
 	/* 4. Reab back to ensure writes completed */
-	POSTING_READ(CNL_DPLL_CFGCR0(id));
+	intel_de_posting_read(dev_priv, CNL_DPLL_CFGCR0(id));
 
 	/* 3. Configure DPLL_CFGCR0 */
 	/* Avoid touch CFGCR1 if HDMI mode is not enabled */
 	if (pll->state.hw_state.cfgcr0 & DPLL_CFGCR0_HDMI_MODE) {
 		val = pll->state.hw_state.cfgcr1;
-		I915_WRITE(CNL_DPLL_CFGCR1(id), val);
+		intel_de_write(dev_priv, CNL_DPLL_CFGCR1(id), val);
 		/* 4. Reab back to ensure writes completed */
-		POSTING_READ(CNL_DPLL_CFGCR1(id));
+		intel_de_posting_read(dev_priv, CNL_DPLL_CFGCR1(id));
 	}
 
 	/*
@@ -2062,9 +2063,9 @@ static void cnl_ddi_pll_enable(struct drm_i915_private *dev_priv,
 	 */
 
 	/* 6. Enable DPLL in DPLL_ENABLE. */
-	val = I915_READ(CNL_DPLL_ENABLE(id));
+	val = intel_de_read(dev_priv, CNL_DPLL_ENABLE(id));
 	val |= PLL_ENABLE;
-	I915_WRITE(CNL_DPLL_ENABLE(id), val);
+	intel_de_write(dev_priv, CNL_DPLL_ENABLE(id), val);
 
 	/* 7. Wait for PLL lock status in DPLL_ENABLE. */
 	if (intel_de_wait_for_set(dev_priv, CNL_DPLL_ENABLE(id), PLL_LOCK, 5))
@@ -2106,9 +2107,9 @@ static void cnl_ddi_pll_disable(struct drm_i915_private *dev_priv,
 	 */
 
 	/* 3. Disable DPLL through DPLL_ENABLE. */
-	val = I915_READ(CNL_DPLL_ENABLE(id));
+	val = intel_de_read(dev_priv, CNL_DPLL_ENABLE(id));
 	val &= ~PLL_ENABLE;
-	I915_WRITE(CNL_DPLL_ENABLE(id), val);
+	intel_de_write(dev_priv, CNL_DPLL_ENABLE(id), val);
 
 	/* 4. Wait for PLL not locked status in DPLL_ENABLE. */
 	if (intel_de_wait_for_clear(dev_priv, CNL_DPLL_ENABLE(id), PLL_LOCK, 5))
@@ -2124,9 +2125,9 @@ static void cnl_ddi_pll_disable(struct drm_i915_private *dev_priv,
 	 */
 
 	/* 6. Disable DPLL power in DPLL_ENABLE. */
-	val = I915_READ(CNL_DPLL_ENABLE(id));
+	val = intel_de_read(dev_priv, CNL_DPLL_ENABLE(id));
 	val &= ~PLL_POWER_ENABLE;
-	I915_WRITE(CNL_DPLL_ENABLE(id), val);
+	intel_de_write(dev_priv, CNL_DPLL_ENABLE(id), val);
 
 	/* 7. Wait for DPLL power state disabled in DPLL_ENABLE. */
 	if (intel_de_wait_for_clear(dev_priv, CNL_DPLL_ENABLE(id),
@@ -2150,16 +2151,17 @@ static bool cnl_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
 
 	ret = false;
 
-	val = I915_READ(CNL_DPLL_ENABLE(id));
+	val = intel_de_read(dev_priv, CNL_DPLL_ENABLE(id));
 	if (!(val & PLL_ENABLE))
 		goto out;
 
-	val = I915_READ(CNL_DPLL_CFGCR0(id));
+	val = intel_de_read(dev_priv, CNL_DPLL_CFGCR0(id));
 	hw_state->cfgcr0 = val;
 
 	/* avoid reading back stale values if HDMI mode is not enabled */
 	if (val & DPLL_CFGCR0_HDMI_MODE) {
-		hw_state->cfgcr1 = I915_READ(CNL_DPLL_CFGCR1(id));
+		hw_state->cfgcr1 = intel_de_read(dev_priv,
+						 CNL_DPLL_CFGCR1(id));
 	}
 	ret = true;
 
@@ -3140,35 +3142,37 @@ static bool mg_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	if (!wakeref)
 		return false;
 
-	val = I915_READ(MG_PLL_ENABLE(tc_port));
+	val = intel_de_read(dev_priv, MG_PLL_ENABLE(tc_port));
 	if (!(val & PLL_ENABLE))
 		goto out;
 
-	hw_state->mg_refclkin_ctl = I915_READ(MG_REFCLKIN_CTL(tc_port));
+	hw_state->mg_refclkin_ctl = intel_de_read(dev_priv,
+						  MG_REFCLKIN_CTL(tc_port));
 	hw_state->mg_refclkin_ctl &= MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 
 	hw_state->mg_clktop2_coreclkctl1 =
-		I915_READ(MG_CLKTOP2_CORECLKCTL1(tc_port));
+		intel_de_read(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port));
 	hw_state->mg_clktop2_coreclkctl1 &=
 		MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 
 	hw_state->mg_clktop2_hsclkctl =
-		I915_READ(MG_CLKTOP2_HSCLKCTL(tc_port));
+		intel_de_read(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port));
 	hw_state->mg_clktop2_hsclkctl &=
 		MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
 		MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
 		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK;
 
-	hw_state->mg_pll_div0 = I915_READ(MG_PLL_DIV0(tc_port));
-	hw_state->mg_pll_div1 = I915_READ(MG_PLL_DIV1(tc_port));
-	hw_state->mg_pll_lf = I915_READ(MG_PLL_LF(tc_port));
-	hw_state->mg_pll_frac_lock = I915_READ(MG_PLL_FRAC_LOCK(tc_port));
-	hw_state->mg_pll_ssc = I915_READ(MG_PLL_SSC(tc_port));
+	hw_state->mg_pll_div0 = intel_de_read(dev_priv, MG_PLL_DIV0(tc_port));
+	hw_state->mg_pll_div1 = intel_de_read(dev_priv, MG_PLL_DIV1(tc_port));
+	hw_state->mg_pll_lf = intel_de_read(dev_priv, MG_PLL_LF(tc_port));
+	hw_state->mg_pll_frac_lock = intel_de_read(dev_priv,
+						   MG_PLL_FRAC_LOCK(tc_port));
+	hw_state->mg_pll_ssc = intel_de_read(dev_priv, MG_PLL_SSC(tc_port));
 
-	hw_state->mg_pll_bias = I915_READ(MG_PLL_BIAS(tc_port));
+	hw_state->mg_pll_bias = intel_de_read(dev_priv, MG_PLL_BIAS(tc_port));
 	hw_state->mg_pll_tdc_coldst_bias =
-		I915_READ(MG_PLL_TDC_COLDST_BIAS(tc_port));
+		intel_de_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
 
 	if (dev_priv->cdclk.hw.ref == 38400) {
 		hw_state->mg_pll_tdc_coldst_bias_mask = MG_PLL_TDC_COLDST_COLDSTART;
@@ -3202,7 +3206,7 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	if (!wakeref)
 		return false;
 
-	val = I915_READ(MG_PLL_ENABLE(tc_port));
+	val = intel_de_read(dev_priv, MG_PLL_ENABLE(tc_port));
 	if (!(val & PLL_ENABLE))
 		goto out;
 
@@ -3210,13 +3214,15 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	 * All registers read here have the same HIP_INDEX_REG even though
 	 * they are on different building blocks
 	 */
-	I915_WRITE(HIP_INDEX_REG(tc_port), HIP_INDEX_VAL(tc_port, 0x2));
+	intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
+		       HIP_INDEX_VAL(tc_port, 0x2));
 
-	hw_state->mg_refclkin_ctl = I915_READ(DKL_REFCLKIN_CTL(tc_port));
+	hw_state->mg_refclkin_ctl = intel_de_read(dev_priv,
+						  DKL_REFCLKIN_CTL(tc_port));
 	hw_state->mg_refclkin_ctl &= MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 
 	hw_state->mg_clktop2_hsclkctl =
-		I915_READ(DKL_CLKTOP2_HSCLKCTL(tc_port));
+		intel_de_read(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port));
 	hw_state->mg_clktop2_hsclkctl &=
 		MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
@@ -3224,32 +3230,32 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK;
 
 	hw_state->mg_clktop2_coreclkctl1 =
-		I915_READ(DKL_CLKTOP2_CORECLKCTL1(tc_port));
+		intel_de_read(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port));
 	hw_state->mg_clktop2_coreclkctl1 &=
 		MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 
-	hw_state->mg_pll_div0 = I915_READ(DKL_PLL_DIV0(tc_port));
+	hw_state->mg_pll_div0 = intel_de_read(dev_priv, DKL_PLL_DIV0(tc_port));
 	hw_state->mg_pll_div0 &= (DKL_PLL_DIV0_INTEG_COEFF_MASK |
 				  DKL_PLL_DIV0_PROP_COEFF_MASK |
 				  DKL_PLL_DIV0_FBPREDIV_MASK |
 				  DKL_PLL_DIV0_FBDIV_INT_MASK);
 
-	hw_state->mg_pll_div1 = I915_READ(DKL_PLL_DIV1(tc_port));
+	hw_state->mg_pll_div1 = intel_de_read(dev_priv, DKL_PLL_DIV1(tc_port));
 	hw_state->mg_pll_div1 &= (DKL_PLL_DIV1_IREF_TRIM_MASK |
 				  DKL_PLL_DIV1_TDC_TARGET_CNT_MASK);
 
-	hw_state->mg_pll_ssc = I915_READ(DKL_PLL_SSC(tc_port));
+	hw_state->mg_pll_ssc = intel_de_read(dev_priv, DKL_PLL_SSC(tc_port));
 	hw_state->mg_pll_ssc &= (DKL_PLL_SSC_IREF_NDIV_RATIO_MASK |
 				 DKL_PLL_SSC_STEP_LEN_MASK |
 				 DKL_PLL_SSC_STEP_NUM_MASK |
 				 DKL_PLL_SSC_EN);
 
-	hw_state->mg_pll_bias = I915_READ(DKL_PLL_BIAS(tc_port));
+	hw_state->mg_pll_bias = intel_de_read(dev_priv, DKL_PLL_BIAS(tc_port));
 	hw_state->mg_pll_bias &= (DKL_PLL_BIAS_FRAC_EN_H |
 				  DKL_PLL_BIAS_FBDIV_FRAC_MASK);
 
 	hw_state->mg_pll_tdc_coldst_bias =
-		I915_READ(DKL_PLL_TDC_COLDST_BIAS(tc_port));
+		intel_de_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port));
 	hw_state->mg_pll_tdc_coldst_bias &= (DKL_PLL_TDC_SSC_STEP_SIZE_MASK |
 					     DKL_PLL_TDC_FEED_FWD_GAIN_MASK);
 
@@ -3274,20 +3280,26 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	if (!wakeref)
 		return false;
 
-	val = I915_READ(enable_reg);
+	val = intel_de_read(dev_priv, enable_reg);
 	if (!(val & PLL_ENABLE))
 		goto out;
 
 	if (INTEL_GEN(dev_priv) >= 12) {
-		hw_state->cfgcr0 = I915_READ(TGL_DPLL_CFGCR0(id));
-		hw_state->cfgcr1 = I915_READ(TGL_DPLL_CFGCR1(id));
+		hw_state->cfgcr0 = intel_de_read(dev_priv,
+						 TGL_DPLL_CFGCR0(id));
+		hw_state->cfgcr1 = intel_de_read(dev_priv,
+						 TGL_DPLL_CFGCR1(id));
 	} else {
 		if (IS_ELKHARTLAKE(dev_priv) && id == DPLL_ID_EHL_DPLL4) {
-			hw_state->cfgcr0 = I915_READ(ICL_DPLL_CFGCR0(4));
-			hw_state->cfgcr1 = I915_READ(ICL_DPLL_CFGCR1(4));
+			hw_state->cfgcr0 = intel_de_read(dev_priv,
+							 ICL_DPLL_CFGCR0(4));
+			hw_state->cfgcr1 = intel_de_read(dev_priv,
+							 ICL_DPLL_CFGCR1(4));
 		} else {
-			hw_state->cfgcr0 = I915_READ(ICL_DPLL_CFGCR0(id));
-			hw_state->cfgcr1 = I915_READ(ICL_DPLL_CFGCR1(id));
+			hw_state->cfgcr0 = intel_de_read(dev_priv,
+							 ICL_DPLL_CFGCR0(id));
+			hw_state->cfgcr1 = intel_de_read(dev_priv,
+							 ICL_DPLL_CFGCR1(id));
 		}
 	}
 
@@ -3338,9 +3350,9 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
 		}
 	}
 
-	I915_WRITE(cfgcr0_reg, hw_state->cfgcr0);
-	I915_WRITE(cfgcr1_reg, hw_state->cfgcr1);
-	POSTING_READ(cfgcr1_reg);
+	intel_de_write(dev_priv, cfgcr0_reg, hw_state->cfgcr0);
+	intel_de_write(dev_priv, cfgcr1_reg, hw_state->cfgcr1);
+	intel_de_posting_read(dev_priv, cfgcr1_reg);
 }
 
 static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
@@ -3356,41 +3368,42 @@ static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
 	 * during the calc/readout phase if the mask depends on some other HW
 	 * state like refclk, see icl_calc_mg_pll_state().
 	 */
-	val = I915_READ(MG_REFCLKIN_CTL(tc_port));
+	val = intel_de_read(dev_priv, MG_REFCLKIN_CTL(tc_port));
 	val &= ~MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 	val |= hw_state->mg_refclkin_ctl;
-	I915_WRITE(MG_REFCLKIN_CTL(tc_port), val);
+	intel_de_write(dev_priv, MG_REFCLKIN_CTL(tc_port), val);
 
-	val = I915_READ(MG_CLKTOP2_CORECLKCTL1(tc_port));
+	val = intel_de_read(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port));
 	val &= ~MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 	val |= hw_state->mg_clktop2_coreclkctl1;
-	I915_WRITE(MG_CLKTOP2_CORECLKCTL1(tc_port), val);
+	intel_de_write(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port), val);
 
-	val = I915_READ(MG_CLKTOP2_HSCLKCTL(tc_port));
+	val = intel_de_read(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port));
 	val &= ~(MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
 		 MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK);
 	val |= hw_state->mg_clktop2_hsclkctl;
-	I915_WRITE(MG_CLKTOP2_HSCLKCTL(tc_port), val);
+	intel_de_write(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port), val);
 
-	I915_WRITE(MG_PLL_DIV0(tc_port), hw_state->mg_pll_div0);
-	I915_WRITE(MG_PLL_DIV1(tc_port), hw_state->mg_pll_div1);
-	I915_WRITE(MG_PLL_LF(tc_port), hw_state->mg_pll_lf);
-	I915_WRITE(MG_PLL_FRAC_LOCK(tc_port), hw_state->mg_pll_frac_lock);
-	I915_WRITE(MG_PLL_SSC(tc_port), hw_state->mg_pll_ssc);
+	intel_de_write(dev_priv, MG_PLL_DIV0(tc_port), hw_state->mg_pll_div0);
+	intel_de_write(dev_priv, MG_PLL_DIV1(tc_port), hw_state->mg_pll_div1);
+	intel_de_write(dev_priv, MG_PLL_LF(tc_port), hw_state->mg_pll_lf);
+	intel_de_write(dev_priv, MG_PLL_FRAC_LOCK(tc_port),
+		       hw_state->mg_pll_frac_lock);
+	intel_de_write(dev_priv, MG_PLL_SSC(tc_port), hw_state->mg_pll_ssc);
 
-	val = I915_READ(MG_PLL_BIAS(tc_port));
+	val = intel_de_read(dev_priv, MG_PLL_BIAS(tc_port));
 	val &= ~hw_state->mg_pll_bias_mask;
 	val |= hw_state->mg_pll_bias;
-	I915_WRITE(MG_PLL_BIAS(tc_port), val);
+	intel_de_write(dev_priv, MG_PLL_BIAS(tc_port), val);
 
-	val = I915_READ(MG_PLL_TDC_COLDST_BIAS(tc_port));
+	val = intel_de_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
 	val &= ~hw_state->mg_pll_tdc_coldst_bias_mask;
 	val |= hw_state->mg_pll_tdc_coldst_bias;
-	I915_WRITE(MG_PLL_TDC_COLDST_BIAS(tc_port), val);
+	intel_de_write(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port), val);
 
-	POSTING_READ(MG_PLL_TDC_COLDST_BIAS(tc_port));
+	intel_de_posting_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
 }
 
 static void dkl_pll_write(struct drm_i915_private *dev_priv,
@@ -3404,62 +3417,63 @@ static void dkl_pll_write(struct drm_i915_private *dev_priv,
 	 * All registers programmed here have the same HIP_INDEX_REG even
 	 * though on different building block
 	 */
-	I915_WRITE(HIP_INDEX_REG(tc_port), HIP_INDEX_VAL(tc_port, 0x2));
+	intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
+		       HIP_INDEX_VAL(tc_port, 0x2));
 
 	/* All the registers are RMW */
-	val = I915_READ(DKL_REFCLKIN_CTL(tc_port));
+	val = intel_de_read(dev_priv, DKL_REFCLKIN_CTL(tc_port));
 	val &= ~MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 	val |= hw_state->mg_refclkin_ctl;
-	I915_WRITE(DKL_REFCLKIN_CTL(tc_port), val);
+	intel_de_write(dev_priv, DKL_REFCLKIN_CTL(tc_port), val);
 
-	val = I915_READ(DKL_CLKTOP2_CORECLKCTL1(tc_port));
+	val = intel_de_read(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port));
 	val &= ~MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 	val |= hw_state->mg_clktop2_coreclkctl1;
-	I915_WRITE(DKL_CLKTOP2_CORECLKCTL1(tc_port), val);
+	intel_de_write(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port), val);
 
-	val = I915_READ(DKL_CLKTOP2_HSCLKCTL(tc_port));
+	val = intel_de_read(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port));
 	val &= ~(MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
 		 MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK);
 	val |= hw_state->mg_clktop2_hsclkctl;
-	I915_WRITE(DKL_CLKTOP2_HSCLKCTL(tc_port), val);
+	intel_de_write(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port), val);
 
-	val = I915_READ(DKL_PLL_DIV0(tc_port));
+	val = intel_de_read(dev_priv, DKL_PLL_DIV0(tc_port));
 	val &= ~(DKL_PLL_DIV0_INTEG_COEFF_MASK |
 		 DKL_PLL_DIV0_PROP_COEFF_MASK |
 		 DKL_PLL_DIV0_FBPREDIV_MASK |
 		 DKL_PLL_DIV0_FBDIV_INT_MASK);
 	val |= hw_state->mg_pll_div0;
-	I915_WRITE(DKL_PLL_DIV0(tc_port), val);
+	intel_de_write(dev_priv, DKL_PLL_DIV0(tc_port), val);
 
-	val = I915_READ(DKL_PLL_DIV1(tc_port));
+	val = intel_de_read(dev_priv, DKL_PLL_DIV1(tc_port));
 	val &= ~(DKL_PLL_DIV1_IREF_TRIM_MASK |
 		 DKL_PLL_DIV1_TDC_TARGET_CNT_MASK);
 	val |= hw_state->mg_pll_div1;
-	I915_WRITE(DKL_PLL_DIV1(tc_port), val);
+	intel_de_write(dev_priv, DKL_PLL_DIV1(tc_port), val);
 
-	val = I915_READ(DKL_PLL_SSC(tc_port));
+	val = intel_de_read(dev_priv, DKL_PLL_SSC(tc_port));
 	val &= ~(DKL_PLL_SSC_IREF_NDIV_RATIO_MASK |
 		 DKL_PLL_SSC_STEP_LEN_MASK |
 		 DKL_PLL_SSC_STEP_NUM_MASK |
 		 DKL_PLL_SSC_EN);
 	val |= hw_state->mg_pll_ssc;
-	I915_WRITE(DKL_PLL_SSC(tc_port), val);
+	intel_de_write(dev_priv, DKL_PLL_SSC(tc_port), val);
 
-	val = I915_READ(DKL_PLL_BIAS(tc_port));
+	val = intel_de_read(dev_priv, DKL_PLL_BIAS(tc_port));
 	val &= ~(DKL_PLL_BIAS_FRAC_EN_H |
 		 DKL_PLL_BIAS_FBDIV_FRAC_MASK);
 	val |= hw_state->mg_pll_bias;
-	I915_WRITE(DKL_PLL_BIAS(tc_port), val);
+	intel_de_write(dev_priv, DKL_PLL_BIAS(tc_port), val);
 
-	val = I915_READ(DKL_PLL_TDC_COLDST_BIAS(tc_port));
+	val = intel_de_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port));
 	val &= ~(DKL_PLL_TDC_SSC_STEP_SIZE_MASK |
 		 DKL_PLL_TDC_FEED_FWD_GAIN_MASK);
 	val |= hw_state->mg_pll_tdc_coldst_bias;
-	I915_WRITE(DKL_PLL_TDC_COLDST_BIAS(tc_port), val);
+	intel_de_write(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port), val);
 
-	POSTING_READ(DKL_PLL_TDC_COLDST_BIAS(tc_port));
+	intel_de_posting_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port));
 }
 
 static void icl_pll_power_enable(struct drm_i915_private *dev_priv,
@@ -3468,9 +3482,9 @@ static void icl_pll_power_enable(struct drm_i915_private *dev_priv,
 {
 	u32 val;
 
-	val = I915_READ(enable_reg);
+	val = intel_de_read(dev_priv, enable_reg);
 	val |= PLL_POWER_ENABLE;
-	I915_WRITE(enable_reg, val);
+	intel_de_write(dev_priv, enable_reg, val);
 
 	/*
 	 * The spec says we need to "wait" but it also says it should be
@@ -3486,9 +3500,9 @@ static void icl_pll_enable(struct drm_i915_private *dev_priv,
 {
 	u32 val;
 
-	val = I915_READ(enable_reg);
+	val = intel_de_read(dev_priv, enable_reg);
 	val |= PLL_ENABLE;
-	I915_WRITE(enable_reg, val);
+	intel_de_write(dev_priv, enable_reg, val);
 
 	/* Timeout is actually 600us. */
 	if (intel_de_wait_for_set(dev_priv, enable_reg, PLL_LOCK, 1))
@@ -3584,9 +3598,9 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
 	 * nothign here.
 	 */
 
-	val = I915_READ(enable_reg);
+	val = intel_de_read(dev_priv, enable_reg);
 	val &= ~PLL_ENABLE;
-	I915_WRITE(enable_reg, val);
+	intel_de_write(dev_priv, enable_reg, val);
 
 	/* Timeout is actually 1us. */
 	if (intel_de_wait_for_clear(dev_priv, enable_reg, PLL_LOCK, 1))
@@ -3594,9 +3608,9 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
 
 	/* DVFS post sequence would be here. See the comment above. */
 
-	val = I915_READ(enable_reg);
+	val = intel_de_read(dev_priv, enable_reg);
 	val &= ~PLL_POWER_ENABLE;
-	I915_WRITE(enable_reg, val);
+	intel_de_write(dev_priv, enable_reg, val);
 
 	/*
 	 * The spec says we need to "wait" but it also says it should be
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
