Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEDB513D13
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 23:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4313710E272;
	Thu, 28 Apr 2022 21:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FD5A10E272
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 21:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651180222; x=1682716222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uqvvanhBbfQkpXeHolmaELC9IqqBy6eApBcc3XvWVd8=;
 b=Putc+fFy4qg7dKQ0eP4XWbVS7Onl2QbO2L647bOxWGIEokdzCfOxBPHm
 4HgyznBReBYaeQFAktkcm8omCIDm1hPv460x1g05mORKYNPy37Ixv32Cr
 L8DEcrhjm6ZKh7mAbTpGQwnuaa5yNheE4PZVrCn3RMXNgoUj668Y04vjI
 tNZi6XZwHKcEDS7rysvHkoTdQfBgcokRQND60UbGo7F9ACjOt2EpTBjYc
 TcE7Suzw1eLUy4tXAXpr4MYzNpyr+rczKGg1KAsK5eKlhs+SbBsTxS5Bq
 r7RV3jdzfHVcL/MzqT9opbpclBZ/v5XGJP8mHZf9LFei80QsIv2K/INqr g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="266581213"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="266581213"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 14:10:22 -0700
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="581644261"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.139])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 14:10:20 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Apr 2022 14:10:58 -0700
Message-Id: <20220428211058.399630-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220428211058.399630-1-jose.souza@intel.com>
References: <20220428211058.399630-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: Implement seamless mode
 switch
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
Cc: Sean Paul <seanpaul@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

So far the i915's DRRS feature was automatically changing between
preferred panel mode and downclock mode based on idleness but ChromeOS
compositor team is asking to be in control of the mode switch.
So for certain types of content it can switch to a mode with a lower
refresh rate without the user noticing a thing and saving more power.

This seamless mode switch will be triggered when user-space dispatches
an atomic commit with the new mode and clears the
DRM_MODE_ATOMIC_ALLOW_MODESET flag.

The main steps to acomplish that are:

- as mode changed in atomic state drm_atomic_helper_check_modeset()
will set mode_changed and it will trigger the crtc state computation
so intel_dp_compute_config() will be called and dp_m_n will be
computed for the new mode

- then intel_dp_drrs_compute_config() will check for the necessary
conditions to do a seamless mode switch, if possible
crtc_state->seamless_mode_switch will be set and has_drrs will not
be set, so i915 will not automatically switch between modes

- then intel_crtc_compute_config() will call
intel_crtc_compute_pixel_rate() that will take the hint that it is
trying to do a seamless mode switch and set pixel_rate to the
pixel_rate of the old state

- then if nothing else changed in the state intel_crtc_check_fastset()
will be able to set mode_changed to false and i915 can do fastset
otherwise the commit will fail during the check phase

- now on the atomic commit phase, intel_ddi_update_pipe_dp()
will be called and will program the new dp_m_n

- nothing else is different in the commit phase until the step to
verify programmed state, the most important change here is that need
to save the pixel_rate in DRRS global state as there is no other
way to get that from hardware or atomic state

Cc: Vidya Srinivas <vidya.srinivas@intel.com>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 10 ++++
 drivers/gpu/drm/i915/display/intel_display.c  | 59 ++++++++++++++++---
 .../drm/i915/display/intel_display_debugfs.c  |  3 +
 .../drm/i915/display/intel_display_types.h    |  3 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 56 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_drrs.c     | 35 ++++++++---
 drivers/gpu/drm/i915/display/intel_drrs.h     |  3 +
 7 files changed, 147 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9e6fa59eabba7..732e5d425412e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -46,6 +46,7 @@
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dpio_phy.h"
+#include "intel_drrs.h"
 #include "intel_dsi.h"
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
@@ -3010,6 +3011,14 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 
 	intel_backlight_update(state, encoder, crtc_state, conn_state);
 	drm_connector_update_privacy_screen(conn_state);
