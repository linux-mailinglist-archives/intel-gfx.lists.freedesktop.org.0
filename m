Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D647D295834
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 08:01:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE636E1A4;
	Thu, 22 Oct 2020 06:01:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 897D76E1A4;
 Thu, 22 Oct 2020 06:01:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 807B5A66C9;
 Thu, 22 Oct 2020 06:01:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 22 Oct 2020 06:01:35 -0000
Message-ID: <160334649549.7804.7097129764733775580@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201022054223.25071-1-manasi.d.navare@intel.com>
In-Reply-To: <20201022054223.25071-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Big_joiner_enabling?=
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

Series: Big joiner enabling
URL   : https://patchwork.freedesktop.org/series/82944/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
28921f36dd2c HAX to make DSC work on the icelake test system
4e9e1fe595d7 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
-:7: WARNING:TYPO_SPELLING: 'halfs' may be misspelled - perhaps 'halves'?
#7: 
With bigjoiner, there will be 2 pipes driving 2 halfs of 1 transcoder,

-:134: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#134: FILE: drivers/gpu/drm/i915/display/intel_display.c:13460:
+	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;

total: 0 errors, 1 warnings, 1 checks, 366 lines checked
c4a7f00c7188 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes
f2fbe5b3f867 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
4e7811e6d8ed drm/i915/dp: Prep for bigjoiner atomic check
f5dd757111ef drm/i915: Try to make bigjoiner work in atomic check
-:100: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#100: FILE: drivers/gpu/drm/i915/display/intel_display.c:13472:
+								  crtc_state->bigjoiner_linked_crtc);

-:146: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#146: FILE: drivers/gpu/drm/i915/display/intel_display.c:13546:
+	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;

-:231: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#231: FILE: drivers/gpu/drm/i915/display/intel_display.c:15153:
+	slave = new_crtc_state->bigjoiner_linked_crtc =

-:265: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#265: FILE: drivers/gpu/drm/i915/display/intel_display.c:15187:
+		slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;

-:266: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#266: FILE: drivers/gpu/drm/i915/display/intel_display.c:15188:
+		slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;

-:267: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#267: FILE: drivers/gpu/drm/i915/display/intel_display.c:15189:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

-:267: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#267: FILE: drivers/gpu/drm/i915/display/intel_display.c:15189:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

-:315: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#315: FILE: drivers/gpu/drm/i915/display/intel_display.c:15723:
+	if (new_crtc_state->bigjoiner) {
[...]
+	} else if (INTEL_GEN(dev_priv) >= 9)
[...]
 	else
[...]

total: 0 errors, 3 warnings, 5 checks, 337 lines checked
c5aeb07221de drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner slave
eeb383630551 drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner
-:120: ERROR:CODE_INDENT: code indent should use tabs where possible
#120: FILE: drivers/gpu/drm/i915/display/intel_display.c:7263:
+                 * Enable sequence steps 1-7 on bigjoiner master$

-:121: ERROR:CODE_INDENT: code indent should use tabs where possible
#121: FILE: drivers/gpu/drm/i915/display/intel_display.c:7264:
+                 */$

-:164: ERROR:SPACING: space required before the open brace '{'
#164: FILE: drivers/gpu/drm/i915/display/intel_display.c:7302:
+	if (!new_crtc_state->bigjoiner_slave || !transcoder_is_dsi(cpu_transcoder)){

-:165: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 16)
#165: FILE: drivers/gpu/drm/i915/display/intel_display.c:7303:
+		if (!transcoder_is_dsi(cpu_transcoder))
+		intel_set_transcoder_timings(new_crtc_state);

total: 3 errors, 1 warnings, 0 checks, 242 lines checked
c95ea184d537 drm/i915: HW state readout for Bigjoiner case
-:79: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#79: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4529:
+		/* Our own transcoder needs to be disabled when reading it in intel_ddi_read_func_ctl() */

-:81: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#81: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4531:
+		pipe_config->cpu_transcoder = (enum transcoder)pipe_config->bigjoiner_linked_crtc->pipe;

-:106: WARNING:TABSTOP: Statements should start on a tabstop
#106: FILE: drivers/gpu/drm/i915/display/intel_display.c:3634:
+	 struct intel_crtc_state *crtc_state =

-:246: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#246: FILE: drivers/gpu/drm/i915/display/intel_display.c:11501:
+^I} else ^Iif (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||$

-:258: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#258: FILE: drivers/gpu/drm/i915/display/intel_display.c:11579:
+^I} else ^Iif (pipe_config->cpu_transcoder != TRANSCODER_EDP &&$

-:655: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#655: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:848:
+#define PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE      (1<<1) /* bigjoiner slave, partial readout */
                                                  ^

total: 0 errors, 5 warnings, 1 checks, 594 lines checked
ed5b71b1f929 drm/i915: Link planes in a bigjoiner configuration, v3.
-:206: ERROR:CODE_INDENT: code indent should use tabs where possible
#206: FILE: drivers/gpu/drm/i915/display/intel_display.c:12849:
+         * Setup and teardown the new bigjoiner plane mappings.$

-:207: ERROR:CODE_INDENT: code indent should use tabs where possible
#207: FILE: drivers/gpu/drm/i915/display/intel_display.c:12850:
+         */$

-:292: ERROR:CODE_INDENT: code indent should use tabs where possible
#292: FILE: drivers/gpu/drm/i915/display/intel_display.c:12931:
+         *$

-:308: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#308: FILE: drivers/gpu/drm/i915/display/intel_display.c:12945:
+		for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {

-:327: ERROR:CODE_INDENT: code indent should use tabs where possible
#327: FILE: drivers/gpu/drm/i915/display/intel_display.c:12961:
+         * Make sure bigjoiner slave crtc's are also pulled in. This is not done automatically$

-:328: ERROR:CODE_INDENT: code indent should use tabs where possible
#328: FILE: drivers/gpu/drm/i915/display/intel_display.c:12962:
+         * when adding slave planes, because plane_state->crtc is null.$

-:329: ERROR:CODE_INDENT: code indent should use tabs where possible
#329: FILE: drivers/gpu/drm/i915/display/intel_display.c:12963:
+         */$

-:438: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 8)
#438: FILE: drivers/gpu/drm/i915/display/intel_display.h:473:
+	for_each_intel_plane_mask(((crtc_state)->uapi.state->dev), (iter), \
[...]
+	for_each_if ((((plane_state) = \

-:444: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#444: FILE: drivers/gpu/drm/i915/display/intel_display.h:479:
+	for_each_if ((((plane_state) = \

-:445: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#445: FILE: drivers/gpu/drm/i915/display/intel_display.h:480:
+		       to_intel_plane_state(__drm_atomic_get_current_plane_state((crtc_state)->uapi.state, &iter->base))), \

-:446: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#446: FILE: drivers/gpu/drm/i915/display/intel_display.h:481:
+		      ((plane) = (plane_state)->bigjoiner_slave ? (plane_state)->bigjoiner_plane : (iter)), \

-:448: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#448: FILE: drivers/gpu/drm/i915/display/intel_display.h:483:
+		       to_intel_plane_state(__drm_atomic_get_current_plane_state((crtc_state)->uapi.state, &plane->base)) : \

total: 6 errors, 6 warnings, 0 checks, 482 lines checked
bf37cfa8496f drm/i915: Add bigjoiner aware plane clipping checks
040cc02e306c drm/i915: Add debugfs dumping for bigjoiner, v3.
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
