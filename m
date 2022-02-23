Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A3F4C13C0
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 14:14:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC9FD10E9C6;
	Wed, 23 Feb 2022 13:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE4F310F3B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 13:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645622035; x=1677158035;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5EtHt9Kkiu/E6vCo8hZ9vcZ9SF7CzRNGjUhtWjiQH4E=;
 b=C5m4q15umPDNTUzDa5YSsrpNydWdy+vl2cQALR8gZ5S77VS3udyAmGLO
 3NVy2Aw+Uu2WD7fzKLecwgdga26q7M9XoEFQfy0SeV06X1wp33V11RFgM
 olUebztPXzUrLeKLTwpi23nwYY5KfwGORnN5u92mxP1MZNIhZ9ey8PN9+
 t5KZoN3i7EKDZaNPBSvjE8KKXdVJJJVAOqV0wfdqIwl0kTGf8o026e5ZM
 B6DAu1dDWVOSLMbtI8b9zgb/r02Qfb5JVb/lzITX1pLTl5lRfG2k5WOa3
 nePuiDe2SYbLt6AzjPw19+CvIEvPG8PN4lhEgutDCtU6OMTKD146KbFFF A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232579036"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="232579036"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 05:13:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="683890747"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 23 Feb 2022 05:13:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 15:13:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 15:13:12 +0200
Message-Id: <20220223131315.18016-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/13] drm/i915: Start tracking PIPESRC as a
 drm_rect
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

Instead of just having the pipe_src_{w,h} let's use a full
drm_rect for it. This will be particularly useful to astract
away some bigjoiner details.

v2: No hweight() stuff yet

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 15 ++--
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 55 ++++++++++-----
 .../drm/i915/display/intel_display_debugfs.c  |  4 +-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  | 12 ++--
 drivers/gpu/drm/i915/display/intel_panel.c    | 70 +++++++++----------
 drivers/gpu/drm/i915/display/skl_scaler.c     | 12 ++--
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 9 files changed, 96 insertions(+), 78 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index c53aa6a4c7a0..3cbf66146da0 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -803,8 +803,8 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct drm_rect *src = &plane_state->uapi.src;
 	struct drm_rect *dst = &plane_state->uapi.dst;
+	const struct drm_rect *clip = &crtc_state->pipe_src;
 	unsigned int rotation = plane_state->hw.rotation;
-	struct drm_rect clip = {};
 	int hscale, vscale;
 
 	if (!fb) {
@@ -824,28 +824,23 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 		return -ERANGE;
 	}
 
-	if (crtc_state->hw.enable) {
-		clip.x2 = crtc_state->pipe_src_w;
-		clip.y2 = crtc_state->pipe_src_h;
-	}
-
 	/* right side of the image is on the slave crtc, adjust dst to match */
 	if (intel_crtc_is_bigjoiner_slave(crtc_state))
-		drm_rect_translate(dst, -crtc_state->pipe_src_w, 0);
+		drm_rect_translate(dst, -drm_rect_width(&crtc_state->pipe_src), 0);
 
 	/*
 	 * FIXME: This might need further adjustment for seamless scaling
 	 * with phase information, for the 2p2 and 2p1 scenarios.
 	 */
-	plane_state->uapi.visible = drm_rect_clip_scaled(src, dst, &clip);
+	plane_state->uapi.visible = drm_rect_clip_scaled(src, dst, clip);
 
 	drm_rect_rotate_inv(src, fb->width << 16, fb->height << 16, rotation);
 
 	if (!can_position && plane_state->uapi.visible &&
-	    !drm_rect_equals(dst, &clip)) {
+	    !drm_rect_equals(dst, clip)) {
 		drm_dbg_kms(&i915->drm, "Plane must cover entire CRTC\n");
 		drm_rect_debug_print("dst: ", dst, false);
-		drm_rect_debug_print("clip: ", &clip, false);
+		drm_rect_debug_print("clip: ", clip, false);
 		return -EINVAL;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 3e80763aa828..1f448f4e9aaf 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -154,7 +154,7 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
 	plane_state->uapi.dst = dst;
 	if (intel_crtc_is_bigjoiner_slave(crtc_state))
 		drm_rect_translate(&plane_state->uapi.dst,
-				   -crtc_state->pipe_src_w, 0);
+				   -drm_rect_width(&crtc_state->pipe_src), 0);
 
 	ret = intel_cursor_check_surface(plane_state);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f0d51555617e..d3ffa62952bd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2687,8 +2687,8 @@ static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
 		return pixel_rate;
 
 	drm_rect_init(&src, 0, 0,
-		      crtc_state->pipe_src_w << 16,
-		      crtc_state->pipe_src_h << 16);
+		      drm_rect_width(&crtc_state->pipe_src) << 16,
+		      drm_rect_height(&crtc_state->pipe_src) << 16);
 
 	return intel_adjusted_rate(&src, &crtc_state->pch_pfit.dst,
 				   pixel_rate);
