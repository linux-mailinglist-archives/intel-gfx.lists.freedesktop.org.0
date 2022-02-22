Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1EF4BFAC1
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 15:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED5F10E98E;
	Tue, 22 Feb 2022 14:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7613A10E988
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 14:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645539514; x=1677075514;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FM9VNIEMHc/lL6EAmtt2NxnM9LLCFAPN6ss3Z9MzAfw=;
 b=LlOUM61NuCfmj7q+4sGSAMJstxEh51XS6OMIXMkzzBGuKE6DgPAdLjF8
 8+R+POfuI6HauJ7wTyVkLVtSH9rGpv0h426KA2uYIXF+DaORBts62YbR7
 R4ZpNoO/eH4rU4In6pbP1YXkKUhLrNORJiGalCGC2sIjWSv7E8aoj8gjn
 17XU+aArsBmE2X+mmiJchS7Uvy6fapi+S3ubESc/jW9SrDDJhgaMEfapE
 aHO9VjQR0wS6zGzbfkpRwSAIkE93FCwQfbBhaCn8YByuGkbmxzc6jNgpy
 xZQBDuiDuNDJ7M6CvfakeJpqf3YCoThcJrrQ8HSIzPiKq+fB1cSm+B5eO Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="250534792"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="250534792"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 06:18:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="532242601"
Received: from msabbagh-mobl.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.35.46])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 06:18:31 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 06:20:45 -0800
Message-Id: <20220222142045.48509-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Use unions per platform in
 intel_dpll_hw_state
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

This will save us a few bytes in intel_dpll_hw_state struct now
and guarantee that it will not keep growing with each new platform.

Cc: Imre Deak <imre.deak@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  71 ++++++-----
 .../drm/i915/display/intel_display_debugfs.c  |  63 +++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  77 ++++++------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 114 +++++++++++-------
 4 files changed, 180 insertions(+), 145 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e2ca70696c058..4cea1fc14bd44 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6303,38 +6303,45 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (dev_priv->dpll.mgr) {
 		PIPE_CONF_CHECK_P(shared_dpll);
 
-		PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
-		PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
-		PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
-		PIPE_CONF_CHECK_X(dpll_hw_state.fp1);
-		PIPE_CONF_CHECK_X(dpll_hw_state.wrpll);
-		PIPE_CONF_CHECK_X(dpll_hw_state.spll);
-		PIPE_CONF_CHECK_X(dpll_hw_state.ctrl1);
-		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
-		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr2);
-		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr0);
-		PIPE_CONF_CHECK_X(dpll_hw_state.div0);
-		PIPE_CONF_CHECK_X(dpll_hw_state.ebb0);
-		PIPE_CONF_CHECK_X(dpll_hw_state.ebb4);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll0);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll1);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll2);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll3);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll6);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll8);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll9);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pll10);
-		PIPE_CONF_CHECK_X(dpll_hw_state.pcsdw12);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_refclkin_ctl);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_coreclkctl1);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_hsclkctl);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div0);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div1);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_lf);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_frac_lock);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_ssc);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_bias);
-		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
+		if (DISPLAY_VER(dev_priv) >= 11) {
+			PIPE_CONF_CHECK_X(dpll_hw_state.icl_cfgcr0);
+			PIPE_CONF_CHECK_X(dpll_hw_state.icl_cfgcr1);
+			PIPE_CONF_CHECK_X(dpll_hw_state.icl_div0);
+			PIPE_CONF_CHECK_X(dpll_hw_state.mg_refclkin_ctl);
+			PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_coreclkctl1);
+			PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_hsclkctl);
+			PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div0);
+			PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div1);
+			PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_lf);
+			PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_frac_lock);
+			PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_ssc);
+			PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_bias);
+			PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
+		} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+			PIPE_CONF_CHECK_X(dpll_hw_state.ebb0);
+			PIPE_CONF_CHECK_X(dpll_hw_state.ebb4);
+			PIPE_CONF_CHECK_X(dpll_hw_state.pll0);
+			PIPE_CONF_CHECK_X(dpll_hw_state.pll1);
+			PIPE_CONF_CHECK_X(dpll_hw_state.pll2);
+			PIPE_CONF_CHECK_X(dpll_hw_state.pll3);
+			PIPE_CONF_CHECK_X(dpll_hw_state.pll6);
+			PIPE_CONF_CHECK_X(dpll_hw_state.pll8);
+			PIPE_CONF_CHECK_X(dpll_hw_state.pll9);
+			PIPE_CONF_CHECK_X(dpll_hw_state.pll10);
+			PIPE_CONF_CHECK_X(dpll_hw_state.pcsdw12);
+		} else if (DISPLAY_VER(dev_priv) == 9) {
+			PIPE_CONF_CHECK_X(dpll_hw_state.ctrl1);
+			PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
+			PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr2);
+		} else if (HAS_DDI(dev_priv)) {
+			PIPE_CONF_CHECK_X(dpll_hw_state.wrpll);
+			PIPE_CONF_CHECK_X(dpll_hw_state.spll);
+		} else if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)) {
+			PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
+			PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
+			PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
+			PIPE_CONF_CHECK_X(dpll_hw_state.fp1);
+		}
 	}
 
 	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 695aa6efe8c1b..d5d68b8901c4b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1006,35 +1006,40 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 		seq_printf(m, " pipe_mask: 0x%x, active: 0x%x, on: %s\n",
 			   pll->state.pipe_mask, pll->active_mask, yesno(pll->on));
 		seq_printf(m, " tracked hardware state:\n");
