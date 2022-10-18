Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA299603181
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 19:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE5310EFAD;
	Tue, 18 Oct 2022 17:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58AA710EFAD
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 17:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666113647; x=1697649647;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uGeSWK3W3+KNDJst8Pi5l4uSFrwT18SKlJ5wxJx8W5g=;
 b=FgIucWIL8hpyCcSq7+McyzITO8OIdNwHB2Q2GMTTGpramaG0Yu7cGgsg
 hiJg5oxQikzse2Y6A0ULaw2Bt0U63OV2PghkTGWvhmTZ8PJP5+mgku2s7
 tkak3OlpTWhVNYaYbfnHBhs0NL+0HwutLnEXHahEKsCednz51vrv10JrU
 cSWlWsBSXpSazgb4+XTQCDJVi71lK2q8PlLrHCmU13cib1pdNzXLVkeno
 S0x9LYJoAwb055Km5xmkQlLsj0A/k8mUjWQg4hrDkRLhPtwYXDfwLA9Ht
 ZK3sXTBvGqlVHhSaQnWMvZNECx3wDElbGiLAXsV50wvaUFSVOPYlmlzoP w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="306160507"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="306160507"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 10:20:46 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="628818299"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="628818299"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 10:20:45 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Oct 2022 20:20:40 +0300
Message-Id: <20221018172042.1449885-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/tgl+: Add locking around DKL PHY
 register accesses
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Accessing the TypeC DKL PHY registers during modeset-commit,
-verification, DP link-retraining and AUX power well toggling is racy
due to these code paths being concurrent and the PHY register bank
selection register (HIP_INDEX_REG) being shared between PHY instances
(aka TC ports) and the bank selection being not atomic wrt. the actual
PHY register access.

Add the required locking around each PHY register bank selection->
register access sequence.

Kudos to Ville for noticing the race conditions.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.5+
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 67 ++++++-------
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +
 .../gpu/drm/i915/display/intel_display_core.h |  4 +
 .../i915/display/intel_display_power_well.c   |  6 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 58 +++++-------
 drivers/gpu/drm/i915/display/intel_tc.c       | 94 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_tc.h       |  9 ++
 drivers/gpu/drm/i915/i915_reg.h               |  3 +
 8 files changed, 167 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 971356237eca3..8e2b338883858 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1262,33 +1262,30 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 	for (ln = 0; ln < 2; ln++) {
 		int level;
 
-		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
-			       HIP_INDEX_VAL(tc_port, ln));
-
-		intel_de_write(dev_priv, DKL_TX_PMD_LANE_SUS(tc_port), 0);
+		intel_tc_dkl_write(dev_priv, DKL_TX_PMD_LANE_SUS(tc_port), ln, 0);
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 
-		intel_de_rmw(dev_priv, DKL_TX_DPCNTL0(tc_port),
-			     DKL_TX_PRESHOOT_COEFF_MASK |
-			     DKL_TX_DE_EMPAHSIS_COEFF_MASK |
-			     DKL_TX_VSWING_CONTROL_MASK,
-			     DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.preshoot) |
-			     DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis) |
-			     DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing));
+		intel_tc_dkl_rmw(dev_priv, DKL_TX_DPCNTL0(tc_port), ln,
+				 DKL_TX_PRESHOOT_COEFF_MASK |
+				 DKL_TX_DE_EMPAHSIS_COEFF_MASK |
+				 DKL_TX_VSWING_CONTROL_MASK,
+				 DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.preshoot) |
+				 DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis) |
+				 DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing));
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 
-		intel_de_rmw(dev_priv, DKL_TX_DPCNTL1(tc_port),
-			     DKL_TX_PRESHOOT_COEFF_MASK |
-			     DKL_TX_DE_EMPAHSIS_COEFF_MASK |
-			     DKL_TX_VSWING_CONTROL_MASK,
-			     DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.preshoot) |
-			     DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis) |
-			     DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing));
+		intel_tc_dkl_rmw(dev_priv, DKL_TX_DPCNTL1(tc_port), ln,
+				 DKL_TX_PRESHOOT_COEFF_MASK |
+				 DKL_TX_DE_EMPAHSIS_COEFF_MASK |
+				 DKL_TX_VSWING_CONTROL_MASK,
+				 DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.preshoot) |
+				 DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis) |
+				 DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing));
 
