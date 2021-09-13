Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD954095A4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 16:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354F46ECB2;
	Mon, 13 Sep 2021 14:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED3CC6ECC6
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 14:44:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="285389926"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="285389926"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 07:44:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="481346395"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 13 Sep 2021 07:44:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Sep 2021 17:44:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Sep 2021 17:44:29 +0300
Message-Id: <20210913144440.23008-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/16] drm/i915: s/pipe/transcoder/ when dealing
 with PIPECONF/TRANSCONF
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

PIPECONF becamse TRANSCONF when HSW introduced the EDP transcoder.
Bigjoiner is making life even more confusing by introducing
a N:1 relationship between pipes and transcoders. In that case
we only enable/configure the transcoder corresponding to the
master pipe. Let's do some renames to make it clear we're dealing
with the transcoder rather than pipe when it comes to
PIPECONF/TRANSCONF.

I decided to leave the _cpu_ part out from the function/macro
names since the PCH transcoder related stuff already has a
_pch_ in their name. So shouldn't be possible to confuse them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c        |  4 +--
 drivers/gpu/drm/i915/display/intel_crt.c     |  4 +--
 drivers/gpu/drm/i915/display/intel_ddi.c     |  4 +--
 drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_display.h | 12 ++++-----
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  4 +--
 drivers/gpu/drm/i915/display/intel_dpll.c    | 12 ++++-----
 drivers/gpu/drm/i915/display/intel_fdi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_tv.c      |  2 +-
 9 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 9577f6843f79..8e0620ae2ed1 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -211,7 +211,7 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	assert_pipe_disabled(dev_priv, pipe_config->cpu_transcoder);
+	assert_transcoder_disabled(dev_priv, pipe_config->cpu_transcoder);
 	assert_dp_port_disabled(intel_dp);
 	assert_edp_pll_disabled(dev_priv);
 
@@ -251,7 +251,7 @@ static void ilk_edp_pll_off(struct intel_dp *intel_dp,
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	assert_pipe_disabled(dev_priv, old_crtc_state->cpu_transcoder);
+	assert_transcoder_disabled(dev_priv, old_crtc_state->cpu_transcoder);
 	assert_dp_port_disabled(intel_dp);
 	assert_edp_pll_enabled(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 408f82b0dc7d..1c161eeed82f 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -251,7 +251,7 @@ static void hsw_post_disable_crt(struct intel_atomic_state *state,
 
 	intel_crtc_vblank_off(old_crtc_state);
 
-	intel_disable_pipe(old_crtc_state);
+	intel_disable_transcoder(old_crtc_state);
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
@@ -314,7 +314,7 @@ static void hsw_enable_crt(struct intel_atomic_state *state,
 
 	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
-	intel_enable_pipe(crtc_state);
+	intel_enable_transcoder(crtc_state);
 
 	lpt_pch_enable(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c1fd7cbb40e1..4f7420dda8b5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2867,7 +2867,7 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
 		intel_crtc_vblank_off(old_crtc_state);
 
-		intel_disable_pipe(old_crtc_state);
+		intel_disable_transcoder(old_crtc_state);
 
 		intel_vrr_disable(old_crtc_state);
 
@@ -3138,7 +3138,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_vrr_enable(encoder, crtc_state);
 
-	intel_enable_pipe(crtc_state);
+	intel_enable_transcoder(crtc_state);
 
 	intel_crtc_vblank_on(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index afa26911c236..1a0eac3da3f0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -120,7 +120,7 @@ static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_sta
 					 const struct intel_link_m_n *m2_n2);
 static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
-static void hsw_set_pipeconf(const struct intel_crtc_state *crtc_state);
+static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
 static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state);
 static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
 static void intel_modeset_setup_hw_state(struct drm_device *dev,
@@ -448,8 +448,8 @@ void assert_panel_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 	     pipe_name(pipe));
 }
 
-void assert_pipe(struct drm_i915_private *dev_priv,
-		 enum transcoder cpu_transcoder, bool state)
+void assert_transcoder(struct drm_i915_private *dev_priv,
+		       enum transcoder cpu_transcoder, bool state)
 {
 	bool cur_state;
 	enum intel_display_power_domain power_domain;
@@ -766,7 +766,7 @@ enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc)
 		return crtc->pipe;
 }
 
-void intel_enable_pipe(const struct intel_crtc_state *new_crtc_state)
+void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -827,7 +827,7 @@ void intel_enable_pipe(const struct intel_crtc_state *new_crtc_state)
 		intel_wait_for_pipe_scanline_moving(crtc);
 }
 
-void intel_disable_pipe(const struct intel_crtc_state *old_crtc_state)
+void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -2883,7 +2883,7 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 
 	if (dev_priv->display.initial_watermarks)
 		dev_priv->display.initial_watermarks(state, crtc);
-	intel_enable_pipe(new_crtc_state);
+	intel_enable_transcoder(new_crtc_state);
 
 	if (new_crtc_state->has_pch_encoder)
 		ilk_pch_enable(state, new_crtc_state);
@@ -3062,7 +3062,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	}
 
 	if (!transcoder_is_dsi(cpu_transcoder))