-		seq_printf(m, " dpll:    0x%08x\n", pll->state.hw_state.dpll);
-		seq_printf(m, " dpll_md: 0x%08x\n",
-			   pll->state.hw_state.dpll_md);
-		seq_printf(m, " fp0:     0x%08x\n", pll->state.hw_state.fp0);
-		seq_printf(m, " fp1:     0x%08x\n", pll->state.hw_state.fp1);
-		seq_printf(m, " wrpll:   0x%08x\n", pll->state.hw_state.wrpll);
-		seq_printf(m, " cfgcr0:  0x%08x\n", pll->state.hw_state.cfgcr0);
-		seq_printf(m, " cfgcr1:  0x%08x\n", pll->state.hw_state.cfgcr1);
-		seq_printf(m, " div0:    0x%08x\n", pll->state.hw_state.div0);
-		seq_printf(m, " mg_refclkin_ctl:        0x%08x\n",
-			   pll->state.hw_state.mg_refclkin_ctl);
-		seq_printf(m, " mg_clktop2_coreclkctl1: 0x%08x\n",
-			   pll->state.hw_state.mg_clktop2_coreclkctl1);
-		seq_printf(m, " mg_clktop2_hsclkctl:    0x%08x\n",
-			   pll->state.hw_state.mg_clktop2_hsclkctl);
-		seq_printf(m, " mg_pll_div0:  0x%08x\n",
-			   pll->state.hw_state.mg_pll_div0);
-		seq_printf(m, " mg_pll_div1:  0x%08x\n",
-			   pll->state.hw_state.mg_pll_div1);
-		seq_printf(m, " mg_pll_lf:    0x%08x\n",
-			   pll->state.hw_state.mg_pll_lf);
-		seq_printf(m, " mg_pll_frac_lock: 0x%08x\n",
-			   pll->state.hw_state.mg_pll_frac_lock);
-		seq_printf(m, " mg_pll_ssc:   0x%08x\n",
-			   pll->state.hw_state.mg_pll_ssc);
-		seq_printf(m, " mg_pll_bias:  0x%08x\n",
-			   pll->state.hw_state.mg_pll_bias);
-		seq_printf(m, " mg_pll_tdc_coldst_bias: 0x%08x\n",
-			   pll->state.hw_state.mg_pll_tdc_coldst_bias);
+
+		if (DISPLAY_VER(dev_priv) >= 11) {
+			seq_printf(m, " cfgcr0:  0x%08x\n", pll->state.hw_state.icl_cfgcr0);
+			seq_printf(m, " cfgcr1:  0x%08x\n", pll->state.hw_state.icl_cfgcr1);
+			seq_printf(m, " div0:    0x%08x\n", pll->state.hw_state.icl_div0);
+			seq_printf(m, " mg_refclkin_ctl:        0x%08x\n",
+				   pll->state.hw_state.mg_refclkin_ctl);
+			seq_printf(m, " mg_clktop2_coreclkctl1: 0x%08x\n",
+				   pll->state.hw_state.mg_clktop2_coreclkctl1);
+			seq_printf(m, " mg_clktop2_hsclkctl:    0x%08x\n",
+				   pll->state.hw_state.mg_clktop2_hsclkctl);
+			seq_printf(m, " mg_pll_div0:  0x%08x\n",
+				   pll->state.hw_state.mg_pll_div0);
+			seq_printf(m, " mg_pll_div1:  0x%08x\n",
+				   pll->state.hw_state.mg_pll_div1);
+			seq_printf(m, " mg_pll_lf:    0x%08x\n",
+				   pll->state.hw_state.mg_pll_lf);
+			seq_printf(m, " mg_pll_frac_lock: 0x%08x\n",
+				   pll->state.hw_state.mg_pll_frac_lock);
+			seq_printf(m, " mg_pll_ssc:   0x%08x\n",
+				   pll->state.hw_state.mg_pll_ssc);
+			seq_printf(m, " mg_pll_bias:  0x%08x\n",
+				   pll->state.hw_state.mg_pll_bias);
+			seq_printf(m, " mg_pll_tdc_coldst_bias: 0x%08x\n",
+				   pll->state.hw_state.mg_pll_tdc_coldst_bias);
+		} else if (HAS_DDI(dev_priv)) {
+			seq_printf(m, " wrpll:   0x%08x\n", pll->state.hw_state.wrpll);
+			seq_printf(m, " spll:   0x%08x\n", pll->state.hw_state.spll);
+		} else if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)) {
+			seq_printf(m, " dpll:    0x%08x\n", pll->state.hw_state.dpll);
+			seq_printf(m, " dpll_md: 0x%08x\n", pll->state.hw_state.dpll_md);
+			seq_printf(m, " fp0:     0x%08x\n", pll->state.hw_state.fp0);
+			seq_printf(m, " fp1:     0x%08x\n", pll->state.hw_state.fp1);
+		}
 	}
 	drm_modeset_unlock_all(dev);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 569903d47aea5..8c38ebedb75f7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2708,10 +2708,10 @@ static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
 		break;
 	}
 
