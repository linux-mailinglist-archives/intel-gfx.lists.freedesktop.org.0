Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C54295803
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 07:40:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 651576F3A9;
	Thu, 22 Oct 2020 05:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99A426E199
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 05:40:53 +0000 (UTC)
IronPort-SDR: YqxtBFAxVFnnUlRDt5GKcU3QNlpKOTTUZEakS1K90L01djJOyzxwMTNuIRg8MTLzZJXgJtRzZx
 1ZaPdDs972eg==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="146768361"
X-IronPort-AV: E=Sophos;i="5.77,403,1596524400"; d="scan'208";a="146768361"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 22:40:53 -0700
IronPort-SDR: +FQamBvfY7ZWbO5nfUrg2IhAlJMuhORSG2EPl+E0POH69r2mI799oewSCkpjLiMx/1Cpi+E5SP
 mpE9Uq6lJ4vQ==
X-IronPort-AV: E=Sophos;i="5.77,403,1596524400"; d="scan'208";a="523012881"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 21 Oct 2020 22:40:53 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 22:42:13 -0700
Message-Id: <20201022054223.25071-3-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201022054223.25071-1-manasi.d.navare@intel.com>
References: <20201022054223.25071-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v11 02/12] drm/i915: Add hw.pipe_mode to allow
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

With bigjoiner, there will be 2 pipes driving 2 halfs of 1 transcoder,
because of this, we need a pipe_mode for various calculations, including
for example watermarks, plane clipping, etc.

v6:
* renaming in separate function, only pipe_mode here (Ville)
* Add description (Maarten)
v5:
* Rebase (Manasi)
v4:
* Manual rebase (Manasi)
v3:
* Change state to crtc_state, fix rebase err  (Manasi)
v2:
* Manual Rebase (Manasi)

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 41 +++++-----
 .../drm/i915/display/intel_display_types.h    | 11 ++-
 drivers/gpu/drm/i915/intel_pm.c               | 76 +++++++++----------
 3 files changed, 70 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 130303e0298a..9b4fcc734122 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6167,18 +6167,16 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 
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
@@ -8192,7 +8190,7 @@ static bool intel_crtc_supports_double_wide(const struct intel_crtc *crtc)
 
 static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
 {
-	u32 pixel_rate = crtc_state->hw.adjusted_mode.crtc_clock;
+	u32 pixel_rate = crtc_state->hw.pipe_mode.crtc_clock;
 	unsigned int pipe_w, pipe_h, pfit_w, pfit_h;
 
 	/*
@@ -8229,7 +8227,7 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 	if (HAS_GMCH(dev_priv))
 		/* FIXME calculate proper pipe pixel rate for GMCH pfit */
 		crtc_state->pixel_rate =
-			crtc_state->hw.adjusted_mode.crtc_clock;
+			crtc_state->hw.pipe_mode.crtc_clock;
 	else
 		crtc_state->pixel_rate =
 			ilk_pipe_pixel_rate(crtc_state);
@@ -8239,7 +8237,7 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 				     struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
+	const struct drm_display_mode *pipe_mode = &pipe_config->hw.pipe_mode;
 	int clock_limit = dev_priv->max_dotclk_freq;
 
 	if (INTEL_GEN(dev_priv) < 4) {
@@ -8250,16 +8248,16 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
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
@@ -8302,7 +8300,7 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 	 * WaPruneModeWithIncorrectHsyncOffset:ctg,elk,ilk,snb,ivb,vlv,hsw.
 	 */
 	if ((INTEL_GEN(dev_priv) > 4 || IS_G4X(dev_priv)) &&
-		adjusted_mode->crtc_hsync_start == adjusted_mode->crtc_hdisplay)
+		pipe_mode->crtc_hsync_start == pipe_mode->crtc_hdisplay)
 		return -EINVAL;
 
 	intel_crtc_compute_pixel_rate(pipe_config);
@@ -12817,15 +12815,15 @@ static bool c8_planes_changed(const struct intel_crtc_state *new_crtc_state)
 
 static u16 hsw_linetime_wm(const struct intel_crtc_state *crtc_state)
 {
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
+	const struct drm_display_mode *pipe_mode =
+		&crtc_state->hw.pipe_mode;
 	int linetime_wm;
 
 	if (!crtc_state->hw.enable)
 		return 0;
 
-	linetime_wm = DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000 * 8,
-					adjusted_mode->crtc_clock);
+	linetime_wm = DIV_ROUND_CLOSEST(pipe_mode->crtc_htotal * 1000 * 8,
+					pipe_mode->crtc_clock);
 
 	return min(linetime_wm, 0x1ff);
 }
