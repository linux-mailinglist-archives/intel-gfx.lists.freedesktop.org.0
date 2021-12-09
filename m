Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C12A46EF75
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC7F10E64E;
	Thu,  9 Dec 2021 16:54:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8465C10E120
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 14:43:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="238053122"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="238053122"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 06:43:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="463254723"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 09 Dec 2021 06:43:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 16:43:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 16:43:09 +0200
Message-Id: <20211209144311.3221-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Fix up pixel_rate vs. clock
 confusion in wm calculations
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

Use pixel_rate rather than crtc_clock in the watermark calculations.
These are actually identical on gmch platforms for now since
we don't adjust the pixel rate based on pfit downscaling. But
pixel_rate is the thing we are actually interested here so use
the proper name for it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 52 ++++++++++++++-------------------
 1 file changed, 22 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 434b1f8b7fe3..b5d5b625a321 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -915,15 +915,13 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 
 	crtc = single_enabled_crtc(dev_priv);
 	if (crtc) {
-		const struct drm_display_mode *pipe_mode =
-			&crtc->config->hw.pipe_mode;
 		const struct drm_framebuffer *fb =
 			crtc->base.primary->state->fb;
+		int pixel_rate = crtc->config->pixel_rate;
 		int cpp = fb->format->cpp[0];
-		int clock = pipe_mode->crtc_clock;
 
 		/* Display SR */
-		wm = intel_calculate_wm(clock, &pnv_display_wm,
+		wm = intel_calculate_wm(pixel_rate, &pnv_display_wm,
 					pnv_display_wm.fifo_size,
 					cpp, latency->display_sr);
 		reg = intel_uncore_read(&dev_priv->uncore, DSPFW1);
@@ -933,7 +931,7 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 		drm_dbg_kms(&dev_priv->drm, "DSPFW1 register is %x\n", reg);
 
 		/* cursor SR */
-		wm = intel_calculate_wm(clock, &pnv_cursor_wm,
+		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_wm,
 					pnv_display_wm.fifo_size,
 					4, latency->cursor_sr);
 		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
@@ -942,7 +940,7 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
 
 		/* Display HPLL off SR */
-		wm = intel_calculate_wm(clock, &pnv_display_hplloff_wm,
+		wm = intel_calculate_wm(pixel_rate, &pnv_display_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					cpp, latency->display_hpll_disable);
 		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
@@ -951,7 +949,7 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
 
 		/* cursor HPLL off SR */
-		wm = intel_calculate_wm(clock, &pnv_cursor_hplloff_wm,
+		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					4, latency->cursor_hpll_disable);
 		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
@@ -1154,7 +1152,7 @@ static u16 g4x_compute_wm(const struct intel_crtc_state *crtc_state,
 	const struct drm_display_mode *pipe_mode =
 		&crtc_state->hw.pipe_mode;
 	unsigned int latency = dev_priv->wm.pri_latency[level] * 10;
-	unsigned int clock, htotal, cpp, width, wm;
+	unsigned int pixel_rate, htotal, cpp, width, wm;
 
 	if (latency == 0)
 		return USHRT_MAX;
@@ -1175,21 +1173,21 @@ static u16 g4x_compute_wm(const struct intel_crtc_state *crtc_state,
 	    level != G4X_WM_LEVEL_NORMAL)
 		cpp = max(cpp, 4u);
 
-	clock = pipe_mode->crtc_clock;
+	pixel_rate = crtc_state->pixel_rate;
 	htotal = pipe_mode->crtc_htotal;
 
 	width = drm_rect_width(&plane_state->uapi.dst);
 
 	if (plane->id == PLANE_CURSOR) {
-		wm = intel_wm_method2(clock, htotal, width, cpp, latency);
+		wm = intel_wm_method2(pixel_rate, htotal, width, cpp, latency);
 	} else if (plane->id == PLANE_PRIMARY &&
 		   level == G4X_WM_LEVEL_NORMAL) {
-		wm = intel_wm_method1(clock, cpp, latency);
+		wm = intel_wm_method1(pixel_rate, cpp, latency);
 	} else {
 		unsigned int small, large;
 
-		small = intel_wm_method1(clock, cpp, latency);
-		large = intel_wm_method2(clock, htotal, width, cpp, latency);
+		small = intel_wm_method1(pixel_rate, cpp, latency);
+		large = intel_wm_method2(pixel_rate, htotal, width, cpp, latency);
 
 		wm = min(small, large);
 	}
@@ -1674,7 +1672,7 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_display_mode *pipe_mode =
 		&crtc_state->hw.pipe_mode;
-	unsigned int clock, htotal, cpp, width, wm;
+	unsigned int pixel_rate, htotal, cpp, width, wm;
 
 	if (dev_priv->wm.pri_latency[level] == 0)
 		return USHRT_MAX;
@@ -1683,7 +1681,7 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 		return 0;
 
 	cpp = plane_state->hw.fb->format->cpp[0];
-	clock = pipe_mode->crtc_clock;
+	pixel_rate = crtc_state->pixel_rate;
 	htotal = pipe_mode->crtc_htotal;
 	width = crtc_state->pipe_src_w;
 
@@ -1696,7 +1694,7 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 		 */
 		wm = 63;
 	} else {
-		wm = vlv_wm_method2(clock, htotal, width, cpp,
+		wm = vlv_wm_method2(pixel_rate, htotal, width, cpp,
 				    dev_priv->wm.pri_latency[level] * 10);
 	}
 
@@ -2277,13 +2275,13 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
 			&crtc->config->hw.pipe_mode;
 		const struct drm_framebuffer *fb =
 			crtc->base.primary->state->fb;
-		int clock = pipe_mode->crtc_clock;
+		int pixel_rate = crtc->config->pixel_rate;
 		int htotal = pipe_mode->crtc_htotal;
 		int hdisplay = crtc->config->pipe_src_w;
 		int cpp = fb->format->cpp[0];
 		int entries;
 
-		entries = intel_wm_method2(clock, htotal,
+		entries = intel_wm_method2(pixel_rate, htotal,
 					   hdisplay, cpp, sr_latency_ns / 100);
 		entries = DIV_ROUND_UP(entries, I915_FIFO_LINE_SIZE);
 		srwm = I965_FIFO_SIZE - entries;
@@ -2294,7 +2292,7 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
 			    "self-refresh entries: %d, wm: %d\n",
 			    entries, srwm);
 
-		entries = intel_wm_method2(clock, htotal,
+		entries = intel_wm_method2(pixel_rate, htotal,
 					   crtc->base.cursor->state->crtc_w, 4,
 					   sr_latency_ns / 100);
 		entries = DIV_ROUND_UP(entries,
@@ -2373,8 +2371,6 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 		fifo_size = i9xx_get_fifo_size(dev_priv, PLANE_A);
 	crtc = intel_crtc_for_plane(dev_priv, PLANE_A);
 	if (intel_crtc_active(crtc)) {
-		const struct drm_display_mode *pipe_mode =
-			&crtc->config->hw.pipe_mode;
 		const struct drm_framebuffer *fb =
 			crtc->base.primary->state->fb;
 		int cpp;
@@ -2384,7 +2380,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 		else
 			cpp = fb->format->cpp[0];
 
-		planea_wm = intel_calculate_wm(pipe_mode->crtc_clock,
+		planea_wm = intel_calculate_wm(crtc->config->pixel_rate,
 					       wm_info, fifo_size, cpp,
 					       pessimal_latency_ns);
 		enabled = crtc;
@@ -2403,8 +2399,6 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 		fifo_size = i9xx_get_fifo_size(dev_priv, PLANE_B);
 	crtc = intel_crtc_for_plane(dev_priv, PLANE_B);
 	if (intel_crtc_active(crtc)) {
-		const struct drm_display_mode *pipe_mode =
-			&crtc->config->hw.pipe_mode;
 		const struct drm_framebuffer *fb =
 			crtc->base.primary->state->fb;
 		int cpp;
@@ -2414,7 +2408,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 		else
 			cpp = fb->format->cpp[0];
 
-		planeb_wm = intel_calculate_wm(pipe_mode->crtc_clock,
+		planeb_wm = intel_calculate_wm(crtc->config->pixel_rate,
 					       wm_info, fifo_size, cpp,
 					       pessimal_latency_ns);
 		if (enabled == NULL)
@@ -2456,7 +2450,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 			&enabled->config->hw.pipe_mode;
 		const struct drm_framebuffer *fb =
 			enabled->base.primary->state->fb;
-		int clock = pipe_mode->crtc_clock;
+		int pixel_rate = enabled->config->pixel_rate;
 		int htotal = pipe_mode->crtc_htotal;
 		int hdisplay = enabled->config->pipe_src_w;
 		int cpp;
@@ -2467,7 +2461,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 		else
 			cpp = fb->format->cpp[0];
 
-		entries = intel_wm_method2(clock, htotal, hdisplay, cpp,
+		entries = intel_wm_method2(pixel_rate, htotal, hdisplay, cpp,
 					   sr_latency_ns / 100);
 		entries = DIV_ROUND_UP(entries, wm_info->cacheline_size);
 		drm_dbg_kms(&dev_priv->drm,
@@ -2504,7 +2498,6 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 static void i845_update_wm(struct drm_i915_private *dev_priv)
 {
 	struct intel_crtc *crtc;
-	const struct drm_display_mode *pipe_mode;
 	u32 fwater_lo;
 	int planea_wm;
 
@@ -2512,8 +2505,7 @@ static void i845_update_wm(struct drm_i915_private *dev_priv)
 	if (crtc == NULL)
 		return;
 
-	pipe_mode = &crtc->config->hw.pipe_mode;
-	planea_wm = intel_calculate_wm(pipe_mode->crtc_clock,
+	planea_wm = intel_calculate_wm(crtc->config->pixel_rate,
 				       &i845_wm_info,
 				       i845_get_fifo_size(dev_priv, PLANE_A),
 				       4, pessimal_latency_ns);
-- 
2.32.0

