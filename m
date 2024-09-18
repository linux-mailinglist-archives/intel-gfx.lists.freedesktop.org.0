Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC9497BFC2
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:36:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F0110E5FC;
	Wed, 18 Sep 2024 17:36:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nw1DjhGI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FBCE10E5FC;
 Wed, 18 Sep 2024 17:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726680983; x=1758216983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T0Uo6XwFKMdIAGVngRCP7incXeNQCUs++eM89JI5sJ4=;
 b=nw1DjhGIjstCtZtWdDKhsquh+iN3YDB84EwioC13nzJN+yVshHXnd3Z/
 nA0ZJVH6FIV7lOBF78qQSXlw+exfPYRdNVAHqzjJvlS7VTnio5zh6H0Uy
 z282iU/5MxPlPwbzsqyoGdoxkgH670nrvOUxAAq9PVM7nL4aXaO1sFGag
 CeeGvkGgqPDI9Wy9JVh8mV/75GrzGInrGI2M5rnImfxMjl/zohc1gHsBz
 dCyH1oFXpW7SM03obF+AFS8xaCy/rqglgV3P9n/a0kRU/KfZLKCyQTa0m
 v2BUVQ+UuWI/6iQo8AwEc0zR6X0EjdwMWc4FcjRHqMzfrQPly5HAiwS1x A==;
X-CSE-ConnectionGUID: 9486sMDhRDa9eTikdD2eIQ==
X-CSE-MsgGUID: GqJz+loNQEKpOXMA7SVMxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25553633"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25553633"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:36:22 -0700
X-CSE-ConnectionGUID: TeleIiM/Tba0cCuJZKVfQg==
X-CSE-MsgGUID: ZvyH0+neQm+S7ysj0cP8wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="70111321"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:36:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 5/6] drm/i915/audio: be explicit about intel_wakeref_t
 conversions
Date: Wed, 18 Sep 2024 20:35:47 +0300
Message-Id: <9d2a2c2399e70f36e0d68d88136ac688f02988fe.1726680898.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726680898.git.jani.nikula@intel.com>
References: <cover.1726680898.git.jani.nikula@intel.com>
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

Use explicit casts to convert between intel_wakeref_t and unsigned long,
to not rely on intel_wakeref_t underlying type remaining unsigned long,
allowing us to change it as needed. (And yes, this is indeed preparation
for changing the typedef for intel_wakeref_t.)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index f5e7eefab2f1..32aa9ec1a204 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -982,12 +982,12 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 {
 	struct intel_display *display = to_intel_display(kdev);
 	struct drm_i915_private *i915 = to_i915(display->drm);
-	intel_wakeref_t ret;
+	intel_wakeref_t wakeref;
 
 	/* Catch potential impedance mismatches before they occur! */
 	BUILD_BUG_ON(sizeof(intel_wakeref_t) > sizeof(unsigned long));
 
-	ret = intel_display_power_get(i915, POWER_DOMAIN_AUDIO_PLAYBACK);
+	wakeref = intel_display_power_get(i915, POWER_DOMAIN_AUDIO_PLAYBACK);
 
 	if (i915->display.audio.power_refcount++ == 0) {
 		if (DISPLAY_VER(i915) >= 9) {
@@ -1007,7 +1007,7 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 				     0, AUD_PIN_BUF_ENABLE);
 	}
 
-	return ret;
+	return (unsigned long)wakeref;
 }
 
 static void i915_audio_component_put_power(struct device *kdev,
@@ -1015,13 +1015,14 @@ static void i915_audio_component_put_power(struct device *kdev,
 {
 	struct intel_display *display = to_intel_display(kdev);
 	struct drm_i915_private *i915 = to_i915(display->drm);
+	intel_wakeref_t wakeref = (intel_wakeref_t)cookie;
 
 	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
 	if (--i915->display.audio.power_refcount == 0)
 		if (IS_GEMINILAKE(i915))
 			glk_force_audio_cdclk(i915, false);
 
-	intel_display_power_put(i915, POWER_DOMAIN_AUDIO_PLAYBACK, cookie);
+	intel_display_power_put(i915, POWER_DOMAIN_AUDIO_PLAYBACK, wakeref);
 }
 
 static void i915_audio_component_codec_wake_override(struct device *kdev,
-- 
2.39.2