-		intel_de_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port),
-			     DKL_TX_DP20BITMODE, 0);
+		intel_tc_dkl_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port), ln,
+				 DKL_TX_DP20BITMODE, 0);
 
 		if (IS_ALDERLAKE_P(dev_priv)) {
 			u32 val;
@@ -1306,10 +1303,10 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 				val |= DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(0);
 			}
 
-			intel_de_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port),
-				     DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK |
-				     DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK,
-				     val);
+			intel_tc_dkl_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port), ln,
+					 DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK |
+					 DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK,
+					 val);
 		}
 	}
 }
@@ -2019,12 +2016,8 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 		return;
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
-			       HIP_INDEX_VAL(tc_port, 0x0));
-		ln0 = intel_de_read(dev_priv, DKL_DP_MODE(tc_port));
-		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
-			       HIP_INDEX_VAL(tc_port, 0x1));
-		ln1 = intel_de_read(dev_priv, DKL_DP_MODE(tc_port));
+		ln0 = intel_tc_dkl_read(dev_priv, DKL_DP_MODE(tc_port), 0);
+		ln1 = intel_tc_dkl_read(dev_priv, DKL_DP_MODE(tc_port), 1);
 	} else {
 		ln0 = intel_de_read(dev_priv, MG_DP_MODE(0, tc_port));
 		ln1 = intel_de_read(dev_priv, MG_DP_MODE(1, tc_port));
@@ -2085,12 +2078,8 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
-			       HIP_INDEX_VAL(tc_port, 0x0));
-		intel_de_write(dev_priv, DKL_DP_MODE(tc_port), ln0);
-		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
-			       HIP_INDEX_VAL(tc_port, 0x1));
-		intel_de_write(dev_priv, DKL_DP_MODE(tc_port), ln1);
+		intel_tc_dkl_write(dev_priv, DKL_DP_MODE(tc_port), 0, ln0);
+		intel_tc_dkl_write(dev_priv, DKL_DP_MODE(tc_port), 1, ln1);
 	} else {
 		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
 		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);
@@ -3094,10 +3083,8 @@ static void adlp_tbt_to_dp_alt_switch_wa(struct intel_encoder *encoder)
 	enum tc_port tc_port = intel_port_to_tc(i915, encoder->port);
 	int ln;
 
-	for (ln = 0; ln < 2; ln++) {
-		intel_de_write(i915, HIP_INDEX_REG(tc_port), HIP_INDEX_VAL(tc_port, ln));
-		intel_de_rmw(i915, DKL_PCS_DW5(tc_port), DKL_PCS_DW5_CORE_SOFTRESET, 0);
-	}
+	for (ln = 0; ln < 2; ln++)
+		intel_tc_dkl_rmw(i915, DKL_PCS_DW5(tc_port), ln, DKL_PCS_DW5_CORE_SOFTRESET, 0);
 }
 
 static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 606f9140d024f..68ebf49e6fdbd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7907,6 +7907,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 	intel_pps_unlock_regs_wa(dev_priv);
 
+	spin_lock_init(&dev_priv->display.tc.dkl_lock);
+
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 96cf994b0ad1f..6e8371e8ebdb6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -394,6 +394,10 @@ struct intel_display {
 		u32 block_time_us;
 	} sagv;
 
+	struct {
+		spinlock_t dkl_lock;
+	} tc;
+
 	struct {
 		/* ordered wq for modesets */
 		struct workqueue_struct *modeset;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index df7ee4969ef17..c37d2d5bbd983 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -529,11 +529,9 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 		enum tc_port tc_port;
 
 		tc_port = TGL_AUX_PW_TO_TC_PORT(i915_power_well_instance(power_well)->hsw.idx);
-		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
-			       HIP_INDEX_VAL(tc_port, 0x2));
 
-		if (intel_de_wait_for_set(dev_priv, DKL_CMN_UC_DW_27(tc_port),
-					  DKL_CMN_UC_DW27_UC_HEALTH, 1))
+		if (wait_for(intel_tc_dkl_read(dev_priv, DKL_CMN_UC_DW_27(tc_port), 2) &
+			     DKL_CMN_UC_DW27_UC_HEALTH, 1))
 			drm_warn(&dev_priv->drm,
 				 "Timeout waiting TC uC health\n");
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b63600d8ebeb0..28895e51c9c21 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3486,15 +3486,12 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	 * All registers read here have the same HIP_INDEX_REG even though
 	 * they are on different building blocks
 	 */
