Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA02A4C13BF
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 14:14:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A8A810E324;
	Wed, 23 Feb 2022 13:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F30C410F3BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 13:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645622039; x=1677158039;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dEAt0dY30jDXCXyJ/9nxNw5fnI+QTqx7947IrtAqSE8=;
 b=hGvhmmw8FsceJYBEaP+RGK55Aw1Vk810beW0koWGoIZzJWXixIIAlid7
 DpT0UXe3HJ4TPoxoipGChqhNbaDwhrnKeiLNwXTOIeVVN5ZB15Elqn7KI
 eUf0gvcQZBWA7s46hmB+Pte9DGjCJUUOf3p5Ze5tvm6YuxADkrafBQuT6
 K8h1ypHuYF16JIDFjvzyrv57ZIcCagy3Qb7hYu0+3prLFmxUJrlw8TJjF
 xYRmNaI9L+mWjkz5lcM7S+FSYuvqE1WIIzd9DtxjRxliiHKzuYY0A/e91
 be1WtqS7A1eTueS/bT4DEseEyFM04ErJ4yMxkk8jP62J5IAT2hPMQVlIA A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="312674200"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="312674200"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 05:13:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="548239813"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 23 Feb 2022 05:13:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 15:13:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 15:13:13 +0200
Message-Id: <20220223131315.18016-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/13] drm/i915: Eliminate bigjoiner boolean
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

Since we now have the bigjoiner_pipes bitmask the boolean
is redundant. Get rid of it.

Also, populating bigjoiner_pipes already during
encoder->compute_config() allows us to use it much earlier
during the state calculation as well. The initial aim is
to use it in intel_crtc_compute_config().

v2: Move the hweight(bigjoiner_pipes) stuff to a later patch

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com> #v1
Reviewed-by: Manasi Navare <manasi.d.navare@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 52 ++++++++-----------
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 .../drm/i915/display/intel_display_types.h    |  3 --
 drivers/gpu/drm/i915/display/intel_dp.c       | 13 ++---
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  8 +--
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 7 files changed, 37 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 1f448f4e9aaf..da6cf0515164 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -640,7 +640,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 * FIXME bigjoiner fastpath would be good
 	 */
 	if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state) ||
-	    crtc_state->update_pipe || crtc_state->bigjoiner)
+	    crtc_state->update_pipe || crtc_state->bigjoiner_pipes)
 		goto slow;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d3ffa62952bd..9b4013ed3d98 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1930,7 +1930,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
-	if (!new_crtc_state->bigjoiner) {
+	if (!new_crtc_state->bigjoiner_pipes) {
 		intel_encoders_pre_pll_enable(state, crtc);
 
 		if (new_crtc_state->shared_dpll)
@@ -2731,7 +2731,7 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
 					   struct drm_display_mode *mode)
 {
-	if (!crtc_state->bigjoiner)
+	if (!crtc_state->bigjoiner_pipes)
 		return;
 
 	mode->crtc_clock /= 2;
@@ -2792,7 +2792,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 	/* Populate the "user" mode with full numbers */
 	drm_mode_copy(mode, pipe_mode);
 	intel_mode_from_crtc_timings(mode, mode);
-	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) << crtc_state->bigjoiner;
+	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) << !!crtc_state->bigjoiner_pipes;
 	mode->vdisplay = drm_rect_height(&crtc_state->pipe_src);
 
 	/* Derive per-pipe timings in case bigjoiner is used */
@@ -2814,7 +2814,7 @@ static void intel_bigjoiner_compute_pipe_src(struct intel_crtc_state *crtc_state
 {
 	int width, height;
 
-	if (!crtc_state->bigjoiner)
+	if (!crtc_state->bigjoiner_pipes)
 		return;
 
 	width = drm_rect_width(&crtc_state->pipe_src);
@@ -4219,7 +4219,6 @@ static void intel_bigjoiner_get_config(struct intel_crtc_state *crtc_state)
 	if (((master_pipes | slave_pipes) & BIT(pipe)) == 0)
 		return;
 
-	crtc_state->bigjoiner = true;
 	crtc_state->bigjoiner_pipes =
 		BIT(get_bigjoiner_master_pipe(pipe, master_pipes, slave_pipes)) |
 		get_bigjoiner_slave_pipes(pipe, master_pipes, slave_pipes);
@@ -5617,6 +5616,9 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, master_crtc);
 	struct intel_crtc_state *saved_state;
 
+	WARN_ON(master_crtc_state->bigjoiner_pipes !=
+		slave_crtc_state->bigjoiner_pipes);
+
 	saved_state = kmemdup(master_crtc_state, sizeof(*saved_state), GFP_KERNEL);
 	if (!saved_state)
 		return -ENOMEM;
@@ -5647,6 +5649,9 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
 	slave_crtc_state->uapi.connectors_changed = master_crtc_state->uapi.connectors_changed;
 	slave_crtc_state->uapi.active_changed = master_crtc_state->uapi.active_changed;
 
+	WARN_ON(master_crtc_state->bigjoiner_pipes !=
+		slave_crtc_state->bigjoiner_pipes);
+
 	return 0;
 }
 
