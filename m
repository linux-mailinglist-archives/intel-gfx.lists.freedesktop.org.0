Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 550152930D2
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 23:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0D986EB38;
	Mon, 19 Oct 2020 21:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 79D0F6EB38;
 Mon, 19 Oct 2020 21:56:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71E1CA7DFB;
 Mon, 19 Oct 2020 21:56:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 19 Oct 2020 21:56:02 -0000
Message-ID: <160314456243.32023.4155870497239528622@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201019214337.19330-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201019214337.19330-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_drm/i915=3A_Drop_one_more_us?=
 =?utf-8?q?less_master=5Ftranscoder_assignment?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/7] drm/i915: Drop one more usless master_transcoder assignment
URL   : https://patchwork.freedesktop.org/series/82848/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5e9c0a3f80bf drm/i915: Drop one more usless master_transcoder assignment
40e3f078c22a drm/i915: Introduce with_intel_display_power_if_enabled()
-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:330:
+#define with_intel_display_power_if_enabled(i915, domain, wf) \
+	for ((wf) = intel_display_power_get_if_enabled((i915), (domain)); (wf); \
+	     intel_display_power_put_async((i915), (domain), (wf)), (wf) = 0)

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'domain' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:330:
+#define with_intel_display_power_if_enabled(i915, domain, wf) \
+	for ((wf) = intel_display_power_get_if_enabled((i915), (domain)); (wf); \
+	     intel_display_power_put_async((i915), (domain), (wf)), (wf) = 0)

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:330:
+#define with_intel_display_power_if_enabled(i915, domain, wf) \
+	for ((wf) = intel_display_power_get_if_enabled((i915), (domain)); (wf); \
+	     intel_display_power_put_async((i915), (domain), (wf)), (wf) = 0)

total: 0 errors, 0 warnings, 3 checks, 10 lines checked
ba8826254488 drm/i915: Adjust intel_dsc_power_domain() calling convention
-:279: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#279: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:1133:
+					  intel_dsc_power_domain(crtc, old_crtc_state->cpu_transcoder));

total: 0 errors, 1 warnings, 0 checks, 245 lines checked
23aaa8770260 drm/i915: Extract hsw_panel_transcoders()
0de1b95e83f6 drm/i915: Pimp HSW+ transcoder state readout
-:135: CHECK:SPACING: No space is necessary after a cast
#135: FILE: drivers/gpu/drm/i915/display/intel_display.c:11111:
+	cpu_transcoder = (enum transcoder) crtc->pipe;

total: 0 errors, 0 warnings, 1 checks, 187 lines checked
d1ffd8987bbb drm/i915: cpu_transcoder readout for bigjoiner
-:51: CHECK:SPACING: No space is necessary after a cast
#51: FILE: drivers/gpu/drm/i915/display/intel_display.c:11073:
+		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);

-:87: CHECK:SPACING: No space is necessary after a cast
#87: FILE: drivers/gpu/drm/i915/display/intel_display.c:11163:
+		cpu_transcoder = (enum transcoder) crtc->pipe - 1;

total: 0 errors, 0 warnings, 2 checks, 75 lines checked
d1051eed84f3 drm/i915: FIXMEs for bigjoiner readout
-:10: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:38: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#38: FILE: drivers/gpu/drm/i915/display/intel_display.c:5859:
+#if 0

total: 0 errors, 2 warnings, 0 checks, 45 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
