Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB52D128164
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 18:28:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82CC96EC7B;
	Fri, 20 Dec 2019 17:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E84C46E10A
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 17:28:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 09:28:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="210875737"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 20 Dec 2019 09:27:59 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 09:27:48 -0800
Message-Id: <20191220172754.3773-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191220172754.3773-1-lucas.demarchi@intel.com>
References: <20191220172754.3773-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/10] drm/i915: prefer 3-letter acronym for
 skylake
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
 drivers/gpu/drm/i915/display/icl_dsi.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 29 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_display.h |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c         |  6 ++--
 7 files changed, 22 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 006b1a297e6f..8435bc5a7a74 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1259,7 +1259,7 @@ static void gen11_dsi_post_disable(struct intel_encoder *encoder,
 
 	intel_dsc_disable(old_crtc_state);
 
-	skylake_scaler_disable(old_crtc_state);
+	skl_scaler_disable(old_crtc_state);
 }
 
 static enum drm_mode_status gen11_dsi_mode_valid(struct drm_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d687c9503025..b52c31721755 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3896,7 +3896,7 @@ static void intel_ddi_post_disable(struct intel_encoder *encoder,
 	intel_dsc_disable(old_crtc_state);
 
 	if (INTEL_GEN(dev_priv) >= 9)
-		skylake_scaler_disable(old_crtc_state);
+		skl_scaler_disable(old_crtc_state);
 	else
 		ironlake_pfit_disable(old_crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b4ea557a4bb5..066e2bb2a400 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -164,7 +164,7 @@ static void vlv_prepare_pll(struct intel_crtc *crtc,
 			    const struct intel_crtc_state *pipe_config);
 static void chv_prepare_pll(struct intel_crtc *crtc,
 			    const struct intel_crtc_state *pipe_config);
-static void skylake_pfit_enable(const struct intel_crtc_state *crtc_state);
+static void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
 static void ironlake_pfit_enable(const struct intel_crtc_state *crtc_state);
 static void intel_modeset_setup_hw_state(struct drm_device *dev,
 					 struct drm_modeset_acquire_ctx *ctx);
@@ -5749,7 +5749,7 @@ static int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-void skylake_scaler_disable(const struct intel_crtc_state *old_crtc_state)
+void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	int i;
@@ -5758,7 +5758,7 @@ void skylake_scaler_disable(const struct intel_crtc_state *old_crtc_state)
 		skl_detach_scaler(crtc, i);
 }
 
-static void skylake_pfit_enable(const struct intel_crtc_state *crtc_state)
+static void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -6595,7 +6595,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
 
 	if (INTEL_GEN(dev_priv) >= 9)
-		skylake_pfit_enable(new_crtc_state);
+		skl_pfit_enable(new_crtc_state);
 	else
 		ironlake_pfit_enable(new_crtc_state);
 
@@ -9868,8 +9868,8 @@ static void ironlake_get_fdi_m_n_config(struct intel_crtc *crtc,
 				     &pipe_config->fdi_m_n, NULL);
 }
 
-static void skylake_get_pfit_config(struct intel_crtc *crtc,
-				    struct intel_crtc_state *pipe_config)
+static void skl_get_pfit_config(struct intel_crtc *crtc,
+				struct intel_crtc_state *pipe_config)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -9900,8 +9900,8 @@ static void skylake_get_pfit_config(struct intel_crtc *crtc,
 }
 
 static void
-skylake_get_initial_plane_config(struct intel_crtc *crtc,
-				 struct intel_initial_plane_config *plane_config)
+skl_get_initial_plane_config(struct intel_crtc *crtc,
+			     struct intel_initial_plane_config *plane_config)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -10267,9 +10267,8 @@ static void bxt_get_ddi_pll(struct drm_i915_private *dev_priv,
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
@@ -10497,7 +10496,7 @@ static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
 	else if (IS_CANNONLAKE(dev_priv))
 		cannonlake_get_ddi_pll(dev_priv, port, pipe_config);
 	else if (IS_GEN9_BC(dev_priv))
-		skylake_get_ddi_pll(dev_priv, port, pipe_config);
+		skl_get_ddi_pll(dev_priv, port, pipe_config);
 	else if (IS_GEN9_LP(dev_priv))
 		bxt_get_ddi_pll(dev_priv, port, pipe_config);
 	else
@@ -10672,7 +10671,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		power_domain_mask |= BIT_ULL(power_domain);
 
 		if (INTEL_GEN(dev_priv) >= 9)
-			skylake_get_pfit_config(crtc, pipe_config);
+			skl_get_pfit_config(crtc, pipe_config);
 		else
 			ironlake_get_pfit_config(crtc, pipe_config);
 	}
@@ -14211,7 +14210,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 		skl_detach_scalers(new_crtc_state);
 
 		if (new_crtc_state->pch_pfit.enabled)
-			skylake_pfit_enable(new_crtc_state);
+			skl_pfit_enable(new_crtc_state);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		if (new_crtc_state->pch_pfit.enabled)
 			ironlake_pfit_enable(new_crtc_state);
@@ -16560,7 +16559,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 	if (INTEL_GEN(dev_priv) >= 9) {
 		dev_priv->display.get_pipe_config = hsw_get_pipe_config;
 		dev_priv->display.get_initial_plane_config =
-			skylake_get_initial_plane_config;
+			skl_get_initial_plane_config;
 		dev_priv->display.crtc_compute_clock = hsw_crtc_compute_clock;
 		dev_priv->display.crtc_enable = hsw_crtc_enable;
 		dev_priv->display.crtc_disable = hsw_crtc_disable;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index ff496cfbd4ab..5093ea5dcd95 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -578,7 +578,7 @@ void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
 
 u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_center);
 int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state);
