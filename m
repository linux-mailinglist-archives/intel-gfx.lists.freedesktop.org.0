Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 443EF60E617
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:03:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43DDC10E611;
	Wed, 26 Oct 2022 17:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB85210E60A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666803760; x=1698339760;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WN4x6gTpBLpUzOmzeBPWHOpI75Nwyf7Fps+yYjP3ycM=;
 b=gOpPpCWncw+G4yuKzlPrUIe8mFr9Iy4wiwoERM3yRYG5h9tmnm2+Uyge
 xkVgNFjXBfKXZps4+M1Tgy3r2o9Sb9XlpPX8ak9RZW1utI5nCFhe2RuJr
 P99AwCJ+ZsyVaP7dfptGkDaSpHIjY40px7OJ3AidMogyf4qD9mFh3rRdu
 w+L2WOjfnfdN6xmQR6d2msFK5l2BdeMMlHpG95+IX3zoQtjEiJUC5Tlgp
 AMkYno1tZyzVgpIlUKNWolLQi+lGBN1tgU2LHKkeLwSIIxraf88j6owye
 OZeUocdjfPxEFGiQ+VM+LA7Sg6t3EzJig6kYTTfSAcOFgzMODpm3f9i1j g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334625126"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334625126"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:02:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632090880"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632090880"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 10:02:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 20:02:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 20:01:47 +0300
Message-Id: <20221026170150.2654-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/15] drm/i915/audio: Use intel_de_rmw() for
 most audio registers
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

The audio code does a lot of RMW accesses. Utilize
intel_de_rmw() to make that a bit less tedious.

There are still some hand rolled RMW left, but those have
a lot of code in between the read and write to calculate
the new value, so would need some refactoring first.

v2: Add parens around the ?: to satisfy the robot

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 136 +++++++++------------
 1 file changed, 56 insertions(+), 80 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index f4c319a3003b..9ba1351f2c6d 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -319,12 +319,10 @@ static void g4x_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	u32 tmp;
 
 	/* Invalidate ELD */
-	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
-	tmp &= ~G4X_ELD_VALID;
-	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
+	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
+		     G4X_ELD_VALID, 0);
 }
 
 static void g4x_audio_codec_enable(struct intel_encoder *encoder,
@@ -335,11 +333,9 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 	struct drm_connector *connector = conn_state->connector;
 	const u32 *eld = (const u32 *)connector->eld;
 	int eld_buffer_size, len, i;
-	u32 tmp;
 
-	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
-	tmp &= ~(G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK);
-	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
+	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
+		     G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK, 0);
 
 	eld_buffer_size = g4x_eld_buffer_size(i915);
 	len = min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
@@ -352,9 +348,8 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 	drm_WARN_ON(&i915->drm,
 		    (intel_de_read(i915, G4X_AUD_CNTL_ST) & G4X_ELD_ADDRESS_MASK) != 0);
 
-	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
-	tmp |= G4X_ELD_VALID;
-	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
+	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
+		     0, G4X_ELD_VALID);
 }
 
 static void
@@ -474,25 +469,22 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
-	u32 tmp;
 
 	mutex_lock(&i915->display.audio.mutex);
 
 	/* Disable timestamps */
-	tmp = intel_de_read(i915, HSW_AUD_CFG(cpu_transcoder));
-	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
-	tmp |= AUD_CONFIG_N_PROG_ENABLE;
-	tmp &= ~AUD_CONFIG_UPPER_N_MASK;
-	tmp &= ~AUD_CONFIG_LOWER_N_MASK;
-	if (intel_crtc_has_dp_encoder(old_crtc_state))
-		tmp |= AUD_CONFIG_N_VALUE_INDEX;
-	intel_de_write(i915, HSW_AUD_CFG(cpu_transcoder), tmp);
+	intel_de_rmw(i915, HSW_AUD_CFG(cpu_transcoder),
+		     AUD_CONFIG_N_VALUE_INDEX |
+		     AUD_CONFIG_UPPER_N_MASK |
+		     AUD_CONFIG_LOWER_N_MASK,
+		     AUD_CONFIG_N_PROG_ENABLE |
+		     (intel_crtc_has_dp_encoder(old_crtc_state) ?
+		      AUD_CONFIG_N_VALUE_INDEX : 0));
 
