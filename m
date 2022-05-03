Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E1A518C32
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20DEA10E900;
	Tue,  3 May 2022 18:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC1C10E922
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602188; x=1683138188;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CF4xvf4doYcQ1Dt1C2v0bwNqUXNQVgtaNBoOX366M70=;
 b=HEcwTqx7+RHfvxoB9vZmmyG42djVwWKviKOuH2nUe7WissP2tJP8xGNe
 3elGBoGMgQ/CiXyB+c+NChjemKKocRHCH3kx/FIwj1KK5OHsUelBz7ub8
 kkOWGUFLR6rgFBi6Q4xdlwh7h407NsLa7Y14KFF1Jwsl4WOHbeGE0pk8L
 GZFc/g8/+Ir28+ErhAM0t/JZUhXNSXHxmSgqBFH3Dc0eMzxrMWNuHk/D/
 vLoC3FzNLSReDIEm9NGbtxbFmuHu4p9vAGjMgX3apiedwCawjm5Ru7j/k
 0vFqD4BHFrltGYsCZ5yCUBo4E7Y81SjANIwQXjosmDXUFVBkWirzIswqY w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="330539443"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="330539443"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="708130809"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 03 May 2022 11:23:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:23 +0300
Message-Id: <20220503182242.18797-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/26] drm/i915: Adjust
 intel_modeset_pipe_config() & co. calling convention
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

Use the state+crtc calling convention for intel_modeset_pipe_config()
and othere related functions. Many of these need the full atomic state
anyway so passing it all the way through is just nicer than having to
worry about whether it can actually be extracted from eg. the crtc
state passed in.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 48 ++++++++++----------
 1 file changed, 25 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1093665122a4..4615cf3564eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2811,9 +2811,11 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int intel_crtc_compute_config(struct intel_crtc *crtc,
-				     struct intel_crtc_state *crtc_state)
+static int intel_crtc_compute_config(struct intel_atomic_state *state,
+				     struct intel_crtc *crtc)
 {
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
 	ret = intel_crtc_compute_pipe_src(crtc_state);
@@ -5052,11 +5054,12 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
 }
 
 static int
-compute_baseline_pipe_bpp(struct intel_crtc *crtc,
-			  struct intel_crtc_state *pipe_config)
+compute_baseline_pipe_bpp(struct intel_atomic_state *state,
+			  struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct drm_atomic_state *state = pipe_config->uapi.state;
+	struct intel_crtc_state *pipe_config =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_connector *connector;
 	struct drm_connector_state *connector_state;
 	int bpp, i;
@@ -5072,7 +5075,7 @@ compute_baseline_pipe_bpp(struct intel_crtc *crtc,
 	pipe_config->pipe_bpp = bpp;
 
 	/* Clamp display bpp to connector max bpp */
-	for_each_new_connector_in_state(state, connector, connector_state, i) {
+	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
 		int ret;
 
 		if (connector_state->crtc != &crtc->base)
@@ -5632,18 +5635,18 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 
 static int
 intel_modeset_pipe_config(struct intel_atomic_state *state,
-			  struct intel_crtc_state *pipe_config)
+			  struct intel_crtc *crtc)
 {
-	struct drm_crtc *crtc = pipe_config->uapi.crtc;
-	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_crtc_state *pipe_config =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_connector *connector;
 	struct drm_connector_state *connector_state;
 	int pipe_src_w, pipe_src_h;
 	int base_bpp, ret, i;
 	bool retry = true;
 
-	pipe_config->cpu_transcoder =
-		(enum transcoder) to_intel_crtc(crtc)->pipe;
+	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
 
 	pipe_config->framestart_delay = 1;
 
@@ -5660,8 +5663,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	      (DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC)))
 		pipe_config->hw.adjusted_mode.flags |= DRM_MODE_FLAG_NVSYNC;
 
-	ret = compute_baseline_pipe_bpp(to_intel_crtc(crtc),
-					pipe_config);
+	ret = compute_baseline_pipe_bpp(state, crtc);
 	if (ret)
 		return ret;
 
@@ -5684,10 +5686,10 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		struct intel_encoder *encoder =
 			to_intel_encoder(connector_state->best_encoder);
 
-		if (connector_state->crtc != crtc)
+		if (connector_state->crtc != &crtc->base)
 			continue;
 
-		if (!check_single_encoder_cloning(state, to_intel_crtc(crtc), encoder)) {
+		if (!check_single_encoder_cloning(state, crtc, encoder)) {
 			drm_dbg_kms(&i915->drm,
 				    "rejecting invalid cloning configuration\n");
 			return -EINVAL;
@@ -5722,7 +5724,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		struct intel_encoder *encoder =
 			to_intel_encoder(connector_state->best_encoder);
 
-		if (connector_state->crtc != crtc)
+		if (connector_state->crtc != &crtc->base)
 			continue;
 
 		ret = encoder->compute_config(encoder, pipe_config,
@@ -5741,7 +5743,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		pipe_config->port_clock = pipe_config->hw.adjusted_mode.crtc_clock
 			* pipe_config->pixel_multiplier;
 
-	ret = intel_crtc_compute_config(to_intel_crtc(crtc), pipe_config);
+	ret = intel_crtc_compute_config(state, crtc);
 	if (ret == -EDEADLK)
 		return ret;
 	if (ret == -EAGAIN) {
@@ -5772,11 +5774,11 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 }
 
 static int
-intel_modeset_pipe_config_late(struct intel_crtc_state *crtc_state)
+intel_modeset_pipe_config_late(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc)
 {
-	struct intel_atomic_state *state =
-		to_intel_atomic_state(crtc_state->uapi.state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_connector_state *conn_state;
 	struct drm_connector *connector;
 	int i;
@@ -7705,7 +7707,7 @@ static int intel_atomic_check(struct drm_device *dev,
 		if (!new_crtc_state->hw.enable)
 			continue;
 
-		ret = intel_modeset_pipe_config(state, new_crtc_state);
+		ret = intel_modeset_pipe_config(state, crtc);
 		if (ret)
 			goto fail;
 
@@ -7719,7 +7721,7 @@ static int intel_atomic_check(struct drm_device *dev,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		ret = intel_modeset_pipe_config_late(new_crtc_state);
+		ret = intel_modeset_pipe_config_late(state, crtc);
 		if (ret)
 			goto fail;
 
-- 
2.35.1