@@ -2792,8 +2792,8 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 	/* Populate the "user" mode with full numbers */
 	drm_mode_copy(mode, pipe_mode);
 	intel_mode_from_crtc_timings(mode, mode);
-	mode->hdisplay = crtc_state->pipe_src_w << crtc_state->bigjoiner;
-	mode->vdisplay = crtc_state->pipe_src_h;
+	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) << crtc_state->bigjoiner;
+	mode->vdisplay = drm_rect_height(&crtc_state->pipe_src);
 
 	/* Derive per-pipe timings in case bigjoiner is used */
 	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
@@ -2810,13 +2810,26 @@ static void intel_encoder_get_config(struct intel_encoder *encoder,
 	intel_crtc_readout_derived_state(crtc_state);
 }
 
+static void intel_bigjoiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
+{
+	int width, height;
+
+	if (!crtc_state->bigjoiner)
+		return;
+
+	width = drm_rect_width(&crtc_state->pipe_src);
+	height = drm_rect_height(&crtc_state->pipe_src);
+
+	drm_rect_init(&crtc_state->pipe_src, 0, 0,
+		      width / 2, height);
+}
+
 static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	if (crtc_state->bigjoiner)
-		crtc_state->pipe_src_w /= 2;
+	intel_bigjoiner_compute_pipe_src(crtc_state);
 
 	/*
 	 * Pipe horizontal size must be even in:
@@ -2824,7 +2837,7 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 	 * - LVDS dual channel mode
 	 * - Double wide pipe
 	 */
-	if (crtc_state->pipe_src_w & 1) {
+	if (drm_rect_width(&crtc_state->pipe_src) & 1) {
 		if (crtc_state->double_wide) {
 			drm_dbg_kms(&i915->drm,
 				    "[CRTC:%d:%s] Odd pipe source width not supported with double wide pipe\n",
@@ -3111,14 +3124,15 @@ static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	int width = drm_rect_width(&crtc_state->pipe_src);
+	int height = drm_rect_height(&crtc_state->pipe_src);
 	enum pipe pipe = crtc->pipe;
 
 	/* pipesrc controls the size that is scaled from, which should
 	 * always be the user's requested size.
 	 */
 	intel_de_write(dev_priv, PIPESRC(pipe),
-		       PIPESRC_WIDTH(crtc_state->pipe_src_w - 1) |
-		       PIPESRC_HEIGHT(crtc_state->pipe_src_h - 1));
+		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1));
 }
 
 static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
@@ -3189,8 +3203,10 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
 	u32 tmp;
 
 	tmp = intel_de_read(dev_priv, PIPESRC(crtc->pipe));
-	pipe_config->pipe_src_w = REG_FIELD_GET(PIPESRC_WIDTH_MASK, tmp) + 1;
-	pipe_config->pipe_src_h = REG_FIELD_GET(PIPESRC_HEIGHT_MASK, tmp) + 1;
+
+	drm_rect_init(&pipe_config->pipe_src, 0, 0,
+		      REG_FIELD_GET(PIPESRC_WIDTH_MASK, tmp) + 1,
+		      REG_FIELD_GET(PIPESRC_HEIGHT_MASK, tmp) + 1);
 }
 
 static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
@@ -5386,9 +5402,8 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 	drm_mode_debug_printmodeline(&pipe_config->hw.pipe_mode);
 	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.pipe_mode);
 	drm_dbg_kms(&dev_priv->drm,
-		    "port clock: %d, pipe src size: %dx%d, pixel rate %d\n",
-		    pipe_config->port_clock,
-		    pipe_config->pipe_src_w, pipe_config->pipe_src_h,
+		    "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d\n",
+		    pipe_config->port_clock, DRM_RECT_ARG(&pipe_config->pipe_src),
 		    pipe_config->pixel_rate);
 
 	drm_dbg_kms(&dev_priv->drm, "linetime: %d, ips linetime: %d\n",
@@ -5683,6 +5698,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
 	struct drm_connector *connector;
 	struct drm_connector_state *connector_state;
+	int pipe_src_w, pipe_src_h;
 	int base_bpp, ret, i;
 	bool retry = true;
 
@@ -5718,8 +5734,9 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	 * can be changed by the connectors in the below retry loop.
 	 */
 	drm_mode_get_hv_timing(&pipe_config->hw.mode,
-			       &pipe_config->pipe_src_w,
-			       &pipe_config->pipe_src_h);
+			       &pipe_src_w, &pipe_src_h);
+	drm_rect_init(&pipe_config->pipe_src, 0, 0,
+		      pipe_src_w, pipe_src_h);
 
 	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
 		struct intel_encoder *encoder =
