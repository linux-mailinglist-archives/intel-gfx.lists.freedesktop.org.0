Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E0469F77F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 16:15:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2471C10E9FB;
	Wed, 22 Feb 2023 15:15:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2D9E10E9FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 15:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677078898; x=1708614898;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AwQ399/KRWjeiHzVMyQWXpAVdhp8DQM2H4gkBFHh8RU=;
 b=cRjfygvtIXE/ekM2Opcp+dCO1Yii9FQrkUcysNx+Oas2gHoDPGNFQrZq
 XUqXBUKBIG9VCb1sdTTQnWcV14jerA6Y6qRASnDG052mqjL7X8WhFdIDZ
 lQ7xYzpoha2SYUH2C/tdLnHJUPkepf2zzmVLCpf8lD4ow7u2qUVi9viyb
 GBuzVUQeYyNejxndgPIP9839WA1lfxIY17Xb5aMQgX24TGMKcO4ky3hAK
 OYl0OB6GD+LAEGbh6TKlaxcjLpXaFe0Nlq0KecvGyLjfgafXc1lfo3GYE
 l1XRoPHDqzPlog74WRCD7otfMi53r+q7KLHlx/vCuWFgi+e+6CRPDngNv A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="312574586"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="312574586"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 07:14:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="917596780"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="917596780"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga006.fm.intel.com with SMTP; 22 Feb 2023 07:14:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 17:14:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 17:14:54 +0200
Message-Id: <20230222151454.24888-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/audio: Track audio state per-transcoder
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The audio logic lives in the transcoder rather than the pipe,
so start tracking it like that.

This is only really important for bigjoiner cases where tracking
by pipe doesn't work at all since intel_audio_codec_{enable,disable}()
won't even be called for the slave pipe. This means the state
checker won't find the ELD for the slave pipe and gets upset.
The PD->has_audio readout does currently work since that gets
read out from the same transcoder for both pipes.

For other cases this doesn't actually matter since it's only
the normal pipe transcoders that are audio capable, whereas
the more special transcoders (EDP/DSI) are not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 86 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  2 +-
 .../gpu/drm/i915/display/intel_lpe_audio.c    |  6 +-
 .../gpu/drm/i915/display/intel_lpe_audio.h    |  4 +-
 4 files changed, 48 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index a9335c856644..65151f5dcb15 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -581,8 +581,7 @@ static void enable_audio_dsc_wa(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum pipe pipe = crtc->pipe;
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	unsigned int hblank_early_prog, samples_room;
 	unsigned int val;
 
@@ -592,32 +591,32 @@ static void enable_audio_dsc_wa(struct intel_encoder *encoder,
 	val = intel_de_read(i915, AUD_CONFIG_BE);
 
 	if (DISPLAY_VER(i915) == 11)
-		val |= HBLANK_EARLY_ENABLE_ICL(pipe);
+		val |= HBLANK_EARLY_ENABLE_ICL(cpu_transcoder);
 	else if (DISPLAY_VER(i915) >= 12)
-		val |= HBLANK_EARLY_ENABLE_TGL(pipe);
+		val |= HBLANK_EARLY_ENABLE_TGL(cpu_transcoder);
 
 	if (crtc_state->dsc.compression_enable &&
 	    crtc_state->hw.adjusted_mode.hdisplay >= 3840 &&
 	    crtc_state->hw.adjusted_mode.vdisplay >= 2160) {
 		/* Get hblank early enable value required */
-		val &= ~HBLANK_START_COUNT_MASK(pipe);
+		val &= ~HBLANK_START_COUNT_MASK(cpu_transcoder);
 		hblank_early_prog = calc_hblank_early_prog(encoder, crtc_state);
 		if (hblank_early_prog < 32)
-			val |= HBLANK_START_COUNT(pipe, HBLANK_START_COUNT_32);
+			val |= HBLANK_START_COUNT(cpu_transcoder, HBLANK_START_COUNT_32);
 		else if (hblank_early_prog < 64)
-			val |= HBLANK_START_COUNT(pipe, HBLANK_START_COUNT_64);
+			val |= HBLANK_START_COUNT(cpu_transcoder, HBLANK_START_COUNT_64);
 		else if (hblank_early_prog < 96)
-			val |= HBLANK_START_COUNT(pipe, HBLANK_START_COUNT_96);
+			val |= HBLANK_START_COUNT(cpu_transcoder, HBLANK_START_COUNT_96);
 		else
-			val |= HBLANK_START_COUNT(pipe, HBLANK_START_COUNT_128);
+			val |= HBLANK_START_COUNT(cpu_transcoder, HBLANK_START_COUNT_128);
 
 		/* Get samples room value required */
-		val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
+		val &= ~NUMBER_SAMPLES_PER_LINE_MASK(cpu_transcoder);
 		samples_room = calc_samples_room(crtc_state);
 		if (samples_room < 3)
-			val |= NUMBER_SAMPLES_PER_LINE(pipe, samples_room);
+			val |= NUMBER_SAMPLES_PER_LINE(cpu_transcoder, samples_room);
 		else /* Program 0 i.e "All Samples available in buffer" */
-			val |= NUMBER_SAMPLES_PER_LINE(pipe, 0x0);
+			val |= NUMBER_SAMPLES_PER_LINE(cpu_transcoder, 0x0);
 	}
 
 	intel_de_write(i915, AUD_CONFIG_BE, val);
@@ -812,9 +811,9 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	struct i915_audio_component *acomp = i915->display.audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	struct intel_audio_state *audio_state;
 	enum port port = encoder->port;
-	enum pipe pipe = crtc->pipe;
 
 	if (!crtc_state->has_audio)
 		return;
@@ -832,7 +831,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 
 	mutex_lock(&i915->display.audio.mutex);
 
-	audio_state = &i915->display.audio.state[pipe];
+	audio_state = &i915->display.audio.state[cpu_transcoder];
 
 	audio_state->encoder = encoder;
 	BUILD_BUG_ON(sizeof(audio_state->eld) != sizeof(crtc_state->eld));
@@ -842,14 +841,14 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 
 	if (acomp && acomp->base.audio_ops &&
 	    acomp->base.audio_ops->pin_eld_notify) {
-		/* audio drivers expect pipe = -1 to indicate Non-MST cases */
+		/* audio drivers expect cpu_transcoder = -1 to indicate Non-MST cases */
 		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
-			pipe = -1;
+			cpu_transcoder = -1;
 		acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops->audio_ptr,
-						      (int)port, (int)pipe);
+						      (int)port, (int)cpu_transcoder);
 	}
 