+
+	if (crtc_state->seamless_mode_switch) {
+		struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+		intel_cpu_transcoder_set_m1_n1(intel_crtc,
+					       crtc_state->cpu_transcoder,
+					       &crtc_state->dp_m_n);
+	}
 }
 
 void intel_ddi_update_pipe(struct intel_atomic_state *state,
@@ -3484,6 +3493,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
 
 	intel_psr_get_config(encoder, pipe_config);
+	intel_drrs_get_config(encoder, pipe_config);
 }
 
 void intel_ddi_get_clock(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 17d0cad9e1686..c37501b2ab419 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2629,6 +2629,44 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 	else
 		crtc_state->pixel_rate =
 			ilk_pipe_pixel_rate(crtc_state);
+
+	/*
+	 * Do not change pixel_rate when doing seamless mode switch, otherwise
+	 * it will change port_clock and other stuff that will need a modeset
+	 * to be programmed
+	 */
+	if (crtc_state->seamless_mode_switch) {
+		struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
+		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+		const struct intel_crtc_state *old_crtc_state;
+
+		old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
+
+		/*
+		 * It can only seamless switch if pixel rate of the new mode is
+		 * <= than old one, if not commit will fail with pixel_rate
+		 * mismatch.
+		 */
+		if (crtc_state->pixel_rate < old_crtc_state->pixel_rate ||
+		    intel_fuzzy_clock_check(crtc_state->pixel_rate,
+					    old_crtc_state->pixel_rate))
+			crtc_state->pixel_rate = old_crtc_state->pixel_rate;
+	}
+}
+
+static void intel_crtc_get_pixel_rate(struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->seamless_mode_switch) {
+		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+		mutex_lock(&crtc->drrs.mutex);
+		crtc_state->pixel_rate = crtc->drrs.seamless_mode_switch_pixel_rate;
+		mutex_unlock(&crtc->drrs.mutex);
+
+		return;
+	}
+
+	intel_crtc_compute_pixel_rate(crtc_state);
 }
 
 static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
@@ -2705,7 +2743,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
 	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
 
-	intel_crtc_compute_pixel_rate(crtc_state);
+	intel_crtc_get_pixel_rate(crtc_state);
 }
 
 static void intel_encoder_get_config(struct intel_encoder *encoder,
@@ -6182,11 +6220,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(lane_count);
 	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
 
-	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv)) {
-		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
-	} else {
-		PIPE_CONF_CHECK_M_N(dp_m_n);
-		PIPE_CONF_CHECK_M_N(dp_m2_n2);
+	if (!pipe_config->seamless_mode_switch) {
+		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv)) {
+			PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
+		} else {
+			PIPE_CONF_CHECK_M_N(dp_m_n);
+			PIPE_CONF_CHECK_M_N(dp_m2_n2);
+		}
 	}
 
 	PIPE_CONF_CHECK_X(output_types);
@@ -6348,8 +6388,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
 		PIPE_CONF_CHECK_I(pipe_bpp);
 
-	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.pipe_mode.crtc_clock);
-	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
+	if (!pipe_config->seamless_mode_switch) {
+		PIPE_CONF_CHECK_CLOCK_FUZZY(hw.pipe_mode.crtc_clock);
+		PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
+	}
 	PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
 
 	PIPE_CONF_CHECK_I(min_voltage_level);
