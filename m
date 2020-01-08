Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F306D134499
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 15:08:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60B2D6E2F0;
	Wed,  8 Jan 2020 14:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 329 seconds by postgrey-1.36 at gabe;
 Wed, 08 Jan 2020 14:08:18 UTC
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D38BC6E2F0
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 14:08:18 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M8k65-1ikXDF2np3-004mDm; Wed, 08 Jan 2020 15:02:32 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Wed,  8 Jan 2020 15:01:28 +0100
Message-Id: <20200108140227.3976563-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:kIi7ED0RYkIxN5jrC7zhCvAr9CICa71/ziyFhJPkzEnvKNE72eB
 /ZUyDZKIsiBAvn/3EyBUxdAMz1/RS34RJpaaPiFfW0kf/X463mZaKoMkMtBn4r4PvmKCeND
 gCBOfkz8zvwIhepyQu0rbieMsqHZb+Lgfu283tq+DSU4qAEkzFUHFzVk6d81qeNDcKVsq+E
 wO1mtjFWyMEGqn25HSbgQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bFDc1NhvzfU=:py5R8U+qBL3EGmqXWrOFTy
 nmnfiMlvTa7SUK/xgOOrE0ttyqeCySG3tVKXbkPKr4NLsavgVIiKKeWjA5OquqFR6O3Va0Cy3
 2v5fMDLOulPjaxzaYYw3cLd2tq5/vBwmJHdA3uvzQNkvEsWsAIZEBL97IE8fw8kgZcrfrBqXZ
 oTapRk2UyhO53uUvf4/pBpxZ7xC922gGfXMMJVdt0eU8xHXKNlnY9QtlwR8B/tBC2mk5Mlw8v
 3pmmAvXdSPOWydyqzkTQX7MHUdnr4Z4cjt0bFBHVV2dVJwbEdFZPm8ZfUbm1hTIWXA+HhYvgH
 ZWWcw3xTeo0lC8WsstUm71kSLObch9pe7W8FSODYIc8dZFu5JjqTzczIRo0yNHjsZfyCRBY/A
 OnDjD1g1qz5bRi/eW99UthOY+gl8NTDMdibTPPAJtAm8EADZJzj9bd3cMZmK84Cc+SqLwzVbZ
 EmApj26+RcyAsttNVwD+zftrln/GnUa8RYYEm56iV90qjF+KYMCOWeYXy3bKygEabWDcTFINP
 FbjhNbe4DzMmDTiu5NHo14A0IAEVYj+XZrEaepXisFiEahK7khxO71BDp7Ru9LyowlsyEJhbe
 oxkmwpmNTzrMgqmKY+i7ATXEcyAUWks+TsDf0SVmFRgdh2z0N64JyaRZ42ilciLyBMJG643/g
 ICB8tezvIhxIl1jxFXMJHV4ceeemkIFBqp31Cc5QgCSI1dmFYHTaVfbypHA9iPQvNj9vokZJw
 SGlgbqcT0epVWUhOlaN+L66iipmOBzpV1LAFAgiCTIoQaYaQLyh5HXYQrivXrOgKdf7zL63hD
 p4n/MyxcZYU4B7vvlVflhjuMy4aGjdFx3MWifuNwC2EYc7S4UeVb6GMEuoThsNs1cggVuM4IW
 GZFF4ezx+O4P2fxWLXDQ==
Subject: [Intel-gfx] [PATCH] i915: fix backlight configuration issue
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
Cc: Arnd Bergmann <arnd@arndb.de>, Alexander Shiyan <shc_work@mail.ru>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, dri-devel@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The i915 driver can use the backlight subsystem as an option, and usually
selects it when CONFIG_ACPI is set. However it is possible to configure
a kernel with modular backlight classdev support and a built-in i915
driver, which leads to a linker error:

drivers/gpu/drm/i915/display/intel_panel.o: In function `intel_backlight_device_register':
intel_panel.c:(.text+0x2f58): undefined reference to `backlight_device_register'
drivers/gpu/drm/i915/display/intel_panel.o: In function `intel_backlight_device_unregister':
intel_panel.c:(.text+0x2fe4): undefined reference to `backlight_device_unregister'

Add another Kconfig option to ensure the driver only tries to use
the backlight support when it can in fact be linked that way. The
new option is on by default to keep the existing behavior.

This is roughly what other drivers like nouveau do as well.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
I've had this one lying around for a long time, it is still needed
but I am not sure which solution is best here. This version is
probably the least invasive, but it does not solve the bigger
problem around too many 'select' statements in drm
---
 drivers/gpu/drm/i915/Kconfig               | 11 ++++++++++-
 drivers/gpu/drm/i915/display/intel_panel.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_panel.h |  6 +++---
 3 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index ba9595960bbe..81d956040d18 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -16,7 +16,7 @@ config DRM_I915
 	select IRQ_WORK
 	# i915 depends on ACPI_VIDEO when ACPI is enabled
 	# but for select to work, need to select ACPI_VIDEO's dependencies, ick
-	select BACKLIGHT_CLASS_DEVICE if ACPI
+	select DRM_I915_BACKLIGHT if ACPI
 	select INPUT if ACPI
 	select ACPI_VIDEO if ACPI
 	select ACPI_BUTTON if ACPI
@@ -68,6 +68,15 @@ config DRM_I915_FORCE_PROBE
 
 	  Use "*" to force probe the driver for all known devices.
 
+config DRM_I915_BACKLIGHT
+	tristate "Control backlight support"
+	depends on DRM_I915
+	default DRM_I915
+	select BACKLIGHT_CLASS_DEVICE
+	help
+          Say Y here if you want to control the backlight of your display
+          (e.g. a laptop panel).
+
 config DRM_I915_CAPTURE_ERROR
 	bool "Enable capturing GPU state following a hang"
 	depends on DRM_I915
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 7b3ec6eb3382..e2fe7a50dcbf 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -1203,7 +1203,7 @@ void intel_panel_enable_backlight(const struct intel_crtc_state *crtc_state,
 	mutex_unlock(&dev_priv->backlight_lock);
 }
 
-#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
+#if IS_ENABLED(CONFIG_DRM_I915_BACKLIGHT)
 static u32 intel_panel_get_backlight(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
@@ -1370,7 +1370,7 @@ void intel_backlight_device_unregister(struct intel_connector *connector)
 		panel->backlight.device = NULL;
 	}
 }
-#endif /* CONFIG_BACKLIGHT_CLASS_DEVICE */
+#endif /* CONFIG_DRM_I915_BACKLIGHT */
 
 /*
  * CNP: PWM clock frequency is 19.2 MHz or 24 MHz.
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index cedeea443336..e6e81268b7ed 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -49,10 +49,10 @@ intel_panel_edid_fixed_mode(struct intel_connector *connector);
 struct drm_display_mode *
 intel_panel_vbt_fixed_mode(struct intel_connector *connector);
 
-#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
+#if IS_ENABLED(CONFIG_DRM_I915_BACKLIGHT)
 int intel_backlight_device_register(struct intel_connector *connector);
 void intel_backlight_device_unregister(struct intel_connector *connector);
-#else /* CONFIG_BACKLIGHT_CLASS_DEVICE */
+#else /* CONFIG_DRM_I915_BACKLIGHT */
 static inline int intel_backlight_device_register(struct intel_connector *connector)
 {
 	return 0;
@@ -60,6 +60,6 @@ static inline int intel_backlight_device_register(struct intel_connector *connec
 static inline void intel_backlight_device_unregister(struct intel_connector *connector)
 {
 }
-#endif /* CONFIG_BACKLIGHT_CLASS_DEVICE */
+#endif /* CONFIG_DRM_I915_BACKLIGHT */
 
 #endif /* __INTEL_PANEL_H__ */
-- 
2.20.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
