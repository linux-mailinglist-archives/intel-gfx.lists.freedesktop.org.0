Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CE5679C55
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB1FD10E69F;
	Tue, 24 Jan 2023 14:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2414410E69A
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571607; x=1706107607;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VCrlrrHD3zF4iV6WIWzowuFuZ9YDslw9/59qKdaUg9I=;
 b=K7ZXR5r8qJUmNZQcCi2SZe7ILGXN+6honeLGfmd2G7LadMBW5QDc9nSS
 BaOdEzL4eaEdN5SQNMn+lcoYNj2zhyMUmF2AGEL9QyE39Cq+TsPcot7pB
 70SZE/mFQKOwpt7RXKc4LYzen3Y8SdXbDmE/U3Fj+s/bsiQFDVtO4MCb4
 6zBHKMuMsxxpoXRQRvY/+moYcYMSd0qdhh4IEdKmjyppaUyyNsg61Q9VZ
 7grJO5pzT/xpBqV8oj3aO94+WPP859dfG5696RttrS+nxj75xDPPnqo7r
 GLJ2AVNuMEMIQfPLQoke2FWrpZXCwheEse0K0zEs+fDy6fjDNy1h3TQMj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412538836"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412538836"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:46:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639602268"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639602268"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2023 06:46:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jan 2023 16:46:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 16:46:19 +0200
Message-Id: <20230124144628.4649-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
References: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/13] drm/i915/audio: Precompute the ELD
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
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
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
index f4cfb7c3a7ca..326e93768687 100644
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
@@ -749,6 +748,28 @@ void intel_audio_sdp_split_update(struct intel_encoder *encoder,
 			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
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
@@ -766,8 +787,6 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	struct i915_audio_component *acomp = i915->display.audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
 	struct intel_audio_state *audio_state;
 	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
@@ -779,15 +798,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
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
@@ -799,7 +810,8 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	audio_state = &i915->display.audio.state[pipe];
 
 	audio_state->encoder = encoder;
-	audio_state->connector = connector;
+	BUILD_BUG_ON(sizeof(audio_state->eld) != sizeof(crtc_state->eld));
+	memcpy(audio_state->eld, crtc_state->eld, sizeof(audio_state->eld));
 
 	mutex_unlock(&i915->display.audio.mutex);
 
@@ -812,7 +824,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 						      (int)port, (int)pipe);
 	}
 
-	intel_lpe_audio_notify(i915, pipe, port, connector->base.eld,
+	intel_lpe_audio_notify(i915, pipe, port, crtc_state->eld,
 			       crtc_state->port_clock,
 			       intel_crtc_has_dp_encoder(crtc_state));
 }
@@ -856,7 +868,7 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 	audio_state = &i915->display.audio.state[pipe];
 
 	audio_state->encoder = NULL;
-	audio_state->connector = NULL;
+	memset(audio_state->eld, 0, sizeof(audio_state->eld));
 
 	mutex_unlock(&i915->display.audio.mutex);
 
@@ -1183,9 +1195,9 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
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
index 1b87257c6a17..521c56338834 100644
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
index 0e4c42af25a6..7b3e00f3e6ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -89,7 +89,7 @@ struct intel_wm_funcs {
 
 struct intel_audio_state {
 	struct intel_encoder *encoder;
-	struct intel_connector *connector;
+	u8 eld[MAX_ELD_BYTES];
 };
 
 struct intel_audio {
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a447a44db1eb..8173af26951b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1259,6 +1259,8 @@ struct intel_crtc_state {
 		struct drm_dp_vsc_sdp vsc;
 	} infoframes;
 
+	u8 eld[MAX_ELD_BYTES];
+
 	/* HDMI scrambling status */
 	bool hdmi_scrambling;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 80d95cec8f9d..478653e11f4d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2080,7 +2080,9 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
 		pipe_config->has_pch_encoder = true;
 
-	pipe_config->has_audio = intel_dp_has_audio(encoder, pipe_config, conn_state);
+	pipe_config->has_audio =
+		intel_dp_has_audio(encoder, pipe_config, conn_state) &&
+		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 6a2ee342eab5..eb0dc376028a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -44,6 +44,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
+#include "intel_audio.h"
 #include "intel_connector.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
@@ -2271,7 +2272,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		pipe_config->pixel_multiplier = 2;
 
 	pipe_config->has_audio =
-		intel_hdmi_has_audio(encoder, pipe_config, conn_state);
+		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
+		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	/*
 	 * Try to respect downstream TMDS clock limits first, if
-- 
2.39.1

