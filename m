Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E53201709CA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 21:35:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E996EBCD;
	Wed, 26 Feb 2020 20:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DDFE6EBBB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 20:35:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 12:35:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="238154972"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 26 Feb 2020 12:35:36 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 22:34:45 +0200
Message-Id: <20200226203455.23032-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
References: <20200226203455.23032-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/13] drm/i915: Keep the global DPLL state in a
 DPLL specific struct
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

For clarity add a new DPLL specific struct to the i915 device struct and
move all DPLL fields into it. Accordingly remove the dpll_ prefixes, as
the new struct already provides the required namespacing.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        | 12 ++--
 drivers/gpu/drm/i915/display/intel_ddi.c      | 12 ++--
 drivers/gpu/drm/i915/display/intel_display.c  |  8 ++-
 .../drm/i915/display/intel_display_debugfs.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 60 +++++++++----------
 drivers/gpu/drm/i915/i915_drv.h               | 22 +++----
 6 files changed, 61 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index d842e280699d..c7214ace963a 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -599,13 +599,13 @@ static void gen11_dsi_gate_clocks(struct intel_encoder *encoder)
 	u32 tmp;
 	enum phy phy;
 
-	mutex_lock(&dev_priv->dpll_lock);
+	mutex_lock(&dev_priv->dpll.lock);
 	tmp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	for_each_dsi_phy(phy, intel_dsi->phys)
 		tmp |= ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
 
 	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, tmp);
-	mutex_unlock(&dev_priv->dpll_lock);
+	mutex_unlock(&dev_priv->dpll.lock);
 }
 
 static void gen11_dsi_ungate_clocks(struct intel_encoder *encoder)
@@ -615,13 +615,13 @@ static void gen11_dsi_ungate_clocks(struct intel_encoder *encoder)
 	u32 tmp;
 	enum phy phy;
 
-	mutex_lock(&dev_priv->dpll_lock);
+	mutex_lock(&dev_priv->dpll.lock);
 	tmp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	for_each_dsi_phy(phy, intel_dsi->phys)
 		tmp &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
 
 	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, tmp);