@@ -13455,8 +13453,9 @@ intel_crtc_copy_uapi_to_hw_state(struct intel_crtc_state *crtc_state)
 	crtc_state->hw.enable = crtc_state->uapi.enable;
 	crtc_state->hw.active = crtc_state->uapi.active;
 	crtc_state->hw.mode = crtc_state->uapi.mode;
-	crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;
+	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;
 	crtc_state->hw.scaling_filter = crtc_state->uapi.scaling_filter;
+
 	intel_crtc_copy_uapi_to_hw_state_nomodeset(crtc_state);
 }
 
@@ -13559,7 +13558,7 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 	 * computation to clearly distinguish it from the adjusted mode, which
 	 * can be changed by the connectors in the below retry loop.
 	 */
-	drm_mode_get_hv_timing(&pipe_config->hw.mode,
+	drm_mode_get_hv_timing(&pipe_config->hw.pipe_mode,
 			       &pipe_config->pipe_src_w,
 			       &pipe_config->pipe_src_h);
 
@@ -13653,6 +13652,9 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 		    "hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
 		    base_bpp, pipe_config->pipe_bpp, pipe_config->dither);
 
+	/* without bigjoiner, pipe_mode == adjusted_mode */
+	pipe_config->hw.pipe_mode = pipe_config->hw.adjusted_mode;
+
 	return 0;
 }
 
@@ -18910,6 +18912,9 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			 */
 			crtc_state->inherited = true;
 
