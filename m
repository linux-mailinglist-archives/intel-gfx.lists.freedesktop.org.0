Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FC5A05DFB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:05:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241E610EBCF;
	Wed,  8 Jan 2025 14:05:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RqB+zBJu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9718F10EBCD;
 Wed,  8 Jan 2025 14:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736345111; x=1767881111;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K7yDoT+PDlVobwXiHwEcob5KkRR+9DgmZ6AUgm4dRh8=;
 b=RqB+zBJuE/F0xCLMveqv0HtaVj+yyk+GxLacrUaE3cAsY8gZaXqZSGBC
 fD3/4EanN0LOcfW8/ZcQrogQOZnWQF2lzrl5NqsICf6N2RPhzz+AoEs2m
 rTvMnWCq79htxP86bxGrpyPeRnA9xBMV7mShRT8UmY7wQZGxlDvCFUEMY
 0EgEbMA06Y81/PzBgaokjdFsIopaIzGc0a09z3lHekgZtSL8l1tyA3L+6
 NZvsHi4enEh5ACdfhoEySICjGeHd6kPPkdWS6xZzhCicICUhtPcI+HD7/
 68TBrCwH6N8KHI3krC8iQ94+LrXOto6rQ7d75C0wNAcWpKxDKWJPd20Sy A==;
X-CSE-ConnectionGUID: jdemzLI8RKio89w88Fdz+g==
X-CSE-MsgGUID: xWKwL/41S+2a0nEQ+8dOJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="47146127"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="47146127"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:04:36 -0800
X-CSE-ConnectionGUID: 6ERr5x4SREWT339eR9Y4yQ==
X-CSE-MsgGUID: uUnqykyBQ0G7iPAMWNruDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="108154130"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:04:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915/audio: rename function prefixes from i915 to
 intel
Date: Wed,  8 Jan 2025 16:04:15 +0200
Message-Id: <5e67f6fc5a441a9512d7855d86ce7868cc992212.1736345025.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1736345025.git.jani.nikula@intel.com>
References: <cover.1736345025.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

The intel prefix is more accurate for display stuff. Rename.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 82 +++++++++++-----------
 1 file changed, 41 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 241e5d3904dc..4b1f46815ad5 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1035,7 +1035,7 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
 	return min_cdclk;
 }
 
-static unsigned long i915_audio_component_get_power(struct device *kdev)
+static unsigned long intel_audio_component_get_power(struct device *kdev)
 {
 	struct intel_display *display = to_intel_display(kdev);
 	struct drm_i915_private *i915 = to_i915(display->drm);
@@ -1067,8 +1067,8 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 	return (unsigned long)wakeref;
 }
 
