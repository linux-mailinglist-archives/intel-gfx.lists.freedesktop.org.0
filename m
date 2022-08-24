Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 436455A0302
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 22:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9A3C92B4;
	Wed, 24 Aug 2022 20:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 001E0B507A
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347023; x=1692883023;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UXKKg0MC5QqctgPBJEoJPgi0xA5np/gGPABEKlqBcCs=;
 b=RBAPeObbwhCn1wzrpmpJ9G7J2QscO+7Xv5dNmIf2Ujrnb7emD5oE6Kbg
 LWUtBWLydNDizOq9OZUiJTKlk5XOT0TRHIGud6kUBdGJeyDfmsdxp2SM6
 0Upb+SgMbRCtxKXSF7yReDtoIMbUuJrFP36aI9RfeAzPT13sT+EU2645j
 X9bs+KzWMACFtdsV9YXFWilx6NX3EhR/4+A1Q76fiFjE/61NrY3BZ8gSA
 MKA4ZxAlWxwGWt1x+wlSRND22FMy2IEd0l+/utfBbapF01/kqNJwppCLC
 EIeeBc8tAoggZKS7951WRKbyJ7Z6lYzdRUOhC89zDuVsle0aEsJ+sRuOO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294747748"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="294747748"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:17:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="752080665"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga001-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:16:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:38 +0300
Message-Id: <8818a2a4330edb9800f567626958b2de8872aa63.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/38] drm/i915: move dpll under display.dpll
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display dpll related members under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  12 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  24 ++--
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../gpu/drm/i915/display/intel_display_core.h |  21 ++++
 .../drm/i915/display/intel_display_debugfs.c  |   8 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 112 +++++++++---------
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |   4 +-
 drivers/gpu/drm/i915/i915_drv.h               |  21 ----
 9 files changed, 104 insertions(+), 104 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 45b64191735a..3e20b2f65887 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -642,13 +642,13 @@ static void gen11_dsi_gate_clocks(struct intel_encoder *encoder)
 	u32 tmp;
 	enum phy phy;
 
-	mutex_lock(&dev_priv->dpll.lock);
+	mutex_lock(&dev_priv->display.dpll.lock);
 	tmp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	for_each_dsi_phy(phy, intel_dsi->phys)
 		tmp |= ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
 
 	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, tmp);
-	mutex_unlock(&dev_priv->dpll.lock);
+	mutex_unlock(&dev_priv->display.dpll.lock);
 }
 
 static void gen11_dsi_ungate_clocks(struct intel_encoder *encoder)
@@ -658,13 +658,13 @@ static void gen11_dsi_ungate_clocks(struct intel_encoder *encoder)
 	u32 tmp;
 	enum phy phy;
 
-	mutex_lock(&dev_priv->dpll.lock);
+	mutex_lock(&dev_priv->display.dpll.lock);
 	tmp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	for_each_dsi_phy(phy, intel_dsi->phys)
 		tmp &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
 
 	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, tmp);
-	mutex_unlock(&dev_priv->dpll.lock);
+	mutex_unlock(&dev_priv->display.dpll.lock);
 }
 
 static bool gen11_dsi_is_clock_enabled(struct intel_encoder *encoder)
