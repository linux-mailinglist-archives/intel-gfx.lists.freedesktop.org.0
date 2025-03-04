Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25871A4DAB6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 11:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A00ED10E590;
	Tue,  4 Mar 2025 10:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FDC110E57C;
 Tue,  4 Mar 2025 10:33:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Use_VRR_timing_gener?=
 =?utf-8?q?ator_for_fixed_refresh_rate_modes_=28rev11=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 04 Mar 2025 10:33:54 -0000
Message-ID: <174108443450.536516.5053080210621806737@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
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

Series: Use VRR timing generator for fixed refresh rate modes (rev11)
URL   : https://patchwork.freedesktop.org/series/134383/
State : warning

== Summary ==

Error: dim checkpatch failed
b138b0acc63a drm/i915/vrr: Remove unwanted comment
fc97f5a882a9 drm/i915:vrr: Separate out functions to compute vmin and vmax
a3e1aa9769ed drm/i915/vrr: Make helpers for cmrr and vrr timings
a3cf6df46b12 drm/i915/vrr: Disable CMRR
50aecbd4cac1 drm/i915/vrr: Track vrr.enable only for variable timing
917728b82fb7 drm/i915/vrr: Use crtc_vtotal for vmin
ac0c7fb7312b drm/i915/vrr: Prepare for fixed refresh rate timings
942e1c80da20 drm/i915/display: Enable MSA Ignore Timing PAR only when in not fixed_rr mode
3479dd4a613a drm/i915/hdmi: Use VRR Timing generator for HDMI for fixed_rr
a1500c79ca66 drm/i915/dp_mst: Use VRR Timing generator for DP MST for fixed_rr
7696c45b4518 drm/i915/display: Disable PSR before disabling VRR
6aed618a1c75 drm/i915/display: Move intel_psr_post_plane_update() at the later
d83e9ab480b6 drm/i915/vrr: Refactor condition for computing vmax and LRR
3aacd765b349 drm/i915/vrr: Always set vrr vmax/vmin/flipline in vrr_{enable/disable}
ab2c5b71fcb9 drm/i915/display: Use fixed_rr timings in modeset sequence
1b0c9b75ddfe drm/i915/vrr: Use fixed timings for platforms that support VRR
3ed2e821a55e drm/i915/display: Move vrr.guardband/pipeline_full out of !fastset block
290c84c55579 drm/i915/display: Use fixed rr timings in intel_set_transcoder_timings_lrr()
29ae94066481 drm/i915/vrr: Allow fixed_rr with pipe joiner
399083b9a803 drm/i915/vrr: Always use VRR timing generator for MTL+
f7555887c57f drm/i915/display: Add fixed_rr to crtc_state dump
249d4231fc95 drm/i915/display: Avoid use of VTOTAL.Vtotal bits
-:73: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 24)
#73: FILE: drivers/gpu/drm/i915/display/intel_display.c:2739:
 	if (IS_HASWELL(dev_priv) && cpu_transcoder == TRANSCODER_EDP &&
[...]
+			intel_crtc_set_vtotal(display, (enum transcoder)pipe,

total: 0 errors, 1 warnings, 0 checks, 135 lines checked


