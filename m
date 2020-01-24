Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A131485FD
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:25:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8215272A73;
	Fri, 24 Jan 2020 13:25:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0641372A73
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:25:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:42 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="221896402"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:30 +0200
Message-Id: <19a996de5127428fb8348034e80df688d53fe4ea.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 09/33] drm/i915/display_power: use intel_de_*()
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
 .../drm/i915/display/intel_display_power.c    | 294 ++++++++++--------
 1 file changed, 158 insertions(+), 136 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 21561acfa3ac..cc6604ec5304 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -304,11 +304,11 @@ static u32 hsw_power_well_requesters(struct drm_i915_private *dev_priv,
 	u32 req_mask = HSW_PWR_WELL_CTL_REQ(pw_idx);
 	u32 ret;
 
-	ret = I915_READ(regs->bios) & req_mask ? 1 : 0;
-	ret |= I915_READ(regs->driver) & req_mask ? 2 : 0;
+	ret = intel_de_read(dev_priv, regs->bios) & req_mask ? 1 : 0;
+	ret |= intel_de_read(dev_priv, regs->driver) & req_mask ? 2 : 0;
 	if (regs->kvmr.reg)
-		ret |= I915_READ(regs->kvmr) & req_mask ? 4 : 0;
-	ret |= I915_READ(regs->debug) & req_mask ? 8 : 0;
+		ret |= intel_de_read(dev_priv, regs->kvmr) & req_mask ? 4 : 0;
+	ret |= intel_de_read(dev_priv, regs->debug) & req_mask ? 8 : 0;
 
 	return ret;
 }
@@ -330,7 +330,7 @@ static void hsw_wait_for_power_well_disable(struct drm_i915_private *dev_priv,
 	 * Skip the wait in case any of the request bits are set and print a
 	 * diagnostic message.
 	 */
-	wait_for((disabled = !(I915_READ(regs->driver) &
+	wait_for((disabled = !(intel_de_read(dev_priv, regs->driver) &
 			       HSW_PWR_WELL_CTL_STATE(pw_idx))) ||
 		 (reqs = hsw_power_well_requesters(dev_priv, regs, pw_idx)), 1);
 	if (disabled)
@@ -372,17 +372,18 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 			gen9_wait_for_power_well_fuses(dev_priv, SKL_PG0);
 	}
 
-	val = I915_READ(regs->driver);
-	I915_WRITE(regs->driver, val | HSW_PWR_WELL_CTL_REQ(pw_idx));
+	val = intel_de_read(dev_priv, regs->driver);
+	intel_de_write(dev_priv, regs->driver,
+		       val | HSW_PWR_WELL_CTL_REQ(pw_idx));
 	hsw_wait_for_power_well_enable(dev_priv, power_well);
 
 	/* Display WA #1178: cnl */
 	if (IS_CANNONLAKE(dev_priv) &&
 	    pw_idx >= GLK_PW_CTL_IDX_AUX_B &&
 	    pw_idx <= CNL_PW_CTL_IDX_AUX_F) {
-		val = I915_READ(CNL_AUX_ANAOVRD1(pw_idx));
+		val = intel_de_read(dev_priv, CNL_AUX_ANAOVRD1(pw_idx));
 		val |= CNL_AUX_ANAOVRD1_ENABLE | CNL_AUX_ANAOVRD1_LDO_BYPASS;
-		I915_WRITE(CNL_AUX_ANAOVRD1(pw_idx), val);
+		intel_de_write(dev_priv, CNL_AUX_ANAOVRD1(pw_idx), val);
 	}
 
 	if (wait_fuses)
@@ -403,8 +404,9 @@ static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
 	hsw_power_well_pre_disable(dev_priv,
 				   power_well->desc->hsw.irq_pipe_mask);
 
-	val = I915_READ(regs->driver);
-	I915_WRITE(regs->driver, val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
+	val = intel_de_read(dev_priv, regs->driver);
+	intel_de_write(dev_priv, regs->driver,
+		       val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
 	hsw_wait_for_power_well_disable(dev_priv, power_well);
 }
 
@@ -421,12 +423,14 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 
 	WARN_ON(!IS_ICELAKE(dev_priv));
 
-	val = I915_READ(regs->driver);
-	I915_WRITE(regs->driver, val | HSW_PWR_WELL_CTL_REQ(pw_idx));
+	val = intel_de_read(dev_priv, regs->driver);
+	intel_de_write(dev_priv, regs->driver,
+		       val | HSW_PWR_WELL_CTL_REQ(pw_idx));
 
 	if (INTEL_GEN(dev_priv) < 12) {
-		val = I915_READ(ICL_PORT_CL_DW12(phy));
-		I915_WRITE(ICL_PORT_CL_DW12(phy), val | ICL_LANE_ENABLE_AUX);
+		val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
+		intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
+			       val | ICL_LANE_ENABLE_AUX);
 	}
 
 	hsw_wait_for_power_well_enable(dev_priv, power_well);
@@ -434,9 +438,9 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	/* Display WA #1178: icl */
 	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
 	    !intel_bios_is_port_edp(dev_priv, (enum port)phy)) {
-		val = I915_READ(ICL_AUX_ANAOVRD1(pw_idx));
+		val = intel_de_read(dev_priv, ICL_AUX_ANAOVRD1(pw_idx));
 		val |= ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
-		I915_WRITE(ICL_AUX_ANAOVRD1(pw_idx), val);
+		intel_de_write(dev_priv, ICL_AUX_ANAOVRD1(pw_idx), val);
 	}
 }
 
@@ -451,11 +455,13 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
 
 	WARN_ON(!IS_ICELAKE(dev_priv));
 
-	val = I915_READ(ICL_PORT_CL_DW12(phy));
-	I915_WRITE(ICL_PORT_CL_DW12(phy), val & ~ICL_LANE_ENABLE_AUX);
+	val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
+	intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
+		       val & ~ICL_LANE_ENABLE_AUX);
 
