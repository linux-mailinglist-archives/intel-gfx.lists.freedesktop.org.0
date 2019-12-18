Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 292BA123C98
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 02:43:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82D26E20F;
	Wed, 18 Dec 2019 01:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819336E215
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 01:43:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 17:43:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,327,1571727600"; d="scan'208";a="247697561"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2019 17:43:16 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 17:42:04 -0800
Message-Id: <20191218014208.7916-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191218014208.7916-1-lucas.demarchi@intel.com>
References: <20191218014208.7916-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/display: prefer 3-letter acronym
 for haswell
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
 2 files changed, 30 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5b6f32517c75..cfce0c64b965 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3457,14 +3457,14 @@ static void tgl_ddi_pre_enable_dp(struct intel_encoder *encoder,
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
index 64e4bfb0dfc9..2e1156cc648d 100644
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
@@ -6557,8 +6557,8 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 	I915_WRITE(reg, val);
 }
 
-static void haswell_crtc_enable(struct intel_atomic_state *state,
-				struct intel_crtc *crtc)
+static void hsw_crtc_enable(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -6599,7 +6599,7 @@ static void haswell_crtc_enable(struct intel_atomic_state *state,
 
 	if (!transcoder_is_dsi(cpu_transcoder)) {
 		hsw_set_frame_start_delay(new_crtc_state);
-		haswell_set_pipeconf(new_crtc_state);
+		hsw_set_pipeconf(new_crtc_state);
 	}
 
 	if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
@@ -6737,8 +6737,8 @@ static void ironlake_crtc_disable(struct intel_atomic_state *state,
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
 }
 
-static void haswell_crtc_disable(struct intel_atomic_state *state,
-				 struct intel_crtc *crtc)
+static void hsw_crtc_disable(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
@@ -9577,7 +9577,7 @@ static void ironlake_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	POSTING_READ(PIPECONF(pipe));
 }
 
-static void haswell_set_pipeconf(const struct intel_crtc_state *crtc_state)
+static void hsw_set_pipeconf(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -10209,8 +10209,9 @@ static bool ironlake_get_pipe_config(struct intel_crtc *crtc,
 
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
@@ -10324,9 +10325,8 @@ static void skylake_get_ddi_pll(struct drm_i915_private *dev_priv,
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
@@ -10514,8 +10514,8 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 	return transcoder_is_dsi(pipe_config->cpu_transcoder);
 }
 
-static void haswell_get_ddi_port_state(struct intel_crtc *crtc,
-				       struct intel_crtc_state *pipe_config)
+static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
+				   struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
@@ -10543,7 +10543,7 @@ static void haswell_get_ddi_port_state(struct intel_crtc *crtc,
 	else if (IS_GEN9_LP(dev_priv))
 		bxt_get_ddi_pll(dev_priv, port, pipe_config);
 	else
-		haswell_get_ddi_pll(dev_priv, port, pipe_config);
+		hsw_get_ddi_pll(dev_priv, port, pipe_config);
 
 	pll = pipe_config->shared_dpll;
 	if (pll) {
@@ -10621,8 +10621,8 @@ static void icelake_get_trans_port_sync_config(struct intel_crtc_state *crtc_sta
 		crtc_state->sync_mode_slaves_mask);
 }
 
-static bool haswell_get_pipe_config(struct intel_crtc *crtc,
-				    struct intel_crtc_state *pipe_config)
+static bool hsw_get_pipe_config(struct intel_crtc *crtc,
+				struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM], wf;
@@ -10659,7 +10659,7 @@ static bool haswell_get_pipe_config(struct intel_crtc *crtc,
 
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
 	    INTEL_GEN(dev_priv) >= 11) {
-		haswell_get_ddi_port_state(crtc, pipe_config);
+		hsw_get_ddi_port_state(crtc, pipe_config);
 		intel_get_pipe_timings(crtc, pipe_config);
 	}
 
@@ -13821,7 +13821,7 @@ static void intel_modeset_clear_plls(struct intel_atomic_state *state)
  * multiple pipes, and planes are enabled after the pipe, we need to wait at
  * least 2 vblanks on the first pipe before enabling planes on the second pipe.
  */
-static int haswell_mode_set_planes_workaround(struct intel_atomic_state *state)
+static int hsw_mode_set_planes_workaround(struct intel_atomic_state *state)
 {
 	struct intel_crtc_state *crtc_state;
 	struct intel_crtc *crtc;
@@ -13916,7 +13916,7 @@ static int intel_modeset_checks(struct intel_atomic_state *state)
 	intel_modeset_clear_plls(state);
 
 	if (IS_HASWELL(dev_priv))
-		return haswell_mode_set_planes_workaround(state);
+		return hsw_mode_set_planes_workaround(state);
 
 	return 0;
 }
@@ -16602,21 +16602,20 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
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
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
