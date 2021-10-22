Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F70A43758E
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 12:33:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDF0F6ED0B;
	Fri, 22 Oct 2021 10:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3468B6ED0B
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 10:33:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="290114155"
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="290114155"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 03:33:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="492512888"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 22 Oct 2021 03:33:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Oct 2021 13:33:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Manasi Navare <manasi.d.navare@intel.com>
Date: Fri, 22 Oct 2021 13:33:03 +0300
Message-Id: <20211022103304.24164-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
References: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915: Reduce bigjoiner special casing
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

Try to make bigjoiner pipes less special.

The main things here are that each pipe now does full
clock computation/readout with its own shared_dpll reference.
Also every pipe's cpu_transcoder always points correctly
at the master transcoder.

Due to the above changes state readout is now complete
and all the related hacks can go away. The actual modeset
sequence code is still a mess, but I think in order to clean
that up properly we're probably going to have to redesign
the modeset logic to treat transcoders vs. pipes separately.
That is going to require significant amounts of work.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  16 +--
 drivers/gpu/drm/i915/display/intel_display.c | 136 ++++++-------------
 2 files changed, 41 insertions(+), 111 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8b4ef9ef77fb..9fb99b09fff8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3515,18 +3515,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 	if (drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder)))
 		return;
 
-	if (pipe_config->bigjoiner_slave) {
-		/* read out pipe settings from master */
-		enum transcoder save = pipe_config->cpu_transcoder;
-
-		/* Our own transcoder needs to be disabled when reading it in intel_ddi_read_func_ctl() */
-		WARN_ON(pipe_config->output_types);
-		pipe_config->cpu_transcoder = (enum transcoder)pipe_config->bigjoiner_linked_crtc->pipe;
-		intel_ddi_read_func_ctl(encoder, pipe_config);
-		pipe_config->cpu_transcoder = save;
-	} else {
-		intel_ddi_read_func_ctl(encoder, pipe_config);
-	}
+	intel_ddi_read_func_ctl(encoder, pipe_config);
 
 	intel_ddi_mso_get_config(encoder, pipe_config);
 
@@ -3554,8 +3543,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 		dev_priv->vbt.edp.bpp = pipe_config->pipe_bpp;
 	}
 
-	if (!pipe_config->bigjoiner_slave)
-		ddi_dotclock_get(pipe_config);
+	ddi_dotclock_get(pipe_config);
 
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		pipe_config->lane_lat_optim_mask =
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 753f443e74bd..f21030ffa83d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1038,15 +1038,17 @@ struct intel_encoder *
 intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 			   const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_connector_state *connector_state;
 	const struct drm_connector *connector;
 	struct intel_encoder *encoder = NULL;
+	struct intel_crtc *master_crtc;
 	int num_encoders = 0;
 	int i;
 
+	master_crtc = intel_master_crtc(crtc_state);
+
 	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
-		if (connector_state->crtc != &crtc->base)
+		if (connector_state->crtc != &master_crtc->base)
 			continue;
 
 		encoder = to_intel_encoder(connector_state->best_encoder);
@@ -1055,7 +1057,7 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 
 	drm_WARN(encoder->base.dev, num_encoders != 1,
 		 "%d encoders for pipe %c\n",
-		 num_encoders, pipe_name(crtc->pipe));
+		 num_encoders, pipe_name(master_crtc->pipe));
 
 	return encoder;
 }
@@ -1974,20 +1976,20 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
 		break;
 	}
 
-	if (!crtc_state->bigjoiner_slave) {
-		/* need to enable VDSC, which we skipped in pre-enable */
-		intel_dsc_enable(crtc_state);
-	} else {
-		/*
-		 * Enable sequence steps 1-7 on bigjoiner master
-		 */
+	/*
+	 * Enable sequence steps 1-7 on bigjoiner master
+	 */
+	if (crtc_state->bigjoiner_slave)
 		intel_encoders_pre_pll_enable(state, master_crtc);
-		if (master_crtc_state->shared_dpll)
-			intel_enable_shared_dpll(master_crtc_state);
+
+	if (crtc_state->shared_dpll)
+		intel_enable_shared_dpll(crtc_state);
+
+	if (crtc_state->bigjoiner_slave)
 		intel_encoders_pre_enable(state, master_crtc);
 
-		intel_dsc_enable(crtc_state);
-	}
+	/* need to enable VDSC, which we skipped in pre-enable */
+	intel_dsc_enable(crtc_state);
 
 	if (DISPLAY_VER(dev_priv) >= 13)
 		intel_uncompressed_joiner_enable(crtc_state);
