Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74776621813
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 744A910E4B0;
	Tue,  8 Nov 2022 15:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9186710E49B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920989; x=1699456989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jpCNI8DpsAEu+6FWtM+7Q/BuSf7FMpFp7dsIvjKZUlw=;
 b=Auoh7DKxy1TDPLIyao9ChzQCkNwdVz3c1TxovhnzDh3aFuYl/M2jYlE9
 uGEjhfBW+x7NMrvzZQ9jMdR+Eph/xOAczo+tcPfEO/TwPW2q23jxiwyeD
 BwG13ztD4t31/TrHlSoYDy3lhQhUVs1Gig5OH02HNkJGbGwPOPeohorcG
 ik5QcOgy3bvLjeno/I4aIlKHPvq1+KCHsXj9kReDCrSXo08Imo8PpPNX/
 xCDhgLmZleg8mnqmD7KklXr2zmDj70q6yf1Z5PrUD6IYUQZ8CNGLGM95k
 Bk2ytZLVP12muNV7Y/Z+QAUQ9/QATSH6ZOluEZE43gcg/UYQB3//2gOO/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718830"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718830"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:19:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590737"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590737"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:19:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:19:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:32 +0200
Message-Id: <20221108151839.31567-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/15] drm/i915/audio: Hardware ELD readout
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

Read out the ELD from the hardware buffer, or from our stashed
copy for the audio component, so that we can hook up the state
checker to validate it.

v2: Deal with the platforms using acomp

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c      |  2 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c    |  2 +
 drivers/gpu/drm/i915/display/intel_audio.c | 56 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_audio.h |  2 +
 drivers/gpu/drm/i915/display/intel_ddi.c   |  2 +
 5 files changed, 64 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index e3e3d27ffb53..4fc7153ad35a 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -397,6 +397,8 @@ static void intel_dp_get_config(struct intel_encoder *encoder,
 
 	if (intel_dp_is_edp(intel_dp))
 		intel_edp_fixup_vbt_bpp(encoder, pipe_config->pipe_bpp);
+
+	intel_audio_codec_get_config(encoder, pipe_config);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 8aadf96fa5e9..478878abada6 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -142,6 +142,8 @@ static void intel_hdmi_get_config(struct intel_encoder *encoder,
 	intel_read_infoframe(encoder, pipe_config,
 			     HDMI_INFOFRAME_TYPE_VENDOR,
 			     &pipe_config->infoframes.hdmi);
+
+	intel_audio_codec_get_config(encoder, pipe_config);
 }
 
 static void g4x_enable_hdmi(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index ca7f8c3a6aae..524fa3f4ebc4 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -71,6 +71,8 @@ struct intel_audio_funcs {
 	void (*audio_codec_disable)(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state);
+	void (*audio_codec_get_config)(struct intel_encoder *encoder,
+				       struct intel_crtc_state *crtc_state);
 };
 
 /* DP N/M table */
@@ -314,6 +316,27 @@ static int g4x_eld_buffer_size(struct drm_i915_private *i915)
 	return REG_FIELD_GET(G4X_ELD_BUFFER_SIZE_MASK, tmp);
 }
 
+static void g4x_audio_codec_get_config(struct intel_encoder *encoder,
+				       struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	u32 *eld = (u32 *)crtc_state->eld;
+	int eld_buffer_size, len, i;
+	u32 tmp;
+
+	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
+	if ((tmp & G4X_ELD_VALID) == 0)
+		return;
+
+	intel_de_rmw(i915, G4X_AUD_CNTL_ST, G4X_ELD_ADDRESS_MASK, 0);
+
+	eld_buffer_size = g4x_eld_buffer_size(i915);
+	len = min_t(int, sizeof(crtc_state->eld) / 4, eld_buffer_size);
+
+	for (i = 0; i < len; i++)
+		eld[i] = intel_de_read(i915, G4X_HDMIW_HDMIEDID);
+}
+
 static void g4x_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
@@ -875,19 +898,52 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 	intel_lpe_audio_notify(i915, pipe, port, NULL, 0, false);
 }
 
+static void intel_acomp_get_config(struct intel_encoder *encoder,
+				   struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_audio_state *audio_state;
+	enum pipe pipe = crtc->pipe;
+
+	mutex_lock(&i915->display.audio.mutex);
+
+	audio_state = &i915->display.audio.state[pipe];
+
+	if (audio_state->encoder)
+		memcpy(crtc_state->eld, audio_state->eld, sizeof(audio_state->eld));
+
+	mutex_unlock(&i915->display.audio.mutex);
+}
+
+void intel_audio_codec_get_config(struct intel_encoder *encoder,
+				  struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (!crtc_state->has_audio)
+		return;
+
+	if (i915->display.funcs.audio)
+		i915->display.funcs.audio->audio_codec_get_config(encoder, crtc_state);
+}
+
 static const struct intel_audio_funcs g4x_audio_funcs = {
 	.audio_codec_enable = g4x_audio_codec_enable,
 	.audio_codec_disable = g4x_audio_codec_disable,
+	.audio_codec_get_config = g4x_audio_codec_get_config,
 };
 
 static const struct intel_audio_funcs ilk_audio_funcs = {
 	.audio_codec_enable = ilk_audio_codec_enable,
 	.audio_codec_disable = ilk_audio_codec_disable,
+	.audio_codec_get_config = intel_acomp_get_config,
 };
 
 static const struct intel_audio_funcs hsw_audio_funcs = {
 	.audio_codec_enable = hsw_audio_codec_enable,
 	.audio_codec_disable = hsw_audio_codec_disable,
+	.audio_codec_get_config = intel_acomp_get_config,
 };
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index b9070f336bcf..e35108b7dbc0 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -23,6 +23,8 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 void intel_audio_codec_disable(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *old_crtc_state,
 			       const struct drm_connector_state *old_conn_state);
+void intel_audio_codec_get_config(struct intel_encoder *encoder,
+				  struct intel_crtc_state *crtc_state);
 void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
 void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
 void intel_audio_init(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e95bde5cf060..9fafea5e3131 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3452,6 +3452,8 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
 
 	intel_psr_get_config(encoder, pipe_config);
+
+	intel_audio_codec_get_config(encoder, pipe_config);
 }
 
 void intel_ddi_get_clock(struct intel_encoder *encoder,
-- 
2.37.4

