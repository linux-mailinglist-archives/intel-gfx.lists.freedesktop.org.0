Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1248B5FB8CE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E8410E8D0;
	Tue, 11 Oct 2022 17:01:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CAE510E97D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507663; x=1697043663;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qT29Lgi75i3pJeC7lvjMhXL0P40LMonrai4IY2CaN70=;
 b=IqpZKQMdft1CbZ2glwcXO5KuJMMbYR4PQ8omJyJaiCH9IgVDe+f8y/K9
 AyP/u9ZhykNhGXySPCh9/SEQkh3GILTZntfMb6w7ZQxR99sUEe/57b/lW
 ZNSRdq16ldh6wptkImZN/Io9AX1IRV9/PsspidnWT5kGAXqWmb27GtqrX
 cO9tZ4HhGTv2Pa5D4d9OxUVVmVA2a9A8JrMdEKPK0O45Jk/m/rxUmk0yR
 ldVNOhHmmE0ZGQdpnSWljCWl0N81s8sTJheAbwLepgV78cio1hE8IooPf
 FMkDaPbYhFVTfS6UnKwFD2+m0NUBJZomjXI3GtnVVAvrqMb7nvxlma5mi g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="390872100"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="390872100"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:01:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621475781"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="621475781"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Oct 2022 10:00:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:00:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 20:00:01 +0300
Message-Id: <20221011170011.17198-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/22] drm/i915/audio: Use intel_de_rmw() for
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The audio code does a lot of RMW accesses. Utilize
intel_de_rmw() to make that a bit less tedious.

There are still some hand rolled RMW left, but those have
a lot of code in between the read and write to calculate
the new value, so would need some refactoring first.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 136 +++++++++------------
 1 file changed, 56 insertions(+), 80 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 9f64f52f895f..1b928d283b8d 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -318,12 +318,10 @@ static void g4x_audio_codec_disable(struct intel_encoder *encoder,
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
@@ -334,11 +332,9 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
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
@@ -351,9 +347,8 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 	drm_WARN_ON(&i915->drm,
 		    (intel_de_read(i915, G4X_AUD_CNTL_ST) & G4X_ELD_ADDRESS_MASK) != 0);
 
-	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
-	tmp |= G4X_ELD_VALID;
-	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
+	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
+		     0, G4X_ELD_VALID);
 }
 
 static void
@@ -472,25 +467,22 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
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
+		     intel_crtc_has_dp_encoder(old_crtc_state) ?
+		     AUD_CONFIG_N_VALUE_INDEX : 0);
 
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
@@ -613,7 +605,6 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const u32 *eld = (const u32 *)connector->eld;
 	int eld_buffer_size, len, i;
-	u32 tmp;
 
 	mutex_lock(&i915->display.audio.mutex);
 
@@ -622,10 +613,9 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
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
@@ -634,10 +624,9 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
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
@@ -652,9 +641,8 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 		     IBX_ELD_ADDRESS_MASK) != 0);
 
 	/* ELD valid */
-	tmp = intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
-	tmp |= AUDIO_ELD_VALID(cpu_transcoder);
-	intel_de_write(i915, HSW_AUD_PIN_ELD_CP_VLD, tmp);
+	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
+		     0, AUDIO_ELD_VALID(cpu_transcoder));
 
 	/* Enable timestamps */
 	hsw_audio_config_update(encoder, crtc_state);
@@ -707,10 +695,9 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
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
@@ -720,19 +707,17 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
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
+		     intel_crtc_has_dp_encoder(old_crtc_state) ?
+		     AUD_CONFIG_N_VALUE_INDEX : 0);
 
 	/* Invalidate ELD */
-	tmp = intel_de_read(i915, regs.aud_cntrl_st2);
-	tmp &= ~IBX_ELD_VALID(port);
-	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
+	intel_de_rmw(i915, regs.aud_cntrl_st2,
+		     IBX_ELD_VALID(port), 0);
 
 	mutex_unlock(&i915->display.audio.mutex);
 }
@@ -745,11 +730,10 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
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
@@ -766,14 +750,12 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
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
@@ -787,20 +769,17 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
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
+		     intel_crtc_has_dp_encoder(crtc_state) ?
+		     AUD_CONFIG_N_VALUE_INDEX :
+		     audio_config_hdmi_pixel_clock(crtc_state));
 
 	mutex_unlock(&i915->display.audio.mutex);
 }
@@ -1065,8 +1044,8 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 			glk_force_audio_cdclk(i915, true);
 
 		if (DISPLAY_VER(i915) >= 10)
-			intel_de_write(i915, AUD_PIN_BUF_CTL,
-				       (intel_de_read(i915, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABLE));
+			intel_de_rmw(i915, AUD_PIN_BUF_CTL,
+				     0, AUD_PIN_BUF_ENABLE);
 	}
 
 	return ret;
@@ -1090,7 +1069,6 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
 {
 	struct drm_i915_private *i915 = kdev_to_i915(kdev);
 	unsigned long cookie;
-	u32 tmp;
 
 	if (DISPLAY_VER(i915) < 9)
 		return;
@@ -1101,15 +1079,13 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
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
2.35.1

