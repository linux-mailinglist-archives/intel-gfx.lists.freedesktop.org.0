Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D41B9D3AE2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:44:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDCCA10E749;
	Wed, 20 Nov 2024 12:44:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I5MfvxSO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EDE610E74B;
 Wed, 20 Nov 2024 12:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732106647; x=1763642647;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dChDp0QLvRGBlsZFCDstZEAaHxvo0jna/7CxAdsK6ew=;
 b=I5MfvxSOxw7slYTHPA8bkBMI7/0b0PDZyN+ZMs3ruw0DOWE+/6/tY0Gl
 7V7UwvVsgeiWn8NLfKQv01MgDMiyfOSXptjGD5XnTM265tXBpHCu3/NoM
 8K2TLp68ktSN/Vp8f0IqeWoVpZIEE5HzhT9M1VqewR0qtEaAdMlo8Q2ka
 xpd2waB+X8/tDo/2Q1CX2k/1boDlg669BsEystxjUIYnNinU9OlUL571s
 ouH2obGrbZ1yfFgjW7ftBqYQAQlgW9SWCpbo5J/377WZRJoHdj3ofuioK
 4mfDKcpS4NAV2t2sd3n0WMcCIqa0UGDdnfIEZZO3i3PZpG6rMXd/Ypbdp w==;
X-CSE-ConnectionGUID: G22QPDRiTviWgJazyXQR4Q==
X-CSE-MsgGUID: /JsO1XGJQ86dHBf4Nw5EHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="35018063"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="35018063"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:44:07 -0800
X-CSE-ConnectionGUID: /cX6OkbXR4mm9iLubJhxOQ==
X-CSE-MsgGUID: b0Rs7YmDTq22tRBpoq6SIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="90295532"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:44:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [CI 09/11] drm/i915/ddi: split up intel_ddi_read_func_ctl() by output
 type
Date: Wed, 20 Nov 2024 14:43:17 +0200
Message-Id: <2621df6e6b0b7ac75159cfb112755c35b30ce906.1732106557.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732106557.git.jani.nikula@intel.com>
References: <cover.1732106557.git.jani.nikula@intel.com>
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

The function has become quite long, and the switch-case statement quite
complex with the fallthrougs. Simplify by splitting to individual
functions and an if-ladder.

This highlights how TRANS_DDI_MODE_SELECT_FDI_OR_128B132B works on
different platforms.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 210 +++++++++++++----------
 1 file changed, 123 insertions(+), 87 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f8edb604d462..607c983f07ef 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3908,15 +3908,122 @@ static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
 		    crtc_state->sync_mode_slaves_mask);
 }
 
