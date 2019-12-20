Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE5D128165
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 18:28:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B954E6EC7C;
	Fri, 20 Dec 2019 17:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB286E116
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 17:28:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 09:28:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="210875734"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 20 Dec 2019 09:27:59 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 09:27:47 -0800
Message-Id: <20191220172754.3773-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191220172754.3773-1-lucas.demarchi@intel.com>
References: <20191220172754.3773-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/10] drm/i915: prefer 3-letter acronym for
 haswell
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
cases. This converts haswell to hsw where appropriate.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c | 57 ++++++++++----------
 drivers/gpu/drm/i915/intel_device_info.c     |  4 +-
 3 files changed, 32 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c9ba7d7f3787..d687c9503025 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3458,14 +3458,14 @@ static void tgl_ddi_pre_enable_dp(struct intel_encoder *encoder,
 	 * (DFLEXDPSP.DPX4TXLATC)
 	 *
 	 * This was done before tgl_ddi_pre_enable_dp by
-	 * haswell_crtc_enable()->intel_encoders_pre_pll_enable().
+	 * hsw_crtc_enable()->intel_encoders_pre_pll_enable().
 	 */
 
 	/*
 	 * 4. Enable the port PLL.
 	 *
 	 * The PLL enabling itself was already done before this function by
-	 * haswell_crtc_enable()->intel_enable_shared_dpll().  We need only
+	 * hsw_crtc_enable()->intel_enable_shared_dpll().  We need only
 	 * configure the PLL to port mapping here.
 	 */
 	intel_ddi_clk_select(encoder, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7ad9c1f129c1..b4ea557a4bb5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -158,7 +158,7 @@ static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_sta
 					 const struct intel_link_m_n *m2_n2);
 static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void ironlake_set_pipeconf(const struct intel_crtc_state *crtc_state);
-static void haswell_set_pipeconf(const struct intel_crtc_state *crtc_state);
+static void hsw_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state);
 static void vlv_prepare_pll(struct intel_crtc *crtc,
 			    const struct intel_crtc_state *pipe_config);
@@ -6538,8 +6538,8 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 	I915_WRITE(reg, val);
 }
 