-		hsw_set_pipeconf(new_crtc_state);
+		hsw_set_transconf(new_crtc_state);
 
 	crtc->active = true;
 
@@ -3157,7 +3157,7 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 
 	intel_crtc_vblank_off(old_crtc_state);
 
-	intel_disable_pipe(old_crtc_state);
+	intel_disable_transcoder(old_crtc_state);
 
 	ilk_pfit_disable(old_crtc_state);
 
@@ -3219,7 +3219,7 @@ static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
 	 */
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_de_read(dev_priv, PFIT_CONTROL) & PFIT_ENABLE);
-	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
+	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
 	intel_de_write(dev_priv, PFIT_PGM_RATIOS,
 		       crtc_state->gmch_pfit.pgm_ratios);
@@ -3511,7 +3511,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	intel_disable_primary_plane(new_crtc_state);
 
 	dev_priv->display.initial_watermarks(state, crtc);
-	intel_enable_pipe(new_crtc_state);
+	intel_enable_transcoder(new_crtc_state);
 
 	intel_crtc_vblank_on(new_crtc_state);
 
@@ -3557,7 +3557,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 		dev_priv->display.initial_watermarks(state, crtc);
 	else
 		intel_update_watermarks(crtc);
-	intel_enable_pipe(new_crtc_state);
+	intel_enable_transcoder(new_crtc_state);
 
 	intel_crtc_vblank_on(new_crtc_state);
 
@@ -3576,7 +3576,7 @@ static void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->gmch_pfit.control)
 		return;
 
-	assert_pipe_disabled(dev_priv, old_crtc_state->cpu_transcoder);
+	assert_transcoder_disabled(dev_priv, old_crtc_state->cpu_transcoder);
 
 	drm_dbg_kms(&dev_priv->drm, "disabling pfit, current: 0x%08x\n",
 		    intel_de_read(dev_priv, PFIT_CONTROL));
@@ -3602,7 +3602,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 
 	intel_crtc_vblank_off(old_crtc_state);
 
-	intel_disable_pipe(old_crtc_state);
+	intel_disable_transcoder(old_crtc_state);
 
 	i9xx_pfit_disable(old_crtc_state);
 
@@ -5172,7 +5172,7 @@ static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	intel_de_posting_read(dev_priv, PIPECONF(pipe));
 }
 
-static void hsw_set_pipeconf(const struct intel_crtc_state *crtc_state)
+static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 4719ffc97fce..d425ee77aad7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -531,8 +531,8 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 
 void intel_plane_destroy(struct drm_plane *plane);
-void intel_enable_pipe(const struct intel_crtc_state *new_crtc_state);
-void intel_disable_pipe(const struct intel_crtc_state *old_crtc_state);
+void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
+void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
 void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe);
 void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe);
 enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc);
@@ -657,10 +657,10 @@ void assert_fdi_rx_pll(struct drm_i915_private *dev_priv,
 		       enum pipe pipe, bool state);
 #define assert_fdi_rx_pll_enabled(d, p) assert_fdi_rx_pll(d, p, true)
 #define assert_fdi_rx_pll_disabled(d, p) assert_fdi_rx_pll(d, p, false)
