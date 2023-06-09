Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 579DF72A16A
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 19:41:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD04110E165;
	Fri,  9 Jun 2023 17:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94FF10E157
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 17:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686332473; x=1717868473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ls/t3DlSl4WOxz8bmiYdkSMNQYCIfo+jfbES0ifZ4m4=;
 b=XHQetlyftwEEMXqg1hyGTyXVEFouTo9oS+KPS2faA24kYmjF96l7zuaW
 VM/c1bbtXQ6obl8BGrYLG6i+nKM+96p5Pjn2I2iiWtB39afAJAcTHADtm
 VqIhx7kK6yhPiUg44QOYOLLUSIzh/JFF5jcvsreRVJZMBB/7Y3vwroPGP
 lnOw0AeMl1uIWTNWQkK8LeIv2B1Ph+0HKRRE4QpZFUsAH7iiwVXNPm9Rm
 c0Lps9dpcmx3uW9SQ1FxSIcsAg9glsVFJN8TWEdcs4u3aBBExmt7yA5Ae
 ElVpBKq6tMmO8p+dPTzuoPbD8s9E6KbYH7kIiUOrv8mgfC1KPm3OLGEh+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="337289205"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="337289205"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 10:41:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="780394464"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="780394464"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga004.fm.intel.com with ESMTP; 09 Jun 2023 10:41:11 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 23:12:10 +0530
Message-Id: <20230609174212.1946930-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/3] drm/i915/hdmi: Optimize source audio
 parameter handling
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

To enhance the relationship between the has_audio and the source
audio parameter, create a separate crtc_state audio property and
add the has_audio parameter into it. Additionally, update the
access of the has_audio parameter from the crtc_state pointer as
it is wrapped under the audio. These modifications establish
a more cohesive structure and improve the accessibility and
organization of the audio-related parameters within the codebase.