-	dco_freq = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_INTEGER_MASK) *
+	dco_freq = (pll_state->icl_cfgcr0 & DPLL_CFGCR0_DCO_INTEGER_MASK) *
 		   ref_clock;
 
-	dco_fraction = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
+	dco_fraction = (pll_state->icl_cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
 		       DPLL_CFGCR0_DCO_FRACTION_SHIFT;
 
 	if (ehl_combo_pll_div_frac_wa_needed(i915))
@@ -2736,21 +2736,22 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
 	if (ehl_combo_pll_div_frac_wa_needed(i915))
 		dco_fraction = DIV_ROUND_CLOSEST(dco_fraction, 2);
 
-	pll_state->cfgcr0 = DPLL_CFGCR0_DCO_FRACTION(dco_fraction) |
-			    pll_params->dco_integer;
+	pll_state->icl_cfgcr0 = DPLL_CFGCR0_DCO_FRACTION(dco_fraction) |
+				pll_params->dco_integer;
 
-	pll_state->cfgcr1 = DPLL_CFGCR1_QDIV_RATIO(pll_params->qdiv_ratio) |
-			    DPLL_CFGCR1_QDIV_MODE(pll_params->qdiv_mode) |
-			    DPLL_CFGCR1_KDIV(pll_params->kdiv) |
-			    DPLL_CFGCR1_PDIV(pll_params->pdiv);
+	pll_state->icl_cfgcr1 = DPLL_CFGCR1_QDIV_RATIO(pll_params->qdiv_ratio) |
+				DPLL_CFGCR1_QDIV_MODE(pll_params->qdiv_mode) |
+				DPLL_CFGCR1_KDIV(pll_params->kdiv) |
+				DPLL_CFGCR1_PDIV(pll_params->pdiv);
 
 	if (DISPLAY_VER(i915) >= 12)
-		pll_state->cfgcr1 |= TGL_DPLL_CFGCR1_CFSELOVRD_NORMAL_XTAL;
+		pll_state->icl_cfgcr1 |= TGL_DPLL_CFGCR1_CFSELOVRD_NORMAL_XTAL;
 	else
-		pll_state->cfgcr1 |= DPLL_CFGCR1_CENTRAL_FREQ_8400;
+		pll_state->icl_cfgcr1 |= DPLL_CFGCR1_CENTRAL_FREQ_8400;
 
 	if (i915->vbt.override_afc_startup)
-		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(i915->vbt.override_afc_startup_val);
+		pll_state->icl_div0 =
+			TGL_DPLL0_DIV0_AFC_STARTUP(i915->vbt.override_afc_startup_val);
 }
 
 static bool icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
