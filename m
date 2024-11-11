Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD4E9C3C12
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 11:34:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4D6910E2FD;
	Mon, 11 Nov 2024 10:34:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kO1+Xh7k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0428310E165;
 Mon, 11 Nov 2024 10:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731321276; x=1762857276;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1gmwey1YGlOnbeKZjzc+aUaPkTNIJQRaOQWI0Pop8NE=;
 b=kO1+Xh7k+o/S7gn33uibEd13eumxMiVBAsbLJgfFVb8YuCVD9NYgZwoP
 sCPr4tU7M2IfD7zr4I8GtQYHWnoN54NuaoXvS8TfTgaQcmzsytZUkpEDf
 uL9pKBC8mRzsbo9AYV3RiSjUy1rWEOiDSHqmMqkrf1IsoAbjXvz+NOwI6
 /QOmNu5QErrqyfTzFdnomscEi/l0kdG2agnhvDH4fySkWBQjBiEY4bret
 X3RcP9IabJp37ksgMRwinJ4++Ejqx0LOCAVgrQbohAMY6B/cQ6+Ssf+Hp
 7wJ4AVSuM9XYoAPiaSQsZXASMCssmvaa8OEYemdnWjiU4knP9LuIfLHLU A==;
X-CSE-ConnectionGUID: Fpb11i1zSwu9Fafzj9yy9A==
X-CSE-MsgGUID: rVqeSYkbQMqVA30MXl2VZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="31344005"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="31344005"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:34:35 -0800
X-CSE-ConnectionGUID: mjJyVxyfRNC3gGLkL3wUhA==
X-CSE-MsgGUID: OgBrV4usTiaMozgnHUffHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="87196364"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:34:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v3 05/15] drm/i915/display: convert HAS_DP20() to struct
 intel_display
Date: Mon, 11 Nov 2024 12:33:54 +0200
Message-Id: <757d91d2a57052b11cbd9f4f40d836d9245ca926.1731321183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731321183.git.jani.nikula@intel.com>
References: <cover.1731321183.git.jani.nikula@intel.com>
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

v2: Rebase

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com> # v1
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    |  7 ++---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 28 +++++++++----------
 .../drm/i915/display/intel_display_device.h   |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  8 ++----
 4 files changed, 21 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 047cc5a2ef1f..c6b251f178c2 100644
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
index 769bd1f26db2..4c482a6cf1c7 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -459,17 +459,16 @@ intel_ddi_config_transcoder_dp2(const struct intel_crtc_state *crtc_state,
 				bool enable)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 val = 0;
 
-	if (!HAS_DP20(i915))
+	if (!HAS_DP20(display))
 		return;
 
 	if (enable && intel_dp_is_uhbr(crtc_state))
 		val = TRANS_DP2_128B132B_CHANNEL_CODING;
 
-	intel_de_write(i915, TRANS_DP2_CTL(cpu_transcoder), val);
+	intel_de_write(display, TRANS_DP2_CTL(cpu_transcoder), val);
 }
 
 /*
@@ -716,8 +715,8 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 
 bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 {
-	struct drm_device *dev = intel_connector->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(intel_connector);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder = intel_attached_encoder(intel_connector);
 	int type = intel_connector->base.connector_type;
 	enum port port = encoder->port;
@@ -763,7 +762,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 		break;
 
 	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
-		if (HAS_DP20(dev_priv))
+		if (HAS_DP20(display))
 			/* 128b/132b */
 			ret = false;
 		else
@@ -785,8 +784,8 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
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
@@ -856,7 +855,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 			continue;
 
 		if ((tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_DP_MST ||
-		    (HAS_DP20(dev_priv) &&
+		    (HAS_DP20(display) &&
 		     (tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B))
 			mst_pipe_mask |= BIT(p);
 
@@ -2871,9 +2870,9 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				    const struct intel_crtc_state *crtc_state,
 				    const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	if (HAS_DP20(dev_priv))
+	if (HAS_DP20(display))
 		intel_dp_128b132b_sdp_crc16(enc_to_intel_dp(encoder),
 					    crtc_state);
 
@@ -2881,9 +2880,9 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
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
@@ -3882,6 +3881,7 @@ static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
 static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
@@ -3971,7 +3971,7 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 				intel_hdmi_infoframes_enabled(encoder, pipe_config);
 		break;
 	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
-		if (!HAS_DP20(dev_priv)) {
+		if (!HAS_DP20(display)) {
 			/* FDI */
 			pipe_config->output_types |= BIT(INTEL_OUTPUT_ANALOG);
 			pipe_config->enhanced_framing =
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 78a93c7193e4..2eae10900d0d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -153,7 +153,7 @@ struct intel_display_platforms {
 #define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
 #define HAS_DOUBLE_WIDE(i915)		(DISPLAY_VER(i915) < 4)
 #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
-#define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
+#define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
 #define HAS_DPT(i915)			(DISPLAY_VER(i915) >= 13)
 #define HAS_DSB(i915)			(DISPLAY_INFO(i915)->has_dsb)
 #define HAS_DSC(__i915)			(DISPLAY_RUNTIME_INFO(__i915)->has_dsc)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ed5b4d110fba..74ac7494becf 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3334,11 +3334,10 @@ void intel_psr_flush(struct intel_display *display,
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
@@ -3356,7 +3355,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
 		return;
 	}
 
-	if ((HAS_DP20(dev_priv) && !intel_dp_is_edp(intel_dp)) ||
+	if ((HAS_DP20(display) && !intel_dp_is_edp(intel_dp)) ||
 	    DISPLAY_VER(display) >= 20)
 		intel_dp->psr.source_panel_replay_support = true;
 
@@ -3973,7 +3972,6 @@ DEFINE_SHOW_ATTRIBUTE(i915_psr_status);
 void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct dentry *root = connector->base.debugfs_entry;
 
 	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP &&
@@ -3983,7 +3981,7 @@ void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 	debugfs_create_file("i915_psr_sink_status", 0444, root,
 			    connector, &i915_psr_sink_status_fops);
 
-	if (HAS_PSR(display) || HAS_DP20(i915))
+	if (HAS_PSR(display) || HAS_DP20(display))
 		debugfs_create_file("i915_psr_status", 0444, root,
 				    connector, &i915_psr_status_fops);
 }
-- 
2.39.5