+static void intel_ddi_read_func_ctl_dvi(struct intel_encoder *encoder,
+					struct intel_crtc_state *crtc_state,
+					u32 ddi_func_ctl)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	crtc_state->output_types |= BIT(INTEL_OUTPUT_HDMI);
+	if (DISPLAY_VER(display) >= 14)
+		crtc_state->lane_count =
+			((ddi_func_ctl & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
+	else
+		crtc_state->lane_count = 4;
+}
+
+static void intel_ddi_read_func_ctl_hdmi(struct intel_encoder *encoder,
+					 struct intel_crtc_state *crtc_state,
+					 u32 ddi_func_ctl)
+{
+	crtc_state->has_hdmi_sink = true;
+
+	crtc_state->infoframes.enable |=
+		intel_hdmi_infoframes_enabled(encoder, crtc_state);
+
+	if (crtc_state->infoframes.enable)
+		crtc_state->has_infoframe = true;
+
+	if (ddi_func_ctl & TRANS_DDI_HDMI_SCRAMBLING)
+		crtc_state->hdmi_scrambling = true;
+	if (ddi_func_ctl & TRANS_DDI_HIGH_TMDS_CHAR_RATE)
+		crtc_state->hdmi_high_tmds_clock_ratio = true;
+
+	intel_ddi_read_func_ctl_dvi(encoder, crtc_state, ddi_func_ctl);
+}
+
+static void intel_ddi_read_func_ctl_fdi(struct intel_encoder *encoder,
+					struct intel_crtc_state *crtc_state,
+					u32 ddi_func_ctl)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	crtc_state->output_types |= BIT(INTEL_OUTPUT_ANALOG);
+	crtc_state->enhanced_framing =
+		intel_de_read(display, dp_tp_ctl_reg(encoder, crtc_state)) &
+		DP_TP_CTL_ENHANCED_FRAME_ENABLE;
+}
+
+static void intel_ddi_read_func_ctl_dp_sst(struct intel_encoder *encoder,
+					   struct intel_crtc_state *crtc_state,
+					   u32 ddi_func_ctl)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (encoder->type == INTEL_OUTPUT_EDP)
+		crtc_state->output_types |= BIT(INTEL_OUTPUT_EDP);
+	else
+		crtc_state->output_types |= BIT(INTEL_OUTPUT_DP);
+	crtc_state->lane_count =
+		((ddi_func_ctl & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
+
+	intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder, &crtc_state->dp_m_n);
+	intel_cpu_transcoder_get_m2_n2(crtc, cpu_transcoder, &crtc_state->dp_m2_n2);
+
+	crtc_state->enhanced_framing =
+		intel_de_read(display, dp_tp_ctl_reg(encoder, crtc_state)) &
+		DP_TP_CTL_ENHANCED_FRAME_ENABLE;
+
+	if (DISPLAY_VER(display) >= 11)
+		crtc_state->fec_enable =
+			intel_de_read(display,
+				      dp_tp_ctl_reg(encoder, crtc_state)) & DP_TP_CTL_FEC_ENABLE;
+
+	if (dig_port->lspcon.active && intel_dp_has_hdmi_sink(&dig_port->dp))
+		crtc_state->infoframes.enable |=
+			intel_lspcon_infoframes_enabled(encoder, crtc_state);
+	else
+		crtc_state->infoframes.enable |=
+			intel_hdmi_infoframes_enabled(encoder, crtc_state);
+}
+
+static void intel_ddi_read_func_ctl_dp_mst(struct intel_encoder *encoder,
+					   struct intel_crtc_state *crtc_state,
+					   u32 ddi_func_ctl)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	crtc_state->output_types |= BIT(INTEL_OUTPUT_DP_MST);
+	crtc_state->lane_count =
+		((ddi_func_ctl & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
+
+	if (DISPLAY_VER(display) >= 12)
+		crtc_state->mst_master_transcoder =
+			REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, ddi_func_ctl);
+
+	intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder, &crtc_state->dp_m_n);
+
+	if (DISPLAY_VER(display) >= 11)
+		crtc_state->fec_enable =
+			intel_de_read(display,
+				      dp_tp_ctl_reg(encoder, crtc_state)) & DP_TP_CTL_FEC_ENABLE;
+
+	crtc_state->infoframes.enable |=
+		intel_hdmi_infoframes_enabled(encoder, crtc_state);
+}
+
 static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
-	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	u32 ddi_func_ctl, flags = 0;
+	u32 ddi_func_ctl, ddi_mode, flags = 0;
 
 	ddi_func_ctl = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
 	if (ddi_func_ctl & TRANS_DDI_PHSYNC)
@@ -3947,90 +4054,19 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		break;
 	}
 
