Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 099D64B8A6F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 14:39:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9960A10E737;
	Wed, 16 Feb 2022 13:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 177BD10E8CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 13:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645018742; x=1676554742;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HPkWPSTg4TzJ7sguQTkDHjyDtun+N9VWpwF2ESU4FG8=;
 b=Hp0ue+7i49RLl1YmIXCwGpvOpo4qX7pKY2mB4M4N0uNeVTxoZF+t2mLI
 3q6sE9CBspl32ElK9fe+A23zXv+bXU8J4NaH6tzo9A+VcesQek8/IaZQi
 SaFCwEl4HDgpPTu/EntoI1XUbBWWio5G2tFHyRN6TqtGW2K/mh70fvHNl
 UNBqtZ/AGx1t4QY61/hBOXv2al45ywM2oYA4Emn9l446ZmDQv+ZBCZm+D
 7M72YUp2LIIOBEXTPCW41KO7D5Ju0Tu1cWaC2S7p7Px4I/FXDwyImdmix
 n61MQoPoIR+m8pyRSuTjjotKPsav+90jdx4hrrbaYD4nVftcCcZbNW1ob g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="238007743"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="238007743"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 05:39:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="636492021"
Received: from mmcgown-mobl2.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.251.4.3])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 05:38:59 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Feb 2022 05:40:59 -0800
Message-Id: <20220216134059.25348-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display/tgl+: Implement new PLL
 programming step
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

A new programming step was added to combo and TC PLL sequences.
If override_AFC_startup is set in VBT, driver should overwrite
AFC_startup value to 0x0 or 0x7 in PLL's div0 register.

The current understating is that only TGL needs this and all other
display 12 and newer platforms will have a older VBT or a newer VBT
with override_AFC_startup set to 0 but in any case there is a
drm_warn_on_once() to let us know if this is not true.

v2:
- specification updated, now AFC can be override to 0x0 or 0x7
- not using a union for div0 (Imre)
- following previous wrong vbt naming: bits instead of bytes (Imre)

BSpec: 49204
BSpec: 20122
BSpec: 49968
BSpec: 71360
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com> # v1
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  6 +++
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 .../drm/i915/display/intel_display_debugfs.c  |  1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 44 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 ++
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  8 ++++
 drivers/gpu/drm/i915/i915_drv.h               |  3 ++
 drivers/gpu/drm/i915/i915_reg.h               | 12 +++++
 8 files changed, 65 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index aec0efd5350ef..40b5e7ed12c20 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -596,6 +596,12 @@ parse_general_features(struct drm_i915_private *i915,
 	} else {
 		i915->vbt.orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
 	}
+
+	if (bdb->version >= 249 && general->afc_startup_config) {
+		i915->vbt.override_afc_startup = true;
+		i915->vbt.override_afc_startup_val = general->afc_startup_config == 0x1 ? 0x0 : 0x7;
+	}
+
 	drm_dbg_kms(&i915->drm,
 		    "BDB_GENERAL_FEATURES int_tv_support %d int_crt_support %d lvds_use_ssc %d lvds_ssc_freq %d display_clock_mode %d fdi_rx_polarity_inverted %d\n",
 		    i915->vbt.int_tv_support,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6229038475513..9e663692b0f00 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6502,6 +6502,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
 		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr2);
 		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr0);
+		PIPE_CONF_CHECK_X(dpll_hw_state.div0);
 		PIPE_CONF_CHECK_X(dpll_hw_state.ebb0);
 		PIPE_CONF_CHECK_X(dpll_hw_state.ebb4);
 		PIPE_CONF_CHECK_X(dpll_hw_state.pll0);
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 1a202a5c39a53..56b86781a7b16 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1014,6 +1014,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 		seq_printf(m, " wrpll:   0x%08x\n", pll->state.hw_state.wrpll);
 		seq_printf(m, " cfgcr0:  0x%08x\n", pll->state.hw_state.cfgcr0);
 		seq_printf(m, " cfgcr1:  0x%08x\n", pll->state.hw_state.cfgcr1);
