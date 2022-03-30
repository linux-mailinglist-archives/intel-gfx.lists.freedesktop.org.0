Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56ECC4EBDCB
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 11:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99E2510F5EC;
	Wed, 30 Mar 2022 09:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF62210F5EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 09:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648633275; x=1680169275;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tVBxKbGuHfDjwOakeFZrQViVVf2KNrUadhH+eH0AUTo=;
 b=OfQBb3+DQWi5J5x2kZEUd0YfLrZdas7h/DkcDl2OxqMqUMys/2hgeObK
 qgpaRv9GqXOS80Pc98uXxpEYaDBljxqXYlphQsuRp+9QV0WUn2bt6pUQ3
 HdIut6iNV0JNfgXpSKTX4XIFVH4a6E+ZabHBEKQruOlMPU7BFm/twZs8Y
 kxypQ+VGXzqcSZr0IzeEHA+JNjLM+4H6UbXxIOsHi76VPZKVY4jW6YquD
 WOZf+AdhdMmdYEMHywT7pkg3jT/JZC7H7tXmHLOVaId1ikpMswD0ew6mI
 iQf0ouiS8TMRDh8iX9Gju+k6Ew1mevFEOhZaRJH1I3oVo4iwtQPARAgsd w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="258332164"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="258332164"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 02:41:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="565463682"
Received: from nhanus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.116])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 02:41:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 12:41:08 +0300
Message-Id: <20220330094109.4164326-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/audio: unify audio codec
 enable/disable debug logging
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The audio codec enable/disable debug logging is spread around in callers
and the platform specific hooks. Put them all together in one place on
both the enable and disable paths.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c      |  7 +---
 drivers/gpu/drm/i915/display/g4x_hdmi.c    |  3 --
 drivers/gpu/drm/i915/display/intel_audio.c | 39 ++++++----------------
 3 files changed, 11 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 8e1338678d91..55fefc950f41 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -658,9 +658,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	u32 dp_reg = intel_de_read(dev_priv, intel_dp->output_reg);
-	enum pipe pipe = crtc->pipe;
 	intel_wakeref_t wakeref;
 
 	if (drm_WARN_ON(&dev_priv->drm, dp_reg & DP_PORT_EN))
@@ -694,11 +692,8 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 	intel_dp_start_link_train(intel_dp, pipe_config);
 	intel_dp_stop_link_train(intel_dp, pipe_config);
 
-	if (pipe_config->has_audio) {
-		drm_dbg(&dev_priv->drm, "Enabling DP audio on pipe %c\n",
-			pipe_name(pipe));
+	if (pipe_config->has_audio)
 		intel_audio_codec_enable(encoder, pipe_config, conn_state);
-	}
 }
 
 static void g4x_enable_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 06e00b1eaa7c..39ba5dc51f8e 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -148,11 +148,8 @@ static void intel_enable_hdmi_audio(struct intel_encoder *encoder,
 				    const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 
 	drm_WARN_ON(&i915->drm, !pipe_config->has_hdmi_sink);
-	drm_dbg_kms(&i915->drm, "Enabling HDMI audio on pipe %c\n",
-		    pipe_name(crtc->pipe));
 	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 3bdca0fe2cee..24d20817a5e5 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -337,8 +337,6 @@ static void g4x_audio_codec_disable(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u32 eldv, tmp;
 
-	drm_dbg_kms(&dev_priv->drm, "Disable audio codec\n");
-
 	tmp = intel_de_read(dev_priv, G4X_AUD_VID_DID);
 	if (tmp == INTEL_AUDIO_DEVBLC || tmp == INTEL_AUDIO_DEVCL)
 		eldv = G4X_ELDV_DEVCL_DEVBLC;
@@ -362,9 +360,6 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 	u32 tmp;
 	int len, i;
 
-	drm_dbg_kms(&dev_priv->drm, "Enable audio codec, %u bytes ELD\n",
-		    drm_eld_size(eld));
-
 	tmp = intel_de_read(dev_priv, G4X_AUD_VID_DID);
 	if (tmp == INTEL_AUDIO_DEVBLC || tmp == INTEL_AUDIO_DEVCL)
 		eldv = G4X_ELDV_DEVCL_DEVBLC;
@@ -383,7 +378,6 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, G4X_AUD_CNTL_ST, tmp);
 
 	len = min(drm_eld_size(eld) / 4, len);
-	drm_dbg(&dev_priv->drm, "ELD size %d\n", len);
 	for (i = 0; i < len; i++)
 		intel_de_write(dev_priv, G4X_HDMIW_HDMIEDID,
 			       *((const u32 *)eld + i));
@@ -501,9 +495,6 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 	u32 tmp;
 
-	drm_dbg_kms(&dev_priv->drm, "Disable audio codec on transcoder %s\n",
-		    transcoder_name(cpu_transcoder));
-
 	mutex_lock(&dev_priv->audio.mutex);
 
 	/* Disable timestamps */
@@ -647,10 +638,6 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	u32 tmp;
 	int len, i;
 
-	drm_dbg_kms(&dev_priv->drm,
-		    "Enable audio codec on transcoder %s, %u bytes ELD\n",
-		     transcoder_name(cpu_transcoder), drm_eld_size(eld));
-
 	mutex_lock(&dev_priv->audio.mutex);
 
 	/* Enable Audio WA for 4k DSC usecases */
@@ -703,11 +690,6 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 	u32 tmp, eldv;
 	i915_reg_t aud_config, aud_cntrl_st2;
 
-	drm_dbg_kms(&dev_priv->drm,
-		    "Disable audio codec on [ENCODER:%d:%s], pipe %c\n",
-		     encoder->base.base.id, encoder->base.name,
-		     pipe_name(pipe));
-
 	if (drm_WARN_ON(&dev_priv->drm, port == PORT_A))
 		return;
 
@@ -754,11 +736,6 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	int len, i;
 	i915_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
 
-	drm_dbg_kms(&dev_priv->drm,
-		    "Enable audio codec on [ENCODER:%d:%s], pipe %c, %u bytes ELD\n",
-		    encoder->base.base.id, encoder->base.name,
-		    pipe_name(pipe), drm_eld_size(eld));
-
 	if (drm_WARN_ON(&dev_priv->drm, port == PORT_A))
 		return;
 
@@ -844,18 +821,17 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
 
+	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio codec on pipe %c, %u bytes ELD\n",
+		    connector->base.id, connector->name,
+		    encoder->base.base.id, encoder->base.name,
+		    pipe, drm_eld_size(connector->eld));
+
 	/* FIXME precompute the ELD in .compute_config() */
 	if (!connector->eld[0])
 		drm_dbg_kms(&dev_priv->drm,
 			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
 			    connector->base.id, connector->name);
 
-	drm_dbg(&dev_priv->drm, "ELD on [CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
-		connector->base.id,
-		connector->name,
-		encoder->base.base.id,
-		encoder->base.name);
-
 	connector->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
 
 	if (dev_priv->audio.funcs)
@@ -900,9 +876,14 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct i915_audio_component *acomp = dev_priv->audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
+	struct drm_connector *connector = old_conn_state->connector;
 	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
 
+	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable audio codec on pipe %c\n",
+		    connector->base.id, connector->name,
+		    encoder->base.base.id, encoder->base.name, pipe);
+
 	if (dev_priv->audio.funcs)
 		dev_priv->audio.funcs->audio_codec_disable(encoder,
 							   old_crtc_state,
-- 
2.30.2