-void assert_pipe(struct drm_i915_private *dev_priv,
-		 enum transcoder cpu_transcoder, bool state);
-#define assert_pipe_enabled(d, t) assert_pipe(d, t, true)
-#define assert_pipe_disabled(d, t) assert_pipe(d, t, false)
+void assert_transcoder(struct drm_i915_private *dev_priv,
+		       enum transcoder cpu_transcoder, bool state);
+#define assert_transcoder_enabled(d, t) assert_transcoder(d, t, true)
+#define assert_transcoder_disabled(d, t) assert_transcoder(d, t, false)
 
 /* Use I915_STATE_WARN(x) and I915_STATE_WARN_ON() (rather than WARN() and
  * WARN_ON()) for hw state sanity checks to check for unexpected conditions
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 914bea983a28..9f1fc1a68ed2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -398,7 +398,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_crtc_vblank_off(old_crtc_state);
 
-	intel_disable_pipe(old_crtc_state);
+	intel_disable_transcoder(old_crtc_state);
 
 	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
 
@@ -559,7 +559,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans), 0,
 			     FECSTALL_DIS_DPTSTREAM_DPTTG);
 
-	intel_enable_pipe(pipe_config);
+	intel_enable_transcoder(pipe_config);
 
 	intel_crtc_vblank_on(pipe_config);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index ace9157a1c30..487d8721ecf8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1402,7 +1402,7 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	int i;
 
-	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
+	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
 	/* PLL is protected by panel, make sure we can write it */
 	if (i9xx_has_pps(dev_priv))
@@ -1582,7 +1582,7 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
+	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
 	/* PLL is protected by panel, make sure we can write it */
 	assert_panel_unlocked(dev_priv, pipe);
@@ -1734,7 +1734,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
+	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
 	/* PLL is protected by panel, make sure we can write it */
 	assert_panel_unlocked(dev_priv, pipe);
@@ -1818,7 +1818,7 @@ void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 	u32 val;
 
 	/* Make sure the pipe isn't still relying on us */
-	assert_pipe_disabled(dev_priv, (enum transcoder)pipe);
+	assert_transcoder_disabled(dev_priv, (enum transcoder)pipe);
 
 	val = DPLL_INTEGRATED_REF_CLK_VLV |
 		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
@@ -1835,7 +1835,7 @@ void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 	u32 val;
 
 	/* Make sure the pipe isn't still relying on us */
-	assert_pipe_disabled(dev_priv, (enum transcoder)pipe);
+	assert_transcoder_disabled(dev_priv, (enum transcoder)pipe);
 
 	val = DPLL_SSC_REF_CLK_CHV |
 		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
@@ -1866,7 +1866,7 @@ void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)
 		return;
 
 	/* Make sure the pipe isn't still relying on us */
-	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
+	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
 	intel_de_write(dev_priv, DPLL(pipe), DPLL_VGA_MODE_DIS);
 	intel_de_posting_read(dev_priv, DPLL(pipe));
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index fc09b781f15f..96ff12ad0873 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -281,7 +281,7 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
 		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
 
 	/* FDI needs bits from pipe first */
-	assert_pipe_enabled(dev_priv, crtc_state->cpu_transcoder);
+	assert_transcoder_enabled(dev_priv, crtc_state->cpu_transcoder);
 
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index d02f09f7e750..88a398df9621 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1529,7 +1529,7 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
 		intel_de_write(dev_priv, TV_CLR_LEVEL,
 			       ((video_levels->black << TV_BLACK_LEVEL_SHIFT) | (video_levels->blank << TV_BLANK_LEVEL_SHIFT)));
 
-	assert_pipe_disabled(dev_priv, pipe_config->cpu_transcoder);
+	assert_transcoder_disabled(dev_priv, pipe_config->cpu_transcoder);
 
 	/* Filter ctl must be set before TV_WIN_SIZE */
 	tv_filter_ctl = TV_AUTO_SCALE;
-- 
2.32.0

