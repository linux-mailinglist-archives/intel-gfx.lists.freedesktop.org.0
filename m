Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0300C43E764
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 19:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 528A26E93A;
	Thu, 28 Oct 2021 17:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4337F6E0E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 17:35:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="217383016"
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="217383016"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:35:33 -0700
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="487233400"
Received: from ralfseng-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.156])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:35:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Dave Airlie <airlied@redhat.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Date: Thu, 28 Oct 2021 20:35:14 +0300
Message-Id: <20211028173518.9107-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211028173518.9107-1-jani.nikula@intel.com>
References: <20211028173518.9107-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/6] drm/i915/audio: name the audio
 sub-struct in drm_i915_private
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add name to the audio sub-struct in drm_i915_private, and remove the
tautologies and other inconsistencies in the member names.

v2: Call the mutex member mutex, not lock. (Ville)

Cc: Dave Airlie <airlied@redhat.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 90 +++++++++----------
 .../gpu/drm/i915/display/intel_lpe_audio.c    | 42 ++++-----
 drivers/gpu/drm/i915/i915_drv.c               |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 22 +++--
 4 files changed, 77 insertions(+), 79 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 03e8c05a74f6..8243fc80466a 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -388,7 +388,7 @@ hsw_dp_audio_config_update(struct intel_encoder *encoder,
 			   const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_audio_component *acomp = dev_priv->audio_component;
+	struct i915_audio_component *acomp = dev_priv->audio.component;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum port port = encoder->port;
 	const struct dp_aud_n_m *nm;
@@ -436,7 +436,7 @@ hsw_hdmi_audio_config_update(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_audio_component *acomp = dev_priv->audio_component;
+	struct i915_audio_component *acomp = dev_priv->audio.component;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum port port = encoder->port;
 	int n, rate;
@@ -494,7 +494,7 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	drm_dbg_kms(&dev_priv->drm, "Disable audio codec on transcoder %s\n",
 		    transcoder_name(cpu_transcoder));
 
-	mutex_lock(&dev_priv->av_mutex);
+	mutex_lock(&dev_priv->audio.mutex);
 
 	/* Disable timestamps */
 	tmp = intel_de_read(dev_priv, HSW_AUD_CFG(cpu_transcoder));
@@ -512,7 +512,7 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	tmp &= ~AUDIO_OUTPUT_ENABLE(cpu_transcoder);
 	intel_de_write(dev_priv, HSW_AUD_PIN_ELD_CP_VLD, tmp);
 
-	mutex_unlock(&dev_priv->av_mutex);
+	mutex_unlock(&dev_priv->audio.mutex);
 }
 
 static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
@@ -641,7 +641,7 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 		    "Enable audio codec on transcoder %s, %u bytes ELD\n",
 		     transcoder_name(cpu_transcoder), drm_eld_size(eld));
 
-	mutex_lock(&dev_priv->av_mutex);
+	mutex_lock(&dev_priv->audio.mutex);
 
 	/* Enable Audio WA for 4k DSC usecases */
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
@@ -679,7 +679,7 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	/* Enable timestamps */
 	hsw_audio_config_update(encoder, crtc_state);
 