-	intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
-		       HIP_INDEX_VAL(tc_port, 0x2));
-
-	hw_state->mg_refclkin_ctl = intel_de_read(dev_priv,
-						  DKL_REFCLKIN_CTL(tc_port));
+	hw_state->mg_refclkin_ctl = intel_tc_dkl_read(dev_priv,
+						      DKL_REFCLKIN_CTL(tc_port), 2);
 	hw_state->mg_refclkin_ctl &= MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 
 	hw_state->mg_clktop2_hsclkctl =
-		intel_de_read(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port));
+		intel_tc_dkl_read(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port), 2);
 	hw_state->mg_clktop2_hsclkctl &=
 		MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
@@ -3502,32 +3499,32 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK;
 
 	hw_state->mg_clktop2_coreclkctl1 =
-		intel_de_read(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port));
+		intel_tc_dkl_read(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port), 2);
 	hw_state->mg_clktop2_coreclkctl1 &=
 		MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 
-	hw_state->mg_pll_div0 = intel_de_read(dev_priv, DKL_PLL_DIV0(tc_port));
+	hw_state->mg_pll_div0 = intel_tc_dkl_read(dev_priv, DKL_PLL_DIV0(tc_port), 2);
 	val = DKL_PLL_DIV0_MASK;
 	if (dev_priv->display.vbt.override_afc_startup)
 		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
 	hw_state->mg_pll_div0 &= val;
 
-	hw_state->mg_pll_div1 = intel_de_read(dev_priv, DKL_PLL_DIV1(tc_port));
+	hw_state->mg_pll_div1 = intel_tc_dkl_read(dev_priv, DKL_PLL_DIV1(tc_port), 2);
 	hw_state->mg_pll_div1 &= (DKL_PLL_DIV1_IREF_TRIM_MASK |
 				  DKL_PLL_DIV1_TDC_TARGET_CNT_MASK);
 
-	hw_state->mg_pll_ssc = intel_de_read(dev_priv, DKL_PLL_SSC(tc_port));
+	hw_state->mg_pll_ssc = intel_tc_dkl_read(dev_priv, DKL_PLL_SSC(tc_port), 2);
 	hw_state->mg_pll_ssc &= (DKL_PLL_SSC_IREF_NDIV_RATIO_MASK |
 				 DKL_PLL_SSC_STEP_LEN_MASK |
 				 DKL_PLL_SSC_STEP_NUM_MASK |
 				 DKL_PLL_SSC_EN);
 
-	hw_state->mg_pll_bias = intel_de_read(dev_priv, DKL_PLL_BIAS(tc_port));
+	hw_state->mg_pll_bias = intel_tc_dkl_read(dev_priv, DKL_PLL_BIAS(tc_port), 2);
 	hw_state->mg_pll_bias &= (DKL_PLL_BIAS_FRAC_EN_H |
 				  DKL_PLL_BIAS_FBDIV_FRAC_MASK);
 
 	hw_state->mg_pll_tdc_coldst_bias =
-		intel_de_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port));
+		intel_tc_dkl_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port), 2);
 	hw_state->mg_pll_tdc_coldst_bias &= (DKL_PLL_TDC_SSC_STEP_SIZE_MASK |
 					     DKL_PLL_TDC_FEED_FWD_GAIN_MASK);
 
@@ -3715,61 +3712,58 @@ static void dkl_pll_write(struct drm_i915_private *dev_priv,
 	 * All registers programmed here have the same HIP_INDEX_REG even
 	 * though on different building block
 	 */
-	intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
-		       HIP_INDEX_VAL(tc_port, 0x2));
-
 	/* All the registers are RMW */
-	val = intel_de_read(dev_priv, DKL_REFCLKIN_CTL(tc_port));
+	val = intel_tc_dkl_read(dev_priv, DKL_REFCLKIN_CTL(tc_port), 2);
 	val &= ~MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 	val |= hw_state->mg_refclkin_ctl;
-	intel_de_write(dev_priv, DKL_REFCLKIN_CTL(tc_port), val);
+	intel_tc_dkl_write(dev_priv, DKL_REFCLKIN_CTL(tc_port), 2, val);
 
-	val = intel_de_read(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port));
+	val = intel_tc_dkl_read(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port), 2);
 	val &= ~MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 	val |= hw_state->mg_clktop2_coreclkctl1;
-	intel_de_write(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port), val);
+	intel_tc_dkl_write(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port), 2, val);
 
