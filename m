Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AB816539E
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 01:32:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 252696E891;
	Thu, 20 Feb 2020 00:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD5046E891
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 00:32:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 16:32:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,462,1574150400"; d="scan'208";a="229968735"
Received: from invictus.jf.intel.com ([10.165.21.212])
 by fmsmga008.fm.intel.com with ESMTP; 19 Feb 2020 16:32:20 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Feb 2020 16:32:50 -0800
Message-Id: <20200220003250.23248-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/ehl: Donot reuse icl get and put
 dplls
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Elkhartlake does not have as many PLL combinations as Icelake.
Use a simpler get pll function and reuse intel_put_pll for ehl.

v2: Fix the build error

Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 11 +++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 57 +++++++++++++++----
 2 files changed, 54 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ee7d54ccd3e6..9bb6ccb5b3ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10763,10 +10763,15 @@ static void icl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
 		return;
 	}
 
-	pipe_config->icl_port_dplls[port_dpll_id].pll =
-		intel_get_shared_dpll_by_id(dev_priv, id);
+	if (!IS_ELKHARTLAKE(dev_priv)) {
+		pipe_config->icl_port_dplls[port_dpll_id].pll =
+			intel_get_shared_dpll_by_id(dev_priv, id);
 
-	icl_set_active_port_dpll(pipe_config, port_dpll_id);
+		icl_set_active_port_dpll(pipe_config, port_dpll_id);
+	} else {
+		pipe_config->shared_dpll =
+			intel_get_shared_dpll_by_id(dev_priv, id);
+	}
 }
 
 static void bxt_get_ddi_pll(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index e5bfe5245276..6092abc2b875 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3016,8 +3016,7 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct icl_port_dpll *port_dpll =
 		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum port port = encoder->port;
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	unsigned long dpll_mask;
 
 	if (!icl_calc_dpll_state(crtc_state, encoder, &port_dpll->hw_state)) {
@@ -3027,13 +3026,7 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 		return false;
 	}
 
-	if (IS_ELKHARTLAKE(dev_priv) && port != PORT_A)
-		dpll_mask =
-			BIT(DPLL_ID_EHL_DPLL4) |
-			BIT(DPLL_ID_ICL_DPLL1) |
-			BIT(DPLL_ID_ICL_DPLL0);
-	else
-		dpll_mask = BIT(DPLL_ID_ICL_DPLL1) | BIT(DPLL_ID_ICL_DPLL0);
+	dpll_mask = BIT(DPLL_ID_ICL_DPLL1) | BIT(DPLL_ID_ICL_DPLL0);
 
 	port_dpll->pll = intel_find_shared_dpll(state, crtc,
 						&port_dpll->hw_state,
@@ -3154,6 +3147,48 @@ static void icl_put_dplls(struct intel_atomic_state *state,
 	}
 }
 
+static bool ehl_get_dpll(struct intel_atomic_state *state,
+			 struct intel_crtc *crtc,
+			 struct intel_encoder *encoder)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_shared_dpll *pll;
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum port port = encoder->port;
+	unsigned long dpll_mask;
+
+
+	if (!icl_calc_dpll_state(crtc_state, encoder, &crtc_state->dpll_hw_state)) {
+		DRM_DEBUG_KMS("Could not calculate combo PHY PLL state.\n");
+
+		return false;
+	}
+
+	if (IS_ELKHARTLAKE(dev_priv) && port != PORT_A)
+		dpll_mask =
+			BIT(DPLL_ID_EHL_DPLL4) |
+			BIT(DPLL_ID_ICL_DPLL1) |
+			BIT(DPLL_ID_ICL_DPLL0);
+	else
+		dpll_mask = BIT(DPLL_ID_ICL_DPLL1) | BIT(DPLL_ID_ICL_DPLL0);
+
+	pll = intel_find_shared_dpll(state, crtc,
+				     &crtc_state->dpll_hw_state,
+				     dpll_mask);
+	if (!pll) {
+		DRM_DEBUG_KMS("No PLL selected\n");
+		return false;
+	}
+
+	intel_reference_shared_dpll(state, crtc,
+				    pll, &crtc_state->dpll_hw_state);
+
+	crtc_state->shared_dpll = pll;
+
+	return true;
+}
+
 static bool mg_pll_get_hw_state(struct drm_i915_private *dev_priv,
 				struct intel_shared_dpll *pll,
 				struct intel_dpll_hw_state *hw_state)
@@ -3751,8 +3786,8 @@ static const struct dpll_info ehl_plls[] = {
 
 static const struct intel_dpll_mgr ehl_pll_mgr = {
 	.dpll_info = ehl_plls,
-	.get_dplls = icl_get_dplls,
-	.put_dplls = icl_put_dplls,
+	.get_dplls = ehl_get_dpll,
+	.put_dplls = intel_put_dpll,
 	.dump_hw_state = icl_dump_hw_state,
 };
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
