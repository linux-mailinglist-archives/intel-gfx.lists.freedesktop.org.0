Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F35F4C1D5C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 21:53:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A54C10EDCD;
	Wed, 23 Feb 2022 20:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21CA510EDCD
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 20:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645649620; x=1677185620;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e+PcdJ1AYW5TZ+g9DLomTAOo8iAqGlBneucmMugyRtY=;
 b=iAIDpMZb1nlhEkThsz+RMRuvCRVk6VOTs134YF7/Uz6HbdT+Uerpc/Xj
 IU0W6LGFo88awXkfhV2WCPyJ6DkWjLUhQhJRgpKPVqy2rf7Z7L8ly08F0
 c3LDp2CSlNA3aIR+lGrsMFj1NuvDDYuJ9XI7bHC9lNBGtaWzHgiyVdetB
 FbcIrVc8vVtgXBQ1z5Gp0PFTquUpxnOYPPoIw1aQiPFRlADvcoJdhgezl
 wjsBXfkTCM+ITw90fWcgb2lxUhLzsU0XDmyqocJ48wM8lcb+1GAkBAzM6
 LTZrJAj0oZU4D32Q/HMk1mEHvOUNT3ljp7tRkodXp0vXli3/wC9Tfyeaf w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="249657976"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="249657976"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 12:53:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="491350951"
Received: from zhixinxi-mobl2.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.48.190])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 12:53:37 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 12:55:51 -0800
Message-Id: <20220223205551.813749-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Use unions per platform in
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

v2:
- grouping skl and ICL+ combo (Imre)

Cc: Imre Deak <imre.deak@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  71 +++++++-----
 .../drm/i915/display/intel_display_debugfs.c  |  63 +++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 109 ++++++++++--------
 3 files changed, 136 insertions(+), 107 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 80b19c304c432..58a5bf0d30221 100644
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
+			PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr0);
+			PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
+			PIPE_CONF_CHECK_X(dpll_hw_state.div0);
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
index ffe6822d7414a..cd53f7da9b00d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1007,35 +1007,40 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
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
+			seq_printf(m, " cfgcr0:  0x%08x\n", pll->state.hw_state.cfgcr0);
+			seq_printf(m, " cfgcr1:  0x%08x\n", pll->state.hw_state.cfgcr1);
+			seq_printf(m, " div0:    0x%08x\n", pll->state.hw_state.div0);
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
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index ba2fdfce15792..0ac3cd44f5d49 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -184,52 +184,69 @@ enum icl_port_dpll_id {
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
+		/* skl+ and icl+ combo */
+		struct {
+			/*
+			 * DPLL_CTRL1 has 6 bits for each this DPLL. We store those in
+			 * lower part of ctrl1 and they get shifted into position when writing
+			 * the register.  This allows us to easily compare the state to share
+			 * the DPLL.
+			 */
+			u32 ctrl1;
+			u32 cfgcr0;
+			u32 cfgcr1;
+			/* HDMI only, 0 when used for DP */
+			u32 cfgcr2;
+			u32 div0;
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

