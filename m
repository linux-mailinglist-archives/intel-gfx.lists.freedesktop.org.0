Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEF02A3793
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 01:17:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2C26E5A9;
	Tue,  3 Nov 2020 00:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C2FE6E59D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 00:17:34 +0000 (UTC)
IronPort-SDR: p3kokdPKsJiFkbPePMb+l7RIOgDjFnK9ly/1kwYwOcrP3S2tDqMxmff8n+vmGEREPDXfhqJYv3
 U/sLF92AMUZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="155962134"
X-IronPort-AV: E=Sophos;i="5.77,446,1596524400"; d="scan'208";a="155962134"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 16:17:33 -0800
IronPort-SDR: L+VHYxJBPXM8wiw8NZXFwakS79yvwzZs6DSvHsPi+UNctUaNeCganCzce1sQ6880/8NgMV4/7f
 9aKHrtyWwB7w==
X-IronPort-AV: E=Sophos;i="5.77,446,1596524400"; d="scan'208";a="470573465"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 02 Nov 2020 16:17:32 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Nov 2020 16:19:26 -0800
Message-Id: <20201103001932.11286-8-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201103001932.11286-1-manasi.d.navare@intel.com>
References: <20201103001932.11286-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v14 07/13] drm/i915: Try to make bigjoiner work
 in atomic check
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

 When the clock is higher than the dotclock, try with 2 pipes enabled.
 If we can enable 2, then we will go into big joiner mode, and steal
 the adjacent crtc.

 This only links the crtc's in software, no hardware or plane
 programming is done yet. Blobs are also copied from the master's
 crtc_state, so it doesn't depend at commit time on the other
 crtc_state.

v5:
* Remove intel_dp_max_dotclock (Manasi)
v4:
* Fixes in intel_crtc_compute_config (Ville)
v3:
* Manual Rebase (Manasi)
 Changes since v1:
 - Rename pipe timings to transcoder timings, as they are now different.
  Changes since v2:
 - Rework bigjoiner checks; always disable slave when recalculating
   master. No need to have a separate bigjoiner pass any more.
 - Use pipe_mode instead of transcoder_mode, to clean up the code.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 159 +++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |   9 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  19 ++-
 3 files changed, 175 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 73bd9721c1a8..01838679071a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8252,6 +8252,19 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 
 	*pipe_mode = pipe_config->hw.adjusted_mode;
 
+	/* Adjust pipe_mode for bigjoiner, with half the horizontal mode */
+	if (pipe_config->bigjoiner) {
+		pipe_mode->crtc_clock /= 2;
+		pipe_mode->crtc_hdisplay /= 2;
+		pipe_mode->crtc_hblank_start /= 2;
+		pipe_mode->crtc_hblank_end /= 2;
+		pipe_mode->crtc_hsync_start /= 2;
+		pipe_mode->crtc_hsync_end /= 2;
+		pipe_mode->crtc_htotal /= 2;
+		pipe_mode->crtc_hskew /= 2;
+		pipe_config->pipe_src_w /= 2;
+	}
+
 	if (INTEL_GEN(dev_priv) < 4) {
 		clock_limit = dev_priv->max_cdclk_freq * 9 / 10;
 
@@ -12922,6 +12935,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 
 	if (mode_changed && crtc_state->hw.enable &&
 	    dev_priv->display.crtc_compute_clock &&
+	    !crtc_state->bigjoiner_slave &&
 	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
 		ret = dev_priv->display.crtc_compute_clock(crtc, crtc_state);
 		if (ret)
@@ -13466,6 +13480,15 @@ intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
 {
 	const struct intel_crtc_state *from_crtc_state = crtc_state;
 
+	if (crtc_state->bigjoiner_slave) {
+		from_crtc_state = intel_atomic_get_new_crtc_state(state,
+								  crtc_state->bigjoiner_linked_crtc);
+
+		/* No need to copy state if the master state is unchanged */
+		if (!from_crtc_state)
+			return;
+	}
+
 	intel_crtc_copy_color_blobs(crtc_state, from_crtc_state);
 }
 
@@ -13501,6 +13524,47 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 				  crtc_state->hw.ctm);
 }
 
