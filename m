Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 675F11C0DB0
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 07:16:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2276E49F;
	Fri,  1 May 2020 05:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDA156E49F
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 05:16:54 +0000 (UTC)
IronPort-SDR: /rqa2kkUc+BLepbpaUyalVTPey03ohxrhavvk4PpFgImENwi2le3LfF7okzoV8bZkALxKsaBAU
 cukUzNIyQo+w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 22:16:53 -0700
IronPort-SDR: t0l0Aof0g5AkXwKQ1KfZn97saISc/5UJpRS7ZlO+nM67S/HywXJwJazboDhzPFo0UvLE0P3i2l
 dAVfMSofJ71A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,338,1583222400"; d="scan'208";a="303480102"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Apr 2020 22:16:53 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 22:18:17 -0700
Message-Id: <20200501051817.28487-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200430230951.2508-4-manasi.d.navare@intel.com>
References: <20200430230951.2508-4-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 03/11] drm/i915: Add hw.pipe_mode to allow
 bigjoiner pipe/transcoder split
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

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

v3:
* Change state to crtc_state, fix rebase err  (Manasi)
v2:
* Manual Rebase (Manasi)

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 61 ++++++++-------
 .../drm/i915/display/intel_display_types.h    | 11 ++-
 drivers/gpu/drm/i915/intel_pm.c               | 76 +++++++++----------
 3 files changed, 79 insertions(+), 69 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5d9a19f6fcfe..12ceef5df73a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -151,7 +151,7 @@ static void ilk_pch_clock_get(struct intel_crtc *crtc,
 static int intel_framebuffer_init(struct intel_framebuffer *ifb,
 				  struct drm_i915_gem_object *obj,
 				  struct drm_mode_fb_cmd2 *mode_cmd);
-static void intel_set_pipe_timings(const struct intel_crtc_state *crtc_state);
+static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
 static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
 					 const struct intel_link_m_n *m_n,
@@ -6091,18 +6091,16 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 
 static int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
 {
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
+	const struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
 	int width, height;
 
 	if (crtc_state->pch_pfit.enabled) {
 		width = drm_rect_width(&crtc_state->pch_pfit.dst);
 		height = drm_rect_height(&crtc_state->pch_pfit.dst);
 	} else {
-		width = adjusted_mode->crtc_hdisplay;
-		height = adjusted_mode->crtc_vdisplay;
+		width = pipe_mode->crtc_hdisplay;
+		height = pipe_mode->crtc_vdisplay;
 	}
-
 	return skl_update_scaler(crtc_state, !crtc_state->hw.active,
 				 SKL_CRTC_INDEX,
 				 &crtc_state->scaler_state.scaler_id,
@@ -6883,7 +6881,7 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	if (intel_crtc_has_dp_encoder(new_crtc_state))
 		intel_dp_set_m_n(new_crtc_state, M1_N1);
 
-	intel_set_pipe_timings(new_crtc_state);
+	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
 
 	if (new_crtc_state->has_pch_encoder)
@@ -7028,7 +7026,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_pre_enable(state, crtc);
 
 	if (!transcoder_is_dsi(cpu_transcoder))
-		intel_set_pipe_timings(new_crtc_state);
+		intel_set_transcoder_timings(new_crtc_state);
 
 	intel_set_pipe_src_size(new_crtc_state);
 
@@ -7408,7 +7406,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	if (intel_crtc_has_dp_encoder(new_crtc_state))
 		intel_dp_set_m_n(new_crtc_state, M1_N1);
 
-	intel_set_pipe_timings(new_crtc_state);
+	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
 
 	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
@@ -7476,7 +7474,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	if (intel_crtc_has_dp_encoder(new_crtc_state))
 		intel_dp_set_m_n(new_crtc_state, M1_N1);
 
-	intel_set_pipe_timings(new_crtc_state);
+	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
 
 	i9xx_set_pipeconf(new_crtc_state);
@@ -7942,7 +7940,7 @@ static bool intel_crtc_supports_double_wide(const struct intel_crtc *crtc)
 
 static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
 {
-	u32 pixel_rate = crtc_state->hw.adjusted_mode.crtc_clock;
+	u32 pixel_rate = crtc_state->hw.pipe_mode.crtc_clock;
 	unsigned int pipe_w, pipe_h, pfit_w, pfit_h;
 
 	/*
@@ -7979,7 +7977,7 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 	if (HAS_GMCH(dev_priv))
 		/* FIXME calculate proper pipe pixel rate for GMCH pfit */
 		crtc_state->pixel_rate =
-			crtc_state->hw.adjusted_mode.crtc_clock;
+			crtc_state->hw.pipe_mode.crtc_clock;
 	else
 		crtc_state->pixel_rate =
 			ilk_pipe_pixel_rate(crtc_state);
@@ -7989,7 +7987,7 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 				     struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
+	const struct drm_display_mode *pipe_mode = &pipe_config->hw.pipe_mode;
 	int clock_limit = dev_priv->max_dotclk_freq;
 
 	if (INTEL_GEN(dev_priv) < 4) {
@@ -8000,16 +7998,16 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 		 * is > 90% of the (display) core speed.
 		 */
 		if (intel_crtc_supports_double_wide(crtc) &&
-		    adjusted_mode->crtc_clock > clock_limit) {
+		    pipe_mode->crtc_clock > clock_limit) {
 			clock_limit = dev_priv->max_dotclk_freq;
 			pipe_config->double_wide = true;
 		}
 	}
 
-	if (adjusted_mode->crtc_clock > clock_limit) {
+	if (pipe_mode->crtc_clock > clock_limit) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "requested pixel clock (%d kHz) too high (max: %d kHz, double wide: %s)\n",
-			    adjusted_mode->crtc_clock, clock_limit,
+			    pipe_mode->crtc_clock, clock_limit,
 			    yesno(pipe_config->double_wide));
 		return -EINVAL;
 	}
@@ -8052,7 +8050,7 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 	 * WaPruneModeWithIncorrectHsyncOffset:ctg,elk,ilk,snb,ivb,vlv,hsw.
 	 */
 	if ((INTEL_GEN(dev_priv) > 4 || IS_G4X(dev_priv)) &&
-		adjusted_mode->crtc_hsync_start == adjusted_mode->crtc_hdisplay)
+		pipe_mode->crtc_hsync_start == pipe_mode->crtc_hdisplay)
 		return -EINVAL;
 
 	intel_crtc_compute_pixel_rate(pipe_config);
@@ -8722,7 +8720,7 @@ static void i8xx_compute_dpll(struct intel_crtc *crtc,
 	crtc_state->dpll_hw_state.dpll = dpll;
 }
 
-static void intel_set_pipe_timings(const struct intel_crtc_state *crtc_state)
+static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -8808,8 +8806,8 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
 		return intel_de_read(dev_priv, PIPECONF(cpu_transcoder)) & PIPECONF_INTERLACE_MASK;
 }
 
-static void intel_get_pipe_timings(struct intel_crtc *crtc,
-				   struct intel_crtc_state *pipe_config)
+static void intel_get_transcoder_timings(struct intel_crtc *crtc,
+					 struct intel_crtc_state *pipe_config)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -9430,7 +9428,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	if (INTEL_GEN(dev_priv) < 4)
 		pipe_config->double_wide = tmp & PIPECONF_DOUBLE_WIDE;
 
-	intel_get_pipe_timings(crtc, pipe_config);
+	intel_get_transcoder_timings(crtc, pipe_config);
 	intel_get_pipe_src_size(crtc, pipe_config);
 
 	i9xx_get_pfit_config(pipe_config);
@@ -10710,7 +10708,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 		pipe_config->pixel_multiplier = 1;
 	}
 
