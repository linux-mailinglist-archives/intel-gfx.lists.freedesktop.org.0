Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1558D123C9C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 02:43:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18F326E218;
	Wed, 18 Dec 2019 01:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5C4F6E20F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 01:43:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 17:43:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,327,1571727600"; d="scan'208";a="247697564"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2019 17:43:17 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 17:42:05 -0800
Message-Id: <20191218014208.7916-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191218014208.7916-1-lucas.demarchi@intel.com>
References: <20191218014208.7916-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/display: prefer 3-letter acronym
 for skylake
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

We are currently using a mix of platform name and acronym to name the
functions. Let's prefer the acronym as it should be clear what platform
it's about and it's shorter, so it doesn't go over 80 columns in a few
cases. This converts skylake to skl where appropriate.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 31 ++++++++++----------
 1 file changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2e1156cc648d..7d14a0144ec3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -166,7 +166,7 @@ static void chv_prepare_pll(struct intel_crtc *crtc,
 			    const struct intel_crtc_state *pipe_config);
 static void intel_crtc_init_scalers(struct intel_crtc *crtc,
 				    struct intel_crtc_state *crtc_state);
-static void skylake_pfit_enable(const struct intel_crtc_state *crtc_state);
+static void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
 static void ironlake_pfit_disable(const struct intel_crtc_state *old_crtc_state);
 static void ironlake_pfit_enable(const struct intel_crtc_state *crtc_state);
 static void intel_modeset_setup_hw_state(struct drm_device *dev,
@@ -5769,7 +5769,7 @@ static int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static void skylake_scaler_disable(struct intel_crtc *crtc)
+static void skl_scaler_disable(struct intel_crtc *crtc)
 {
 	int i;
 
@@ -5777,7 +5777,7 @@ static void skylake_scaler_disable(struct intel_crtc *crtc)
 		skl_detach_scaler(crtc, i);
 }
 
-static void skylake_pfit_enable(const struct intel_crtc_state *crtc_state)
+static void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -6614,7 +6614,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
 
 	if (INTEL_GEN(dev_priv) >= 9)
-		skylake_pfit_enable(new_crtc_state);
+		skl_pfit_enable(new_crtc_state);
 	else
 		ironlake_pfit_enable(new_crtc_state);
 
@@ -6762,7 +6762,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	intel_dsc_disable(old_crtc_state);
 
 	if (INTEL_GEN(dev_priv) >= 9)
-		skylake_scaler_disable(crtc);
+		skl_scaler_disable(crtc);
 	else
 		ironlake_pfit_disable(old_crtc_state);
 
@@ -9910,8 +9910,8 @@ static void ironlake_get_fdi_m_n_config(struct intel_crtc *crtc,
 				     &pipe_config->fdi_m_n, NULL);
 }
 
-static void skylake_get_pfit_config(struct intel_crtc *crtc,
-				    struct intel_crtc_state *pipe_config)
+static void skl_get_pfit_config(struct intel_crtc *crtc,
+				struct intel_crtc_state *pipe_config)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -9942,8 +9942,8 @@ static void skylake_get_pfit_config(struct intel_crtc *crtc,
 }
 
 static void
-skylake_get_initial_plane_config(struct intel_crtc *crtc,
-				 struct intel_initial_plane_config *plane_config)
+skl_get_initial_plane_config(struct intel_crtc *crtc,
+			     struct intel_initial_plane_config *plane_config)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -10309,9 +10309,8 @@ static void bxt_get_ddi_pll(struct drm_i915_private *dev_priv,
 	pipe_config->shared_dpll = intel_get_shared_dpll_by_id(dev_priv, id);
 }
 
-static void skylake_get_ddi_pll(struct drm_i915_private *dev_priv,
-				enum port port,
-				struct intel_crtc_state *pipe_config)
+static void skl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
+			    struct intel_crtc_state *pipe_config)
 {
 	enum intel_dpll_id id;
 	u32 temp;
@@ -10539,7 +10538,7 @@ static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
 	else if (IS_CANNONLAKE(dev_priv))
 		cannonlake_get_ddi_pll(dev_priv, port, pipe_config);
 	else if (IS_GEN9_BC(dev_priv))
-		skylake_get_ddi_pll(dev_priv, port, pipe_config);
+		skl_get_ddi_pll(dev_priv, port, pipe_config);
 	else if (IS_GEN9_LP(dev_priv))
 		bxt_get_ddi_pll(dev_priv, port, pipe_config);
 	else
@@ -10716,7 +10715,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		power_domain_mask |= BIT_ULL(power_domain);
 
 		if (INTEL_GEN(dev_priv) >= 9)
-			skylake_get_pfit_config(crtc, pipe_config);
+			skl_get_pfit_config(crtc, pipe_config);
 		else
 			ironlake_get_pfit_config(crtc, pipe_config);
 	}
@@ -14245,7 +14244,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 		skl_detach_scalers(new_crtc_state);
 
 		if (new_crtc_state->pch_pfit.enabled)
-			skylake_pfit_enable(new_crtc_state);
+			skl_pfit_enable(new_crtc_state);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		if (new_crtc_state->pch_pfit.enabled)
 			ironlake_pfit_enable(new_crtc_state);
@@ -16604,7 +16603,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 	if (INTEL_GEN(dev_priv) >= 9) {
 		dev_priv->display.get_pipe_config = hsw_get_pipe_config;
 		dev_priv->display.get_initial_plane_config =
-			skylake_get_initial_plane_config;
+			skl_get_initial_plane_config;
 		dev_priv->display.crtc_compute_clock = hsw_crtc_compute_clock;
 		dev_priv->display.crtc_enable = hsw_crtc_enable;
 		dev_priv->display.crtc_disable = hsw_crtc_disable;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