-	val = I915_READ(regs->driver);
-	I915_WRITE(regs->driver, val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
+	val = intel_de_read(dev_priv, regs->driver);
+	intel_de_write(dev_priv, regs->driver,
+		       val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
 
 	hsw_wait_for_power_well_disable(dev_priv, power_well);
 }
@@ -552,11 +558,11 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 
 	icl_tc_port_assert_ref_held(dev_priv, power_well);
 
-	val = I915_READ(DP_AUX_CH_CTL(aux_ch));
+	val = intel_de_read(dev_priv, DP_AUX_CH_CTL(aux_ch));
 	val &= ~DP_AUX_CH_CTL_TBT_IO;
 	if (power_well->desc->hsw.is_tc_tbt)
 		val |= DP_AUX_CH_CTL_TBT_IO;
-	I915_WRITE(DP_AUX_CH_CTL(aux_ch), val);
+	intel_de_write(dev_priv, DP_AUX_CH_CTL(aux_ch), val);
 
 	hsw_power_well_enable(dev_priv, power_well);
 
@@ -564,7 +570,8 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 		enum tc_port tc_port;
 
 		tc_port = TGL_AUX_PW_TO_TC_PORT(power_well->desc->hsw.idx);
-		I915_WRITE(HIP_INDEX_REG(tc_port), HIP_INDEX_VAL(tc_port, 0x2));
+		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
+			       HIP_INDEX_VAL(tc_port, 0x2));
 
 		if (intel_de_wait_for_set(dev_priv, DKL_CMN_UC_DW_27(tc_port),
 					  DKL_CMN_UC_DW27_UC_HEALTH, 1))
@@ -596,7 +603,7 @@ static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
 		   HSW_PWR_WELL_CTL_STATE(pw_idx);
 	u32 val;
 
-	val = I915_READ(regs->driver);
+	val = intel_de_read(dev_priv, regs->driver);
 
 	/*
 	 * On GEN9 big core due to a DMC bug the driver's request bits for PW1
@@ -606,18 +613,18 @@ static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
 	 */
 	if (IS_GEN(dev_priv, 9) && !IS_GEN9_LP(dev_priv) &&
 	    (id == SKL_DISP_PW_1 || id == SKL_DISP_PW_MISC_IO))
