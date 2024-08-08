Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A3E94C0C7
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 17:16:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FFDE10E772;
	Thu,  8 Aug 2024 15:16:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="REFcn+39";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0CD310E772;
 Thu,  8 Aug 2024 15:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723130192; x=1754666192;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YUVyLTx7R96RPdVRKq4AVVL/UC0am0XTkIiGcbO4CGs=;
 b=REFcn+39gZoBtmx4kNqljZO37c8gIZNtzgpAKcAMeXws6Efg1q+RywL2
 uiPDk3vnTHfQ69x8SCsg4e9ElA5MhI4uocPqIq6a+NkTFV1jCDZX2HpRZ
 xBUksLjiI2ImmDvZmbG2TqTFzPK4BQdS7gBfDjgUDUOnc1XKo3Yt+ejm0
 t1jKqrT7UhG/Ja2vZ3DLCpv2F3RJ4Z6YzEK4GJJ0vsmlKyBBYQP4WqkJl
 2aR8Bn7rNmBCCWCeJTG6r0IngRWMAk7LT6E/G82aJ9mYJp3YklspAa0hm
 ejUBHlxssMoeo7ywfehOFXMQYpBRAU/FMkSk9HGuHhS+ioQp+s3JbUstC w==;
X-CSE-ConnectionGUID: mXwQN7fLT+i907rb/o4Arg==
X-CSE-MsgGUID: aBVLeq10QuOH2BPZhAQXGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="46667083"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="46667083"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:31 -0700
X-CSE-ConnectionGUID: WJ9GodNzS0Cxd4OlfiPBDw==
X-CSE-MsgGUID: 6GwZKbveRkyU/EsF4O418g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="56920084"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, lucas.demarchi@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2 07/10] drm/i915/audio: migrate away from kdev_to_i915()
Date: Thu,  8 Aug 2024 18:15:52 +0300
Message-Id: <0fe0ce2d04ce2b0995a90d65d88cdbecac9b0770.1723129920.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1723129920.git.jani.nikula@intel.com>
References: <cover.1723129920.git.jani.nikula@intel.com>
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

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 34 +++++++++++++---------
 1 file changed, 21 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 9b8508a503f7..f5e7eefab2f1 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -980,7 +980,8 @@ static void glk_force_audio_cdclk(struct drm_i915_private *i915,
 
 static unsigned long i915_audio_component_get_power(struct device *kdev)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_display *display = to_intel_display(kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t ret;
 
 	/* Catch potential impedance mismatches before they occur! */
@@ -1012,7 +1013,8 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 static void i915_audio_component_put_power(struct device *kdev,
 					   unsigned long cookie)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_display *display = to_intel_display(kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
 	if (--i915->display.audio.power_refcount == 0)
@@ -1025,7 +1027,8 @@ static void i915_audio_component_put_power(struct device *kdev,
 static void i915_audio_component_codec_wake_override(struct device *kdev,
 						     bool enable)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_display *display = to_intel_display(kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned long cookie;
 
 	if (DISPLAY_VER(i915) < 9)
@@ -1053,7 +1056,8 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
 /* Get CDCLK in kHz  */
 static int i915_audio_component_get_cdclk_freq(struct device *kdev)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_display *display = to_intel_display(kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (drm_WARN_ON_ONCE(&i915->drm, !HAS_DDI(i915)))
 		return -ENODEV;
@@ -1112,7 +1116,8 @@ static struct intel_audio_state *find_audio_state(struct drm_i915_private *i915,
 static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
 						int cpu_transcoder, int rate)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_display *display = to_intel_display(kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_audio_component *acomp = i915->display.audio.component;
 	const struct intel_audio_state *audio_state;
 	struct intel_encoder *encoder;
@@ -1154,7 +1159,8 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 					int cpu_transcoder, bool *enabled,
 					unsigned char *buf, int max_bytes)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_display *display = to_intel_display(kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_audio_state *audio_state;
 	int ret = 0;
 
@@ -1189,24 +1195,25 @@ static const struct drm_audio_component_ops i915_audio_component_ops = {
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
@@ -1216,11 +1223,12 @@ static int i915_audio_component_bind(struct device *i915_kdev,
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
@@ -1228,7 +1236,7 @@ static void i915_audio_component_unbind(struct device *i915_kdev,
 	i915->display.audio.component = NULL;
 	drm_modeset_unlock_all(&i915->drm);
 
-	device_link_remove(hda_kdev, i915_kdev);
+	device_link_remove(hda_kdev, drv_kdev);
 
 	if (i915->display.audio.power_refcount)
 		drm_err(&i915->drm, "audio power refcount %d after unbind\n",
-- 
2.39.2

