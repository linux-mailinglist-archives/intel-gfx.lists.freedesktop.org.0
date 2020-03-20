Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6F818D10D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 15:36:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E52066E15D;
	Fri, 20 Mar 2020 14:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EEEE6E15D
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 14:36:49 +0000 (UTC)
IronPort-SDR: DFIJJ2KrwHnbf1Asv2ORkV+WG8WpVghtTKbnyCcUDKeJlem5nPttQwGpfeqEulEzjt6BjkxVZ8
 J4euswZW4zqA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:36:49 -0700
IronPort-SDR: mhBO0yssAXsqZiA/hXfgaicTXsP7cRyZMLCSeU67hBN1rKV5cYDfOnIzBb1lUBjjdYUnWVbvEq
 jpxomt15HenA==
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="418730992"
Received: from rkamins1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.98])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:36:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2020 16:36:26 +0200
Message-Id: <e09bb6e97b2fbc44303acce0523dc35e3e74a456.1584714939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584714939.git.jani.nikula@intel.com>
References: <cover.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 01/13] drm/i915/ddi: use struct drm_device based
 logging
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert all the DRM_* logging macros to the struct drm_device based
macros to provide device specific logging.

No functional changes.

Generated using the following semantic patch, originally written by
Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:

@@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

Cc: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 118 ++++++++++++++---------
 1 file changed, 72 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 73d0f4648c06..3df7fb5b3d02 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1102,7 +1102,8 @@ static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 		if (intel_de_read(dev_priv, reg) & DDI_BUF_IS_IDLE)
 			return;
 	}
-	DRM_ERROR("Timeout waiting for DDI BUF %c idle bit\n", port_name(port));
+	drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c idle bit\n",
+		port_name(port));
 }
 
 static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
@@ -1249,7 +1250,8 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 
 		temp = intel_de_read(dev_priv, DP_TP_STATUS(PORT_E));
 		if (temp & DP_TP_STATUS_AUTOTRAIN_DONE) {
-			DRM_DEBUG_KMS("FDI link training done on step %d\n", i);
+			drm_dbg_kms(&dev_priv->drm,
+				    "FDI link training done on step %d\n", i);
 			break;
 		}
 
@@ -1258,7 +1260,7 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		 * Results in less fireworks from the state checker.
 		 */
 		if (i == ARRAY_SIZE(hsw_ddi_translations_fdi) * 2 - 1) {
-			DRM_ERROR("FDI link training failed!\n");
+			drm_err(&dev_priv->drm, "FDI link training failed!\n");
 			break;
 		}
 
@@ -1605,7 +1607,8 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 
 	if (dev_priv->quirks & QUIRK_INCREASE_DDI_DISABLED_TIME &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
-		DRM_DEBUG_KMS("Quirk Increase DDI disabled time\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Quirk Increase DDI disabled time\n");
 		/* Quirk time at 100ms for reliable operation */
 		msleep(100);
 	}
@@ -1786,20 +1789,23 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	}
 
 	if (!*pipe_mask)
-		DRM_DEBUG_KMS("No pipe for [ENCODER:%d:%s] found\n",
-			      encoder->base.base.id, encoder->base.name);
+		drm_dbg_kms(&dev_priv->drm,
+			    "No pipe for [ENCODER:%d:%s] found\n",
+			    encoder->base.base.id, encoder->base.name);
 
 	if (!mst_pipe_mask && hweight8(*pipe_mask) > 1) {
-		DRM_DEBUG_KMS("Multiple pipes for [ENCODER:%d:%s] (pipe_mask %02x)\n",
-			      encoder->base.base.id, encoder->base.name,
-			      *pipe_mask);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Multiple pipes for [ENCODER:%d:%s] (pipe_mask %02x)\n",
+			    encoder->base.base.id, encoder->base.name,
+			    *pipe_mask);
 		*pipe_mask = BIT(ffs(*pipe_mask) - 1);
 	}
 
 	if (mst_pipe_mask && mst_pipe_mask != *pipe_mask)
-		DRM_DEBUG_KMS("Conflicting MST and non-MST state for [ENCODER:%d:%s] (pipe_mask %02x mst_pipe_mask %02x)\n",
-			      encoder->base.base.id, encoder->base.name,
-			      *pipe_mask, mst_pipe_mask);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Conflicting MST and non-MST state for [ENCODER:%d:%s] (pipe_mask %02x mst_pipe_mask %02x)\n",
+			    encoder->base.base.id, encoder->base.name,
+			    *pipe_mask, mst_pipe_mask);
 	else
 		*is_dp_mst = mst_pipe_mask;
 
@@ -1809,9 +1815,9 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 		if ((tmp & (BXT_PHY_CMNLANE_POWERDOWN_ACK |
 			    BXT_PHY_LANE_POWERDOWN_ACK |
 			    BXT_PHY_LANE_ENABLED)) != BXT_PHY_LANE_ENABLED)