@@ -6296,8 +6313,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(pch_pfit.force_thru);
 
 	if (!fastset) {
-		PIPE_CONF_CHECK_I(pipe_src_w);
-		PIPE_CONF_CHECK_I(pipe_src_h);
+		PIPE_CONF_CHECK_I(pipe_src.x1);
+		PIPE_CONF_CHECK_I(pipe_src.y1);
+		PIPE_CONF_CHECK_I(pipe_src.x2);
+		PIPE_CONF_CHECK_I(pipe_src.y2);
 
 		PIPE_CONF_CHECK_BOOL(pch_pfit.enabled);
 		if (current_config->pch_pfit.enabled) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index ffe6822d7414..a7d5affb46b3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -930,8 +930,8 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 	seq_printf(m, "\tpipe__mode=" DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&crtc_state->hw.pipe_mode));
 
-	seq_printf(m, "\tpipe src size=%dx%d, dither=%s, bpp=%d\n",
-		   crtc_state->pipe_src_w, crtc_state->pipe_src_h,
+	seq_printf(m, "\tpipe src=" DRM_RECT_FMT ", dither=%s, bpp=%d\n",
+		   DRM_RECT_ARG(&crtc_state->pipe_src),
 		   yesno(crtc_state->dither), crtc_state->pipe_bpp);
 
 	intel_scaler_info(m, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b50d0e6efe21..40caf8cbae7f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -954,7 +954,7 @@ struct intel_crtc_state {
 	/* Pipe source size (ie. panel fitter input size)
 	 * All planes will be positioned inside this space,
 	 * and get clipped at the edges. */
-	int pipe_src_w, pipe_src_h;
+	struct drm_rect pipe_src;
 
 	/*
 	 * Pipe pixel rate, adjusted for
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 76845d34ad0c..631e1f1dc5e6 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -960,14 +960,16 @@ static int check_overlay_dst(struct intel_overlay *overlay,
 {
 	const struct intel_crtc_state *pipe_config =
 		overlay->crtc->config;
+	int pipe_src_w = drm_rect_width(&pipe_config->pipe_src);
+	int pipe_src_h = drm_rect_height(&pipe_config->pipe_src);
 
 	if (rec->dst_height == 0 || rec->dst_width == 0)
 		return -EINVAL;
 
-	if (rec->dst_x < pipe_config->pipe_src_w &&
-	    rec->dst_x + rec->dst_width <= pipe_config->pipe_src_w &&
-	    rec->dst_y < pipe_config->pipe_src_h &&
-	    rec->dst_y + rec->dst_height <= pipe_config->pipe_src_h)
+	if (rec->dst_x < pipe_src_w &&
+	    rec->dst_x + rec->dst_width <= pipe_src_w &&
+	    rec->dst_y < pipe_src_h &&
+	    rec->dst_y + rec->dst_height <= pipe_src_h)
 		return 0;
 	else
 		return -EINVAL;
@@ -1160,7 +1162,7 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 		crtc->overlay = overlay;
 
 		/* line too wide, i.e. one-line-mode */
-		if (crtc->config->pipe_src_w > 1024 &&
+		if (drm_rect_width(&crtc->config->pipe_src) > 1024 &&
 		    crtc->config->gmch_pfit.control & PFIT_ENABLE) {
 			overlay->pfit_active = true;
 			update_pfit_vscale_ratio(overlay);
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index a0c8e43db5eb..6cd6d4fdd5ad 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -205,18 +205,20 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
+	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
 	int x, y, width, height;
 
 	/* Native modes don't need fitting */
-	if (adjusted_mode->crtc_hdisplay == crtc_state->pipe_src_w &&
-	    adjusted_mode->crtc_vdisplay == crtc_state->pipe_src_h &&
+	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
+	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
 	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
 		return 0;
 
 	switch (conn_state->scaling_mode) {
 	case DRM_MODE_SCALE_CENTER:
-		width = crtc_state->pipe_src_w;
-		height = crtc_state->pipe_src_h;
+		width = pipe_src_w;
+		height = pipe_src_h;
 		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
 		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
 		break;
@@ -224,19 +226,17 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	case DRM_MODE_SCALE_ASPECT:
 		/* Scale but preserve the aspect ratio */
 		{
-			u32 scaled_width = adjusted_mode->crtc_hdisplay
-				* crtc_state->pipe_src_h;
-			u32 scaled_height = crtc_state->pipe_src_w
-				* adjusted_mode->crtc_vdisplay;
+			u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
+			u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
 			if (scaled_width > scaled_height) { /* pillar */
-				width = scaled_height / crtc_state->pipe_src_h;
+				width = scaled_height / pipe_src_h;
 				if (width & 1)
 					width++;
 				x = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
 				y = 0;
 				height = adjusted_mode->crtc_vdisplay;
 			} else if (scaled_width < scaled_height) { /* letter */
-				height = scaled_width / crtc_state->pipe_src_w;
+				height = scaled_width / pipe_src_w;
 				if (height & 1)
 				    height++;
 				y = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
@@ -251,8 +251,8 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 		break;
 
 	case DRM_MODE_SCALE_NONE:
-		WARN_ON(adjusted_mode->crtc_hdisplay != crtc_state->pipe_src_w);
-		WARN_ON(adjusted_mode->crtc_vdisplay != crtc_state->pipe_src_h);
+		WARN_ON(adjusted_mode->crtc_hdisplay != pipe_src_w);
+		WARN_ON(adjusted_mode->crtc_vdisplay != pipe_src_h);
 		fallthrough;
 	case DRM_MODE_SCALE_FULLSCREEN:
 		x = y = 0;
@@ -333,10 +333,10 @@ static void i965_scale_aspect(struct intel_crtc_state *crtc_state,
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	u32 scaled_width = adjusted_mode->crtc_hdisplay *
-		crtc_state->pipe_src_h;
-	u32 scaled_height = crtc_state->pipe_src_w *
-		adjusted_mode->crtc_vdisplay;
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
+	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
+	u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
+	u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
 
 	/* 965+ is easy, it does everything in hw */
 	if (scaled_width > scaled_height)
@@ -345,7 +345,7 @@ static void i965_scale_aspect(struct intel_crtc_state *crtc_state,
 	else if (scaled_width < scaled_height)
 		*pfit_control |= PFIT_ENABLE |
 			PFIT_SCALING_LETTER;
-	else if (adjusted_mode->crtc_hdisplay != crtc_state->pipe_src_w)
+	else if (adjusted_mode->crtc_hdisplay != pipe_src_w)
 		*pfit_control |= PFIT_ENABLE | PFIT_SCALING_AUTO;
 }
 
@@ -354,10 +354,10 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
 			      u32 *border)
 {
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	u32 scaled_width = adjusted_mode->crtc_hdisplay *
-		crtc_state->pipe_src_h;
-	u32 scaled_height = crtc_state->pipe_src_w *
-		adjusted_mode->crtc_vdisplay;
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
+	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
+	u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
+	u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
 	u32 bits;
 
 	/*
@@ -367,12 +367,11 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
 	 */
 	if (scaled_width > scaled_height) { /* pillar */
 		centre_horizontally(adjusted_mode,
-				    scaled_height /
-				    crtc_state->pipe_src_h);
+				    scaled_height / pipe_src_h);
 
 		*border = LVDS_BORDER_ENABLE;
-		if (crtc_state->pipe_src_h != adjusted_mode->crtc_vdisplay) {
-			bits = panel_fitter_scaling(crtc_state->pipe_src_h,
+		if (pipe_src_h != adjusted_mode->crtc_vdisplay) {
+			bits = panel_fitter_scaling(pipe_src_h,
 						    adjusted_mode->crtc_vdisplay);
 
 			*pfit_pgm_ratios |= (bits << PFIT_HORIZ_SCALE_SHIFT |
@@ -383,12 +382,11 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
 		}
 	} else if (scaled_width < scaled_height) { /* letter */
 		centre_vertically(adjusted_mode,
-				  scaled_width /
-				  crtc_state->pipe_src_w);
+				  scaled_width / pipe_src_w);
 
 		*border = LVDS_BORDER_ENABLE;
-		if (crtc_state->pipe_src_w != adjusted_mode->crtc_hdisplay) {
-			bits = panel_fitter_scaling(crtc_state->pipe_src_w,
+		if (pipe_src_w != adjusted_mode->crtc_hdisplay) {
+			bits = panel_fitter_scaling(pipe_src_w,
 						    adjusted_mode->crtc_hdisplay);
 
 			*pfit_pgm_ratios |= (bits << PFIT_HORIZ_SCALE_SHIFT |
@@ -413,10 +411,12 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 pfit_control = 0, pfit_pgm_ratios = 0, border = 0;
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
+	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
 
 	/* Native modes don't need fitting */
-	if (adjusted_mode->crtc_hdisplay == crtc_state->pipe_src_w &&
-	    adjusted_mode->crtc_vdisplay == crtc_state->pipe_src_h)
+	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
+	    adjusted_mode->crtc_vdisplay == pipe_src_h)
 		goto out;
 
 	switch (conn_state->scaling_mode) {
@@ -425,8 +425,8 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 		 * For centered modes, we have to calculate border widths &
 		 * heights and modify the values programmed into the CRTC.
 		 */
-		centre_horizontally(adjusted_mode, crtc_state->pipe_src_w);
-		centre_vertically(adjusted_mode, crtc_state->pipe_src_h);
+		centre_horizontally(adjusted_mode, pipe_src_w);
+		centre_vertically(adjusted_mode, pipe_src_h);
 		border = LVDS_BORDER_ENABLE;
 		break;
 	case DRM_MODE_SCALE_ASPECT:
@@ -442,8 +442,8 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 		 * Full scaling, even if it changes the aspect ratio.
 		 * Fortunately this is all done for us in hw.
 		 */
-		if (crtc_state->pipe_src_h != adjusted_mode->crtc_vdisplay ||
-		    crtc_state->pipe_src_w != adjusted_mode->crtc_hdisplay) {
+		if (pipe_src_h != adjusted_mode->crtc_vdisplay ||
+		    pipe_src_w != adjusted_mode->crtc_hdisplay) {
 			pfit_control |= PFIT_ENABLE;
 			if (DISPLAY_VER(dev_priv) >= 4)
 				pfit_control |= PFIT_SCALING_AUTO;
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index c2e94118566b..998128bac8c0 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -197,7 +197,8 @@ int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
 	return skl_update_scaler(crtc_state, !crtc_state->hw.active,
 				 SKL_CRTC_INDEX,
 				 &crtc_state->scaler_state.scaler_id,
-				 crtc_state->pipe_src_w, crtc_state->pipe_src_h,
+				 drm_rect_width(&crtc_state->pipe_src),
+				 drm_rect_height(&crtc_state->pipe_src),
 				 width, height, NULL, 0,
 				 crtc_state->pch_pfit.enabled);
 }
@@ -400,10 +401,6 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
-	struct drm_rect src = {
-		.x2 = crtc_state->pipe_src_w << 16,
-		.y2 = crtc_state->pipe_src_h << 16,
-	};
 	const struct drm_rect *dst = &crtc_state->pch_pfit.dst;
 	u16 uv_rgb_hphase, uv_rgb_vphase;
 	enum pipe pipe = crtc->pipe;
@@ -413,6 +410,7 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	int y = dst->y1;
 	int hscale, vscale;
 	unsigned long irqflags;
+	struct drm_rect src;
 	int id;
 	u32 ps_ctrl;
 
@@ -423,6 +421,10 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 			crtc_state->scaler_state.scaler_id < 0))
 		return;
 
+	drm_rect_init(&src, 0, 0,
+		      drm_rect_width(&crtc_state->pipe_src) << 16,
+		      drm_rect_height(&crtc_state->pipe_src) << 16);
+
 	hscale = drm_rect_calc_hscale(&src, dst, 0, INT_MAX);
 	vscale = drm_rect_calc_vscale(&src, dst, 0, INT_MAX);
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 1223075595ff..c73758d18b6f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1325,7 +1325,7 @@ static int skl_plane_check_dst_coordinates(const struct intel_crtc_state *crtc_s
 		to_i915(plane_state->uapi.plane->dev);
 	int crtc_x = plane_state->uapi.dst.x1;
 	int crtc_w = drm_rect_width(&plane_state->uapi.dst);
-	int pipe_src_w = crtc_state->pipe_src_w;
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
 
 	/*
 	 * Display WA #1175: glk
-- 
2.34.1