-	/* Invalidate ELD */
-	tmp = intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
-	tmp &= ~AUDIO_ELD_VALID(cpu_transcoder);
-	tmp &= ~AUDIO_OUTPUT_ENABLE(cpu_transcoder);
-	intel_de_write(i915, HSW_AUD_PIN_ELD_CP_VLD, tmp);
+	/* Disable audio presence detect, invalidate ELD */
+	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
+		     AUDIO_ELD_VALID(cpu_transcoder) |
+		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
 
 	mutex_unlock(&i915->display.audio.mutex);
 }
@@ -615,7 +607,6 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const u32 *eld = (const u32 *)connector->eld;
 	int eld_buffer_size, len, i;
-	u32 tmp;
 
 	mutex_lock(&i915->display.audio.mutex);
 
@@ -624,10 +615,9 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 		enable_audio_dsc_wa(encoder, crtc_state);
 
 	/* Enable audio presence detect, invalidate ELD */
-	tmp = intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
-	tmp |= AUDIO_OUTPUT_ENABLE(cpu_transcoder);
-	tmp &= ~AUDIO_ELD_VALID(cpu_transcoder);
-	intel_de_write(i915, HSW_AUD_PIN_ELD_CP_VLD, tmp);
+	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
+		     AUDIO_ELD_VALID(cpu_transcoder),
+		     AUDIO_OUTPUT_ENABLE(cpu_transcoder));
 
 	/*
 	 * FIXME: We're supposed to wait for vblank here, but we have vblanks
@@ -636,10 +626,9 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	 * infrastructure is not there yet.
 	 */
 
-	/* Reset ELD write address */
-	tmp = intel_de_read(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder));
-	tmp &= ~IBX_ELD_ADDRESS_MASK;
-	intel_de_write(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
+	/* Reset ELD address */
+	intel_de_rmw(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder),
+		     IBX_ELD_ADDRESS_MASK, 0);
 
 	eld_buffer_size = hsw_eld_buffer_size(i915, cpu_transcoder);
 	len = min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
@@ -654,9 +643,8 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 		     IBX_ELD_ADDRESS_MASK) != 0);
 
 	/* ELD valid */
-	tmp = intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
-	tmp |= AUDIO_ELD_VALID(cpu_transcoder);
-	intel_de_write(i915, HSW_AUD_PIN_ELD_CP_VLD, tmp);
+	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
+		     0, AUDIO_ELD_VALID(cpu_transcoder));
 
 	/* Enable timestamps */
 	hsw_audio_config_update(encoder, crtc_state);
@@ -710,10 +698,9 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	enum pipe pipe = crtc->pipe;
 	enum port port = encoder->port;
+	enum pipe pipe = crtc->pipe;
 	struct ilk_audio_regs regs;
-	u32 tmp;
 
 	if (drm_WARN_ON(&i915->drm, port == PORT_A))
 		return;
@@ -723,19 +710,17 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 	mutex_lock(&i915->display.audio.mutex);
 
 	/* Disable timestamps */
-	tmp = intel_de_read(i915, regs.aud_config);
-	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
-	tmp |= AUD_CONFIG_N_PROG_ENABLE;
-	tmp &= ~AUD_CONFIG_UPPER_N_MASK;
-	tmp &= ~AUD_CONFIG_LOWER_N_MASK;
-	if (intel_crtc_has_dp_encoder(old_crtc_state))
-		tmp |= AUD_CONFIG_N_VALUE_INDEX;
-	intel_de_write(i915, regs.aud_config, tmp);
+	intel_de_rmw(i915, regs.aud_config,
+		     AUD_CONFIG_N_VALUE_INDEX |
+		     AUD_CONFIG_UPPER_N_MASK |
+		     AUD_CONFIG_LOWER_N_MASK,
+		     AUD_CONFIG_N_PROG_ENABLE |
+		     (intel_crtc_has_dp_encoder(old_crtc_state) ?
+		      AUD_CONFIG_N_VALUE_INDEX : 0));
 
 	/* Invalidate ELD */
-	tmp = intel_de_read(i915, regs.aud_cntrl_st2);
-	tmp &= ~IBX_ELD_VALID(port);
-	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
+	intel_de_rmw(i915, regs.aud_cntrl_st2,
+		     IBX_ELD_VALID(port), 0);
 
 	mutex_unlock(&i915->display.audio.mutex);
 }
@@ -748,11 +733,10 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_connector *connector = conn_state->connector;
 	const u32 *eld = (const u32 *)connector->eld;
-	enum pipe pipe = crtc->pipe;
 	enum port port = encoder->port;