-void skylake_scaler_disable(const struct intel_crtc_state *old_crtc_state);
+void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
 void ironlake_pfit_disable(const struct intel_crtc_state *old_crtc_state);
 u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7aa0975c33b7..01b4608ab56c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -248,7 +248,7 @@ static void intel_mst_post_disable_dp(struct intel_encoder *encoder,
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
 	if (INTEL_GEN(dev_priv) >= 9)
-		skylake_scaler_disable(old_crtc_state);
+		skl_scaler_disable(old_crtc_state);
 	else
 		ironlake_pfit_disable(old_crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 21e820299107..70ab378803c4 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -895,7 +895,7 @@ static void intel_dsi_post_disable(struct intel_encoder *encoder,
 	if (IS_GEN9_LP(dev_priv)) {
 		intel_crtc_vblank_off(old_crtc_state);
 
-		skylake_scaler_disable(old_crtc_state);
+		skl_scaler_disable(old_crtc_state);
 	}
 
 	if (is_vid_mode(intel_dsi)) {
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 893249ea48d4..cbdeda608359 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -127,7 +127,7 @@ struct drm_i915_mocs_table {
 		   LE_0_PAGETABLE | LE_TC_2_LLC_ELLC | LE_LRUM(3), \
 		   L3_3_WB)
 
-static const struct drm_i915_mocs_entry skylake_mocs_table[] = {
+static const struct drm_i915_mocs_entry skl_mocs_table[] = {
 	GEN9_MOCS_ENTRIES,
 	MOCS_ENTRY(I915_MOCS_CACHED,
 		   LE_3_WB | LE_TC_2_LLC_ELLC | LE_LRUM(3),
@@ -292,9 +292,9 @@ static bool get_mocs_settings(const struct drm_i915_private *i915,
 		table->table = icelake_mocs_table;
 		table->n_entries = GEN11_NUM_MOCS_ENTRIES;
 	} else if (IS_GEN9_BC(i915) || IS_CANNONLAKE(i915)) {
-		table->size  = ARRAY_SIZE(skylake_mocs_table);
+		table->size  = ARRAY_SIZE(skl_mocs_table);
 		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
-		table->table = skylake_mocs_table;
+		table->table = skl_mocs_table;
 	} else if (IS_GEN9_LP(i915)) {
 		table->size  = ARRAY_SIZE(broxton_mocs_table);
 		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