-	intel_get_pipe_timings(crtc, pipe_config);
+	intel_get_transcoder_timings(crtc, pipe_config);
 	intel_get_pipe_src_size(crtc, pipe_config);
 
 	ilk_get_pfit_config(pipe_config);
@@ -11122,7 +11120,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
 	    INTEL_GEN(dev_priv) >= 11) {
 		hsw_get_ddi_port_state(crtc, pipe_config);
-		intel_get_pipe_timings(crtc, pipe_config);
+		intel_get_transcoder_timings(crtc, pipe_config);
 	}
 
 	intel_get_pipe_src_size(crtc, pipe_config);
@@ -12564,14 +12562,14 @@ static bool c8_planes_changed(const struct intel_crtc_state *new_crtc_state)
 
 static u16 hsw_linetime_wm(const struct intel_crtc_state *crtc_state)
 {
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
+	const struct drm_display_mode *pipe_mode =
+		&crtc_state->hw.pipe_mode;
 
 	if (!crtc_state->hw.enable)
 		return 0;
 
-	return DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000 * 8,
-				 adjusted_mode->crtc_clock);
+	return DIV_ROUND_CLOSEST(pipe_mode->crtc_htotal * 1000 * 8,
+				 pipe_mode->crtc_clock);
 }
 
 static u16 hsw_ips_linetime_wm(const struct intel_crtc_state *crtc_state,
@@ -13164,7 +13162,7 @@ intel_crtc_copy_uapi_to_hw_state(struct intel_crtc_state *crtc_state)
 {
 	crtc_state->hw.enable = crtc_state->uapi.enable;
 	crtc_state->hw.active = crtc_state->uapi.active;
-	crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;
+	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;
 	intel_crtc_copy_uapi_to_hw_state_nomodeset(crtc_state);
 }
 
@@ -13271,7 +13269,7 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 	 * computation to clearly distinguish it from the adjusted mode, which
 	 * can be changed by the connectors in the below retry loop.
 	 */
-	drm_mode_get_hv_timing(&pipe_config->hw.adjusted_mode,
+	drm_mode_get_hv_timing(&pipe_config->hw.pipe_mode,
 			       &pipe_config->pipe_src_w,
 			       &pipe_config->pipe_src_h);
 
@@ -13370,6 +13368,8 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 	 * drm_atomic_helper_update_legacy_modeset_state() happy
 	 */
 	pipe_config->uapi.adjusted_mode = pipe_config->hw.adjusted_mode;
+	/* without bigjoiner, pipe_mode == adjusted_mode */
+	pipe_config->hw.pipe_mode = pipe_config->hw.adjusted_mode;
 
 	return 0;
 }
@@ -18281,6 +18281,9 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			 */
 			crtc_state->hw.adjusted_mode.private_flags = I915_MODE_FLAG_INHERITED;
 
+			/* initialize pipe_mode */
+			crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode;
+
 			mode = crtc_state->hw.adjusted_mode;
 			mode.hdisplay = crtc_state->pipe_src_w;
 			mode.vdisplay = crtc_state->pipe_src_h;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index cd1f2037f647..c9bc1dd63f79 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -811,15 +811,22 @@ struct intel_crtc_state {
 	 * The following members are used to verify the hardware state:
 	 * - enable
 	 * - active
-	 * - mode / adjusted_mode
+	 * - adjusted_mode
 	 * - color property blobs.
 	 *
 	 * During initial hw readout, they need to be copied to uapi.
+	 *
+	 * Bigjoiner will allow a transcoder mode that spans 2 pipes;
+	 * Use the pipe_mode for calculations like watermarks, pipe
+	 * scaler, and bandwidth.
+	 *
+	 * Use adjusted_mode for things that need to know the full
+	 * mode on the transcoder, which spans all pipes.
 	 */
 	struct {
 		bool active, enable;
 		struct drm_property_blob *degamma_lut, *gamma_lut, *ctm;
-		struct drm_display_mode adjusted_mode;
+		struct drm_display_mode pipe_mode, adjusted_mode;
 	} hw;
 
 	/**
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index bfb180fe8047..1b688da5e807 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -893,12 +893,12 @@ static void pnv_update_wm(struct intel_crtc *unused_crtc)
 
 	crtc = single_enabled_crtc(dev_priv);
 	if (crtc) {
-		const struct drm_display_mode *adjusted_mode =
-			&crtc->config->hw.adjusted_mode;
+		const struct drm_display_mode *pipe_mode =
+			&crtc->config->hw.pipe_mode;
 		const struct drm_framebuffer *fb =
 			crtc->base.primary->state->fb;
 		int cpp = fb->format->cpp[0];
-		int clock = adjusted_mode->crtc_clock;
+		int clock = pipe_mode->crtc_clock;
 
 		/* Display SR */
 		wm = intel_calculate_wm(clock, &pnv_display_wm,
@@ -1129,8 +1129,8 @@ static u16 g4x_compute_wm(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
+	const struct drm_display_mode *pipe_mode =
+		&crtc_state->hw.pipe_mode;
 	unsigned int latency = dev_priv->wm.pri_latency[level] * 10;
 	unsigned int clock, htotal, cpp, width, wm;
 
@@ -1157,8 +1157,8 @@ static u16 g4x_compute_wm(const struct intel_crtc_state *crtc_state,
 	    level != G4X_WM_LEVEL_NORMAL)
 		cpp = max(cpp, 4u);
 
-	clock = adjusted_mode->crtc_clock;
-	htotal = adjusted_mode->crtc_htotal;
+	clock = pipe_mode->crtc_clock;
+	htotal = pipe_mode->crtc_htotal;
 
 	width = drm_rect_width(&plane_state->uapi.dst);
 
@@ -1640,8 +1640,8 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
+	const struct drm_display_mode *pipe_mode =
+		&crtc_state->hw.pipe_mode;
 	unsigned int clock, htotal, cpp, width, wm;
 
 	if (dev_priv->wm.pri_latency[level] == 0)
@@ -1651,8 +1651,8 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 		return 0;
 
 	cpp = plane_state->hw.fb->format->cpp[0];
-	clock = adjusted_mode->crtc_clock;
-	htotal = adjusted_mode->crtc_htotal;
+	clock = pipe_mode->crtc_clock;
+	htotal = pipe_mode->crtc_htotal;
 	width = crtc_state->pipe_src_w;
 
 	if (plane->id == PLANE_CURSOR) {
@@ -2240,12 +2240,12 @@ static void i965_update_wm(struct intel_crtc *unused_crtc)
 	if (crtc) {
 		/* self-refresh has much higher latency */
 		static const int sr_latency_ns = 12000;
-		const struct drm_display_mode *adjusted_mode =
-			&crtc->config->hw.adjusted_mode;
+		const struct drm_display_mode *pipe_mode =
+			&crtc->config->hw.pipe_mode;
 		const struct drm_framebuffer *fb =
 			crtc->base.primary->state->fb;
-		int clock = adjusted_mode->crtc_clock;
-		int htotal = adjusted_mode->crtc_htotal;
+		int clock = pipe_mode->crtc_clock;
+		int htotal = pipe_mode->crtc_htotal;
 		int hdisplay = crtc->config->pipe_src_w;
 		int cpp = fb->format->cpp[0];
 		int entries;
@@ -2324,8 +2324,8 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 	fifo_size = dev_priv->display.get_fifo_size(dev_priv, PLANE_A);
 	crtc = intel_get_crtc_for_plane(dev_priv, PLANE_A);
 	if (intel_crtc_active(crtc)) {
-		const struct drm_display_mode *adjusted_mode =
-			&crtc->config->hw.adjusted_mode;
+		const struct drm_display_mode *pipe_mode =
+			&crtc->config->hw.pipe_mode;
 		const struct drm_framebuffer *fb =
 			crtc->base.primary->state->fb;
 		int cpp;
@@ -2335,7 +2335,7 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 		else
 			cpp = fb->format->cpp[0];
 
-		planea_wm = intel_calculate_wm(adjusted_mode->crtc_clock,
+		planea_wm = intel_calculate_wm(pipe_mode->crtc_clock,
 					       wm_info, fifo_size, cpp,
 					       pessimal_latency_ns);
 		enabled = crtc;
@@ -2351,8 +2351,8 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 	fifo_size = dev_priv->display.get_fifo_size(dev_priv, PLANE_B);
 	crtc = intel_get_crtc_for_plane(dev_priv, PLANE_B);
 	if (intel_crtc_active(crtc)) {
-		const struct drm_display_mode *adjusted_mode =
-			&crtc->config->hw.adjusted_mode;
+		const struct drm_display_mode *pipe_mode =
+			&crtc->config->hw.pipe_mode;
 		const struct drm_framebuffer *fb =
 			crtc->base.primary->state->fb;
 		int cpp;
@@ -2362,7 +2362,7 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 		else
 			cpp = fb->format->cpp[0];
 
-		planeb_wm = intel_calculate_wm(adjusted_mode->crtc_clock,
+		planeb_wm = intel_calculate_wm(pipe_mode->crtc_clock,
 					       wm_info, fifo_size, cpp,
 					       pessimal_latency_ns);
 		if (enabled == NULL)
@@ -2400,12 +2400,12 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 	if (HAS_FW_BLC(dev_priv) && enabled) {
 		/* self-refresh has much higher latency */
 		static const int sr_latency_ns = 6000;
-		const struct drm_display_mode *adjusted_mode =
-			&enabled->config->hw.adjusted_mode;
+		const struct drm_display_mode *pipe_mode =
+			&enabled->config->hw.pipe_mode;
 		const struct drm_framebuffer *fb =
 			enabled->base.primary->state->fb;
-		int clock = adjusted_mode->crtc_clock;
-		int htotal = adjusted_mode->crtc_htotal;
+		int clock = pipe_mode->crtc_clock;
+		int htotal = pipe_mode->crtc_htotal;
 		int hdisplay = enabled->config->pipe_src_w;
 		int cpp;
 		int entries;
@@ -2453,7 +2453,7 @@ static void i845_update_wm(struct intel_crtc *unused_crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(unused_crtc->base.dev);
 	struct intel_crtc *crtc;
-	const struct drm_display_mode *adjusted_mode;
+	const struct drm_display_mode *pipe_mode;
 	u32 fwater_lo;
 	int planea_wm;
 
@@ -2461,8 +2461,8 @@ static void i845_update_wm(struct intel_crtc *unused_crtc)
 	if (crtc == NULL)
 		return;
 
-	adjusted_mode = &crtc->config->hw.adjusted_mode;
-	planea_wm = intel_calculate_wm(adjusted_mode->crtc_clock,
+	pipe_mode = &crtc->config->hw.pipe_mode;
+	planea_wm = intel_calculate_wm(pipe_mode->crtc_clock,
 				       &i845_wm_info,
 				       dev_priv->display.get_fifo_size(dev_priv, PLANE_A),
 				       4, pessimal_latency_ns);
@@ -2552,7 +2552,7 @@ static u32 ilk_compute_pri_wm(const struct intel_crtc_state *crtc_state,
 		return method1;
 
 	method2 = ilk_wm_method2(crtc_state->pixel_rate,
-				 crtc_state->hw.adjusted_mode.crtc_htotal,
+				 crtc_state->hw.pipe_mode.crtc_htotal,
 				 drm_rect_width(&plane_state->uapi.dst),
 				 cpp, mem_value);
 
@@ -2580,7 +2580,7 @@ static u32 ilk_compute_spr_wm(const struct intel_crtc_state *crtc_state,
 
 	method1 = ilk_wm_method1(crtc_state->pixel_rate, cpp, mem_value);
 	method2 = ilk_wm_method2(crtc_state->pixel_rate,
-				 crtc_state->hw.adjusted_mode.crtc_htotal,
+				 crtc_state->hw.pipe_mode.crtc_htotal,
 				 drm_rect_width(&plane_state->uapi.dst),
 				 cpp, mem_value);
 	return min(method1, method2);
@@ -2605,7 +2605,7 @@ static u32 ilk_compute_cur_wm(const struct intel_crtc_state *crtc_state,
 	cpp = plane_state->hw.fb->format->cpp[0];
 
 	return ilk_wm_method2(crtc_state->pixel_rate,
-			      crtc_state->hw.adjusted_mode.crtc_htotal,
+			      crtc_state->hw.pipe_mode.crtc_htotal,
 			      drm_rect_width(&plane_state->uapi.dst),
 			      cpp, mem_value);
 }
@@ -3784,7 +3784,7 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
 	if (!crtc_state->hw.active)
 		return true;
 
-	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
+	if (crtc_state->hw.pipe_mode.flags & DRM_MODE_FLAG_INTERLACE)
 		return false;
 
 	for_each_intel_plane_on_crtc(dev, crtc, plane) {
@@ -3975,8 +3975,8 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
 	 */
 	total_slice_mask = dbuf_slice_mask;
 	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
-		const struct drm_display_mode *adjusted_mode =
-			&crtc_state->hw.adjusted_mode;
+		const struct drm_display_mode *pipe_mode =
+			&crtc_state->hw.pipe_mode;
 		enum pipe pipe = crtc->pipe;
 		int hdisplay, vdisplay;
 		u32 pipe_dbuf_slice_mask;
@@ -4006,7 +4006,7 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
 		if (dbuf_slice_mask != pipe_dbuf_slice_mask)
 			continue;
 
-		drm_mode_get_hv_timing(adjusted_mode, &hdisplay, &vdisplay);
+		drm_mode_get_hv_timing(pipe_mode, &hdisplay, &vdisplay);
 
 		total_width_in_range += hdisplay;
 
@@ -4848,7 +4848,7 @@ intel_get_linetime_us(const struct intel_crtc_state *crtc_state)
 	if (WARN_ON(pixel_rate == 0))
 		return u32_to_fixed16(0);
 
-	crtc_htotal = crtc_state->hw.adjusted_mode.crtc_htotal;
+	crtc_htotal = crtc_state->hw.pipe_mode.crtc_htotal;
 	linetime_us = div_fixed16(crtc_htotal * 1000, pixel_rate);
 
 	return linetime_us;
@@ -5032,14 +5032,14 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	method1 = skl_wm_method1(dev_priv, wp->plane_pixel_rate,
 				 wp->cpp, latency, wp->dbuf_block_size);
 	method2 = skl_wm_method2(wp->plane_pixel_rate,
-				 crtc_state->hw.adjusted_mode.crtc_htotal,
+				 crtc_state->hw.pipe_mode.crtc_htotal,
 				 latency,
 				 wp->plane_blocks_per_line);
 
 	if (wp->y_tiled) {
 		selected_result = max_fixed16(method2, wp->y_tile_minimum);
 	} else {
-		if ((wp->cpp * crtc_state->hw.adjusted_mode.crtc_htotal /
+		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
 		     wp->dbuf_block_size < 1) &&
 		     (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
 			selected_result = method2;
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
