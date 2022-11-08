Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E932862180C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB92210E49A;
	Tue,  8 Nov 2022 15:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BBB610E49A
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920986; x=1699456986;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R6ZDYenThmxvqnLPKbatQylGYLT6aAvkQ0S/6idycps=;
 b=jZL4RYEC15m2xxzWG3N/7UfChle18LaWFiK265UCI/onajGGzKxMXN5W
 r/OlVuqS1cXVPbekZRRSPwRIzCglWG0TgcEOvy7rIea0UNFO9+3vPtPoH
 psKDgO2aM+C4DR1FQPmSZikE3REfPVYVxHcPS5UsDmMec5uKn9XxFiXfh
 7pgwHaRjocYlWGseRy8jjEF91Wvv06KxGpIDoxe3z5GsXE5JigTl7PqiX
 XtpzVS59GwXys6NzjMwWLv57ua53fkb1t9+g+lqy0AY+UVX90fw4X9XfA
 ZouyyRgzr4ALvBMtwVAjV2Jmqd6BXIAEzaGF6rm/CBJR1t27+vPgHR+bm Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718798"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718798"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:19:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590644"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590644"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:19:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:19:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:30 +0200
Message-Id: <20221108151839.31567-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/15] drm/i915/audio: Precompute the ELD
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
Cc: Takashi Iwai <tiwai@suse.de>, Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Stash the ELD into the crtc_state and precompute it. This gets
rid of the ugly ELD mutation during intel_audio_codec_enable(),
and opens the door for the state checker.

v2: Make another copy for the acomp hooks (Chaitanya)
    Split out the bogus ELD handling change (Jani)

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 50 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_audio.h    |  5 ++
 .../gpu/drm/i915/display/intel_display_core.h |  2 +-
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  4 +-
 6 files changed, 45 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index dba9e25ae69d..1daf3591a824 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -335,8 +335,7 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_connector *connector = conn_state->connector;
-	const u32 *eld = (const u32 *)connector->eld;
+	const u32 *eld = (const u32 *)crtc_state->eld;
 	int eld_buffer_size, len, i;
 
 	intel_crtc_wait_for_next_vblank(crtc);
@@ -345,7 +344,7 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 		     G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK, 0);
 
 	eld_buffer_size = g4x_eld_buffer_size(i915);
-	len = min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
+	len = min(drm_eld_size(crtc_state->eld) / 4, eld_buffer_size);
 
 	for (i = 0; i < len; i++)
 		intel_de_write(i915, G4X_HDMIW_HDMIEDID, eld[i]);
@@ -738,6 +737,28 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	mutex_unlock(&i915->display.audio.mutex);
 }
 
+bool intel_audio_compute_config(struct intel_encoder *encoder,
+				struct intel_crtc_state *crtc_state,
+				struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct drm_connector *connector = conn_state->connector;
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+
+	if (!connector->eld[0])
+		drm_dbg_kms(&i915->drm,
+			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
+			    connector->base.id, connector->name);
+
+	BUILD_BUG_ON(sizeof(crtc_state->eld) != sizeof(connector->eld));
+	memcpy(crtc_state->eld, connector->eld, sizeof(crtc_state->eld));
+
+	crtc_state->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
+
+	return true;
+}
+
 /**
  * intel_audio_codec_enable - Enable the audio codec for HD audio
  * @encoder: encoder on which to enable audio
@@ -755,8 +776,6 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	struct i915_audio_component *acomp = i915->display.audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
 	struct intel_audio_state *audio_state;
 	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
@@ -768,15 +787,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 		    connector->base.base.id, connector->base.name,
 		    encoder->base.base.id, encoder->base.name,
 		    crtc->base.base.id, crtc->base.name,
-		    drm_eld_size(connector->base.eld));
-
-	/* FIXME precompute the ELD in .compute_config() */
-	if (!connector->base.eld[0])
-		drm_dbg_kms(&i915->drm,
-			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
-			    connector->base.base.id, connector->base.name);
-
-	connector->base.eld[6] = drm_av_sync_delay(&connector->base, adjusted_mode) / 2;
+		    drm_eld_size(crtc_state->eld));
 
 	if (i915->display.funcs.audio)
 		i915->display.funcs.audio->audio_codec_enable(encoder,
@@ -788,7 +799,8 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	audio_state = &i915->display.audio.state[pipe];
 
 	audio_state->encoder = encoder;
-	audio_state->connector = connector;
+	BUILD_BUG_ON(sizeof(audio_state->eld) != sizeof(crtc_state->eld));
+	memcpy(audio_state->eld, crtc_state->eld, sizeof(audio_state->eld));
 
 	mutex_unlock(&i915->display.audio.mutex);
 
@@ -801,7 +813,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 						      (int)port, (int)pipe);
 	}
 