@@ -6418,7 +6423,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
 	PIPE_CONF_CHECK_I(master_transcoder);
-	PIPE_CONF_CHECK_BOOL(bigjoiner);
 	PIPE_CONF_CHECK_X(bigjoiner_pipes);
 
 	PIPE_CONF_CHECK_I(dsc.compression_enable);
@@ -7349,32 +7353,26 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 	struct intel_crtc_state *master_crtc_state =
 		intel_atomic_get_new_crtc_state(state, master_crtc);
 	struct intel_crtc *slave_crtc;
-	u8 slave_pipes;
 
-	/*
-	 * TODO: encoder.compute_config() may be the best
-	 * place to populate the bitmask for the master crtc.
-	 * For now encoder.compute_config() just flags things
-	 * as needing bigjoiner and we populate the bitmask
-	 * here.
-	 */
-	WARN_ON(master_crtc_state->bigjoiner_pipes);
-
-	if (!master_crtc_state->bigjoiner)
+	if (!master_crtc_state->bigjoiner_pipes)
 		return 0;
 
-	slave_pipes = BIT(master_crtc->pipe + 1);
+	/* sanity check */
+	if (drm_WARN_ON(&i915->drm,
+			master_crtc->pipe != bigjoiner_master_pipe(master_crtc_state)))
+		return -EINVAL;
 
-	if (slave_pipes & ~bigjoiner_pipes(i915)) {
+	if (master_crtc_state->bigjoiner_pipes & ~bigjoiner_pipes(i915)) {
 		drm_dbg_kms(&i915->drm,
 			    "[CRTC:%d:%s] Cannot act as big joiner master "
-			    "(need 0x%x as slave pipes, only 0x%x possible)\n",
+			    "(need 0x%x as pipes, only 0x%x possible)\n",
 			    master_crtc->base.base.id, master_crtc->base.name,
-			    slave_pipes, bigjoiner_pipes(i915));
+			    master_crtc_state->bigjoiner_pipes, bigjoiner_pipes(i915));
 		return -EINVAL;
 	}
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc, slave_pipes) {
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
+					 intel_crtc_bigjoiner_slave_pipes(master_crtc_state)) {
 		struct intel_crtc_state *slave_crtc_state;
 		int ret;
 
@@ -7408,10 +7406,8 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 			    slave_crtc->base.base.id, slave_crtc->base.name,
 			    master_crtc->base.base.id, master_crtc->base.name);
 
-		master_crtc_state->bigjoiner_pipes =
-			BIT(master_crtc->pipe) | BIT(slave_crtc->pipe);
 		slave_crtc_state->bigjoiner_pipes =
-			BIT(master_crtc->pipe) | BIT(slave_crtc->pipe);
+			master_crtc_state->bigjoiner_pipes;
 
 		ret = copy_bigjoiner_crtc_state_modeset(state, slave_crtc);
 		if (ret)
@@ -7434,13 +7430,11 @@ static void kill_bigjoiner_slave(struct intel_atomic_state *state,
 		struct intel_crtc_state *slave_crtc_state =
 			intel_atomic_get_new_crtc_state(state, slave_crtc);
 
-		slave_crtc_state->bigjoiner = false;
 		slave_crtc_state->bigjoiner_pipes = 0;
 
 		intel_crtc_copy_uapi_to_hw_state_modeset(state, slave_crtc);
 	}
 
-	master_crtc_state->bigjoiner = false;
 	master_crtc_state->bigjoiner_pipes = 0;
 }
 
@@ -7750,7 +7744,7 @@ static int intel_atomic_check(struct drm_device *dev,
 			}
 		}
 
