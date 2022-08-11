Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCF258FEE7
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8BAB3CAB;
	Thu, 11 Aug 2022 15:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA67B3D30
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230764; x=1691766764;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xKQEFTJ6Nq03XVjnWNKtKK+oV6XFE/LnS/lDjMjmnqk=;
 b=HlERjuP4e/hEdk9y4Db+MK88XdBiuv4yCGY1JbK1lQeJpHuM2/CGvbT/
 IY73/bGh9jZqmVyIqK4W29zxL8q8M1c1j3xlc7fB/0Trk/C7JpB/Ldkqs
 KTrXyVqCqaFqA+1caRecUv9njk+QnZoEwQB+ys1siEuxCryvL1+ZnXtJX
 PNGLVx+5A34voqSRVkg/2lPmw2iBhkWXtXonT2KX/WOa6BeSBK8wMHaSJ
 ij1n/efgLdcGhCff/moYU8Ki2XcSNc3Tae5rQ/PRiS3M/zGx3KR20dzmk
 OZwq1Fucu9ba0FzYmETmKWpxZDrmC3sJsxkY/y06MTDZNmNXPl3WxUJzF Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="274427963"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="274427963"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="694923215"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:23 +0300
Message-Id: <d7de23e80cb3a3fb488b76a092ad5f6d94d97416.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio under
 display.audio and display.funcs
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Split audio funcs to display.funcs to follow the same pattern as all the
other display functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 96 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h | 26 +++++
 .../gpu/drm/i915/display/intel_lpe_audio.c    | 42 ++++----
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 26 -----
 5 files changed, 96 insertions(+), 96 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 6c9ee905f132..a74fc79b7910 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -393,7 +393,7 @@ hsw_dp_audio_config_update(struct intel_encoder *encoder,
 			   const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_audio_component *acomp = dev_priv->audio.component;
+	struct i915_audio_component *acomp = dev_priv->display.audio.component;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum port port = encoder->port;
 	const struct dp_aud_n_m *nm;
@@ -441,7 +441,7 @@ hsw_hdmi_audio_config_update(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_audio_component *acomp = dev_priv->audio.component;
+	struct i915_audio_component *acomp = dev_priv->display.audio.component;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum port port = encoder->port;
 	int n, rate;
@@ -496,7 +496,7 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 	u32 tmp;
 
-	mutex_lock(&dev_priv->audio.mutex);
+	mutex_lock(&dev_priv->display.audio.mutex);
 
 	/* Disable timestamps */
 	tmp = intel_de_read(dev_priv, HSW_AUD_CFG(cpu_transcoder));
@@ -514,7 +514,7 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	tmp &= ~AUDIO_OUTPUT_ENABLE(cpu_transcoder);
 	intel_de_write(dev_priv, HSW_AUD_PIN_ELD_CP_VLD, tmp);
 
-	mutex_unlock(&dev_priv->audio.mutex);
+	mutex_unlock(&dev_priv->display.audio.mutex);
 }
 
 static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
@@ -639,7 +639,7 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	u32 tmp;
 	int len, i;
 
-	mutex_lock(&dev_priv->audio.mutex);
+	mutex_lock(&dev_priv->display.audio.mutex);
 
 	/* Enable Audio WA for 4k DSC usecases */
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
@@ -677,7 +677,7 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	/* Enable timestamps */
 	hsw_audio_config_update(encoder, crtc_state);
 
-	mutex_unlock(&dev_priv->audio.mutex);
+	mutex_unlock(&dev_priv->display.audio.mutex);
 }
 
 static void ilk_audio_codec_disable(struct intel_encoder *encoder,
@@ -814,7 +814,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 			      const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_audio_component *acomp = dev_priv->audio.component;
+	struct i915_audio_component *acomp = dev_priv->display.audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_connector *connector = conn_state->connector;
 	const struct drm_display_mode *adjusted_mode =
@@ -838,17 +838,17 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 
 	connector->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
 
-	if (dev_priv->audio.funcs)
-		dev_priv->audio.funcs->audio_codec_enable(encoder,
-							  crtc_state,
-							  conn_state);
+	if (dev_priv->display.funcs.audio)
+		dev_priv->display.funcs.audio->audio_codec_enable(encoder,
+								  crtc_state,
+								  conn_state);
 
-	mutex_lock(&dev_priv->audio.mutex);
+	mutex_lock(&dev_priv->display.audio.mutex);
 	encoder->audio_connector = connector;
 
 	/* referred in audio callbacks */
-	dev_priv->audio.encoder_map[pipe] = encoder;
-	mutex_unlock(&dev_priv->audio.mutex);
+	dev_priv->display.audio.encoder_map[pipe] = encoder;
+	mutex_unlock(&dev_priv->display.audio.mutex);
 
 	if (acomp && acomp->base.audio_ops &&
 	    acomp->base.audio_ops->pin_eld_notify) {
@@ -878,7 +878,7 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 			       const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_audio_component *acomp = dev_priv->audio.component;
+	struct i915_audio_component *acomp = dev_priv->display.audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_connector *connector = old_conn_state->connector;
 	enum port port = encoder->port;
@@ -891,15 +891,15 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 		    connector->base.id, connector->name,
 		    encoder->base.base.id, encoder->base.name, pipe_name(pipe));
 
-	if (dev_priv->audio.funcs)
-		dev_priv->audio.funcs->audio_codec_disable(encoder,
-							   old_crtc_state,
-							   old_conn_state);
+	if (dev_priv->display.funcs.audio)
+		dev_priv->display.funcs.audio->audio_codec_disable(encoder,
+								   old_crtc_state,
+								   old_conn_state);
 
-	mutex_lock(&dev_priv->audio.mutex);
+	mutex_lock(&dev_priv->display.audio.mutex);
 	encoder->audio_connector = NULL;
-	dev_priv->audio.encoder_map[pipe] = NULL;
-	mutex_unlock(&dev_priv->audio.mutex);
+	dev_priv->display.audio.encoder_map[pipe] = NULL;
+	mutex_unlock(&dev_priv->display.audio.mutex);
 
 	if (acomp && acomp->base.audio_ops &&
 	    acomp->base.audio_ops->pin_eld_notify) {
@@ -935,13 +935,13 @@ static const struct intel_audio_funcs hsw_audio_funcs = {
 void intel_audio_hooks_init(struct drm_i915_private *dev_priv)
 {
 	if (IS_G4X(dev_priv)) {
-		dev_priv->audio.funcs = &g4x_audio_funcs;
+		dev_priv->display.funcs.audio = &g4x_audio_funcs;
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		dev_priv->audio.funcs = &ilk_audio_funcs;
+		dev_priv->display.funcs.audio = &ilk_audio_funcs;
 	} else if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >= 8) {
-		dev_priv->audio.funcs = &hsw_audio_funcs;
+		dev_priv->display.funcs.audio = &hsw_audio_funcs;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
-		dev_priv->audio.funcs = &ilk_audio_funcs;
+		dev_priv->display.funcs.audio = &ilk_audio_funcs;
 	}
 }
 
@@ -1046,13 +1046,13 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 
 	ret = intel_display_power_get(dev_priv, POWER_DOMAIN_AUDIO_PLAYBACK);
 
-	if (dev_priv->audio.power_refcount++ == 0) {
+	if (dev_priv->display.audio.power_refcount++ == 0) {
 		if (DISPLAY_VER(dev_priv) >= 9) {
 			intel_de_write(dev_priv, AUD_FREQ_CNTRL,
-				       dev_priv->audio.freq_cntrl);
+				       dev_priv->display.audio.freq_cntrl);
 			drm_dbg_kms(&dev_priv->drm,
 				    "restored AUD_FREQ_CNTRL to 0x%x\n",
-				    dev_priv->audio.freq_cntrl);
+				    dev_priv->display.audio.freq_cntrl);
 		}
 
 		/* Force CDCLK to 2*BCLK as long as we need audio powered. */
@@ -1073,7 +1073,7 @@ static void i915_audio_component_put_power(struct device *kdev,
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 
 	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
-	if (--dev_priv->audio.power_refcount == 0)
+	if (--dev_priv->display.audio.power_refcount == 0)
 		if (IS_GEMINILAKE(dev_priv))
 			glk_force_audio_cdclk(dev_priv, false);
 
@@ -1140,10 +1140,10 @@ static struct intel_encoder *get_saved_enc(struct drm_i915_private *dev_priv,
 	/* MST */
 	if (pipe >= 0) {
 		if (drm_WARN_ON(&dev_priv->drm,
-				pipe >= ARRAY_SIZE(dev_priv->audio.encoder_map)))
+				pipe >= ARRAY_SIZE(dev_priv->display.audio.encoder_map)))
 			return NULL;
 
-		encoder = dev_priv->audio.encoder_map[pipe];
+		encoder = dev_priv->display.audio.encoder_map[pipe];
 		/*
 		 * when bootup, audio driver may not know it is
 		 * MST or not. So it will poll all the port & pipe
@@ -1159,7 +1159,7 @@ static struct intel_encoder *get_saved_enc(struct drm_i915_private *dev_priv,
 		return NULL;
 
 	for_each_pipe(dev_priv, pipe) {
-		encoder = dev_priv->audio.encoder_map[pipe];
+		encoder = dev_priv->display.audio.encoder_map[pipe];
 		if (encoder == NULL)
 			continue;
 
@@ -1177,7 +1177,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 						int pipe, int rate)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
-	struct i915_audio_component *acomp = dev_priv->audio.component;
+	struct i915_audio_component *acomp = dev_priv->display.audio.component;
 	struct intel_encoder *encoder;
 	struct intel_crtc *crtc;
 	unsigned long cookie;
@@ -1187,7 +1187,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 		return 0;
 
 	cookie = i915_audio_component_get_power(kdev);
-	mutex_lock(&dev_priv->audio.mutex);
+	mutex_lock(&dev_priv->display.audio.mutex);
 
 	/* 1. get the pipe */
 	encoder = get_saved_enc(dev_priv, port, pipe);
@@ -1206,7 +1206,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 	hsw_audio_config_update(encoder, crtc->config);
 
  unlock:
-	mutex_unlock(&dev_priv->audio.mutex);
+	mutex_unlock(&dev_priv->display.audio.mutex);
 	i915_audio_component_put_power(kdev, cookie);
 	return err;
 }
@@ -1220,13 +1220,13 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 	const u8 *eld;
 	int ret = -EINVAL;
 
-	mutex_lock(&dev_priv->audio.mutex);
+	mutex_lock(&dev_priv->display.audio.mutex);
 
 	intel_encoder = get_saved_enc(dev_priv, port, pipe);
 	if (!intel_encoder) {
 		drm_dbg_kms(&dev_priv->drm, "Not valid for port %c\n",
 			    port_name(port));
-		mutex_unlock(&dev_priv->audio.mutex);
+		mutex_unlock(&dev_priv->display.audio.mutex);
 		return ret;
 	}
 
@@ -1238,7 +1238,7 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 		memcpy(buf, eld, min(max_bytes, ret));
 	}
 
-	mutex_unlock(&dev_priv->audio.mutex);
+	mutex_unlock(&dev_priv->display.audio.mutex);
 	return ret;
 }
 
