Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7B0A1BB60
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 18:27:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C867210E0DF;
	Fri, 24 Jan 2025 17:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBAF110E0DF;
 Fri, 24 Jan 2025 17:27:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_intel=5F?=
 =?utf-8?q?display_conversions_and_some_debug_improvements?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2025 17:27:01 -0000
Message-ID: <173773962182.4124520.4158786927786909980@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: intel_display conversions and some debug improvements
URL   : https://patchwork.freedesktop.org/series/143942/
State : warning

== Summary ==

Error: dim checkpatch failed
deccf783a3bf drm/i915: Decouple i915_gem_dumb_create() from the display a bit
0dac8de94d1e drm/i915: Decouple intel_fb_bo.h interfaces from driver specific types
62d4e1e09e57 drm/i915: Convert intel_crtc.c to struct intel_display
648b2a84c1b5 drm/i915: Convert intel_fb.c to struct intel_display
-:436: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'var' - possible side-effects?
#436: FILE: drivers/gpu/drm/i915/display/intel_fb.c:1467:
+#define assign_bfld_chk_ovf(display, var, val) ({ \
 	(var) = (val); \
+	drm_WARN_ON((display)->drm, (var) != (val)); \
 	(var); \
 })

-:436: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val' - possible side-effects?
#436: FILE: drivers/gpu/drm/i915/display/intel_fb.c:1467:
+#define assign_bfld_chk_ovf(display, var, val) ({ \
 	(var) = (val); \
+	drm_WARN_ON((display)->drm, (var) != (val)); \
 	(var); \
 })

total: 0 errors, 0 warnings, 2 checks, 878 lines checked
e90d8b5b5133 drm/i915: Convert intel_display_power_{get, put}*() to intel_display
-:1505: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'display' - possible side-effects?
#1505: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:299:
+#define with_intel_display_power(display, domain, wf) \
+	for ((wf) = intel_display_power_get((display), (domain)); (wf); \
+	     intel_display_power_put_async((display), (domain), (wf)), (wf) = NULL)

-:1505: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'domain' - possible side-effects?
#1505: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:299:
+#define with_intel_display_power(display, domain, wf) \
+	for ((wf) = intel_display_power_get((display), (domain)); (wf); \
+	     intel_display_power_put_async((display), (domain), (wf)), (wf) = NULL)

-:1505: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#1505: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:299:
+#define with_intel_display_power(display, domain, wf) \
+	for ((wf) = intel_display_power_get((display), (domain)); (wf); \
+	     intel_display_power_put_async((display), (domain), (wf)), (wf) = NULL)

-:1512: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'display' - possible side-effects?
#1512: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:303:
+#define with_intel_display_power_if_enabled(display, domain, wf) \
+	for ((wf) = intel_display_power_get_if_enabled((display), (domain)); (wf); \
+	     intel_display_power_put_async((display), (domain), (wf)), (wf) = NULL)

-:1512: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'domain' - possible side-effects?
#1512: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:303:
+#define with_intel_display_power_if_enabled(display, domain, wf) \
+	for ((wf) = intel_display_power_get_if_enabled((display), (domain)); (wf); \
+	     intel_display_power_put_async((display), (domain), (wf)), (wf) = NULL)

-:1512: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#1512: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:303:
+#define with_intel_display_power_if_enabled(display, domain, wf) \
+	for ((wf) = intel_display_power_get_if_enabled((display), (domain)); (wf); \
+	     intel_display_power_put_async((display), (domain), (wf)), (wf) = NULL)

total: 0 errors, 0 warnings, 6 checks, 2358 lines checked
7d74accdac72 drm/i915: Convert i9xx_plane.c to struct intel_display
b5c88381db4f drm/i915: Finish intel_sprite.c struct intel_display conversion
760c5e8ff934 drm/i915: Convert intel_cursor.c to struct intel_display
6518533ac476 drm/i915: Convert skl_univeral_plane.c to struct intel_display
-:1129: WARNING:IS_ENABLED_CONFIG: IS_ENABLED(I915) is normally used as IS_ENABLED(CONFIG_I915)
#1129: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:2805:
+	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(to_i915(display->drm)))

total: 0 errors, 1 warnings, 0 checks, 1221 lines checked
4f38e6c7dc48 drm/i915: Use DRM_RECT_FMT & co. for plane debugs
-:38: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:963:
+		drm_dbg_kms(&i915->drm, "Plane (" DRM_RECT_FMT ") must cover entire CRTC (" DRM_RECT_FMT ")\n",

total: 0 errors, 1 warnings, 0 checks, 23 lines checked
a8c2e8e9b6ba drm/i915: Pimp plane debugs
-:79: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#79: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:949:
+			    "[PLANE:%d:%s] invalid scaling "DRM_RECT_FP_FMT " -> " DRM_RECT_FMT "\n",

-:90: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#90: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:966:
+			    "[PLANE:%d:%s] plane (" DRM_RECT_FMT ") must cover entire CRTC (" DRM_RECT_FMT ")\n",

total: 0 errors, 1 warnings, 1 checks, 378 lines checked


