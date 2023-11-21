Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAAD7F2575
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 06:43:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 782BE10E26C;
	Tue, 21 Nov 2023 05:43:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1095A10E27B
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700545434; x=1732081434;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=USS5OBcasLur4UDRs9ExxD8n51BL3/HeF1sQ3V8Ye4k=;
 b=j6C2zAzS3b63vFq7MuU0FZrvJ6t/nHKbs5Y6/hF7iqt3P6ObHRA+FDWK
 KBtN6CgJbI5lZ8KHxCgLs7AGhkCqlEiOAdEXHPOi9gEr78dN+suJYi+UB
 27PJNt+NZEGoaU5gHtHvKU4enqJIqW27M3tqecOX8LdyLdNlHybdoF2co
 XgYF3j+wigRkAT45CQm23NWiF+7hTuGdQ8zhG0NFs5YMv55IhgjOo8ZwG
 sCQtFzGM2kJfsffiAewH8HLGSI8pV60JCtm1BFIWv+xa4BLs0dLeACiYr
 DBpOQJG4QQNPjrWTuSsqNtSFoOPAIAqC+/kg3/oqJO5dppVYFZ43FcjCj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="394611851"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="394611851"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 21:43:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="760002169"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="760002169"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 20 Nov 2023 21:43:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Nov 2023 07:43:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 07:43:21 +0200