-static void i915_audio_component_put_power(struct device *kdev,
-					   unsigned long cookie)
+static void intel_audio_component_put_power(struct device *kdev,
+					    unsigned long cookie)
 {
 	struct intel_display *display = to_intel_display(kdev);
 	struct drm_i915_private *i915 = to_i915(display->drm);
@@ -1082,8 +1082,8 @@ static void i915_audio_component_put_power(struct device *kdev,
 	intel_display_power_put(i915, POWER_DOMAIN_AUDIO_PLAYBACK, wakeref);
 }
 
-static void i915_audio_component_codec_wake_override(struct device *kdev,
-						     bool enable)
+static void intel_audio_component_codec_wake_override(struct device *kdev,
+						      bool enable)
 {
 	struct intel_display *display = to_intel_display(kdev);
 	unsigned long cookie;
@@ -1091,7 +1091,7 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
 	if (DISPLAY_VER(display) < 9)
 		return;
 
-	cookie = i915_audio_component_get_power(kdev);
+	cookie = intel_audio_component_get_power(kdev);
 
 	/*
 	 * Enable/disable generating the codec wake signal, overriding the
@@ -1107,11 +1107,11 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
 		usleep_range(1000, 1500);
 	}
 
-	i915_audio_component_put_power(kdev, cookie);
+	intel_audio_component_put_power(kdev, cookie);
 }
 
 /* Get CDCLK in kHz  */
-static int i915_audio_component_get_cdclk_freq(struct device *kdev)
+static int intel_audio_component_get_cdclk_freq(struct device *kdev)
 {
 	struct intel_display *display = to_intel_display(kdev);
 
@@ -1169,8 +1169,8 @@ static struct intel_audio_state *find_audio_state(struct intel_display *display,
 	return NULL;
 }
 
-static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
-						int cpu_transcoder, int rate)
+static int intel_audio_component_sync_audio_rate(struct device *kdev, int port,
+						 int cpu_transcoder, int rate)
 {
 	struct intel_display *display = to_intel_display(kdev);
 	struct i915_audio_component *acomp = display->audio.component;
@@ -1183,7 +1183,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 	if (!HAS_DDI(display))
 		return 0;
 
-	cookie = i915_audio_component_get_power(kdev);
+	cookie = intel_audio_component_get_power(kdev);
 	mutex_lock(&display->audio.mutex);
 
 	audio_state = find_audio_state(display, port, cpu_transcoder);
@@ -1207,13 +1207,13 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 
  unlock:
 	mutex_unlock(&display->audio.mutex);
-	i915_audio_component_put_power(kdev, cookie);
+	intel_audio_component_put_power(kdev, cookie);
 	return err;
 }
 
-static int i915_audio_component_get_eld(struct device *kdev, int port,
-					int cpu_transcoder, bool *enabled,
-					unsigned char *buf, int max_bytes)
+static int intel_audio_component_get_eld(struct device *kdev, int port,
+					 int cpu_transcoder, bool *enabled,
+					 unsigned char *buf, int max_bytes)
 {
 	struct intel_display *display = to_intel_display(kdev);
 	const struct intel_audio_state *audio_state;
@@ -1241,18 +1241,18 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 	return ret;
 }
 
-static const struct drm_audio_component_ops i915_audio_component_ops = {
-	.owner		= THIS_MODULE,
-	.get_power	= i915_audio_component_get_power,
-	.put_power	= i915_audio_component_put_power,
-	.codec_wake_override = i915_audio_component_codec_wake_override,
-	.get_cdclk_freq	= i915_audio_component_get_cdclk_freq,
-	.sync_audio_rate = i915_audio_component_sync_audio_rate,
-	.get_eld	= i915_audio_component_get_eld,
+static const struct drm_audio_component_ops intel_audio_component_ops = {
+	.owner = THIS_MODULE,
+	.get_power = intel_audio_component_get_power,
+	.put_power = intel_audio_component_put_power,
+	.codec_wake_override = intel_audio_component_codec_wake_override,
+	.get_cdclk_freq = intel_audio_component_get_cdclk_freq,
+	.sync_audio_rate = intel_audio_component_sync_audio_rate,
+	.get_eld = intel_audio_component_get_eld,
 };
 
-static int i915_audio_component_bind(struct device *drv_kdev,
-				     struct device *hda_kdev, void *data)
+static int intel_audio_component_bind(struct device *drv_kdev,
+				      struct device *hda_kdev, void *data)
 {
 	struct intel_display *display = to_intel_display(drv_kdev);
 	struct i915_audio_component *acomp = data;
@@ -1267,7 +1267,7 @@ static int i915_audio_component_bind(struct device *drv_kdev,
 		return -ENOMEM;
 
 	drm_modeset_lock_all(display->drm);
-	acomp->base.ops = &i915_audio_component_ops;
+	acomp->base.ops = &intel_audio_component_ops;
 	acomp->base.dev = drv_kdev;
 	BUILD_BUG_ON(MAX_PORTS != I915_MAX_PORTS);
 	for (i = 0; i < ARRAY_SIZE(acomp->aud_sample_rate); i++)
@@ -1278,8 +1278,8 @@ static int i915_audio_component_bind(struct device *drv_kdev,
 	return 0;
 }
 
-static void i915_audio_component_unbind(struct device *drv_kdev,
-					struct device *hda_kdev, void *data)
+static void intel_audio_component_unbind(struct device *drv_kdev,
+					 struct device *hda_kdev, void *data)
 {
 	struct intel_display *display = to_intel_display(drv_kdev);
 	struct i915_audio_component *acomp = data;
@@ -1298,9 +1298,9 @@ static void i915_audio_component_unbind(struct device *drv_kdev,
 			display->audio.power_refcount);
 }
 
-static const struct component_ops i915_audio_component_bind_ops = {
-	.bind	= i915_audio_component_bind,
-	.unbind	= i915_audio_component_unbind,
+static const struct component_ops intel_audio_component_bind_ops = {
+	.bind = intel_audio_component_bind,
+	.unbind = intel_audio_component_unbind,
 };
 
 #define AUD_FREQ_TMODE_SHIFT	14
@@ -1313,7 +1313,7 @@ static const struct component_ops i915_audio_component_bind_ops = {
 #define AUD_FREQ_TGL_BROKEN     (AUD_FREQ_8T | AUD_FREQ_PULLCLKS(2) | AUD_FREQ_BCLK_96M)
 
 /**
- * i915_audio_component_init - initialize and register the audio component
+ * intel_audio_component_init - initialize and register the audio component
  * @display: display device
  *
  * This will register with the component framework a child component which
@@ -1328,7 +1328,7 @@ static const struct component_ops i915_audio_component_bind_ops = {
  * We ignore any error during registration and continue with reduced
  * functionality (i.e. without HDMI audio).
  */
-static void i915_audio_component_init(struct intel_display *display)
+static void intel_audio_component_init(struct intel_display *display)
 {
 	u32 aud_freq, aud_freq_init;
 
@@ -1356,12 +1356,12 @@ static void i915_audio_component_init(struct intel_display *display)
 	intel_audio_cdclk_change_post(display);
 }
 
-static void i915_audio_component_register(struct intel_display *display)
+static void intel_audio_component_register(struct intel_display *display)
 {
 	int ret;
 
 	ret = component_add_typed(display->drm->dev,
-				  &i915_audio_component_bind_ops,
+				  &intel_audio_component_bind_ops,
 				  I915_COMPONENT_AUDIO);
 	if (ret < 0) {
 		drm_err(display->drm,
@@ -1374,18 +1374,18 @@ static void i915_audio_component_register(struct intel_display *display)
 }
 
 /**
- * i915_audio_component_cleanup - deregister the audio component
+ * intel_audio_component_cleanup - deregister the audio component
  * @display: display device
  *
  * Deregisters the audio component, breaking any existing binding to the
  * corresponding snd_hda_intel driver's master component.
  */
-static void i915_audio_component_cleanup(struct intel_display *display)
+static void intel_audio_component_cleanup(struct intel_display *display)
 {
 	if (!display->audio.component_registered)
 		return;
 
-	component_del(display->drm->dev, &i915_audio_component_bind_ops);
+	component_del(display->drm->dev, &intel_audio_component_bind_ops);
 	display->audio.component_registered = false;
 }
 
@@ -1398,13 +1398,13 @@ static void i915_audio_component_cleanup(struct intel_display *display)
 void intel_audio_init(struct intel_display *display)
 {
 	if (intel_lpe_audio_init(display) < 0)
-		i915_audio_component_init(display);
+		intel_audio_component_init(display);
 }
 
 void intel_audio_register(struct intel_display *display)
 {
 	if (!display->audio.lpe.platdev)
-		i915_audio_component_register(display);
+		intel_audio_component_register(display);
 }
 
 /**
@@ -1416,5 +1416,5 @@ void intel_audio_deinit(struct intel_display *display)
 	if (display->audio.lpe.platdev)
 		intel_lpe_audio_teardown(display);
 	else
-		i915_audio_component_cleanup(display);
+		intel_audio_component_cleanup(display);
 }
-- 
2.39.5