-	val = intel_de_read(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port));
+	val = intel_tc_dkl_read(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port), 2);
 	val &= ~(MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
 		 MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK);
 	val |= hw_state->mg_clktop2_hsclkctl;
-	intel_de_write(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port), val);
+	intel_tc_dkl_write(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port), 2, val);
 
 	val = DKL_PLL_DIV0_MASK;
 	if (dev_priv->display.vbt.override_afc_startup)
 		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
-	intel_de_rmw(dev_priv, DKL_PLL_DIV0(tc_port), val,
-		     hw_state->mg_pll_div0);
+	intel_tc_dkl_rmw(dev_priv, DKL_PLL_DIV0(tc_port), 2, val,
+			 hw_state->mg_pll_div0);
 
-	val = intel_de_read(dev_priv, DKL_PLL_DIV1(tc_port));
+	val = intel_tc_dkl_read(dev_priv, DKL_PLL_DIV1(tc_port), 2);
 	val &= ~(DKL_PLL_DIV1_IREF_TRIM_MASK |
 		 DKL_PLL_DIV1_TDC_TARGET_CNT_MASK);
 	val |= hw_state->mg_pll_div1;
-	intel_de_write(dev_priv, DKL_PLL_DIV1(tc_port), val);
+	intel_tc_dkl_write(dev_priv, DKL_PLL_DIV1(tc_port), 2, val);
 
-	val = intel_de_read(dev_priv, DKL_PLL_SSC(tc_port));
+	val = intel_tc_dkl_read(dev_priv, DKL_PLL_SSC(tc_port), 2);
 	val &= ~(DKL_PLL_SSC_IREF_NDIV_RATIO_MASK |
 		 DKL_PLL_SSC_STEP_LEN_MASK |
 		 DKL_PLL_SSC_STEP_NUM_MASK |
 		 DKL_PLL_SSC_EN);
 	val |= hw_state->mg_pll_ssc;
-	intel_de_write(dev_priv, DKL_PLL_SSC(tc_port), val);
+	intel_tc_dkl_write(dev_priv, DKL_PLL_SSC(tc_port), 2, val);
 
-	val = intel_de_read(dev_priv, DKL_PLL_BIAS(tc_port));
+	val = intel_tc_dkl_read(dev_priv, DKL_PLL_BIAS(tc_port), 2);
 	val &= ~(DKL_PLL_BIAS_FRAC_EN_H |
 		 DKL_PLL_BIAS_FBDIV_FRAC_MASK);
 	val |= hw_state->mg_pll_bias;
-	intel_de_write(dev_priv, DKL_PLL_BIAS(tc_port), val);
+	intel_tc_dkl_write(dev_priv, DKL_PLL_BIAS(tc_port), 2, val);
 
-	val = intel_de_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port));
+	val = intel_tc_dkl_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port), 2);
 	val &= ~(DKL_PLL_TDC_SSC_STEP_SIZE_MASK |
 		 DKL_PLL_TDC_FEED_FWD_GAIN_MASK);
 	val |= hw_state->mg_pll_tdc_coldst_bias;
-	intel_de_write(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port), val);
+	intel_tc_dkl_write(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port), 2, val);
 
-	intel_de_posting_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port));
+	intel_tc_dkl_posting_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port), 2);
 }
 
 static void icl_pll_power_enable(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 8cecd41ed0033..8123699d3dbfb 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_power_map.h"
 #include "intel_display_types.h"
@@ -894,6 +895,99 @@ void intel_tc_port_put_link(struct intel_digital_port *dig_port)
 	intel_tc_port_flush_work(dig_port);
 }
 
