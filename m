Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F626123C9E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 02:43:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FC5F6E217;
	Wed, 18 Dec 2019 01:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02E0C6E20F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 01:43:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 17:43:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,327,1571727600"; d="scan'208";a="247697576"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2019 17:43:17 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 17:42:08 -0800
Message-Id: <20191218014208.7916-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191218014208.7916-1-lucas.demarchi@intel.com>
References: <20191218014208.7916-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/display: prefer 3-letter acronym
 for ironlake
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
cases. This converts ironlake to ilk where appropriate.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 172 +++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  34 ++--
 .../drm/i915/display/intel_fifo_underrun.c    |   6 +-
 5 files changed, 110 insertions(+), 110 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 7a2d36905155..853068b9f909 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -343,7 +343,7 @@ intel_crt_mode_valid(struct drm_connector *connector,
 
 	/* The FDI receiver on LPT only supports 8bpc and only has 2 lanes. */
 	if (HAS_PCH_LPT(dev_priv) &&
-	    (ironlake_get_lanes_required(mode->clock, 270000, 24) > 2))
+	    ilk_get_lanes_required(mode->clock, 270000, 24) > 2)
 		return MODE_CLOCK_HIGH;
 
 	/* HSW/BDW FDI limited to 4k */
@@ -419,7 +419,7 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
 	return 0;
 }
 
