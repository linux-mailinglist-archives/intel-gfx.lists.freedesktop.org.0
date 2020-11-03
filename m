Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 155EB2A37C6
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 01:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 811706E114;
	Tue,  3 Nov 2020 00:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 17F4E6E114;
 Tue,  3 Nov 2020 00:32:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10149A0094;
 Tue,  3 Nov 2020 00:32:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Tue, 03 Nov 2020 00:32:32 -0000
Message-ID: <160436355206.25741.3378001751940601874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201103001932.11286-1-manasi.d.navare@intel.com>
In-Reply-To: <20201103001932.11286-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_End_to_end_Big_Joiner_enabling?=
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

Series: End to end Big Joiner enabling
URL   : https://patchwork.freedesktop.org/series/83379/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a52bb0c934e9 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes
8b0f35b9e8c3 drm/i915: Move encoder->get_config to a new function
f50d886d30b9 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
-:172: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#172: FILE: drivers/gpu/drm/i915/display/intel_display.c:13475:
+	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;

total: 0 errors, 0 warnings, 1 checks, 392 lines checked
14da52667ed9 drm/i915: Pass intel_atomic_state instead of drm_atomic_state
1c937b458942 drm/i915/dp: Prep for bigjoiner atomic check
3a1b2acd2f6d drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
836f3cf202b7 drm/i915: Try to make bigjoiner work in atomic check
-:69: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#69: FILE: drivers/gpu/drm/i915/display/intel_display.c:13485:
+								  crtc_state->bigjoiner_linked_crtc);

-:115: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#115: FILE: drivers/gpu/drm/i915/display/intel_display.c:13559:
+	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;

-:169: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#169: FILE: drivers/gpu/drm/i915/display/intel_display.c:15170:
+	slave = new_crtc_state->bigjoiner_linked_crtc =

-:203: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#203: FILE: drivers/gpu/drm/i915/display/intel_display.c:15204:
+		slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;

-:204: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#204: FILE: drivers/gpu/drm/i915/display/intel_display.c:15205:
+		slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;

-:205: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#205: FILE: drivers/gpu/drm/i915/display/intel_display.c:15206:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

-:205: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#205: FILE: drivers/gpu/drm/i915/display/intel_display.c:15206:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

total: 0 errors, 2 warnings, 5 checks, 268 lines checked
27d84290d84a drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner slave
542285f4d781 drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner
-:120: ERROR:CODE_INDENT: code indent should use tabs where possible
#120: FILE: drivers/gpu/drm/i915/display/intel_display.c:7263:
+                 * Enable sequence steps 1-7 on bigjoiner master$

-:121: ERROR:CODE_INDENT: code indent should use tabs where possible
#121: FILE: drivers/gpu/drm/i915/display/intel_display.c:7264:
+                 */$

-:164: ERROR:SPACING: space required before the open brace '{'
#164: FILE: drivers/gpu/drm/i915/display/intel_display.c:7302:
+	if (!new_crtc_state->bigjoiner_slave || !transcoder_is_dsi(cpu_transcoder)){

total: 3 errors, 0 warnings, 0 checks, 242 lines checked
551b210e7c85 drm/i915: HW state readout for Bigjoiner case
-:82: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#82: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4529:
+		/* Our own transcoder needs to be disabled when reading it in intel_ddi_read_func_ctl() */

-:84: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#84: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4531:
+		pipe_config->cpu_transcoder = (enum transcoder)pipe_config->bigjoiner_linked_crtc->pipe;

-:109: WARNING:TABSTOP: Statements should start on a tabstop
#109: FILE: drivers/gpu/drm/i915/display/intel_display.c:3634:
+	 struct intel_crtc_state *crtc_state =

-:206: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#206: FILE: drivers/gpu/drm/i915/display/intel_display.c:11499:
+^I} else ^Iif (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||$

-:218: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#218: FILE: drivers/gpu/drm/i915/display/intel_display.c:11577:
+^I} else ^Iif (pipe_config->cpu_transcoder != TRANSCODER_EDP &&$

-:600: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#600: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:848:
+#define PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE      (1<<1) /* bigjoiner slave, partial readout */
                                                  ^

total: 0 errors, 5 warnings, 1 checks, 538 lines checked
d031249b2aaa drm/i915: Link planes in a bigjoiner configuration, v3.
-:206: ERROR:CODE_INDENT: code indent should use tabs where possible
#206: FILE: drivers/gpu/drm/i915/display/intel_display.c:12847:
+         * Setup and teardown the new bigjoiner plane mappings.$

-:207: ERROR:CODE_INDENT: code indent should use tabs where possible
#207: FILE: drivers/gpu/drm/i915/display/intel_display.c:12848:
+         */$

-:292: ERROR:CODE_INDENT: code indent should use tabs where possible
#292: FILE: drivers/gpu/drm/i915/display/intel_display.c:12929:
+         *$

-:308: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#308: FILE: drivers/gpu/drm/i915/display/intel_display.c:12943:
+		for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {

-:327: ERROR:CODE_INDENT: code indent should use tabs where possible
#327: FILE: drivers/gpu/drm/i915/display/intel_display.c:12959:
+         * Make sure bigjoiner slave crtc's are also pulled in. This is not done automatically$

-:328: ERROR:CODE_INDENT: code indent should use tabs where possible
#328: FILE: drivers/gpu/drm/i915/display/intel_display.c:12960:
+         * when adding slave planes, because plane_state->crtc is null.$

-:329: ERROR:CODE_INDENT: code indent should use tabs where possible
#329: FILE: drivers/gpu/drm/i915/display/intel_display.c:12961:
+         */$

-:438: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 8)
#438: FILE: drivers/gpu/drm/i915/display/intel_display.h:489:
+	for_each_intel_plane_mask(((crtc_state)->uapi.state->dev), (iter), \
[...]
+	for_each_if ((((plane_state) = \

-:444: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#444: FILE: drivers/gpu/drm/i915/display/intel_display.h:495:
+	for_each_if ((((plane_state) = \

-:445: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#445: FILE: drivers/gpu/drm/i915/display/intel_display.h:496:
+		       to_intel_plane_state(__drm_atomic_get_current_plane_state((crtc_state)->uapi.state, &iter->base))), \

-:446: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#446: FILE: drivers/gpu/drm/i915/display/intel_display.h:497:
+		      ((plane) = (plane_state)->bigjoiner_slave ? (plane_state)->bigjoiner_plane : (iter)), \

-:448: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#448: FILE: drivers/gpu/drm/i915/display/intel_display.h:499:
+		       to_intel_plane_state(__drm_atomic_get_current_plane_state((crtc_state)->uapi.state, &plane->base)) : \

total: 6 errors, 6 warnings, 0 checks, 482 lines checked
193bd8d8cb84 drm/i915: Add bigjoiner aware plane clipping checks
6702e9fda290 drm/i915: Add debugfs dumping for bigjoiner, v3.
-:46: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:787:
+	seq_printf(m, "\t\tuapi: fb=%d,%s,%dx%d, visible=%s, src=" DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",

-:56: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:797:
+			   plane_state->planar_linked_plane->base.base.id, plane_state->planar_linked_plane->base.name,

-:60: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:801:
+			   plane_state->bigjoiner_plane->base.base.id, plane_state->bigjoiner_plane->base.name,

total: 0 errors, 3 warnings, 0 checks, 52 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