-			DRM_ERROR("[ENCODER:%d:%s] enabled but PHY powered down? "
-				  "(PHY_CTL %08x)\n", encoder->base.base.id,
-				  encoder->base.name, tmp);
+			drm_err(&dev_priv->drm,
+				"[ENCODER:%d:%s] enabled but PHY powered down? (PHY_CTL %08x)\n",
+				encoder->base.base.id, encoder->base.name, tmp);
 	}
 
 	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
@@ -1973,7 +1979,7 @@ static void skl_ddi_set_iboost(struct intel_encoder *encoder,
 
 	/* Make sure that the requested I_boost is valid */
 	if (iboost && iboost != 0x1 && iboost != 0x3 && iboost != 0x7) {
-		DRM_ERROR("Invalid I_boost value %u\n", iboost);
+		drm_err(&dev_priv->drm, "Invalid I_boost value %u\n", iboost);
 		return;
 	}
 
@@ -2232,7 +2238,9 @@ static void icl_ddi_combo_vswing_program(struct drm_i915_private *dev_priv,
 		return;
 
 	if (level >= n_entries) {
-		DRM_DEBUG_KMS("DDI translation not found for level %d. Using %d instead.", level, n_entries - 1);
+		drm_dbg_kms(&dev_priv->drm,
+			    "DDI translation not found for level %d. Using %d instead.",
+			    level, n_entries - 1);
 		level = n_entries - 1;
 	}
 
@@ -2358,8 +2366,9 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 	ddi_translations = icl_mg_phy_ddi_translations;
 	/* The table does not have values for level 3 and level 9. */
 	if (level >= n_entries || level == 3 || level == 9) {
-		DRM_DEBUG_KMS("DDI translation not found for level %d. Using %d instead.",
-			      level, n_entries - 2);
+		drm_dbg_kms(&dev_priv->drm,
+			    "DDI translation not found for level %d. Using %d instead.",
+			    level, n_entries - 2);
 		level = n_entries - 2;
 	}
 
@@ -2693,8 +2702,9 @@ static void icl_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
 		if (drm_WARN_ON(&dev_priv->drm, ddi_clk_needed))
 			continue;
 
-		DRM_NOTE("PHY %c is disabled/in DSI mode with an ungated DDI clock, gate it\n",
-			 phy_name(phy));
+		drm_notice(&dev_priv->drm,
+			   "PHY %c is disabled/in DSI mode with an ungated DDI clock, gate it\n",
+			   phy_name(phy));
 		val |= icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
 		intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
 	}
@@ -2931,11 +2941,14 @@ icl_program_mg_dp_mode(struct intel_digital_port *intel_dig_port,
 static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
 					const struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
 	if (!crtc_state->fec_enable)
 		return;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_CONFIGURATION, DP_FEC_READY) <= 0)
-		DRM_DEBUG_KMS("Failed to set FEC_READY in the sink\n");
+		drm_dbg_kms(&i915->drm,
+			    "Failed to set FEC_READY in the sink\n");
 }
 
 static void intel_ddi_enable_fec(struct intel_encoder *encoder,
@@ -2955,7 +2968,8 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
 
 	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
 				  DP_TP_STATUS_FEC_ENABLE_LIVE, 1))
-		DRM_ERROR("Timed out waiting for FEC Enable Status\n");
+		drm_err(&dev_priv->drm,
+			"Timed out waiting for FEC Enable Status\n");
 }
 
 static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,
@@ -3413,8 +3427,9 @@ static void icl_disable_transcoder_port_sync(const struct intel_crtc_state *old_
 	if (old_crtc_state->master_transcoder == INVALID_TRANSCODER)
 		return;
 
-	DRM_DEBUG_KMS("Disabling Transcoder Port Sync on Slave Transcoder %s\n",
-		      transcoder_name(old_crtc_state->cpu_transcoder));
+	drm_dbg_kms(&dev_priv->drm,
+		    "Disabling Transcoder Port Sync on Slave Transcoder %s\n",
+		    transcoder_name(old_crtc_state->cpu_transcoder));
 
 	intel_de_write(dev_priv,
 		       TRANS_DDI_FUNC_CTL2(old_crtc_state->cpu_transcoder), 0);
@@ -3565,9 +3580,9 @@ static void intel_enable_ddi_hdmi(struct intel_encoder *encoder,
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
 					       crtc_state->hdmi_high_tmds_clock_ratio,
 					       crtc_state->hdmi_scrambling))
-		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] Failed to configure sink "
-			      "scrambling/TMDS bit clock ratio\n",
-			       connector->base.id, connector->name);
+		drm_dbg_kms(&dev_priv->drm,
+			    "[CONNECTOR:%d:%s] Failed to configure sink scrambling/TMDS bit clock ratio\n",
+			    connector->base.id, connector->name);
 
 	/* Display WA #1143: skl,kbl,cfl */
 	if (IS_GEN9_BC(dev_priv)) {
@@ -3662,6 +3677,7 @@ static void intel_disable_ddi_hdmi(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *old_crtc_state,
 				   const struct drm_connector_state *old_conn_state)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = old_conn_state->connector;
 
 	if (old_crtc_state->has_audio)
@@ -3670,8 +3686,9 @@ static void intel_disable_ddi_hdmi(struct intel_encoder *encoder,
 
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
 					       false, false))
