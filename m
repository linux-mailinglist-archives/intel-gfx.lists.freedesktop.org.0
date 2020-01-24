Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 082D51485F6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:25:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE22472A6B;
	Fri, 24 Jan 2020 13:25:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5252E72A6B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:25:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:09 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="230290753"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:23 +0200
Message-Id: <ca53d8a5ecd1045325447b728376c8aa2891905f.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 02/33] drm/i915/audio: use intel_de_*() functions
 for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 112 +++++++++++----------
 1 file changed, 58 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index f9f4460136b0..3926b9b9a09f 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -291,18 +291,18 @@ static bool intel_eld_uptodate(struct drm_connector *connector,
 	u32 tmp;
 	int i;
 
-	tmp = I915_READ(reg_eldv);
+	tmp = intel_de_read(dev_priv, reg_eldv);
 	tmp &= bits_eldv;
 
 	if (!tmp)
 		return false;
 
-	tmp = I915_READ(reg_elda);
+	tmp = intel_de_read(dev_priv, reg_elda);
 	tmp &= ~bits_elda;
-	I915_WRITE(reg_elda, tmp);
+	intel_de_write(dev_priv, reg_elda, tmp);
 
 	for (i = 0; i < drm_eld_size(eld) / 4; i++)
-		if (I915_READ(reg_edid) != *((const u32 *)eld + i))
+		if (intel_de_read(dev_priv, reg_edid) != *((const u32 *)eld + i))
 			return false;
 
 	return true;
@@ -317,16 +317,16 @@ static void g4x_audio_codec_disable(struct intel_encoder *encoder,
 
 	drm_dbg_kms(&dev_priv->drm, "Disable audio codec\n");
 
-	tmp = I915_READ(G4X_AUD_VID_DID);
+	tmp = intel_de_read(dev_priv, G4X_AUD_VID_DID);
 	if (tmp == INTEL_AUDIO_DEVBLC || tmp == INTEL_AUDIO_DEVCL)
 		eldv = G4X_ELDV_DEVCL_DEVBLC;
 	else
 		eldv = G4X_ELDV_DEVCTG;
 
 	/* Invalidate ELD */
-	tmp = I915_READ(G4X_AUD_CNTL_ST);
+	tmp = intel_de_read(dev_priv, G4X_AUD_CNTL_ST);
 	tmp &= ~eldv;
-	I915_WRITE(G4X_AUD_CNTL_ST, tmp);
+	intel_de_write(dev_priv, G4X_AUD_CNTL_ST, tmp);
 }
 
 static void g4x_audio_codec_enable(struct intel_encoder *encoder,
@@ -343,7 +343,7 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 	drm_dbg_kms(&dev_priv->drm, "Enable audio codec, %u bytes ELD\n",
 		    drm_eld_size(eld));
 
-	tmp = I915_READ(G4X_AUD_VID_DID);
+	tmp = intel_de_read(dev_priv, G4X_AUD_VID_DID);
 	if (tmp == INTEL_AUDIO_DEVBLC || tmp == INTEL_AUDIO_DEVCL)
 		eldv = G4X_ELDV_DEVCL_DEVBLC;
 	else
@@ -355,19 +355,20 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 			       G4X_HDMIW_HDMIEDID))
 		return;
 
-	tmp = I915_READ(G4X_AUD_CNTL_ST);
+	tmp = intel_de_read(dev_priv, G4X_AUD_CNTL_ST);
 	tmp &= ~(eldv | G4X_ELD_ADDR_MASK);
 	len = (tmp >> 9) & 0x1f;		/* ELD buffer size */
-	I915_WRITE(G4X_AUD_CNTL_ST, tmp);
+	intel_de_write(dev_priv, G4X_AUD_CNTL_ST, tmp);
 
 	len = min(drm_eld_size(eld) / 4, len);
 	drm_dbg(&dev_priv->drm, "ELD size %d\n", len);
 	for (i = 0; i < len; i++)
-		I915_WRITE(G4X_HDMIW_HDMIEDID, *((const u32 *)eld + i));
+		intel_de_write(dev_priv, G4X_HDMIW_HDMIEDID,
+			       *((const u32 *)eld + i));
 
