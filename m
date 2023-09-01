Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B01D4790056
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 18:00:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B58D10E721;
	Fri,  1 Sep 2023 16:00:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9B1310E1B9;
 Fri,  1 Sep 2023 16:00:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C590BAA3D8;
 Fri,  1 Sep 2023 16:00:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 01 Sep 2023 16:00:37 -0000
Message-ID: <169358403780.9815.5156392143424388175@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_VRR=2C_LRR=2C_and_M/N_stuff?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: VRR, LRR, and M/N stuff
URL   : https://patchwork.freedesktop.org/series/123171/
State : warning

== Summary ==

Error: dim checkpatch failed
ceb5c675ed7d drm/i915: Move psr unlock out from the pipe update critical section
bcfae40b96e1 drm/i915: Change intel_pipe_update_{start, end}() calling convention
3a38a23eca3d drm/i915: Extract intel_crtc_vblank_evade_scanlines()
81dac61c36e3 drm/i915: Enable VRR later during fastsets
00a0d797849e drm/i915: Adjust seamless_m_n flag behaviour
a2b041a223d7 drm/i915: Optimize out redundant M/N updates
7b06d470ac13 drm/i915: Relocate is_in_vrr_range()
39518ca01e6b drm/i915: Validate that the timings are within the VRR range
15ff83c1a9a6 drm/i915: Disable VRR during seamless M/N changes
f083c4c91c2d drm/i915: Update VRR parameters in fastset
d141d9d2ed22 drm/i915: Assert that VRR is off during vblank evasion if necessary
2254c65953d4 drm/i915: Implement transcoder LRR for TGL+
-:173: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#173: FILE: drivers/gpu/drm/i915/display/intel_display.c:5589:
+	    (old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&

-:174: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#174: FILE: drivers/gpu/drm/i915/display/intel_display.c:5590:
+	     old_crtc_state->hw.adjusted_mode.crtc_vblank_end == new_crtc_state->hw.adjusted_mode.crtc_vblank_end))

total: 0 errors, 2 warnings, 0 checks, 208 lines checked


