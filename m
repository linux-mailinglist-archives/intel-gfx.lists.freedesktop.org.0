Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACB29C110A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:37:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D06B210E8F1;
	Thu,  7 Nov 2024 21:37:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EvyAdwRJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E37D410E8EF;
 Thu,  7 Nov 2024 21:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015442; x=1762551442;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5K5i1x8JmyHkVJLwOGfoVzDNTJHgsirtxJWva1Pn2Cw=;
 b=EvyAdwRJN6LnxD5oERB/1BSxU8dwb1iz4xgaZEUww0xbABMCTCqH6M57
 H/95zI7tgV8z63xJHwT15jId9neLP1PLMYekUTslElGA2qtwmkM9KOs3Q
 wWlxWYw40TEYR+6/cI2BzSbRkFpTmwPHusphJE/qGMIqNxjIXDRDL1Syr
 SZwPUAb0X908TubZL4QEKe9Je6qH6BQMxCqqL6JVtaRuopKKWrmsF6wYn
 rvj+oKMtfBBuGMRi3P9I4yFMJuGVcwAMRWkuMHL/Xmfx4cg+Ih8XYcq1M
 C1xHsknyfVaWfAcYxNW+pjNdcqbwJy80eBFrH5ktGdZumGT57rhh34C7C w==;
X-CSE-ConnectionGUID: 8rGAFxfNQQOuL9dbVHJQ3w==
X-CSE-MsgGUID: mVSTljLHROeIPrwkyGtC8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41504445"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="41504445"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:22 -0800
X-CSE-ConnectionGUID: s21OMZGPRXW8Zqm5u1Q/fQ==
X-CSE-MsgGUID: 7x10J6wpS1a3R9/Vpyr3kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85171133"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 05/15] drm/i915/display: convert HAS_DP20() to struct
 intel_display
Date: Thu,  7 Nov 2024 23:36:39 +0200
Message-Id: <f59c0ab543904062ff7c1176ecca1258cc3fa8c2.1731015334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731015333.git.jani.nikula@intel.com>
References: <cover.1731015333.git.jani.nikula@intel.com>
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
index 81ec9bd38b78..e9c27ba709c5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -152,7 +152,7 @@ struct intel_display_platforms {
 #define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
 #define HAS_DOUBLE_WIDE(i915)		(DISPLAY_VER(i915) < 4)
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