@@ -1273,7 +1273,7 @@ static int i915_audio_component_bind(struct device *i915_kdev,
 	BUILD_BUG_ON(MAX_PORTS != I915_MAX_PORTS);
 	for (i = 0; i < ARRAY_SIZE(acomp->aud_sample_rate); i++)
 		acomp->aud_sample_rate[i] = 0;
-	dev_priv->audio.component = acomp;
+	dev_priv->display.audio.component = acomp;
 	drm_modeset_unlock_all(&dev_priv->drm);
 
 	return 0;
@@ -1288,14 +1288,14 @@ static void i915_audio_component_unbind(struct device *i915_kdev,
 	drm_modeset_lock_all(&dev_priv->drm);
 	acomp->base.ops = NULL;
 	acomp->base.dev = NULL;
-	dev_priv->audio.component = NULL;
+	dev_priv->display.audio.component = NULL;
 	drm_modeset_unlock_all(&dev_priv->drm);
 
 	device_link_remove(hda_kdev, i915_kdev);
 
-	if (dev_priv->audio.power_refcount)
+	if (dev_priv->display.audio.power_refcount)
 		drm_err(&dev_priv->drm, "audio power refcount %d after unbind\n",
-			dev_priv->audio.power_refcount);
+			dev_priv->display.audio.power_refcount);
 }
 
 static const struct component_ops i915_audio_component_bind_ops = {
@@ -1359,13 +1359,13 @@ static void i915_audio_component_init(struct drm_i915_private *dev_priv)
 		drm_dbg_kms(&dev_priv->drm, "use AUD_FREQ_CNTRL of 0x%x (init value 0x%x)\n",
 			    aud_freq, aud_freq_init);
 
-		dev_priv->audio.freq_cntrl = aud_freq;
+		dev_priv->display.audio.freq_cntrl = aud_freq;
 	}
 
 	/* init with current cdclk */
 	intel_audio_cdclk_change_post(dev_priv);
 