@@ -694,7 +694,7 @@ static void gen11_dsi_map_pll(struct intel_encoder *encoder,
 	enum phy phy;
 	u32 val;
 
-	mutex_lock(&dev_priv->dpll.lock);
+	mutex_lock(&dev_priv->display.dpll.lock);
 
 	val = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	for_each_dsi_phy(phy, intel_dsi->phys) {
@@ -710,7 +710,7 @@ static void gen11_dsi_map_pll(struct intel_encoder *encoder,
 
 	intel_de_posting_read(dev_priv, ICL_DPCLKA_CFGCR0);
 
-	mutex_unlock(&dev_priv->dpll.lock);
+	mutex_unlock(&dev_priv->display.dpll.lock);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6c43a5124cb8..3faebf37f6f1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1425,7 +1425,7 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
 static void _icl_ddi_enable_clock(struct drm_i915_private *i915, i915_reg_t reg,
 				  u32 clk_sel_mask, u32 clk_sel, u32 clk_off)
 {
-	mutex_lock(&i915->dpll.lock);
+	mutex_lock(&i915->display.dpll.lock);
 
 	intel_de_rmw(i915, reg, clk_sel_mask, clk_sel);
 
@@ -1435,17 +1435,17 @@ static void _icl_ddi_enable_clock(struct drm_i915_private *i915, i915_reg_t reg,
 	 */
 	intel_de_rmw(i915, reg, clk_off, 0);
 
-	mutex_unlock(&i915->dpll.lock);
+	mutex_unlock(&i915->display.dpll.lock);
 }
 
 static void _icl_ddi_disable_clock(struct drm_i915_private *i915, i915_reg_t reg,
 				   u32 clk_off)
 {
-	mutex_lock(&i915->dpll.lock);
+	mutex_lock(&i915->display.dpll.lock);
 
 	intel_de_rmw(i915, reg, 0, clk_off);
 
-	mutex_unlock(&i915->dpll.lock);
+	mutex_unlock(&i915->display.dpll.lock);
 }
 
 static bool _icl_ddi_is_clock_enabled(struct drm_i915_private *i915, i915_reg_t reg,
@@ -1720,12 +1720,12 @@ static void icl_ddi_tc_enable_clock(struct intel_encoder *encoder,
 	intel_de_write(i915, DDI_CLK_SEL(port),
 		       icl_pll_to_ddi_clk_sel(encoder, crtc_state));
 
-	mutex_lock(&i915->dpll.lock);
+	mutex_lock(&i915->display.dpll.lock);
 
 	intel_de_rmw(i915, ICL_DPCLKA_CFGCR0,
 		     ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port), 0);
 
-	mutex_unlock(&i915->dpll.lock);
+	mutex_unlock(&i915->display.dpll.lock);
 }
 
 static void icl_ddi_tc_disable_clock(struct intel_encoder *encoder)
@@ -1734,12 +1734,12 @@ static void icl_ddi_tc_disable_clock(struct intel_encoder *encoder)
 	enum tc_port tc_port = intel_port_to_tc(i915, encoder->port);
 	enum port port = encoder->port;
 
-	mutex_lock(&i915->dpll.lock);
+	mutex_lock(&i915->display.dpll.lock);
 
 	intel_de_rmw(i915, ICL_DPCLKA_CFGCR0,
 		     0, ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port));
 
-	mutex_unlock(&i915->dpll.lock);
+	mutex_unlock(&i915->display.dpll.lock);
 
 	intel_de_write(i915, DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
 }
@@ -1824,7 +1824,7 @@ static void skl_ddi_enable_clock(struct intel_encoder *encoder,
 	if (drm_WARN_ON(&i915->drm, !pll))
 		return;
 
-	mutex_lock(&i915->dpll.lock);
+	mutex_lock(&i915->display.dpll.lock);
 
 	intel_de_rmw(i915, DPLL_CTRL2,
 		     DPLL_CTRL2_DDI_CLK_OFF(port) |
@@ -1832,7 +1832,7 @@ static void skl_ddi_enable_clock(struct intel_encoder *encoder,
 		     DPLL_CTRL2_DDI_CLK_SEL(pll->info->id, port) |
 		     DPLL_CTRL2_DDI_SEL_OVERRIDE(port));
 
-	mutex_unlock(&i915->dpll.lock);
+	mutex_unlock(&i915->display.dpll.lock);
 }
 
 static void skl_ddi_disable_clock(struct intel_encoder *encoder)
@@ -1840,12 +1840,12 @@ static void skl_ddi_disable_clock(struct intel_encoder *encoder)
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
 
-	mutex_lock(&i915->dpll.lock);
+	mutex_lock(&i915->display.dpll.lock);
 
 	intel_de_rmw(i915, DPLL_CTRL2,
 		     0, DPLL_CTRL2_DDI_CLK_OFF(port));
 
-	mutex_unlock(&i915->dpll.lock);
+	mutex_unlock(&i915->display.dpll.lock);
 }
 
 static bool skl_ddi_is_clock_enabled(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2620f1d9a35d..41be7e76a921 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1486,7 +1486,7 @@ static void intel_encoders_update_prepare(struct intel_atomic_state *state)
 	 * Make sure the DPLL state is up-to-date for fastset TypeC ports after non-blocking commits.
 	 * TODO: Update the DPLL state for all cases in the encoder->update_prepare() hook.
 	 */
-	if (i915->dpll.mgr) {
+	if (i915->display.dpll.mgr) {
 		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
 			if (intel_crtc_needs_modeset(new_crtc_state))
 				continue;
@@ -5838,7 +5838,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_BOOL(double_wide);
 
-	if (dev_priv->dpll.mgr) {
+	if (dev_priv->display.dpll.mgr) {
 		PIPE_CONF_CHECK_P(shared_dpll);
 
 		PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 5956cb566f9d..34e187f173d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -12,6 +12,7 @@
 
 #include "intel_display.h"
 #include "intel_dmc.h"
+#include "intel_dpll_mgr.h"
 #include "intel_gmbus.h"
 
 struct drm_i915_private;
@@ -23,6 +24,7 @@ struct intel_color_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dpll_funcs;
+struct intel_dpll_mgr;
 struct intel_fdi_funcs;
 struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
@@ -79,6 +81,24 @@ struct intel_audio {
 	} lpe;
 };
 
+/*
+ * dpll and cdclk state is protected by connection_mutex dpll.lock serializes
+ * intel_{prepare,enable,disable}_shared_dpll.  Must be global rather than per
+ * dpll, because on some platforms plls share registers.
+ */
+struct intel_dpll {
+	struct mutex lock;
+
+	int num_shared_dpll;
+	struct intel_shared_dpll shared_dplls[I915_NUM_PLLS];
+	const struct intel_dpll_mgr *mgr;
+
+	struct {
+		int nssc;
+		int ssc;
+	} ref_clks;
+};
+
 struct intel_display {
 	/* Display functions */
 	struct {
@@ -136,6 +156,7 @@ struct intel_display {
 	/* Grouping using named structs. Keep sorted. */
 	struct intel_audio audio;
 	struct intel_dmc dmc;
+	struct intel_dpll dpll;
 };
 
 #endif /* __INTEL_DISPLAY_CORE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 225b6bfc783c..7994f78b889a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -933,11 +933,11 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 	drm_modeset_lock_all(dev);
 
 	seq_printf(m, "PLL refclks: non-SSC: %d kHz, SSC: %d kHz\n",
-		   dev_priv->dpll.ref_clks.nssc,
-		   dev_priv->dpll.ref_clks.ssc);
+		   dev_priv->display.dpll.ref_clks.nssc,
+		   dev_priv->display.dpll.ref_clks.ssc);
 
-	for (i = 0; i < dev_priv->dpll.num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &dev_priv->dpll.shared_dplls[i];
+	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
+		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
 
 		seq_printf(m, "DPLL%i: %s, id: %i\n", i, pll->info->name,
 			   pll->info->id);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 118598c9a809..bbe142056c7c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -113,8 +113,8 @@ intel_atomic_duplicate_dpll_state(struct drm_i915_private *dev_priv,
 	enum intel_dpll_id i;
 
 	/* Copy shared dpll state */
-	for (i = 0; i < dev_priv->dpll.num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &dev_priv->dpll.shared_dplls[i];
+	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
+		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
 
 		shared_dpll[i] = pll->state;
 	}
@@ -149,7 +149,7 @@ struct intel_shared_dpll *
 intel_get_shared_dpll_by_id(struct drm_i915_private *dev_priv,
 			    enum intel_dpll_id id)
 {
-	return &dev_priv->dpll.shared_dplls[id];
+	return &dev_priv->display.dpll.shared_dplls[id];
 }
 
 /**
@@ -164,11 +164,11 @@ enum intel_dpll_id
 intel_get_shared_dpll_id(struct drm_i915_private *dev_priv,
 			 struct intel_shared_dpll *pll)
 {
-	long pll_idx = pll - dev_priv->dpll.shared_dplls;
+	long pll_idx = pll - dev_priv->display.dpll.shared_dplls;
 
 	if (drm_WARN_ON(&dev_priv->drm,
 			pll_idx < 0 ||
-			pll_idx >= dev_priv->dpll.num_shared_dpll))
+			pll_idx >= dev_priv->display.dpll.num_shared_dpll))
 		return -1;
 
 	return pll_idx;
@@ -245,7 +245,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	if (drm_WARN_ON(&dev_priv->drm, pll == NULL))
 		return;
 
-	mutex_lock(&dev_priv->dpll.lock);
+	mutex_lock(&dev_priv->display.dpll.lock);
 	old_mask = pll->active_mask;
 
 	if (drm_WARN_ON(&dev_priv->drm, !(pll->state.pipe_mask & pipe_mask)) ||
@@ -271,7 +271,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	pll->on = true;
 
 out:
-	mutex_unlock(&dev_priv->dpll.lock);
+	mutex_unlock(&dev_priv->display.dpll.lock);
 }
 
 /**
@@ -294,7 +294,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	if (pll == NULL)
 		return;
 
-	mutex_lock(&dev_priv->dpll.lock);
+	mutex_lock(&dev_priv->display.dpll.lock);
 	if (drm_WARN(&dev_priv->drm, !(pll->active_mask & pipe_mask),
 		     "%s not used by [CRTC:%d:%s]\n", pll->info->name,
 		     crtc->base.base.id, crtc->base.name))
@@ -317,7 +317,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	pll->on = false;
 
 out:
-	mutex_unlock(&dev_priv->dpll.lock);
+	mutex_unlock(&dev_priv->display.dpll.lock);
 }
 
 static struct intel_shared_dpll *
@@ -336,7 +336,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~(BIT(I915_NUM_PLLS) - 1));
 
 	for_each_set_bit(i, &dpll_mask, I915_NUM_PLLS) {
-		pll = &dev_priv->dpll.shared_dplls[i];
+		pll = &dev_priv->display.dpll.shared_dplls[i];
 
 		/* Only want to check enabled timings first */
 		if (shared_dpll[i].pipe_mask == 0) {
@@ -436,9 +436,9 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 	if (!state->dpll_set)
 		return;
 
-	for (i = 0; i < dev_priv->dpll.num_shared_dpll; i++) {
+	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
 		struct intel_shared_dpll *pll =
-			&dev_priv->dpll.shared_dplls[i];
+			&dev_priv->display.dpll.shared_dplls[i];
 
 		swap(pll->state, shared_dpll[i]);
 	}
@@ -537,7 +537,7 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
 	if (HAS_PCH_IBX(dev_priv)) {
 		/* Ironlake PCH has a fixed PLL->PCH pipe mapping. */
 		i = (enum intel_dpll_id) crtc->pipe;
-		pll = &dev_priv->dpll.shared_dplls[i];
+		pll = &dev_priv->display.dpll.shared_dplls[i];
 
 		drm_dbg_kms(&dev_priv->drm,
 			    "[CRTC:%d:%s] using pre-allocated %s\n",
@@ -948,7 +948,7 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 	case WRPLL_REF_SPECIAL_HSW:
 		/* Muxed-SSC for BDW, non-SSC for non-ULT HSW. */
 		if (IS_HASWELL(dev_priv) && !IS_HSW_ULT(dev_priv)) {
-			refclk = dev_priv->dpll.ref_clks.nssc;
+			refclk = dev_priv->display.dpll.ref_clks.nssc;
 			break;
 		}
 		fallthrough;
@@ -958,7 +958,7 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 		 * code only cares about 5% accuracy, and spread is a max of
 		 * 0.5% downspread.
 		 */
-		refclk = dev_priv->dpll.ref_clks.ssc;
+		refclk = dev_priv->display.dpll.ref_clks.ssc;
 		break;
 	case WRPLL_REF_LCPLL:
 		refclk = 2700000;
@@ -1145,12 +1145,12 @@ static int hsw_get_dpll(struct intel_atomic_state *state,
 
 static void hsw_update_dpll_ref_clks(struct drm_i915_private *i915)
 {
-	i915->dpll.ref_clks.ssc = 135000;
+	i915->display.dpll.ref_clks.ssc = 135000;
 	/* Non-SSC is only used on non-ULT HSW. */
 	if (intel_de_read(i915, FUSE_STRAP3) & HSW_REF_CLK_SELECT)
-		i915->dpll.ref_clks.nssc = 24000;
+		i915->display.dpll.ref_clks.nssc = 24000;
 	else
-		i915->dpll.ref_clks.nssc = 135000;
+		i915->display.dpll.ref_clks.nssc = 135000;
 }
 
 static void hsw_dump_hw_state(struct drm_i915_private *dev_priv,
@@ -1634,7 +1634,7 @@ static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 	ctrl1 |= DPLL_CTRL1_HDMI_MODE(0);
 
 	ret = skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000,
-				      i915->dpll.ref_clks.nssc, &wrpll_params);
+				      i915->display.dpll.ref_clks.nssc, &wrpll_params);
 	if (ret)
 		return ret;
 
@@ -1659,7 +1659,7 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 				  const struct intel_shared_dpll *pll,
 				  const struct intel_dpll_hw_state *pll_state)
 {
-	int ref_clock = i915->dpll.ref_clks.nssc;
+	int ref_clock = i915->display.dpll.ref_clks.nssc;
 	u32 p0, p1, p2, dco_freq;
 
 	p0 = pll_state->cfgcr2 & DPLL_CFGCR2_PDIV_MASK;
@@ -1858,7 +1858,7 @@ static int skl_ddi_pll_get_freq(struct drm_i915_private *i915,
 static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
 {
 	/* No SSC ref */
-	i915->dpll.ref_clks.nssc = i915->cdclk.hw.ref;
+	i915->display.dpll.ref_clks.nssc = i915->cdclk.hw.ref;
 }
 
 static void skl_dump_hw_state(struct drm_i915_private *dev_priv,
@@ -2171,7 +2171,7 @@ static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	chv_calc_dpll_params(i915->dpll.ref_clks.nssc, clk_div);
+	chv_calc_dpll_params(i915->display.dpll.ref_clks.nssc, clk_div);
 
 	drm_WARN_ON(&i915->drm, clk_div->vco == 0 ||
 		    clk_div->dot != crtc_state->port_clock);
@@ -2279,7 +2279,7 @@ static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
 	clock.p1 = REG_FIELD_GET(PORT_PLL_P1_MASK, pll_state->ebb0);
 	clock.p2 = REG_FIELD_GET(PORT_PLL_P2_MASK, pll_state->ebb0);
 
-	return chv_calc_dpll_params(i915->dpll.ref_clks.nssc, &clock);
+	return chv_calc_dpll_params(i915->display.dpll.ref_clks.nssc, &clock);
 }
 
 static int bxt_compute_dpll(struct intel_atomic_state *state,
@@ -2324,8 +2324,8 @@ static int bxt_get_dpll(struct intel_atomic_state *state,
 
 static void bxt_update_dpll_ref_clks(struct drm_i915_private *i915)
 {
-	i915->dpll.ref_clks.ssc = 100000;
-	i915->dpll.ref_clks.nssc = 100000;
+	i915->display.dpll.ref_clks.ssc = 100000;
+	i915->display.dpll.ref_clks.nssc = 100000;
 	/* DSI non-SSC ref 19.2MHz */
 }
 
@@ -2468,7 +2468,7 @@ ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
 	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
 		 IS_JSL_EHL_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
 		 IS_TIGERLAKE(i915) || IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) &&
-		 i915->dpll.ref_clks.nssc == 38400;
+		 i915->display.dpll.ref_clks.nssc == 38400;
 }
 
 struct icl_combo_pll_params {
@@ -2562,7 +2562,7 @@ static int icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	const struct icl_combo_pll_params *params =
-		dev_priv->dpll.ref_clks.nssc == 24000 ?
+		dev_priv->display.dpll.ref_clks.nssc == 24000 ?
 		icl_dp_combo_pll_24MHz_values :
 		icl_dp_combo_pll_19_2MHz_values;
 	int clock = crtc_state->port_clock;
@@ -2585,9 +2585,9 @@ static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		switch (dev_priv->dpll.ref_clks.nssc) {
+		switch (dev_priv->display.dpll.ref_clks.nssc) {
 		default:
-			MISSING_CASE(dev_priv->dpll.ref_clks.nssc);
+			MISSING_CASE(dev_priv->display.dpll.ref_clks.nssc);
 			fallthrough;
 		case 19200:
 		case 38400:
@@ -2598,9 +2598,9 @@ static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 			break;
 		}
 	} else {
-		switch (dev_priv->dpll.ref_clks.nssc) {
+		switch (dev_priv->display.dpll.ref_clks.nssc) {
 		default:
-			MISSING_CASE(dev_priv->dpll.ref_clks.nssc);
+			MISSING_CASE(dev_priv->display.dpll.ref_clks.nssc);
 			fallthrough;
 		case 19200:
 		case 38400:
@@ -2630,7 +2630,7 @@ static int icl_ddi_tbt_pll_get_freq(struct drm_i915_private *i915,
 
 static int icl_wrpll_ref_clock(struct drm_i915_private *i915)
 {
-	int ref_clock = i915->dpll.ref_clks.nssc;
+	int ref_clock = i915->display.dpll.ref_clks.nssc;
 
 	/*
 	 * For ICL+, the spec states: if reference frequency is 38.4,
@@ -2857,7 +2857,7 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 				 struct intel_dpll_hw_state *pll_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
-	int refclk_khz = dev_priv->dpll.ref_clks.nssc;
+	int refclk_khz = dev_priv->display.dpll.ref_clks.nssc;
 	int clock = crtc_state->port_clock;
 	u32 dco_khz, m1div, m2div_int, m2div_rem, m2div_frac;
 	u32 iref_ndiv, iref_trim, iref_pulse_w;
@@ -3063,7 +3063,7 @@ static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *dev_priv,
 	u32 m1, m2_int, m2_frac, div1, div2, ref_clock;
 	u64 tmp;
 
-	ref_clock = dev_priv->dpll.ref_clks.nssc;
+	ref_clock = dev_priv->display.dpll.ref_clks.nssc;
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		m1 = pll_state->mg_pll_div0 & DKL_PLL_DIV0_FBPREDIV_MASK;
@@ -3440,7 +3440,7 @@ static bool mg_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	hw_state->mg_pll_tdc_coldst_bias =
 		intel_de_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
 
-	if (dev_priv->dpll.ref_clks.nssc == 38400) {
+	if (dev_priv->display.dpll.ref_clks.nssc == 38400) {
 		hw_state->mg_pll_tdc_coldst_bias_mask = MG_PLL_TDC_COLDST_COLDSTART;
 		hw_state->mg_pll_bias_mask = 0;
 	} else {
@@ -3967,7 +3967,7 @@ static void mg_pll_disable(struct drm_i915_private *dev_priv,
 static void icl_update_dpll_ref_clks(struct drm_i915_private *i915)
 {
 	/* No SSC ref */
-	i915->dpll.ref_clks.nssc = i915->cdclk.hw.ref;
+	i915->display.dpll.ref_clks.nssc = i915->cdclk.hw.ref;
 }
 
 static void icl_dump_hw_state(struct drm_i915_private *dev_priv,
@@ -4192,7 +4192,7 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 		dpll_mgr = &pch_pll_mgr;
 
 	if (!dpll_mgr) {
-		dev_priv->dpll.num_shared_dpll = 0;
+		dev_priv->display.dpll.num_shared_dpll = 0;
 		return;
 	}
 
@@ -4200,14 +4200,14 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 
 	for (i = 0; dpll_info[i].name; i++) {
 		drm_WARN_ON(&dev_priv->drm, i != dpll_info[i].id);
-		dev_priv->dpll.shared_dplls[i].info = &dpll_info[i];
+		dev_priv->display.dpll.shared_dplls[i].info = &dpll_info[i];
 	}
 
-	dev_priv->dpll.mgr = dpll_mgr;
-	dev_priv->dpll.num_shared_dpll = i;
-	mutex_init(&dev_priv->dpll.lock);
+	dev_priv->display.dpll.mgr = dpll_mgr;
+	dev_priv->display.dpll.num_shared_dpll = i;
+	mutex_init(&dev_priv->display.dpll.lock);
 
-	BUG_ON(dev_priv->dpll.num_shared_dpll > I915_NUM_PLLS);
+	BUG_ON(dev_priv->display.dpll.num_shared_dpll > I915_NUM_PLLS);
 }
 
 /**
@@ -4229,7 +4229,7 @@ int intel_compute_shared_dplls(struct intel_atomic_state *state,
 			       struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll.mgr;
+	const struct intel_dpll_mgr *dpll_mgr = dev_priv->display.dpll.mgr;
 
 	if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
 		return -EINVAL;
@@ -4262,7 +4262,7 @@ int intel_reserve_shared_dplls(struct intel_atomic_state *state,
 			       struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll.mgr;
+	const struct intel_dpll_mgr *dpll_mgr = dev_priv->display.dpll.mgr;
 
 	if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
 		return -EINVAL;
@@ -4285,7 +4285,7 @@ void intel_release_shared_dplls(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll.mgr;
+	const struct intel_dpll_mgr *dpll_mgr = dev_priv->display.dpll.mgr;
 
 	/*
 	 * FIXME: this function is called for every platform having a
@@ -4314,7 +4314,7 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
 			      struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll.mgr;
+	const struct intel_dpll_mgr *dpll_mgr = dev_priv->display.dpll.mgr;
 
 	if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
 		return;
@@ -4385,16 +4385,16 @@ static void readout_dpll_hw_state(struct drm_i915_private *i915,
 
 void intel_dpll_update_ref_clks(struct drm_i915_private *i915)
 {
-	if (i915->dpll.mgr && i915->dpll.mgr->update_ref_clks)
-		i915->dpll.mgr->update_ref_clks(i915);
+	if (i915->display.dpll.mgr && i915->display.dpll.mgr->update_ref_clks)
+		i915->display.dpll.mgr->update_ref_clks(i915);
 }
 
 void intel_dpll_readout_hw_state(struct drm_i915_private *i915)
 {
 	int i;
 
-	for (i = 0; i < i915->dpll.num_shared_dpll; i++)
-		readout_dpll_hw_state(i915, &i915->dpll.shared_dplls[i]);
+	for (i = 0; i < i915->display.dpll.num_shared_dpll; i++)
+		readout_dpll_hw_state(i915, &i915->display.dpll.shared_dplls[i]);
 }
 
 static void sanitize_dpll_state(struct drm_i915_private *i915,
@@ -4420,8 +4420,8 @@ void intel_dpll_sanitize_state(struct drm_i915_private *i915)
 {
 	int i;
 
-	for (i = 0; i < i915->dpll.num_shared_dpll; i++)
-		sanitize_dpll_state(i915, &i915->dpll.shared_dplls[i]);
+	for (i = 0; i < i915->display.dpll.num_shared_dpll; i++)
+		sanitize_dpll_state(i915, &i915->display.dpll.shared_dplls[i]);
 }
 
 /**
@@ -4434,8 +4434,8 @@ void intel_dpll_sanitize_state(struct drm_i915_private *i915)
 void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	if (dev_priv->dpll.mgr) {
-		dev_priv->dpll.mgr->dump_hw_state(dev_priv, hw_state);
+	if (dev_priv->display.dpll.mgr) {
+		dev_priv->display.dpll.mgr->dump_hw_state(dev_priv, hw_state);
 	} else {
 		/* fallback for platforms that don't use the shared dpll
 		 * infrastructure
@@ -4533,7 +4533,7 @@ void intel_shared_dpll_verify_disabled(struct drm_i915_private *i915)
 {
 	int i;
 
-	for (i = 0; i < i915->dpll.num_shared_dpll; i++)
-		verify_single_dpll_state(i915, &i915->dpll.shared_dplls[i],
+	for (i = 0; i < i915->display.dpll.num_shared_dpll; i++)
+		verify_single_dpll_state(i915, &i915->display.dpll.shared_dplls[i],
 					 NULL, NULL);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 9934c8a9e240..ee72400759a3 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -522,7 +522,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 	}
 
 	/* Check if any DPLLs are using the SSC source */
-	for (i = 0; i < dev_priv->dpll.num_shared_dpll; i++) {
+	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
 		u32 temp = intel_de_read(dev_priv, PCH_DPLL(i));
 
 		if (!(temp & DPLL_VCO_ENABLE))
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 61423da36710..daac2050d77d 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -498,7 +498,7 @@ static u32 bdw_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 
 		switch (wrpll_ctl & WRPLL_REF_MASK) {
 		case WRPLL_REF_PCH_SSC:
-			refclk = vgpu->gvt->gt->i915->dpll.ref_clks.ssc;
+			refclk = vgpu->gvt->gt->i915->display.dpll.ref_clks.ssc;
 			break;
 		case WRPLL_REF_LCPLL:
 			refclk = 2700000;
@@ -529,7 +529,7 @@ static u32 bdw_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 {
 	u32 dp_br = 0;
-	int refclk = vgpu->gvt->gt->i915->dpll.ref_clks.nssc;
+	int refclk = vgpu->gvt->gt->i915->display.dpll.ref_clks.nssc;
 	enum dpio_phy phy = DPIO_PHY0;
 	enum dpio_channel ch = DPIO_CH0;
 	struct dpll clock = {0};
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2352969d55ac..9f9954cbaa44 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -41,7 +41,6 @@
 #include "display/intel_display.h"
 #include "display/intel_display_core.h"
 #include "display/intel_display_power.h"
-#include "display/intel_dpll_mgr.h"
 #include "display/intel_dsb.h"
 #include "display/intel_fbc.h"
 #include "display/intel_frontbuffer.h"
@@ -75,7 +74,6 @@
 #include "intel_uncore.h"
 #include "intel_wopcm.h"
 
-struct dpll;
 struct drm_i915_clock_gating_funcs;
 struct drm_i915_gem_object;
 struct drm_i915_private;
@@ -449,25 +447,6 @@ struct drm_i915_private {
 
 	/* Kernel Modesetting */
 
-	/**
-	 * dpll and cdclk state is protected by connection_mutex
-	 * dpll.lock serializes intel_{prepare,enable,disable}_shared_dpll.
-	 * Must be global rather than per dpll, because on some platforms plls
-	 * share registers.
-	 */
-	struct {
-		struct mutex lock;
-
-		int num_shared_dpll;
-		struct intel_shared_dpll shared_dplls[I915_NUM_PLLS];
-		const struct intel_dpll_mgr *mgr;
-
-		struct {
-			int nssc;
-			int ssc;
-		} ref_clks;
-	} dpll;
-
 	struct list_head global_obj_list;
 
 	struct i915_frontbuffer_tracking fb_tracking;
-- 
2.34.1

