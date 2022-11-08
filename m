Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1509621804
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B38AE10E4B2;
	Tue,  8 Nov 2022 15:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF5BC10E48B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920985; x=1699456985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/P3f/WG5qMaDRR01CgfcRXPlA6wMCh2WiJamZMEEVPE=;
 b=ixIMVPVJfS5v6YUw8JTGxNTNC4cCkvQ1xN+Gr1PwSlkxoT0UEZURmTO2
 kpds7ggja8dvDjxx1qVcjx83U3JBusztV+u70k5tpMIw/8UwK/qFXUfED
 fSH7QMj3js+t+g3KewJ4vJ2zvKrvbR31C0XKfBwAtbIC6gmKAlB50zlUw
 yb5BM2zYsM5PTtNa+WLwmHP4TQ60Hwwi3rw/qOEfRiOS1FfPh/pmE4vtE
 QU4JmY+qCHSWeqZBtexYrUOxmDUGdFSppf0jpWX3vjz+8DzoD/2S4AFtd
 fzhtdI5I5rY1Q7uGKf9OJNYunzuaO5aMHKA3gG9yt6LPZZZrtAw5+CQED Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718790"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718790"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:19:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590622"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590622"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:18:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:18:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:29 +0200
Message-Id: <20221108151839.31567-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/15] drm/i915/audio: Introduce a struct for
 the acomp audio state
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we're spreading the stashed state for use of the
audio component hooks all over the place. Start collecting
it up into a single spot.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 106 ++++++++++--------
 .../gpu/drm/i915/display/intel_display_core.h |   9 +-
 .../drm/i915/display/intel_display_types.h    |   2 -
 3 files changed, 65 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 6b0c2b0522fd..dba9e25ae69d 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -754,27 +754,29 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct i915_audio_component *acomp = i915->display.audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_connector *connector = conn_state->connector;
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	struct intel_audio_state *audio_state;
 	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
 
 	if (!crtc_state->has_audio)
 		return;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio codec on pipe %c, %u bytes ELD\n",
-		    connector->base.id, connector->name,
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio codec on [CRTC:%d:%s], %u bytes ELD\n",
+		    connector->base.base.id, connector->base.name,
 		    encoder->base.base.id, encoder->base.name,
-		    pipe_name(pipe), drm_eld_size(connector->eld));
+		    crtc->base.base.id, crtc->base.name,
+		    drm_eld_size(connector->base.eld));
 
 	/* FIXME precompute the ELD in .compute_config() */
-	if (!connector->eld[0])
+	if (!connector->base.eld[0])
 		drm_dbg_kms(&i915->drm,
 			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
-			    connector->base.id, connector->name);
+			    connector->base.base.id, connector->base.name);
 
-	connector->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
+	connector->base.eld[6] = drm_av_sync_delay(&connector->base, adjusted_mode) / 2;
 
 	if (i915->display.funcs.audio)
 		i915->display.funcs.audio->audio_codec_enable(encoder,
@@ -782,10 +784,12 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 							      conn_state);
 
 	mutex_lock(&i915->display.audio.mutex);
-	encoder->audio_connector = connector;
 
-	/* referred in audio callbacks */
-	i915->display.audio.encoder_map[pipe] = encoder;
+	audio_state = &i915->display.audio.state[pipe];
+
+	audio_state->encoder = encoder;
+	audio_state->connector = connector;
+
 	mutex_unlock(&i915->display.audio.mutex);
 
 	if (acomp && acomp->base.audio_ops &&
@@ -797,7 +801,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 						      (int)port, (int)pipe);
 	}
 
-	intel_lpe_audio_notify(i915, pipe, port, connector->eld,
+	intel_lpe_audio_notify(i915, pipe, port, connector->base.eld,
 			       crtc_state->port_clock,
 			       intel_crtc_has_dp_encoder(crtc_state));
 }
