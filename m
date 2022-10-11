Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 483775FB8D1
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0844810E8C8;
	Tue, 11 Oct 2022 17:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94B7410E986
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507683; x=1697043683;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d3Owd62mJ0QMSceq+aw9NV/kWt3i1mkKWj7F9JvcXuI=;
 b=RowjnYbPl60fDMHBtuo7M/NiQsoMf+SJTUArZjDxatZTAIfs02/sCVe1
 St+oPGGW6t6idciOz9viz7NaS2YlLIjAA18zVlOTDDd0kl2QUyyF0MpBe
 D8PO8Uw+jxRkiEtGEdK2QR9gI5gLv3H0cEh1glfe8PgW+Q/8F/mRWXyYD
 bbW4fzUKVTN1RkCTViiDamkwPrT+v//2tjwDJSc9BfRXB9FfJ4bNkYzXA
 Jdj5YvBdRRQmdGKPEdAEnHmgST9/mJc++Tegcey+/rj5HfCkIfQCCo0uP
 jO9pIgXIeX7xnLD+gAi1AiDB66Ai/EVkGdL1wFf1yyph4Ky/H/dveiHgR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="302178129"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="302178129"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:01:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="628771673"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="628771673"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 11 Oct 2022 10:01:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:01:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 20:00:04 +0300
Message-Id: <20221011170011.17198-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/22] drm/i915/audio: Precompute the ELD
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

Stash the ELD into the crtc_state and precompute it. This gets
rid of the ugly ELD mutation during intel_audio_codec_enable(),
and opens the door for the state checker.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 53 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_audio.h    |  5 ++
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  4 +-
 5 files changed, 45 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 4eb5589a0f89..39291e870635 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -334,8 +334,7 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_connector *connector = conn_state->connector;
-	const u32 *eld = (const u32 *)connector->eld;
+	const u32 *eld = (const u32 *)crtc_state->eld;
 	int eld_buffer_size, len, i;
 
 	intel_crtc_wait_for_next_vblank(crtc);
@@ -344,7 +343,7 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 		     G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK, 0);
 
 	eld_buffer_size = g4x_eld_buffer_size(i915);
-	len = min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
+	len = min(drm_eld_size(crtc_state->eld) / 4, eld_buffer_size);
 
 	for (i = 0; i < len; i++)
 		intel_de_write(i915, G4X_HDMIW_HDMIEDID, eld[i]);
@@ -616,9 +615,8 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_connector *connector = conn_state->connector;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	const u32 *eld = (const u32 *)connector->eld;
+	const u32 *eld = (const u32 *)crtc_state->eld;
 	int eld_buffer_size, len, i;
 
 	mutex_lock(&i915->display.audio.mutex);
@@ -642,7 +640,7 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 		     IBX_ELD_ADDRESS_MASK, 0);
 
 	eld_buffer_size = hsw_eld_buffer_size(i915, cpu_transcoder);
-	len = min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
+	len = min(drm_eld_size(crtc_state->eld) / 4, eld_buffer_size);
 
 	for (i = 0; i < len; i++)
 		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder), eld[i]);
@@ -744,8 +742,7 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_connector *connector = conn_state->connector;
-	const u32 *eld = (const u32 *)connector->eld;
+	const u32 *eld = (const u32 *)crtc_state->eld;
 	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
 	int eld_buffer_size, len, i;
@@ -769,7 +766,7 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 		     IBX_ELD_ADDRESS_MASK, 0);
 
 	eld_buffer_size = ilk_eld_buffer_size(i915, pipe);
-	len = min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
+	len = min(drm_eld_size(crtc_state->eld) / 4, eld_buffer_size);
 
 	for (i = 0; i < len; i++)
 		intel_de_write(i915, regs.hdmiw_hdmiedid, eld[i]);
@@ -795,6 +792,30 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
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
+	if (!connector->eld[0]) {
+		drm_dbg_kms(&i915->drm,
+			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
+			    connector->base.id, connector->name);
+		return false;
+	}
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
@@ -812,8 +833,6 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	struct i915_audio_component *acomp = i915->display.audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_connector *connector = conn_state->connector;
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
 	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
 
@@ -823,15 +842,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio codec on pipe %c, %u bytes ELD\n",
 		    connector->base.id, connector->name,
 		    encoder->base.base.id, encoder->base.name,
-		    pipe_name(pipe), drm_eld_size(connector->eld));
-
-	/* FIXME precompute the ELD in .compute_config() */
-	if (!connector->eld[0])
-		drm_dbg_kms(&i915->drm,
-			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
-			    connector->base.id, connector->name);
-
-	connector->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
+		    pipe_name(pipe), drm_eld_size(crtc_state->eld));
 
 	if (i915->display.funcs.audio)
 		i915->display.funcs.audio->audio_codec_enable(encoder,
@@ -854,7 +865,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 						 (int) port, (int) pipe);
 	}
 
-	intel_lpe_audio_notify(i915, pipe, port, connector->eld,
+	intel_lpe_audio_notify(i915, pipe, port, crtc_state->eld,
 			       crtc_state->port_clock,
 			       intel_crtc_has_dp_encoder(crtc_state));
 }
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
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2b853e9e51d..f378bcaf0f65 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1248,6 +1248,8 @@ struct intel_crtc_state {
 		struct drm_dp_vsc_sdp vsc;
 	} infoframes;
 
+	u8 eld[MAX_ELD_BYTES];
+
 	/* HDMI scrambling status */
 	bool hdmi_scrambling;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a060903891b2..d6c88f14d31d 100644
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
index 93519fb23d9d..d10998801228 100644
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
2.35.1