-	intel_lpe_audio_notify(i915, pipe, port, crtc_state->eld,
+	intel_lpe_audio_notify(i915, cpu_transcoder, port, crtc_state->eld,
 			       crtc_state->port_clock,
 			       intel_crtc_has_dp_encoder(crtc_state));
 }
@@ -871,9 +870,9 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 	struct i915_audio_component *acomp = i915->display.audio.component;
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
+	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 	struct intel_audio_state *audio_state;
 	enum port port = encoder->port;
-	enum pipe pipe = crtc->pipe;
 
 	if (!old_crtc_state->has_audio)
 		return;
@@ -890,7 +889,7 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 
 	mutex_lock(&i915->display.audio.mutex);
 
-	audio_state = &i915->display.audio.state[pipe];
+	audio_state = &i915->display.audio.state[cpu_transcoder];
 
 	audio_state->encoder = NULL;
 	memset(audio_state->eld, 0, sizeof(audio_state->eld));
@@ -899,27 +898,26 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 
 	if (acomp && acomp->base.audio_ops &&
 	    acomp->base.audio_ops->pin_eld_notify) {
-		/* audio drivers expect pipe = -1 to indicate Non-MST cases */
+		/* audio drivers expect cpu_transcoder = -1 to indicate Non-MST cases */
 		if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
-			pipe = -1;
+			cpu_transcoder = -1;
 		acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops->audio_ptr,
-						      (int)port, (int)pipe);
+						      (int)port, (int)cpu_transcoder);
 	}
 