-	mutex_unlock(&dev_priv->dpll_lock);
+	mutex_unlock(&dev_priv->dpll.lock);
 }
 
 static void gen11_dsi_map_pll(struct intel_encoder *encoder,
@@ -633,7 +633,7 @@ static void gen11_dsi_map_pll(struct intel_encoder *encoder,
 	enum phy phy;
 	u32 val;
 
-	mutex_lock(&dev_priv->dpll_lock);
+	mutex_lock(&dev_priv->dpll.lock);
 
 	val = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	for_each_dsi_phy(phy, intel_dsi->phys) {
@@ -652,7 +652,7 @@ static void gen11_dsi_map_pll(struct intel_encoder *encoder,
 
 	intel_de_posting_read(dev_priv, ICL_DPCLKA_CFGCR0);
 
-	mutex_unlock(&dev_priv->dpll_lock);
+	mutex_unlock(&dev_priv->dpll.lock);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9f7d1d7189ae..e09ab0d44afa 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3049,7 +3049,7 @@ static void icl_map_plls_to_ports(struct intel_encoder *encoder,
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 	u32 val;
 
-	mutex_lock(&dev_priv->dpll_lock);
+	mutex_lock(&dev_priv->dpll.lock);
 
 	val = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	drm_WARN_ON(&dev_priv->drm,
@@ -3075,7 +3075,7 @@ static void icl_map_plls_to_ports(struct intel_encoder *encoder,
 	val &= ~icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
 	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
 
-	mutex_unlock(&dev_priv->dpll_lock);
+	mutex_unlock(&dev_priv->dpll.lock);
 }
 
 static void icl_unmap_plls_to_ports(struct intel_encoder *encoder)
@@ -3084,13 +3084,13 @@ static void icl_unmap_plls_to_ports(struct intel_encoder *encoder)
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 	u32 val;
 
-	mutex_lock(&dev_priv->dpll_lock);
+	mutex_lock(&dev_priv->dpll.lock);
 
 	val = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	val |= icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
 	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
 
-	mutex_unlock(&dev_priv->dpll_lock);
+	mutex_unlock(&dev_priv->dpll.lock);
 }
 
 static void icl_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
@@ -3189,7 +3189,7 @@ static void intel_ddi_clk_select(struct intel_encoder *encoder,
 	if (drm_WARN_ON(&dev_priv->drm, !pll))
 		return;
 
-	mutex_lock(&dev_priv->dpll_lock);
+	mutex_lock(&dev_priv->dpll.lock);
 
 	if (INTEL_GEN(dev_priv) >= 11) {
 		if (!intel_phy_is_combo(dev_priv, phy))
@@ -3233,7 +3233,7 @@ static void intel_ddi_clk_select(struct intel_encoder *encoder,
 			       hsw_pll_to_ddi_pll_sel(pll));
 	}
 
-	mutex_unlock(&dev_priv->dpll_lock);
+	mutex_unlock(&dev_priv->dpll.lock);
 }
 
 static void intel_ddi_clk_disable(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6eedf7254563..0506562b2d86 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9552,7 +9552,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 	}
 
 	/* Check if any DPLLs are using the SSC source */
-	for (i = 0; i < dev_priv->num_shared_dpll; i++) {
+	for (i = 0; i < dev_priv->dpll.num_shared_dpll; i++) {
 		u32 temp = intel_de_read(dev_priv, PCH_DPLL(i));
 
 		if (!(temp & DPLL_VCO_ENABLE))
@@ -14369,8 +14369,10 @@ verify_disabled_dpll_state(struct drm_i915_private *dev_priv)
 {
 	int i;
 
-	for (i = 0; i < dev_priv->num_shared_dpll; i++)
-		verify_single_dpll_state(dev_priv, &dev_priv->shared_dplls[i], NULL, NULL);
+	for (i = 0; i < dev_priv->dpll.num_shared_dpll; i++)
+		verify_single_dpll_state(dev_priv,
+					 &dev_priv->dpll.shared_dplls[i],
+					 NULL, NULL);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 46954cc7b6c0..d2461d7946bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -920,8 +920,8 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 	int i;
 
 	drm_modeset_lock_all(dev);
-	for (i = 0; i < dev_priv->num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &dev_priv->shared_dplls[i];
+	for (i = 0; i < dev_priv->dpll.num_shared_dpll; i++) {
+		struct intel_shared_dpll *pll = &dev_priv->dpll.shared_dplls[i];
 
 		seq_printf(m, "DPLL%i: %s, id: %i\n", i, pll->info->name,
 			   pll->info->id);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 3a937b94d487..c02de061a166 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -52,8 +52,8 @@ intel_atomic_duplicate_dpll_state(struct drm_i915_private *dev_priv,
 	enum intel_dpll_id i;
 
 	/* Copy shared dpll state */
-	for (i = 0; i < dev_priv->num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &dev_priv->shared_dplls[i];
+	for (i = 0; i < dev_priv->dpll.num_shared_dpll; i++) {
+		struct intel_shared_dpll *pll = &dev_priv->dpll.shared_dplls[i];
 
 		shared_dpll[i] = pll->state;
 	}
@@ -88,7 +88,7 @@ struct intel_shared_dpll *
 intel_get_shared_dpll_by_id(struct drm_i915_private *dev_priv,
 			    enum intel_dpll_id id)
 {
-	return &dev_priv->shared_dplls[id];
+	return &dev_priv->dpll.shared_dplls[id];
 }
 
 /**
@@ -103,11 +103,11 @@ enum intel_dpll_id
 intel_get_shared_dpll_id(struct drm_i915_private *dev_priv,
 			 struct intel_shared_dpll *pll)
 {
-	long pll_idx = pll - dev_priv->shared_dplls;
+	long pll_idx = pll - dev_priv->dpll.shared_dplls;
 
 	if (drm_WARN_ON(&dev_priv->drm,
 			pll_idx < 0 ||
-			pll_idx >= dev_priv->num_shared_dpll))
+			pll_idx >= dev_priv->dpll.num_shared_dpll))
 		return -1;
 
 	return pll_idx;
@@ -147,7 +147,7 @@ void intel_prepare_shared_dpll(const struct intel_crtc_state *crtc_state)
 	if (drm_WARN_ON(&dev_priv->drm, pll == NULL))
 		return;
 
-	mutex_lock(&dev_priv->dpll_lock);
+	mutex_lock(&dev_priv->dpll.lock);
 	drm_WARN_ON(&dev_priv->drm, !pll->state.crtc_mask);
 	if (!pll->active_mask) {
 		drm_dbg(&dev_priv->drm, "setting up %s\n", pll->info->name);
@@ -156,7 +156,7 @@ void intel_prepare_shared_dpll(const struct intel_crtc_state *crtc_state)
 
 		pll->info->funcs->prepare(dev_priv, pll);
 	}
-	mutex_unlock(&dev_priv->dpll_lock);
+	mutex_unlock(&dev_priv->dpll.lock);
 }
 
 /**
@@ -176,7 +176,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	if (drm_WARN_ON(&dev_priv->drm, pll == NULL))
 		return;
 
-	mutex_lock(&dev_priv->dpll_lock);
+	mutex_lock(&dev_priv->dpll.lock);
 	old_mask = pll->active_mask;
 
 	if (drm_WARN_ON(&dev_priv->drm, !(pll->state.crtc_mask & crtc_mask)) ||
@@ -202,7 +202,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	pll->on = true;
 
 out:
-	mutex_unlock(&dev_priv->dpll_lock);
+	mutex_unlock(&dev_priv->dpll.lock);
 }
 
 /**
@@ -225,7 +225,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	if (pll == NULL)
 		return;
 
-	mutex_lock(&dev_priv->dpll_lock);
+	mutex_lock(&dev_priv->dpll.lock);
 	if (drm_WARN_ON(&dev_priv->drm, !(pll->active_mask & crtc_mask)))
 		goto out;
 
@@ -246,7 +246,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	pll->on = false;
 
 out:
-	mutex_unlock(&dev_priv->dpll_lock);
+	mutex_unlock(&dev_priv->dpll.lock);
 }
 
 static struct intel_shared_dpll *
@@ -265,7 +265,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~(BIT(I915_NUM_PLLS) - 1));
 
 	for_each_set_bit(i, &dpll_mask, I915_NUM_PLLS) {
-		pll = &dev_priv->shared_dplls[i];
+		pll = &dev_priv->dpll.shared_dplls[i];
 
 		/* Only want to check enabled timings first */
 		if (shared_dpll[i].crtc_mask == 0) {
@@ -365,9 +365,9 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 	if (!state->dpll_set)
 		return;
 
-	for (i = 0; i < dev_priv->num_shared_dpll; i++) {
+	for (i = 0; i < dev_priv->dpll.num_shared_dpll; i++) {
 		struct intel_shared_dpll *pll =
-			&dev_priv->shared_dplls[i];
+			&dev_priv->dpll.shared_dplls[i];
 
 		swap(pll->state, shared_dpll[i]);
 	}
@@ -465,7 +465,7 @@ static bool ibx_get_dpll(struct intel_atomic_state *state,
 	if (HAS_PCH_IBX(dev_priv)) {
 		/* Ironlake PCH has a fixed PLL->PCH pipe mapping. */
 		i = (enum intel_dpll_id) crtc->pipe;
-		pll = &dev_priv->shared_dplls[i];
+		pll = &dev_priv->dpll.shared_dplls[i];
 
 		drm_dbg_kms(&dev_priv->drm,
 			    "[CRTC:%d:%s] using pre-allocated %s\n",
@@ -3817,7 +3817,7 @@ void intel_shared_dpll_init(struct drm_device *dev)
 		dpll_mgr = &pch_pll_mgr;
 
 	if (!dpll_mgr) {
-		dev_priv->num_shared_dpll = 0;
+		dev_priv->dpll.num_shared_dpll = 0;
 		return;
 	}
 
@@ -3825,14 +3825,14 @@ void intel_shared_dpll_init(struct drm_device *dev)
 
 	for (i = 0; dpll_info[i].name; i++) {
 		drm_WARN_ON(dev, i != dpll_info[i].id);
-		dev_priv->shared_dplls[i].info = &dpll_info[i];
+		dev_priv->dpll.shared_dplls[i].info = &dpll_info[i];
 	}
 
-	dev_priv->dpll_mgr = dpll_mgr;
-	dev_priv->num_shared_dpll = i;
-	mutex_init(&dev_priv->dpll_lock);
+	dev_priv->dpll.mgr = dpll_mgr;
+	dev_priv->dpll.num_shared_dpll = i;
+	mutex_init(&dev_priv->dpll.lock);
 
-	BUG_ON(dev_priv->num_shared_dpll > I915_NUM_PLLS);
+	BUG_ON(dev_priv->dpll.num_shared_dpll > I915_NUM_PLLS);
 }
 
 /**
@@ -3859,7 +3859,7 @@ bool intel_reserve_shared_dplls(struct intel_atomic_state *state,
 				struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll_mgr;
+	const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll.mgr;
 
 	if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
 		return false;
@@ -3882,7 +3882,7 @@ void intel_release_shared_dplls(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll_mgr;
+	const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll.mgr;
 
 	/*
 	 * FIXME: this function is called for every platform having a
@@ -3911,7 +3911,7 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
 			      struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll_mgr;
+	const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll.mgr;
 
 	if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
 		return;
@@ -3952,8 +3952,8 @@ void intel_dpll_readout_hw_state(struct drm_i915_private *i915)
 {
 	int i;
 
-	for (i = 0; i < i915->num_shared_dpll; i++)
-		readout_dpll_hw_state(i915, &i915->shared_dplls[i]);
+	for (i = 0; i < i915->dpll.num_shared_dpll; i++)
+		readout_dpll_hw_state(i915, &i915->dpll.shared_dplls[i]);
 }
 
 static void sanitize_dpll_state(struct drm_i915_private *i915,
@@ -3974,8 +3974,8 @@ void intel_dpll_sanitize_state(struct drm_i915_private *i915)
 {
 	int i;
 
-	for (i = 0; i < i915->num_shared_dpll; i++)
-		sanitize_dpll_state(i915, &i915->shared_dplls[i]);
+	for (i = 0; i < i915->dpll.num_shared_dpll; i++)
+		sanitize_dpll_state(i915, &i915->dpll.shared_dplls[i]);
 }
 
 /**
@@ -3988,8 +3988,8 @@ void intel_dpll_sanitize_state(struct drm_i915_private *i915)
 void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	if (dev_priv->dpll_mgr) {
-		dev_priv->dpll_mgr->dump_hw_state(dev_priv, hw_state);
+	if (dev_priv->dpll.mgr) {
+		dev_priv->dpll.mgr->dump_hw_state(dev_priv, hw_state);
 	} else {
 		/* fallback for platforms that don't use the shared dpll
 		 * infrastructure
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ea13fc0b409b..fe4eefc5e7e6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1047,17 +1047,19 @@ struct drm_i915_private {
 	struct intel_pipe_crc pipe_crc[I915_MAX_PIPES];
 #endif
 
-	/* dpll and cdclk state is protected by connection_mutex */
-	int num_shared_dpll;
-	struct intel_shared_dpll shared_dplls[I915_NUM_PLLS];
-	const struct intel_dpll_mgr *dpll_mgr;
-
-	/*
-	 * dpll_lock serializes intel_{prepare,enable,disable}_shared_dpll.
-	 * Must be global rather than per dpll, because on some platforms
-	 * plls share registers.
+	/**
+	 * dpll and cdclk state is protected by connection_mutex
+	 * dpll.lock serializes intel_{prepare,enable,disable}_shared_dpll.
+	 * Must be global rather than per dpll, because on some platforms plls
+	 * share registers.
 	 */
-	struct mutex dpll_lock;
+	struct {
+		struct mutex lock;
+
+		int num_shared_dpll;
+		struct intel_shared_dpll shared_dplls[I915_NUM_PLLS];
+		const struct intel_dpll_mgr *mgr;
+	} dpll;
 
 	struct list_head global_obj_list;
 
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