@@ -818,16 +822,18 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct i915_audio_component *acomp = i915->display.audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	struct drm_connector *connector = old_conn_state->connector;
+	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
+	struct intel_audio_state *audio_state;
 	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
 
 	if (!old_crtc_state->has_audio)
 		return;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable audio codec on pipe %c\n",
-		    connector->base.id, connector->name,
-		    encoder->base.base.id, encoder->base.name, pipe_name(pipe));
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable audio codec on [CRTC:%d:%s]\n",
+		    connector->base.base.id, connector->base.name,
+		    encoder->base.base.id, encoder->base.name,
+		    crtc->base.base.id, crtc->base.name);
 
 	if (i915->display.funcs.audio)
 		i915->display.funcs.audio->audio_codec_disable(encoder,
@@ -835,8 +841,12 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 							       old_conn_state);
 
 	mutex_lock(&i915->display.audio.mutex);
-	encoder->audio_connector = NULL;
-	i915->display.audio.encoder_map[pipe] = NULL;
+
+	audio_state = &i915->display.audio.state[pipe];
+
+	audio_state->encoder = NULL;
+	audio_state->connector = NULL;
+
 	mutex_unlock(&i915->display.audio.mutex);
 
 	if (acomp && acomp->base.audio_ops &&
@@ -1057,35 +1067,32 @@ static int i915_audio_component_get_cdclk_freq(struct device *kdev)
 }
 
 /*
- * get the intel_encoder according to the parameter port and pipe
- * intel_encoder is saved by the index of pipe
- * MST & (pipe >= 0): return the audio.encoder_map[pipe],
+ * get the intel audio state according to the parameter port and pipe
+ * MST & (pipe >= 0): return the audio.state[pipe].encoder],
  *   when port is matched
  * MST & (pipe < 0): this is invalid
  * Non-MST & (pipe >= 0): only pipe = 0 (the first device entry)
  *   will get the right intel_encoder with port matched
  * Non-MST & (pipe < 0): get the right intel_encoder with port matched
  */
-static struct intel_encoder *get_saved_enc(struct drm_i915_private *i915,
-					   int port, int pipe)
+static struct intel_audio_state *find_audio_state(struct drm_i915_private *i915,
+						  int port, int pipe)
 {
 	/* MST */
 	if (pipe >= 0) {
+		struct intel_audio_state *audio_state;
 		struct intel_encoder *encoder;
 
 		if (drm_WARN_ON(&i915->drm,
-				pipe >= ARRAY_SIZE(i915->display.audio.encoder_map)))
+				pipe >= ARRAY_SIZE(i915->display.audio.state)))
 			return NULL;
 
-		encoder = i915->display.audio.encoder_map[pipe];
-		/*
-		 * when bootup, audio driver may not know it is
-		 * MST or not. So it will poll all the port & pipe
-		 * combinations
-		 */
+		audio_state = &i915->display.audio.state[pipe];
+		encoder = audio_state->encoder;
+
 		if (encoder && encoder->port == port &&
 		    encoder->type == INTEL_OUTPUT_DP_MST)
-			return encoder;
+			return audio_state;
 	}
 
 	/* Non-MST */