-static void haswell_crtc_enable(struct intel_atomic_state *state,
-				struct intel_crtc *crtc)
+static void hsw_crtc_enable(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -6580,7 +6580,7 @@ static void haswell_crtc_enable(struct intel_atomic_state *state,
 
 	if (!transcoder_is_dsi(cpu_transcoder)) {
 		hsw_set_frame_start_delay(new_crtc_state);
-		haswell_set_pipeconf(new_crtc_state);
+		hsw_set_pipeconf(new_crtc_state);
 	}
 
 	if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
@@ -6718,8 +6718,8 @@ static void ironlake_crtc_disable(struct intel_atomic_state *state,
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
 }
 
-static void haswell_crtc_disable(struct intel_atomic_state *state,
-				 struct intel_crtc *crtc)
+static void hsw_crtc_disable(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
 	/*
 	 * FIXME collapse everything to one hook.
@@ -9535,7 +9535,7 @@ static void ironlake_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	POSTING_READ(PIPECONF(pipe));
 }
 
-static void haswell_set_pipeconf(const struct intel_crtc_state *crtc_state)
+static void hsw_set_pipeconf(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -10167,8 +10167,9 @@ static bool ironlake_get_pipe_config(struct intel_crtc *crtc,
 
 	return ret;
 }
-static int haswell_crtc_compute_clock(struct intel_crtc *crtc,
-				      struct intel_crtc_state *crtc_state)
+
+static int hsw_crtc_compute_clock(struct intel_crtc *crtc,
+				  struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_atomic_state *state =
@@ -10282,9 +10283,8 @@ static void skylake_get_ddi_pll(struct drm_i915_private *dev_priv,
 	pipe_config->shared_dpll = intel_get_shared_dpll_by_id(dev_priv, id);
 }
 
-static void haswell_get_ddi_pll(struct drm_i915_private *dev_priv,
-				enum port port,
-				struct intel_crtc_state *pipe_config)
+static void hsw_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
+			    struct intel_crtc_state *pipe_config)
 {
 	enum intel_dpll_id id;
 	u32 ddi_pll_sel = I915_READ(PORT_CLK_SEL(port));
@@ -10472,8 +10472,8 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 	return transcoder_is_dsi(pipe_config->cpu_transcoder);
 }
 
-static void haswell_get_ddi_port_state(struct intel_crtc *crtc,
-				       struct intel_crtc_state *pipe_config)
+static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
+				   struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
@@ -10501,7 +10501,7 @@ static void haswell_get_ddi_port_state(struct intel_crtc *crtc,
 	else if (IS_GEN9_LP(dev_priv))
 		bxt_get_ddi_pll(dev_priv, port, pipe_config);
 	else
-		haswell_get_ddi_pll(dev_priv, port, pipe_config);
+		hsw_get_ddi_pll(dev_priv, port, pipe_config);
 
 	pll = pipe_config->shared_dpll;
 	if (pll) {
@@ -10579,8 +10579,8 @@ static void icelake_get_trans_port_sync_config(struct intel_crtc_state *crtc_sta
 		crtc_state->sync_mode_slaves_mask);
 }
 
-static bool haswell_get_pipe_config(struct intel_crtc *crtc,
-				    struct intel_crtc_state *pipe_config)
+static bool hsw_get_pipe_config(struct intel_crtc *crtc,
+				struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM], wf;
@@ -10615,7 +10615,7 @@ static bool haswell_get_pipe_config(struct intel_crtc *crtc,
 
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
 	    INTEL_GEN(dev_priv) >= 11) {
-		haswell_get_ddi_port_state(crtc, pipe_config);
+		hsw_get_ddi_port_state(crtc, pipe_config);
 		intel_get_pipe_timings(crtc, pipe_config);
 	}
 
@@ -13787,7 +13787,7 @@ static void intel_modeset_clear_plls(struct intel_atomic_state *state)
  * multiple pipes, and planes are enabled after the pipe, we need to wait at
  * least 2 vblanks on the first pipe before enabling planes on the second pipe.
  */
-static int haswell_mode_set_planes_workaround(struct intel_atomic_state *state)
+static int hsw_mode_set_planes_workaround(struct intel_atomic_state *state)
 {
 	struct intel_crtc_state *crtc_state;
 	struct intel_crtc *crtc;
@@ -13882,7 +13882,7 @@ static int intel_modeset_checks(struct intel_atomic_state *state)
 	intel_modeset_clear_plls(state);
 
 	if (IS_HASWELL(dev_priv))
-		return haswell_mode_set_planes_workaround(state);
+		return hsw_mode_set_planes_workaround(state);
 
 	return 0;
 }
@@ -16558,21 +16558,20 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 	intel_init_cdclk_hooks(dev_priv);
 
 	if (INTEL_GEN(dev_priv) >= 9) {
-		dev_priv->display.get_pipe_config = haswell_get_pipe_config;
+		dev_priv->display.get_pipe_config = hsw_get_pipe_config;
 		dev_priv->display.get_initial_plane_config =
 			skylake_get_initial_plane_config;
-		dev_priv->display.crtc_compute_clock =
-			haswell_crtc_compute_clock;
-		dev_priv->display.crtc_enable = haswell_crtc_enable;
-		dev_priv->display.crtc_disable = haswell_crtc_disable;
+		dev_priv->display.crtc_compute_clock = hsw_crtc_compute_clock;
+		dev_priv->display.crtc_enable = hsw_crtc_enable;
+		dev_priv->display.crtc_disable = hsw_crtc_disable;
 	} else if (HAS_DDI(dev_priv)) {
-		dev_priv->display.get_pipe_config = haswell_get_pipe_config;
+		dev_priv->display.get_pipe_config = hsw_get_pipe_config;
 		dev_priv->display.get_initial_plane_config =
 			i9xx_get_initial_plane_config;
 		dev_priv->display.crtc_compute_clock =
-			haswell_crtc_compute_clock;
-		dev_priv->display.crtc_enable = haswell_crtc_enable;
-		dev_priv->display.crtc_disable = haswell_crtc_disable;
+			hsw_crtc_compute_clock;
+		dev_priv->display.crtc_enable = hsw_crtc_enable;
+		dev_priv->display.crtc_disable = hsw_crtc_disable;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		dev_priv->display.get_pipe_config = ironlake_get_pipe_config;
 		dev_priv->display.get_initial_plane_config =
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 1acb5db77431..ca7a42e1d769 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -600,7 +600,7 @@ static void broadwell_sseu_info_init(struct drm_i915_private *dev_priv)
 	sseu->has_eu_pg = 0;
 }
 
-static void haswell_sseu_info_init(struct drm_i915_private *dev_priv)
+static void hsw_sseu_info_init(struct drm_i915_private *dev_priv)
 {
 	struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
 	u32 fuse1;
@@ -1021,7 +1021,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 
 	/* Initialize slice/subslice/EU info */
 	if (IS_HASWELL(dev_priv))
-		haswell_sseu_info_init(dev_priv);
+		hsw_sseu_info_init(dev_priv);
 	else if (IS_CHERRYVIEW(dev_priv))
 		cherryview_sseu_info_init(dev_priv);
 	else if (IS_BROADWELL(dev_priv))
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
