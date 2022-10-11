Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8004D5FB8DD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:02:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A754110E990;
	Tue, 11 Oct 2022 17:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF9F710E98B
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507719; x=1697043719;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3ZGaYDbe4TrYudB4ufXNri2YcYyV6RVDX0gg/9cwT/E=;
 b=SdQNcVdYa5DZ5xu2Xl4LbwrUuo7l/+tvpISIwQwtsghCoP9xOao4UX1Y
 yTfBAhxbycoIqIWRTagDf8w4AIijqq9ExFSVnaVmFe7eH3AqSWTfuEtZi
 2rlIdOguXOIr9Z75bTcUEo/lU24COh+h+AlXVZ6vbwMNDX0c78e8LOELr
 xwi+ZLDyV64uf+rWeQg2jZk2K9WU1i9o6OnTW5VaWjSjVv4kTdsGgrruz
 +jIeTpxniKtaQaPZI6SnxGwxN/TEGLSnFJnZsAM1oJ8lm6FR6LffcceHn
 U0a+IcIT0lUn6MXB7iL7xPLP1ISKHzhVDxZuVr5PwAU6iVSqCzQcQ2ojd Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="291885249"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="291885249"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:00:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621475245"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="621475245"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Oct 2022 10:00:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:00:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 19:59:50 +0300
Message-Id: <20221011170011.17198-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/22] drm/i915/audio: s/dev_priv/i915/
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

Rename the 'dev_priv' variables to 'i915' in the audio code
to match modern style conventions.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 390 +++++++++---------
 .../gpu/drm/i915/display/intel_audio_regs.h   |   2 +-
 2 files changed, 196 insertions(+), 196 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index aacbc6da84ef..b6220f767417 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -250,7 +250,7 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp[] = {
 /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */
 static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	int i;
@@ -260,17 +260,17 @@ static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_sta
 			break;
 	}
 
-	if (DISPLAY_VER(dev_priv) < 12 && adjusted_mode->crtc_clock > 148500)
+	if (DISPLAY_VER(i915) < 12 && adjusted_mode->crtc_clock > 148500)
 		i = ARRAY_SIZE(hdmi_audio_clock);
 
 	if (i == ARRAY_SIZE(hdmi_audio_clock)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "HDMI audio pixel clock setting for %d not found, falling back to defaults\n",
 			    adjusted_mode->crtc_clock);
 		i = 1;
 	}
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "Configuring HDMI audio for pixel clock %d (0x%08x)\n",
 		    hdmi_audio_clock[i].clock,
 		    hdmi_audio_clock[i].config);
@@ -309,23 +309,23 @@ static bool intel_eld_uptodate(struct drm_connector *connector,
 			       i915_reg_t reg_elda, u32 bits_elda,
 			       i915_reg_t reg_edid)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	const u8 *eld = connector->eld;
 	u32 tmp;
 	int i;
 
-	tmp = intel_de_read(dev_priv, reg_eldv);
+	tmp = intel_de_read(i915, reg_eldv);
 	tmp &= bits_eldv;
 
 	if (!tmp)
 		return false;
 
-	tmp = intel_de_read(dev_priv, reg_elda);
+	tmp = intel_de_read(i915, reg_elda);
 	tmp &= ~bits_elda;
-	intel_de_write(dev_priv, reg_elda, tmp);
+	intel_de_write(i915, reg_elda, tmp);
 
 	for (i = 0; i < drm_eld_size(eld) / 4; i++)
-		if (intel_de_read(dev_priv, reg_edid) != *((const u32 *)eld + i))
+		if (intel_de_read(i915, reg_edid) != *((const u32 *)eld + i))
 			return false;
 
 	return true;
@@ -335,33 +335,33 @@ static void g4x_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u32 eldv, tmp;
 
-	tmp = intel_de_read(dev_priv, G4X_AUD_VID_DID);
+	tmp = intel_de_read(i915, G4X_AUD_VID_DID);
 	if (tmp == INTEL_AUDIO_DEVBLC || tmp == INTEL_AUDIO_DEVCL)
 		eldv = G4X_ELDV_DEVCL_DEVBLC;
 	else
 		eldv = G4X_ELDV_DEVCTG;
 
 	/* Invalidate ELD */
-	tmp = intel_de_read(dev_priv, G4X_AUD_CNTL_ST);
+	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
 	tmp &= ~eldv;
-	intel_de_write(dev_priv, G4X_AUD_CNTL_ST, tmp);
+	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
 }
 
 static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
 	const u8 *eld = connector->eld;
 	u32 eldv;
 	u32 tmp;
 	int len, i;
 
-	tmp = intel_de_read(dev_priv, G4X_AUD_VID_DID);
+	tmp = intel_de_read(i915, G4X_AUD_VID_DID);
 	if (tmp == INTEL_AUDIO_DEVBLC || tmp == INTEL_AUDIO_DEVCL)
 		eldv = G4X_ELDV_DEVCL_DEVBLC;
 	else
@@ -373,27 +373,27 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 			       G4X_HDMIW_HDMIEDID))
 		return;
 
-	tmp = intel_de_read(dev_priv, G4X_AUD_CNTL_ST);
+	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
 	tmp &= ~(eldv | G4X_ELD_ADDR_MASK);
 	len = (tmp >> 9) & 0x1f;		/* ELD buffer size */
-	intel_de_write(dev_priv, G4X_AUD_CNTL_ST, tmp);
+	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
 
 	len = min(drm_eld_size(eld) / 4, len);
 	for (i = 0; i < len; i++)
