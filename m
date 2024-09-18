Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2722797BE84
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 17:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 980FF10E270;
	Wed, 18 Sep 2024 15:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0181010E270;
 Wed, 18 Sep 2024 15:22:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Ultrajoiner_basic_fu?=
 =?utf-8?q?nctionality_series_=28rev9=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2024 15:22:28 -0000
Message-ID: <172667294899.1027114.522369417347661725@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
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

Series: Ultrajoiner basic functionality series (rev9)
URL   : https://patchwork.freedesktop.org/series/133800/
State : warning

== Summary ==

Error: dim checkpatch failed
7f9c12c8ab14 drm/i915: Add some essential functionality for joiners
6a5b5a43ecd0 drm/i915/display: Enhance iterators for modeset en/disable
-:204: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc' - possible side-effects?
#204: FILE: drivers/gpu/drm/i915/display/intel_display.h:395:
+#define for_each_crtc_in_masks(display, crtc, first_pipes, second_pipes, i) \
+	for ((i) = 0; \
+	     (i) < (I915_MAX_PIPES * 2) && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
+	     (i)++) \
+		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))

-:204: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#204: FILE: drivers/gpu/drm/i915/display/intel_display.h:395:
+#define for_each_crtc_in_masks(display, crtc, first_pipes, second_pipes, i) \
+	for ((i) = 0; \
+	     (i) < (I915_MAX_PIPES * 2) && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
+	     (i)++) \
+		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))

-:206: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#206: FILE: drivers/gpu/drm/i915/display/intel_display.h:397:
+	     (i) < (I915_MAX_PIPES * 2) && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \

-:210: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc' - possible side-effects?
#210: FILE: drivers/gpu/drm/i915/display/intel_display.h:401:
+#define for_each_crtc_in_masks_reverse(display, crtc, first_pipes, second_pipes, i) \
+	for ((i) = (I915_MAX_PIPES * 2 - 1); \
+	     (i) >= 0 && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
+	     (i)--) \
+		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))

-:210: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#210: FILE: drivers/gpu/drm/i915/display/intel_display.h:401:
+#define for_each_crtc_in_masks_reverse(display, crtc, first_pipes, second_pipes, i) \
+	for ((i) = (I915_MAX_PIPES * 2 - 1); \
+	     (i) >= 0 && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
+	     (i)--) \
+		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))

-:216: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc_state' - possible side-effects?
#216: FILE: drivers/gpu/drm/i915/display/intel_display.h:407:
+#define for_each_pipe_crtc_modeset_disable(display, crtc, crtc_state, i) \
+	for_each_crtc_in_masks(display, crtc, \
+			       _intel_modeset_primary_pipes(crtc_state), \
+			       _intel_modeset_secondary_pipes(crtc_state), \
+			       i)

-:222: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc_state' - possible side-effects?
#222: FILE: drivers/gpu/drm/i915/display/intel_display.h:413:
+#define for_each_pipe_crtc_modeset_enable(display, crtc, crtc_state, i) \
+	for_each_crtc_in_masks_reverse(display, crtc, \
+				       _intel_modeset_primary_pipes(crtc_state), \
+				       _intel_modeset_secondary_pipes(crtc_state), \
+				       i)

total: 0 errors, 1 warnings, 6 checks, 234 lines checked
4d4efc9deed7 drm/i915/display_debugfs: Allow force joiner only if supported
df6d2d17d88e drm/i915/display: Modify debugfs for joiner to force n pipes
d16d4875812e drm/i915/dp: Add helper to compute num pipes required
1aba0d5af3ce drm/i915/display: Add debugfs support to avoid joiner
e4caaef167f1 drm/i915: Split current joiner hw state readout
b3e03e79c34d drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity checks
aa0ae3b5a754 drm/i915/display: Add macro HAS_ULTRAJOINER()
-:18: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#18: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:157:
+#define HAS_ULTRAJOINER(i915)		((DISPLAY_VER(i915) == 14 && IS_DGFX(i915)) || DISPLAY_VER(i915) > 14)

-:18: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#18: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:157:
+#define HAS_ULTRAJOINER(i915)		((DISPLAY_VER(i915) == 14 && IS_DGFX(i915)) || DISPLAY_VER(i915) > 14)

total: 0 errors, 1 warnings, 1 checks, 7 lines checked
7fc7cdaad399 drm/i915: Implement hw state readout and checks for ultrajoiner
a8765aa8412f drm/i915/display: Refactor enable_joiner_pipes
89a087c8cac4 drm/i915/display/vdsc: Add ultrajoiner support with DSC
3d45203e749c drm/i915: Compute config and mode valid changes for ultrajoiner
3e7af13225d2 drm/i915/display: Consider ultrajoiner for computing maxdotclock
6cc6ceac2394 drm/i915/intel_dp: Add support for forcing ultrajoiner