+		seq_printf(m, " div0:    0x%08x\n", pll->state.hw_state.div0);
 		seq_printf(m, " mg_refclkin_ctl:        0x%08x\n",
 			   pll->state.hw_state.mg_refclkin_ctl);
 		seq_printf(m, " mg_clktop2_coreclkctl1: 0x%08x\n",
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6723c3de5a80c..569903d47aea5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2748,6 +2748,9 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
 		pll_state->cfgcr1 |= TGL_DPLL_CFGCR1_CFSELOVRD_NORMAL_XTAL;
 	else
 		pll_state->cfgcr1 |= DPLL_CFGCR1_CENTRAL_FREQ_8400;
+
+	if (i915->vbt.override_afc_startup)
+		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(i915->vbt.override_afc_startup_val);
 }
 
 static bool icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
@@ -2949,6 +2952,11 @@ static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 					 DKL_PLL_DIV0_PROP_COEFF(prop_coeff) |
 					 DKL_PLL_DIV0_FBPREDIV(m1div) |
 					 DKL_PLL_DIV0_FBDIV_INT(m2div_int);
+		if (dev_priv->vbt.override_afc_startup) {
+			u8 val = dev_priv->vbt.override_afc_startup_val;
+
+			pll_state->mg_pll_div0 |= DKL_PLL_DIV0_AFC_STARTUP(val);
+		}
 
 		pll_state->mg_pll_div1 = DKL_PLL_DIV1_IREF_TRIM(iref_trim) |
 					 DKL_PLL_DIV1_TDC_TARGET_CNT(tdc_targetcnt);
@@ -3448,10 +3456,10 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 		MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 
 	hw_state->mg_pll_div0 = intel_de_read(dev_priv, DKL_PLL_DIV0(tc_port));
-	hw_state->mg_pll_div0 &= (DKL_PLL_DIV0_INTEG_COEFF_MASK |
-				  DKL_PLL_DIV0_PROP_COEFF_MASK |
-				  DKL_PLL_DIV0_FBPREDIV_MASK |
-				  DKL_PLL_DIV0_FBDIV_INT_MASK);
+	val = DKL_PLL_DIV0_MASK;
+	if (dev_priv->vbt.override_afc_startup)
+		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
+	hw_state->mg_pll_div0 &= val;
 
 	hw_state->mg_pll_div1 = intel_de_read(dev_priv, DKL_PLL_DIV1(tc_port));
 	hw_state->mg_pll_div1 &= (DKL_PLL_DIV1_IREF_TRIM_MASK |
@@ -3513,6 +3521,10 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 						 TGL_DPLL_CFGCR0(id));
 		hw_state->cfgcr1 = intel_de_read(dev_priv,
 						 TGL_DPLL_CFGCR1(id));