@@ -2148,12 +2150,17 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 static void hsw_crtc_disable(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc)
 {
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+
 	/*
 	 * FIXME collapse everything to one hook.
 	 * Need care with mst->ddi interactions.
 	 */
-	intel_encoders_disable(state, crtc);
-	intel_encoders_post_disable(state, crtc);
+	if (!old_crtc_state->bigjoiner_slave) {
+		intel_encoders_disable(state, crtc);
+		intel_encoders_post_disable(state, crtc);
+	}
 }
 
 static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
@@ -4356,20 +4363,12 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	if (DISPLAY_VER(dev_priv) >= 13 && !pipe_config->dsc.compression_enable)
 		intel_uncompressed_joiner_get_config(pipe_config);
 
-	if (!active) {
-		/* bigjoiner slave doesn't enable transcoder */
-		if (!pipe_config->bigjoiner_slave)
-			goto out;
+	if (!active)
+		goto out;
 
-		active = true;
-		pipe_config->pixel_multiplier = 1;
-
-		/* we cannot read out most state, so don't bother.. */
-		pipe_config->quirks |= PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE;
-	} else if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
-		   DISPLAY_VER(dev_priv) >= 11) {
+	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
+	    DISPLAY_VER(dev_priv) >= 11)
 		intel_get_transcoder_timings(crtc, pipe_config);
-	}
 
 	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
 		intel_vrr_get_config(crtc, pipe_config);
@@ -4437,10 +4436,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		}
 	}
 