Message-ID: <20231121054324.9988-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
References: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/11] drm/i915: Convert audio enable/disable
 into encoder vfuncs
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add encoder vfuncs for audio enable/disable. This will allow
audio to be enabled/disabled during fastsets. An encoder hook
is necessary as on pre-hsw platforms different encoder types
implement audio in different ways.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  8 ++++---
 drivers/gpu/drm/i915/display/g4x_hdmi.c       | 14 ++++++-----
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +++--
 .../drm/i915/display/intel_display_types.h    |  6 +++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  6 +++--
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 23 ++++++++++++++-----
 6 files changed, 44 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 266cb594d793..96232af42db2 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -516,7 +516,7 @@ static void intel_disable_dp(struct intel_atomic_state *state,
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-	g4x_dp_audio_disable(encoder, old_crtc_state, old_conn_state);
+	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
 
 	intel_dp->link_trained = false;
 
@@ -719,7 +719,7 @@ static void g4x_enable_dp(struct intel_atomic_state *state,
 {
 	intel_enable_dp(state, encoder, pipe_config, conn_state);
 	intel_edp_backlight_on(pipe_config, conn_state);
-	g4x_dp_audio_enable(encoder, pipe_config, conn_state);
+	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void vlv_enable_dp(struct intel_atomic_state *state,
@@ -728,7 +728,7 @@ static void vlv_enable_dp(struct intel_atomic_state *state,
 			  const struct drm_connector_state *conn_state)
 {
 	intel_edp_backlight_on(pipe_config, conn_state);
-	g4x_dp_audio_enable(encoder, pipe_config, conn_state);
+	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void g4x_pre_enable_dp(struct intel_atomic_state *state,
@@ -1357,6 +1357,8 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 		intel_encoder->disable = g4x_disable_dp;
 		intel_encoder->post_disable = g4x_post_disable_dp;
 	}
+	intel_encoder->audio_enable = g4x_dp_audio_enable;
+	intel_encoder->audio_disable = g4x_dp_audio_disable;
 
 	if ((IS_IVYBRIDGE(dev_priv) && port == PORT_A) ||
 	    (HAS_PCH_CPT(dev_priv) && port != PORT_A))
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index beda6b480bf1..26a0981102ff 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -274,7 +274,7 @@ static void g4x_enable_hdmi(struct intel_atomic_state *state,
 {
 	g4x_hdmi_enable_port(encoder, pipe_config);
 
-	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
+	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void ibx_enable_hdmi(struct intel_atomic_state *state,
@@ -323,7 +323,7 @@ static void ibx_enable_hdmi(struct intel_atomic_state *state,
 		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 	}
 
-	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
+	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void cpt_enable_hdmi(struct intel_atomic_state *state,
@@ -374,7 +374,7 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
 			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
 	}
 
-	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
+	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void vlv_enable_hdmi(struct intel_atomic_state *state,
@@ -382,7 +382,7 @@ static void vlv_enable_hdmi(struct intel_atomic_state *state,
 			    const struct intel_crtc_state *pipe_config,
 			    const struct drm_connector_state *conn_state)
 {
-	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
+	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void intel_disable_hdmi(struct intel_atomic_state *state,
@@ -449,7 +449,7 @@ static void g4x_disable_hdmi(struct intel_atomic_state *state,
 			     const struct intel_crtc_state *old_crtc_state,
 			     const struct drm_connector_state *old_conn_state)
 {
-	g4x_hdmi_audio_disable(encoder, old_crtc_state, old_conn_state);
+	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
 
 	intel_disable_hdmi(state, encoder, old_crtc_state, old_conn_state);
 }
@@ -459,7 +459,7 @@ static void pch_disable_hdmi(struct intel_atomic_state *state,
 			     const struct intel_crtc_state *old_crtc_state,
 			     const struct drm_connector_state *old_conn_state)
 {
-	g4x_hdmi_audio_disable(encoder, old_crtc_state, old_conn_state);
+	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
 }
 
 static void pch_post_disable_hdmi(struct intel_atomic_state *state,
@@ -766,6 +766,8 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 		else
 			intel_encoder->enable = g4x_enable_hdmi;
 	}
+	intel_encoder->audio_enable = g4x_hdmi_audio_enable;
+	intel_encoder->audio_disable = g4x_hdmi_audio_disable;
 	intel_encoder->shutdown = intel_hdmi_encoder_shutdown;
 
 	intel_encoder->type = INTEL_OUTPUT_HDMI;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ca7ca3951de7..06558fd8d1f1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3359,7 +3359,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 
-	intel_audio_codec_enable(encoder, crtc_state, conn_state);
+	encoder->audio_enable(encoder, crtc_state, conn_state);
 }
 
 static void intel_disable_ddi_dp(struct intel_atomic_state *state,
@@ -3403,7 +3403,7 @@ static void intel_disable_ddi(struct intel_atomic_state *state,
 			      const struct intel_crtc_state *old_crtc_state,
 			      const struct drm_connector_state *old_conn_state)
 {
-	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
+	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
 
 	intel_tc_port_link_cancel_reset_work(enc_to_dig_port(encoder));
 
@@ -4936,6 +4936,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 	encoder->post_pll_disable = intel_ddi_post_pll_disable;
 	encoder->post_disable = intel_ddi_post_disable;
 	encoder->update_pipe = intel_ddi_update_pipe;
+	encoder->audio_enable = intel_audio_codec_enable;
+	encoder->audio_disable = intel_audio_codec_disable;
 	encoder->get_hw_state = intel_ddi_get_hw_state;
 	encoder->sync_state = intel_ddi_sync_state;
 	encoder->initial_fastset_check = intel_ddi_initial_fastset_check;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9a44350ba05d..b3e942f2eeb0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -198,6 +198,12 @@ struct intel_encoder {
 			    struct intel_encoder *,
 			    const struct intel_crtc_state *,
 			    const struct drm_connector_state *);
+	void (*audio_enable)(struct intel_encoder *encoder,
+			     const struct intel_crtc_state *crtc_state,
+			     const struct drm_connector_state *conn_state);
+	void (*audio_disable)(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *old_crtc_state,
+			      const struct drm_connector_state *old_conn_state);
 	/* Read out the current hw state of this connector, returning true if
 	 * the encoder is active. If the encoder is enabled it also set the pipe
 	 * it is connected to in the pipe parameter. */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 820a04e8855a..70646ea28e15 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -895,7 +895,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	drm_dbg_kms(&i915->drm, "active links %d\n",
 		    intel_dp->active_mst_links);
 
-	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
+	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
 
 	intel_hdcp_disable(intel_mst->connector);
 
@@ -1143,7 +1143,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
 
-	intel_audio_codec_enable(encoder, pipe_config, conn_state);
+	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
@@ -1603,6 +1603,8 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
 	intel_encoder->pre_pll_enable = intel_mst_pre_pll_enable_dp;
 	intel_encoder->pre_enable = intel_mst_pre_enable_dp;
 	intel_encoder->enable = intel_mst_enable_dp;
+	intel_encoder->audio_enable = intel_audio_codec_enable;
+	intel_encoder->audio_disable = intel_audio_codec_disable;
 	intel_encoder->get_hw_state = intel_dp_mst_enc_get_hw_state;
 	intel_encoder->get_config = intel_dp_mst_enc_get_config;
 	intel_encoder->initial_fastset_check = intel_dp_mst_initial_fastset_check;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 3eac559043d7..bcb4959df70d 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1788,17 +1788,28 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 	intel_sdvo_get_eld(intel_sdvo, pipe_config);
 }
 
-static void intel_sdvo_disable_audio(struct intel_sdvo *intel_sdvo)
+static void intel_sdvo_disable_audio(struct intel_encoder *encoder,
+				     const struct intel_crtc_state *old_crtc_state,
+				     const struct drm_connector_state *old_conn_state)
 {
+	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
+
+	if (!old_crtc_state->has_audio)
+		return;
+
 	intel_sdvo_set_audio_state(intel_sdvo, 0);
 }
 
-static void intel_sdvo_enable_audio(struct intel_sdvo *intel_sdvo,
+static void intel_sdvo_enable_audio(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state,
 				    const struct drm_connector_state *conn_state)
 {
+	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 	const u8 *eld = crtc_state->eld;
 
+	if (!crtc_state->has_audio)
+		return;
+
 	intel_sdvo_set_audio_state(intel_sdvo, 0);
 
 	intel_sdvo_write_infoframe(intel_sdvo, SDVO_HBUF_INDEX_ELD,
@@ -1819,8 +1830,7 @@ static void intel_disable_sdvo(struct intel_atomic_state *state,
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	u32 temp;
 
-	if (old_crtc_state->has_audio)
-		intel_sdvo_disable_audio(intel_sdvo);
+	encoder->audio_disable(encoder, old_crtc_state, conn_state);
 
 	intel_sdvo_set_active_outputs(intel_sdvo, 0);
 	if (0)
@@ -1914,8 +1924,7 @@ static void intel_enable_sdvo(struct intel_atomic_state *state,
 						   DRM_MODE_DPMS_ON);
 	intel_sdvo_set_active_outputs(intel_sdvo, intel_sdvo_connector->output_flag);
 
-	if (pipe_config->has_audio)
-		intel_sdvo_enable_audio(intel_sdvo, pipe_config, conn_state);
+	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static enum drm_mode_status
@@ -3391,6 +3400,8 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	}
 	intel_encoder->pre_enable = intel_sdvo_pre_enable;
 	intel_encoder->enable = intel_enable_sdvo;
+	intel_encoder->audio_enable = intel_sdvo_enable_audio;
+	intel_encoder->audio_disable = intel_sdvo_disable_audio;
 	intel_encoder->get_hw_state = intel_sdvo_get_hw_state;
 	intel_encoder->get_config = intel_sdvo_get_config;
 
-- 
2.41.0

