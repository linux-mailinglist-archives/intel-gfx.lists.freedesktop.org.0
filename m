Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C822993F7F8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 16:30:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A45910E3F7;
	Mon, 29 Jul 2024 14:30:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gcrfTEJa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E3010E3F5;
 Mon, 29 Jul 2024 14:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722263451; x=1753799451;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QSHWuKN4NMSnokTn6j/DIbUAkPJl4vaLSHfuI51ZxYY=;
 b=gcrfTEJapOuCqqAUQstBoWgEgb0F5/sNaPkySd2qHqBSMr/xFhDaAWHL
 4UAGjfskvV/dJljRckndSOUFuMLZWMLN/DUbhMevR5oKPRidAyiTNsTQl
 BeCOuKtg1bl/GUnJOh80uwHCXK+aQ+14Y+MZYRW1fdxgc4kBkM+DMVUDx
 GoHSyKUwSZOVQzezl2YewlV/Y/4wtpz8k35gzmyGrdFbZmjVnuTc7iv7Z
 l5V5qScdgZgj7vSV512Qam0rieDv1Vl895JYU7eOPluw66CUkpgKDHUXc
 OUz0JSpKkQ7jZRlKmzmz9uMBFUGIorA34WDqvq+gpoEP2h5obz/TY8ynH g==;
X-CSE-ConnectionGUID: 8BjU/LdNQW2HBP4B+h1BhQ==
X-CSE-MsgGUID: 5/L/9RFjSqqnfITMqu+L3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19823128"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="19823128"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:51 -0700
X-CSE-ConnectionGUID: vFgMEQO/TxSJIuanMfNW2w==
X-CSE-MsgGUID: iKOoczYrTJqttZG4Dx1B+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53651648"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/10] drm/i915/audio: migrate away from kdev_to_i915()
Date: Mon, 29 Jul 2024 17:30:08 +0300
Message-Id: <0197760071fb3a47f579fbdc78976bde4f5629a8.1722263308.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
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

Use to_intel_display() instead of kdev_to_i915() in the audio component
API hooks. Avoid further drive-by changes at this point, and just
convert the display pointer to i915, and leave the struct intel_display
conversion for later.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 34 +++++++++++++---------
 1 file changed, 21 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index b9bafec06fb8..df2879538738 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -979,7 +979,8 @@ static void glk_force_audio_cdclk(struct drm_i915_private *i915,
 
 static unsigned long i915_audio_component_get_power(struct device *kdev)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_display *display = to_intel_display(kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t ret;
 
 	/* Catch potential impedance mismatches before they occur! */
@@ -1011,7 +1012,8 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 static void i915_audio_component_put_power(struct device *kdev,
 					   unsigned long cookie)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_display *display = to_intel_display(kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
 	if (--i915->display.audio.power_refcount == 0)
@@ -1024,7 +1026,8 @@ static void i915_audio_component_put_power(struct device *kdev,
 static void i915_audio_component_codec_wake_override(struct device *kdev,
 						     bool enable)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_display *display = to_intel_display(kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned long cookie;
 
 	if (DISPLAY_VER(i915) < 9)
@@ -1052,7 +1055,8 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
 /* Get CDCLK in kHz  */
 static int i915_audio_component_get_cdclk_freq(struct device *kdev)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_display *display = to_intel_display(kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (drm_WARN_ON_ONCE(&i915->drm, !HAS_DDI(i915)))
 		return -ENODEV;
@@ -1111,7 +1115,8 @@ static struct intel_audio_state *find_audio_state(struct drm_i915_private *i915,
 static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 						int cpu_transcoder, int rate)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_display *display = to_intel_display(kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_audio_component *acomp = i915->display.audio.component;
 	const struct intel_audio_state *audio_state;
 	struct intel_encoder *encoder;
@@ -1153,7 +1158,8 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 					int cpu_transcoder, bool *enabled,
 					unsigned char *buf, int max_bytes)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_display *display = to_intel_display(kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_audio_state *audio_state;
 	int ret = 0;
 
@@ -1188,24 +1194,25 @@ static const struct drm_audio_component_ops i915_audio_component_ops = {
 	.get_eld	= i915_audio_component_get_eld,
 };
 
-static int i915_audio_component_bind(struct device *i915_kdev,
+static int i915_audio_component_bind(struct device *drv_kdev,
 				     struct device *hda_kdev, void *data)
 {
+	struct intel_display *display = to_intel_display(drv_kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_audio_component *acomp = data;
-	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	int i;
 
 	if (drm_WARN_ON(&i915->drm, acomp->base.ops || acomp->base.dev))
 		return -EEXIST;
 
 	if (drm_WARN_ON(&i915->drm,
-			!device_link_add(hda_kdev, i915_kdev,
+			!device_link_add(hda_kdev, drv_kdev,
 					 DL_FLAG_STATELESS)))
 		return -ENOMEM;
 
 	drm_modeset_lock_all(&i915->drm);
 	acomp->base.ops = &i915_audio_component_ops;
-	acomp->base.dev = i915_kdev;
+	acomp->base.dev = drv_kdev;
 	BUILD_BUG_ON(MAX_PORTS != I915_MAX_PORTS);
 	for (i = 0; i < ARRAY_SIZE(acomp->aud_sample_rate); i++)
 		acomp->aud_sample_rate[i] = 0;
@@ -1215,11 +1222,12 @@ static int i915_audio_component_bind(struct device *i915_kdev,
 	return 0;
 }
 
-static void i915_audio_component_unbind(struct device *i915_kdev,
+static void i915_audio_component_unbind(struct device *drv_kdev,
 					struct device *hda_kdev, void *data)
 {
+	struct intel_display *display = to_intel_display(drv_kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_audio_component *acomp = data;
-	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 
 	drm_modeset_lock_all(&i915->drm);
 	acomp->base.ops = NULL;
@@ -1227,7 +1235,7 @@ static void i915_audio_component_unbind(struct device *i915_kdev,
 	i915->display.audio.component = NULL;
 	drm_modeset_unlock_all(&i915->drm);
 
-	device_link_remove(hda_kdev, i915_kdev);
+	device_link_remove(hda_kdev, drv_kdev);
 
 	if (i915->display.audio.power_refcount)
 		drm_err(&i915->drm, "audio power refcount %d after unbind\n",
-- 
2.39.2