-		intel_de_write(dev_priv, G4X_HDMIW_HDMIEDID,
+		intel_de_write(i915, G4X_HDMIW_HDMIEDID,
 			       *((const u32 *)eld + i));
 
-	tmp = intel_de_read(dev_priv, G4X_AUD_CNTL_ST);
+	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
 	tmp |= eldv;
-	intel_de_write(dev_priv, G4X_AUD_CNTL_ST, tmp);
+	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
 }
 
 static void
 hsw_dp_audio_config_update(struct intel_encoder *encoder,
 			   const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_audio_component *acomp = dev_priv->display.audio.component;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct i915_audio_component *acomp = i915->display.audio.component;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum port port = encoder->port;
 	const struct dp_aud_n_m *nm;
@@ -403,12 +403,12 @@ hsw_dp_audio_config_update(struct intel_encoder *encoder,
 	rate = acomp ? acomp->aud_sample_rate[port] : 0;
 	nm = audio_config_dp_get_n_m(crtc_state, rate);
 	if (nm)
-		drm_dbg_kms(&dev_priv->drm, "using Maud %u, Naud %u\n", nm->m,
+		drm_dbg_kms(&i915->drm, "using Maud %u, Naud %u\n", nm->m,
 			    nm->n);
 	else
-		drm_dbg_kms(&dev_priv->drm, "using automatic Maud, Naud\n");
+		drm_dbg_kms(&i915->drm, "using automatic Maud, Naud\n");
 
-	tmp = intel_de_read(dev_priv, HSW_AUD_CFG(cpu_transcoder));
+	tmp = intel_de_read(i915, HSW_AUD_CFG(cpu_transcoder));
 	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 	tmp &= ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
 	tmp &= ~AUD_CONFIG_N_PROG_ENABLE;
@@ -420,9 +420,9 @@ hsw_dp_audio_config_update(struct intel_encoder *encoder,
 		tmp |= AUD_CONFIG_N_PROG_ENABLE;
 	}
 
-	intel_de_write(dev_priv, HSW_AUD_CFG(cpu_transcoder), tmp);
+	intel_de_write(i915, HSW_AUD_CFG(cpu_transcoder), tmp);
 
-	tmp = intel_de_read(dev_priv, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
+	tmp = intel_de_read(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
 	tmp &= ~AUD_CONFIG_M_MASK;
 	tmp &= ~AUD_M_CTS_M_VALUE_INDEX;
 	tmp &= ~AUD_M_CTS_M_PROG_ENABLE;
@@ -433,15 +433,15 @@ hsw_dp_audio_config_update(struct intel_encoder *encoder,
 		tmp |= AUD_M_CTS_M_PROG_ENABLE;
 	}
 
-	intel_de_write(dev_priv, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
+	intel_de_write(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
 }
 
 static void
 hsw_hdmi_audio_config_update(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_audio_component *acomp = dev_priv->display.audio.component;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct i915_audio_component *acomp = i915->display.audio.component;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum port port = encoder->port;
 	int n, rate;
@@ -449,7 +449,7 @@ hsw_hdmi_audio_config_update(struct intel_encoder *encoder,
 
 	rate = acomp ? acomp->aud_sample_rate[port] : 0;
 
-	tmp = intel_de_read(dev_priv, HSW_AUD_CFG(cpu_transcoder));
+	tmp = intel_de_read(i915, HSW_AUD_CFG(cpu_transcoder));
 	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 	tmp &= ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
 	tmp &= ~AUD_CONFIG_N_PROG_ENABLE;
@@ -457,25 +457,25 @@ hsw_hdmi_audio_config_update(struct intel_encoder *encoder,
 
 	n = audio_config_hdmi_get_n(crtc_state, rate);
 	if (n != 0) {
-		drm_dbg_kms(&dev_priv->drm, "using N %d\n", n);
+		drm_dbg_kms(&i915->drm, "using N %d\n", n);
 
 		tmp &= ~AUD_CONFIG_N_MASK;
 		tmp |= AUD_CONFIG_N(n);
 		tmp |= AUD_CONFIG_N_PROG_ENABLE;
 	} else {
-		drm_dbg_kms(&dev_priv->drm, "using automatic N\n");
+		drm_dbg_kms(&i915->drm, "using automatic N\n");
 	}
 
-	intel_de_write(dev_priv, HSW_AUD_CFG(cpu_transcoder), tmp);
+	intel_de_write(i915, HSW_AUD_CFG(cpu_transcoder), tmp);
 
 	/*
 	 * Let's disable "Enable CTS or M Prog bit"
 	 * and let HW calculate the value
 	 */
-	tmp = intel_de_read(dev_priv, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
+	tmp = intel_de_read(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
 	tmp &= ~AUD_M_CTS_M_PROG_ENABLE;
 	tmp &= ~AUD_M_CTS_M_VALUE_INDEX;
-	intel_de_write(dev_priv, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
+	intel_de_write(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
 }
 
 static void
@@ -492,29 +492,29 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 	u32 tmp;
 
-	mutex_lock(&dev_priv->display.audio.mutex);
+	mutex_lock(&i915->display.audio.mutex);
 
 	/* Disable timestamps */
-	tmp = intel_de_read(dev_priv, HSW_AUD_CFG(cpu_transcoder));
+	tmp = intel_de_read(i915, HSW_AUD_CFG(cpu_transcoder));
 	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 	tmp |= AUD_CONFIG_N_PROG_ENABLE;
 	tmp &= ~AUD_CONFIG_UPPER_N_MASK;
 	tmp &= ~AUD_CONFIG_LOWER_N_MASK;
 	if (intel_crtc_has_dp_encoder(old_crtc_state))
 		tmp |= AUD_CONFIG_N_VALUE_INDEX;
-	intel_de_write(dev_priv, HSW_AUD_CFG(cpu_transcoder), tmp);
+	intel_de_write(i915, HSW_AUD_CFG(cpu_transcoder), tmp);
 
 	/* Invalidate ELD */
-	tmp = intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
+	tmp = intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
 	tmp &= ~AUDIO_ELD_VALID(cpu_transcoder);
 	tmp &= ~AUDIO_OUTPUT_ENABLE(cpu_transcoder);
-	intel_de_write(dev_priv, HSW_AUD_PIN_ELD_CP_VLD, tmp);
+	intel_de_write(i915, HSW_AUD_PIN_ELD_CP_VLD, tmp);
 
-	mutex_unlock(&dev_priv->display.audio.mutex);
+	mutex_unlock(&i915->display.audio.mutex);
 }
 
 static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
@@ -632,24 +632,24 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const u8 *eld = connector->eld;
 	u32 tmp;
 	int len, i;
 
-	mutex_lock(&dev_priv->display.audio.mutex);
+	mutex_lock(&i915->display.audio.mutex);
 
 	/* Enable Audio WA for 4k DSC usecases */
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
 		enable_audio_dsc_wa(encoder, crtc_state);
 
 	/* Enable audio presence detect, invalidate ELD */
-	tmp = intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
+	tmp = intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
 	tmp |= AUDIO_OUTPUT_ENABLE(cpu_transcoder);
 	tmp &= ~AUDIO_ELD_VALID(cpu_transcoder);
-	intel_de_write(dev_priv, HSW_AUD_PIN_ELD_CP_VLD, tmp);
+	intel_de_write(i915, HSW_AUD_PIN_ELD_CP_VLD, tmp);
 
 	/*
 	 * FIXME: We're supposed to wait for vblank here, but we have vblanks
@@ -659,45 +659,45 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	 */
 
 	/* Reset ELD write address */
-	tmp = intel_de_read(dev_priv, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder));
+	tmp = intel_de_read(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder));
 	tmp &= ~IBX_ELD_ADDRESS_MASK;
-	intel_de_write(dev_priv, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
+	intel_de_write(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
 
 	/* Up to 84 bytes of hw ELD buffer */
 	len = min(drm_eld_size(eld), 84);
 	for (i = 0; i < len / 4; i++)
-		intel_de_write(dev_priv, HSW_AUD_EDID_DATA(cpu_transcoder),
+		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder),
 			       *((const u32 *)eld + i));
 
 	/* ELD valid */
-	tmp = intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
+	tmp = intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
 	tmp |= AUDIO_ELD_VALID(cpu_transcoder);
-	intel_de_write(dev_priv, HSW_AUD_PIN_ELD_CP_VLD, tmp);
+	intel_de_write(i915, HSW_AUD_PIN_ELD_CP_VLD, tmp);
 
 	/* Enable timestamps */
 	hsw_audio_config_update(encoder, crtc_state);
 
-	mutex_unlock(&dev_priv->display.audio.mutex);
+	mutex_unlock(&i915->display.audio.mutex);
 }
 
 static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
 	enum port port = encoder->port;
 	u32 tmp, eldv;
 	i915_reg_t aud_config, aud_cntrl_st2;
 
-	if (drm_WARN_ON(&dev_priv->drm, port == PORT_A))
+	if (drm_WARN_ON(&i915->drm, port == PORT_A))
 		return;
 
-	if (HAS_PCH_IBX(dev_priv)) {
+	if (HAS_PCH_IBX(i915)) {
 		aud_config = IBX_AUD_CFG(pipe);
 		aud_cntrl_st2 = IBX_AUD_CNTL_ST2;
-	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
 		aud_config = VLV_AUD_CFG(pipe);
 		aud_cntrl_st2 = VLV_AUD_CNTL_ST2;
 	} else {
@@ -706,28 +706,28 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 	}
 
 	/* Disable timestamps */
-	tmp = intel_de_read(dev_priv, aud_config);
+	tmp = intel_de_read(i915, aud_config);
 	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 	tmp |= AUD_CONFIG_N_PROG_ENABLE;
 	tmp &= ~AUD_CONFIG_UPPER_N_MASK;
 	tmp &= ~AUD_CONFIG_LOWER_N_MASK;
 	if (intel_crtc_has_dp_encoder(old_crtc_state))
 		tmp |= AUD_CONFIG_N_VALUE_INDEX;
-	intel_de_write(dev_priv, aud_config, tmp);
+	intel_de_write(i915, aud_config, tmp);
 
 	eldv = IBX_ELD_VALID(port);
 
 	/* Invalidate ELD */
-	tmp = intel_de_read(dev_priv, aud_cntrl_st2);
+	tmp = intel_de_read(i915, aud_cntrl_st2);
 	tmp &= ~eldv;
-	intel_de_write(dev_priv, aud_cntrl_st2, tmp);
+	intel_de_write(i915, aud_cntrl_st2, tmp);
 }
 
 static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_connector *connector = conn_state->connector;
 	enum pipe pipe = crtc->pipe;
@@ -737,7 +737,7 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	int len, i;
 	i915_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
 
-	if (drm_WARN_ON(&dev_priv->drm, port == PORT_A))
+	if (drm_WARN_ON(&i915->drm, port == PORT_A))
 		return;
 
 	/*
@@ -747,13 +747,13 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	 * infrastructure is not there yet.
 	 */
 
-	if (HAS_PCH_IBX(dev_priv)) {
+	if (HAS_PCH_IBX(i915)) {
 		hdmiw_hdmiedid = IBX_HDMIW_HDMIEDID(pipe);
 		aud_config = IBX_AUD_CFG(pipe);
 		aud_cntl_st = IBX_AUD_CNTL_ST(pipe);
 		aud_cntrl_st2 = IBX_AUD_CNTL_ST2;
-	} else if (IS_VALLEYVIEW(dev_priv) ||
-		   IS_CHERRYVIEW(dev_priv)) {
+	} else if (IS_VALLEYVIEW(i915) ||
+		   IS_CHERRYVIEW(i915)) {
 		hdmiw_hdmiedid = VLV_HDMIW_HDMIEDID(pipe);
 		aud_config = VLV_AUD_CFG(pipe);
 		aud_cntl_st = VLV_AUD_CNTL_ST(pipe);
@@ -768,28 +768,28 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	eldv = IBX_ELD_VALID(port);
 
 	/* Invalidate ELD */
-	tmp = intel_de_read(dev_priv, aud_cntrl_st2);
+	tmp = intel_de_read(i915, aud_cntrl_st2);
 	tmp &= ~eldv;
-	intel_de_write(dev_priv, aud_cntrl_st2, tmp);
+	intel_de_write(i915, aud_cntrl_st2, tmp);
 
 	/* Reset ELD write address */
-	tmp = intel_de_read(dev_priv, aud_cntl_st);
+	tmp = intel_de_read(i915, aud_cntl_st);
 	tmp &= ~IBX_ELD_ADDRESS_MASK;
-	intel_de_write(dev_priv, aud_cntl_st, tmp);
+	intel_de_write(i915, aud_cntl_st, tmp);
 
 	/* Up to 84 bytes of hw ELD buffer */
 	len = min(drm_eld_size(eld), 84);
 	for (i = 0; i < len / 4; i++)
-		intel_de_write(dev_priv, hdmiw_hdmiedid,
+		intel_de_write(i915, hdmiw_hdmiedid,
 			       *((const u32 *)eld + i));
 
 	/* ELD valid */
-	tmp = intel_de_read(dev_priv, aud_cntrl_st2);
+	tmp = intel_de_read(i915, aud_cntrl_st2);
 	tmp |= eldv;
-	intel_de_write(dev_priv, aud_cntrl_st2, tmp);
+	intel_de_write(i915, aud_cntrl_st2, tmp);
 
 	/* Enable timestamps */
-	tmp = intel_de_read(dev_priv, aud_config);
+	tmp = intel_de_read(i915, aud_config);
 	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 	tmp &= ~AUD_CONFIG_N_PROG_ENABLE;
 	tmp &= ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
@@ -797,7 +797,7 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 		tmp |= AUD_CONFIG_N_VALUE_INDEX;
 	else
 		tmp |= audio_config_hdmi_pixel_clock(crtc_state);
-	intel_de_write(dev_priv, aud_config, tmp);
+	intel_de_write(i915, aud_config, tmp);
 }
 
 /**
@@ -813,8 +813,8 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state,
 			      const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_audio_component *acomp = dev_priv->display.audio.component;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct i915_audio_component *acomp = i915->display.audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_connector *connector = conn_state->connector;
 	const struct drm_display_mode *adjusted_mode =
@@ -825,30 +825,30 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	if (!crtc_state->has_audio)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio codec on pipe %c, %u bytes ELD\n",
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio codec on pipe %c, %u bytes ELD\n",
 		    connector->base.id, connector->name,
 		    encoder->base.base.id, encoder->base.name,
 		    pipe_name(pipe), drm_eld_size(connector->eld));
 
 	/* FIXME precompute the ELD in .compute_config() */
 	if (!connector->eld[0])
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
 			    connector->base.id, connector->name);
 
 	connector->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
 
-	if (dev_priv->display.funcs.audio)
-		dev_priv->display.funcs.audio->audio_codec_enable(encoder,
+	if (i915->display.funcs.audio)
+		i915->display.funcs.audio->audio_codec_enable(encoder,
 								  crtc_state,
 								  conn_state);
 
-	mutex_lock(&dev_priv->display.audio.mutex);
+	mutex_lock(&i915->display.audio.mutex);
 	encoder->audio_connector = connector;
 
 	/* referred in audio callbacks */
-	dev_priv->display.audio.encoder_map[pipe] = encoder;
-	mutex_unlock(&dev_priv->display.audio.mutex);
+	i915->display.audio.encoder_map[pipe] = encoder;
+	mutex_unlock(&i915->display.audio.mutex);
 
 	if (acomp && acomp->base.audio_ops &&
 	    acomp->base.audio_ops->pin_eld_notify) {
@@ -859,7 +859,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 						 (int) port, (int) pipe);
 	}
 
-	intel_lpe_audio_notify(dev_priv, pipe, port, connector->eld,
+	intel_lpe_audio_notify(i915, pipe, port, connector->eld,
 			       crtc_state->port_clock,
 			       intel_crtc_has_dp_encoder(crtc_state));
 }
@@ -877,8 +877,8 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *old_crtc_state,
 			       const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_audio_component *acomp = dev_priv->display.audio.component;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct i915_audio_component *acomp = i915->display.audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_connector *connector = old_conn_state->connector;
 	enum port port = encoder->port;
@@ -887,19 +887,19 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 	if (!old_crtc_state->has_audio)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable audio codec on pipe %c\n",
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable audio codec on pipe %c\n",
 		    connector->base.id, connector->name,
 		    encoder->base.base.id, encoder->base.name, pipe_name(pipe));
 
-	if (dev_priv->display.funcs.audio)
-		dev_priv->display.funcs.audio->audio_codec_disable(encoder,
+	if (i915->display.funcs.audio)
+		i915->display.funcs.audio->audio_codec_disable(encoder,
 								   old_crtc_state,
 								   old_conn_state);
 
-	mutex_lock(&dev_priv->display.audio.mutex);
+	mutex_lock(&i915->display.audio.mutex);
 	encoder->audio_connector = NULL;
-	dev_priv->display.audio.encoder_map[pipe] = NULL;
-	mutex_unlock(&dev_priv->display.audio.mutex);
+	i915->display.audio.encoder_map[pipe] = NULL;
+	mutex_unlock(&i915->display.audio.mutex);
 
 	if (acomp && acomp->base.audio_ops &&
 	    acomp->base.audio_ops->pin_eld_notify) {
@@ -910,7 +910,7 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 						 (int) port, (int) pipe);
 	}
 
-	intel_lpe_audio_notify(dev_priv, pipe, port, NULL, 0, false);
+	intel_lpe_audio_notify(i915, pipe, port, NULL, 0, false);
 }
 
 static const struct intel_audio_funcs g4x_audio_funcs = {
@@ -930,18 +930,18 @@ static const struct intel_audio_funcs hsw_audio_funcs = {
 
 /**
  * intel_audio_hooks_init - Set up chip specific audio hooks
- * @dev_priv: device private
+ * @i915: device private
  */
-void intel_audio_hooks_init(struct drm_i915_private *dev_priv)
+void intel_audio_hooks_init(struct drm_i915_private *i915)
 {
-	if (IS_G4X(dev_priv)) {
-		dev_priv->display.funcs.audio = &g4x_audio_funcs;
-	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		dev_priv->display.funcs.audio = &ilk_audio_funcs;
-	} else if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >= 8) {
-		dev_priv->display.funcs.audio = &hsw_audio_funcs;
-	} else if (HAS_PCH_SPLIT(dev_priv)) {
-		dev_priv->display.funcs.audio = &ilk_audio_funcs;
+	if (IS_G4X(i915)) {
+		i915->display.funcs.audio = &g4x_audio_funcs;
+	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+		i915->display.funcs.audio = &ilk_audio_funcs;
+	} else if (IS_HASWELL(i915) || DISPLAY_VER(i915) >= 8) {
+		i915->display.funcs.audio = &hsw_audio_funcs;
+	} else if (HAS_PCH_SPLIT(i915)) {
+		i915->display.funcs.audio = &ilk_audio_funcs;
 	}
 }
 
@@ -1000,7 +1000,7 @@ static int glk_force_audio_cdclk_commit(struct intel_atomic_state *state,
 	return drm_atomic_commit(&state->base);
 }
 
-static void glk_force_audio_cdclk(struct drm_i915_private *dev_priv,
+static void glk_force_audio_cdclk(struct drm_i915_private *i915,
 				  bool enable)
 {
 	struct drm_modeset_acquire_ctx ctx;
@@ -1008,13 +1008,13 @@ static void glk_force_audio_cdclk(struct drm_i915_private *dev_priv,
 	struct intel_crtc *crtc;
 	int ret;
 
-	crtc = intel_first_crtc(dev_priv);
+	crtc = intel_first_crtc(i915);
 	if (!crtc)
 		return;
 
 	drm_modeset_acquire_init(&ctx, 0);
-	state = drm_atomic_state_alloc(&dev_priv->drm);
-	if (drm_WARN_ON(&dev_priv->drm, !state))
+	state = drm_atomic_state_alloc(&i915->drm);
+	if (drm_WARN_ON(&i915->drm, !state))
 		return;
 
 	state->acquire_ctx = &ctx;
@@ -1028,7 +1028,7 @@ static void glk_force_audio_cdclk(struct drm_i915_private *dev_priv,
 		goto retry;
 	}
 
-	drm_WARN_ON(&dev_priv->drm, ret);
+	drm_WARN_ON(&i915->drm, ret);
 
 	drm_atomic_state_put(state);
 
@@ -1038,30 +1038,30 @@ static void glk_force_audio_cdclk(struct drm_i915_private *dev_priv,
 
 static unsigned long i915_audio_component_get_power(struct device *kdev)
 {
-	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
 	intel_wakeref_t ret;
 
 	/* Catch potential impedance mismatches before they occur! */
 	BUILD_BUG_ON(sizeof(intel_wakeref_t) > sizeof(unsigned long));
 
-	ret = intel_display_power_get(dev_priv, POWER_DOMAIN_AUDIO_PLAYBACK);
+	ret = intel_display_power_get(i915, POWER_DOMAIN_AUDIO_PLAYBACK);
 
-	if (dev_priv->display.audio.power_refcount++ == 0) {
-		if (DISPLAY_VER(dev_priv) >= 9) {
-			intel_de_write(dev_priv, AUD_FREQ_CNTRL,
-				       dev_priv->display.audio.freq_cntrl);
-			drm_dbg_kms(&dev_priv->drm,
+	if (i915->display.audio.power_refcount++ == 0) {
+		if (DISPLAY_VER(i915) >= 9) {
+			intel_de_write(i915, AUD_FREQ_CNTRL,
+				       i915->display.audio.freq_cntrl);
+			drm_dbg_kms(&i915->drm,
 				    "restored AUD_FREQ_CNTRL to 0x%x\n",
-				    dev_priv->display.audio.freq_cntrl);
+				    i915->display.audio.freq_cntrl);
 		}
 
 		/* Force CDCLK to 2*BCLK as long as we need audio powered. */
-		if (IS_GEMINILAKE(dev_priv))
-			glk_force_audio_cdclk(dev_priv, true);
+		if (IS_GEMINILAKE(i915))
+			glk_force_audio_cdclk(i915, true);
 
-		if (DISPLAY_VER(dev_priv) >= 10)
-			intel_de_write(dev_priv, AUD_PIN_BUF_CTL,
-				       (intel_de_read(dev_priv, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABLE));
+		if (DISPLAY_VER(i915) >= 10)
+			intel_de_write(i915, AUD_PIN_BUF_CTL,
+				       (intel_de_read(i915, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABLE));
 	}
 
 	return ret;
@@ -1070,24 +1070,24 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 static void i915_audio_component_put_power(struct device *kdev,
 					   unsigned long cookie)
 {
-	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
 
 	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
-	if (--dev_priv->display.audio.power_refcount == 0)
-		if (IS_GEMINILAKE(dev_priv))
-			glk_force_audio_cdclk(dev_priv, false);
+	if (--i915->display.audio.power_refcount == 0)
+		if (IS_GEMINILAKE(i915))
+			glk_force_audio_cdclk(i915, false);
 
-	intel_display_power_put(dev_priv, POWER_DOMAIN_AUDIO_PLAYBACK, cookie);
+	intel_display_power_put(i915, POWER_DOMAIN_AUDIO_PLAYBACK, cookie);
 }
 
 static void i915_audio_component_codec_wake_override(struct device *kdev,
 						     bool enable)
 {
-	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
 	unsigned long cookie;
 	u32 tmp;
 
-	if (DISPLAY_VER(dev_priv) < 9)
+	if (DISPLAY_VER(i915) < 9)
 		return;
 
 	cookie = i915_audio_component_get_power(kdev);
@@ -1096,15 +1096,15 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
 	 * Enable/disable generating the codec wake signal, overriding the
 	 * internal logic to generate the codec wake to controller.
 	 */
-	tmp = intel_de_read(dev_priv, HSW_AUD_CHICKENBIT);
+	tmp = intel_de_read(i915, HSW_AUD_CHICKENBIT);
 	tmp &= ~SKL_AUD_CODEC_WAKE_SIGNAL;
-	intel_de_write(dev_priv, HSW_AUD_CHICKENBIT, tmp);
+	intel_de_write(i915, HSW_AUD_CHICKENBIT, tmp);
 	usleep_range(1000, 1500);
 
 	if (enable) {
-		tmp = intel_de_read(dev_priv, HSW_AUD_CHICKENBIT);
+		tmp = intel_de_read(i915, HSW_AUD_CHICKENBIT);
 		tmp |= SKL_AUD_CODEC_WAKE_SIGNAL;
-		intel_de_write(dev_priv, HSW_AUD_CHICKENBIT, tmp);
+		intel_de_write(i915, HSW_AUD_CHICKENBIT, tmp);
 		usleep_range(1000, 1500);
 	}
 
@@ -1114,12 +1114,12 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
 /* Get CDCLK in kHz  */
 static int i915_audio_component_get_cdclk_freq(struct device *kdev)
 {
-	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
 
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DDI(dev_priv)))
+	if (drm_WARN_ON_ONCE(&i915->drm, !HAS_DDI(i915)))
 		return -ENODEV;
 
-	return dev_priv->display.cdclk.hw.cdclk;
+	return i915->display.cdclk.hw.cdclk;
 }
 
 /*
@@ -1132,18 +1132,18 @@ static int i915_audio_component_get_cdclk_freq(struct device *kdev)
  *   will get the right intel_encoder with port matched
  * Non-MST & (pipe < 0): get the right intel_encoder with port matched
  */
-static struct intel_encoder *get_saved_enc(struct drm_i915_private *dev_priv,
-					       int port, int pipe)
+static struct intel_encoder *get_saved_enc(struct drm_i915_private *i915,
+					   int port, int pipe)
 {
 	struct intel_encoder *encoder;
 
 	/* MST */
 	if (pipe >= 0) {
-		if (drm_WARN_ON(&dev_priv->drm,
-				pipe >= ARRAY_SIZE(dev_priv->display.audio.encoder_map)))
+		if (drm_WARN_ON(&i915->drm,
+				pipe >= ARRAY_SIZE(i915->display.audio.encoder_map)))
 			return NULL;
 
-		encoder = dev_priv->display.audio.encoder_map[pipe];
+		encoder = i915->display.audio.encoder_map[pipe];
 		/*
 		 * when bootup, audio driver may not know it is
 		 * MST or not. So it will poll all the port & pipe
@@ -1158,8 +1158,8 @@ static struct intel_encoder *get_saved_enc(struct drm_i915_private *dev_priv,
 	if (pipe > 0)
 		return NULL;
 
-	for_each_pipe(dev_priv, pipe) {
-		encoder = dev_priv->display.audio.encoder_map[pipe];
+	for_each_pipe(i915, pipe) {
+		encoder = i915->display.audio.encoder_map[pipe];
 		if (encoder == NULL)
 			continue;
 
@@ -1176,23 +1176,23 @@ static struct intel_encoder *get_saved_enc(struct drm_i915_private *dev_priv,
 static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 						int pipe, int rate)
 {
-	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
-	struct i915_audio_component *acomp = dev_priv->display.audio.component;
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct i915_audio_component *acomp = i915->display.audio.component;
 	struct intel_encoder *encoder;
 	struct intel_crtc *crtc;
 	unsigned long cookie;
 	int err = 0;
 
-	if (!HAS_DDI(dev_priv))
+	if (!HAS_DDI(i915))
 		return 0;
 
 	cookie = i915_audio_component_get_power(kdev);
-	mutex_lock(&dev_priv->display.audio.mutex);
+	mutex_lock(&i915->display.audio.mutex);
 
 	/* 1. get the pipe */
-	encoder = get_saved_enc(dev_priv, port, pipe);
+	encoder = get_saved_enc(i915, port, pipe);
 	if (!encoder || !encoder->base.crtc) {
-		drm_dbg_kms(&dev_priv->drm, "Not valid for port %c\n",
+		drm_dbg_kms(&i915->drm, "Not valid for port %c\n",
 			    port_name(port));
 		err = -ENODEV;
 		goto unlock;
@@ -1206,7 +1206,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 	hsw_audio_config_update(encoder, crtc->config);
 
  unlock:
-	mutex_unlock(&dev_priv->display.audio.mutex);
+	mutex_unlock(&i915->display.audio.mutex);
 	i915_audio_component_put_power(kdev, cookie);
 	return err;
 }
@@ -1215,18 +1215,18 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 					int pipe, bool *enabled,
 					unsigned char *buf, int max_bytes)
 {
-	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
 	struct intel_encoder *intel_encoder;
 	const u8 *eld;
 	int ret = -EINVAL;
 
-	mutex_lock(&dev_priv->display.audio.mutex);
+	mutex_lock(&i915->display.audio.mutex);
 
-	intel_encoder = get_saved_enc(dev_priv, port, pipe);
+	intel_encoder = get_saved_enc(i915, port, pipe);
 	if (!intel_encoder) {
-		drm_dbg_kms(&dev_priv->drm, "Not valid for port %c\n",
+		drm_dbg_kms(&i915->drm, "Not valid for port %c\n",
 			    port_name(port));
-		mutex_unlock(&dev_priv->display.audio.mutex);
+		mutex_unlock(&i915->display.audio.mutex);
 		return ret;
 	}
 
@@ -1238,7 +1238,7 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 		memcpy(buf, eld, min(max_bytes, ret));
 	}
 
-	mutex_unlock(&dev_priv->display.audio.mutex);
+	mutex_unlock(&i915->display.audio.mutex);
 	return ret;
 }
 
@@ -1256,25 +1256,25 @@ static int i915_audio_component_bind(struct device *i915_kdev,
 				     struct device *hda_kdev, void *data)
 {
 	struct i915_audio_component *acomp = data;
-	struct drm_i915_private *dev_priv = kdev_to_i915(i915_kdev);
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	int i;
 
-	if (drm_WARN_ON(&dev_priv->drm, acomp->base.ops || acomp->base.dev))
+	if (drm_WARN_ON(&i915->drm, acomp->base.ops || acomp->base.dev))
 		return -EEXIST;
 
-	if (drm_WARN_ON(&dev_priv->drm,
+	if (drm_WARN_ON(&i915->drm,
 			!device_link_add(hda_kdev, i915_kdev,
 					 DL_FLAG_STATELESS)))
 		return -ENOMEM;
 
-	drm_modeset_lock_all(&dev_priv->drm);
+	drm_modeset_lock_all(&i915->drm);
 	acomp->base.ops = &i915_audio_component_ops;
 	acomp->base.dev = i915_kdev;
 	BUILD_BUG_ON(MAX_PORTS != I915_MAX_PORTS);
 	for (i = 0; i < ARRAY_SIZE(acomp->aud_sample_rate); i++)
 		acomp->aud_sample_rate[i] = 0;
-	dev_priv->display.audio.component = acomp;
-	drm_modeset_unlock_all(&dev_priv->drm);
+	i915->display.audio.component = acomp;
+	drm_modeset_unlock_all(&i915->drm);
 
 	return 0;
 }
@@ -1283,19 +1283,19 @@ static void i915_audio_component_unbind(struct device *i915_kdev,
 					struct device *hda_kdev, void *data)
 {
 	struct i915_audio_component *acomp = data;
-	struct drm_i915_private *dev_priv = kdev_to_i915(i915_kdev);
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 
-	drm_modeset_lock_all(&dev_priv->drm);
+	drm_modeset_lock_all(&i915->drm);
 	acomp->base.ops = NULL;
 	acomp->base.dev = NULL;
-	dev_priv->display.audio.component = NULL;
-	drm_modeset_unlock_all(&dev_priv->drm);
+	i915->display.audio.component = NULL;
+	drm_modeset_unlock_all(&i915->drm);
 
 	device_link_remove(hda_kdev, i915_kdev);
 
-	if (dev_priv->display.audio.power_refcount)
-		drm_err(&dev_priv->drm, "audio power refcount %d after unbind\n",
-			dev_priv->display.audio.power_refcount);
+	if (i915->display.audio.power_refcount)
+		drm_err(&i915->drm, "audio power refcount %d after unbind\n",
+			i915->display.audio.power_refcount);
 }
 
 static const struct component_ops i915_audio_component_bind_ops = {
@@ -1314,7 +1314,7 @@ static const struct component_ops i915_audio_component_bind_ops = {
 
 /**
  * i915_audio_component_init - initialize and register the audio component
- * @dev_priv: i915 device instance
+ * @i915: i915 device instance
  *
  * This will register with the component framework a child component which
  * will bind dynamically to the snd_hda_intel driver's corresponding master
@@ -1328,83 +1328,83 @@ static const struct component_ops i915_audio_component_bind_ops = {
  * We ignore any error during registration and continue with reduced
  * functionality (i.e. without HDMI audio).
  */
-static void i915_audio_component_init(struct drm_i915_private *dev_priv)
+static void i915_audio_component_init(struct drm_i915_private *i915)
 {
 	u32 aud_freq, aud_freq_init;
 	int ret;
 
-	ret = component_add_typed(dev_priv->drm.dev,
+	ret = component_add_typed(i915->drm.dev,
 				  &i915_audio_component_bind_ops,
 				  I915_COMPONENT_AUDIO);
 	if (ret < 0) {
-		drm_err(&dev_priv->drm,
+		drm_err(&i915->drm,
 			"failed to add audio component (%d)\n", ret);
 		/* continue with reduced functionality */
 		return;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 9) {
-		aud_freq_init = intel_de_read(dev_priv, AUD_FREQ_CNTRL);
+	if (DISPLAY_VER(i915) >= 9) {
+		aud_freq_init = intel_de_read(i915, AUD_FREQ_CNTRL);
 
-		if (DISPLAY_VER(dev_priv) >= 12)
+		if (DISPLAY_VER(i915) >= 12)
 			aud_freq = AUD_FREQ_GEN12;
 		else
 			aud_freq = aud_freq_init;
 
 		/* use BIOS provided value for TGL and RKL unless it is a known bad value */
-		if ((IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv)) &&
+		if ((IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915)) &&
 		    aud_freq_init != AUD_FREQ_TGL_BROKEN)
 			aud_freq = aud_freq_init;
 
-		drm_dbg_kms(&dev_priv->drm, "use AUD_FREQ_CNTRL of 0x%x (init value 0x%x)\n",
+		drm_dbg_kms(&i915->drm, "use AUD_FREQ_CNTRL of 0x%x (init value 0x%x)\n",
 			    aud_freq, aud_freq_init);
 
-		dev_priv->display.audio.freq_cntrl = aud_freq;
+		i915->display.audio.freq_cntrl = aud_freq;
 	}
 
 	/* init with current cdclk */
-	intel_audio_cdclk_change_post(dev_priv);
+	intel_audio_cdclk_change_post(i915);
 
-	dev_priv->display.audio.component_registered = true;
+	i915->display.audio.component_registered = true;
 }
 
 /**
  * i915_audio_component_cleanup - deregister the audio component
- * @dev_priv: i915 device instance
+ * @i915: i915 device instance
  *
  * Deregisters the audio component, breaking any existing binding to the
  * corresponding snd_hda_intel driver's master component.
  */
-static void i915_audio_component_cleanup(struct drm_i915_private *dev_priv)
+static void i915_audio_component_cleanup(struct drm_i915_private *i915)
 {
-	if (!dev_priv->display.audio.component_registered)
+	if (!i915->display.audio.component_registered)
 		return;
 
-	component_del(dev_priv->drm.dev, &i915_audio_component_bind_ops);
-	dev_priv->display.audio.component_registered = false;
+	component_del(i915->drm.dev, &i915_audio_component_bind_ops);
+	i915->display.audio.component_registered = false;
 }
 
 /**
  * intel_audio_init() - Initialize the audio driver either using
  * component framework or using lpe audio bridge
- * @dev_priv: the i915 drm device private data
+ * @i915: the i915 drm device private data
  *
  */
-void intel_audio_init(struct drm_i915_private *dev_priv)
+void intel_audio_init(struct drm_i915_private *i915)
 {
-	if (intel_lpe_audio_init(dev_priv) < 0)
-		i915_audio_component_init(dev_priv);
+	if (intel_lpe_audio_init(i915) < 0)
+		i915_audio_component_init(i915);
 }
 
 /**
  * intel_audio_deinit() - deinitialize the audio driver
- * @dev_priv: the i915 drm device private data
+ * @i915: the i915 drm device private data
  *
  */
-void intel_audio_deinit(struct drm_i915_private *dev_priv)
+void intel_audio_deinit(struct drm_i915_private *i915)
 {
-	if (dev_priv->display.audio.lpe.platdev != NULL)
-		intel_lpe_audio_teardown(dev_priv);
+	if (i915->display.audio.lpe.platdev != NULL)
+		intel_lpe_audio_teardown(i915);
 	else
-		i915_audio_component_cleanup(dev_priv);
+		i915_audio_component_cleanup(i915);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
index d1e5844e3484..e25248cdac51 100644
--- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
@@ -8,7 +8,7 @@
 
 #include "i915_reg_defs.h"
 
-#define G4X_AUD_VID_DID			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x62020)
+#define G4X_AUD_VID_DID			_MMIO(DISPLAY_MMIO_BASE(i915) + 0x62020)
 #define   INTEL_AUDIO_DEVCL		0x808629FB
 #define   INTEL_AUDIO_DEVBLC		0x80862801
 #define   INTEL_AUDIO_DEVCTG		0x80862802
-- 
2.35.1

