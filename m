Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D222B298C
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 01:13:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D21686E887;
	Sat, 14 Nov 2020 00:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C40A6E887;
 Sat, 14 Nov 2020 00:13:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94CECA0003;
 Sat, 14 Nov 2020 00:13:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 14 Nov 2020 00:13:18 -0000
Message-ID: <160531279858.18245.796353643969863879@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Big_bigjoiner_series?=
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

Series: drm/i915: Big bigjoiner series
URL   : https://patchwork.freedesktop.org/series/83837/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
787f109da8f7 drm/i915: Copy the plane hw state directly for Y planes
200e8d85a273 drm/i915: Pass intel_atomic_state around
0bf0fbc51029 drm/i915: Nuke intel_atomic_crtc_state_for_each_plane_state() from skl+ wm code
76f19438bbac drm/i915: Pimp the watermark documentation a bit
ffa8b5ec12d6 drm/i915: Precompute can_sagv for each wm level
93f51a472bfb drm/i915: Store plane relative data rate in crtc_state
65f73587d676 drm/i915: Remove skl_adjusted_plane_pixel_rate()
49685428c7ed drm/i915: Pass intel_atomic_state instead of drm_atomic_state
52b4804fb66d drm/i915/dp: Add from_crtc_state to copy color blobs
9c8fa6e879fc drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
7b54f1a8cd69 drm/i915: Try to make bigjoiner work in atomic check
-:78: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#78: FILE: drivers/gpu/drm/i915/display/intel_display.c:13442:
+								  crtc_state->bigjoiner_linked_crtc);

-:124: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#124: FILE: drivers/gpu/drm/i915/display/intel_display.c:13516:
+	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;

-:168: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#168: FILE: drivers/gpu/drm/i915/display/intel_display.c:15135:
+	slave = new_crtc_state->bigjoiner_linked_crtc =

-:202: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#202: FILE: drivers/gpu/drm/i915/display/intel_display.c:15169:
+		slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;

-:203: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#203: FILE: drivers/gpu/drm/i915/display/intel_display.c:15170:
+		slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;

-:204: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#204: FILE: drivers/gpu/drm/i915/display/intel_display.c:15171:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

-:204: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#204: FILE: drivers/gpu/drm/i915/display/intel_display.c:15171:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

total: 0 errors, 2 warnings, 5 checks, 266 lines checked
a88c0f99027f drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner slave
0dd1ccb66cf4 drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner
3df07ac789a2 drm/i915: HW state readout for Bigjoiner case
-:91: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#91: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4696:
+		/* Our own transcoder needs to be disabled when reading it in intel_ddi_read_func_ctl() */

-:93: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#93: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4698:
+		pipe_config->cpu_transcoder = (enum transcoder)pipe_config->bigjoiner_linked_crtc->pipe;

-:120: WARNING:TABSTOP: Statements should start on a tabstop
#120: FILE: drivers/gpu/drm/i915/display/intel_display.c:3634:
+	 struct intel_crtc_state *crtc_state =

-:602: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#602: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:853:
+#define PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE      (1<<1) /* bigjoiner slave, partial readout */
                                                  ^

total: 0 errors, 3 warnings, 1 checks, 531 lines checked
76672e003ef1 drm/i915: Add crtcs affected by bigjoiner to the state
6429c52b56f9 drm/i915: Add planes affected by bigjoiner to the state
777362899f26 drm/i915: Get the uapi state from the correct plane when bigjoiner is used
43eaeb52a244 drm/i915: Add bigjoiner aware plane clipping checks
a63a8532e9c7 drm/i915: Add debugfs dumping for bigjoiner, v3.
-:46: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:787:
+	seq_printf(m, "\t\tuapi: [FB:%d] %s,0x%llx,%dx%d, visible=%s, src=" DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",

-:57: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#57: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:798:
+			   plane_state->planar_linked_plane->base.base.id, plane_state->planar_linked_plane->base.name,

total: 0 errors, 2 warnings, 0 checks, 49 lines checked
c7d08ccf925b drm/i915: Disable legacy cursor fastpath for bigjoiner
79ea1ef5dad1 drm/i915: Fix cursor src/dst rectangle with bigjoiner
ec5f31858af8 drm/i915: Add bigjoiner state dump
7fd1ad48f2a3 drm/i915: Enable bigjoiner


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