-	tmp = I915_READ(G4X_AUD_CNTL_ST);
+	tmp = intel_de_read(dev_priv, G4X_AUD_CNTL_ST);
 	tmp |= eldv;
-	I915_WRITE(G4X_AUD_CNTL_ST, tmp);
+	intel_de_write(dev_priv, G4X_AUD_CNTL_ST, tmp);
 }
 
 static void
@@ -390,7 +391,7 @@ hsw_dp_audio_config_update(struct intel_encoder *encoder,
 	else
 		drm_dbg_kms(&dev_priv->drm, "using automatic Maud, Naud\n");
 
-	tmp = I915_READ(HSW_AUD_CFG(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, HSW_AUD_CFG(cpu_transcoder));
 	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 	tmp &= ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
 	tmp &= ~AUD_CONFIG_N_PROG_ENABLE;
@@ -402,9 +403,9 @@ hsw_dp_audio_config_update(struct intel_encoder *encoder,
 		tmp |= AUD_CONFIG_N_PROG_ENABLE;
 	}
 
-	I915_WRITE(HSW_AUD_CFG(cpu_transcoder), tmp);
+	intel_de_write(dev_priv, HSW_AUD_CFG(cpu_transcoder), tmp);
 
-	tmp = I915_READ(HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
 	tmp &= ~AUD_CONFIG_M_MASK;
 	tmp &= ~AUD_M_CTS_M_VALUE_INDEX;
 	tmp &= ~AUD_M_CTS_M_PROG_ENABLE;
@@ -415,7 +416,7 @@ hsw_dp_audio_config_update(struct intel_encoder *encoder,
 		tmp |= AUD_M_CTS_M_PROG_ENABLE;
 	}
 
-	I915_WRITE(HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
+	intel_de_write(dev_priv, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
 }
 
 static void
@@ -431,7 +432,7 @@ hsw_hdmi_audio_config_update(struct intel_encoder *encoder,
 
 	rate = acomp ? acomp->aud_sample_rate[port] : 0;
 
-	tmp = I915_READ(HSW_AUD_CFG(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, HSW_AUD_CFG(cpu_transcoder));
 	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 	tmp &= ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
 	tmp &= ~AUD_CONFIG_N_PROG_ENABLE;
@@ -448,16 +449,16 @@ hsw_hdmi_audio_config_update(struct intel_encoder *encoder,
 		drm_dbg_kms(&dev_priv->drm, "using automatic N\n");
 	}
 
-	I915_WRITE(HSW_AUD_CFG(cpu_transcoder), tmp);
+	intel_de_write(dev_priv, HSW_AUD_CFG(cpu_transcoder), tmp);
 
 	/*
 	 * Let's disable "Enable CTS or M Prog bit"
 	 * and let HW calculate the value
 	 */
-	tmp = I915_READ(HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
 	tmp &= ~AUD_M_CTS_M_PROG_ENABLE;
 	tmp &= ~AUD_M_CTS_M_VALUE_INDEX;
-	I915_WRITE(HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
+	intel_de_write(dev_priv, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
 }
 
 static void
@@ -484,20 +485,20 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	mutex_lock(&dev_priv->av_mutex);
 
 	/* Disable timestamps */
-	tmp = I915_READ(HSW_AUD_CFG(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, HSW_AUD_CFG(cpu_transcoder));
 	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 	tmp |= AUD_CONFIG_N_PROG_ENABLE;
 	tmp &= ~AUD_CONFIG_UPPER_N_MASK;
 	tmp &= ~AUD_CONFIG_LOWER_N_MASK;
 	if (intel_crtc_has_dp_encoder(old_crtc_state))
 		tmp |= AUD_CONFIG_N_VALUE_INDEX;
-	I915_WRITE(HSW_AUD_CFG(cpu_transcoder), tmp);
+	intel_de_write(dev_priv, HSW_AUD_CFG(cpu_transcoder), tmp);
 
 	/* Invalidate ELD */
-	tmp = I915_READ(HSW_AUD_PIN_ELD_CP_VLD);
+	tmp = intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
 	tmp &= ~AUDIO_ELD_VALID(cpu_transcoder);
 	tmp &= ~AUDIO_OUTPUT_ENABLE(cpu_transcoder);
-	I915_WRITE(HSW_AUD_PIN_ELD_CP_VLD, tmp);
+	intel_de_write(dev_priv, HSW_AUD_PIN_ELD_CP_VLD, tmp);
 
 	mutex_unlock(&dev_priv->av_mutex);
 }
@@ -520,10 +521,10 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	mutex_lock(&dev_priv->av_mutex);
 
 	/* Enable audio presence detect, invalidate ELD */
-	tmp = I915_READ(HSW_AUD_PIN_ELD_CP_VLD);
+	tmp = intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
 	tmp |= AUDIO_OUTPUT_ENABLE(cpu_transcoder);
 	tmp &= ~AUDIO_ELD_VALID(cpu_transcoder);
-	I915_WRITE(HSW_AUD_PIN_ELD_CP_VLD, tmp);
+	intel_de_write(dev_priv, HSW_AUD_PIN_ELD_CP_VLD, tmp);
 
 	/*
 	 * FIXME: We're supposed to wait for vblank here, but we have vblanks
@@ -533,19 +534,20 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	 */
 
 	/* Reset ELD write address */
-	tmp = I915_READ(HSW_AUD_DIP_ELD_CTRL(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder));
 	tmp &= ~IBX_ELD_ADDRESS_MASK;
-	I915_WRITE(HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
+	intel_de_write(dev_priv, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
 
 	/* Up to 84 bytes of hw ELD buffer */
 	len = min(drm_eld_size(eld), 84);
 	for (i = 0; i < len / 4; i++)
-		I915_WRITE(HSW_AUD_EDID_DATA(cpu_transcoder), *((const u32 *)eld + i));
+		intel_de_write(dev_priv, HSW_AUD_EDID_DATA(cpu_transcoder),
+			       *((const u32 *)eld + i));
 
 	/* ELD valid */
-	tmp = I915_READ(HSW_AUD_PIN_ELD_CP_VLD);
+	tmp = intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
 	tmp |= AUDIO_ELD_VALID(cpu_transcoder);
-	I915_WRITE(HSW_AUD_PIN_ELD_CP_VLD, tmp);
+	intel_de_write(dev_priv, HSW_AUD_PIN_ELD_CP_VLD, tmp);
 
 	/* Enable timestamps */
 	hsw_audio_config_update(encoder, crtc_state);
@@ -584,21 +586,21 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 	}
 
 	/* Disable timestamps */
-	tmp = I915_READ(aud_config);
+	tmp = intel_de_read(dev_priv, aud_config);
 	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 	tmp |= AUD_CONFIG_N_PROG_ENABLE;
 	tmp &= ~AUD_CONFIG_UPPER_N_MASK;
 	tmp &= ~AUD_CONFIG_LOWER_N_MASK;
 	if (intel_crtc_has_dp_encoder(old_crtc_state))
 		tmp |= AUD_CONFIG_N_VALUE_INDEX;
-	I915_WRITE(aud_config, tmp);
+	intel_de_write(dev_priv, aud_config, tmp);
 
 	eldv = IBX_ELD_VALID(port);
 
 	/* Invalidate ELD */
-	tmp = I915_READ(aud_cntrl_st2);
+	tmp = intel_de_read(dev_priv, aud_cntrl_st2);
 	tmp &= ~eldv;
-	I915_WRITE(aud_cntrl_st2, tmp);
+	intel_de_write(dev_priv, aud_cntrl_st2, tmp);
 }
 
 static void ilk_audio_codec_enable(struct intel_encoder *encoder,
@@ -651,27 +653,28 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	eldv = IBX_ELD_VALID(port);
 
 	/* Invalidate ELD */
-	tmp = I915_READ(aud_cntrl_st2);
+	tmp = intel_de_read(dev_priv, aud_cntrl_st2);
 	tmp &= ~eldv;
-	I915_WRITE(aud_cntrl_st2, tmp);
+	intel_de_write(dev_priv, aud_cntrl_st2, tmp);
 
 	/* Reset ELD write address */
-	tmp = I915_READ(aud_cntl_st);
+	tmp = intel_de_read(dev_priv, aud_cntl_st);
 	tmp &= ~IBX_ELD_ADDRESS_MASK;
-	I915_WRITE(aud_cntl_st, tmp);
+	intel_de_write(dev_priv, aud_cntl_st, tmp);
 
 	/* Up to 84 bytes of hw ELD buffer */
 	len = min(drm_eld_size(eld), 84);
 	for (i = 0; i < len / 4; i++)
-		I915_WRITE(hdmiw_hdmiedid, *((const u32 *)eld + i));
+		intel_de_write(dev_priv, hdmiw_hdmiedid,
+			       *((const u32 *)eld + i));
 
 	/* ELD valid */
-	tmp = I915_READ(aud_cntrl_st2);
+	tmp = intel_de_read(dev_priv, aud_cntrl_st2);
 	tmp |= eldv;
-	I915_WRITE(aud_cntrl_st2, tmp);
+	intel_de_write(dev_priv, aud_cntrl_st2, tmp);
 
 	/* Enable timestamps */
-	tmp = I915_READ(aud_config);
+	tmp = intel_de_read(dev_priv, aud_config);
 	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 	tmp &= ~AUD_CONFIG_N_PROG_ENABLE;
 	tmp &= ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
@@ -679,7 +682,7 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 		tmp |= AUD_CONFIG_N_VALUE_INDEX;
 	else
 		tmp |= audio_config_hdmi_pixel_clock(crtc_state);
-	I915_WRITE(aud_config, tmp);
+	intel_de_write(dev_priv, aud_config, tmp);
 }
 
 /**
@@ -856,7 +859,8 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 
 	if (dev_priv->audio_power_refcount++ == 0) {
 		if (IS_TIGERLAKE(dev_priv) || IS_ICELAKE(dev_priv)) {
-			I915_WRITE(AUD_FREQ_CNTRL, dev_priv->audio_freq_cntrl);
+			intel_de_write(dev_priv, AUD_FREQ_CNTRL,
+				       dev_priv->audio_freq_cntrl);
 			drm_dbg_kms(&dev_priv->drm,
 				    "restored AUD_FREQ_CNTRL to 0x%x\n",
 				    dev_priv->audio_freq_cntrl);
@@ -867,9 +871,8 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 			glk_force_audio_cdclk(dev_priv, true);
 
 		if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
-			I915_WRITE(AUD_PIN_BUF_CTL,
-				   (I915_READ(AUD_PIN_BUF_CTL) |
-				    AUD_PIN_BUF_ENABLE));
+			intel_de_write(dev_priv, AUD_PIN_BUF_CTL,
+				       (intel_de_read(dev_priv, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABLE));
 	}
 
 	return ret;
@@ -904,15 +907,15 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
 	 * Enable/disable generating the codec wake signal, overriding the
 	 * internal logic to generate the codec wake to controller.
 	 */
-	tmp = I915_READ(HSW_AUD_CHICKENBIT);
+	tmp = intel_de_read(dev_priv, HSW_AUD_CHICKENBIT);
 	tmp &= ~SKL_AUD_CODEC_WAKE_SIGNAL;
-	I915_WRITE(HSW_AUD_CHICKENBIT, tmp);
+	intel_de_write(dev_priv, HSW_AUD_CHICKENBIT, tmp);
 	usleep_range(1000, 1500);
 
 	if (enable) {
-		tmp = I915_READ(HSW_AUD_CHICKENBIT);
+		tmp = intel_de_read(dev_priv, HSW_AUD_CHICKENBIT);
 		tmp |= SKL_AUD_CODEC_WAKE_SIGNAL;
-		I915_WRITE(HSW_AUD_CHICKENBIT, tmp);
+		intel_de_write(dev_priv, HSW_AUD_CHICKENBIT, tmp);
 		usleep_range(1000, 1500);
 	}
 
@@ -1135,7 +1138,8 @@ static void i915_audio_component_init(struct drm_i915_private *dev_priv)
 	}
 
 	if (IS_TIGERLAKE(dev_priv) || IS_ICELAKE(dev_priv)) {
-		dev_priv->audio_freq_cntrl = I915_READ(AUD_FREQ_CNTRL);
+		dev_priv->audio_freq_cntrl = intel_de_read(dev_priv,
+							   AUD_FREQ_CNTRL);
 		drm_dbg_kms(&dev_priv->drm,
 			    "init value of AUD_FREQ_CNTRL of 0x%x\n",
 			    dev_priv->audio_freq_cntrl);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