-	dev_priv->audio.component_registered = true;
+	dev_priv->display.audio.component_registered = true;
 }
 
 /**
@@ -1377,11 +1377,11 @@ static void i915_audio_component_init(struct drm_i915_private *dev_priv)
  */
 static void i915_audio_component_cleanup(struct drm_i915_private *dev_priv)
 {
-	if (!dev_priv->audio.component_registered)
+	if (!dev_priv->display.audio.component_registered)
 		return;
 
 	component_del(dev_priv->drm.dev, &i915_audio_component_bind_ops);
-	dev_priv->audio.component_registered = false;
+	dev_priv->display.audio.component_registered = false;
 }
 
 /**
@@ -1403,7 +1403,7 @@ void intel_audio_init(struct drm_i915_private *dev_priv)
  */
 void intel_audio_deinit(struct drm_i915_private *dev_priv)
 {
-	if ((dev_priv)->audio.lpe.platdev != NULL)
+	if (dev_priv->display.audio.lpe.platdev != NULL)
 		intel_lpe_audio_teardown(dev_priv);
 	else
 		i915_audio_component_cleanup(dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index ca22706e11e6..748d2a84e20e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -10,11 +10,14 @@
 #include <linux/types.h>
 #include <linux/wait.h>
 
+#include "intel_display.h"
 #include "intel_dmc.h"
 #include "intel_gmbus.h"
 
 struct drm_i915_private;
+struct i915_audio_component;
 struct intel_atomic_state;
+struct intel_audio_funcs;
 struct intel_cdclk_funcs;
 struct intel_clock_gating_funcs;
 struct intel_color_funcs;
@@ -56,6 +59,25 @@ struct intel_wm_funcs {
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
 };
 
+struct intel_audio {
+	/* hda/i915 audio component */
+	struct i915_audio_component *component;
+	bool component_registered;
+	/* mutex for audio/video sync */
+	struct mutex mutex;
+	int power_refcount;
+	u32 freq_cntrl;
+
+	/* Used to save the pipe-to-encoder mapping for audio */
+	struct intel_encoder *encoder_map[I915_MAX_PIPES];
+
+	/* necessary resource sharing with HDMI LPE audio driver. */
+	struct {
+		struct platform_device *platdev;
+		int irq;
+	} lpe;
+};
+
 struct intel_display {
 	/* Display functions */
 	struct {
@@ -82,6 +104,9 @@ struct intel_display {
 
 		/* Display internal color functions */
 		const struct intel_color_funcs *color;
+
+		/* Display internal audio functions */
+		const struct intel_audio_funcs *audio;
 	} funcs;
 
 	/* Grouping using anonymous structs. Keep sorted. */
@@ -111,6 +136,7 @@ struct intel_display {
 	} pps;
 
 	/* Grouping using named structs. Keep sorted. */
+	struct intel_audio audio;
 	struct intel_dmc dmc;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 1e18696aaecf..dca6003ccac8 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -75,7 +75,7 @@
 #include "intel_lpe_audio.h"
 #include "intel_pci_config.h"
 
-#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->audio.lpe.platdev != NULL)
+#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->display.audio.lpe.platdev != NULL)
 
 static struct platform_device *
 lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
@@ -97,7 +97,7 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
 		return ERR_PTR(-ENOMEM);
 	}
 
-	rsc[0].start    = rsc[0].end = dev_priv->audio.lpe.irq;
+	rsc[0].start    = rsc[0].end = dev_priv->display.audio.lpe.irq;
 	rsc[0].flags    = IORESOURCE_IRQ;
 	rsc[0].name     = "hdmi-lpe-audio-irq";
 
@@ -149,7 +149,7 @@ static void lpe_audio_platdev_destroy(struct drm_i915_private *dev_priv)
 	 * than us fiddle with its internals.
 	 */
 
-	platform_device_unregister(dev_priv->audio.lpe.platdev);
+	platform_device_unregister(dev_priv->display.audio.lpe.platdev);
 }
 
 static void lpe_audio_irq_unmask(struct irq_data *d)
@@ -168,7 +168,7 @@ static struct irq_chip lpe_audio_irqchip = {
 
 static int lpe_audio_irq_init(struct drm_i915_private *dev_priv)
 {
-	int irq = dev_priv->audio.lpe.irq;
+	int irq = dev_priv->display.audio.lpe.irq;
 
 	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
 	irq_set_chip_and_handler_name(irq,
@@ -205,15 +205,15 @@ static int lpe_audio_setup(struct drm_i915_private *dev_priv)
 {
 	int ret;
 
-	dev_priv->audio.lpe.irq = irq_alloc_desc(0);
-	if (dev_priv->audio.lpe.irq < 0) {
+	dev_priv->display.audio.lpe.irq = irq_alloc_desc(0);
+	if (dev_priv->display.audio.lpe.irq < 0) {
 		drm_err(&dev_priv->drm, "Failed to allocate IRQ desc: %d\n",
-			dev_priv->audio.lpe.irq);
-		ret = dev_priv->audio.lpe.irq;
+			dev_priv->display.audio.lpe.irq);
+		ret = dev_priv->display.audio.lpe.irq;
 		goto err;
 	}
 
-	drm_dbg(&dev_priv->drm, "irq = %d\n", dev_priv->audio.lpe.irq);
+	drm_dbg(&dev_priv->drm, "irq = %d\n", dev_priv->display.audio.lpe.irq);
 
 	ret = lpe_audio_irq_init(dev_priv);
 
@@ -224,10 +224,10 @@ static int lpe_audio_setup(struct drm_i915_private *dev_priv)
 		goto err_free_irq;
 	}
 
-	dev_priv->audio.lpe.platdev = lpe_audio_platdev_create(dev_priv);
+	dev_priv->display.audio.lpe.platdev = lpe_audio_platdev_create(dev_priv);
 
-	if (IS_ERR(dev_priv->audio.lpe.platdev)) {
-		ret = PTR_ERR(dev_priv->audio.lpe.platdev);
+	if (IS_ERR(dev_priv->display.audio.lpe.platdev)) {
+		ret = PTR_ERR(dev_priv->display.audio.lpe.platdev);
 		drm_err(&dev_priv->drm,
 			"Failed to create lpe audio platform device: %d\n",
 			ret);
@@ -242,10 +242,10 @@ static int lpe_audio_setup(struct drm_i915_private *dev_priv)
 
 	return 0;
 err_free_irq:
-	irq_free_desc(dev_priv->audio.lpe.irq);
+	irq_free_desc(dev_priv->display.audio.lpe.irq);
 err:
-	dev_priv->audio.lpe.irq = -1;
-	dev_priv->audio.lpe.platdev = NULL;
+	dev_priv->display.audio.lpe.irq = -1;
+	dev_priv->display.audio.lpe.platdev = NULL;
 	return ret;
 }
 
@@ -263,7 +263,7 @@ void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv)
 	if (!HAS_LPE_AUDIO(dev_priv))
 		return;
 
-	ret = generic_handle_irq(dev_priv->audio.lpe.irq);
+	ret = generic_handle_irq(dev_priv->display.audio.lpe.irq);
 	if (ret)
 		drm_err_ratelimited(&dev_priv->drm,
 				    "error handling LPE audio irq: %d\n", ret);
@@ -304,10 +304,10 @@ void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
 
 	lpe_audio_platdev_destroy(dev_priv);
 
-	irq_free_desc(dev_priv->audio.lpe.irq);
+	irq_free_desc(dev_priv->display.audio.lpe.irq);
 
-	dev_priv->audio.lpe.irq = -1;
-	dev_priv->audio.lpe.platdev = NULL;
+	dev_priv->display.audio.lpe.irq = -1;
+	dev_priv->display.audio.lpe.platdev = NULL;
 }
 
 /**
@@ -334,7 +334,7 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
 	if (!HAS_LPE_AUDIO(dev_priv))
 		return;
 
-	pdata = dev_get_platdata(&dev_priv->audio.lpe.platdev->dev);
+	pdata = dev_get_platdata(&dev_priv->display.audio.lpe.platdev->dev);
 	ppdata = &pdata->port[port - PORT_B];
 
 	spin_lock_irqsave(&pdata->lpe_audio_slock, irqflags);
@@ -362,7 +362,7 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
 	}
 
 	if (pdata->notify_audio_lpe)
-		pdata->notify_audio_lpe(dev_priv->audio.lpe.platdev, port - PORT_B);
+		pdata->notify_audio_lpe(dev_priv->display.audio.lpe.platdev, port - PORT_B);
 
 	spin_unlock_irqrestore(&pdata->lpe_audio_slock, irqflags);
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 694384e54fd7..0d3993e51138 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -335,7 +335,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	mutex_init(&dev_priv->sb_lock);
 	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
 
-	mutex_init(&dev_priv->audio.mutex);
+	mutex_init(&dev_priv->display.audio.mutex);
 	mutex_init(&dev_priv->wm.wm_mutex);
 	mutex_init(&dev_priv->display.pps.mutex);
 	mutex_init(&dev_priv->hdcp_comp_mutex);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d1b51e2460e0..ebd96555ada0 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -78,7 +78,6 @@
 struct dpll;
 struct drm_i915_gem_object;
 struct drm_i915_private;
-struct intel_audio_funcs;
 struct intel_cdclk_config;
 struct intel_cdclk_state;
 struct intel_cdclk_vals;
@@ -306,29 +305,6 @@ struct i915_selftest_stash {
 	struct ida mock_region_instances;
 };
 
-/* intel_audio.c private */
-struct intel_audio_private {
-	/* Display internal audio functions */
-	const struct intel_audio_funcs *funcs;
-
-	/* hda/i915 audio component */
-	struct i915_audio_component *component;
-	bool component_registered;
-	/* mutex for audio/video sync */
-	struct mutex mutex;
-	int power_refcount;
-	u32 freq_cntrl;
-
-	/* Used to save the pipe-to-encoder mapping for audio */
-	struct intel_encoder *encoder_map[I915_MAX_PIPES];
-
-	/* necessary resource sharing with HDMI LPE audio driver. */
-	struct {
-		struct platform_device *platdev;
-		int irq;
-	} lpe;
-};
-
 struct drm_i915_private {
 	struct drm_device drm;
 
@@ -671,8 +647,6 @@ struct drm_i915_private {
 
 	bool ipc_enabled;
 
-	struct intel_audio_private audio;
-
 	struct i915_pmu pmu;
 
 	struct i915_drm_clients clients;
-- 
2.34.1