-	if (pipe_config->bigjoiner_slave) {
-		/* Cannot be read out as a slave, set to 0. */
-		pipe_config->pixel_multiplier = 0;
-	} else if (pipe_config->cpu_transcoder != TRANSCODER_EDP &&
+	if (pipe_config->cpu_transcoder != TRANSCODER_EDP &&
 	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
 		pipe_config->pixel_multiplier =
 			intel_de_read(dev_priv,
@@ -5270,8 +5266,6 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		crtc_state->update_wm_post = true;
 
 	if (mode_changed && crtc_state->hw.enable &&
-	    dev_priv->dpll_funcs &&
-	    !crtc_state->bigjoiner_slave &&
 	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
 		ret = dev_priv->dpll_funcs->crtc_compute_clock(crtc_state);
 		if (ret)
@@ -5878,7 +5872,6 @@ copy_bigjoiner_crtc_state(struct intel_crtc_state *crtc_state,
 			  const struct intel_crtc_state *from_crtc_state)
 {
 	struct intel_crtc_state *saved_state;
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	saved_state = kmemdup(from_crtc_state, sizeof(*saved_state), GFP_KERNEL);
 	if (!saved_state)
@@ -5908,8 +5901,8 @@ copy_bigjoiner_crtc_state(struct intel_crtc_state *crtc_state,
 	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;
 	crtc_state->bigjoiner_linked_crtc = to_intel_crtc(from_crtc_state->uapi.crtc);
 	crtc_state->bigjoiner_slave = true;
-	crtc_state->cpu_transcoder = (enum transcoder)crtc->pipe;
-	crtc_state->has_audio = false;
+	crtc_state->cpu_transcoder = from_crtc_state->cpu_transcoder;
+	crtc_state->has_audio = from_crtc_state->has_audio;
 
 	return 0;
 }
@@ -6996,10 +6989,6 @@ verify_crtc_state(struct intel_crtc *crtc,
 	if (!new_crtc_state->hw.active)
 		return;
 
-	if (new_crtc_state->bigjoiner_slave)
-		/* No PLLs set for slave */
-		pipe_config->shared_dpll = NULL;
-
 	intel_pipe_config_sanity_check(dev_priv, pipe_config);
 
 	if (!intel_pipe_config_compare(new_crtc_state,
@@ -7118,9 +7107,6 @@ verify_mpllb_state(struct intel_atomic_state *state,
 	if (!new_crtc_state->hw.active)
 		return;
 
-	if (new_crtc_state->bigjoiner_slave)
-		return;
-
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
 	intel_mpllb_readout_hw_state(encoder, &mpllb_hw_state);
 
@@ -8316,16 +8302,6 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 
-	drm_WARN_ON(&dev_priv->drm, old_crtc_state->bigjoiner_slave);
-
-	/*
-	 * We still need special handling for disabling bigjoiner master
-	 * and slaves since for slave we do not have encoder or plls
-	 * so we dont need to disable those.
-	 */
-	if (old_crtc_state->bigjoiner)
-		old_crtc_state->bigjoiner_linked_crtc->active = false;
-
 	/*
 	 * We need to disable pipe CRC before disabling the pipe,
 	 * or we race against vblank off.
@@ -8365,7 +8341,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	/* Only disable port sync and MST slaves */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (!intel_crtc_needs_modeset(new_crtc_state) || old_crtc_state->bigjoiner)
+		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
 		if (!old_crtc_state->hw.active)
@@ -8377,7 +8353,8 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		 * Slave vblanks are masked till Master Vblanks.
 		 */
 		if (!is_trans_port_sync_slave(old_crtc_state) &&
-		    !intel_dp_mst_is_slave_trans(old_crtc_state))
+		    !intel_dp_mst_is_slave_trans(old_crtc_state) &&
+		    !old_crtc_state->bigjoiner_slave)
 			continue;
 
 		intel_old_crtc_state_disables(state, old_crtc_state,
@@ -8389,13 +8366,14 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state) ||
-		    (handled & BIT(crtc->pipe)) ||
-		    old_crtc_state->bigjoiner_slave)
+		    (handled & BIT(crtc->pipe)))
 			continue;
 
-		if (old_crtc_state->hw.active)
-			intel_old_crtc_state_disables(state, old_crtc_state,
-						      new_crtc_state, crtc);
+		if (!old_crtc_state->hw.active)
+			continue;
+
+		intel_old_crtc_state_disables(state, old_crtc_state,
+					      new_crtc_state, crtc);
 	}
 }
 
@@ -10494,9 +10472,6 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 		struct intel_plane *plane;
 		int min_cdclk = 0;
 
-		if (crtc_state->bigjoiner_slave)
-			continue;
-
 		if (crtc_state->hw.active) {
 			/*
 			 * The initial mode needs to be set in order to keep
@@ -10556,39 +10531,6 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 		intel_bw_crtc_update(bw_state, crtc_state);
 
 		intel_pipe_config_sanity_check(dev_priv, crtc_state);
-
-		/* discard our incomplete slave state, copy it from master */
-		if (crtc_state->bigjoiner && crtc_state->hw.active) {
-			struct intel_crtc *slave = crtc_state->bigjoiner_linked_crtc;
-			struct intel_crtc_state *slave_crtc_state =
-				to_intel_crtc_state(slave->base.state);
-
-			copy_bigjoiner_crtc_state(slave_crtc_state, crtc_state);
-			slave->base.mode = crtc->base.mode;
-
-			cdclk_state->min_cdclk[slave->pipe] = min_cdclk;
-			cdclk_state->min_voltage_level[slave->pipe] =
-				crtc_state->min_voltage_level;
-
-			for_each_intel_plane_on_crtc(&dev_priv->drm, slave, plane) {
-				const struct intel_plane_state *plane_state =
-					to_intel_plane_state(plane->base.state);
-
-				/*
-				 * FIXME don't have the fb yet, so can't
-				 * use intel_plane_data_rate() :(
-				 */
-				if (plane_state->uapi.visible)
-					crtc_state->data_rate[plane->id] =
-						4 * crtc_state->pixel_rate;
-				else
-					crtc_state->data_rate[plane->id] = 0;
-			}
-
-			intel_bw_crtc_update(bw_state, slave_crtc_state);
-			drm_calc_timestamping_constants(&slave->base,
-							&slave_crtc_state->hw.adjusted_mode);
-		}
 	}
 }
 
-- 
2.32.0

