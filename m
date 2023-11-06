Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7704F7E2EDD
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 22:19:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD8C410E433;
	Mon,  6 Nov 2023 21:19:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6602B10E434
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 21:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699305585; x=1730841585;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+27BPkk9vluz9QuiGKSTUuRJbR+SBYfnSOfHvtmZfRM=;
 b=dRpncX+aBrgpFqaWZ4G6apXiiMqWL7e5AqYV0LWARskB5pFU1LrQAxVI
 cTbbo9qgO/BvjSTH/EPl6OW9ZPK0qOMMnh2AJTMLncdZ22XB2tiReI/ox
 zdfe2FcpToVE7q2hQzXc2LtqJvio1BH0JsJiLkyWZUb/OGsC8Hz/iRb45
 c9qWu+BxhYyEtsprG6m/5m4xMeUFmzdvOkVzDVK33Fzn4W+17qtFUgCPm
 Itk+TXupMP7jroAotbhBT0oXubiT8eF8anazBcal7L6j1+MdQH56n1Eh6
 smxmU+Kl9A5XfAAZwuaGj0JVtzZOHr9Y7jI5lMlivUFV7LfkCYTDKi0Um g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="10911558"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="10911558"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 13:19:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="755964273"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="755964273"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2023 13:19:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Nov 2023 23:19:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 23:19:12 +0200
Message-ID: <20231106211915.13406-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/11] drm/i915: Convert audio enable/disable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add encoder vfuncs for audio enable/disable. This will enable
audio to be enable/disabe during fastsets. An encoder hook
is necessary as on pre-hsw platforms different encoder types
implement audio in different ways.

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
index 3c2360e2fa43..2e4920d70105 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3266,7 +3266,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 
-	intel_audio_codec_enable(encoder, crtc_state, conn_state);
+	encoder->audio_enable(encoder, crtc_state, conn_state);
 }
 
 static void intel_disable_ddi_dp(struct intel_atomic_state *state,
@@ -3308,7 +3308,7 @@ static void intel_disable_ddi(struct intel_atomic_state *state,
 			      const struct intel_crtc_state *old_crtc_state,
 			      const struct drm_connector_state *old_conn_state)
 {
-	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
+	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
 
 	intel_tc_port_link_cancel_reset_work(enc_to_dig_port(encoder));
 
@@ -4841,6 +4841,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 	encoder->post_pll_disable = intel_ddi_post_pll_disable;
 	encoder->post_disable = intel_ddi_post_disable;
 	encoder->update_pipe = intel_ddi_update_pipe;
+	encoder->audio_enable = intel_audio_codec_enable;
+	encoder->audio_disable = intel_audio_codec_disable;
 	encoder->get_hw_state = intel_ddi_get_hw_state;
 	encoder->sync_state = intel_ddi_sync_state;
 	encoder->initial_fastset_check = intel_ddi_initial_fastset_check;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 047fe3f8905a..5e62e8ae6326 100644
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
index 7747f23fa957..5f0ccab5ab1f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -608,7 +608,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	drm_dbg_kms(&i915->drm, "active links %d\n",
 		    intel_dp->active_mst_links);
 
-	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
+	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
 
 	intel_hdcp_disable(intel_mst->connector);
 }
@@ -846,7 +846,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
 
-	intel_audio_codec_enable(encoder, pipe_config, conn_state);
+	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
@@ -1267,6 +1267,8 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
 	intel_encoder->pre_pll_enable = intel_mst_pre_pll_enable_dp;
 	intel_encoder->pre_enable = intel_mst_pre_enable_dp;
 	intel_encoder->enable = intel_mst_enable_dp;
+	intel_encoder->audio_enable = intel_audio_codec_enable;
+	intel_encoder->audio_disable = intel_audio_codec_disable;
 	intel_encoder->get_hw_state = intel_dp_mst_enc_get_hw_state;
 	intel_encoder->get_config = intel_dp_mst_enc_get_config;
 	intel_encoder->initial_fastset_check = intel_dp_mst_initial_fastset_check;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index a636f42ceae5..c7af7e046188 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1787,17 +1787,28 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
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
@@ -1818,8 +1829,7 @@ static void intel_disable_sdvo(struct intel_atomic_state *state,
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	u32 temp;
 
-	if (old_crtc_state->has_audio)
-		intel_sdvo_disable_audio(intel_sdvo);
+	encoder->audio_disable(encoder, old_crtc_state, conn_state);
 
 	intel_sdvo_set_active_outputs(intel_sdvo, 0);
 	if (0)
@@ -1913,8 +1923,7 @@ static void intel_enable_sdvo(struct intel_atomic_state *state,
 						   DRM_MODE_DPMS_ON);
 	intel_sdvo_set_active_outputs(intel_sdvo, intel_sdvo_connector->output_flag);
 
-	if (pipe_config->has_audio)
-		intel_sdvo_enable_audio(intel_sdvo, pipe_config, conn_state);
+	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static enum drm_mode_status
@@ -3390,6 +3399,8 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	}
 	intel_encoder->pre_enable = intel_sdvo_pre_enable;
 	intel_encoder->enable = intel_enable_sdvo;
+	intel_encoder->audio_enable = intel_sdvo_enable_audio;
+	intel_encoder->audio_disable = intel_sdvo_disable_audio;
 	intel_encoder->get_hw_state = intel_sdvo_get_hw_state;
 	intel_encoder->get_config = intel_sdvo_get_config;
 
-- 
2.41.0