+		if (dev_priv->vbt.override_afc_startup) {
+			hw_state->div0 = intel_de_read(dev_priv, TGL_DPLL0_DIV0(id));
+			hw_state->div0 &= TGL_DPLL0_DIV0_AFC_STARTUP_MASK;
+		}
 	} else {
 		if (IS_JSL_EHL(dev_priv) && id == DPLL_ID_EHL_DPLL4) {
 			hw_state->cfgcr0 = intel_de_read(dev_priv,
@@ -3554,7 +3566,7 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
 {
 	struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	const enum intel_dpll_id id = pll->info->id;
-	i915_reg_t cfgcr0_reg, cfgcr1_reg;
+	i915_reg_t cfgcr0_reg, cfgcr1_reg, div0_reg = INVALID_MMIO_REG;
 
 	if (IS_ALDERLAKE_S(dev_priv)) {
 		cfgcr0_reg = ADLS_DPLL_CFGCR0(id);
@@ -3568,6 +3580,7 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		cfgcr0_reg = TGL_DPLL_CFGCR0(id);
 		cfgcr1_reg = TGL_DPLL_CFGCR1(id);
+		div0_reg = TGL_DPLL0_DIV0(id);
 	} else {
 		if (IS_JSL_EHL(dev_priv) && id == DPLL_ID_EHL_DPLL4) {
 			cfgcr0_reg = ICL_DPLL_CFGCR0(4);
@@ -3580,6 +3593,12 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
 
 	intel_de_write(dev_priv, cfgcr0_reg, hw_state->cfgcr0);
 	intel_de_write(dev_priv, cfgcr1_reg, hw_state->cfgcr1);
+	drm_WARN_ON_ONCE(&dev_priv->drm, dev_priv->vbt.override_afc_startup &&
+			 !i915_mmio_reg_valid(div0_reg));
+	if (dev_priv->vbt.override_afc_startup &&
+	    i915_mmio_reg_valid(div0_reg))
+		intel_de_rmw(dev_priv, div0_reg, TGL_DPLL0_DIV0_AFC_STARTUP_MASK,
+			     hw_state->div0);
 	intel_de_posting_read(dev_priv, cfgcr1_reg);
 }
 
@@ -3667,13 +3686,11 @@ static void dkl_pll_write(struct drm_i915_private *dev_priv,
 	val |= hw_state->mg_clktop2_hsclkctl;
 	intel_de_write(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port), val);
 
-	val = intel_de_read(dev_priv, DKL_PLL_DIV0(tc_port));
-	val &= ~(DKL_PLL_DIV0_INTEG_COEFF_MASK |
-		 DKL_PLL_DIV0_PROP_COEFF_MASK |
-		 DKL_PLL_DIV0_FBPREDIV_MASK |
-		 DKL_PLL_DIV0_FBDIV_INT_MASK);
-	val |= hw_state->mg_pll_div0;
-	intel_de_write(dev_priv, DKL_PLL_DIV0(tc_port), val);
+	val = DKL_PLL_DIV0_MASK;
+	if (dev_priv->vbt.override_afc_startup)
+		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
+	intel_de_rmw(dev_priv, DKL_PLL_DIV0(tc_port), val,
+		     hw_state->mg_pll_div0);
 
 	val = intel_de_read(dev_priv, DKL_PLL_DIV1(tc_port));
 	val &= ~(DKL_PLL_DIV1_IREF_TRIM_MASK |
@@ -3912,13 +3929,14 @@ static void icl_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
 	drm_dbg_kms(&dev_priv->drm,
-		    "dpll_hw_state: cfgcr0: 0x%x, cfgcr1: 0x%x, "
+		    "dpll_hw_state: cfgcr0: 0x%x, cfgcr1: 0x%x, div0: 0x%x, "
 		    "mg_refclkin_ctl: 0x%x, hg_clktop2_coreclkctl1: 0x%x, "
 		    "mg_clktop2_hsclkctl: 0x%x, mg_pll_div0: 0x%x, "
 		    "mg_pll_div2: 0x%x, mg_pll_lf: 0x%x, "
 		    "mg_pll_frac_lock: 0x%x, mg_pll_ssc: 0x%x, "
 		    "mg_pll_bias: 0x%x, mg_pll_tdc_coldst_bias: 0x%x\n",
 		    hw_state->cfgcr0, hw_state->cfgcr1,
+		    hw_state->div0,
 		    hw_state->mg_refclkin_ctl,
 		    hw_state->mg_clktop2_coreclkctl1,
 		    hw_state->mg_clktop2_hsclkctl,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 91fe181462b2e..ba2fdfce15792 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -208,6 +208,9 @@ struct intel_dpll_hw_state {
 	/* icl */
 	u32 cfgcr0;
 
+	/* tgl */
+	u32 div0;
+
 	/* bxt */
 	u32 ebb0, ebb4, pll0, pll1, pll2, pll3, pll6, pll8, pll9, pll10, pcsdw12;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index a39d6cfea87aa..b9397d9363c52 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -162,6 +162,14 @@ struct bdb_general_features {
 	u8 dp_ssc_freq:1;	/* SSC freq for PCH attached eDP */
 	u8 dp_ssc_dongle_supported:1;
 	u8 rsvd11:2; /* finish byte */
+
+	/* bits 6 */
+	u8 tc_hpd_retry_timeout:7; /* 242 */
+	u8 rsvd12:1;
+
+	/* bits 7 */
+	u8 afc_startup_config:2;/* 249 */
+	u8 rsvd13:6;
 } __packed;
 
 /*
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 418091484e02a..f600d1cb01b34 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -357,6 +357,9 @@ struct intel_vbt_data {
 	unsigned int bios_lvds_val; /* initial [PCH_]LVDS reg val in VBIOS */
 	enum drm_panel_orientation orientation;
 
+	bool override_afc_startup;
+	u8 override_afc_startup_val;
+
 	enum drrs_support_type drrs_type;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4ea1713e6b608..060f5c2e26479 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7987,6 +7987,12 @@ enum skl_power_gate {
 #define RKL_DPLL_CFGCR0(pll)		_MMIO_PLL(pll, _TGL_DPLL0_CFGCR0, \
 						  _TGL_DPLL1_CFGCR0)
 
+#define _TGL_DPLL0_DIV0					0x164B00
+#define _TGL_DPLL1_DIV0					0x164C00
+#define TGL_DPLL0_DIV0(pll)				_MMIO_PLL(pll, _TGL_DPLL0_DIV0, _TGL_DPLL1_DIV0)
+#define   TGL_DPLL0_DIV0_AFC_STARTUP_MASK		REG_GENMASK(27, 25)
+#define   TGL_DPLL0_DIV0_AFC_STARTUP(val)		REG_FIELD_PREP(TGL_DPLL0_DIV0_AFC_STARTUP_MASK, (val))
+
 #define _TGL_DPLL0_CFGCR1		0x164288
 #define _TGL_DPLL1_CFGCR1		0x164290
 #define _TGL_TBTPLL_CFGCR1		0x1642A0
@@ -8034,6 +8040,8 @@ enum skl_power_gate {
 
 /* DEKEL PHY MMIO Address = Phy base + (internal address & ~index_mask) */
 #define _DKL_PLL_DIV0			0x200
+#define   DKL_PLL_DIV0_AFC_STARTUP_MASK	REG_GENMASK(27, 25)
+#define   DKL_PLL_DIV0_AFC_STARTUP(val)	REG_FIELD_PREP(DKL_PLL_DIV0_AFC_STARTUP_MASK, (val))
 #define   DKL_PLL_DIV0_INTEG_COEFF(x)	((x) << 16)
 #define   DKL_PLL_DIV0_INTEG_COEFF_MASK	(0x1F << 16)
 #define   DKL_PLL_DIV0_PROP_COEFF(x)	((x) << 12)
@@ -8043,6 +8051,10 @@ enum skl_power_gate {
 #define   DKL_PLL_DIV0_FBPREDIV_MASK	(0xF << DKL_PLL_DIV0_FBPREDIV_SHIFT)
 #define   DKL_PLL_DIV0_FBDIV_INT(x)	((x) << 0)
 #define   DKL_PLL_DIV0_FBDIV_INT_MASK	(0xFF << 0)
+#define   DKL_PLL_DIV0_MASK		(DKL_PLL_DIV0_INTEG_COEFF_MASK | \
+					 DKL_PLL_DIV0_PROP_COEFF_MASK | \
+					 DKL_PLL_DIV0_FBPREDIV_MASK | \
+					 DKL_PLL_DIV0_FBDIV_INT_MASK)
 #define DKL_PLL_DIV0(tc_port)		_MMIO(_PORT(tc_port, _DKL_PHY1_BASE, \
 						    _DKL_PHY2_BASE) + \
 						    _DKL_PLL_DIV0)
-- 
2.35.1

