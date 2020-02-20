Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 213EE1663DE
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 18:06:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DA776EDF5;
	Thu, 20 Feb 2020 17:06:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B16CB6EDEF;
 Thu, 20 Feb 2020 17:06:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 09:06:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,465,1574150400"; d="scan'208";a="349202542"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by fmsmga001.fm.intel.com with ESMTP; 20 Feb 2020 09:06:10 -0800
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Chris Wilson <chris@chris-wilson.co.uk>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Thu, 20 Feb 2020 22:25:03 +0530
Message-Id: <20200220165507.16823-5-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200220165507.16823-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200220165507.16823-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 4/8] drm/i915/display/power: Make WARN* drm
 specific where drm_priv ptr is available
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

drm specific WARN* calls include device information in the
backtrace, so we know what device the warnings originate from.

Covert all the calls of WARN* with device specific drm_WARN*
variants in functions where drm_i915_private struct pointer is
readily available.

The conversion was done automatically with below coccinelle semantic
patch. checkpatch errors/warnings are fixed manually.

@rule1@
identifier func, T;
@@
func(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-WARN(
+drm_WARN(&T->drm,
...)
|
-WARN_ON(
+drm_WARN_ON(&T->drm,
...)
|
-WARN_ONCE(
+drm_WARN_ONCE(&T->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&T->drm,
...)
)
...+>
}

@rule2@
identifier func, T;
@@
func(struct drm_i915_private *T,...) {
<+...
(
-WARN(
+drm_WARN(&T->drm,
...)
|
-WARN_ON(
+drm_WARN_ON(&T->drm,
...)
|
-WARN_ONCE(
+drm_WARN_ONCE(&T->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&T->drm,
...)
)
...+>
}

Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 181 ++++++++++--------
 1 file changed, 105 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 722399fc2ace..59b762137a54 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -183,8 +183,9 @@ static void intel_power_well_get(struct drm_i915_private *dev_priv,
 static void intel_power_well_put(struct drm_i915_private *dev_priv,
 				 struct i915_power_well *power_well)
 {
-	WARN(!power_well->count, "Use count on power well %s is already zero",
-	     power_well->desc->name);
+	drm_WARN(&dev_priv->drm, !power_well->count,
+		 "Use count on power well %s is already zero",
+		 power_well->desc->name);
 
 	if (!--power_well->count)
 		intel_power_well_disable(dev_priv, power_well);
@@ -294,7 +295,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 			    power_well->desc->name);
 
 		/* An AUX timeout is expected if the TBT DP tunnel is down. */
-		WARN_ON(!power_well->desc->hsw.is_tc_tbt);
+		drm_WARN_ON(&dev_priv->drm, !power_well->desc->hsw.is_tc_tbt);
 	}
 }
 
@@ -347,8 +348,9 @@ static void gen9_wait_for_power_well_fuses(struct drm_i915_private *dev_priv,
 					   enum skl_power_gate pg)
 {
 	/* Timeout 5us for PG#0, for other PGs 1us */
-	WARN_ON(intel_de_wait_for_set(dev_priv, SKL_FUSE_STATUS,
-				      SKL_FUSE_PG_DIST_STATUS(pg), 1));
+	drm_WARN_ON(&dev_priv->drm,
+		    intel_de_wait_for_set(dev_priv, SKL_FUSE_STATUS,
+					  SKL_FUSE_PG_DIST_STATUS(pg), 1));
 }
 
 static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
@@ -423,7 +425,7 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
 	u32 val;
 
-	WARN_ON(!IS_ICELAKE(dev_priv));
+	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
 
 	val = intel_de_read(dev_priv, regs->driver);
 	intel_de_write(dev_priv, regs->driver,
@@ -455,7 +457,7 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
 	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
 	u32 val;
 
-	WARN_ON(!IS_ICELAKE(dev_priv));
+	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
 
 	val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
 	intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
@@ -493,7 +495,7 @@ static int power_well_async_ref_count(struct drm_i915_private *dev_priv,
 	int refs = hweight64(power_well->desc->domains &
 			     async_put_domains_mask(&dev_priv->power_domains));
 
-	WARN_ON(refs > power_well->count);
+	drm_WARN_ON(&dev_priv->drm, refs > power_well->count);
 
 	return refs;
 }
@@ -523,7 +525,7 @@ static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_priv,
 			continue;
 
 		dig_port = enc_to_dig_port(encoder);
-		if (WARN_ON(!dig_port))
+		if (drm_WARN_ON(&dev_priv->drm, !dig_port))
 			continue;
 
 		if (dig_port->aux_ch != aux_ch) {
@@ -534,10 +536,10 @@ static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_priv,
 		break;
 	}
 
-	if (WARN_ON(!dig_port))
+	if (drm_WARN_ON(&dev_priv->drm, !dig_port))
 		return;
 
-	WARN_ON(!intel_tc_port_ref_held(dig_port));
+	drm_WARN_ON(&dev_priv->drm, !intel_tc_port_ref_held(dig_port));
 }
 
 #else
@@ -623,15 +625,19 @@ static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
 
 static void assert_can_enable_dc9(struct drm_i915_private *dev_priv)
 {
-	WARN_ONCE((intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_DC9),
-		  "DC9 already programmed to be enabled.\n");
-	WARN_ONCE(intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5,
-		  "DC5 still not disabled to enable DC9.\n");
-	WARN_ONCE(intel_de_read(dev_priv, HSW_PWR_WELL_CTL2) &
-		  HSW_PWR_WELL_CTL_REQ(SKL_PW_CTL_IDX_PW_2),
-		  "Power well 2 on.\n");
-	WARN_ONCE(intel_irqs_enabled(dev_priv),
-		  "Interrupts not disabled yet.\n");
+	drm_WARN_ONCE(&dev_priv->drm,
+		      (intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_DC9),
+		      "DC9 already programmed to be enabled.\n");
+	drm_WARN_ONCE(&dev_priv->drm,
+		      intel_de_read(dev_priv, DC_STATE_EN) &
+		      DC_STATE_EN_UPTO_DC5,
+		      "DC5 still not disabled to enable DC9.\n");
+	drm_WARN_ONCE(&dev_priv->drm,
+		      intel_de_read(dev_priv, HSW_PWR_WELL_CTL2) &
+		      HSW_PWR_WELL_CTL_REQ(SKL_PW_CTL_IDX_PW_2),
+		      "Power well 2 on.\n");
+	drm_WARN_ONCE(&dev_priv->drm, intel_irqs_enabled(dev_priv),
+		      "Interrupts not disabled yet.\n");
 
 	 /*
 	  * TODO: check for the following to verify the conditions to enter DC9
@@ -644,10 +650,12 @@ static void assert_can_enable_dc9(struct drm_i915_private *dev_priv)
 
 static void assert_can_disable_dc9(struct drm_i915_private *dev_priv)
 {
-	WARN_ONCE(intel_irqs_enabled(dev_priv),
-		  "Interrupts not disabled yet.\n");
-	WARN_ONCE(intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5,
-		  "DC5 still not disabled.\n");
+	drm_WARN_ONCE(&dev_priv->drm, intel_irqs_enabled(dev_priv),
+		      "Interrupts not disabled yet.\n");
+	drm_WARN_ONCE(&dev_priv->drm,
+		      intel_de_read(dev_priv, DC_STATE_EN) &
+		      DC_STATE_EN_UPTO_DC5,
+		      "DC5 still not disabled.\n");
 
 	 /*
 	  * TODO: check for the following to verify DC9 state was indeed
@@ -756,7 +764,8 @@ static void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
 	u32 val;
 	u32 mask;
 
-	if (WARN_ON_ONCE(state & ~dev_priv->csr.allowed_dc_mask))
+	if (drm_WARN_ON_ONCE(&dev_priv->drm,
+			     state & ~dev_priv->csr.allowed_dc_mask))
 		state &= dev_priv->csr.allowed_dc_mask;
 
 	val = intel_de_read(dev_priv, DC_STATE_EN);
@@ -851,11 +860,13 @@ static void bxt_disable_dc9(struct drm_i915_private *dev_priv)
 
 static void assert_csr_loaded(struct drm_i915_private *dev_priv)
 {
-	WARN_ONCE(!intel_de_read(dev_priv, CSR_PROGRAM(0)),
-		  "CSR program storage start is NULL\n");
-	WARN_ONCE(!intel_de_read(dev_priv, CSR_SSP_BASE),
-		  "CSR SSP Base Not fine\n");
-	WARN_ONCE(!intel_de_read(dev_priv, CSR_HTP_SKL), "CSR HTP Not fine\n");
+	drm_WARN_ONCE(&dev_priv->drm,
+		      !intel_de_read(dev_priv, CSR_PROGRAM(0)),
+		      "CSR program storage start is NULL\n");
+	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv, CSR_SSP_BASE),
+		      "CSR SSP Base Not fine\n");
+	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv, CSR_HTP_SKL),
+		      "CSR HTP Not fine\n");
 }
 
 static struct i915_power_well *
@@ -875,7 +886,9 @@ lookup_power_well(struct drm_i915_private *dev_priv,
 	 * the first power well and hope the WARN gets reported so we can fix
 	 * our driver.
 	 */
-	WARN(1, "Power well %d not defined for this platform\n", power_well_id);
+	drm_WARN(&dev_priv->drm, 1,
+		 "Power well %d not defined for this platform\n",
+		 power_well_id);
 	return &dev_priv->power_domains.power_wells[0];
 }
 
@@ -898,7 +911,7 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 	mutex_lock(&power_domains->lock);
 	power_well = lookup_power_well(dev_priv, SKL_DISP_DC_OFF);
 
-	if (WARN_ON(!power_well))
+	if (drm_WARN_ON(&dev_priv->drm, !power_well))
 		goto unlock;
 
 	state = sanitize_target_dc_state(dev_priv, state);
@@ -929,10 +942,13 @@ static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
 	bool pg2_enabled = intel_display_power_well_is_enabled(dev_priv,
 					SKL_DISP_PW_2);
 
-	WARN_ONCE(pg2_enabled, "PG2 not disabled to enable DC5.\n");
+	drm_WARN_ONCE(&dev_priv->drm, pg2_enabled,
+		      "PG2 not disabled to enable DC5.\n");
 
-	WARN_ONCE((intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5),
-		  "DC5 already programmed to be enabled.\n");
+	drm_WARN_ONCE(&dev_priv->drm,
+		      (intel_de_read(dev_priv, DC_STATE_EN) &
+		       DC_STATE_EN_UPTO_DC5),
+		      "DC5 already programmed to be enabled.\n");
 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
 
 	assert_csr_loaded(dev_priv);
@@ -954,10 +970,13 @@ static void gen9_enable_dc5(struct drm_i915_private *dev_priv)
 
 static void assert_can_enable_dc6(struct drm_i915_private *dev_priv)
 {
-	WARN_ONCE(intel_de_read(dev_priv, UTIL_PIN_CTL) & UTIL_PIN_ENABLE,
-		  "Backlight is not disabled.\n");
-	WARN_ONCE((intel_de_read(dev_priv, DC_STATE_EN) & DC_STATE_EN_UPTO_DC6),
-		  "DC6 already programmed to be enabled.\n");
+	drm_WARN_ONCE(&dev_priv->drm,
+		      intel_de_read(dev_priv, UTIL_PIN_CTL) & UTIL_PIN_ENABLE,
+		      "Backlight is not disabled.\n");
+	drm_WARN_ONCE(&dev_priv->drm,
+		      (intel_de_read(dev_priv, DC_STATE_EN) &
+		       DC_STATE_EN_UPTO_DC6),
+		      "DC6 already programmed to be enabled.\n");
 
 	assert_csr_loaded(dev_priv);
 }
@@ -1045,10 +1064,11 @@ static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
 	u8 hw_enabled_dbuf_slices = intel_enabled_dbuf_slices_mask(dev_priv);
 	u8 enabled_dbuf_slices = dev_priv->enabled_dbuf_slices_mask;
 
-	WARN(hw_enabled_dbuf_slices != enabled_dbuf_slices,
-	     "Unexpected DBuf power power state (0x%08x, expected 0x%08x)\n",
-	     hw_enabled_dbuf_slices,
-	     enabled_dbuf_slices);
+	drm_WARN(&dev_priv->drm,
+		 hw_enabled_dbuf_slices != enabled_dbuf_slices,
+		 "Unexpected DBuf power power state (0x%08x, expected 0x%08x)\n",
+		 hw_enabled_dbuf_slices,
+		 enabled_dbuf_slices);
 }
 
 static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
@@ -1064,7 +1084,9 @@ static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 
 	dev_priv->display.get_cdclk(dev_priv, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
-	WARN_ON(intel_cdclk_needs_modeset(&dev_priv->cdclk.hw, &cdclk_config));
+	drm_WARN_ON(&dev_priv->drm,
+		    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
+					      &cdclk_config));
 
 	gen9_assert_dbuf_enabled(dev_priv);
 
@@ -1221,8 +1243,8 @@ static bool vlv_power_well_enabled(struct drm_i915_private *dev_priv,
 	 * We only ever set the power-on and power-gate states, anything
 	 * else is unexpected.
 	 */
-	WARN_ON(state != PUNIT_PWRGT_PWR_ON(pw_idx) &&
-		state != PUNIT_PWRGT_PWR_GATE(pw_idx));
+	drm_WARN_ON(&dev_priv->drm, state != PUNIT_PWRGT_PWR_ON(pw_idx) &&
+		    state != PUNIT_PWRGT_PWR_GATE(pw_idx));
 	if (state == ctrl)
 		enabled = true;
 
@@ -1231,7 +1253,7 @@ static bool vlv_power_well_enabled(struct drm_i915_private *dev_priv,
 	 * is poking at the power controls too.
 	 */
 	ctrl = vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_CTRL) & mask;
-	WARN_ON(ctrl != state);
+	drm_WARN_ON(&dev_priv->drm, ctrl != state);
 
 	vlv_punit_put(dev_priv);
 
@@ -1260,7 +1282,7 @@ static void vlv_init_display_clock_gating(struct drm_i915_private *dev_priv)
 		       MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE);
 	intel_de_write(dev_priv, CBR1_VLV, 0);
 
-	WARN_ON(RUNTIME_INFO(dev_priv)->rawclk_freq == 0);
+	drm_WARN_ON(&dev_priv->drm, RUNTIME_INFO(dev_priv)->rawclk_freq == 0);
 	intel_de_write(dev_priv, RAWCLK_FREQ_VLV,
 		       DIV_ROUND_CLOSEST(RUNTIME_INFO(dev_priv)->rawclk_freq,
 					 1000));
@@ -1502,8 +1524,9 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 	enum pipe pipe;
 	u32 tmp;
 
-	WARN_ON_ONCE(power_well->desc->id != VLV_DISP_PW_DPIO_CMN_BC &&
-		     power_well->desc->id != CHV_DISP_PW_DPIO_CMN_D);
+	drm_WARN_ON_ONCE(&dev_priv->drm,
+			 power_well->desc->id != VLV_DISP_PW_DPIO_CMN_BC &&
+			 power_well->desc->id != CHV_DISP_PW_DPIO_CMN_D);
 
 	if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
 		pipe = PIPE_A;
@@ -1564,8 +1587,9 @@ static void chv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 {
 	enum dpio_phy phy;
 
-	WARN_ON_ONCE(power_well->desc->id != VLV_DISP_PW_DPIO_CMN_BC &&
-		     power_well->desc->id != CHV_DISP_PW_DPIO_CMN_D);
+	drm_WARN_ON_ONCE(&dev_priv->drm,
+			 power_well->desc->id != VLV_DISP_PW_DPIO_CMN_BC &&
+			 power_well->desc->id != CHV_DISP_PW_DPIO_CMN_D);
 
 	if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
 		phy = DPIO_PHY0;
@@ -1647,11 +1671,13 @@ static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpi
 		actual = val >> DPIO_ANYDL_POWERDOWN_SHIFT_CH1;
 	actual &= DPIO_ALLDL_POWERDOWN | DPIO_ANYDL_POWERDOWN;
 
-	WARN(actual != expected,
-	     "Unexpected DPIO lane power down: all %d, any %d. Expected: all %d, any %d. (0x%x = 0x%08x)\n",
-	     !!(actual & DPIO_ALLDL_POWERDOWN), !!(actual & DPIO_ANYDL_POWERDOWN),
-	     !!(expected & DPIO_ALLDL_POWERDOWN), !!(expected & DPIO_ANYDL_POWERDOWN),
-	     reg, val);
+	drm_WARN(&dev_priv->drm, actual != expected,
+		 "Unexpected DPIO lane power down: all %d, any %d. Expected: all %d, any %d. (0x%x = 0x%08x)\n",
+		 !!(actual & DPIO_ALLDL_POWERDOWN),
+		 !!(actual & DPIO_ANYDL_POWERDOWN),
+		 !!(expected & DPIO_ALLDL_POWERDOWN),
+		 !!(expected & DPIO_ANYDL_POWERDOWN),
+		 reg, val);
 }
 
 bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
@@ -1733,7 +1759,8 @@ static bool chv_pipe_power_well_enabled(struct drm_i915_private *dev_priv,
 	 * We only ever set the power-on and power-gate states, anything
 	 * else is unexpected.
 	 */
-	WARN_ON(state != DP_SSS_PWR_ON(pipe) && state != DP_SSS_PWR_GATE(pipe));
+	drm_WARN_ON(&dev_priv->drm, state != DP_SSS_PWR_ON(pipe) &&
+		    state != DP_SSS_PWR_GATE(pipe));
 	enabled = state == DP_SSS_PWR_ON(pipe);
 
 	/*
@@ -1741,7 +1768,7 @@ static bool chv_pipe_power_well_enabled(struct drm_i915_private *dev_priv,
 	 * is poking at the power controls too.
 	 */
 	ctrl = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) & DP_SSC_MASK(pipe);
-	WARN_ON(ctrl << 16 != state);
+	drm_WARN_ON(&dev_priv->drm, ctrl << 16 != state);
 
 	vlv_punit_put(dev_priv);
 
@@ -2019,12 +2046,13 @@ __intel_display_power_put_domain(struct drm_i915_private *dev_priv,
 
 	power_domains = &dev_priv->power_domains;
 
-	WARN(!power_domains->domain_use_count[domain],
-	     "Use count on domain %s is already zero\n",
-	     name);
-	WARN(async_put_domains_mask(power_domains) & BIT_ULL(domain),
-	     "Async disabling of domain %s is pending\n",
-	     name);
+	drm_WARN(&dev_priv->drm, !power_domains->domain_use_count[domain],
+		 "Use count on domain %s is already zero\n",
+		 name);
+	drm_WARN(&dev_priv->drm,
+		 async_put_domains_mask(power_domains) & BIT_ULL(domain),
+		 "Async disabling of domain %s is pending\n",
+		 name);
 
 	power_domains->domain_use_count[domain]--;
 
@@ -2169,7 +2197,7 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
 		goto out_verify;
 	}
 
-	WARN_ON(power_domains->domain_use_count[domain] != 1);
+	drm_WARN_ON(&i915->drm, power_domains->domain_use_count[domain] != 1);
 
 	/* Let a pending work requeue itself or queue a new one. */
 	if (power_domains->async_put_wakeref) {
@@ -2244,7 +2272,7 @@ intel_display_power_flush_work_sync(struct drm_i915_private *i915)
 
 	verify_async_put_domains_state(power_domains);
 
-	WARN_ON(power_domains->async_put_wakeref);
+	drm_WARN_ON(&i915->drm, power_domains->async_put_wakeref);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
@@ -4443,8 +4471,8 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
 	int max_slices = INTEL_INFO(dev_priv)->num_supported_dbuf_slices;
 	struct i915_power_domains *power_domains = &dev_priv->power_domains;
 
-	WARN(hweight8(req_slices) > max_slices,
-	     "Invalid number of dbuf slices requested\n");
+	drm_WARN(&dev_priv->drm, hweight8(req_slices) > max_slices,
+		 "Invalid number of dbuf slices requested\n");
 
 	DRM_DEBUG_KMS("Updating dbuf slices to 0x%x\n", req_slices);
 
@@ -5195,8 +5223,9 @@ static bool vlv_punit_is_power_gated(struct drm_i915_private *dev_priv, u32 reg0
 
 static void assert_ved_power_gated(struct drm_i915_private *dev_priv)
 {
-	WARN(!vlv_punit_is_power_gated(dev_priv, PUNIT_REG_VEDSSPM0),
-	     "VED not power gated\n");
+	drm_WARN(&dev_priv->drm,
+		 !vlv_punit_is_power_gated(dev_priv, PUNIT_REG_VEDSSPM0),
+		 "VED not power gated\n");
 }
 
 static void assert_isp_power_gated(struct drm_i915_private *dev_priv)
@@ -5207,9 +5236,9 @@ static void assert_isp_power_gated(struct drm_i915_private *dev_priv)
 		{}
 	};
 
-	WARN(!pci_dev_present(isp_ids) &&
-	     !vlv_punit_is_power_gated(dev_priv, PUNIT_REG_ISPSSPM0),
-	     "ISP not power gated\n");
+	drm_WARN(&dev_priv->drm, !pci_dev_present(isp_ids) &&
+		 !vlv_punit_is_power_gated(dev_priv, PUNIT_REG_ISPSSPM0),
+		 "ISP not power gated\n");
 }
 
 static void intel_power_domains_verify_state(struct drm_i915_private *dev_priv);
@@ -5339,7 +5368,7 @@ void intel_power_domains_disable(struct drm_i915_private *i915)
 {
 	struct i915_power_domains *power_domains = &i915->power_domains;
 
-	WARN_ON(power_domains->wakeref);
+	drm_WARN_ON(&i915->drm, power_domains->wakeref);
 	power_domains->wakeref =
 		intel_display_power_get(i915, POWER_DOMAIN_INIT);
 
@@ -5421,7 +5450,7 @@ void intel_power_domains_resume(struct drm_i915_private *i915)
 		intel_power_domains_init_hw(i915, true);
 		power_domains->display_core_suspended = false;
 	} else {
-		WARN_ON(power_domains->wakeref);
+		drm_WARN_ON(&i915->drm, power_domains->wakeref);
 		power_domains->wakeref =
 			intel_display_power_get(i915, POWER_DOMAIN_INIT);
 	}
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
