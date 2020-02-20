Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C87B61663DF
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 18:06:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BADDD6EDF0;
	Thu, 20 Feb 2020 17:06:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E407C6EDF3;
 Thu, 20 Feb 2020 17:06:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 09:06:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,465,1574150400"; d="scan'208";a="349202565"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by fmsmga001.fm.intel.com with ESMTP; 20 Feb 2020 09:06:16 -0800
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Manasi Navare <manasi.d.navare@intel.com>, Imre Deak <imre.deak@intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Thu, 20 Feb 2020 22:25:04 +0530
Message-Id: <20200220165507.16823-6-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200220165507.16823-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200220165507.16823-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 5/8] drm/i915/display/dp: Make WARN* drm
 specific where drm_device ptr is available
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

drm specific WARN* calls include device information in the
backtrace, so we know what device the warnings originate from.

Covert all the calls of WARN* with device specific drm_WARN*
variants in functions where drm_device or drm_i915_private struct
pointer is readily available.

The conversion was done automatically with below coccinelle semantic
patch. checkpatch errors/warnings are fixed manually.

@rule1@
identifier func, T;
@@
func(...) {
...
struct drm_device *T = ...;
<...
(
-WARN(
+drm_WARN(T,
...)
|
-WARN_ON(
+drm_WARN_ON(T,
...)
|
-WARN_ONCE(
+drm_WARN_ONCE(T,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(T,
...)
)
...>
}

@rule2@
identifier func, T;
@@
func(struct drm_device *T,...) {
<...
(
-WARN(
+drm_WARN(T,
...)
|
-WARN_ON(
+drm_WARN_ON(T,
...)
|
-WARN_ONCE(
+drm_WARN_ONCE(T,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(T,
...)
)
...>
}

@rule3@
identifier func, T;
@@
func(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-WARN(
+drm_WARN(&T->drm,
...)
|
-WARN_ON(
+drm_WARN_ON(&T->drm,
...)
|
-WARN_ONCE(
+drm_WARN_ONCE(&T->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&T->drm,
...)
)
...+>
}

@rule4@
identifier func, T;
@@
func(struct drm_i915_private *T,...) {
<+...
(
-WARN(
+drm_WARN(&T->drm,
...)
|
-WARN_ON(
+drm_WARN_ON(&T->drm,
...)
|
-WARN_ONCE(
+drm_WARN_ONCE(&T->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&T->drm,
...)
)
...+>
}

Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 120 ++++++++++++++----------
 1 file changed, 68 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 74986bc978c2..2bb783276652 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -325,7 +325,8 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	int size, max_rate = 0, vbt_max_rate;
 
 	/* This should only be done once */
-	WARN_ON(intel_dp->source_rates || intel_dp->num_source_rates);
+	drm_WARN_ON(&dev_priv->drm,
+		    intel_dp->source_rates || intel_dp->num_source_rates);
 
 	if (INTEL_GEN(dev_priv) >= 10) {
 		source_rates = cnl_rates;
@@ -757,10 +758,11 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
 	u32 DP;
 
-	if (WARN(intel_de_read(dev_priv, intel_dp->output_reg) & DP_PORT_EN,
-		 "skipping pipe %c power sequencer kick due to [ENCODER:%d:%s] being active\n",
-		 pipe_name(pipe), intel_dig_port->base.base.base.id,
-		 intel_dig_port->base.base.name))
+	if (drm_WARN(&dev_priv->drm,
+		     intel_de_read(dev_priv, intel_dp->output_reg) & DP_PORT_EN,
+		     "skipping pipe %c power sequencer kick due to [ENCODER:%d:%s] being active\n",
+		     pipe_name(pipe), intel_dig_port->base.base.base.id,
+		     intel_dig_port->base.base.name))
 		return;
 
 	drm_dbg_kms(&dev_priv->drm,
@@ -836,13 +838,16 @@ static enum pipe vlv_find_free_pps(struct drm_i915_private *dev_priv)
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		if (encoder->type == INTEL_OUTPUT_EDP) {
-			WARN_ON(intel_dp->active_pipe != INVALID_PIPE &&
-				intel_dp->active_pipe != intel_dp->pps_pipe);
+			drm_WARN_ON(&dev_priv->drm,
+				    intel_dp->active_pipe != INVALID_PIPE &&
+				    intel_dp->active_pipe !=
+				    intel_dp->pps_pipe);
 
 			if (intel_dp->pps_pipe != INVALID_PIPE)
 				pipes &= ~(1 << intel_dp->pps_pipe);
 		} else {
-			WARN_ON(intel_dp->pps_pipe != INVALID_PIPE);
+			drm_WARN_ON(&dev_priv->drm,
+				    intel_dp->pps_pipe != INVALID_PIPE);
 
 			if (intel_dp->active_pipe != INVALID_PIPE)
 				pipes &= ~(1 << intel_dp->active_pipe);
@@ -865,10 +870,10 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 	lockdep_assert_held(&dev_priv->pps_mutex);
 
 	/* We should never land here with regular DP ports */
-	WARN_ON(!intel_dp_is_edp(intel_dp));
+	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
 
-	WARN_ON(intel_dp->active_pipe != INVALID_PIPE &&
-		intel_dp->active_pipe != intel_dp->pps_pipe);
+	drm_WARN_ON(&dev_priv->drm, intel_dp->active_pipe != INVALID_PIPE &&
+		    intel_dp->active_pipe != intel_dp->pps_pipe);
 
 	if (intel_dp->pps_pipe != INVALID_PIPE)
 		return intel_dp->pps_pipe;
@@ -879,7 +884,7 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 	 * Didn't find one. This should not happen since there
 	 * are two power sequencers and up to two eDP ports.
 	 */
-	if (WARN_ON(pipe == INVALID_PIPE))
+	if (drm_WARN_ON(&dev_priv->drm, pipe == INVALID_PIPE))
 		pipe = PIPE_A;
 
 	vlv_steal_power_sequencer(dev_priv, pipe);
@@ -913,7 +918,7 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	lockdep_assert_held(&dev_priv->pps_mutex);
 
 	/* We should never land here with regular DP ports */
-	WARN_ON(!intel_dp_is_edp(intel_dp));
+	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
 
 	if (!intel_dp->pps_reset)
 		return backlight_controller;
@@ -1018,8 +1023,9 @@ void intel_power_sequencer_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
 
-	if (WARN_ON(!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv) &&
-		    !IS_GEN9_LP(dev_priv)))
+	if (drm_WARN_ON(&dev_priv->drm, !IS_VALLEYVIEW(dev_priv) &&
+			IS_CHERRYVIEW(dev_priv) &&
+			!IS_GEN9_LP(dev_priv)))
 		return;
 
 	/*
@@ -1035,7 +1041,8 @@ void intel_power_sequencer_reset(struct drm_i915_private *dev_priv)
 	for_each_intel_dp(&dev_priv->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-		WARN_ON(intel_dp->active_pipe != INVALID_PIPE);
+		drm_WARN_ON(&dev_priv->drm,
+			    intel_dp->active_pipe != INVALID_PIPE);
 
 		if (encoder->type != INTEL_OUTPUT_EDP)
 			continue;
@@ -1170,7 +1177,8 @@ intel_dp_check_edp(struct intel_dp *intel_dp)
 		return;
 
 	if (!edp_have_panel_power(intel_dp) && !edp_have_panel_vdd(intel_dp)) {
-		WARN(1, "eDP powered off while attempting aux channel communication.\n");
+		drm_WARN(&dev_priv->drm, 1,
+			 "eDP powered off while attempting aux channel communication.\n");
 		drm_dbg_kms(&dev_priv->drm, "Status 0x%08x Control 0x%08x\n",
 			    intel_de_read(dev_priv, _pp_stat_reg(intel_dp)),
 			    intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)));
@@ -1384,8 +1392,9 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 		const u32 status = intel_uncore_read(uncore, ch_ctl);
 
 		if (status != intel_dp->aux_busy_last_status) {
-			WARN(1, "%s: not started (status 0x%08x)\n",
-			     intel_dp->aux.name, status);
+			drm_WARN(&i915->drm, 1,
+				 "%s: not started (status 0x%08x)\n",
+				 intel_dp->aux.name, status);
 			intel_dp->aux_busy_last_status = status;
 		}
 
@@ -1394,7 +1403,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	}
 
 	/* Only 5 data registers! */
-	if (WARN_ON(send_bytes > 20 || recv_size > 20)) {
+	if (drm_WARN_ON(&i915->drm, send_bytes > 20 || recv_size > 20)) {
 		ret = -E2BIG;
 		goto out;
 	}
@@ -2679,8 +2688,8 @@ static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
 	lockdep_assert_held(&dev_priv->pps_mutex);
 
 	control = intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp));
-	if (WARN_ON(!HAS_DDI(dev_priv) &&
-		    (control & PANEL_UNLOCK_MASK) != PANEL_UNLOCK_REGS)) {
+	if (drm_WARN_ON(&dev_priv->drm, !HAS_DDI(dev_priv) &&
+			(control & PANEL_UNLOCK_MASK) != PANEL_UNLOCK_REGS)) {
 		control &= ~PANEL_UNLOCK_MASK;
 		control |= PANEL_UNLOCK_REGS;
 	}
@@ -2779,7 +2788,7 @@ static void edp_panel_vdd_off_sync(struct intel_dp *intel_dp)
 
 	lockdep_assert_held(&dev_priv->pps_mutex);
 
-	WARN_ON(intel_dp->want_panel_vdd);
+	drm_WARN_ON(&dev_priv->drm, intel_dp->want_panel_vdd);
 
 	if (!edp_have_panel_vdd(intel_dp))
 		return;
@@ -2876,10 +2885,10 @@ static void edp_panel_on(struct intel_dp *intel_dp)
 		    dp_to_dig_port(intel_dp)->base.base.base.id,
 		    dp_to_dig_port(intel_dp)->base.base.name);
 
-	if (WARN(edp_have_panel_power(intel_dp),
-		 "[ENCODER:%d:%s] panel power already on\n",
-		 dp_to_dig_port(intel_dp)->base.base.base.id,
-		 dp_to_dig_port(intel_dp)->base.base.name))
+	if (drm_WARN(&dev_priv->drm, edp_have_panel_power(intel_dp),
+		     "[ENCODER:%d:%s] panel power already on\n",
+		     dp_to_dig_port(intel_dp)->base.base.base.id,
+		     dp_to_dig_port(intel_dp)->base.base.name))
 		return;
 
 	wait_panel_power_cycle(intel_dp);
@@ -2937,8 +2946,9 @@ static void edp_panel_off(struct intel_dp *intel_dp)
 	drm_dbg_kms(&dev_priv->drm, "Turn [ENCODER:%d:%s] panel power off\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name);
 
-	WARN(!intel_dp->want_panel_vdd, "Need [ENCODER:%d:%s] VDD to turn off panel\n",
-	     dig_port->base.base.base.id, dig_port->base.base.name);
+	drm_WARN(&dev_priv->drm, !intel_dp->want_panel_vdd,
+		 "Need [ENCODER:%d:%s] VDD to turn off panel\n",
+		 dig_port->base.base.base.id, dig_port->base.base.name);
 
 	pp = ilk_get_pp_control(intel_dp);
 	/* We need to switch off panel power _and_ force vdd, for otherwise some
@@ -3581,7 +3591,7 @@ static void intel_enable_dp(struct intel_encoder *encoder,
 	enum pipe pipe = crtc->pipe;
 	intel_wakeref_t wakeref;
 
-	if (WARN_ON(dp_reg & DP_PORT_EN))
+	if (drm_WARN_ON(&dev_priv->drm, dp_reg & DP_PORT_EN))
 		return;
 
 	with_pps_lock(intel_dp, wakeref) {
@@ -3652,9 +3662,9 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
 	enum pipe pipe = intel_dp->pps_pipe;
 	i915_reg_t pp_on_reg = PP_ON_DELAYS(pipe);
 
-	WARN_ON(intel_dp->active_pipe != INVALID_PIPE);
+	drm_WARN_ON(&dev_priv->drm, intel_dp->active_pipe != INVALID_PIPE);
 
-	if (WARN_ON(pipe != PIPE_A && pipe != PIPE_B))
+	if (drm_WARN_ON(&dev_priv->drm, pipe != PIPE_A && pipe != PIPE_B))
 		return;
 
 	edp_panel_vdd_off_sync(intel_dp);
@@ -3688,10 +3698,10 @@ static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
 	for_each_intel_dp(&dev_priv->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-		WARN(intel_dp->active_pipe == pipe,
-		     "stealing pipe %c power sequencer from active [ENCODER:%d:%s]\n",
-		     pipe_name(pipe), encoder->base.base.id,
-		     encoder->base.name);
+		drm_WARN(&dev_priv->drm, intel_dp->active_pipe == pipe,
+			 "stealing pipe %c power sequencer from active [ENCODER:%d:%s]\n",
+			 pipe_name(pipe), encoder->base.base.id,
+			 encoder->base.name);
 
 		if (intel_dp->pps_pipe != pipe)
 			continue;
@@ -3715,7 +3725,7 @@ static void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
 
 	lockdep_assert_held(&dev_priv->pps_mutex);
 
-	WARN_ON(intel_dp->active_pipe != INVALID_PIPE);
+	drm_WARN_ON(&dev_priv->drm, intel_dp->active_pipe != INVALID_PIPE);
 
 	if (intel_dp->pps_pipe != INVALID_PIPE &&
 	    intel_dp->pps_pipe != crtc->pipe) {
@@ -4243,7 +4253,9 @@ intel_dp_link_down(struct intel_encoder *encoder,
 	enum port port = encoder->port;
 	u32 DP = intel_dp->DP;
 
-	if (WARN_ON((intel_de_read(dev_priv, intel_dp->output_reg) & DP_PORT_EN) == 0))
+	if (drm_WARN_ON(&dev_priv->drm,
+			(intel_de_read(dev_priv, intel_dp->output_reg) &
+			 DP_PORT_EN) == 0))
 		return;
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
@@ -4405,7 +4417,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 		to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
 
 	/* this function is meant to be called only once */
-	WARN_ON(intel_dp->dpcd[DP_DPCD_REV] != 0);
+	drm_WARN_ON(&dev_priv->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
 
 	if (!intel_dp_read_dpcd(intel_dp))
 		return false;
@@ -5161,7 +5173,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 
 	crtc_state = to_intel_crtc_state(crtc->base.state);
 
-	WARN_ON(!intel_crtc_has_dp_encoder(crtc_state));
+	drm_WARN_ON(&dev_priv->drm, !intel_crtc_has_dp_encoder(crtc_state));
 
 	if (!crtc_state->hw.active)
 		return 0;
@@ -5696,7 +5708,8 @@ intel_dp_detect(struct drm_connector *connector,
 
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
-	WARN_ON(!drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex));
+	drm_WARN_ON(&dev_priv->drm,
+		    !drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex));
 
 	/* Can't disconnect eDP */
 	if (intel_dp_is_edp(intel_dp))
@@ -6662,7 +6675,7 @@ static int intel_modeset_affected_transcoders(struct intel_atomic_state *state,
 		transcoders &= ~BIT(crtc_state->cpu_transcoder);
 	}
 
-	WARN_ON(transcoders != 0);
+	drm_WARN_ON(&dev_priv->drm, transcoders != 0);
 
 	return 0;
 }
@@ -7043,7 +7056,8 @@ intel_dp_init_panel_power_sequencer_registers(struct intel_dp *intel_dp,
 	if (force_disable_vdd) {
 		u32 pp = ilk_get_pp_control(intel_dp);
 
-		WARN(pp & PANEL_POWER_ON, "Panel power already on\n");
+		drm_WARN(&dev_priv->drm, pp & PANEL_POWER_ON,
+			 "Panel power already on\n");
 
 		if (pp & EDP_FORCE_VDD)
 			drm_dbg_kms(&dev_priv->drm,
@@ -7519,7 +7533,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	 * with an already powered-on LVDS power sequencer.
 	 */
 	if (intel_get_lvds_encoder(dev_priv)) {
-		WARN_ON(!(HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)));
+		drm_WARN_ON(dev,
+			    !(HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)));
 		drm_info(&dev_priv->drm,
 			 "LVDS was detected, not registering eDP\n");
 
@@ -7653,10 +7668,10 @@ intel_dp_init_connector(struct intel_digital_port *intel_dig_port,
 	INIT_WORK(&intel_connector->modeset_retry_work,
 		  intel_dp_modeset_retry_work_fn);
 
-	if (WARN(intel_dig_port->max_lanes < 1,
-		 "Not enough lanes (%d) for DP on [ENCODER:%d:%s]\n",
-		 intel_dig_port->max_lanes, intel_encoder->base.base.id,
-		 intel_encoder->base.name))
+	if (drm_WARN(dev, intel_dig_port->max_lanes < 1,
+		     "Not enough lanes (%d) for DP on [ENCODER:%d:%s]\n",
+		     intel_dig_port->max_lanes, intel_encoder->base.base.id,
+		     intel_encoder->base.name))
 		return false;
 
 	intel_dp_set_source_rates(intel_dp);
@@ -7674,7 +7689,7 @@ intel_dp_init_connector(struct intel_digital_port *intel_dig_port,
 		 * Currently we don't support eDP on TypeC ports, although in
 		 * theory it could work on TypeC legacy ports.
 		 */
-		WARN_ON(intel_phy_is_tc(dev_priv, phy));
+		drm_WARN_ON(dev, intel_phy_is_tc(dev_priv, phy));
 		type = DRM_MODE_CONNECTOR_eDP;
 	} else {
 		type = DRM_MODE_CONNECTOR_DisplayPort;
@@ -7692,9 +7707,10 @@ intel_dp_init_connector(struct intel_digital_port *intel_dig_port,
 		intel_encoder->type = INTEL_OUTPUT_EDP;
 
 	/* eDP only on port B and/or C on vlv/chv */
-	if (WARN_ON((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-		    intel_dp_is_edp(intel_dp) &&
-		    port != PORT_B && port != PORT_C))
+	if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
+			      IS_CHERRYVIEW(dev_priv)) &&
+			intel_dp_is_edp(intel_dp) &&
+			port != PORT_B && port != PORT_C))
 		return false;
 
 	drm_dbg_kms(&dev_priv->drm,
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