@@ -1093,13 +1100,15 @@ static struct intel_encoder *get_saved_enc(struct drm_i915_private *i915,
 		return NULL;
 
 	for_each_pipe(i915, pipe) {
+		struct intel_audio_state *audio_state;
 		struct intel_encoder *encoder;
 
-		encoder = i915->display.audio.encoder_map[pipe];
+		audio_state = &i915->display.audio.state[pipe];
+		encoder = audio_state->encoder;
 
 		if (encoder && encoder->port == port &&
 		    encoder->type != INTEL_OUTPUT_DP_MST)
-			return encoder;
+			return audio_state;
 	}
 
 	return NULL;
@@ -1110,6 +1119,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 {
 	struct drm_i915_private *i915 = kdev_to_i915(kdev);
 	struct i915_audio_component *acomp = i915->display.audio.component;
+	const struct intel_audio_state *audio_state;
 	struct intel_encoder *encoder;
 	struct intel_crtc *crtc;
 	unsigned long cookie;
@@ -1121,20 +1131,22 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 	cookie = i915_audio_component_get_power(kdev);
 	mutex_lock(&i915->display.audio.mutex);
 
-	/* 1. get the pipe */
-	encoder = get_saved_enc(i915, port, pipe);
-	if (!encoder || !encoder->base.crtc) {
-		drm_dbg_kms(&i915->drm, "Not valid for port %c\n",
-			    port_name(port));
+	audio_state = find_audio_state(i915, port, pipe);
+	if (!audio_state) {
+		drm_dbg_kms(&i915->drm, "Not valid for port %c\n", port_name(port));
 		err = -ENODEV;
 		goto unlock;
 	}
 
+	encoder = audio_state->encoder;
+
+	/* FIXME stop using the legacy crtc pointer */
 	crtc = to_intel_crtc(encoder->base.crtc);
 
 	/* port must be valid now, otherwise the pipe will be invalid */
 	acomp->aud_sample_rate[port] = rate;
 
+	/* FIXME get rid of the crtc->config stuff */
 	hsw_audio_config_update(encoder, crtc->config);
 
  unlock:
@@ -1148,24 +1160,22 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 					unsigned char *buf, int max_bytes)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(kdev);
-	struct intel_encoder *intel_encoder;
-	const u8 *eld;
-	int ret = -EINVAL;
+	const struct intel_audio_state *audio_state;
+	int ret = 0;
 
 	mutex_lock(&i915->display.audio.mutex);
 
-	intel_encoder = get_saved_enc(i915, port, pipe);
-	if (!intel_encoder) {
-		drm_dbg_kms(&i915->drm, "Not valid for port %c\n",
-			    port_name(port));
+	audio_state = find_audio_state(i915, port, pipe);
+	if (!audio_state) {
+		drm_dbg_kms(&i915->drm, "Not valid for port %c\n", port_name(port));
 		mutex_unlock(&i915->display.audio.mutex);
-		return ret;
+		return -EINVAL;
 	}
 
-	ret = 0;
-	*enabled = intel_encoder->audio_connector != NULL;
+	*enabled = audio_state->connector != NULL;
 	if (*enabled) {
-		eld = intel_encoder->audio_connector->eld;
+		const u8 *eld = audio_state->connector->base.eld;
+
 		ret = drm_eld_size(eld);
 		memcpy(buf, eld, min(max_bytes, ret));
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 337d8e08ba43..a8f4d4d7fccd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -86,6 +86,11 @@ struct intel_wm_funcs {
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
 };
 
+struct intel_audio_state {
+	struct intel_encoder *encoder;
+	struct intel_connector *connector;
+};
+
 struct intel_audio {
 	/* hda/i915 audio component */
 	struct i915_audio_component *component;
@@ -95,8 +100,8 @@ struct intel_audio {
 	int power_refcount;
 	u32 freq_cntrl;
 
-	/* Used to save the pipe-to-encoder mapping for audio */
-	struct intel_encoder *encoder_map[I915_MAX_PIPES];
+	/* current audio state for the audio component hooks */
+	struct intel_audio_state state[I915_MAX_PIPES];
 
 	/* necessary resource sharing with HDMI LPE audio driver. */
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c6abaaa46e17..cf9a5dd0e010 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -262,8 +262,6 @@ struct intel_encoder {
 
 	enum hpd_pin hpd_pin;
 	enum intel_display_power_domain power_domain;
-	/* for communication with audio component; protected by av_mutex */
-	const struct drm_connector *audio_connector;
 
 	/* VBT information for this encoder (may be NULL for older platforms) */
 	const struct intel_bios_encoder_data *devdata;
-- 
2.37.4