-		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] Failed to reset sink scrambling/TMDS bit clock ratio\n",
-			      connector->base.id, connector->name);
+		drm_dbg_kms(&i915->drm,
+			    "[CONNECTOR:%d:%s] Failed to reset sink scrambling/TMDS bit clock ratio\n",
+			    connector->base.id, connector->name);
 }
 
 static void intel_disable_ddi(struct intel_encoder *encoder,
@@ -3922,9 +3939,10 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
 			pipe_config->fec_enable =
 				intel_de_read(dev_priv, dp_tp_ctl) & DP_TP_CTL_FEC_ENABLE;
 
-			DRM_DEBUG_KMS("[ENCODER:%d:%s] Fec status: %u\n",
-				      encoder->base.base.id, encoder->base.name,
-				      pipe_config->fec_enable);
+			drm_dbg_kms(&dev_priv->drm,
+				    "[ENCODER:%d:%s] Fec status: %u\n",
+				    encoder->base.base.id, encoder->base.name,
+				    pipe_config->fec_enable);
 		}
 
 		break;
@@ -3961,8 +3979,9 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
 		 * up by the BIOS, and thus we can't get the mode at module
 		 * load.
 		 */
-		DRM_DEBUG_KMS("pipe has %d bpp for eDP panel, overriding BIOS-provided max %d bpp\n",
-			      pipe_config->pipe_bpp, dev_priv->vbt.edp.bpp);
+		drm_dbg_kms(&dev_priv->drm,
+			    "pipe has %d bpp for eDP panel, overriding BIOS-provided max %d bpp\n",
+			    pipe_config->pipe_bpp, dev_priv->vbt.edp.bpp);
 		dev_priv->vbt.edp.bpp = pipe_config->pipe_bpp;
 	}
 
@@ -4121,12 +4140,13 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 					 struct intel_crtc_state *crtc_state,
 					 struct drm_connector_state *conn_state)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
 	u8 port_sync_transcoders = 0;
 
-	DRM_DEBUG_KMS("[ENCODER:%d:%s] [CRTC:%d:%s]",
-		      encoder->base.base.id, encoder->base.name,
-		      crtc_state->uapi.crtc->base.id, crtc_state->uapi.crtc->name);
+	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] [CRTC:%d:%s]",
+		    encoder->base.base.id, encoder->base.name,
+		    crtc_state->uapi.crtc->base.id, crtc_state->uapi.crtc->name);
 
 	if (connector->has_tile)
 		port_sync_transcoders = intel_ddi_port_sync_transcoders(crtc_state,
@@ -4265,7 +4285,8 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 
 	ret = drm_scdc_readb(adapter, SCDC_TMDS_CONFIG, &config);
 	if (ret < 0) {
-		DRM_ERROR("Failed to read TMDS config: %d\n", ret);
+		drm_err(&dev_priv->drm, "Failed to read TMDS config: %d\n",
+			ret);
 		return 0;
 	}
 
@@ -4411,7 +4432,8 @@ intel_ddi_max_lanes(struct intel_digital_port *intel_dport)
 	 * so we use the proper lane count for our calculations.
 	 */
 	if (intel_ddi_a_force_4_lanes(intel_dport)) {
-		DRM_DEBUG_KMS("Forcing DDI_A_4_LANES for port A\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Forcing DDI_A_4_LANES for port A\n");
 		intel_dport->saved_port_bits |= DDI_A_4_LANES;
 		max_lanes = 4;
 	}
@@ -4439,12 +4461,14 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		init_dp = true;
 		init_lspcon = true;
 		init_hdmi = false;
-		DRM_DEBUG_KMS("VBT says port %c has lspcon\n", port_name(port));
+		drm_dbg_kms(&dev_priv->drm, "VBT says port %c has lspcon\n",
+			    port_name(port));
 	}
 
 	if (!init_dp && !init_hdmi) {
-		DRM_DEBUG_KMS("VBT says port %c is not DVI/HDMI/DP compatible, respect it\n",
-			      port_name(port));
+		drm_dbg_kms(&dev_priv->drm,
+			    "VBT says port %c is not DVI/HDMI/DP compatible, respect it\n",
+			    port_name(port));
 		return;
 	}
 
@@ -4523,14 +4547,16 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	if (init_lspcon) {
 		if (lspcon_init(intel_dig_port))
 			/* TODO: handle hdmi info frame part */
-			DRM_DEBUG_KMS("LSPCON init success on port %c\n",
-				port_name(port));
+			drm_dbg_kms(&dev_priv->drm,
+				    "LSPCON init success on port %c\n",
+				    port_name(port));
 		else
 			/*
 			 * LSPCON init faied, but DP init was success, so
 			 * lets try to drive as DP++ port.
 			 */
-			DRM_ERROR("LSPCON init failed on port %c\n",
+			drm_err(&dev_priv->drm,
+				"LSPCON init failed on port %c\n",
 				port_name(port));
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
