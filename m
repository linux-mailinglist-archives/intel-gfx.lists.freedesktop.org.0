Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBCF9BBB9F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 18:20:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90B8B10E487;
	Mon,  4 Nov 2024 17:20:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gWs0EDuy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCE0910E487;
 Mon,  4 Nov 2024 17:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730740798; x=1762276798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KneZpFlEpbR7G98h52IN9YHTxiU0sdmVRFMz0BIv27I=;
 b=gWs0EDuyF1nu07iTqSq7PguPPct7ThqS7ePvZdYk/mLKMrEg2rvy3NAD
 ehNQrOgxwukiQhZgkV6iStR0+hCf90t/wnqyWKEhQIGr9jK/SRtb457xl
 9Rf6Cu7BT9v9usRUzNmRiLC72N08crBkpxodtIfymbySk6q+vHaexQTXW
 7ZraKOlJW2ZUOwkjPnK5r2UvPbS8X1FL8rUSDwrTdqc0idEDvapFyXXjP
 RuIxPhVfww/B1rvUA+jPHbxPALpQ1XMlMGsi3ZnN05F7qM45FR/zr6j5H
 tdW9op2AYph0Qq9fQAlvqQklfFTq9a2p4om5weyJY5Yim/ESnolwgfy5j A==;
X-CSE-ConnectionGUID: qVzDyCpYSgm6qI8o2yJqew==
X-CSE-MsgGUID: XlpPeMr2S7qXblyOl3Ka5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30563812"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="30563812"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:19:58 -0800
X-CSE-ConnectionGUID: lwikwXBhSSivLmgKK9MUtw==
X-CSE-MsgGUID: K/E19o7yR+q6PasmmxNx4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="88290046"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.33])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:19:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/15] drm/i915/display: convert HAS_DP20() to struct
 intel_display
Date: Mon,  4 Nov 2024 19:19:19 +0200
Message-Id: <b133e7ed50ae860e81916fd7a44947397e1df641.1730740629.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730740629.git.jani.nikula@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Convert HAS_DP20() to struct intel_display. Do minimal drive-by
conversions to struct intel_display in the callers while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    |  7 +++--
 drivers/gpu/drm/i915/display/intel_ddi.c      | 26 ++++++++++---------
 .../drm/i915/display/intel_display_device.h   |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  8 +++---
 4 files changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 32aa9ec1a204..4cc70da8f467 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -681,12 +681,11 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
 
 void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder trans = crtc_state->cpu_transcoder;
 
-	if (HAS_DP20(i915))
-		intel_de_rmw(i915, AUD_DP_2DOT0_CTRL(trans), AUD_ENABLE_SDP_SPLIT,
+	if (HAS_DP20(display))
+		intel_de_rmw(display, AUD_DP_2DOT0_CTRL(trans), AUD_ENABLE_SDP_SPLIT,
 			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 49b5cc01ce40..46b7b90d3d98 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -700,8 +700,8 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 
 bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 {
-	struct drm_device *dev = intel_connector->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(intel_connector);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder = intel_attached_encoder(intel_connector);
 	int type = intel_connector->base.connector_type;
 	enum port port = encoder->port;
@@ -747,7 +747,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 		break;
 
 	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
-		if (HAS_DP20(dev_priv))
+		if (HAS_DP20(display))
 			/* 128b/132b */
 			ret = false;
 		else
@@ -769,8 +769,8 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 					u8 *pipe_mask, bool *is_dp_mst)
 {
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(encoder);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum port port = encoder->port;
 	intel_wakeref_t wakeref;
 	enum pipe p;
@@ -840,7 +840,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 			continue;
 
 		if ((tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_DP_MST ||
-		    (HAS_DP20(dev_priv) &&
+		    (HAS_DP20(display) &&
 		     (tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B))
 			mst_pipe_mask |= BIT(p);
 
@@ -2653,6 +2653,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
@@ -2721,7 +2722,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 */
 	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
 
-	if (HAS_DP20(dev_priv))
+	if (HAS_DP20(display))
 		intel_ddi_config_transcoder_dp2(encoder, crtc_state);
 
 	/*
@@ -2862,9 +2863,9 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				    const struct intel_crtc_state *crtc_state,
 				    const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	if (HAS_DP20(dev_priv))
+	if (HAS_DP20(display))
 		intel_dp_128b132b_sdp_crc16(enc_to_intel_dp(encoder),
 					    crtc_state);
 
@@ -2872,9 +2873,9 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	if (crtc_state->has_panel_replay)
 		intel_psr_enable_sink(enc_to_intel_dp(encoder), crtc_state);
 
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		mtl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
-	else if (DISPLAY_VER(dev_priv) >= 12)
+	else if (DISPLAY_VER(display) >= 12)
 		tgl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
 	else
 		hsw_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
@@ -3871,6 +3872,7 @@ static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
 static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
@@ -3960,7 +3962,7 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 				intel_hdmi_infoframes_enabled(encoder, pipe_config);
 		break;
 	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
-		if (!HAS_DP20(dev_priv)) {
+		if (!HAS_DP20(display)) {
 			/* FDI */
 			pipe_config->output_types |= BIT(INTEL_OUTPUT_ANALOG);
 			pipe_config->enhanced_framing =
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index e11993a6f042..c861a61839b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -151,7 +151,7 @@ struct intel_display_platforms {
 #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
 #define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
 #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
-#define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
+#define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
 #define HAS_DPT(i915)			(DISPLAY_VER(i915) >= 13)
 #define HAS_DSB(i915)			(DISPLAY_INFO(i915)->has_dsb)
 #define HAS_DSC(__i915)			(DISPLAY_RUNTIME_INFO(__i915)->has_dsc)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a784c0b81556..74c2e3635d9e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3335,11 +3335,10 @@ void intel_psr_flush(struct intel_display *display,
 void intel_psr_init(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_connector *connector = intel_dp->attached_connector;
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
-	if (!(HAS_PSR(display) || HAS_DP20(dev_priv)))
+	if (!(HAS_PSR(display) || HAS_DP20(display)))
 		return;
 
 	/*
@@ -3357,7 +3356,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
 		return;
 	}
 
-	if ((HAS_DP20(dev_priv) && !intel_dp_is_edp(intel_dp)) ||
+	if ((HAS_DP20(display) && !intel_dp_is_edp(intel_dp)) ||
 	    DISPLAY_VER(display) >= 20)
 		intel_dp->psr.source_panel_replay_support = true;
 
@@ -3974,7 +3973,6 @@ DEFINE_SHOW_ATTRIBUTE(i915_psr_status);
 void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct dentry *root = connector->base.debugfs_entry;
 
 	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP &&
@@ -3984,7 +3982,7 @@ void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 	debugfs_create_file("i915_psr_sink_status", 0444, root,
 			    connector, &i915_psr_sink_status_fops);
 
-	if (HAS_PSR(display) || HAS_DP20(i915))
+	if (HAS_PSR(display) || HAS_DP20(display))
 		debugfs_create_file("i915_psr_status", 0444, root,
 				    connector, &i915_psr_status_fops);
 }
-- 
2.39.5