-	switch (ddi_func_ctl & TRANS_DDI_MODE_SELECT_MASK) {
-	case TRANS_DDI_MODE_SELECT_HDMI:
-		pipe_config->has_hdmi_sink = true;
-
-		pipe_config->infoframes.enable |=
-			intel_hdmi_infoframes_enabled(encoder, pipe_config);
-
-		if (pipe_config->infoframes.enable)
-			pipe_config->has_infoframe = true;
-
-		if (ddi_func_ctl & TRANS_DDI_HDMI_SCRAMBLING)
-			pipe_config->hdmi_scrambling = true;
-		if (ddi_func_ctl & TRANS_DDI_HIGH_TMDS_CHAR_RATE)
-			pipe_config->hdmi_high_tmds_clock_ratio = true;
-		fallthrough;
-	case TRANS_DDI_MODE_SELECT_DVI:
-		pipe_config->output_types |= BIT(INTEL_OUTPUT_HDMI);
-		if (DISPLAY_VER(dev_priv) >= 14)
-			pipe_config->lane_count =
-				((ddi_func_ctl & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
-		else
-			pipe_config->lane_count = 4;
-		break;
-	case TRANS_DDI_MODE_SELECT_DP_SST:
-		if (encoder->type == INTEL_OUTPUT_EDP)
-			pipe_config->output_types |= BIT(INTEL_OUTPUT_EDP);
-		else
-			pipe_config->output_types |= BIT(INTEL_OUTPUT_DP);
-		pipe_config->lane_count =
-			((ddi_func_ctl & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
-
-		intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder,
-					       &pipe_config->dp_m_n);
-		intel_cpu_transcoder_get_m2_n2(crtc, cpu_transcoder,
-					       &pipe_config->dp_m2_n2);
-
-		pipe_config->enhanced_framing =
-			intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, pipe_config)) &
-			DP_TP_CTL_ENHANCED_FRAME_ENABLE;
-
-		if (DISPLAY_VER(dev_priv) >= 11)
-			pipe_config->fec_enable =
-				intel_de_read(dev_priv,
-					      dp_tp_ctl_reg(encoder, pipe_config)) & DP_TP_CTL_FEC_ENABLE;
-
-		if (dig_port->lspcon.active && intel_dp_has_hdmi_sink(&dig_port->dp))
-			pipe_config->infoframes.enable |=
-				intel_lspcon_infoframes_enabled(encoder, pipe_config);
-		else
-			pipe_config->infoframes.enable |=
-				intel_hdmi_infoframes_enabled(encoder, pipe_config);
-		break;
-	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
-		if (!HAS_DP20(display)) {
-			/* FDI */
-			pipe_config->output_types |= BIT(INTEL_OUTPUT_ANALOG);
-			pipe_config->enhanced_framing =
-				intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, pipe_config)) &
-				DP_TP_CTL_ENHANCED_FRAME_ENABLE;
-			break;
-		}
-		fallthrough; /* 128b/132b */
-	case TRANS_DDI_MODE_SELECT_DP_MST:
-		pipe_config->output_types |= BIT(INTEL_OUTPUT_DP_MST);
-		pipe_config->lane_count =
-			((ddi_func_ctl & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
-
-		if (DISPLAY_VER(dev_priv) >= 12)
-			pipe_config->mst_master_transcoder =
-				REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, ddi_func_ctl);
-
-		intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder,
-					       &pipe_config->dp_m_n);
-
-		if (DISPLAY_VER(dev_priv) >= 11)
-			pipe_config->fec_enable =
-				intel_de_read(dev_priv,
-					      dp_tp_ctl_reg(encoder, pipe_config)) & DP_TP_CTL_FEC_ENABLE;
-
-		pipe_config->infoframes.enable |=
-			intel_hdmi_infoframes_enabled(encoder, pipe_config);
-		break;
-	default:
-		break;
+	ddi_mode = ddi_func_ctl & TRANS_DDI_MODE_SELECT_MASK;
+
+	if (ddi_mode == TRANS_DDI_MODE_SELECT_HDMI) {
+		intel_ddi_read_func_ctl_hdmi(encoder, pipe_config, ddi_func_ctl);
+	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DVI) {
+		intel_ddi_read_func_ctl_dvi(encoder, pipe_config, ddi_func_ctl);
+	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && !HAS_DP20(display)) {
+		intel_ddi_read_func_ctl_fdi(encoder, pipe_config, ddi_func_ctl);
+	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_SST) {
+		intel_ddi_read_func_ctl_dp_sst(encoder, pipe_config, ddi_func_ctl);
+	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST ||
+		   (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display))) {
+		intel_ddi_read_func_ctl_dp_mst(encoder, pipe_config, ddi_func_ctl);
 	}
 }
 
-- 
2.39.5