@@ -3506,36 +3507,36 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 		goto out;
 
 	if (IS_ALDERLAKE_S(dev_priv)) {
-		hw_state->cfgcr0 = intel_de_read(dev_priv, ADLS_DPLL_CFGCR0(id));
-		hw_state->cfgcr1 = intel_de_read(dev_priv, ADLS_DPLL_CFGCR1(id));
+		hw_state->icl_cfgcr0 = intel_de_read(dev_priv, ADLS_DPLL_CFGCR0(id));
+		hw_state->icl_cfgcr1 = intel_de_read(dev_priv, ADLS_DPLL_CFGCR1(id));
 	} else if (IS_DG1(dev_priv)) {
-		hw_state->cfgcr0 = intel_de_read(dev_priv, DG1_DPLL_CFGCR0(id));
-		hw_state->cfgcr1 = intel_de_read(dev_priv, DG1_DPLL_CFGCR1(id));
+		hw_state->icl_cfgcr0 = intel_de_read(dev_priv, DG1_DPLL_CFGCR0(id));
+		hw_state->icl_cfgcr1 = intel_de_read(dev_priv, DG1_DPLL_CFGCR1(id));
 	} else if (IS_ROCKETLAKE(dev_priv)) {
-		hw_state->cfgcr0 = intel_de_read(dev_priv,
-						 RKL_DPLL_CFGCR0(id));
-		hw_state->cfgcr1 = intel_de_read(dev_priv,
-						 RKL_DPLL_CFGCR1(id));
+		hw_state->icl_cfgcr0 = intel_de_read(dev_priv,
+						     RKL_DPLL_CFGCR0(id));
+		hw_state->icl_cfgcr1 = intel_de_read(dev_priv,
+						     RKL_DPLL_CFGCR1(id));
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		hw_state->cfgcr0 = intel_de_read(dev_priv,
-						 TGL_DPLL_CFGCR0(id));
-		hw_state->cfgcr1 = intel_de_read(dev_priv,
-						 TGL_DPLL_CFGCR1(id));
+		hw_state->icl_cfgcr0 = intel_de_read(dev_priv,
+						     TGL_DPLL_CFGCR0(id));
+		hw_state->icl_cfgcr1 = intel_de_read(dev_priv,
+						     TGL_DPLL_CFGCR1(id));
 		if (dev_priv->vbt.override_afc_startup) {
-			hw_state->div0 = intel_de_read(dev_priv, TGL_DPLL0_DIV0(id));
-			hw_state->div0 &= TGL_DPLL0_DIV0_AFC_STARTUP_MASK;
+			hw_state->icl_div0 = intel_de_read(dev_priv, TGL_DPLL0_DIV0(id));
+			hw_state->icl_div0 &= TGL_DPLL0_DIV0_AFC_STARTUP_MASK;
 		}
 	} else {
 		if (IS_JSL_EHL(dev_priv) && id == DPLL_ID_EHL_DPLL4) {
-			hw_state->cfgcr0 = intel_de_read(dev_priv,
-							 ICL_DPLL_CFGCR0(4));
-			hw_state->cfgcr1 = intel_de_read(dev_priv,
-							 ICL_DPLL_CFGCR1(4));
+			hw_state->icl_cfgcr0 = intel_de_read(dev_priv,
+							     ICL_DPLL_CFGCR0(4));
+			hw_state->icl_cfgcr1 = intel_de_read(dev_priv,
+							     ICL_DPLL_CFGCR1(4));
 		} else {
-			hw_state->cfgcr0 = intel_de_read(dev_priv,
-							 ICL_DPLL_CFGCR0(id));
-			hw_state->cfgcr1 = intel_de_read(dev_priv,
-							 ICL_DPLL_CFGCR1(id));
+			hw_state->icl_cfgcr0 = intel_de_read(dev_priv,
+							     ICL_DPLL_CFGCR0(id));
+			hw_state->icl_cfgcr1 = intel_de_read(dev_priv,
+							     ICL_DPLL_CFGCR1(id));
 		}
 	}
 
@@ -3591,14 +3592,14 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
 		}
 	}
 
-	intel_de_write(dev_priv, cfgcr0_reg, hw_state->cfgcr0);
-	intel_de_write(dev_priv, cfgcr1_reg, hw_state->cfgcr1);
+	intel_de_write(dev_priv, cfgcr0_reg, hw_state->icl_cfgcr0);
+	intel_de_write(dev_priv, cfgcr1_reg, hw_state->icl_cfgcr1);
 	drm_WARN_ON_ONCE(&dev_priv->drm, dev_priv->vbt.override_afc_startup &&
 			 !i915_mmio_reg_valid(div0_reg));
 	if (dev_priv->vbt.override_afc_startup &&
 	    i915_mmio_reg_valid(div0_reg))
 		intel_de_rmw(dev_priv, div0_reg, TGL_DPLL0_DIV0_AFC_STARTUP_MASK,
-			     hw_state->div0);
+			     hw_state->icl_div0);
 	intel_de_posting_read(dev_priv, cfgcr1_reg);
 }
 