-	mutex_unlock(&dev_priv->av_mutex);
+	mutex_unlock(&dev_priv->audio.mutex);
 }
 
 static void ilk_audio_codec_disable(struct intel_encoder *encoder,
@@ -826,7 +826,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 			      const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_audio_component *acomp = dev_priv->audio_component;
+	struct i915_audio_component *acomp = dev_priv->audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_connector *connector = conn_state->connector;
 	const struct drm_display_mode *adjusted_mode =
@@ -848,17 +848,17 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 
 	connector->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
 
-	if (dev_priv->audio_funcs)
-		dev_priv->audio_funcs->audio_codec_enable(encoder,
+	if (dev_priv->audio.funcs)
+		dev_priv->audio.funcs->audio_codec_enable(encoder,
 							  crtc_state,
 							  conn_state);
 
-	mutex_lock(&dev_priv->av_mutex);
+	mutex_lock(&dev_priv->audio.mutex);
 	encoder->audio_connector = connector;
 
 	/* referred in audio callbacks */
-	dev_priv->av_enc_map[pipe] = encoder;
-	mutex_unlock(&dev_priv->av_mutex);
+	dev_priv->audio.encoder_map[pipe] = encoder;
+	mutex_unlock(&dev_priv->audio.mutex);
 
 	if (acomp && acomp->base.audio_ops &&
 	    acomp->base.audio_ops->pin_eld_notify) {
@@ -888,20 +888,20 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 			       const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_audio_component *acomp = dev_priv->audio_component;
+	struct i915_audio_component *acomp = dev_priv->audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
 
-	if (dev_priv->audio_funcs)
-		dev_priv->audio_funcs->audio_codec_disable(encoder,
+	if (dev_priv->audio.funcs)
+		dev_priv->audio.funcs->audio_codec_disable(encoder,
 							   old_crtc_state,
 							   old_conn_state);
 
-	mutex_lock(&dev_priv->av_mutex);
+	mutex_lock(&dev_priv->audio.mutex);
 	encoder->audio_connector = NULL;
-	dev_priv->av_enc_map[pipe] = NULL;
-	mutex_unlock(&dev_priv->av_mutex);
+	dev_priv->audio.encoder_map[pipe] = NULL;
+	mutex_unlock(&dev_priv->audio.mutex);
 
 	if (acomp && acomp->base.audio_ops &&
 	    acomp->base.audio_ops->pin_eld_notify) {
@@ -937,13 +937,13 @@ static const struct intel_audio_funcs hsw_audio_funcs = {
 void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
 {
 	if (IS_G4X(dev_priv)) {
-		dev_priv->audio_funcs = &g4x_audio_funcs;
+		dev_priv->audio.funcs = &g4x_audio_funcs;
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		dev_priv->audio_funcs = &ilk_audio_funcs;
+		dev_priv->audio.funcs = &ilk_audio_funcs;
 	} else if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >= 8) {
-		dev_priv->audio_funcs = &hsw_audio_funcs;
+		dev_priv->audio.funcs = &hsw_audio_funcs;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
-		dev_priv->audio_funcs = &ilk_audio_funcs;
+		dev_priv->audio.funcs = &ilk_audio_funcs;
 	}
 }
 
@@ -1014,13 +1014,13 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 
 	ret = intel_display_power_get(dev_priv, POWER_DOMAIN_AUDIO_PLAYBACK);
 
-	if (dev_priv->audio_power_refcount++ == 0) {
+	if (dev_priv->audio.power_refcount++ == 0) {
 		if (DISPLAY_VER(dev_priv) >= 9) {
 			intel_de_write(dev_priv, AUD_FREQ_CNTRL,
-				       dev_priv->audio_freq_cntrl);
+				       dev_priv->audio.freq_cntrl);
 			drm_dbg_kms(&dev_priv->drm,
 				    "restored AUD_FREQ_CNTRL to 0x%x\n",
-				    dev_priv->audio_freq_cntrl);
+				    dev_priv->audio.freq_cntrl);
 		}
 
 		/* Force CDCLK to 2*BCLK as long as we need audio powered. */
@@ -1041,7 +1041,7 @@ static void i915_audio_component_put_power(struct device *kdev,
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 
 	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
-	if (--dev_priv->audio_power_refcount == 0)
+	if (--dev_priv->audio.power_refcount == 0)
 		if (IS_GEMINILAKE(dev_priv))
 			glk_force_audio_cdclk(dev_priv, false);
 
@@ -1093,7 +1093,7 @@ static int i915_audio_component_get_cdclk_freq(struct device *kdev)
 /*
  * get the intel_encoder according to the parameter port and pipe
  * intel_encoder is saved by the index of pipe
- * MST & (pipe >= 0): return the av_enc_map[pipe],
+ * MST & (pipe >= 0): return the audio.encoder_map[pipe],
  *   when port is matched
  * MST & (pipe < 0): this is invalid
  * Non-MST & (pipe >= 0): only pipe = 0 (the first device entry)
@@ -1108,10 +1108,10 @@ static struct intel_encoder *get_saved_enc(struct drm_i915_private *dev_priv,
 	/* MST */
 	if (pipe >= 0) {
 		if (drm_WARN_ON(&dev_priv->drm,
-				pipe >= ARRAY_SIZE(dev_priv->av_enc_map)))
+				pipe >= ARRAY_SIZE(dev_priv->audio.encoder_map)))
 			return NULL;
 
-		encoder = dev_priv->av_enc_map[pipe];
+		encoder = dev_priv->audio.encoder_map[pipe];
 		/*
 		 * when bootup, audio driver may not know it is
 		 * MST or not. So it will poll all the port & pipe
@@ -1127,7 +1127,7 @@ static struct intel_encoder *get_saved_enc(struct drm_i915_private *dev_priv,
 		return NULL;
 
 	for_each_pipe(dev_priv, pipe) {
-		encoder = dev_priv->av_enc_map[pipe];
+		encoder = dev_priv->audio.encoder_map[pipe];
 		if (encoder == NULL)
 			continue;
 
@@ -1145,7 +1145,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 						int pipe, int rate)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
-	struct i915_audio_component *acomp = dev_priv->audio_component;
+	struct i915_audio_component *acomp = dev_priv->audio.component;
 	struct intel_encoder *encoder;
 	struct intel_crtc *crtc;
 	unsigned long cookie;
@@ -1155,7 +1155,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 		return 0;
 
 	cookie = i915_audio_component_get_power(kdev);
-	mutex_lock(&dev_priv->av_mutex);
+	mutex_lock(&dev_priv->audio.mutex);
 
 	/* 1. get the pipe */
 	encoder = get_saved_enc(dev_priv, port, pipe);
@@ -1174,7 +1174,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 	hsw_audio_config_update(encoder, crtc->config);
 
  unlock:
-	mutex_unlock(&dev_priv->av_mutex);
+	mutex_unlock(&dev_priv->audio.mutex);
 	i915_audio_component_put_power(kdev, cookie);
 	return err;
 }
@@ -1188,13 +1188,13 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 	const u8 *eld;
 	int ret = -EINVAL;
 
-	mutex_lock(&dev_priv->av_mutex);
+	mutex_lock(&dev_priv->audio.mutex);
 
 	intel_encoder = get_saved_enc(dev_priv, port, pipe);
 	if (!intel_encoder) {
 		drm_dbg_kms(&dev_priv->drm, "Not valid for port %c\n",
 			    port_name(port));
-		mutex_unlock(&dev_priv->av_mutex);
+		mutex_unlock(&dev_priv->audio.mutex);
 		return ret;
 	}
 
@@ -1206,7 +1206,7 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 		memcpy(buf, eld, min(max_bytes, ret));
 	}
 
-	mutex_unlock(&dev_priv->av_mutex);
+	mutex_unlock(&dev_priv->audio.mutex);
 	return ret;
 }
 
@@ -1241,7 +1241,7 @@ static int i915_audio_component_bind(struct device *i915_kdev,
 	BUILD_BUG_ON(MAX_PORTS != I915_MAX_PORTS);
 	for (i = 0; i < ARRAY_SIZE(acomp->aud_sample_rate); i++)
 		acomp->aud_sample_rate[i] = 0;
-	dev_priv->audio_component = acomp;
+	dev_priv->audio.component = acomp;
 	drm_modeset_unlock_all(&dev_priv->drm);
 
 	return 0;
@@ -1256,14 +1256,14 @@ static void i915_audio_component_unbind(struct device *i915_kdev,
 	drm_modeset_lock_all(&dev_priv->drm);
 	acomp->base.ops = NULL;
 	acomp->base.dev = NULL;
-	dev_priv->audio_component = NULL;
+	dev_priv->audio.component = NULL;
 	drm_modeset_unlock_all(&dev_priv->drm);
 
 	device_link_remove(hda_kdev, i915_kdev);
 
-	if (dev_priv->audio_power_refcount)
+	if (dev_priv->audio.power_refcount)
 		drm_err(&dev_priv->drm, "audio power refcount %d after unbind\n",
-			dev_priv->audio_power_refcount);
+			dev_priv->audio.power_refcount);
 }
 
 static const struct component_ops i915_audio_component_bind_ops = {
@@ -1327,10 +1327,10 @@ static void i915_audio_component_init(struct drm_i915_private *dev_priv)
 		drm_dbg_kms(&dev_priv->drm, "use AUD_FREQ_CNTRL of 0x%x (init value 0x%x)\n",
 			    aud_freq, aud_freq_init);
 
-		dev_priv->audio_freq_cntrl = aud_freq;
+		dev_priv->audio.freq_cntrl = aud_freq;
 	}
 
-	dev_priv->audio_component_registered = true;
+	dev_priv->audio.component_registered = true;
 }
 
 /**
@@ -1342,11 +1342,11 @@ static void i915_audio_component_init(struct drm_i915_private *dev_priv)
  */
 static void i915_audio_component_cleanup(struct drm_i915_private *dev_priv)
 {
-	if (!dev_priv->audio_component_registered)
+	if (!dev_priv->audio.component_registered)
 		return;
 
 	component_del(dev_priv->drm.dev, &i915_audio_component_bind_ops);
-	dev_priv->audio_component_registered = false;
+	dev_priv->audio.component_registered = false;
 }
 
 /**
@@ -1368,7 +1368,7 @@ void intel_audio_init(struct drm_i915_private *dev_priv)
  */
 void intel_audio_deinit(struct drm_i915_private *dev_priv)
 {
-	if ((dev_priv)->lpe_audio.platdev != NULL)
+	if ((dev_priv)->audio.lpe.platdev != NULL)
 		intel_lpe_audio_teardown(dev_priv);
 	else
 		i915_audio_component_cleanup(dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 7f3c638c8950..4970bf146c4a 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -74,7 +74,7 @@
 #include "intel_de.h"
 #include "intel_lpe_audio.h"
 
-#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->lpe_audio.platdev != NULL)
+#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->audio.lpe.platdev != NULL)
 
 static struct platform_device *
 lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
@@ -96,7 +96,7 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
 		return ERR_PTR(-ENOMEM);
 	}
 
-	rsc[0].start    = rsc[0].end = dev_priv->lpe_audio.irq;
+	rsc[0].start    = rsc[0].end = dev_priv->audio.lpe.irq;
 	rsc[0].flags    = IORESOURCE_IRQ;
 	rsc[0].name     = "hdmi-lpe-audio-irq";
 
@@ -148,7 +148,7 @@ static void lpe_audio_platdev_destroy(struct drm_i915_private *dev_priv)
 	 * than us fiddle with its internals.
 	 */
 
-	platform_device_unregister(dev_priv->lpe_audio.platdev);
+	platform_device_unregister(dev_priv->audio.lpe.platdev);
 }
 
 static void lpe_audio_irq_unmask(struct irq_data *d)
@@ -167,7 +167,7 @@ static struct irq_chip lpe_audio_irqchip = {
 
 static int lpe_audio_irq_init(struct drm_i915_private *dev_priv)
 {
-	int irq = dev_priv->lpe_audio.irq;
+	int irq = dev_priv->audio.lpe.irq;
 
 	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
 	irq_set_chip_and_handler_name(irq,
@@ -204,15 +204,15 @@ static int lpe_audio_setup(struct drm_i915_private *dev_priv)
 {
 	int ret;
 
-	dev_priv->lpe_audio.irq = irq_alloc_desc(0);
-	if (dev_priv->lpe_audio.irq < 0) {
+	dev_priv->audio.lpe.irq = irq_alloc_desc(0);
+	if (dev_priv->audio.lpe.irq < 0) {
 		drm_err(&dev_priv->drm, "Failed to allocate IRQ desc: %d\n",
-			dev_priv->lpe_audio.irq);
-		ret = dev_priv->lpe_audio.irq;
+			dev_priv->audio.lpe.irq);
+		ret = dev_priv->audio.lpe.irq;
 		goto err;
 	}
 
-	drm_dbg(&dev_priv->drm, "irq = %d\n", dev_priv->lpe_audio.irq);
+	drm_dbg(&dev_priv->drm, "irq = %d\n", dev_priv->audio.lpe.irq);
 
 	ret = lpe_audio_irq_init(dev_priv);
 
@@ -223,10 +223,10 @@ static int lpe_audio_setup(struct drm_i915_private *dev_priv)
 		goto err_free_irq;
 	}
 
-	dev_priv->lpe_audio.platdev = lpe_audio_platdev_create(dev_priv);
+	dev_priv->audio.lpe.platdev = lpe_audio_platdev_create(dev_priv);
 
-	if (IS_ERR(dev_priv->lpe_audio.platdev)) {
-		ret = PTR_ERR(dev_priv->lpe_audio.platdev);
+	if (IS_ERR(dev_priv->audio.lpe.platdev)) {
+		ret = PTR_ERR(dev_priv->audio.lpe.platdev);
 		drm_err(&dev_priv->drm,
 			"Failed to create lpe audio platform device: %d\n",
 			ret);
@@ -241,10 +241,10 @@ static int lpe_audio_setup(struct drm_i915_private *dev_priv)
 
 	return 0;
 err_free_irq:
-	irq_free_desc(dev_priv->lpe_audio.irq);
+	irq_free_desc(dev_priv->audio.lpe.irq);
 err:
-	dev_priv->lpe_audio.irq = -1;
-	dev_priv->lpe_audio.platdev = NULL;
+	dev_priv->audio.lpe.irq = -1;
+	dev_priv->audio.lpe.platdev = NULL;
 	return ret;
 }
 
@@ -262,7 +262,7 @@ void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv)
 	if (!HAS_LPE_AUDIO(dev_priv))
 		return;
 
-	ret = generic_handle_irq(dev_priv->lpe_audio.irq);
+	ret = generic_handle_irq(dev_priv->audio.lpe.irq);
 	if (ret)
 		drm_err_ratelimited(&dev_priv->drm,
 				    "error handling LPE audio irq: %d\n", ret);
@@ -303,10 +303,10 @@ void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
 
 	lpe_audio_platdev_destroy(dev_priv);
 
-	irq_free_desc(dev_priv->lpe_audio.irq);
+	irq_free_desc(dev_priv->audio.lpe.irq);
 
-	dev_priv->lpe_audio.irq = -1;
-	dev_priv->lpe_audio.platdev = NULL;
+	dev_priv->audio.lpe.irq = -1;
+	dev_priv->audio.lpe.platdev = NULL;
 }
 
 /**
@@ -333,7 +333,7 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
 	if (!HAS_LPE_AUDIO(dev_priv))
 		return;
 
-	pdata = dev_get_platdata(&dev_priv->lpe_audio.platdev->dev);
+	pdata = dev_get_platdata(&dev_priv->audio.lpe.platdev->dev);
 	ppdata = &pdata->port[port - PORT_B];
 
 	spin_lock_irqsave(&pdata->lpe_audio_slock, irqflags);
@@ -361,7 +361,7 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
 	}
 
 	if (pdata->notify_audio_lpe)
-		pdata->notify_audio_lpe(dev_priv->lpe_audio.platdev, port - PORT_B);
+		pdata->notify_audio_lpe(dev_priv->audio.lpe.platdev, port - PORT_B);
 
 	spin_unlock_irqrestore(&pdata->lpe_audio_slock, irqflags);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 1e5b75ae9932..068b4fd37269 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -323,7 +323,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	mutex_init(&dev_priv->sb_lock);
 	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
 
-	mutex_init(&dev_priv->av_mutex);
+	mutex_init(&dev_priv->audio.mutex);
 	mutex_init(&dev_priv->wm.wm_mutex);
 	mutex_init(&dev_priv->pps_mutex);
 	mutex_init(&dev_priv->hdcp_comp_mutex);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ee210e12648a..f754c4bf75d3 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1215,27 +1215,25 @@ struct drm_i915_private {
 
 	struct {
 		/* Display internal audio functions */
-		const struct intel_audio_funcs *audio_funcs;
+		const struct intel_audio_funcs *funcs;
 
 		/* hda/i915 audio component */
-		struct i915_audio_component *audio_component;
-		bool audio_component_registered;
-		/**
-		 * av_mutex - mutex for audio/video sync
-		 */
-		struct mutex av_mutex;
-		int audio_power_refcount;
-		u32 audio_freq_cntrl;
+		struct i915_audio_component *component;
+		bool component_registered;
+		/* mutex for audio/video sync */
+		struct mutex mutex;
+		int power_refcount;
+		u32 freq_cntrl;
 
 		/* Used to save the pipe-to-encoder mapping for audio */
-		struct intel_encoder *av_enc_map[I915_MAX_PIPES];
+		struct intel_encoder *encoder_map[I915_MAX_PIPES];
 
 		/* necessary resource sharing with HDMI LPE audio driver. */
 		struct {
 			struct platform_device *platdev;
 			int irq;
-		} lpe_audio;
-	};
+		} lpe;
+	} audio;
 
 	struct i915_pmu pmu;
 
-- 
2.30.2