-		val |= I915_READ(regs->bios);
+		val |= intel_de_read(dev_priv, regs->bios);
 
 	return (val & mask) == mask;
 }
 
 static void assert_can_enable_dc9(struct drm_i915_private *dev_priv)
 {
-	WARN_ONCE((I915_READ(DC_STATE_EN) & DC_STATE_EN_DC9),
+	WARN_ONCE((intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_DC9),
 		  "DC9 already programmed to be enabled.\n");
-	WARN_ONCE(I915_READ(DC_STATE_EN) & DC_STATE_EN_UPTO_DC5,
+	WARN_ONCE(intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5,
 		  "DC5 still not disabled to enable DC9.\n");
-	WARN_ONCE(I915_READ(HSW_PWR_WELL_CTL2) &
+	WARN_ONCE(intel_de_read(dev_priv, HSW_PWR_WELL_CTL2) &
 		  HSW_PWR_WELL_CTL_REQ(SKL_PW_CTL_IDX_PW_2),
 		  "Power well 2 on.\n");
 	WARN_ONCE(intel_irqs_enabled(dev_priv),
@@ -636,7 +643,7 @@ static void assert_can_disable_dc9(struct drm_i915_private *dev_priv)
 {
 	WARN_ONCE(intel_irqs_enabled(dev_priv),
 		  "Interrupts not disabled yet.\n");
-	WARN_ONCE(I915_READ(DC_STATE_EN) & DC_STATE_EN_UPTO_DC5,
+	WARN_ONCE(intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5,
 		  "DC5 still not disabled.\n");
 
 	 /*
@@ -655,7 +662,7 @@ static void gen9_write_dc_state(struct drm_i915_private *dev_priv,
 	int rereads = 0;
 	u32 v;
 
-	I915_WRITE(DC_STATE_EN, state);
+	intel_de_write(dev_priv, DC_STATE_EN, state);
 
 	/* It has been observed that disabling the dc6 state sometimes
 	 * doesn't stick and dmc keeps returning old value. Make sure
@@ -663,10 +670,10 @@ static void gen9_write_dc_state(struct drm_i915_private *dev_priv,
 	 * we are confident that state is exactly what we want.
 	 */
 	do  {
-		v = I915_READ(DC_STATE_EN);
+		v = intel_de_read(dev_priv, DC_STATE_EN);
 
 		if (v != state) {
-			I915_WRITE(DC_STATE_EN, state);
+			intel_de_write(dev_priv, DC_STATE_EN, state);
 			rewrites++;
 			rereads = 0;
 		} else if (rereads++ > 5) {
@@ -708,7 +715,7 @@ static void gen9_sanitize_dc_state(struct drm_i915_private *dev_priv)
 {
 	u32 val;
 
-	val = I915_READ(DC_STATE_EN) & gen9_dc_mask(dev_priv);
+	val = intel_de_read(dev_priv, DC_STATE_EN) & gen9_dc_mask(dev_priv);
 
 	DRM_DEBUG_KMS("Resetting DC state tracking from %02x to %02x\n",
 		      dev_priv->csr.dc_state, val);
@@ -746,7 +753,7 @@ static void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
 	if (WARN_ON_ONCE(state & ~dev_priv->csr.allowed_dc_mask))
 		state &= dev_priv->csr.allowed_dc_mask;
 
-	val = I915_READ(DC_STATE_EN);
+	val = intel_de_read(dev_priv, DC_STATE_EN);
 	mask = gen9_dc_mask(dev_priv);
 	DRM_DEBUG_KMS("Setting DC state from %02x to %02x\n",
 		      val & mask, state);
@@ -800,9 +807,9 @@ static void tgl_disable_dc3co(struct drm_i915_private *dev_priv)
 	u32 val;
 
 	DRM_DEBUG_KMS("Disabling DC3CO\n");
-	val = I915_READ(DC_STATE_EN);
+	val = intel_de_read(dev_priv, DC_STATE_EN);
 	val &= ~DC_STATE_DC3CO_STATUS;
-	I915_WRITE(DC_STATE_EN, val);
+	intel_de_write(dev_priv, DC_STATE_EN, val);
 	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
 	/*
 	 * Delay of 200us DC3CO Exit time B.Spec 49196
@@ -838,10 +845,11 @@ static void bxt_disable_dc9(struct drm_i915_private *dev_priv)
 
 static void assert_csr_loaded(struct drm_i915_private *dev_priv)
 {
-	WARN_ONCE(!I915_READ(CSR_PROGRAM(0)),
+	WARN_ONCE(!intel_de_read(dev_priv, CSR_PROGRAM(0)),
 		  "CSR program storage start is NULL\n");
-	WARN_ONCE(!I915_READ(CSR_SSP_BASE), "CSR SSP Base Not fine\n");
-	WARN_ONCE(!I915_READ(CSR_HTP_SKL), "CSR HTP Not fine\n");
+	WARN_ONCE(!intel_de_read(dev_priv, CSR_SSP_BASE),
+		  "CSR SSP Base Not fine\n");
+	WARN_ONCE(!intel_de_read(dev_priv, CSR_HTP_SKL), "CSR HTP Not fine\n");
 }
 
 static struct i915_power_well *
@@ -917,7 +925,7 @@ static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
 
 	WARN_ONCE(pg2_enabled, "PG2 not disabled to enable DC5.\n");
 
-	WARN_ONCE((I915_READ(DC_STATE_EN) & DC_STATE_EN_UPTO_DC5),
+	WARN_ONCE((intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5),
 		  "DC5 already programmed to be enabled.\n");
 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
 
@@ -932,17 +940,17 @@ static void gen9_enable_dc5(struct drm_i915_private *dev_priv)
 
 	/* Wa Display #1183: skl,kbl,cfl */
 	if (IS_GEN9_BC(dev_priv))
-		I915_WRITE(GEN8_CHICKEN_DCPR_1, I915_READ(GEN8_CHICKEN_DCPR_1) |
-			   SKL_SELECT_ALTERNATE_DC_EXIT);
+		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
+			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
 
 	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC5);
 }
 
 static void assert_can_enable_dc6(struct drm_i915_private *dev_priv)
 {
-	WARN_ONCE(I915_READ(UTIL_PIN_CTL) & UTIL_PIN_ENABLE,
+	WARN_ONCE(intel_de_read(dev_priv, UTIL_PIN_CTL) & UTIL_PIN_ENABLE,
 		  "Backlight is not disabled.\n");
-	WARN_ONCE((I915_READ(DC_STATE_EN) & DC_STATE_EN_UPTO_DC6),
+	WARN_ONCE((intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_UPTO_DC6),
 		  "DC6 already programmed to be enabled.\n");
 
 	assert_csr_loaded(dev_priv);
@@ -956,8 +964,8 @@ static void skl_enable_dc6(struct drm_i915_private *dev_priv)
 
 	/* Wa Display #1183: skl,kbl,cfl */
 	if (IS_GEN9_BC(dev_priv))
-		I915_WRITE(GEN8_CHICKEN_DCPR_1, I915_READ(GEN8_CHICKEN_DCPR_1) |
-			   SKL_SELECT_ALTERNATE_DC_EXIT);
+		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
+			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
 
 	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
 }
@@ -968,15 +976,15 @@ static void hsw_power_well_sync_hw(struct drm_i915_private *dev_priv,
 	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx);
-	u32 bios_req = I915_READ(regs->bios);
+	u32 bios_req = intel_de_read(dev_priv, regs->bios);
 
 	/* Take over the request bit if set by BIOS. */
 	if (bios_req & mask) {
-		u32 drv_req = I915_READ(regs->driver);
+		u32 drv_req = intel_de_read(dev_priv, regs->driver);
 
 		if (!(drv_req & mask))
-			I915_WRITE(regs->driver, drv_req | mask);
-		I915_WRITE(regs->bios, bios_req & ~mask);
+			intel_de_write(dev_priv, regs->driver, drv_req | mask);
+		intel_de_write(dev_priv, regs->bios, bios_req & ~mask);
 	}
 }
 
@@ -1022,13 +1030,13 @@ static void bxt_verify_ddi_phy_power_wells(struct drm_i915_private *dev_priv)
 static bool gen9_dc_off_power_well_enabled(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well)
 {
-	return ((I915_READ(DC_STATE_EN) & DC_STATE_EN_DC3CO) == 0 &&
-		(I915_READ(DC_STATE_EN) & DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
+	return ((intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_DC3CO) == 0 &&
+		(intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
 }
 
 static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
 {
-	u32 tmp = I915_READ(DBUF_CTL);
+	u32 tmp = intel_de_read(dev_priv, DBUF_CTL);
 
 	WARN((tmp & (DBUF_POWER_STATE | DBUF_POWER_REQUEST)) !=
 	     (DBUF_POWER_STATE | DBUF_POWER_REQUEST),
@@ -1108,9 +1116,9 @@ static bool i9xx_always_on_power_well_enabled(struct drm_i915_private *dev_priv,
 static void i830_pipes_power_well_enable(struct drm_i915_private *dev_priv,
 					 struct i915_power_well *power_well)
 {
-	if ((I915_READ(PIPECONF(PIPE_A)) & PIPECONF_ENABLE) == 0)
+	if ((intel_de_read(dev_priv, PIPECONF(PIPE_A)) & PIPECONF_ENABLE) == 0)
 		i830_enable_pipe(dev_priv, PIPE_A);
-	if ((I915_READ(PIPECONF(PIPE_B)) & PIPECONF_ENABLE) == 0)
+	if ((intel_de_read(dev_priv, PIPECONF(PIPE_B)) & PIPECONF_ENABLE) == 0)
 		i830_enable_pipe(dev_priv, PIPE_B);
 }
 
@@ -1124,8 +1132,8 @@ static void i830_pipes_power_well_disable(struct drm_i915_private *dev_priv,
 static bool i830_pipes_power_well_enabled(struct drm_i915_private *dev_priv,
 					  struct i915_power_well *power_well)
 {
-	return I915_READ(PIPECONF(PIPE_A)) & PIPECONF_ENABLE &&
-		I915_READ(PIPECONF(PIPE_B)) & PIPECONF_ENABLE;
+	return intel_de_read(dev_priv, PIPECONF(PIPE_A)) & PIPECONF_ENABLE &&
+		intel_de_read(dev_priv, PIPECONF(PIPE_B)) & PIPECONF_ENABLE;
 }
 
 static void i830_pipes_power_well_sync_hw(struct drm_i915_private *dev_priv,
@@ -1231,21 +1239,22 @@ static void vlv_init_display_clock_gating(struct drm_i915_private *dev_priv)
 	 * (and never recovering) in this case. intel_dsi_post_disable() will
 	 * clear it when we turn off the display.
 	 */
-	val = I915_READ(DSPCLK_GATE_D);
+	val = intel_de_read(dev_priv, DSPCLK_GATE_D);
 	val &= DPOUNIT_CLOCK_GATE_DISABLE;
 	val |= VRHUNIT_CLOCK_GATE_DISABLE;
-	I915_WRITE(DSPCLK_GATE_D, val);
+	intel_de_write(dev_priv, DSPCLK_GATE_D, val);
 
 	/*
 	 * Disable trickle feed and enable pnd deadline calculation
 	 */
-	I915_WRITE(MI_ARB_VLV, MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE);
-	I915_WRITE(CBR1_VLV, 0);
+	intel_de_write(dev_priv, MI_ARB_VLV,
+		       MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE);
+	intel_de_write(dev_priv, CBR1_VLV, 0);
 
 	WARN_ON(dev_priv->rawclk_freq == 0);
 
-	I915_WRITE(RAWCLK_FREQ_VLV,
-		   DIV_ROUND_CLOSEST(dev_priv->rawclk_freq, 1000));
+	intel_de_write(dev_priv, RAWCLK_FREQ_VLV,
+		       DIV_ROUND_CLOSEST(dev_priv->rawclk_freq, 1000));
 }
 
 static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
@@ -1262,13 +1271,13 @@ static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
 	 * CHV DPLL B/C have some issues if VGA mode is enabled.
 	 */
 	for_each_pipe(dev_priv, pipe) {
-		u32 val = I915_READ(DPLL(pipe));
+		u32 val = intel_de_read(dev_priv, DPLL(pipe));
 
 		val |= DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
 		if (pipe != PIPE_A)
 			val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-		I915_WRITE(DPLL(pipe), val);
+		intel_de_write(dev_priv, DPLL(pipe), val);
 	}
 
 	vlv_init_display_clock_gating(dev_priv);
@@ -1348,7 +1357,8 @@ static void vlv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 	 * both PLLs disabled, or we risk losing DPIO and PLL
 	 * synchronization.
 	 */
-	I915_WRITE(DPIO_CTL, I915_READ(DPIO_CTL) | DPIO_CMNRST);
+	intel_de_write(dev_priv, DPIO_CTL,
+		       intel_de_read(dev_priv, DPIO_CTL) | DPIO_CMNRST);
 }
 
 static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
@@ -1360,7 +1370,8 @@ static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 		assert_pll_disabled(dev_priv, pipe);
 
 	/* Assert common reset */
-	I915_WRITE(DPIO_CTL, I915_READ(DPIO_CTL) & ~DPIO_CMNRST);
+	intel_de_write(dev_priv, DPIO_CTL,
+		       intel_de_read(dev_priv, DPIO_CTL) & ~DPIO_CMNRST);
 
 	vlv_set_power_well(dev_priv, power_well, false);
 }
@@ -1422,7 +1433,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 		 */
 		if (BITS_SET(phy_control,
 			     PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0, DPIO_CH1)) &&
-		    (I915_READ(DPLL(PIPE_B)) & DPLL_VCO_ENABLE) == 0)
+		    (intel_de_read(dev_priv, DPLL(PIPE_B)) & DPLL_VCO_ENABLE) == 0)
 			phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH1);
 
 		if (BITS_SET(phy_control,
@@ -1468,8 +1479,8 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 	if (intel_de_wait_for_register(dev_priv, DISPLAY_PHY_STATUS,
 				       phy_status_mask, phy_status, 10))
 		DRM_ERROR("Unexpected PHY_STATUS 0x%08x, expected 0x%08x (PHY_CONTROL=0x%08x)\n",
-			  I915_READ(DISPLAY_PHY_STATUS) & phy_status_mask,
-			   phy_status, dev_priv->chv_phy_control);
+			  intel_de_read(dev_priv, DISPLAY_PHY_STATUS) & phy_status_mask,
+			  phy_status, dev_priv->chv_phy_control);
 }
 
 #undef BITS_SET
@@ -1527,7 +1538,8 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 	vlv_dpio_put(dev_priv);
 
 	dev_priv->chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(phy);
-	I915_WRITE(DISPLAY_PHY_CONTROL, dev_priv->chv_phy_control);
+	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
+		       dev_priv->chv_phy_control);
 
 	DRM_DEBUG_KMS("Enabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
 		      phy, dev_priv->chv_phy_control);
@@ -1553,7 +1565,8 @@ static void chv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 	}
 
 	dev_priv->chv_phy_control &= ~PHY_COM_LANE_RESET_DEASSERT(phy);
-	I915_WRITE(DISPLAY_PHY_CONTROL, dev_priv->chv_phy_control);
+	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
+		       dev_priv->chv_phy_control);
 
 	vlv_set_power_well(dev_priv, power_well, false);
 
@@ -1646,7 +1659,8 @@ bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 	else
 		dev_priv->chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
 
-	I915_WRITE(DISPLAY_PHY_CONTROL, dev_priv->chv_phy_control);
+	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
+		       dev_priv->chv_phy_control);
 
 	DRM_DEBUG_KMS("Power gating DPIO PHY%d CH%d (DPIO_PHY_CONTROL=0x%08x)\n",
 		      phy, ch, dev_priv->chv_phy_control);
@@ -1677,7 +1691,8 @@ void chv_phy_powergate_lanes(struct intel_encoder *encoder,
 	else
 		dev_priv->chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
 
-	I915_WRITE(DISPLAY_PHY_CONTROL, dev_priv->chv_phy_control);
+	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
+		       dev_priv->chv_phy_control);
 
 	DRM_DEBUG_KMS("Power gating DPIO PHY%d CH%d lanes 0x%x (PHY_CONTROL=0x%08x)\n",
 		      phy, ch, mask, dev_priv->chv_phy_control);
@@ -4371,13 +4386,13 @@ bool intel_dbuf_slice_set(struct drm_i915_private *dev_priv,
 {
 	u32 val, status;
 
-	val = I915_READ(reg);
+	val = intel_de_read(dev_priv, reg);
 	val = enable ? (val | DBUF_POWER_REQUEST) : (val & ~DBUF_POWER_REQUEST);
-	I915_WRITE(reg, val);
-	POSTING_READ(reg);
+	intel_de_write(dev_priv, reg, val);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(10);
 
-	status = I915_READ(reg) & DBUF_POWER_STATE;
+	status = intel_de_read(dev_priv, reg) & DBUF_POWER_STATE;
 	if ((enable && !status) || (!enable && status)) {
 		DRM_ERROR("DBus power %s timeout!\n",
 			  enable ? "enable" : "disable");
@@ -4428,14 +4443,16 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
 
 static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
 {
-	I915_WRITE(DBUF_CTL_S1, I915_READ(DBUF_CTL_S1) | DBUF_POWER_REQUEST);
-	I915_WRITE(DBUF_CTL_S2, I915_READ(DBUF_CTL_S2) | DBUF_POWER_REQUEST);
-	POSTING_READ(DBUF_CTL_S2);
+	intel_de_write(dev_priv, DBUF_CTL_S1,
+		       intel_de_read(dev_priv, DBUF_CTL_S1) | DBUF_POWER_REQUEST);
+	intel_de_write(dev_priv, DBUF_CTL_S2,
+		       intel_de_read(dev_priv, DBUF_CTL_S2) | DBUF_POWER_REQUEST);
+	intel_de_posting_read(dev_priv, DBUF_CTL_S2);
 
 	udelay(10);
 
-	if (!(I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE) ||
-	    !(I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE))
+	if (!(intel_de_read(dev_priv, DBUF_CTL_S1) & DBUF_POWER_STATE) ||
+	    !(intel_de_read(dev_priv, DBUF_CTL_S2) & DBUF_POWER_STATE))
 		DRM_ERROR("DBuf power enable timeout\n");
 	else
 		/*
@@ -4447,14 +4464,16 @@ static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
 
 static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
 {
-	I915_WRITE(DBUF_CTL_S1, I915_READ(DBUF_CTL_S1) & ~DBUF_POWER_REQUEST);
-	I915_WRITE(DBUF_CTL_S2, I915_READ(DBUF_CTL_S2) & ~DBUF_POWER_REQUEST);
-	POSTING_READ(DBUF_CTL_S2);
+	intel_de_write(dev_priv, DBUF_CTL_S1,
+		       intel_de_read(dev_priv, DBUF_CTL_S1) & ~DBUF_POWER_REQUEST);
+	intel_de_write(dev_priv, DBUF_CTL_S2,
+		       intel_de_read(dev_priv, DBUF_CTL_S2) & ~DBUF_POWER_REQUEST);
+	intel_de_posting_read(dev_priv, DBUF_CTL_S2);
 
 	udelay(10);
 
-	if ((I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE) ||
-	    (I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE))
+	if ((intel_de_read(dev_priv, DBUF_CTL_S1) & DBUF_POWER_STATE) ||
+	    (intel_de_read(dev_priv, DBUF_CTL_S2) & DBUF_POWER_STATE))
 		DRM_ERROR("DBuf power disable timeout!\n");
 	else
 		/*
@@ -4473,12 +4492,12 @@ static void icl_mbus_init(struct drm_i915_private *dev_priv)
 	      MBUS_ABOX_B_CREDIT(1) |
 	      MBUS_ABOX_BW_CREDIT(1);
 
-	I915_WRITE(MBUS_ABOX_CTL, val);
+	intel_de_write(dev_priv, MBUS_ABOX_CTL, val);
 }
 
 static void hsw_assert_cdclk(struct drm_i915_private *dev_priv)
 {
-	u32 val = I915_READ(LCPLL_CTL);
+	u32 val = intel_de_read(dev_priv, LCPLL_CTL);
 
 	/*
 	 * The LCPLL register should be turned on by the BIOS. For now
@@ -4505,26 +4524,26 @@ static void assert_can_disable_lcpll(struct drm_i915_private *dev_priv)
 		I915_STATE_WARN(crtc->active, "CRTC for pipe %c enabled\n",
 				pipe_name(crtc->pipe));
 
-	I915_STATE_WARN(I915_READ(HSW_PWR_WELL_CTL2),
+	I915_STATE_WARN(intel_de_read(dev_priv, HSW_PWR_WELL_CTL2),
 			"Display power well on\n");
-	I915_STATE_WARN(I915_READ(SPLL_CTL) & SPLL_PLL_ENABLE,
+	I915_STATE_WARN(intel_de_read(dev_priv, SPLL_CTL) & SPLL_PLL_ENABLE,
 			"SPLL enabled\n");
-	I915_STATE_WARN(I915_READ(WRPLL_CTL(0)) & WRPLL_PLL_ENABLE,
+	I915_STATE_WARN(intel_de_read(dev_priv, WRPLL_CTL(0)) & WRPLL_PLL_ENABLE,
 			"WRPLL1 enabled\n");
-	I915_STATE_WARN(I915_READ(WRPLL_CTL(1)) & WRPLL_PLL_ENABLE,
+	I915_STATE_WARN(intel_de_read(dev_priv, WRPLL_CTL(1)) & WRPLL_PLL_ENABLE,
 			"WRPLL2 enabled\n");
-	I915_STATE_WARN(I915_READ(PP_STATUS(0)) & PP_ON,
+	I915_STATE_WARN(intel_de_read(dev_priv, PP_STATUS(0)) & PP_ON,
 			"Panel power on\n");
-	I915_STATE_WARN(I915_READ(BLC_PWM_CPU_CTL2) & BLM_PWM_ENABLE,
+	I915_STATE_WARN(intel_de_read(dev_priv, BLC_PWM_CPU_CTL2) & BLM_PWM_ENABLE,
 			"CPU PWM1 enabled\n");
 	if (IS_HASWELL(dev_priv))
-		I915_STATE_WARN(I915_READ(HSW_BLC_PWM2_CTL) & BLM_PWM_ENABLE,
+		I915_STATE_WARN(intel_de_read(dev_priv, HSW_BLC_PWM2_CTL) & BLM_PWM_ENABLE,
 				"CPU PWM2 enabled\n");
-	I915_STATE_WARN(I915_READ(BLC_PWM_PCH_CTL1) & BLM_PCH_PWM_ENABLE,
+	I915_STATE_WARN(intel_de_read(dev_priv, BLC_PWM_PCH_CTL1) & BLM_PCH_PWM_ENABLE,
 			"PCH PWM1 enabled\n");
-	I915_STATE_WARN(I915_READ(UTIL_PIN_CTL) & UTIL_PIN_ENABLE,
+	I915_STATE_WARN(intel_de_read(dev_priv, UTIL_PIN_CTL) & UTIL_PIN_ENABLE,
 			"Utility pin enabled\n");
-	I915_STATE_WARN(I915_READ(PCH_GTC_CTL) & PCH_GTC_ENABLE,
+	I915_STATE_WARN(intel_de_read(dev_priv, PCH_GTC_CTL) & PCH_GTC_ENABLE,
 			"PCH GTC enabled\n");
 
 	/*
@@ -4539,9 +4558,9 @@ static void assert_can_disable_lcpll(struct drm_i915_private *dev_priv)
 static u32 hsw_read_dcomp(struct drm_i915_private *dev_priv)
 {
 	if (IS_HASWELL(dev_priv))
-		return I915_READ(D_COMP_HSW);
+		return intel_de_read(dev_priv, D_COMP_HSW);
 	else
-		return I915_READ(D_COMP_BDW);
+		return intel_de_read(dev_priv, D_COMP_BDW);
 }
 
 static void hsw_write_dcomp(struct drm_i915_private *dev_priv, u32 val)
@@ -4551,8 +4570,8 @@ static void hsw_write_dcomp(struct drm_i915_private *dev_priv, u32 val)
 					    GEN6_PCODE_WRITE_D_COMP, val))
 			DRM_DEBUG_KMS("Failed to write to D_COMP\n");
 	} else {
-		I915_WRITE(D_COMP_BDW, val);
-		POSTING_READ(D_COMP_BDW);
+		intel_de_write(dev_priv, D_COMP_BDW, val);
+		intel_de_posting_read(dev_priv, D_COMP_BDW);
 	}
 }
 
@@ -4571,22 +4590,22 @@ static void hsw_disable_lcpll(struct drm_i915_private *dev_priv,
 
 	assert_can_disable_lcpll(dev_priv);
 
-	val = I915_READ(LCPLL_CTL);
+	val = intel_de_read(dev_priv, LCPLL_CTL);
 
 	if (switch_to_fclk) {
 		val |= LCPLL_CD_SOURCE_FCLK;
-		I915_WRITE(LCPLL_CTL, val);
+		intel_de_write(dev_priv, LCPLL_CTL, val);
 
-		if (wait_for_us(I915_READ(LCPLL_CTL) &
+		if (wait_for_us(intel_de_read(dev_priv, LCPLL_CTL) &
 				LCPLL_CD_SOURCE_FCLK_DONE, 1))
 			DRM_ERROR("Switching to FCLK failed\n");
 
-		val = I915_READ(LCPLL_CTL);
+		val = intel_de_read(dev_priv, LCPLL_CTL);
 	}
 
 	val |= LCPLL_PLL_DISABLE;
-	I915_WRITE(LCPLL_CTL, val);
-	POSTING_READ(LCPLL_CTL);
+	intel_de_write(dev_priv, LCPLL_CTL, val);
+	intel_de_posting_read(dev_priv, LCPLL_CTL);
 
 	if (intel_de_wait_for_clear(dev_priv, LCPLL_CTL, LCPLL_PLL_LOCK, 1))
 		DRM_ERROR("LCPLL still locked\n");
@@ -4601,10 +4620,10 @@ static void hsw_disable_lcpll(struct drm_i915_private *dev_priv,
 		DRM_ERROR("D_COMP RCOMP still in progress\n");
 
 	if (allow_power_down) {
-		val = I915_READ(LCPLL_CTL);
+		val = intel_de_read(dev_priv, LCPLL_CTL);
 		val |= LCPLL_POWER_DOWN_ALLOW;
-		I915_WRITE(LCPLL_CTL, val);
-		POSTING_READ(LCPLL_CTL);
+		intel_de_write(dev_priv, LCPLL_CTL, val);
+		intel_de_posting_read(dev_priv, LCPLL_CTL);
 	}
 }
 
@@ -4616,7 +4635,7 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
 {
 	u32 val;
 
-	val = I915_READ(LCPLL_CTL);
+	val = intel_de_read(dev_priv, LCPLL_CTL);
 
 	if ((val & (LCPLL_PLL_LOCK | LCPLL_PLL_DISABLE | LCPLL_CD_SOURCE_FCLK |
 		    LCPLL_POWER_DOWN_ALLOW)) == LCPLL_PLL_LOCK)
@@ -4630,8 +4649,8 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
 
 	if (val & LCPLL_POWER_DOWN_ALLOW) {
 		val &= ~LCPLL_POWER_DOWN_ALLOW;
-		I915_WRITE(LCPLL_CTL, val);
-		POSTING_READ(LCPLL_CTL);
+		intel_de_write(dev_priv, LCPLL_CTL, val);
+		intel_de_posting_read(dev_priv, LCPLL_CTL);
 	}
 
 	val = hsw_read_dcomp(dev_priv);
@@ -4639,19 +4658,19 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
 	val &= ~D_COMP_COMP_DISABLE;
 	hsw_write_dcomp(dev_priv, val);
 
-	val = I915_READ(LCPLL_CTL);
+	val = intel_de_read(dev_priv, LCPLL_CTL);
 	val &= ~LCPLL_PLL_DISABLE;
-	I915_WRITE(LCPLL_CTL, val);
+	intel_de_write(dev_priv, LCPLL_CTL, val);
 
 	if (intel_de_wait_for_set(dev_priv, LCPLL_CTL, LCPLL_PLL_LOCK, 5))
 		DRM_ERROR("LCPLL not locked yet\n");
 
 	if (val & LCPLL_CD_SOURCE_FCLK) {
-		val = I915_READ(LCPLL_CTL);
+		val = intel_de_read(dev_priv, LCPLL_CTL);
 		val &= ~LCPLL_CD_SOURCE_FCLK;
-		I915_WRITE(LCPLL_CTL, val);
+		intel_de_write(dev_priv, LCPLL_CTL, val);
 
-		if (wait_for_us((I915_READ(LCPLL_CTL) &
+		if (wait_for_us((intel_de_read(dev_priv, LCPLL_CTL) &
 				 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
 			DRM_ERROR("Switching back to LCPLL failed\n");
 	}
@@ -4692,9 +4711,9 @@ static void hsw_enable_pc8(struct drm_i915_private *dev_priv)
 	DRM_DEBUG_KMS("Enabling package C8+\n");
 
 	if (HAS_PCH_LPT_LP(dev_priv)) {
-		val = I915_READ(SOUTH_DSPCLK_GATE_D);
+		val = intel_de_read(dev_priv, SOUTH_DSPCLK_GATE_D);
 		val &= ~PCH_LP_PARTITION_LEVEL_DISABLE;
-		I915_WRITE(SOUTH_DSPCLK_GATE_D, val);
+		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D, val);
 	}
 
 	lpt_disable_clkout_dp(dev_priv);
@@ -4711,9 +4730,9 @@ static void hsw_disable_pc8(struct drm_i915_private *dev_priv)
 	intel_init_pch_refclk(dev_priv);
 
 	if (HAS_PCH_LPT_LP(dev_priv)) {
-		val = I915_READ(SOUTH_DSPCLK_GATE_D);
+		val = intel_de_read(dev_priv, SOUTH_DSPCLK_GATE_D);
 		val |= PCH_LP_PARTITION_LEVEL_DISABLE;
-		I915_WRITE(SOUTH_DSPCLK_GATE_D, val);
+		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D, val);
 	}
 }
 
@@ -4731,14 +4750,14 @@ static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
 		reset_bits = RESET_PCH_HANDSHAKE_ENABLE;
 	}
 
-	val = I915_READ(reg);
+	val = intel_de_read(dev_priv, reg);
 
 	if (enable)
 		val |= reset_bits;
 	else
 		val &= ~reset_bits;
 
-	I915_WRITE(reg, val);
+	intel_de_write(dev_priv, reg, val);
 }
 
 static void skl_display_core_init(struct drm_i915_private *dev_priv,
@@ -4965,11 +4984,13 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 
 	if (table[i].page_mask == 0) {
 		DRM_DEBUG_DRIVER("Unknown memory configuration; disabling address buddy logic.\n");
-		I915_WRITE(BW_BUDDY1_CTL, BW_BUDDY_DISABLE);
-		I915_WRITE(BW_BUDDY2_CTL, BW_BUDDY_DISABLE);
+		intel_de_write(dev_priv, BW_BUDDY1_CTL, BW_BUDDY_DISABLE);
+		intel_de_write(dev_priv, BW_BUDDY2_CTL, BW_BUDDY_DISABLE);
 	} else {
-		I915_WRITE(BW_BUDDY1_PAGE_MASK, table[i].page_mask);
-		I915_WRITE(BW_BUDDY2_PAGE_MASK, table[i].page_mask);
+		intel_de_write(dev_priv, BW_BUDDY1_PAGE_MASK,
+			       table[i].page_mask);
+		intel_de_write(dev_priv, BW_BUDDY2_PAGE_MASK,
+			       table[i].page_mask);
 	}
 }
 
@@ -5071,7 +5092,7 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 	 * current lane status.
 	 */
 	if (cmn_bc->desc->ops->is_enabled(dev_priv, cmn_bc)) {
-		u32 status = I915_READ(DPLL(PIPE_A));
+		u32 status = intel_de_read(dev_priv, DPLL(PIPE_A));
 		unsigned int mask;
 
 		mask = status & DPLL_PORTB_READY_MASK;
@@ -5102,7 +5123,7 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 	}
 
 	if (cmn_d->desc->ops->is_enabled(dev_priv, cmn_d)) {
-		u32 status = I915_READ(DPIO_PHY_STATUS);
+		u32 status = intel_de_read(dev_priv, DPIO_PHY_STATUS);
 		unsigned int mask;
 
 		mask = status & DPLL_PORTD_READY_MASK;
@@ -5123,7 +5144,8 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 		dev_priv->chv_phy_assert[DPIO_PHY1] = true;
 	}
 
-	I915_WRITE(DISPLAY_PHY_CONTROL, dev_priv->chv_phy_control);
+	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
+		       dev_priv->chv_phy_control);
 
 	DRM_DEBUG_KMS("Initial PHY_CONTROL=0x%08x\n",
 		      dev_priv->chv_phy_control);
@@ -5139,7 +5161,7 @@ static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
 	/* If the display might be already active skip this */
 	if (cmn->desc->ops->is_enabled(dev_priv, cmn) &&
 	    disp2d->desc->ops->is_enabled(dev_priv, disp2d) &&
-	    I915_READ(DPIO_CTL) & DPIO_CMNRST)
+	    intel_de_read(dev_priv, DPIO_CTL) & DPIO_CMNRST)
 		return;
 
 	DRM_DEBUG_KMS("toggling display PHY side reset\n");
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