-static bool intel_ironlake_crt_detect_hotplug(struct drm_connector *connector)
+static bool ilk_crt_detect_hotplug(struct drm_connector *connector)
 {
 	struct drm_device *dev = connector->dev;
 	struct intel_crt *crt = intel_attached_crt(connector);
@@ -527,7 +527,7 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
 	int i, tries = 0;
 
 	if (HAS_PCH_SPLIT(dev_priv))
-		return intel_ironlake_crt_detect_hotplug(connector);
+		return ilk_crt_detect_hotplug(connector);
 
 	if (IS_VALLEYVIEW(dev_priv))
 		return valleyview_crt_detect_hotplug(connector);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d3a13737552a..a4f516bc850f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -145,8 +145,8 @@ static const u64 cursor_format_modifiers[] = {
 
 static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 				struct intel_crtc_state *pipe_config);
-static void ironlake_pch_clock_get(struct intel_crtc *crtc,
-				   struct intel_crtc_state *pipe_config);
+static void ilk_pch_clock_get(struct intel_crtc *crtc,
+			      struct intel_crtc_state *pipe_config);
 
 static int intel_framebuffer_init(struct intel_framebuffer *ifb,
 				  struct drm_i915_gem_object *obj,
@@ -157,7 +157,7 @@ static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_sta
 					 const struct intel_link_m_n *m_n,
 					 const struct intel_link_m_n *m2_n2);
 static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
-static void ironlake_set_pipeconf(const struct intel_crtc_state *crtc_state);
+static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void hsw_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state);
 static void vlv_prepare_pll(struct intel_crtc *crtc,
@@ -167,8 +167,8 @@ static void chv_prepare_pll(struct intel_crtc *crtc,
 static void intel_crtc_init_scalers(struct intel_crtc *crtc,
 				    struct intel_crtc_state *crtc_state);
 static void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
-static void ironlake_pfit_disable(const struct intel_crtc_state *old_crtc_state);
-static void ironlake_pfit_enable(const struct intel_crtc_state *crtc_state);
+static void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
+static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
 static void intel_modeset_setup_hw_state(struct drm_device *dev,
 					 struct drm_modeset_acquire_ctx *ctx);
 
@@ -404,7 +404,7 @@ static const struct intel_limit intel_limits_pineview_lvds = {
  * We calculate clock using (register_value + 2) for N/M1/M2, so here
  * the range value for them is (actual_value - 2).
  */
-static const struct intel_limit intel_limits_ironlake_dac = {
+static const struct intel_limit intel_limits_ilk_dac = {
 	.dot = { .min = 25000, .max = 350000 },
 	.vco = { .min = 1760000, .max = 3510000 },
 	.n = { .min = 1, .max = 5 },
@@ -417,7 +417,7 @@ static const struct intel_limit intel_limits_ironlake_dac = {
 		.p2_slow = 10, .p2_fast = 5 },
 };
 
-static const struct intel_limit intel_limits_ironlake_single_lvds = {
+static const struct intel_limit intel_limits_ilk_single_lvds = {
 	.dot = { .min = 25000, .max = 350000 },
 	.vco = { .min = 1760000, .max = 3510000 },
 	.n = { .min = 1, .max = 3 },
@@ -430,7 +430,7 @@ static const struct intel_limit intel_limits_ironlake_single_lvds = {
 		.p2_slow = 14, .p2_fast = 14 },
 };
 
-static const struct intel_limit intel_limits_ironlake_dual_lvds = {
+static const struct intel_limit intel_limits_ilk_dual_lvds = {
 	.dot = { .min = 25000, .max = 350000 },
 	.vco = { .min = 1760000, .max = 3510000 },
 	.n = { .min = 1, .max = 3 },
@@ -444,7 +444,7 @@ static const struct intel_limit intel_limits_ironlake_dual_lvds = {
 };
 
 /* LVDS 100mhz refclk limits. */
-static const struct intel_limit intel_limits_ironlake_single_lvds_100m = {
+static const struct intel_limit intel_limits_ilk_single_lvds_100m = {
 	.dot = { .min = 25000, .max = 350000 },
 	.vco = { .min = 1760000, .max = 3510000 },
 	.n = { .min = 1, .max = 2 },
@@ -457,7 +457,7 @@ static const struct intel_limit intel_limits_ironlake_single_lvds_100m = {
 		.p2_slow = 14, .p2_fast = 14 },
 };
 
-static const struct intel_limit intel_limits_ironlake_dual_lvds_100m = {
+static const struct intel_limit intel_limits_ilk_dual_lvds_100m = {
 	.dot = { .min = 25000, .max = 350000 },
 	.vco = { .min = 1760000, .max = 3510000 },
 	.n = { .min = 1, .max = 3 },
@@ -1639,7 +1639,7 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 		     I915_READ(dpll_reg) & port_mask, expected_mask);
 }
 
-static void ironlake_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
+static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -1737,8 +1737,8 @@ static void lpt_enable_pch_transcoder(struct drm_i915_private *dev_priv,
 		DRM_ERROR("Failed to enable PCH transcoder\n");
 }
 
-static void ironlake_disable_pch_transcoder(struct drm_i915_private *dev_priv,
-					    enum pipe pipe)
+static void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
+				       enum pipe pipe)
 {
 	i915_reg_t reg;
 	u32 val;
@@ -4641,8 +4641,8 @@ static void intel_fdi_normal_train(struct intel_crtc *crtc)
 }
 
 /* The FDI link training functions for ILK/Ibexpeak. */
-static void ironlake_fdi_link_train(struct intel_crtc *crtc,
-				    const struct intel_crtc_state *crtc_state)
+static void ilk_fdi_link_train(struct intel_crtc *crtc,
+			       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -4994,7 +4994,7 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 	DRM_DEBUG_KMS("FDI train done.\n");
 }
 
-static void ironlake_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
+static void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
@@ -5031,7 +5031,7 @@ static void ironlake_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-static void ironlake_fdi_pll_disable(struct intel_crtc *intel_crtc)
+static void ilk_fdi_pll_disable(struct intel_crtc *intel_crtc)
 {
 	struct drm_device *dev = intel_crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -5061,7 +5061,7 @@ static void ironlake_fdi_pll_disable(struct intel_crtc *intel_crtc)
 	udelay(100);
 }
 
-static void ironlake_fdi_disable(struct intel_crtc *crtc)
+static void ilk_fdi_disable(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
@@ -5268,8 +5268,8 @@ int lpt_get_iclkip(struct drm_i915_private *dev_priv)
 				 desired_divisor << auxdiv);
 }
 
-static void ironlake_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_state,
-						enum pipe pch_transcoder)
+static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_state,
+					   enum pipe pch_transcoder)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -5373,8 +5373,8 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
  *   - DP transcoding bits
  *   - transcoder
  */
-static void ironlake_pch_enable(const struct intel_atomic_state *state,
-				const struct intel_crtc_state *crtc_state)
+static void ilk_pch_enable(const struct intel_atomic_state *state,
+			   const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_device *dev = crtc->base.dev;
@@ -5422,7 +5422,7 @@ static void ironlake_pch_enable(const struct intel_atomic_state *state,
 
 	/* set transcoder timing, panel must allow it */
 	assert_panel_unlocked(dev_priv, pipe);
-	ironlake_pch_transcoder_set_timings(crtc_state, pipe);
+	ilk_pch_transcoder_set_timings(crtc_state, pipe);
 
 	intel_fdi_normal_train(crtc);
 
@@ -5454,7 +5454,7 @@ static void ironlake_pch_enable(const struct intel_atomic_state *state,
 		I915_WRITE(reg, temp);
 	}
 
-	ironlake_enable_pch_transcoder(crtc_state);
+	ilk_enable_pch_transcoder(crtc_state);
 }
 
 static void lpt_pch_enable(const struct intel_atomic_state *state,
@@ -5469,7 +5469,7 @@ static void lpt_pch_enable(const struct intel_atomic_state *state,
 	lpt_program_iclkip(crtc_state);
 
 	/* Set transcoder timing. */
-	ironlake_pch_transcoder_set_timings(crtc_state, PIPE_A);
+	ilk_pch_transcoder_set_timings(crtc_state, PIPE_A);
 
 	lpt_enable_pch_transcoder(dev_priv, cpu_transcoder);
 }
@@ -5814,7 +5814,7 @@ static void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-static void ironlake_pfit_enable(const struct intel_crtc_state *crtc_state)
+static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -6413,8 +6413,8 @@ static void intel_disable_primary_plane(const struct intel_crtc_state *crtc_stat
 	plane->disable_plane(plane, crtc_state);
 }
 
-static void ironlake_crtc_enable(struct intel_atomic_state *state,
-				 struct intel_crtc *crtc)
+static void ilk_crtc_enable(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -6450,7 +6450,7 @@ static void ironlake_crtc_enable(struct intel_atomic_state *state,
 		intel_cpu_transcoder_set_m_n(new_crtc_state,
 					     &new_crtc_state->fdi_m_n, NULL);
 
-	ironlake_set_pipeconf(new_crtc_state);
+	ilk_set_pipeconf(new_crtc_state);
 
 	crtc->active = true;
 
@@ -6460,13 +6460,13 @@ static void ironlake_crtc_enable(struct intel_atomic_state *state,
 		/* Note: FDI PLL enabling _must_ be done before we enable the
 		 * cpu pipes, hence this is separate from all the other fdi/pch
 		 * enabling. */
-		ironlake_fdi_pll_enable(new_crtc_state);
+		ilk_fdi_pll_enable(new_crtc_state);
 	} else {
 		assert_fdi_tx_disabled(dev_priv, pipe);
 		assert_fdi_rx_disabled(dev_priv, pipe);
 	}
 
-	ironlake_pfit_enable(new_crtc_state);
+	ilk_pfit_enable(new_crtc_state);
 
 	/*
 	 * On ILK+ LUT must be loaded before the pipe is running but with
@@ -6482,7 +6482,7 @@ static void ironlake_crtc_enable(struct intel_atomic_state *state,
 	intel_enable_pipe(new_crtc_state);
 
 	if (new_crtc_state->has_pch_encoder)
-		ironlake_pch_enable(state, new_crtc_state);
+		ilk_pch_enable(state, new_crtc_state);
 
 	intel_crtc_vblank_on(new_crtc_state);
 
@@ -6616,7 +6616,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (INTEL_GEN(dev_priv) >= 9)
 		skl_pfit_enable(new_crtc_state);
 	else
-		ironlake_pfit_enable(new_crtc_state);
+		ilk_pfit_enable(new_crtc_state);
 
 	/*
 	 * On ILK+ LUT must be loaded before the pipe is running but with
@@ -6665,7 +6665,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	}
 }
 
-static void ironlake_pfit_disable(const struct intel_crtc_state *old_crtc_state)
+static void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -6680,8 +6680,8 @@ static void ironlake_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 	}
 }
 
-static void ironlake_crtc_disable(struct intel_atomic_state *state,
-				  struct intel_crtc *crtc)
+static void ilk_crtc_disable(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
@@ -6702,15 +6702,15 @@ static void ironlake_crtc_disable(struct intel_atomic_state *state,
 
 	intel_disable_pipe(old_crtc_state);
 
-	ironlake_pfit_disable(old_crtc_state);
+	ilk_pfit_disable(old_crtc_state);
 
 	if (old_crtc_state->has_pch_encoder)
-		ironlake_fdi_disable(crtc);
+		ilk_fdi_disable(crtc);
 
 	intel_encoders_post_disable(state, crtc);
 
 	if (old_crtc_state->has_pch_encoder) {
-		ironlake_disable_pch_transcoder(dev_priv, pipe);
+		ilk_disable_pch_transcoder(dev_priv, pipe);
 
 		if (HAS_PCH_CPT(dev_priv)) {
 			i915_reg_t reg;
@@ -6730,7 +6730,7 @@ static void ironlake_crtc_disable(struct intel_atomic_state *state,
 			I915_WRITE(PCH_DPLL_SEL, temp);
 		}
 
-		ironlake_fdi_pll_disable(crtc);
+		ilk_fdi_pll_disable(crtc);
 	}
 
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
@@ -6764,7 +6764,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	if (INTEL_GEN(dev_priv) >= 9)
 		skl_scaler_disable(crtc);
 	else
-		ironlake_pfit_disable(old_crtc_state);
+		ilk_pfit_disable(old_crtc_state);
 
 	intel_encoders_post_disable(state, crtc);
 
@@ -7298,8 +7298,8 @@ static int pipe_required_fdi_lanes(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int ironlake_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
-				     struct intel_crtc_state *pipe_config)
+static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
+			       struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_atomic_state *state = pipe_config->uapi.state;
@@ -7371,8 +7371,8 @@ static int ironlake_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 }
 
 #define RETRY 1
-static int ironlake_fdi_compute_config(struct intel_crtc *intel_crtc,
-				       struct intel_crtc_state *pipe_config)
+static int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
+				  struct intel_crtc_state *pipe_config)
 {
 	struct drm_device *dev = intel_crtc->base.dev;
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
@@ -7391,15 +7391,15 @@ static int ironlake_fdi_compute_config(struct intel_crtc *intel_crtc,
 
 	fdi_dotclock = adjusted_mode->crtc_clock;
 
-	lane = ironlake_get_lanes_required(fdi_dotclock, link_bw,
-					   pipe_config->pipe_bpp);
+	lane = ilk_get_lanes_required(fdi_dotclock, link_bw,
+				      pipe_config->pipe_bpp);
 
 	pipe_config->fdi_lanes = lane;
 
 	intel_link_compute_m_n(pipe_config->pipe_bpp, lane, fdi_dotclock,
 			       link_bw, &pipe_config->fdi_m_n, false, false);
 
-	ret = ironlake_check_fdi_lanes(dev, intel_crtc->pipe, pipe_config);
+	ret = ilk_check_fdi_lanes(dev, intel_crtc->pipe, pipe_config);
 	if (ret == -EDEADLK)
 		return ret;
 
@@ -7605,7 +7605,7 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 	intel_crtc_compute_pixel_rate(pipe_config);
 
 	if (pipe_config->has_pch_encoder)
-		return ironlake_fdi_compute_config(crtc, pipe_config);
+		return ilk_fdi_compute_config(crtc, pipe_config);
 
 	return 0;
 }
@@ -9018,7 +9018,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	return ret;
 }
 
-static void ironlake_init_pch_refclk(struct drm_i915_private *dev_priv)
+static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
 	int i;
@@ -9516,12 +9516,12 @@ static void lpt_init_pch_refclk(struct drm_i915_private *dev_priv)
 void intel_init_pch_refclk(struct drm_i915_private *dev_priv)
 {
 	if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv))
-		ironlake_init_pch_refclk(dev_priv);
+		ilk_init_pch_refclk(dev_priv);
 	else if (HAS_PCH_LPT(dev_priv))
 		lpt_init_pch_refclk(dev_priv);
 }
 
-static void ironlake_set_pipeconf(const struct intel_crtc_state *crtc_state)
+static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -9665,7 +9665,7 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
 	}
 }
 
-int ironlake_get_lanes_required(int target_clock, int link_bw, int bpp)
+int ilk_get_lanes_required(int target_clock, int link_bw, int bpp)
 {
 	/*
 	 * Account for spread spectrum to avoid
@@ -9676,14 +9676,14 @@ int ironlake_get_lanes_required(int target_clock, int link_bw, int bpp)
 	return DIV_ROUND_UP(bps, link_bw * 8);
 }
 
-static bool ironlake_needs_fb_cb_tune(struct dpll *dpll, int factor)
+static bool ilk_needs_fb_cb_tune(struct dpll *dpll, int factor)
 {
 	return i9xx_dpll_compute_m(dpll) < factor * dpll->n;
 }
 
-static void ironlake_compute_dpll(struct intel_crtc *crtc,
-				  struct intel_crtc_state *crtc_state,
-				  struct dpll *reduced_clock)
+static void ilk_compute_dpll(struct intel_crtc *crtc,
+			     struct intel_crtc_state *crtc_state,
+			     struct dpll *reduced_clock)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dpll, fp, fp2;
@@ -9703,7 +9703,7 @@ static void ironlake_compute_dpll(struct intel_crtc *crtc,
 
 	fp = i9xx_dpll_compute_fp(&crtc_state->dpll);
 
-	if (ironlake_needs_fb_cb_tune(&crtc_state->dpll, factor))
+	if (ilk_needs_fb_cb_tune(&crtc_state->dpll, factor))
 		fp |= FP_CB_TUNE;
 
 	if (reduced_clock) {
@@ -9783,8 +9783,8 @@ static void ironlake_compute_dpll(struct intel_crtc *crtc,
 	crtc_state->dpll_hw_state.fp1 = fp2;
 }
 
-static int ironlake_crtc_compute_clock(struct intel_crtc *crtc,
-				       struct intel_crtc_state *crtc_state)
+static int ilk_crtc_compute_clock(struct intel_crtc *crtc,
+				  struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_atomic_state *state =
@@ -9808,17 +9808,17 @@ static int ironlake_crtc_compute_clock(struct intel_crtc *crtc,
 
 		if (intel_is_dual_link_lvds(dev_priv)) {
 			if (refclk == 100000)
-				limit = &intel_limits_ironlake_dual_lvds_100m;
+				limit = &intel_limits_ilk_dual_lvds_100m;
 			else
-				limit = &intel_limits_ironlake_dual_lvds;
+				limit = &intel_limits_ilk_dual_lvds;
 		} else {
 			if (refclk == 100000)
-				limit = &intel_limits_ironlake_single_lvds_100m;
+				limit = &intel_limits_ilk_single_lvds_100m;
 			else
-				limit = &intel_limits_ironlake_single_lvds;
+				limit = &intel_limits_ilk_single_lvds;
 		}
 	} else {
-		limit = &intel_limits_ironlake_dac;
+		limit = &intel_limits_ilk_dac;
 	}
 
 	if (!crtc_state->clock_set &&
@@ -9828,7 +9828,7 @@ static int ironlake_crtc_compute_clock(struct intel_crtc *crtc,
 		return -EINVAL;
 	}
 
-	ironlake_compute_dpll(crtc, crtc_state, NULL);
+	ilk_compute_dpll(crtc, crtc_state, NULL);
 
 	if (!intel_reserve_shared_dplls(state, crtc, NULL)) {
 		DRM_DEBUG_KMS("failed to find PLL for pipe %c\n",
@@ -9903,8 +9903,8 @@ void intel_dp_get_m_n(struct intel_crtc *crtc,
 					     &pipe_config->dp_m2_n2);
 }
 
-static void ironlake_get_fdi_m_n_config(struct intel_crtc *crtc,
-					struct intel_crtc_state *pipe_config)
+static void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
+				   struct intel_crtc_state *pipe_config)
 {
 	intel_cpu_transcoder_get_m_n(crtc, pipe_config->cpu_transcoder,
 				     &pipe_config->fdi_m_n, NULL);
@@ -10068,8 +10068,8 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	kfree(intel_fb);
 }
 
-static void ironlake_get_pfit_config(struct intel_crtc *crtc,
-				     struct intel_crtc_state *pipe_config)
+static void ilk_get_pfit_config(struct intel_crtc *crtc,
+				struct intel_crtc_state *pipe_config)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -10092,8 +10092,8 @@ static void ironlake_get_pfit_config(struct intel_crtc *crtc,
 	}
 }
 
-static bool ironlake_get_pipe_config(struct intel_crtc *crtc,
-				     struct intel_crtc_state *pipe_config)
+static bool ilk_get_pipe_config(struct intel_crtc *crtc,
+				struct intel_crtc_state *pipe_config)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -10164,7 +10164,7 @@ static bool ironlake_get_pipe_config(struct intel_crtc *crtc,
 		pipe_config->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
 					  FDI_DP_PORT_WIDTH_SHIFT) + 1;
 
-		ironlake_get_fdi_m_n_config(crtc, pipe_config);
+		ilk_get_fdi_m_n_config(crtc, pipe_config);
 
 		if (HAS_PCH_IBX(dev_priv)) {
 			/*
@@ -10192,7 +10192,7 @@ static bool ironlake_get_pipe_config(struct intel_crtc *crtc,
 			((tmp & PLL_REF_SDVO_HDMI_MULTIPLIER_MASK)
 			 >> PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT) + 1;
 
-		ironlake_pch_clock_get(crtc, pipe_config);
+		ilk_pch_clock_get(crtc, pipe_config);
 	} else {
 		pipe_config->pixel_multiplier = 1;
 	}
@@ -10200,7 +10200,7 @@ static bool ironlake_get_pipe_config(struct intel_crtc *crtc,
 	intel_get_pipe_timings(crtc, pipe_config);
 	intel_get_pipe_src_size(crtc, pipe_config);
 
-	ironlake_get_pfit_config(crtc, pipe_config);
+	ilk_get_pfit_config(crtc, pipe_config);
 
 	ret = true;
 
@@ -10561,7 +10561,7 @@ static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
 		pipe_config->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
 					  FDI_DP_PORT_WIDTH_SHIFT) + 1;
 
-		ironlake_get_fdi_m_n_config(crtc, pipe_config);
+		ilk_get_fdi_m_n_config(crtc, pipe_config);
 	}
 }
 
@@ -10715,7 +10715,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		if (INTEL_GEN(dev_priv) >= 9)
 			skl_get_pfit_config(crtc, pipe_config);
 		else
-			ironlake_get_pfit_config(crtc, pipe_config);
+			ilk_get_pfit_config(crtc, pipe_config);
 	}
 
 	if (hsw_crtc_supports_ips(crtc)) {
@@ -11658,8 +11658,8 @@ int intel_dotclock_calculate(int link_freq,
 	return div_u64(mul_u32_u32(m_n->link_m, link_freq), m_n->link_n);
 }
 
-static void ironlake_pch_clock_get(struct intel_crtc *crtc,
-				   struct intel_crtc_state *pipe_config)
+static void ilk_pch_clock_get(struct intel_crtc *crtc,
+			      struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
@@ -14245,9 +14245,9 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 			skl_pfit_enable(new_crtc_state);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		if (new_crtc_state->pch_pfit.enabled)
-			ironlake_pfit_enable(new_crtc_state);
+			ilk_pfit_enable(new_crtc_state);
 		else if (old_crtc_state->pch_pfit.enabled)
-			ironlake_pfit_disable(old_crtc_state);
+			ilk_pfit_disable(old_crtc_state);
 	}
 
 	if (INTEL_GEN(dev_priv) >= 11)
@@ -16614,13 +16614,13 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->display.crtc_enable = hsw_crtc_enable;
 		dev_priv->display.crtc_disable = hsw_crtc_disable;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
-		dev_priv->display.get_pipe_config = ironlake_get_pipe_config;
+		dev_priv->display.get_pipe_config = ilk_get_pipe_config;
 		dev_priv->display.get_initial_plane_config =
 			i9xx_get_initial_plane_config;
 		dev_priv->display.crtc_compute_clock =
-			ironlake_crtc_compute_clock;
-		dev_priv->display.crtc_enable = ironlake_crtc_enable;
-		dev_priv->display.crtc_disable = ironlake_crtc_disable;
+			ilk_crtc_compute_clock;
+		dev_priv->display.crtc_enable = ilk_crtc_enable;
+		dev_priv->display.crtc_disable = ilk_crtc_disable;
 	} else if (IS_CHERRYVIEW(dev_priv)) {
 		dev_priv->display.get_pipe_config = i9xx_get_pipe_config;
 		dev_priv->display.get_initial_plane_config =
@@ -16666,7 +16666,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 	}
 
 	if (IS_GEN(dev_priv, 5)) {
-		dev_priv->display.fdi_link_train = ironlake_fdi_link_train;
+		dev_priv->display.fdi_link_train = ilk_fdi_link_train;
 	} else if (IS_GEN(dev_priv, 6)) {
 		dev_priv->display.fdi_link_train = gen6_fdi_link_train;
 	} else if (IS_IVYBRIDGE(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 327376810f66..42093539e91c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -519,7 +519,7 @@ int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
 				      struct drm_file *file_priv);
 u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
 
-int ironlake_get_lanes_required(int target_clock, int link_bw, int bpp);
+int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
 void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 			 struct intel_digital_port *dport,
 			 unsigned int expected_mask);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2f31d226c6eb..991f343579ef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2509,7 +2509,7 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
 	 *
 	 * CPT PCH is quite different, having many bits moved
 	 * to the TRANS_DP_CTL register instead. That
-	 * configuration happens (oddly) in ironlake_pch_enable
+	 * configuration happens (oddly) in ilk_pch_enable
 	 */
 
 	/* Preserve the BIOS-computed detected bit. This is
@@ -2653,7 +2653,7 @@ static void edp_wait_backlight_off(struct intel_dp *intel_dp)
  * is locked
  */
 
-static  u32 ironlake_get_pp_control(struct intel_dp *intel_dp)
+static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 control;
@@ -2703,7 +2703,7 @@ static bool edp_panel_vdd_on(struct intel_dp *intel_dp)
 	if (!edp_have_panel_power(intel_dp))
 		wait_panel_power_cycle(intel_dp);
 
-	pp = ironlake_get_pp_control(intel_dp);
+	pp = ilk_get_pp_control(intel_dp);
 	pp |= EDP_FORCE_VDD;
 
 	pp_stat_reg = _pp_stat_reg(intel_dp);
@@ -2768,7 +2768,7 @@ static void edp_panel_vdd_off_sync(struct intel_dp *intel_dp)
 		      intel_dig_port->base.base.base.id,
 		      intel_dig_port->base.base.name);
 
-	pp = ironlake_get_pp_control(intel_dp);
+	pp = ilk_get_pp_control(intel_dp);
 	pp &= ~EDP_FORCE_VDD;
 
 	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
@@ -2864,7 +2864,7 @@ static void edp_panel_on(struct intel_dp *intel_dp)
 	wait_panel_power_cycle(intel_dp);
 
 	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
-	pp = ironlake_get_pp_control(intel_dp);
+	pp = ilk_get_pp_control(intel_dp);
 	if (IS_GEN(dev_priv, 5)) {
 		/* ILK workaround: disable reset around power sequence */
 		pp &= ~PANEL_POWER_RESET;
@@ -2919,7 +2919,7 @@ static void edp_panel_off(struct intel_dp *intel_dp)
 	WARN(!intel_dp->want_panel_vdd, "Need [ENCODER:%d:%s] VDD to turn off panel\n",
 	     dig_port->base.base.base.id, dig_port->base.base.name);
 
-	pp = ironlake_get_pp_control(intel_dp);
+	pp = ilk_get_pp_control(intel_dp);
 	/* We need to switch off panel power _and_ force vdd, for otherwise some
 	 * panels get very unhappy and cease to work. */
 	pp &= ~(PANEL_POWER_ON | PANEL_POWER_RESET | EDP_FORCE_VDD |
@@ -2968,7 +2968,7 @@ static void _intel_edp_backlight_on(struct intel_dp *intel_dp)
 		i915_reg_t pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 		u32 pp;
 
-		pp = ironlake_get_pp_control(intel_dp);
+		pp = ilk_get_pp_control(intel_dp);
 		pp |= EDP_BLC_ENABLE;
 
 		I915_WRITE(pp_ctrl_reg, pp);
@@ -3004,7 +3004,7 @@ static void _intel_edp_backlight_off(struct intel_dp *intel_dp)
 		i915_reg_t pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 		u32 pp;
 
-		pp = ironlake_get_pp_control(intel_dp);
+		pp = ilk_get_pp_control(intel_dp);
 		pp &= ~EDP_BLC_ENABLE;
 
 		I915_WRITE(pp_ctrl_reg, pp);
@@ -3042,7 +3042,7 @@ static void intel_edp_backlight_power(struct intel_connector *connector,
 
 	is_enabled = false;
 	with_pps_lock(intel_dp, wakeref)
-		is_enabled = ironlake_get_pp_control(intel_dp) & EDP_BLC_ENABLE;
+		is_enabled = ilk_get_pp_control(intel_dp) & EDP_BLC_ENABLE;
 	if (is_enabled == enable)
 		return;
 
@@ -3079,8 +3079,8 @@ static void assert_edp_pll(struct drm_i915_private *dev_priv, bool state)
 #define assert_edp_pll_enabled(d) assert_edp_pll((d), true)
 #define assert_edp_pll_disabled(d) assert_edp_pll((d), false)
 
-static void ironlake_edp_pll_on(struct intel_dp *intel_dp,
-				const struct intel_crtc_state *pipe_config)
+static void ilk_edp_pll_on(struct intel_dp *intel_dp,
+			   const struct intel_crtc_state *pipe_config)
 {
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -3119,8 +3119,8 @@ static void ironlake_edp_pll_on(struct intel_dp *intel_dp,
 	udelay(200);
 }
 
-static void ironlake_edp_pll_off(struct intel_dp *intel_dp,
-				 const struct intel_crtc_state *old_crtc_state)
+static void ilk_edp_pll_off(struct intel_dp *intel_dp,
+			    const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -3410,7 +3410,7 @@ static void g4x_post_disable_dp(struct intel_encoder *encoder,
 
 	/* Only ilk+ has port A */
 	if (port == PORT_A)
-		ironlake_edp_pll_off(intel_dp, old_crtc_state);
+		ilk_edp_pll_off(intel_dp, old_crtc_state);
 }
 
 static void vlv_post_disable_dp(struct intel_encoder *encoder,
@@ -3615,7 +3615,7 @@ static void g4x_pre_enable_dp(struct intel_encoder *encoder,
 
 	/* Only ilk+ has port A */
 	if (port == PORT_A)
-		ironlake_edp_pll_on(intel_dp, pipe_config);
+		ilk_edp_pll_on(intel_dp, pipe_config);
 }
 
 static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
@@ -6693,7 +6693,7 @@ intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct edp_power_seq *seq)
 
 	intel_pps_get_registers(intel_dp, &regs);
 
-	pp_ctl = ironlake_get_pp_control(intel_dp);
+	pp_ctl = ilk_get_pp_control(intel_dp);
 
 	/* Ensure PPS is unlocked */
 	if (!HAS_DDI(dev_priv))
@@ -6863,7 +6863,7 @@ intel_dp_init_panel_power_sequencer_registers(struct intel_dp *intel_dp,
 	 * soon as the new power sequencer gets initialized.
 	 */
 	if (force_disable_vdd) {
-		u32 pp = ironlake_get_pp_control(intel_dp);
+		u32 pp = ilk_get_pp_control(intel_dp);
 
 		WARN(pp & PANEL_POWER_ON, "Panel power already on\n");
 
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index ab61f88d1d33..d6e0d0be842e 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -126,8 +126,8 @@ static void i9xx_set_fifo_underrun_reporting(struct drm_device *dev,
 	}
 }
 
-static void ironlake_set_fifo_underrun_reporting(struct drm_device *dev,
-						 enum pipe pipe, bool enable)
+static void ilk_set_fifo_underrun_reporting(struct drm_device *dev,
+					    enum pipe pipe, bool enable)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	u32 bit = (pipe == PIPE_A) ?
@@ -264,7 +264,7 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
 	if (HAS_GMCH(dev_priv))
 		i9xx_set_fifo_underrun_reporting(dev, pipe, enable, old);
 	else if (IS_GEN_RANGE(dev_priv, 5, 6))
-		ironlake_set_fifo_underrun_reporting(dev, pipe, enable);
+		ilk_set_fifo_underrun_reporting(dev, pipe, enable);
 	else if (IS_GEN(dev_priv, 7))
 		ivybridge_set_fifo_underrun_reporting(dev, pipe, enable, old);
 	else if (INTEL_GEN(dev_priv) >= 8)
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
