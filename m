Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6E65FB8D2
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:01:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7937610E8D8;
	Tue, 11 Oct 2022 17:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF8D10E981
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507685; x=1697043685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mq3U/9USqweWRPZpplWlAG11YTAmb6xIYt7upLMkJd0=;
 b=IEDc/8MRM/VPoZwgGxHfk+IeTgcCX6ZmO56Ly6hcVyYqdZJlfe2GOxT1
 ZN3UJgRt55w8OdRje4WxSxTMebbq7jawI8MFU6WYbZ56q02FqEn04NS0f
 s8IIrc4iowjNBsokkOZBQZlE2n6qaAGhWKSjX9QAVL9zP3fqnZK3Q4b6u
 qnOR+H5lIafB+6RwhV0dAI3QlYlNVUqRS99ySLx3UgHZ26FxxT7+xZUJ5
 P+pIcAep60SnsCJJeO3yQs0w72a+Vf+DgMlcItvjPqBKa0BSXPefbeXXs
 6HtvtO0xwarI3QVljBaqCQji0/mJT+7jBAaSQJhsudtEGuSL0yatmsO1P Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="302178173"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="302178173"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:01:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="628771736"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="628771736"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 11 Oct 2022 10:01:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:01:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 20:00:05 +0300
Message-Id: <20221011170011.17198-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/22] drm/i915/audio: Hardware ELD readout
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

Read out the ELD from the hardware buffer so that we can
hook up the state checker to validate it.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c      |  2 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c    |  2 +
 drivers/gpu/drm/i915/display/intel_audio.c | 88 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_audio.h |  2 +
 drivers/gpu/drm/i915/display/intel_ddi.c   |  2 +
 5 files changed, 96 insertions(+)

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
index 39291e870635..328c47719fd8 100644
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
@@ -313,6 +315,27 @@ static int g4x_eld_buffer_size(struct drm_i915_private *i915)
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
@@ -467,6 +490,29 @@ static int hsw_eld_buffer_size(struct drm_i915_private *i915,
 	return REG_FIELD_GET(IBX_ELD_BUFFER_SIZE_MASK, tmp);
 }
 
+static void hsw_audio_codec_get_config(struct intel_encoder *encoder,
+				       struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 *eld = (u32 *)crtc_state->eld;
+	int eld_buffer_size, len, i;
+	u32 tmp;
+
+	tmp = intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
+	if ((tmp & AUDIO_ELD_VALID(cpu_transcoder)) == 0)
+		return;
+
+	intel_de_rmw(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder),
+		     IBX_ELD_ADDRESS_MASK, 0);
+
+	eld_buffer_size = hsw_eld_buffer_size(i915, cpu_transcoder);
+	len = min_t(int, sizeof(crtc_state->eld) / 4, eld_buffer_size);
+
+	for (i = 0; i < len; i++)
+		eld[i] = intel_de_read(i915, HSW_AUD_EDID_DATA(cpu_transcoder));
+}
+
 static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
@@ -700,6 +746,33 @@ static int ilk_eld_buffer_size(struct drm_i915_private *i915,
 	return REG_FIELD_GET(IBX_ELD_BUFFER_SIZE_MASK, tmp);
 }
 
+static void ilk_audio_codec_get_config(struct intel_encoder *encoder,
+				       struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	u32 *eld = (u32 *)crtc_state->eld;
+	enum port port = encoder->port;
+	enum pipe pipe = crtc->pipe;
+	int eld_buffer_size, len, i;
+	struct ilk_audio_regs regs;
+	u32 tmp;
+
+	ilk_audio_regs_init(i915, pipe, &regs);
+
+	tmp = intel_de_read(i915, regs.aud_cntrl_st2);
+	if ((tmp & IBX_ELD_VALID(port)) == 0)
+		return;
+
+	intel_de_rmw(i915, regs.aud_cntl_st, IBX_ELD_ADDRESS_MASK, 0);
+
+	eld_buffer_size = ilk_eld_buffer_size(i915, pipe);
+	len = min_t(int, sizeof(crtc_state->eld) / 4, eld_buffer_size);
+
+	for (i = 0; i < len; i++)
+		eld[i] = intel_de_read(i915, regs.hdmiw_hdmiedid);
+}
+
 static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
@@ -919,19 +992,34 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 	intel_lpe_audio_notify(i915, pipe, port, NULL, 0, false);
 }
 
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
+	.audio_codec_get_config = ilk_audio_codec_get_config,
 };
 
 static const struct intel_audio_funcs hsw_audio_funcs = {
 	.audio_codec_enable = hsw_audio_codec_enable,
 	.audio_codec_disable = hsw_audio_codec_disable,
+	.audio_codec_get_config = hsw_audio_codec_get_config,
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
index 971356237eca..d7f1bc75cf26 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3463,6 +3463,8 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
 
 	intel_psr_get_config(encoder, pipe_config);
+
+	intel_audio_codec_get_config(encoder, pipe_config);
 }
 
 void intel_ddi_get_clock(struct intel_encoder *encoder,
-- 
2.35.1