+static int
+copy_bigjoiner_crtc_state(struct intel_crtc_state *crtc_state,
+			  const struct intel_crtc_state *from_crtc_state)
+{
+	struct intel_crtc_state *saved_state;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	saved_state = kmemdup(from_crtc_state, sizeof(*saved_state), GFP_KERNEL);
+	if (!saved_state)
+		return -ENOMEM;
+
+	saved_state->uapi = crtc_state->uapi;
+	saved_state->scaler_state = crtc_state->scaler_state;
+	saved_state->shared_dpll = crtc_state->shared_dpll;
+	saved_state->dpll_hw_state = crtc_state->dpll_hw_state;
+	saved_state->crc_enabled = crtc_state->crc_enabled;
+
+	intel_crtc_free_hw_state(crtc_state);
+	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
+	kfree(saved_state);
+
+	/* Re-init hw state */
+	memset(&crtc_state->hw, 0, sizeof(saved_state->hw));
+	crtc_state->hw.enable = from_crtc_state->hw.enable;
+	crtc_state->hw.active = from_crtc_state->hw.active;
+	crtc_state->hw.pipe_mode = from_crtc_state->hw.pipe_mode;
+	crtc_state->hw.adjusted_mode = from_crtc_state->hw.adjusted_mode;
+
+	/* Some fixups */
+	crtc_state->uapi.mode_changed = from_crtc_state->uapi.mode_changed;
+	crtc_state->uapi.connectors_changed = from_crtc_state->uapi.connectors_changed;
+	crtc_state->uapi.active_changed = from_crtc_state->uapi.active_changed;
+	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;
+	crtc_state->bigjoiner_linked_crtc = to_intel_crtc(from_crtc_state->uapi.crtc);
+	crtc_state->bigjoiner_slave = true;
+	crtc_state->cpu_transcoder = (enum transcoder)crtc->pipe;
+	crtc_state->has_audio = false;
+
+	return 0;
+}
+
 static int
 intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 				 struct intel_crtc_state *crtc_state)
@@ -13676,9 +13740,6 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		    "hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
 		    base_bpp, pipe_config->pipe_bpp, pipe_config->dither);
 
-	/* without bigjoiner, pipe_mode == adjusted_mode */
-	pipe_config->hw.pipe_mode = pipe_config->hw.adjusted_mode;
-
 	return 0;
 }
 
@@ -15078,6 +15139,75 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
 	return false;
 }
 
+static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
+					struct intel_crtc *crtc,
+					struct intel_crtc_state *old_crtc_state,
+					struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
+	struct intel_crtc *slave, *master;
+
+	/* slave being enabled, is master is still claiming this crtc? */
+	if (old_crtc_state->bigjoiner_slave) {
+		slave = crtc;
+		master = old_crtc_state->bigjoiner_linked_crtc;
+		master_crtc_state = intel_atomic_get_new_crtc_state(state, master);
+		if (!master_crtc_state || !needs_modeset(master_crtc_state))
+			goto claimed;
+	}
+
+	if (!new_crtc_state->bigjoiner)
+		return 0;
+
+	if (1 + crtc->pipe >= INTEL_NUM_PIPES(dev_priv)) {
+		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires "
+			      "CRTC + 1 to be used, doesn't exist\n",
+			      crtc->base.base.id, crtc->base.name);
+		return -EINVAL;
+	}
+
+	slave = new_crtc_state->bigjoiner_linked_crtc =
+		intel_get_crtc_for_pipe(dev_priv, crtc->pipe + 1);
+	slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave);
+	master = crtc;
+	if (IS_ERR(slave_crtc_state))
+		return PTR_ERR(slave_crtc_state);
+
+	/* master being enabled, slave was already configured? */
+	if (slave_crtc_state->uapi.enable)
+		goto claimed;
+
+	DRM_DEBUG_KMS("[CRTC:%d:%s] Used as slave for big joiner\n",
+		      slave->base.base.id, slave->base.name);
+
+	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
+
+claimed:
+	DRM_DEBUG_KMS("[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
+		      "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
+		      slave->base.base.id, slave->base.name,
+		      master->base.base.id, master->base.name);
+	return -EINVAL;
+}
+
+static int kill_bigjoiner_slave(struct intel_atomic_state *state,
+				struct intel_crtc_state *master_crtc_state)
+{
+	struct intel_crtc_state *slave_crtc_state =
+			intel_atomic_get_crtc_state(&state->base,
+						    master_crtc_state->bigjoiner_linked_crtc);
+
+		if (IS_ERR(slave_crtc_state))
+			return PTR_ERR(slave_crtc_state);
+
+		slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;
+		slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;
+		intel_crtc_copy_uapi_to_hw_state(state, slave_crtc_state);
+		return 0;
+}
+
 /**
  * DOC: asynchronous flip implementation
  *
@@ -15245,16 +15375,33 @@ static int intel_atomic_check(struct drm_device *dev,
 			continue;
 		}
 
+		/* Kill old bigjoiner link, we may re-establish afterwards */
+		if (old_crtc_state->bigjoiner && !old_crtc_state->bigjoiner_slave) {
+			ret = kill_bigjoiner_slave(state, new_crtc_state);
+			if (ret)
+				goto fail;
+		}
+
+		if (!new_crtc_state->uapi.enable) {
+			if (!new_crtc_state->bigjoiner_slave) {
+				intel_crtc_copy_uapi_to_hw_state(state, new_crtc_state);
+				any_ms = true;
+			}
+			continue;
+		}
+
 		ret = intel_crtc_prepare_cleared_state(state, new_crtc_state);
 		if (ret)
 			goto fail;
 
