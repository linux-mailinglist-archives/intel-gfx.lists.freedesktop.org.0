Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8257F1485F7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:25:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB15072A6C;
	Fri, 24 Jan 2020 13:25:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B006872A6D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:25:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:14 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="400661061"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:24 +0200
Message-Id: <762b11289d22e1db46697c5b4596e49defc8190f.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 03/33] drm/i915/cdclk: use intel_de_*() functions
 for register access
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
 drivers/gpu/drm/i915/display/intel_cdclk.c | 133 +++++++++++----------
 1 file changed, 68 insertions(+), 65 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 50d235d037a1..e17b5a444887 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -237,8 +237,8 @@ static unsigned int intel_hpll_vco(struct drm_i915_private *dev_priv)
 	else
 		return 0;
 
-	tmp = I915_READ(IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv) ?
-			HPLLVCO_MOBILE : HPLLVCO);
+	tmp = intel_de_read(dev_priv,
+			    IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv) ? HPLLVCO_MOBILE : HPLLVCO);
 
 	vco = vco_table[tmp & 0x7];
 	if (vco == 0)
@@ -412,12 +412,12 @@ static void gm45_get_cdclk(struct drm_i915_private *dev_priv,
 static void hsw_get_cdclk(struct drm_i915_private *dev_priv,
 			  struct intel_cdclk_state *cdclk_state)
 {
-	u32 lcpll = I915_READ(LCPLL_CTL);
+	u32 lcpll = intel_de_read(dev_priv, LCPLL_CTL);
 	u32 freq = lcpll & LCPLL_CLK_FREQ_MASK;
 
 	if (lcpll & LCPLL_CD_SOURCE_FCLK)
 		cdclk_state->cdclk = 800000;
-	else if (I915_READ(FUSE_STRAP) & HSW_CDCLK_LIMIT)
+	else if (intel_de_read(dev_priv, FUSE_STRAP) & HSW_CDCLK_LIMIT)
 		cdclk_state->cdclk = 450000;
 	else if (freq == LCPLL_CLK_FREQ_450)
 		cdclk_state->cdclk = 450000;
@@ -515,17 +515,17 @@ static void vlv_program_pfi_credits(struct drm_i915_private *dev_priv)
 	 * WA - write default credits before re-programming
 	 * FIXME: should we also set the resend bit here?
 	 */
-	I915_WRITE(GCI_CONTROL, VGA_FAST_MODE_DISABLE |
-		   default_credits);
+	intel_de_write(dev_priv, GCI_CONTROL,
+		       VGA_FAST_MODE_DISABLE | default_credits);
 
-	I915_WRITE(GCI_CONTROL, VGA_FAST_MODE_DISABLE |
-		   credits | PFI_CREDIT_RESEND);
+	intel_de_write(dev_priv, GCI_CONTROL,
+		       VGA_FAST_MODE_DISABLE | credits | PFI_CREDIT_RESEND);
 
 	/*
 	 * FIXME is this guaranteed to clear
 	 * immediately or should we poll for it?
 	 */
-	WARN_ON(I915_READ(GCI_CONTROL) & PFI_CREDIT_RESEND);
+	WARN_ON(intel_de_read(dev_priv, GCI_CONTROL) & PFI_CREDIT_RESEND);
 }
 
 static void vlv_set_cdclk(struct drm_i915_private *dev_priv,
@@ -695,12 +695,12 @@ static u8 bdw_calc_voltage_level(int cdclk)
 static void bdw_get_cdclk(struct drm_i915_private *dev_priv,
 			  struct intel_cdclk_state *cdclk_state)
 {
-	u32 lcpll = I915_READ(LCPLL_CTL);
+	u32 lcpll = intel_de_read(dev_priv, LCPLL_CTL);
 	u32 freq = lcpll & LCPLL_CLK_FREQ_MASK;
 
 	if (lcpll & LCPLL_CD_SOURCE_FCLK)
 		cdclk_state->cdclk = 800000;
-	else if (I915_READ(FUSE_STRAP) & HSW_CDCLK_LIMIT)
+	else if (intel_de_read(dev_priv, FUSE_STRAP) & HSW_CDCLK_LIMIT)
 		cdclk_state->cdclk = 450000;
 	else if (freq == LCPLL_CLK_FREQ_450)
 		cdclk_state->cdclk = 450000;
@@ -727,7 +727,7 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
 	u32 val;
 	int ret;
 
-	if (WARN((I915_READ(LCPLL_CTL) &
+	if (WARN((intel_de_read(dev_priv, LCPLL_CTL) &
 		  (LCPLL_PLL_DISABLE | LCPLL_PLL_LOCK |
 		   LCPLL_CD_CLOCK_DISABLE | LCPLL_ROOT_CD_CLOCK_DISABLE |
 		   LCPLL_CD2X_CLOCK_DISABLE | LCPLL_POWER_DOWN_ALLOW |
@@ -743,19 +743,19 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	val = I915_READ(LCPLL_CTL);
+	val = intel_de_read(dev_priv, LCPLL_CTL);
 	val |= LCPLL_CD_SOURCE_FCLK;
-	I915_WRITE(LCPLL_CTL, val);
+	intel_de_write(dev_priv, LCPLL_CTL, val);
 
 	/*
 	 * According to the spec, it should be enough to poll for this 1 us.
 	 * However, extensive testing shows that this can take longer.
 	 */
-	if (wait_for_us(I915_READ(LCPLL_CTL) &
+	if (wait_for_us(intel_de_read(dev_priv, LCPLL_CTL) &
 			LCPLL_CD_SOURCE_FCLK_DONE, 100))
 		drm_err(&dev_priv->drm, "Switching to FCLK failed\n");
 
-	val = I915_READ(LCPLL_CTL);
+	val = intel_de_read(dev_priv, LCPLL_CTL);
 	val &= ~LCPLL_CLK_FREQ_MASK;
 
 	switch (cdclk) {
@@ -776,20 +776,21 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
 		break;
 	}
 
-	I915_WRITE(LCPLL_CTL, val);
+	intel_de_write(dev_priv, LCPLL_CTL, val);
 
-	val = I915_READ(LCPLL_CTL);
+	val = intel_de_read(dev_priv, LCPLL_CTL);
 	val &= ~LCPLL_CD_SOURCE_FCLK;
-	I915_WRITE(LCPLL_CTL, val);
+	intel_de_write(dev_priv, LCPLL_CTL, val);
 
-	if (wait_for_us((I915_READ(LCPLL_CTL) &
-			LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
+	if (wait_for_us((intel_de_read(dev_priv, LCPLL_CTL) &
+			 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
 		drm_err(&dev_priv->drm, "Switching back to LCPLL failed\n");
 
 	sandybridge_pcode_write(dev_priv, HSW_PCODE_DE_WRITE_FREQ_REQ,
 				cdclk_state->voltage_level);
 
-	I915_WRITE(CDCLK_FREQ, DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
+	intel_de_write(dev_priv, CDCLK_FREQ,
+		       DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
 
 	intel_update_cdclk(dev_priv);
 }
@@ -837,14 +838,14 @@ static void skl_dpll0_update(struct drm_i915_private *dev_priv,
 	cdclk_state->ref = 24000;
 	cdclk_state->vco = 0;
 
-	val = I915_READ(LCPLL1_CTL);
+	val = intel_de_read(dev_priv, LCPLL1_CTL);
 	if ((val & LCPLL_PLL_ENABLE) == 0)
 		return;
 
 	if (WARN_ON((val & LCPLL_PLL_LOCK) == 0))
 		return;
 
-	val = I915_READ(DPLL_CTRL1);
+	val = intel_de_read(dev_priv, DPLL_CTRL1);
 
 	if (WARN_ON((val & (DPLL_CTRL1_HDMI_MODE(SKL_DPLL0) |
 			    DPLL_CTRL1_SSC(SKL_DPLL0) |
@@ -881,7 +882,7 @@ static void skl_get_cdclk(struct drm_i915_private *dev_priv,
 	if (cdclk_state->vco == 0)
 		goto out;
 
-	cdctl = I915_READ(CDCLK_CTL);
+	cdctl = intel_de_read(dev_priv, CDCLK_CTL);
 
 	if (cdclk_state->vco == 8640000) {
 		switch (cdctl & CDCLK_FREQ_SEL_MASK) {
@@ -962,7 +963,7 @@ static void skl_dpll0_enable(struct drm_i915_private *dev_priv, int vco)
 	 * rate later on, with the constraint of choosing a frequency that
 	 * works with vco.
 	 */
-	val = I915_READ(DPLL_CTRL1);
+	val = intel_de_read(dev_priv, DPLL_CTRL1);
 
 	val &= ~(DPLL_CTRL1_HDMI_MODE(SKL_DPLL0) | DPLL_CTRL1_SSC(SKL_DPLL0) |
 		 DPLL_CTRL1_LINK_RATE_MASK(SKL_DPLL0));
@@ -974,10 +975,11 @@ static void skl_dpll0_enable(struct drm_i915_private *dev_priv, int vco)
 		val |= DPLL_CTRL1_LINK_RATE(DPLL_CTRL1_LINK_RATE_810,
 					    SKL_DPLL0);
 
-	I915_WRITE(DPLL_CTRL1, val);
-	POSTING_READ(DPLL_CTRL1);
+	intel_de_write(dev_priv, DPLL_CTRL1, val);
+	intel_de_posting_read(dev_priv, DPLL_CTRL1);
 
-	I915_WRITE(LCPLL1_CTL, I915_READ(LCPLL1_CTL) | LCPLL_PLL_ENABLE);
+	intel_de_write(dev_priv, LCPLL1_CTL,
+		       intel_de_read(dev_priv, LCPLL1_CTL) | LCPLL_PLL_ENABLE);
 
 	if (intel_de_wait_for_set(dev_priv, LCPLL1_CTL, LCPLL_PLL_LOCK, 5))
 		drm_err(&dev_priv->drm, "DPLL0 not locked\n");
@@ -990,7 +992,8 @@ static void skl_dpll0_enable(struct drm_i915_private *dev_priv, int vco)
 
 static void skl_dpll0_disable(struct drm_i915_private *dev_priv)
 {
-	I915_WRITE(LCPLL1_CTL, I915_READ(LCPLL1_CTL) & ~LCPLL_PLL_ENABLE);
+	intel_de_write(dev_priv, LCPLL1_CTL,
+		       intel_de_read(dev_priv, LCPLL1_CTL) & ~LCPLL_PLL_ENABLE);
 	if (intel_de_wait_for_clear(dev_priv, LCPLL1_CTL, LCPLL_PLL_LOCK, 1))
 		drm_err(&dev_priv->drm, "Couldn't disable DPLL0\n");
 
@@ -1053,34 +1056,34 @@ static void skl_set_cdclk(struct drm_i915_private *dev_priv,
 	    dev_priv->cdclk.hw.vco != vco)
 		skl_dpll0_disable(dev_priv);
 
-	cdclk_ctl = I915_READ(CDCLK_CTL);
+	cdclk_ctl = intel_de_read(dev_priv, CDCLK_CTL);
 
 	if (dev_priv->cdclk.hw.vco != vco) {
 		/* Wa Display #1183: skl,kbl,cfl */
 		cdclk_ctl &= ~(CDCLK_FREQ_SEL_MASK | CDCLK_FREQ_DECIMAL_MASK);
 		cdclk_ctl |= freq_select | skl_cdclk_decimal(cdclk);
-		I915_WRITE(CDCLK_CTL, cdclk_ctl);
+		intel_de_write(dev_priv, CDCLK_CTL, cdclk_ctl);
 	}
 
 	/* Wa Display #1183: skl,kbl,cfl */
 	cdclk_ctl |= CDCLK_DIVMUX_CD_OVERRIDE;
-	I915_WRITE(CDCLK_CTL, cdclk_ctl);
-	POSTING_READ(CDCLK_CTL);
+	intel_de_write(dev_priv, CDCLK_CTL, cdclk_ctl);
+	intel_de_posting_read(dev_priv, CDCLK_CTL);
 
 	if (dev_priv->cdclk.hw.vco != vco)
 		skl_dpll0_enable(dev_priv, vco);
 
 	/* Wa Display #1183: skl,kbl,cfl */
 	cdclk_ctl &= ~(CDCLK_FREQ_SEL_MASK | CDCLK_FREQ_DECIMAL_MASK);
-	I915_WRITE(CDCLK_CTL, cdclk_ctl);
+	intel_de_write(dev_priv, CDCLK_CTL, cdclk_ctl);
 
 	cdclk_ctl |= freq_select | skl_cdclk_decimal(cdclk);
-	I915_WRITE(CDCLK_CTL, cdclk_ctl);
+	intel_de_write(dev_priv, CDCLK_CTL, cdclk_ctl);
 
 	/* Wa Display #1183: skl,kbl,cfl */
 	cdclk_ctl &= ~CDCLK_DIVMUX_CD_OVERRIDE;
-	I915_WRITE(CDCLK_CTL, cdclk_ctl);
-	POSTING_READ(CDCLK_CTL);
+	intel_de_write(dev_priv, CDCLK_CTL, cdclk_ctl);
+	intel_de_posting_read(dev_priv, CDCLK_CTL);
 
 	/* inform PCU of the change */
 	sandybridge_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
@@ -1098,7 +1101,7 @@ static void skl_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	 * There is SWF18 scratchpad register defined which is set by the
 	 * pre-os which can be used by the OS drivers to check the status
 	 */
-	if ((I915_READ(SWF_ILK(0x18)) & 0x00FFFFFF) == 0)
+	if ((intel_de_read(dev_priv, SWF_ILK(0x18)) & 0x00FFFFFF) == 0)
 		goto sanitize;
 
 	intel_update_cdclk(dev_priv);
@@ -1115,7 +1118,7 @@ static void skl_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	 * decimal part is programmed wrong from BIOS where pre-os does not
 	 * enable display. Verify the same as well.
 	 */
-	cdctl = I915_READ(CDCLK_CTL);
+	cdctl = intel_de_read(dev_priv, CDCLK_CTL);
 	expected = (cdctl & CDCLK_FREQ_SEL_MASK) |
 		skl_cdclk_decimal(dev_priv->cdclk.hw.cdclk);
 	if (cdctl == expected)
@@ -1295,7 +1298,7 @@ static u8 ehl_calc_voltage_level(int cdclk)
 static void cnl_readout_refclk(struct drm_i915_private *dev_priv,
 			       struct intel_cdclk_state *cdclk_state)
 {
-	if (I915_READ(SKL_DSSM) & CNL_DSSM_CDCLK_PLL_REFCLK_24MHz)
+	if (intel_de_read(dev_priv, SKL_DSSM) & CNL_DSSM_CDCLK_PLL_REFCLK_24MHz)
 		cdclk_state->ref = 24000;
 	else
 		cdclk_state->ref = 19200;
@@ -1304,7 +1307,7 @@ static void cnl_readout_refclk(struct drm_i915_private *dev_priv,
 static void icl_readout_refclk(struct drm_i915_private *dev_priv,
 			       struct intel_cdclk_state *cdclk_state)
 {
-	u32 dssm = I915_READ(SKL_DSSM) & ICL_DSSM_CDCLK_PLL_REFCLK_MASK;
+	u32 dssm = intel_de_read(dev_priv, SKL_DSSM) & ICL_DSSM_CDCLK_PLL_REFCLK_MASK;
 
 	switch (dssm) {
 	default:
@@ -1334,7 +1337,7 @@ static void bxt_de_pll_readout(struct drm_i915_private *dev_priv,
 	else
 		cdclk_state->ref = 19200;
 
-	val = I915_READ(BXT_DE_PLL_ENABLE);
+	val = intel_de_read(dev_priv, BXT_DE_PLL_ENABLE);
 	if ((val & BXT_DE_PLL_PLL_ENABLE) == 0 ||
 	    (val & BXT_DE_PLL_LOCK) == 0) {
 		/*
@@ -1352,7 +1355,7 @@ static void bxt_de_pll_readout(struct drm_i915_private *dev_priv,
 	if (INTEL_GEN(dev_priv) >= 10)
 		ratio = val & CNL_CDCLK_PLL_RATIO_MASK;
 	else
-		ratio = I915_READ(BXT_DE_PLL_CTL) & BXT_DE_PLL_RATIO_MASK;
+		ratio = intel_de_read(dev_priv, BXT_DE_PLL_CTL) & BXT_DE_PLL_RATIO_MASK;
 
 	cdclk_state->vco = ratio * cdclk_state->ref;
 }
@@ -1377,7 +1380,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 		goto out;
 	}
 
-	divider = I915_READ(CDCLK_CTL) & BXT_CDCLK_CD2X_DIV_SEL_MASK;
+	divider = intel_de_read(dev_priv, CDCLK_CTL) & BXT_CDCLK_CD2X_DIV_SEL_MASK;
 
 	switch (divider) {
 	case BXT_CDCLK_CD2X_DIV_SEL_1:
@@ -1413,7 +1416,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 
 static void bxt_de_pll_disable(struct drm_i915_private *dev_priv)
 {
-	I915_WRITE(BXT_DE_PLL_ENABLE, 0);
+	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, 0);
 
 	/* Timeout 200us */
 	if (intel_de_wait_for_clear(dev_priv,
@@ -1428,12 +1431,12 @@ static void bxt_de_pll_enable(struct drm_i915_private *dev_priv, int vco)
 	int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->cdclk.hw.ref);
 	u32 val;
 
-	val = I915_READ(BXT_DE_PLL_CTL);
+	val = intel_de_read(dev_priv, BXT_DE_PLL_CTL);
 	val &= ~BXT_DE_PLL_RATIO_MASK;
 	val |= BXT_DE_PLL_RATIO(ratio);
-	I915_WRITE(BXT_DE_PLL_CTL, val);
+	intel_de_write(dev_priv, BXT_DE_PLL_CTL, val);
 
-	I915_WRITE(BXT_DE_PLL_ENABLE, BXT_DE_PLL_PLL_ENABLE);
+	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, BXT_DE_PLL_PLL_ENABLE);
 
 	/* Timeout 200us */
 	if (intel_de_wait_for_set(dev_priv,
@@ -1447,12 +1450,12 @@ static void cnl_cdclk_pll_disable(struct drm_i915_private *dev_priv)
 {
 	u32 val;
 
-	val = I915_READ(BXT_DE_PLL_ENABLE);
+	val = intel_de_read(dev_priv, BXT_DE_PLL_ENABLE);
 	val &= ~BXT_DE_PLL_PLL_ENABLE;
-	I915_WRITE(BXT_DE_PLL_ENABLE, val);
+	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
 
 	/* Timeout 200us */
-	if (wait_for((I915_READ(BXT_DE_PLL_ENABLE) & BXT_DE_PLL_LOCK) == 0, 1))
+	if (wait_for((intel_de_read(dev_priv, BXT_DE_PLL_ENABLE) & BXT_DE_PLL_LOCK) == 0, 1))
 		drm_err(&dev_priv->drm,
 			"timeout waiting for CDCLK PLL unlock\n");
 
@@ -1465,13 +1468,13 @@ static void cnl_cdclk_pll_enable(struct drm_i915_private *dev_priv, int vco)
 	u32 val;
 
 	val = CNL_CDCLK_PLL_RATIO(ratio);
-	I915_WRITE(BXT_DE_PLL_ENABLE, val);
+	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
 
 	val |= BXT_DE_PLL_PLL_ENABLE;
-	I915_WRITE(BXT_DE_PLL_ENABLE, val);
+	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
 
 	/* Timeout 200us */
-	if (wait_for((I915_READ(BXT_DE_PLL_ENABLE) & BXT_DE_PLL_LOCK) != 0, 1))
+	if (wait_for((intel_de_read(dev_priv, BXT_DE_PLL_ENABLE) & BXT_DE_PLL_LOCK) != 0, 1))
 		drm_err(&dev_priv->drm,
 			"timeout waiting for CDCLK PLL lock\n");
 
@@ -1578,7 +1581,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	 */
 	if (IS_GEN9_LP(dev_priv) && cdclk >= 500000)
 		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
-	I915_WRITE(CDCLK_CTL, val);
+	intel_de_write(dev_priv, CDCLK_CTL, val);
 
 	if (pipe != INVALID_PIPE)
 		intel_wait_for_vblank(dev_priv, pipe);
@@ -1634,7 +1637,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	 * set reserved MBZ bits in CDCLK_CTL at least during exiting from S4,
 	 * so sanitize this register.
 	 */
-	cdctl = I915_READ(CDCLK_CTL);
+	cdctl = intel_de_read(dev_priv, CDCLK_CTL);
 	/*
 	 * Let's ignore the pipe field, since BIOS could have configured the
 	 * dividers both synching to an active pipe, or asynchronously
@@ -2471,7 +2474,7 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 	} else if (IS_CANNONLAKE(dev_priv)) {
 		dev_priv->max_cdclk_freq = 528000;
 	} else if (IS_GEN9_BC(dev_priv)) {
-		u32 limit = I915_READ(SKL_DFSM) & SKL_DFSM_CDCLK_LIMIT_MASK;
+		u32 limit = intel_de_read(dev_priv, SKL_DFSM) & SKL_DFSM_CDCLK_LIMIT_MASK;
 		int max_cdclk, vco;
 
 		vco = dev_priv->skl_preferred_vco_freq;
@@ -2503,7 +2506,7 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 		 * How can we know if extra cooling is
 		 * available? PCI ID, VTB, something else?
 		 */
-		if (I915_READ(FUSE_STRAP) & HSW_CDCLK_LIMIT)
+		if (intel_de_read(dev_priv, FUSE_STRAP) & HSW_CDCLK_LIMIT)
 			dev_priv->max_cdclk_freq = 450000;
 		else if (IS_BDW_ULX(dev_priv))
 			dev_priv->max_cdclk_freq = 450000;
@@ -2546,8 +2549,8 @@ void intel_update_cdclk(struct drm_i915_private *dev_priv)
 	 * generate GMBus clock. This will vary with the cdclk freq.
 	 */
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		I915_WRITE(GMBUSFREQ_VLV,
-			   DIV_ROUND_UP(dev_priv->cdclk.hw.cdclk, 1000));
+		intel_de_write(dev_priv, GMBUSFREQ_VLV,
+		               DIV_ROUND_UP(dev_priv->cdclk.hw.cdclk, 1000));
 }
 
 static int cnp_rawclk(struct drm_i915_private *dev_priv)
@@ -2555,7 +2558,7 @@ static int cnp_rawclk(struct drm_i915_private *dev_priv)
 	u32 rawclk;
 	int divider, fraction;
 
-	if (I915_READ(SFUSE_STRAP) & SFUSE_STRAP_RAW_FREQUENCY) {
+	if (intel_de_read(dev_priv, SFUSE_STRAP) & SFUSE_STRAP_RAW_FREQUENCY) {
 		/* 24 MHz */
 		divider = 24000;
 		fraction = 0;
@@ -2575,13 +2578,13 @@ static int cnp_rawclk(struct drm_i915_private *dev_priv)
 			rawclk |= ICP_RAWCLK_NUM(numerator);
 	}
 
-	I915_WRITE(PCH_RAWCLK_FREQ, rawclk);
+	intel_de_write(dev_priv, PCH_RAWCLK_FREQ, rawclk);
 	return divider + fraction;
 }
 
 static int pch_rawclk(struct drm_i915_private *dev_priv)
 {
-	return (I915_READ(PCH_RAWCLK_FREQ) & RAWCLK_FREQ_MASK) * 1000;
+	return (intel_de_read(dev_priv, PCH_RAWCLK_FREQ) & RAWCLK_FREQ_MASK) * 1000;
 }
 
 static int vlv_hrawclk(struct drm_i915_private *dev_priv)
@@ -2596,7 +2599,7 @@ static int g4x_hrawclk(struct drm_i915_private *dev_priv)
 	u32 clkcfg;
 
 	/* hrawclock is 1/4 the FSB frequency */
-	clkcfg = I915_READ(CLKCFG);
+	clkcfg = intel_de_read(dev_priv, CLKCFG);
 	switch (clkcfg & CLKCFG_FSB_MASK) {
 	case CLKCFG_FSB_400:
 		return 100000;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
