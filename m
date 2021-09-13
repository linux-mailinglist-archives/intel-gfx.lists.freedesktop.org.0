Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC141409853
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 18:05:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD4216E0E6;
	Mon, 13 Sep 2021 16:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5436D6E0E6;
 Mon, 13 Sep 2021 16:05:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4D0E4A363D;
 Mon, 13 Sep 2021 16:05:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Sep 2021 16:05:16 -0000
Message-ID: <163154911627.12459.17588893166903446245@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_bigjoiner_state_readout?=
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

Series: drm/i915: Fix bigjoiner state readout
URL   : https://patchwork.freedesktop.org/series/94609/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c2571575849c Revert "drm/i915/display: Disable audio, DRRS and PSR before planes"
36568f62f4b3 drm/i915: Disable all planes before modesetting any pipes
9be6c55e57d1 drm/i915: Extract intel_dp_use_bigjoiner()
a3fc21d5d6df drm/i915: Flatten hsw_crtc_compute_clock()
9f3183ee9429 drm/i915: s/pipe/transcoder/ when dealing with PIPECONF/TRANSCONF
6e8de16f0343 drm/i915: Introduce with_intel_display_power_if_enabled()
-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:413:
+#define with_intel_display_power_if_enabled(i915, domain, wf) \
+	for ((wf) = intel_display_power_get_if_enabled((i915), (domain)); (wf); \
+	     intel_display_power_put_async((i915), (domain), (wf)), (wf) = 0)

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'domain' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:413:
+#define with_intel_display_power_if_enabled(i915, domain, wf) \
+	for ((wf) = intel_display_power_get_if_enabled((i915), (domain)); (wf); \
+	     intel_display_power_put_async((i915), (domain), (wf)), (wf) = 0)

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/display/intel_display_power.h:413:
+#define with_intel_display_power_if_enabled(i915, domain, wf) \
+	for ((wf) = intel_display_power_get_if_enabled((i915), (domain)); (wf); \
+	     intel_display_power_put_async((i915), (domain), (wf)), (wf) = 0)

total: 0 errors, 0 warnings, 3 checks, 10 lines checked
5adf1c1b4f21 drm/i915: Adjust intel_dsc_power_domain() calling convention
-:249: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#249: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:1141:
+		intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);

total: 0 errors, 1 warnings, 0 checks, 291 lines checked
d395994fdc73 drm/i915: Extract hsw_panel_transcoders()
f72fb22ecd92 drm/i915: Pimp HSW+ transcoder state readout
-:132: CHECK:SPACING: No space is necessary after a cast
#132: FILE: drivers/gpu/drm/i915/display/intel_display.c:5656:
+	cpu_transcoder = (enum transcoder) crtc->pipe;

total: 0 errors, 0 warnings, 1 checks, 178 lines checked
228d612ee392 drm/i915: Configure TRANSCONF just the once with bigjoiner
414928c8adbe drm/i915: Introduce intel_master_crtc()
4ac52967591b drm/i915: Simplify intel_crtc_copy_uapi_to_hw_state_nomodeset()
c2e6e3a6e446 drm/i915: Split PPS write from DSC enable
d1e188d0f92d drm/i915: Perform correct cpu_transcoder readout for bigjoiner
-:52: CHECK:SPACING: No space is necessary after a cast
#52: FILE: drivers/gpu/drm/i915/display/intel_display.c:5622:
+		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);

-:101: CHECK:SPACING: No space is necessary after a cast
#101: FILE: drivers/gpu/drm/i915/display/intel_display.c:5725:
+		cpu_transcoder = (enum transcoder) crtc->pipe - 1;

total: 0 errors, 0 warnings, 2 checks, 88 lines checked
18329b38477a drm/i915: Reduce bigjoiner special casing
87e0b2b138a2 drm/i915: Nuke PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE


