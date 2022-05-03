Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C83518C33
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09AAD10E930;
	Tue,  3 May 2022 18:23:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C545A10E930
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602190; x=1683138190;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DOiD7qdHehzWDcGcZRJ9RiKCu82P0Pf2WdyjlTwU+fk=;
 b=OdLspo2KulWj6m8KMjnucMs6NZnnytfD3joXL7tAMIti6nYpQOjhGiMx
 Gor80tWgHh7h3gQRX8gxoZYVpjlBukHMIN1oVn1TU9Caybb/qEooFQLLr
 ibyqUozHNP3t1puwrtaN4hkuWerko3rvpxetNFwiaIDRHbNsfJyoq9tCn
 ypHR6r8/yrLYevyNV/d5y7o4urH+Z/NVcJq2s+YEcX+cZwiX8+YBR2xgU
 BBls+YJxPyR6SJffdNkGmJPUSl8dxWWJ2xljzJuzsvF30JkvOU4FuW+uW
 8R49fZkB4yddOWE/l4M92RVeslAoeCCVYIqDsl0W9cGPxAHpgGmPqBent w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="267145913"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="267145913"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="584315896"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga008.jf.intel.com with SMTP; 03 May 2022 11:23:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:24 +0300
Message-Id: <20220503182242.18797-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/26] drm/i915: s/pipe_config/crtc_state/
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

Rename some of the 'pipe_config's to the more modern
'crtc_state'.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 62 ++++++++++----------
 1 file changed, 31 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4615cf3564eb..ac476976dc0b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5013,10 +5013,10 @@ static void intel_modeset_update_connector_atomic_state(struct drm_device *dev)
 
 static int
 compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
-		      struct intel_crtc_state *pipe_config)
+		      struct intel_crtc_state *crtc_state)
 {
 	struct drm_connector *connector = conn_state->connector;
-	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	const struct drm_display_info *info = &connector->display_info;
 	int bpp;
 
@@ -5038,16 +5038,16 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
 		return -EINVAL;
 	}
 
-	if (bpp < pipe_config->pipe_bpp) {
+	if (bpp < crtc_state->pipe_bpp) {
 		drm_dbg_kms(&i915->drm,
 			    "[CONNECTOR:%d:%s] Limiting display bpp to %d instead of "
 			    "EDID bpp %d, requested bpp %d, max platform bpp %d\n",
 			    connector->base.id, connector->name,
 			    bpp, 3 * info->bpc,
 			    3 * conn_state->max_requested_bpc,
-			    pipe_config->pipe_bpp);
+			    crtc_state->pipe_bpp);
 
-		pipe_config->pipe_bpp = bpp;
+		crtc_state->pipe_bpp = bpp;
 	}
 
 	return 0;
@@ -5058,7 +5058,7 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_crtc_state *pipe_config =
+	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_connector *connector;
 	struct drm_connector_state *connector_state;
@@ -5072,7 +5072,7 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
 	else
 		bpp = 8*3;
 
-	pipe_config->pipe_bpp = bpp;
+	crtc_state->pipe_bpp = bpp;
 
 	/* Clamp display bpp to connector max bpp */
 	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
@@ -5081,7 +5081,7 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
 		if (connector_state->crtc != &crtc->base)
 			continue;
 
-		ret = compute_sink_pipe_bpp(connector_state, pipe_config);
+		ret = compute_sink_pipe_bpp(connector_state, crtc_state);
 		if (ret)
 			return ret;
 	}
@@ -5638,7 +5638,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_crtc_state *pipe_config =
+	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_connector *connector;
 	struct drm_connector_state *connector_state;
@@ -5646,28 +5646,28 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	int base_bpp, ret, i;
 	bool retry = true;
 
-	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
+	crtc_state->cpu_transcoder = (enum transcoder) crtc->pipe;
 
-	pipe_config->framestart_delay = 1;
+	crtc_state->framestart_delay = 1;
 
 	/*
 	 * Sanitize sync polarity flags based on requested ones. If neither
 	 * positive or negative polarity is requested, treat this as meaning
 	 * negative polarity.
 	 */
-	if (!(pipe_config->hw.adjusted_mode.flags &
+	if (!(crtc_state->hw.adjusted_mode.flags &
 	      (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NHSYNC)))
-		pipe_config->hw.adjusted_mode.flags |= DRM_MODE_FLAG_NHSYNC;
+		crtc_state->hw.adjusted_mode.flags |= DRM_MODE_FLAG_NHSYNC;
 
-	if (!(pipe_config->hw.adjusted_mode.flags &
+	if (!(crtc_state->hw.adjusted_mode.flags &
 	      (DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC)))
-		pipe_config->hw.adjusted_mode.flags |= DRM_MODE_FLAG_NVSYNC;
+		crtc_state->hw.adjusted_mode.flags |= DRM_MODE_FLAG_NVSYNC;
 
 	ret = compute_baseline_pipe_bpp(state, crtc);
 	if (ret)
 		return ret;
 
-	base_bpp = pipe_config->pipe_bpp;
+	base_bpp = crtc_state->pipe_bpp;
 
 	/*
 	 * Determine the real pipe dimensions. Note that stereo modes can
@@ -5677,9 +5677,9 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	 * computation to clearly distinguish it from the adjusted mode, which
 	 * can be changed by the connectors in the below retry loop.
 	 */
-	drm_mode_get_hv_timing(&pipe_config->hw.mode,
+	drm_mode_get_hv_timing(&crtc_state->hw.mode,
 			       &pipe_src_w, &pipe_src_h);
-	drm_rect_init(&pipe_config->pipe_src, 0, 0,
+	drm_rect_init(&crtc_state->pipe_src, 0, 0,
 		      pipe_src_w, pipe_src_h);
 
 	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
@@ -5700,20 +5700,20 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		 * hooks so that the hooks can use this information safely.
 		 */
 		if (encoder->compute_output_type)
-			pipe_config->output_types |=
-				BIT(encoder->compute_output_type(encoder, pipe_config,
+			crtc_state->output_types |=
+				BIT(encoder->compute_output_type(encoder, crtc_state,
 								 connector_state));
 		else
-			pipe_config->output_types |= BIT(encoder->type);
+			crtc_state->output_types |= BIT(encoder->type);
 	}
 
 encoder_retry:
 	/* Ensure the port clock defaults are reset when retrying. */
-	pipe_config->port_clock = 0;
-	pipe_config->pixel_multiplier = 1;
+	crtc_state->port_clock = 0;
+	crtc_state->pixel_multiplier = 1;
 
 	/* Fill in default crtc timings, allow encoders to overwrite them. */
-	drm_mode_set_crtcinfo(&pipe_config->hw.adjusted_mode,
+	drm_mode_set_crtcinfo(&crtc_state->hw.adjusted_mode,
 			      CRTC_STEREO_DOUBLE);
 
 	/* Pass our mode to the connectors and the CRTC to give them a chance to
@@ -5727,7 +5727,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		if (connector_state->crtc != &crtc->base)
 			continue;
 
-		ret = encoder->compute_config(encoder, pipe_config,
+		ret = encoder->compute_config(encoder, crtc_state,
 					      connector_state);
 		if (ret == -EDEADLK)
 			return ret;
@@ -5739,9 +5739,9 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 
 	/* Set default port clock if not overwritten by the encoder. Needs to be
 	 * done afterwards in case the encoder adjusts the mode. */
-	if (!pipe_config->port_clock)
-		pipe_config->port_clock = pipe_config->hw.adjusted_mode.crtc_clock
-			* pipe_config->pixel_multiplier;
+	if (!crtc_state->port_clock)
+		crtc_state->port_clock = crtc_state->hw.adjusted_mode.crtc_clock
+			* crtc_state->pixel_multiplier;
 
 	ret = intel_crtc_compute_config(state, crtc);
 	if (ret == -EDEADLK)
@@ -5764,11 +5764,11 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	 * only enable it on 6bpc panels and when its not a compliance
 	 * test requesting 6bpc video pattern.
 	 */
-	pipe_config->dither = (pipe_config->pipe_bpp == 6*3) &&
-		!pipe_config->dither_force_disable;
+	crtc_state->dither = (crtc_state->pipe_bpp == 6*3) &&
+		!crtc_state->dither_force_disable;
 	drm_dbg_kms(&i915->drm,
 		    "hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
-		    base_bpp, pipe_config->pipe_bpp, pipe_config->dither);
+		    base_bpp, crtc_state->pipe_bpp, crtc_state->dither);
 
 	return 0;
 }
-- 
2.35.1