+static void dkl_set_hip_idx(struct drm_i915_private *i915, i915_reg_t reg, int idx)
+{
+	enum tc_port tc_port = DKL_REG_TC_PORT(reg);
+
+	drm_WARN_ON(&i915->drm, tc_port < TC_PORT_1 || tc_port >= I915_MAX_TC_PORTS);
+
+	intel_de_write(i915,
+		       HIP_INDEX_REG(tc_port),
+		       HIP_INDEX_VAL(tc_port, idx));
+}
+
+/**
+ * intel_tc_dkl_read - read a Dekel PHY register
+ * @i915: i915 device instance
+ * @reg: Dekel PHY register
+ * @ln: lane instance of @reg
+ *
+ * Read the @reg Dekel PHY register.
+ *
+ * Returns the read value.
+ */
+u32 intel_tc_dkl_read(struct drm_i915_private *i915, i915_reg_t reg, int ln)
+{
+	u32 val;
+
+	spin_lock(&i915->display.tc.dkl_lock);
+
+	dkl_set_hip_idx(i915, reg, ln);
+	val = intel_de_read(i915, reg);
+
+	spin_unlock(&i915->display.tc.dkl_lock);
+
+	return val;
+}
+
+/**
+ * intel_tc_dkl_write - write a Dekel PHY register
+ * @i915: i915 device instance
+ * @reg: Dekel PHY register
+ * @ln: lane instance of @reg
+ * @val: value to write
+ *
+ * Write @val to the @reg Dekel PHY register.
+ */
+void intel_tc_dkl_write(struct drm_i915_private *i915, i915_reg_t reg, int ln, u32 val)
+{
+	spin_lock(&i915->display.tc.dkl_lock);
+
+	dkl_set_hip_idx(i915, reg, ln);
+	intel_de_write(i915, reg, val);
+
+	spin_unlock(&i915->display.tc.dkl_lock);
+}
+
+/**
+ * intel_tc_dkl_rmw - read-modify-write a Dekel PHY register
+ * @i915: i915 device instance
+ * @reg: Dekel PHY register
+ * @ln: lane instance of @reg
+ * @clear: mask to clear
+ * @set: mask to set
+ *
+ * Read the @reg Dekel PHY register, clearing then setting the @clear/@set bits in it, and writing
+ * this value back to the register if the value differs from the read one.
+ */
+void intel_tc_dkl_rmw(struct drm_i915_private *i915, i915_reg_t reg, int ln, u32 clear, u32 set)
+{
+	spin_lock(&i915->display.tc.dkl_lock);
+
+	dkl_set_hip_idx(i915, reg, ln);
+	intel_de_rmw(i915, reg, clear, set);
+
+	spin_unlock(&i915->display.tc.dkl_lock);
+}
+
+/**
+ * intel_tc_dkl_posting_read - do a posting read from a Dekel PHY register
+ * @i915: i915 device instance
+ * @reg: Dekel PHY register
+ * @ln: lane instance of @reg
+ *
+ * Read the @reg Dekel PHY register without returning the read value.
+ */
+void intel_tc_dkl_posting_read(struct drm_i915_private *i915, i915_reg_t reg, int ln)
+{
+	spin_lock(&i915->display.tc.dkl_lock);
+
+	dkl_set_hip_idx(i915, reg, ln);
+	intel_de_posting_read(i915, reg);
+
+	spin_unlock(&i915->display.tc.dkl_lock);
+}
+
 static bool
 tc_has_modular_fia(struct drm_i915_private *i915, struct intel_digital_port *dig_port)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index d54082e2d5e8d..330ff0fb12f16 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -9,6 +9,10 @@
 #include <linux/mutex.h>
 #include <linux/types.h>
 
+#include "i915_reg_defs.h"
+
+struct drm_i915_private;
+
 struct intel_digital_port;
 struct intel_encoder;
 
@@ -34,6 +38,11 @@ void intel_tc_port_get_link(struct intel_digital_port *dig_port,
 void intel_tc_port_put_link(struct intel_digital_port *dig_port);
 bool intel_tc_port_ref_held(struct intel_digital_port *dig_port);
 
+u32 intel_tc_dkl_read(struct drm_i915_private *i915, i915_reg_t reg, int ln);
+void intel_tc_dkl_write(struct drm_i915_private *i915, i915_reg_t reg, int ln, u32 val);
+void intel_tc_dkl_rmw(struct drm_i915_private *i915, i915_reg_t reg, int ln, u32 clear, u32 set);
+void intel_tc_dkl_posting_read(struct drm_i915_private *i915, i915_reg_t reg, int ln);
+
 void intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy);
 
 bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 99a8535193957..2b7c019725462 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7442,6 +7442,9 @@ enum skl_power_gate {
 #define _DKL_PHY5_BASE			0x16C000
 #define _DKL_PHY6_BASE			0x16D000
 
+#define _DKL_BANK_SHIFT			12
+#define DKL_REG_TC_PORT(reg)		(((reg).reg - _DKL_PHY1_BASE) >> _DKL_BANK_SHIFT)
+
 /* DEKEL PHY MMIO Address = Phy base + (internal address & ~index_mask) */
 #define _DKL_PCS_DW5			0x14
 #define DKL_PCS_DW5(tc_port)		_MMIO(_PORT(tc_port, _DKL_PHY1_BASE, \
-- 
2.37.1