-		if (new_crtc_state->bigjoiner) {
+		if (new_crtc_state->bigjoiner_pipes) {
 			if (intel_pipes_need_modeset(state, new_crtc_state->bigjoiner_pipes)) {
 				new_crtc_state->uapi.mode_changed = true;
 				new_crtc_state->update_pipe = false;
@@ -10151,7 +10145,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			intel_encoder_get_config(encoder, crtc_state);
 
 			/* read out to slave crtc as well for bigjoiner */
-			if (crtc_state->bigjoiner) {
+			if (crtc_state->bigjoiner_pipes) {
 				struct intel_crtc *slave_crtc;
 
 				/* encoder should read be linked to bigjoiner master */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index a7d5affb46b3..26e4765c765f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -936,7 +936,7 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 
 	intel_scaler_info(m, crtc);
 
-	if (crtc_state->bigjoiner)
+	if (crtc_state->bigjoiner_pipes)
 		seq_printf(m, "\tLinked to 0x%x pipes as a %s\n",
 			   crtc_state->bigjoiner_pipes,
 			   intel_crtc_is_bigjoiner_slave(crtc_state) ? "slave" : "master");
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 40caf8cbae7f..8517e74be6cb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1179,9 +1179,6 @@ struct intel_crtc_state {
 	/* enable pipe csc? */
 	bool csc_enable;
 
-	/* enable pipe big joiner? */
-	bool bigjoiner;
-
 	/* big joiner pipe bitmask */
 	u8 bigjoiner_pipes;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1046e7fe310a..05e1da3c43e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1424,13 +1424,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 						    pipe_config->lane_count,
 						    adjusted_mode->crtc_clock,
 						    adjusted_mode->crtc_hdisplay,
-						    pipe_config->bigjoiner,
+						    pipe_config->bigjoiner_pipes,
 						    pipe_bpp);
 		dsc_dp_slice_count =
 			intel_dp_dsc_get_slice_count(intel_dp,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
-						     pipe_config->bigjoiner);
+						     pipe_config->bigjoiner_pipes);
 		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Compressed BPP/Slice Count not supported\n");
@@ -1464,7 +1464,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * then we need to use 2 VDSC instances.
 	 */
 	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
-	    pipe_config->bigjoiner) {
+	    pipe_config->bigjoiner_pipes) {
 		if (pipe_config->dsc.slice_count < 2) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Cannot split stream to use 2 VDSC instances\n");
@@ -1500,6 +1500,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			     struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -1537,7 +1538,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 
 	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
 				    adjusted_mode->crtc_clock))
-		pipe_config->bigjoiner = true;
+		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
 	/*
 	 * Optimize for slow and wide for everything, because there are some
@@ -1550,8 +1551,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	 * onwards pipe joiner can be enabled without compression.
 	 */
 	drm_dbg_kms(&i915->drm, "Force DSC en = %d\n", intel_dp->force_dsc_en);
-	if (ret || intel_dp->force_dsc_en || (DISPLAY_VER(i915) < 13 &&
-					      pipe_config->bigjoiner)) {
+	if (ret || intel_dp->force_dsc_en ||
+	    (DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes)) {
 		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
 						  conn_state, &limits);
 		if (ret < 0)
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 545eff5bf158..28a1c982750e 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -579,7 +579,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	u8 num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
 	int i = 0;
 
-	if (crtc_state->bigjoiner)
+	if (crtc_state->bigjoiner_pipes)
 		num_vdsc_instances *= 2;
 
 	/* Populate PICTURE_PARAMETER_SET_0 registers */
@@ -1113,7 +1113,7 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dss_ctl1_val = 0;
 
-	if (crtc_state->bigjoiner && !crtc_state->dsc.compression_enable) {
+	if (crtc_state->bigjoiner_pipes && !crtc_state->dsc.compression_enable) {
 		if (intel_crtc_is_bigjoiner_slave(crtc_state))
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_SLAVE;
 		else
@@ -1140,7 +1140,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
-	if (crtc_state->bigjoiner) {
+	if (crtc_state->bigjoiner_pipes) {
 		dss_ctl1_val |= BIG_JOINER_ENABLE;
 		if (!intel_crtc_is_bigjoiner_slave(crtc_state))
 			dss_ctl1_val |= MASTER_BIG_JOINER_ENABLE;
@@ -1156,7 +1156,7 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 
 	/* Disable only if either of them is enabled */
 	if (old_crtc_state->dsc.compression_enable ||
-	    old_crtc_state->bigjoiner) {
+	    old_crtc_state->bigjoiner_pipes) {
 		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
 		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
 	}
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index c73758d18b6f..925e0bd8bb72 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2284,7 +2284,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 
 	drm_WARN_ON(dev, pipe != crtc->pipe);
 
-	if (crtc_state->bigjoiner) {
+	if (crtc_state->bigjoiner_pipes) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Unsupported bigjoiner configuration for initial FB\n");
 		return;
-- 
2.34.1