+	enum pipe pipe = crtc->pipe;
 	int eld_buffer_size, len, i;
 	struct ilk_audio_regs regs;
-	u32 tmp;
 
 	if (drm_WARN_ON(&i915->drm, port == PORT_A))
 		return;
@@ -769,14 +753,12 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	mutex_lock(&i915->display.audio.mutex);
 
 	/* Invalidate ELD */
-	tmp = intel_de_read(i915, regs.aud_cntrl_st2);
-	tmp &= ~IBX_ELD_VALID(port);
-	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
+	intel_de_rmw(i915, regs.aud_cntrl_st2,
+		     IBX_ELD_VALID(port), 0);
 
-	/* Reset ELD write address */
-	tmp = intel_de_read(i915, regs.aud_cntl_st);
-	tmp &= ~IBX_ELD_ADDRESS_MASK;
-	intel_de_write(i915, regs.aud_cntl_st, tmp);
+	/* Reset ELD address */
+	intel_de_rmw(i915, regs.aud_cntl_st,
+		     IBX_ELD_ADDRESS_MASK, 0);
 
 	eld_buffer_size = ilk_eld_buffer_size(i915, pipe);
 	len = min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
@@ -790,20 +772,17 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 		    (intel_de_read(i915, regs.aud_cntl_st) & IBX_ELD_ADDRESS_MASK) != 0);
 
 	/* ELD valid */
-	tmp = intel_de_read(i915, regs.aud_cntrl_st2);
-	tmp |= IBX_ELD_VALID(port);
-	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
+	intel_de_rmw(i915, regs.aud_cntrl_st2,
+		     0, IBX_ELD_VALID(port));
 
 	/* Enable timestamps */
-	tmp = intel_de_read(i915, regs.aud_config);
-	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
-	tmp &= ~AUD_CONFIG_N_PROG_ENABLE;
-	tmp &= ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
-	if (intel_crtc_has_dp_encoder(crtc_state))
-		tmp |= AUD_CONFIG_N_VALUE_INDEX;
-	else
-		tmp |= audio_config_hdmi_pixel_clock(crtc_state);
-	intel_de_write(i915, regs.aud_config, tmp);
+	intel_de_rmw(i915, regs.aud_config,
+		     AUD_CONFIG_N_VALUE_INDEX |
+		     AUD_CONFIG_N_PROG_ENABLE |
+		     AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK,
+		     (intel_crtc_has_dp_encoder(crtc_state) ?
+		      AUD_CONFIG_N_VALUE_INDEX :
+		      audio_config_hdmi_pixel_clock(crtc_state)));
 
 	mutex_unlock(&i915->display.audio.mutex);
 }
@@ -1067,8 +1046,8 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 			glk_force_audio_cdclk(i915, true);
 
 		if (DISPLAY_VER(i915) >= 10)
-			intel_de_write(i915, AUD_PIN_BUF_CTL,
-				       (intel_de_read(i915, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABLE));
+			intel_de_rmw(i915, AUD_PIN_BUF_CTL,
+				     0, AUD_PIN_BUF_ENABLE);
 	}
 
 	return ret;
@@ -1092,7 +1071,6 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
 {
 	struct drm_i915_private *i915 = kdev_to_i915(kdev);
 	unsigned long cookie;
-	u32 tmp;
 
 	if (DISPLAY_VER(i915) < 9)
 		return;
@@ -1103,15 +1081,13 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
 	 * Enable/disable generating the codec wake signal, overriding the
 	 * internal logic to generate the codec wake to controller.
 	 */
-	tmp = intel_de_read(i915, HSW_AUD_CHICKENBIT);
-	tmp &= ~SKL_AUD_CODEC_WAKE_SIGNAL;
-	intel_de_write(i915, HSW_AUD_CHICKENBIT, tmp);
+	intel_de_rmw(i915, HSW_AUD_CHICKENBIT,
+		     SKL_AUD_CODEC_WAKE_SIGNAL, 0);
 	usleep_range(1000, 1500);
 
 	if (enable) {
-		tmp = intel_de_read(i915, HSW_AUD_CHICKENBIT);
-		tmp |= SKL_AUD_CODEC_WAKE_SIGNAL;
-		intel_de_write(i915, HSW_AUD_CHICKENBIT, tmp);
+		intel_de_rmw(i915, HSW_AUD_CHICKENBIT,
+			     0, SKL_AUD_CODEC_WAKE_SIGNAL);
 		usleep_range(1000, 1500);
 	}
 
-- 
2.37.4