-		if (!new_crtc_state->hw.enable)
-			continue;
-
 		ret = intel_modeset_pipe_config(state, new_crtc_state);
 		if (ret)
 			goto fail;
+
+		ret = intel_atomic_check_bigjoiner(state, crtc, old_crtc_state,
+						   new_crtc_state);
+		if (ret)
+			goto fail;
 	}
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b526afee595c..59ed94d68b55 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1070,6 +1070,15 @@ struct intel_crtc_state {
 	/* enable pipe csc? */
 	bool csc_enable;
 
+	/* enable pipe big joiner? */
+	bool bigjoiner;
+
+	/* big joiner slave crtc? */
+	bool bigjoiner_slave;
+
+	/* linked crtc for bigjoiner, either slave or master */
+	struct intel_crtc *bigjoiner_linked_crtc;
+
 	/* Display Stream compression state */
 	struct {
 		bool compression_enable;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fb5d5a36f606..7add88103cfc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2382,6 +2382,12 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	pipe_config->port_clock = intel_dp->common_rates[limits->max_clock];
 	pipe_config->lane_count = limits->max_lane_count;
 
+	if (adjusted_mode->crtc_clock > dev_priv->max_dotclk_freq &&
+	    intel_dp_can_bigjoiner(intel_dp)) {
+		pipe_config->bigjoiner = true;
+		DRM_DEBUG_KMS("Using bigjoiner configuration\n");
+	}
+
 	if (intel_dp_is_edp(intel_dp)) {
 		pipe_config->dsc.compressed_bpp =
 			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
@@ -2399,12 +2405,12 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 						    pipe_config->lane_count,
 						    adjusted_mode->crtc_clock,
 						    adjusted_mode->crtc_hdisplay,
-						    false);
+						    pipe_config->bigjoiner);
 		dsc_dp_slice_count =
 			intel_dp_dsc_get_slice_count(intel_dp,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
-						     false);
+						     pipe_config->bigjoiner);
 		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Compressed BPP/Slice Count not supported\n");
@@ -2420,14 +2426,15 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * is greater than the maximum Cdclock and if slice count is even
 	 * then we need to use 2 VDSC instances.
 	 */
-	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq) {
-		if (pipe_config->dsc.slice_count > 1) {
-			pipe_config->dsc.dsc_split = true;
-		} else {
+	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
+	    pipe_config->bigjoiner) {
+		if (pipe_config->dsc.slice_count < 2) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Cannot split stream to use 2 VDSC instances\n");
 			return -EINVAL;
 		}
+
+		pipe_config->dsc.dsc_split = true;
 	}
 
 	ret = intel_dp_dsc_compute_params(&dig_port->base, pipe_config);
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
