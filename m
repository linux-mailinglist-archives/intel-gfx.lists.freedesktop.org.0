Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AF2A1B996
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:45:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 842AE10E094;
	Fri, 24 Jan 2025 15:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1EE410E094;
 Fri, 24 Jan 2025 15:45:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Use_VRR_timing_gener?=
 =?utf-8?q?ator_for_fixed_refresh_rate_modes_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2025 15:45:40 -0000
Message-ID: <173773354078.4032717.16935548903261143540@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

Series: Use VRR timing generator for fixed refresh rate modes (rev7)
URL   : https://patchwork.freedesktop.org/series/134383/
State : warning

== Summary ==

Error: dim checkpatch failed
90e352a2d66b drm/i915/vrr: Add crtc_state dump for vrr.vsync params
-:24: WARNING:QUOTED_WHITESPACE_BEFORE_NEWLINE: unnecessary whitespace before a quoted newline
#24: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:300:
+	drm_printf(&p, "vrr: vmin vblank: %d, vmax vblank: %d, vmin vtotal: %d, vmax vtotal: %d vsync start: %d vsync end %d \n",

total: 0 errors, 1 warnings, 0 checks, 13 lines checked
d57fb24ad790 drm/i915/vrr: Compute vrr.vsync_{start, end} during full modeset
c351e71f9632 drm/i915/dp: fix the Adaptive sync Operation mode for SDP
a426c82dca95 drm/i915/dp: Compute as_sdp.vtotal based on vrr timings
89253ef875fd drm/i915/dp: Compute as_sdp based on if vrr possible
293c51542a68 drm/i915/display: Move as sdp params change to fastset
824e1f1aefd2 drm/i915/vrr: Remove unwanted comment
171af98226fa drm/i915:vrr: Refactor VRR timing setup into a separate function
0d8bade51e8f drm/i915:vrr: Separate out functions to compute vmin and vmax
a9b0912df511 drm/i915/vrr: Make helpers for cmrr and vrr timings
2e86b837e7b9 drm/i915/vrr: Avoid prepare vrr timings for cmrr
bc32e433920c drm/i915/vrr: Simplify CMRR Enable Check in intel_vrr_get_config
21bda1ce1fbf drm/i915/vrr: Introduce new field for VRR mode
2bc112b20f47 drm/i915/vrr: Fill VRR timing generator mode for CMRR and VRR
02fa9302eb52 drm/i915/display: Remove vrr.enable and instead check vrr.mode != NONE
8512b409c283 drm/i915/display: Absorb cmrr attributes into vrr struct
ac0a545ec14c drm/i915/display: Add vrr mode to crtc_state dump
2441c50ba56c drm/i915/dp: Avoid vrr compute config for HDMI sink
9441dc6aa047 drm/i915/vrr: Introduce VRR mode Fixed RR
c24ff7880021 drm/i915/vrr: Avoid sending PUSH when VRR TG is used with Fixed refresh rate
08c7ba72be7a drm/i915/display: Enable MSA Ignore Timing PAR only when in not fixed_rr mode
e54b6aed5dcd drm/i915/vrr: Disable CMRR
1a932db0c656 drm/i915/vrr: Use crtc_vtotal for vmin
-:7: WARNING:TYPO_SPELLING: 'cant' may be misspelled - perhaps 'can't'?
#7: 
guardband/pipeline full cant be programmed on the fly. So we need to
                        ^^^^

total: 0 errors, 1 warnings, 0 checks, 34 lines checked
7abd5e67c9b1 drm/i915/vrr: Adjust Vtotal for MSA for fixed timings
f6dd480c6f35 drm/i915/vrr: Prepare for fixed refresh rate timings
ff32b47db1c4 drm/i915/hdmi: Use VRR Timing generator for HDMI
25f7ca429ce8 drm/i915/display: Disable PSR before disabling VRR
f92a1b34c8eb drm/i915/psr: Allow PSR for fixed refrsh rate with VRR TG
d092b31cd9ce drm/i915/display: Extend WA 14015406119 for PSR2
b36c5acb8484 drm/i915/vrr: Handle joiner with vrr
a8d515dcf0e0 drm/i915/vrr: Always set vrr vmax/vmin/flipline in vrr_{enable/disable}
377f55032d43 drm/i915/vrr: Prepare for Fixed refresh rate mode from MTL+
-:19: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#19: FILE: drivers/gpu/drm/i915/display/intel_display.c:1304:
+	struct intel_display * display = to_intel_display(state);

total: 1 errors, 0 warnings, 0 checks, 74 lines checked
44da537c4239 drm/i915/vrr: Refactor condition for computing vmax and LRR
a7488b765682 drm/i915/vrr: Always use VRR timing generator for MTL+
cb60d484575c drm/i915/display: Use VRR timings for MTL+ in modeset sequence