-	intel_lpe_audio_notify(i915, pipe, port, NULL, 0, false);
+	intel_lpe_audio_notify(i915, cpu_transcoder, port, NULL, 0, false);
 }
 
 static void intel_acomp_get_config(struct intel_encoder *encoder,
 				   struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	struct intel_audio_state *audio_state;
-	enum pipe pipe = crtc->pipe;
 
 	mutex_lock(&i915->display.audio.mutex);
 
-	audio_state = &i915->display.audio.state[pipe];
+	audio_state = &i915->display.audio.state[cpu_transcoder];
 
 	if (audio_state->encoder)
 		memcpy(crtc_state->eld, audio_state->eld, sizeof(audio_state->eld));
@@ -1147,27 +1145,27 @@ static int i915_audio_component_get_cdclk_freq(struct device *kdev)
 }
 
 /*
- * get the intel audio state according to the parameter port and pipe
- * MST & (pipe >= 0): return the audio.state[pipe].encoder],
+ * get the intel audio state according to the parameter port and cpu_transcoder
+ * MST & (cpu_transcoder >= 0): return the audio.state[cpu_transcoder].encoder],
  *   when port is matched
- * MST & (pipe < 0): this is invalid
- * Non-MST & (pipe >= 0): only pipe = 0 (the first device entry)
+ * MST & (cpu_transcoder < 0): this is invalid
+ * Non-MST & (cpu_transcoder >= 0): only cpu_transcoder = 0 (the first device entry)
  *   will get the right intel_encoder with port matched
- * Non-MST & (pipe < 0): get the right intel_encoder with port matched
+ * Non-MST & (cpu_transcoder < 0): get the right intel_encoder with port matched
  */
 static struct intel_audio_state *find_audio_state(struct drm_i915_private *i915,
-						  int port, int pipe)
+						  int port, int cpu_transcoder)
 {
 	/* MST */
-	if (pipe >= 0) {
+	if (cpu_transcoder >= 0) {
 		struct intel_audio_state *audio_state;
 		struct intel_encoder *encoder;
 
 		if (drm_WARN_ON(&i915->drm,
-				pipe >= ARRAY_SIZE(i915->display.audio.state)))
+				cpu_transcoder >= ARRAY_SIZE(i915->display.audio.state)))
 			return NULL;
 
-		audio_state = &i915->display.audio.state[pipe];
+		audio_state = &i915->display.audio.state[cpu_transcoder];
 		encoder = audio_state->encoder;
 
 		if (encoder && encoder->port == port &&
@@ -1176,14 +1174,14 @@ static struct intel_audio_state *find_audio_state(struct drm_i915_private *i915,
 	}
 
 	/* Non-MST */
-	if (pipe > 0)
+	if (cpu_transcoder > 0)
 		return NULL;
 
-	for_each_pipe(i915, pipe) {
+	for_each_cpu_transcoder(i915, cpu_transcoder) {
 		struct intel_audio_state *audio_state;
 		struct intel_encoder *encoder;
 
-		audio_state = &i915->display.audio.state[pipe];
+		audio_state = &i915->display.audio.state[cpu_transcoder];
 		encoder = audio_state->encoder;
 
 		if (encoder && encoder->port == port &&
@@ -1195,7 +1193,7 @@ static struct intel_audio_state *find_audio_state(struct drm_i915_private *i915,
 }
 
 static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
-						int pipe, int rate)
+						int cpu_transcoder, int rate)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(kdev);
 	struct i915_audio_component *acomp = i915->display.audio.component;
@@ -1211,7 +1209,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 	cookie = i915_audio_component_get_power(kdev);
 	mutex_lock(&i915->display.audio.mutex);
 
-	audio_state = find_audio_state(i915, port, pipe);
+	audio_state = find_audio_state(i915, port, cpu_transcoder);
 	if (!audio_state) {
 		drm_dbg_kms(&i915->drm, "Not valid for port %c\n", port_name(port));
 		err = -ENODEV;
@@ -1223,7 +1221,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 	/* FIXME stop using the legacy crtc pointer */
 	crtc = to_intel_crtc(encoder->base.crtc);
 
-	/* port must be valid now, otherwise the pipe will be invalid */
+	/* port must be valid now, otherwise the cpu_transcoder will be invalid */
 	acomp->aud_sample_rate[port] = rate;
 
 	/* FIXME get rid of the crtc->config stuff */
@@ -1236,7 +1234,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 }
 
 static int i915_audio_component_get_eld(struct device *kdev, int port,
-					int pipe, bool *enabled,
+					int cpu_transcoder, bool *enabled,
 					unsigned char *buf, int max_bytes)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(kdev);
@@ -1245,7 +1243,7 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 
 	mutex_lock(&i915->display.audio.mutex);
 
-	audio_state = find_audio_state(i915, port, pipe);
+	audio_state = find_audio_state(i915, port, cpu_transcoder);
 	if (!audio_state) {
 		drm_dbg_kms(&i915->drm, "Not valid for port %c\n", port_name(port));
 		mutex_unlock(&i915->display.audio.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index b870f7f47f2b..631a7b17899e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -103,7 +103,7 @@ struct intel_audio {
 	u32 freq_cntrl;
 
 	/* current audio state for the audio component hooks */
-	struct intel_audio_state state[I915_MAX_PIPES];
+	struct intel_audio_state state[I915_MAX_TRANSCODERS];
 
 	/* necessary resource sharing with HDMI LPE audio driver. */
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 8aaaef4d7856..20c8581f4868 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -315,7 +315,7 @@ void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
  * intel_lpe_audio_notify() - notify lpe audio event
  * audio driver and i915
  * @dev_priv: the i915 drm device private data
- * @pipe: pipe
+ * @cpt_transocer: CPU transcoder
  * @port: port
  * @eld : ELD data
  * @ls_clock: Link symbol clock in kHz
@@ -324,7 +324,7 @@ void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
  * Notify lpe audio driver of eld change.
  */
 void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
-			    enum pipe pipe, enum port port,
+			    enum transcoder cpu_transcoder, enum port port,
 			    const void *eld, int ls_clock, bool dp_output)
 {
 	unsigned long irqflags;
@@ -344,7 +344,7 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
 
 	if (eld != NULL) {
 		memcpy(ppdata->eld, eld, HDMI_MAX_ELD_BYTES);
-		ppdata->pipe = pipe;
+		ppdata->pipe = cpu_transcoder;
 		ppdata->ls_clock = ls_clock;
 		ppdata->dp_output = dp_output;
 
diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.h b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
index f848c5038714..0beecac267ae 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
@@ -8,15 +8,15 @@
 
 #include <linux/types.h>
 
-enum pipe;
 enum port;
+enum transcoder;
 struct drm_i915_private;
 
 int  intel_lpe_audio_init(struct drm_i915_private *dev_priv);
 void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv);
 void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv);
 void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
-			    enum pipe pipe, enum port port,
+			    enum transcoder cpu_transcoder, enum port port,
 			    const void *eld, int ls_clock, bool dp_output);
 
 #endif /* __INTEL_LPE_AUDIO_H__ */
-- 
2.39.2

