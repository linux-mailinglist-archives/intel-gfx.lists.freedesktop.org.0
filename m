Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCB47A1D43
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 13:18:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B42DA10E17C;
	Fri, 15 Sep 2023 11:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 48A4D10E17C;
 Fri, 15 Sep 2023 11:18:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4364CAADF2;
 Fri, 15 Sep 2023 11:18:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 15 Sep 2023 11:18:11 -0000
Message-ID: <169477669124.32041.18135916172255882694@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_VRR=2C_LRR=2C_and_M/N_stuff_=28rev3=29?=
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

Series: drm/i915: VRR, LRR, and M/N stuff (rev3)
URL   : https://patchwork.freedesktop.org/series/123171/
State : warning

== Summary ==

Error: dim checkpatch failed
f109dbfb222e drm/i915: Move psr unlock out from the pipe update critical section
b0cd3befc8d8 drm/i915: Change intel_pipe_update_{start, end}() calling convention
ac4a04c6ee67 drm/i915: Extract intel_crtc_vblank_evade_scanlines()
d94b8ec8df75 drm/i915: Enable VRR later during fastsets
3736cd1a5634 drm/i915: Adjust seamless_m_n flag behaviour
bfe2861ee4f5 drm/i915: Optimize out redundant M/N updates
bcbc7331c4dd drm/i915: Relocate is_in_vrr_range()
2327b8d3bceb drm/i915: Validate that the timings are within the VRR range
67b63054531a drm/i915: Disable VRR during seamless M/N changes
65fc33454c03 drm/i915: Update VRR parameters in fastset
0706f6c0bc1d drm/i915: Assert that VRR is off during vblank evasion if necessary
d85bf5ffbe6c drm/i915: Implement transcoder LRR for TGL+
-:175: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#175: FILE: drivers/gpu/drm/i915/display/intel_display.c:5621:
+	    (old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&

-:176: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#176: FILE: drivers/gpu/drm/i915/display/intel_display.c:5622:
+	     old_crtc_state->hw.adjusted_mode.crtc_vblank_end == new_crtc_state->hw.adjusted_mode.crtc_vblank_end))

total: 0 errors, 2 warnings, 0 checks, 201 lines checked


