Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 474F01709C6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 21:35:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 649AC6EBC2;
	Wed, 26 Feb 2020 20:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B5486EBBB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 20:35:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 12:35:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="238154957"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 26 Feb 2020 12:35:32 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 22:34:44 +0200
Message-Id: <20200226203455.23032-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
References: <20200226203455.23032-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/13] drm/i915: Move DPLL HW readout/sanitize
 fns to intel_dpll_mgr.c
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

Move the HW readout/sanitize functions to intel_dpll_mgr.c which
contains the rest of shared DPLL functionality.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 44 +-------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 59 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  2 +
 3 files changed, 63 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2fd3ccd33e30..6eedf7254563 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -18329,7 +18329,6 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	u8 active_pipes = 0;
-	int i;
 
 	for_each_intel_crtc(dev, crtc) {
 		struct intel_crtc_state *crtc_state =
@@ -18358,33 +18357,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 
 	readout_plane_state(dev_priv);
 
-	for (i = 0; i < dev_priv->num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &dev_priv->shared_dplls[i];
-
-		pll->on = pll->info->funcs->get_hw_state(dev_priv, pll,
-							&pll->state.hw_state);
-
-		if (IS_ELKHARTLAKE(dev_priv) && pll->on &&
-		    pll->info->id == DPLL_ID_EHL_DPLL4) {
-			pll->wakeref = intel_display_power_get(dev_priv,
-							       POWER_DOMAIN_DPLL_DC_OFF);
-		}
-
-		pll->state.crtc_mask = 0;
-		for_each_intel_crtc(dev, crtc) {
-			struct intel_crtc_state *crtc_state =
-				to_intel_crtc_state(crtc->base.state);
-
-			if (crtc_state->hw.active &&
-			    crtc_state->shared_dpll == pll)
-				pll->state.crtc_mask |= 1 << crtc->pipe;
-		}
-		pll->active_mask = pll->state.crtc_mask;
-
-		drm_dbg_kms(&dev_priv->drm,
-			    "%s hw state readout: crtc_mask 0x%08x, on %i\n",
-			    pll->info->name, pll->state.crtc_mask, pll->on);
-	}
+	intel_dpll_readout_hw_state(dev_priv);
 
 	for_each_intel_encoder(dev, encoder) {
 		pipe = 0;
@@ -18641,7 +18614,6 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
 	struct intel_encoder *encoder;
 	struct intel_crtc *crtc;
 	intel_wakeref_t wakeref;
-	int i;
 
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
 
@@ -18694,19 +18666,7 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
 
 	intel_modeset_update_connector_atomic_state(dev);
 
-	for (i = 0; i < dev_priv->num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &dev_priv->shared_dplls[i];
-
-		if (!pll->on || pll->active_mask)
-			continue;
-
-		drm_dbg_kms(&dev_priv->drm,
-			    "%s enabled but not in use, disabling\n",
-			    pll->info->name);
-
-		pll->info->funcs->disable(dev_priv, pll);
-		pll->on = false;
-	}
+	intel_dpll_sanitize_state(dev_priv);
 
 	if (IS_G4X(dev_priv)) {
 		g4x_wm_get_hw_state(dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6cf291754390..3a937b94d487 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3919,6 +3919,65 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
 	dpll_mgr->update_active_dpll(state, crtc, encoder);
 }
 
+static void readout_dpll_hw_state(struct drm_i915_private *i915,
+				  struct intel_shared_dpll *pll)
+{
+	struct intel_crtc *crtc;
+
+	pll->on = pll->info->funcs->get_hw_state(i915, pll,
+						 &pll->state.hw_state);
+
+	if (IS_ELKHARTLAKE(i915) && pll->on &&
+	    pll->info->id == DPLL_ID_EHL_DPLL4) {
+		pll->wakeref = intel_display_power_get(i915,
+						       POWER_DOMAIN_DPLL_DC_OFF);
+	}
+
+	pll->state.crtc_mask = 0;
+	for_each_intel_crtc(&i915->drm, crtc) {
+		struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+
+		if (crtc_state->hw.active && crtc_state->shared_dpll == pll)
+			pll->state.crtc_mask |= 1 << crtc->pipe;
+	}
+	pll->active_mask = pll->state.crtc_mask;
+
+	drm_dbg_kms(&i915->drm,
+		    "%s hw state readout: crtc_mask 0x%08x, on %i\n",
+		    pll->info->name, pll->state.crtc_mask, pll->on);
+}
+
+void intel_dpll_readout_hw_state(struct drm_i915_private *i915)
+{
+	int i;
+
+	for (i = 0; i < i915->num_shared_dpll; i++)
+		readout_dpll_hw_state(i915, &i915->shared_dplls[i]);
+}
+
+static void sanitize_dpll_state(struct drm_i915_private *i915,
+				struct intel_shared_dpll *pll)
+{
+	if (!pll->on || pll->active_mask)
+		return;
+
+	drm_dbg_kms(&i915->drm,
+		    "%s enabled but not in use, disabling\n",
+		    pll->info->name);
+
+	pll->info->funcs->disable(i915, pll);
+	pll->on = false;
+}
+
+void intel_dpll_sanitize_state(struct drm_i915_private *i915)
+{
+	int i;
+
+	for (i = 0; i < i915->num_shared_dpll; i++)
+		sanitize_dpll_state(i915, &i915->shared_dplls[i]);
+}
+
 /**
  * intel_shared_dpll_dump_hw_state - write hw_state to dmesg
  * @dev_priv: i915 drm device
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 2a104c64291d..fe27a5dfc51e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -377,6 +377,8 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
 void intel_shared_dpll_init(struct drm_device *dev);
+void intel_dpll_readout_hw_state(struct drm_i915_private *dev_priv);
+void intel_dpll_sanitize_state(struct drm_i915_private *dev_priv);
 
 void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state);
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