-	intel_lpe_audio_notify(i915, pipe, port, connector->base.eld,
+	intel_lpe_audio_notify(i915, pipe, port, crtc_state->eld,
 			       crtc_state->port_clock,
 			       intel_crtc_has_dp_encoder(crtc_state));
 }
@@ -845,7 +857,7 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 	audio_state = &i915->display.audio.state[pipe];
 
 	audio_state->encoder = NULL;
-	audio_state->connector = NULL;
+	memset(audio_state->eld, 0, sizeof(audio_state->eld));
 
 	mutex_unlock(&i915->display.audio.mutex);
 
@@ -1172,9 +1184,9 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 		return -EINVAL;
 	}
 
-	*enabled = audio_state->connector != NULL;
+	*enabled = audio_state->encoder != NULL;
 	if (*enabled) {
-		const u8 *eld = audio_state->connector->base.eld;
+		const u8 *eld = audio_state->eld;
 
 		ret = drm_eld_size(eld);
 		memcpy(buf, eld, min(max_bytes, ret));
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index 63b22131dc45..b9070f336bcf 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -6,12 +6,17 @@
 #ifndef __INTEL_AUDIO_H__
 #define __INTEL_AUDIO_H__
 
+#include <linux/types.h>
+
 struct drm_connector_state;
 struct drm_i915_private;
 struct intel_crtc_state;
 struct intel_encoder;
 
 void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
+bool intel_audio_compute_config(struct intel_encoder *encoder,
+				struct intel_crtc_state *crtc_state,
+				struct drm_connector_state *conn_state);
 void intel_audio_codec_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state,
 			      const struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index a8f4d4d7fccd..7dd7c88a07ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -88,7 +88,7 @@ struct intel_wm_funcs {
 
 struct intel_audio_state {
 	struct intel_encoder *encoder;
-	struct intel_connector *connector;
+	u8 eld[MAX_ELD_BYTES];
 };
 
 struct intel_audio {
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index cf9a5dd0e010..cd68c3134175 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1250,6 +1250,8 @@ struct intel_crtc_state {
 		struct drm_dp_vsc_sdp vsc;
 	} infoframes;
 
+	u8 eld[MAX_ELD_BYTES];
+
 	/* HDMI scrambling status */
 	bool hdmi_scrambling;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7400d6b4c587..830f7728ccd4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2023,7 +2023,9 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
 		pipe_config->has_pch_encoder = true;
 
-	pipe_config->has_audio = intel_dp_has_audio(encoder, pipe_config, conn_state);
+	pipe_config->has_audio =
+		intel_dp_has_audio(encoder, pipe_config, conn_state) &&
+		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 02f8374ea51f..7e99ede1bfd2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -43,6 +43,7 @@
 #include "i915_debugfs.h"
 #include "i915_drv.h"
 #include "intel_atomic.h"
+#include "intel_audio.h"
 #include "intel_connector.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
@@ -2261,7 +2262,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		pipe_config->has_pch_encoder = true;
 
 	pipe_config->has_audio =
-		intel_hdmi_has_audio(encoder, pipe_config, conn_state);
+		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
+		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	/*
 	 * Try to respect downstream TMDS clock limits first, if
-- 
2.37.4