--v1:
- add audio instead of audio_config in crtc_state
- add only has_audio then update related parameter access
- refactor other member to different commit where it is being used
- update commit message and header

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c            |  4 ++--
 drivers/gpu/drm/i915/display/g4x_hdmi.c          | 16 ++++++++--------
 drivers/gpu/drm/i915/display/intel_audio.c       |  6 +++---
 drivers/gpu/drm/i915/display/intel_cdclk.c       |  6 +++---
 .../gpu/drm/i915/display/intel_crtc_state_dump.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_ddi.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c     |  4 ++--
 .../gpu/drm/i915/display/intel_display_types.h   |  6 +++---
 drivers/gpu/drm/i915/display/intel_dp.c          |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c        | 10 +++++-----
 12 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 112d91d81fdc..19f94f3331ee 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -345,7 +345,7 @@ static void intel_dp_get_config(struct intel_encoder *encoder,
 
 	tmp = intel_de_read(dev_priv, intel_dp->output_reg);
 
-	pipe_config->has_audio = tmp & DP_AUDIO_OUTPUT_ENABLE && port != PORT_A;
+	pipe_config->audio.has_audio = tmp & DP_AUDIO_OUTPUT_ENABLE && port != PORT_A;
 
 	if (HAS_PCH_CPT(dev_priv) && port != PORT_A) {
 		u32 trans_dp = intel_de_read(dev_priv,
@@ -625,7 +625,7 @@ static void intel_dp_enable_port(struct intel_dp *intel_dp,
 	 * fail when the power sequencer is freshly used for this port.
 	 */
 	intel_dp->DP |= DP_PORT_EN;
-	if (crtc_state->has_audio)
+	if (crtc_state->audio.has_audio)
 		intel_dp->DP |= DP_AUDIO_OUTPUT_ENABLE;
 
 	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 5c187e6e0472..363e21156304 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -178,7 +178,7 @@ static void intel_hdmi_get_config(struct intel_encoder *encoder,
 		pipe_config->has_infoframe = true;
 
 	if (tmp & HDMI_AUDIO_ENABLE)
-		pipe_config->has_audio = true;
+		pipe_config->audio.has_audio = true;
 
 	if (!HAS_PCH_SPLIT(dev_priv) &&
 	    tmp & HDMI_COLOR_RANGE_16_235)
@@ -224,7 +224,7 @@ static void g4x_hdmi_enable_port(struct intel_encoder *encoder,
 	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	temp |= SDVO_ENABLE;
-	if (pipe_config->has_audio)
+	if (pipe_config->audio.has_audio)
 		temp |= HDMI_AUDIO_ENABLE;
 
 	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
@@ -240,7 +240,7 @@ static void g4x_enable_hdmi(struct intel_atomic_state *state,
 
 	g4x_hdmi_enable_port(encoder, pipe_config);
 
-	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
+	drm_WARN_ON(&dev_priv->drm, pipe_config->audio.has_audio &&
 		    !pipe_config->has_hdmi_sink);
 	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 }
@@ -258,7 +258,7 @@ static void ibx_enable_hdmi(struct intel_atomic_state *state,
 	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	temp |= SDVO_ENABLE;
-	if (pipe_config->has_audio)
+	if (pipe_config->audio.has_audio)
 		temp |= HDMI_AUDIO_ENABLE;
 
 	/*
@@ -293,7 +293,7 @@ static void ibx_enable_hdmi(struct intel_atomic_state *state,
 		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 	}
 
-	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
+	drm_WARN_ON(&dev_priv->drm, pipe_config->audio.has_audio &&
 		    !pipe_config->has_hdmi_sink);
 	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 }
@@ -313,7 +313,7 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
 	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	temp |= SDVO_ENABLE;
-	if (pipe_config->has_audio)
+	if (pipe_config->audio.has_audio)
 		temp |= HDMI_AUDIO_ENABLE;
 
 	/*
@@ -348,7 +348,7 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
 			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
 	}
 
-	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
+	drm_WARN_ON(&dev_priv->drm, pipe_config->audio.has_audio &&
 		    !pipe_config->has_hdmi_sink);
 	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 }
@@ -360,7 +360,7 @@ static void vlv_enable_hdmi(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
+	drm_WARN_ON(&dev_priv->drm, pipe_config->audio.has_audio &&
 		    !pipe_config->has_hdmi_sink);
 	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 3d9c9b4f27f8..e20ffc8e9654 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -815,7 +815,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	struct intel_audio_state *audio_state;
 	enum port port = encoder->port;
 
-	if (!crtc_state->has_audio)
+	if (!crtc_state->audio.has_audio)
 		return;
 
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio codec on [CRTC:%d:%s], %u bytes ELD\n",
@@ -874,7 +874,7 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 	struct intel_audio_state *audio_state;
 	enum port port = encoder->port;
 
-	if (!old_crtc_state->has_audio)
+	if (!old_crtc_state->audio.has_audio)
 		return;
 
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable audio codec on [CRTC:%d:%s]\n",
@@ -930,7 +930,7 @@ void intel_audio_codec_get_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
-	if (!crtc_state->has_audio)
+	if (!crtc_state->audio.has_audio)
 		return;
 
 	if (i915->display.funcs.audio)
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 4207863b7b2a..cb87c2e0cdaa 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2553,7 +2553,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * restriction for GLK is 316.8 MHz.
 	 */
 	if (intel_crtc_has_dp_encoder(crtc_state) &&
-	    crtc_state->has_audio &&
+	    crtc_state->audio.has_audio &&
 	    crtc_state->port_clock >= 540000 &&
 	    crtc_state->lane_count == 4) {
 		if (DISPLAY_VER(dev_priv) == 10) {
@@ -2569,7 +2569,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * According to BSpec, "The CD clock frequency must be at least twice
 	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
 	 */
-	if (crtc_state->has_audio && DISPLAY_VER(dev_priv) >= 9)
+	if (crtc_state->audio.has_audio && DISPLAY_VER(dev_priv) >= 9)
 		min_cdclk = max(2 * 96000, min_cdclk);
 
 	/*
@@ -2580,7 +2580,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 *  162                    | 200 or higher"
 	 */
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-	    intel_crtc_has_dp_encoder(crtc_state) && crtc_state->has_audio)
+	    intel_crtc_has_dp_encoder(crtc_state) && crtc_state->audio.has_audio)
 		min_cdclk = max(crtc_state->port_clock, min_cdclk);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 8d4640d0fd34..b7d1be42bf0f 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -265,7 +265,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
 	drm_dbg_kms(&i915->drm,
 		    "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
-		    pipe_config->has_audio, pipe_config->has_infoframe,
+		    pipe_config->audio.has_audio, pipe_config->has_infoframe,
 		    pipe_config->infoframes.enable);
 
 	if (pipe_config->infoframes.enable &
@@ -291,7 +291,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
 		intel_dump_dp_vsc_sdp(i915, &pipe_config->infoframes.vsc);
 
-	if (pipe_config->has_audio)
+	if (pipe_config->audio.has_audio)
 		intel_dump_buffer(i915, "ELD: ", pipe_config->eld,
 				  drm_eld_size(pipe_config->eld));
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 090f242e610c..dcef5fc6d3bf 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3782,7 +3782,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 
 	intel_ddi_mso_get_config(encoder, pipe_config);
 
-	pipe_config->has_audio =
+	pipe_config->audio.has_audio =
 		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
 
 	if (encoder->type == INTEL_OUTPUT_EDP)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5c7fdc82ac22..59f66493c741 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1857,7 +1857,7 @@ static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 		set_bit(intel_encoder->power_domain, mask->bits);
 	}
 
-	if (HAS_DDI(dev_priv) && crtc_state->has_audio)
+	if (HAS_DDI(dev_priv) && crtc_state->audio.has_audio)
 		set_bit(POWER_DOMAIN_AUDIO_MMIO, mask->bits);
 
 	if (crtc_state->shared_dpll)
@@ -5254,7 +5254,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(has_infoframe);
 	PIPE_CONF_CHECK_BOOL(fec_enable);
 
-	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
+	PIPE_CONF_CHECK_BOOL_INCOMPLETE(audio.has_audio);
 	PIPE_CONF_CHECK_BUFFER(eld, MAX_ELD_BYTES);
 
 	PIPE_CONF_CHECK_X(gmch_pfit.control);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 731f2ec04d5c..ebd147180a6e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1129,9 +1129,9 @@ struct intel_crtc_state {
 	/* Whether we should send NULL infoframes. Required for audio. */
 	bool has_hdmi_sink;
 
-	/* Audio enabled on this pipe. Only valid if either has_hdmi_sink or
-	 * has_dp_encoder is set. */
-	bool has_audio;
+	struct {
+		bool has_audio;
+	} audio;
 
 	/*
 	 * Enable dithering, used when the selected pipe bpp doesn't match the
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f4192fda1a76..626cc11c9f0e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2255,7 +2255,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
 		pipe_config->has_pch_encoder = true;
 
-	pipe_config->has_audio =
+	pipe_config->audio.has_audio =
 		intel_dp_has_audio(encoder, conn_state) &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e3f176a093d2..f6e1bf3d9e25 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -322,7 +322,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	pipe_config->has_audio =
+	pipe_config->audio.has_audio =
 		intel_dp_mst_has_audio(conn_state) &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 7ac5e6c5e00d..32157bef2eef 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2302,7 +2302,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
 		pipe_config->pixel_multiplier = 2;
 
-	pipe_config->has_audio =
+	pipe_config->audio.has_audio =
 		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 21f92123c844..ebadd6f7f2ad 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1191,7 +1191,7 @@ static void intel_sdvo_get_eld(struct intel_sdvo *intel_sdvo,
 	ssize_t len;
 	u8 val;
 
-	if (!crtc_state->has_audio)
+	if (!crtc_state->audio.has_audio)
 		return;
 
 	if (!intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_AUDIO_STAT, &val, 1))
@@ -1406,7 +1406,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo_connector, conn_state);
 
-	pipe_config->has_audio =
+	pipe_config->audio.has_audio =
 		intel_sdvo_has_audio(encoder, pipe_config, conn_state) &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
@@ -1760,7 +1760,7 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 	if (intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_AUDIO_STAT,
 				 &val, 1)) {
 		if (val & SDVO_AUDIO_PRESENCE_DETECT)
-			pipe_config->has_audio = true;
+			pipe_config->audio.has_audio = true;
 	}
 
 	if (intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_ENCODE,
@@ -1805,7 +1805,7 @@ static void intel_disable_sdvo(struct intel_atomic_state *state,
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	u32 temp;
 
-	if (old_crtc_state->has_audio)
+	if (old_crtc_state->audio.has_audio)
 		intel_sdvo_disable_audio(intel_sdvo);
 
 	intel_sdvo_set_active_outputs(intel_sdvo, 0);
@@ -1898,7 +1898,7 @@ static void intel_enable_sdvo(struct intel_atomic_state *state,
 						   DRM_MODE_DPMS_ON);
 	intel_sdvo_set_active_outputs(intel_sdvo, intel_sdvo->attached_output);
 
-	if (pipe_config->has_audio)
+	if (pipe_config->audio.has_audio)
 		intel_sdvo_enable_audio(intel_sdvo, pipe_config, conn_state);
 }
 
-- 
2.25.1