@@ -7090,6 +7132,7 @@ static void intel_crtc_copy_fastset(const struct intel_crtc_state *old_crtc_stat
 	if (!intel_drrs_crtc_copy_fastset(old_crtc_state, new_crtc_state)) {
 		new_crtc_state->dp_m2_n2 = old_crtc_state->dp_m2_n2;
 		new_crtc_state->has_drrs = old_crtc_state->has_drrs;
+		new_crtc_state->seamless_mode_switch = old_crtc_state->seamless_mode_switch;
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 452d773fd4e34..92099e1f0b23e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1108,6 +1108,9 @@ static int i915_drrs_status(struct seq_file *m, void *unused)
 			   crtc->drrs.refresh_rate == DRRS_REFRESH_RATE_LOW ?
 			   "low" : "high");
 
+		seq_printf(m, "Seamless mode switch enabled: %s\n",
+			   str_yes_no(crtc->drrs.seamless_mode_switch_pixel_rate));
+
 		mutex_unlock(&crtc->drrs.mutex);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 408152f9f46a4..e290366adfc27 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1057,6 +1057,7 @@ struct intel_crtc_state {
 	/* m2_n2 for eDP downclock */
 	struct intel_link_m_n dp_m2_n2;
 	bool has_drrs;
+	bool seamless_mode_switch;
 
 	/* PSR is supported but might not be enabled due the lack of enabled planes */
 	bool has_psr;
@@ -1314,6 +1315,8 @@ struct intel_crtc {
 		unsigned int busy_frontbuffer_bits;
 		enum transcoder cpu_transcoder;
 		struct intel_link_m_n m_n, m2_n2;
+		/* Only used to verify if programmed state matches */
+		unsigned int seamless_mode_switch_pixel_rate;
 	} drrs;
 
 	int scanline_offset;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e4a79c11fd255..d7d045bdf77af 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1835,8 +1835,7 @@ static bool cpu_transcoder_has_drrs(struct drm_i915_private *i915,
 }
 
 static bool can_enable_drrs(struct intel_connector *connector,
-			    const struct intel_crtc_state *pipe_config,
-			    const struct drm_display_mode *downclock_mode)
+			    const struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
@@ -1859,8 +1858,40 @@ static bool can_enable_drrs(struct intel_connector *connector,
 	if (!cpu_transcoder_has_drrs(i915, pipe_config->cpu_transcoder))
 		return false;
 
-	return downclock_mode &&
-		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
+	return intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
+}
+
+static bool can_seamless_switch_mode(struct intel_crtc_state *pipe_config)
+{
+	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
+	const struct intel_crtc_state *old_pipe_config;
+	struct intel_atomic_state *state;
+	struct intel_crtc *intel_crtc;
+
+	/* Only supported in platforms that can switch m_n on the fly */
+	if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
+		return false;
+
+	state = to_intel_atomic_state(pipe_config->uapi.state);
+	if (state->base.allow_modeset)
+		return false;
+
+	intel_crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	old_pipe_config = intel_atomic_get_old_crtc_state(state, intel_crtc);
+	if (drm_mode_equal(&old_pipe_config->hw.adjusted_mode,
+			   &pipe_config->hw.adjusted_mode))
+		return false;
+
+	/* Only clock can change */
+	if (!drm_mode_match(&old_pipe_config->hw.adjusted_mode,
+			    &pipe_config->hw.adjusted_mode,
+			    DRM_MODE_MATCH_TIMINGS |
+			    DRM_MODE_MATCH_FLAGS |
+			    DRM_MODE_MATCH_3D_FLAGS |
+			    DRM_MODE_MATCH_ASPECT_RATIO))
+		return false;
+
+	return true;
 }
 
 static void
@@ -1873,12 +1904,17 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
 	int pixel_clock;
 
-	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
-		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
-			intel_zero_m_n(&pipe_config->dp_m2_n2);
+	if (!can_enable_drrs(connector, pipe_config))
+		goto not_supported;
+
+	if (can_seamless_switch_mode(pipe_config)) {
+		pipe_config->seamless_mode_switch = true;
 		return;
 	}
 
+	if (!downclock_mode)
+		goto not_supported;
+
 	if (IS_IRONLAKE(i915) || IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915))
 		pipe_config->msa_timing_delay = i915->vbt.edp.drrs_msa_timing_delay;
 
@@ -1895,6 +1931,12 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
 		pipe_config->dp_m2_n2.data_m *= pipe_config->splitter.link_count;
+
+	return;
+
+not_supported:
+	if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
+		intel_zero_m_n(&pipe_config->dp_m2_n2);
 }
 
 static bool intel_dp_has_audio(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index c6509c29e942b..179a124177d15 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -144,16 +144,19 @@ void intel_drrs_activate(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
+	mutex_lock(&crtc->drrs.mutex);
+
+	crtc->drrs.seamless_mode_switch_pixel_rate = crtc_state->seamless_mode_switch ?
+						     crtc_state->pixel_rate : 0;
+
 	if (!crtc_state->has_drrs)
-		return;
+		goto unlock;
 
 	if (!crtc_state->hw.active)
-		return;
+		goto unlock;
 
 	if (intel_crtc_is_bigjoiner_slave(crtc_state))
-		return;
-
-	mutex_lock(&crtc->drrs.mutex);
+		goto unlock;
 
 	crtc->drrs.cpu_transcoder = crtc_state->cpu_transcoder;
 	crtc->drrs.m_n = crtc_state->dp_m_n;
@@ -163,6 +166,7 @@ void intel_drrs_activate(const struct intel_crtc_state *crtc_state)
 
 	intel_drrs_schedule_work(crtc);
 
+unlock:
 	mutex_unlock(&crtc->drrs.mutex);
 }
 
@@ -176,7 +180,7 @@ void intel_drrs_deactivate(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 
-	if (!old_crtc_state->has_drrs)
+	if (!old_crtc_state->has_drrs && !old_crtc_state->seamless_mode_switch)
 		return;
 
 	if (!old_crtc_state->hw.active)
@@ -187,12 +191,14 @@ void intel_drrs_deactivate(const struct intel_crtc_state *old_crtc_state)
 
 	mutex_lock(&crtc->drrs.mutex);
 
-	if (intel_drrs_is_active(crtc))
+	if (intel_drrs_is_active(crtc) &&
+	    old_crtc_state->seamless_mode_switch == 0)
 		intel_drrs_set_state(crtc, DRRS_REFRESH_RATE_HIGH);
 
 	crtc->drrs.cpu_transcoder = INVALID_TRANSCODER;
 	crtc->drrs.frontbuffer_bits = 0;
 	crtc->drrs.busy_frontbuffer_bits = 0;
+	crtc->drrs.seamless_mode_switch_pixel_rate = 0;
 
 	mutex_unlock(&crtc->drrs.mutex);
 
@@ -329,3 +335,18 @@ bool intel_drrs_crtc_copy_fastset(const struct intel_crtc_state *old_crtc_state,
 
 	return true;
 }
+
+void intel_drrs_get_config(struct intel_encoder *encoder,
+			   struct intel_crtc_state *pipe_config)
+{
+	struct intel_crtc *crtc;
+
+	crtc = to_intel_crtc(pipe_config->uapi.crtc);
+
+	mutex_lock(&crtc->drrs.mutex);
+
+	pipe_config->seamless_mode_switch = crtc->drrs.seamless_mode_switch_pixel_rate;
+	pipe_config->has_drrs = intel_drrs_is_active(crtc);
+
+	mutex_unlock(&crtc->drrs.mutex);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 749ac717db063..a100023658a5a 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -14,6 +14,7 @@ struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_connector;
+struct intel_encoder;
 
 const char *intel_drrs_type_str(enum drrs_type drrs_type);
 bool intel_drrs_is_active(struct intel_crtc *crtc);
@@ -26,5 +27,7 @@ void intel_drrs_flush(struct drm_i915_private *dev_priv,
 void intel_crtc_drrs_init(struct intel_crtc *crtc);
 bool intel_drrs_crtc_copy_fastset(const struct intel_crtc_state *old_crtc_state,
 				  struct intel_crtc_state *new_crtc_state);
+void intel_drrs_get_config(struct intel_encoder *encoder,
+			   struct intel_crtc_state *pipe_config);
 
 #endif /* __INTEL_DRRS_H__ */
-- 
2.36.0