@@ -3935,8 +3936,8 @@ static void icl_dump_hw_state(struct drm_i915_private *dev_priv,
 		    "mg_pll_div2: 0x%x, mg_pll_lf: 0x%x, "
 		    "mg_pll_frac_lock: 0x%x, mg_pll_ssc: 0x%x, "
 		    "mg_pll_bias: 0x%x, mg_pll_tdc_coldst_bias: 0x%x\n",
-		    hw_state->cfgcr0, hw_state->cfgcr1,
-		    hw_state->div0,
+		    hw_state->icl_cfgcr0, hw_state->cfgcr1,
+		    hw_state->icl_div0,
 		    hw_state->mg_refclkin_ctl,
 		    hw_state->mg_clktop2_coreclkctl1,
 		    hw_state->mg_clktop2_hsclkctl,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index ba2fdfce15792..4360e1c9266d8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -184,52 +184,74 @@ enum icl_port_dpll_id {
 };
 
 struct intel_dpll_hw_state {
-	/* i9xx, pch plls */
-	u32 dpll;
-	u32 dpll_md;
-	u32 fp0;
-	u32 fp1;
-
-	/* hsw, bdw */
-	u32 wrpll;
-	u32 spll;
-
-	/* skl */
-	/*
-	 * DPLL_CTRL1 has 6 bits for each each this DPLL. We store those in
-	 * lower part of ctrl1 and they get shifted into position when writing
-	 * the register.  This allows us to easily compare the state to share
-	 * the DPLL.
-	 */
-	u32 ctrl1;
-	/* HDMI only, 0 when used for DP */
-	u32 cfgcr1, cfgcr2;
-
-	/* icl */
-	u32 cfgcr0;
-
-	/* tgl */
-	u32 div0;
-
-	/* bxt */
-	u32 ebb0, ebb4, pll0, pll1, pll2, pll3, pll6, pll8, pll9, pll10, pcsdw12;
-
-	/*
-	 * ICL uses the following, already defined:
-	 * u32 cfgcr0, cfgcr1;
-	 */
-	u32 mg_refclkin_ctl;
-	u32 mg_clktop2_coreclkctl1;
-	u32 mg_clktop2_hsclkctl;
-	u32 mg_pll_div0;
-	u32 mg_pll_div1;
-	u32 mg_pll_lf;
-	u32 mg_pll_frac_lock;
-	u32 mg_pll_ssc;
-	u32 mg_pll_bias;
-	u32 mg_pll_tdc_coldst_bias;
-	u32 mg_pll_bias_mask;
-	u32 mg_pll_tdc_coldst_bias_mask;
+	union {
+		/* icl+ combo */
+		struct {
+			u32 icl_cfgcr0;
+			u32 icl_cfgcr1;
+			u32 icl_div0;
+		};
+
+		/* icl+ TC */
+		struct {
+			u32 mg_refclkin_ctl;
+			u32 mg_clktop2_coreclkctl1;
+			u32 mg_clktop2_hsclkctl;
+			u32 mg_pll_div0;
+			u32 mg_pll_div1;
+			u32 mg_pll_lf;
+			u32 mg_pll_frac_lock;
+			u32 mg_pll_ssc;
+			u32 mg_pll_bias;
+			u32 mg_pll_tdc_coldst_bias;
+			u32 mg_pll_bias_mask;
+			u32 mg_pll_tdc_coldst_bias_mask;
+		};
+
+		/* bxt */
+		struct {
+			/* bxt */
+			u32 ebb0;
+			u32 ebb4;
+			u32 pll0;
+			u32 pll1;
+			u32 pll2;
+			u32 pll3;
+			u32 pll6;
+			u32 pll8;
+			u32 pll9;
+			u32 pll10;
+			u32 pcsdw12;
+		};
+
+		/* skl */
+		struct {
+			/*
+			 * DPLL_CTRL1 has 6 bits for each this DPLL. We store those in
+			 * lower part of ctrl1 and they get shifted into position when writing
+			 * the register.  This allows us to easily compare the state to share
+			 * the DPLL.
+			 */
+			u32 ctrl1;
+			u32 cfgcr1;
+			/* HDMI only, 0 when used for DP */
+			u32 cfgcr2;
+		};
+
+		/* hsw, bdw */
+		struct {
+			u32 wrpll;
+			u32 spll;
+		};
+
+		/* i9xx, pch plls */
+		struct {
+			u32 dpll;
+			u32 dpll_md;
+			u32 fp0;
+			u32 fp1;
+		};
+	};
 };
 
 /**
-- 
2.35.1