+			/* initialize pipe_mode */
+			crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode;
+
 			intel_crtc_compute_pixel_rate(crtc_state);
 
 			intel_crtc_update_active_timings(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f6f0626649e0..b526afee595c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -817,15 +817,22 @@ struct intel_crtc_state {
 	 * The following members are used to verify the hardware state:
 	 * - enable
 	 * - active
-	 * - mode / adjusted_mode
+	 * - mode/adjusted_mode
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
-		struct drm_display_mode mode, adjusted_mode;
+		struct drm_display_mode mode, pipe_mode, adjusted_mode;
 		enum drm_scaling_filter scaling_filter;
 	} hw;
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 0ef01a01ef8d..18e52763dfec 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -899,12 +899,12 @@ static void pnv_update_wm(struct intel_crtc *unused_crtc)
 
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
@@ -1135,8 +1135,8 @@ static u16 g4x_compute_wm(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
+	const struct drm_display_mode *pipe_mode =
+		&crtc_state->hw.pipe_mode;
 	unsigned int latency = dev_priv->wm.pri_latency[level] * 10;
 	unsigned int clock, htotal, cpp, width, wm;
 
@@ -1163,8 +1163,8 @@ static u16 g4x_compute_wm(const struct intel_crtc_state *crtc_state,
 	    level != G4X_WM_LEVEL_NORMAL)
 		cpp = max(cpp, 4u);
 
-	clock = adjusted_mode->crtc_clock;
-	htotal = adjusted_mode->crtc_htotal;
+	clock = pipe_mode->crtc_clock;
+	htotal = pipe_mode->crtc_htotal;
 
 	width = drm_rect_width(&plane_state->uapi.dst);
 
@@ -1660,8 +1660,8 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
+	const struct drm_display_mode *pipe_mode =
+		&crtc_state->hw.pipe_mode;
 	unsigned int clock, htotal, cpp, width, wm;
 
 	if (dev_priv->wm.pri_latency[level] == 0)
@@ -1671,8 +1671,8 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 		return 0;
 
 	cpp = plane_state->hw.fb->format->cpp[0];
-	clock = adjusted_mode->crtc_clock;
-	htotal = adjusted_mode->crtc_htotal;
+	clock = pipe_mode->crtc_clock;
+	htotal = pipe_mode->crtc_htotal;
 	width = crtc_state->pipe_src_w;
 
 	if (plane->id == PLANE_CURSOR) {
@@ -2261,12 +2261,12 @@ static void i965_update_wm(struct intel_crtc *unused_crtc)
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
@@ -2345,8 +2345,8 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
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
@@ -2356,7 +2356,7 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 		else
 			cpp = fb->format->cpp[0];
 
-		planea_wm = intel_calculate_wm(adjusted_mode->crtc_clock,
+		planea_wm = intel_calculate_wm(pipe_mode->crtc_clock,
 					       wm_info, fifo_size, cpp,
 					       pessimal_latency_ns);
 		enabled = crtc;
@@ -2372,8 +2372,8 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
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
@@ -2383,7 +2383,7 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 		else
 			cpp = fb->format->cpp[0];
 
-		planeb_wm = intel_calculate_wm(adjusted_mode->crtc_clock,
+		planeb_wm = intel_calculate_wm(pipe_mode->crtc_clock,
 					       wm_info, fifo_size, cpp,
 					       pessimal_latency_ns);
 		if (enabled == NULL)
@@ -2421,12 +2421,12 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
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
@@ -2474,7 +2474,7 @@ static void i845_update_wm(struct intel_crtc *unused_crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(unused_crtc->base.dev);
 	struct intel_crtc *crtc;
-	const struct drm_display_mode *adjusted_mode;
+	const struct drm_display_mode *pipe_mode;
 	u32 fwater_lo;
 	int planea_wm;
 
@@ -2482,8 +2482,8 @@ static void i845_update_wm(struct intel_crtc *unused_crtc)
 	if (crtc == NULL)
 		return;
 
-	adjusted_mode = &crtc->config->hw.adjusted_mode;
-	planea_wm = intel_calculate_wm(adjusted_mode->crtc_clock,
+	pipe_mode = &crtc->config->hw.pipe_mode;
+	planea_wm = intel_calculate_wm(pipe_mode->crtc_clock,
 				       &i845_wm_info,
 				       dev_priv->display.get_fifo_size(dev_priv, PLANE_A),
 				       4, pessimal_latency_ns);
@@ -2573,7 +2573,7 @@ static u32 ilk_compute_pri_wm(const struct intel_crtc_state *crtc_state,
 		return method1;
 
 	method2 = ilk_wm_method2(crtc_state->pixel_rate,
-				 crtc_state->hw.adjusted_mode.crtc_htotal,
+				 crtc_state->hw.pipe_mode.crtc_htotal,
 				 drm_rect_width(&plane_state->uapi.dst),
 				 cpp, mem_value);
 
@@ -2601,7 +2601,7 @@ static u32 ilk_compute_spr_wm(const struct intel_crtc_state *crtc_state,
 
 	method1 = ilk_wm_method1(crtc_state->pixel_rate, cpp, mem_value);
 	method2 = ilk_wm_method2(crtc_state->pixel_rate,
-				 crtc_state->hw.adjusted_mode.crtc_htotal,
+				 crtc_state->hw.pipe_mode.crtc_htotal,
 				 drm_rect_width(&plane_state->uapi.dst),
 				 cpp, mem_value);
 	return min(method1, method2);
@@ -2626,7 +2626,7 @@ static u32 ilk_compute_cur_wm(const struct intel_crtc_state *crtc_state,
 	cpp = plane_state->hw.fb->format->cpp[0];
 
 	return ilk_wm_method2(crtc_state->pixel_rate,
-			      crtc_state->hw.adjusted_mode.crtc_htotal,
+			      crtc_state->hw.pipe_mode.crtc_htotal,
 			      drm_rect_width(&plane_state->uapi.dst),
 			      cpp, mem_value);
 }
@@ -3883,7 +3883,7 @@ static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->hw.active)
 		return true;
 
-	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
+	if (crtc_state->hw.pipe_mode.flags & DRM_MODE_FLAG_INTERLACE)
 		return false;
 
 	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc_state) {
@@ -4174,8 +4174,8 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
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
@@ -4205,7 +4205,7 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
 		if (dbuf_slice_mask != pipe_dbuf_slice_mask)
 			continue;
 
-		drm_mode_get_hv_timing(adjusted_mode, &hdisplay, &vdisplay);
+		drm_mode_get_hv_timing(pipe_mode, &hdisplay, &vdisplay);
 
 		total_width_in_range += hdisplay;
 
@@ -5093,7 +5093,7 @@ intel_get_linetime_us(const struct intel_crtc_state *crtc_state)
 	if (drm_WARN_ON(&dev_priv->drm, pixel_rate == 0))
 		return u32_to_fixed16(0);
 
-	crtc_htotal = crtc_state->hw.adjusted_mode.crtc_htotal;
+	crtc_htotal = crtc_state->hw.pipe_mode.crtc_htotal;
 	linetime_us = div_fixed16(crtc_htotal * 1000, pixel_rate);
 
 	return linetime_us;
@@ -5282,14 +5282,14 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
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
