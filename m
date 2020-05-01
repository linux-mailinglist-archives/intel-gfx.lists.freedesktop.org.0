Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 534D01C0DB3
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 07:24:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 985E96E4A2;
	Fri,  1 May 2020 05:24:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B8FD46E4A2;
 Fri,  1 May 2020 05:24:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0EC9A011A;
 Fri,  1 May 2020 05:24:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Fri, 01 May 2020 05:24:03 -0000
Message-ID: <158831064369.18947.14947094627576717070@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430230951.2508-1-manasi.d.navare@intel.com>
In-Reply-To: <20200430230951.2508-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Rebased_Big_Joiner_patch_series_for_8K_2p1p_=28rev2=29?=
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

Series: Rebased Big Joiner patch series for 8K 2p1p (rev2)
URL   : https://patchwork.freedesktop.org/series/76791/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7cc206446898 HAX to make DSC work on the icelake test system
ed5182840902 drm/i915: Remove hw.mode
54437393256f drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
-:213: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#213: FILE: drivers/gpu/drm/i915/display/intel_display.c:13165:
+	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;

total: 0 errors, 0 warnings, 1 checks, 444 lines checked
d739aa6e3760 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
f0f07b9e56c8 drm/i915: Try to make bigjoiner work in atomic check
-:143: WARNING:LONG_LINE: line over 100 characters
#143: FILE: drivers/gpu/drm/i915/display/intel_display.c:13178:
+								  crtc_state->bigjoiner_linked_crtc);

-:202: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#202: FILE: drivers/gpu/drm/i915/display/intel_display.c:13249:
+	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;

-:296: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#296: FILE: drivers/gpu/drm/i915/display/intel_display.c:14781:
+	slave = new_crtc_state->bigjoiner_linked_crtc =

-:330: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#330: FILE: drivers/gpu/drm/i915/display/intel_display.c:14815:
+		slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;

-:331: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#331: FILE: drivers/gpu/drm/i915/display/intel_display.c:14816:
+		slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;

-:332: WARNING:LONG_LINE: line over 100 characters
#332: FILE: drivers/gpu/drm/i915/display/intel_display.c:14817:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

-:332: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#332: FILE: drivers/gpu/drm/i915/display/intel_display.c:14817:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

-:387: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#387: FILE: drivers/gpu/drm/i915/display/intel_display.c:15191:
+	if (new_crtc_state->bigjoiner) {
[...]
+	} else if (INTEL_GEN(dev_priv) >= 9)
[...]
 	else
[...]

total: 0 errors, 3 warnings, 5 checks, 401 lines checked
932c60670d5e drm/i915: Enable big joiner support in enable and disable sequences.
-:154: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#154: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4258:
 
+}

-:177: WARNING:LONG_LINE_COMMENT: line over 100 characters
#177: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4281:
+		/* Our own transcoder needs to be disabled when reading it in intel_ddi_read_func_ctl() */

-:179: WARNING:LONG_LINE: line over 100 characters
#179: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4283:
+		pipe_config->cpu_transcoder = (enum transcoder)pipe_config->bigjoiner_linked_crtc->pipe;

-:791: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#791: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:841:
+#define PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE      (1<<1) /* bigjoiner slave, partial readout */
                                                  ^

total: 0 errors, 2 warnings, 2 checks, 1009 lines checked
3196af092bbf drm/i915: Make hardware readout work on i915.
-:33: WARNING:TABSTOP: Statements should start on a tabstop
#33: FILE: drivers/gpu/drm/i915/display/intel_display.c:3608:
+	 struct intel_crtc_state *crtc_state =

-:76: WARNING:LONG_LINE: line over 100 characters
#76: FILE: drivers/gpu/drm/i915/display/intel_display.c:10665:
+		    (intel_de_read(dev_priv, PLANE_SURF(pipe, plane_id)) & 0xfffff000) == plane_config->base) {

total: 0 errors, 2 warnings, 0 checks, 118 lines checked
2faef9e70606 drm/i915: Link planes in a bigjoiner configuration, v3.
-:201: ERROR:CODE_INDENT: code indent should use tabs where possible
#201: FILE: drivers/gpu/drm/i915/display/intel_display.c:12601:
+         * Setup and teardown the new bigjoiner plane mappings.$

-:202: ERROR:CODE_INDENT: code indent should use tabs where possible
#202: FILE: drivers/gpu/drm/i915/display/intel_display.c:12602:
+         */$

-:287: ERROR:CODE_INDENT: code indent should use tabs where possible
#287: FILE: drivers/gpu/drm/i915/display/intel_display.c:12683:
+         *$

-:303: WARNING:LONG_LINE: line over 100 characters
#303: FILE: drivers/gpu/drm/i915/display/intel_display.c:12697:
+		for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {

-:319: ERROR:CODE_INDENT: code indent should use tabs where possible
#319: FILE: drivers/gpu/drm/i915/display/intel_display.c:12713:
+         * Make sure bigjoiner slave crtc's are also pulled in. This is not done automatically$

-:320: ERROR:CODE_INDENT: code indent should use tabs where possible
#320: FILE: drivers/gpu/drm/i915/display/intel_display.c:12714:
+         * when adding slave planes, because plane_state->crtc is null.$

-:321: ERROR:CODE_INDENT: code indent should use tabs where possible
#321: FILE: drivers/gpu/drm/i915/display/intel_display.c:12715:
+         */$

-:433: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 8)
#433: FILE: drivers/gpu/drm/i915/display/intel_display.h:465:
+	for_each_intel_plane_mask(((crtc_state)->uapi.state->dev), (iter), \
[...]
+	for_each_if ((((plane_state) = \

-:439: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#439: FILE: drivers/gpu/drm/i915/display/intel_display.h:471:
+	for_each_if ((((plane_state) = \

-:440: WARNING:LONG_LINE: line over 100 characters
#440: FILE: drivers/gpu/drm/i915/display/intel_display.h:472:
+		       to_intel_plane_state(__drm_atomic_get_current_plane_state((crtc_state)->uapi.state, &iter->base))), \

-:441: WARNING:LONG_LINE: line over 100 characters
#441: FILE: drivers/gpu/drm/i915/display/intel_display.h:473:
+		      ((plane) = (plane_state)->bigjoiner_slave ? (plane_state)->bigjoiner_plane : (iter)), \

-:443: WARNING:LONG_LINE: line over 100 characters
#443: FILE: drivers/gpu/drm/i915/display/intel_display.h:475:
+		       to_intel_plane_state(__drm_atomic_get_current_plane_state((crtc_state)->uapi.state, &plane->base)) : \

total: 6 errors, 6 warnings, 0 checks, 465 lines checked
6a6198bab3ce drm/i915: Add bigjoiner aware plane clipping checks
1a0ee38d7bf2 drm/i915: Add intel_update_bigjoiner handling.
1f5c8c328226 drm/i915: Add debugfs dumping for bigjoiner, v3.
-:46: WARNING:LONG_LINE: line over 100 characters
#46: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:777:
+	seq_printf(m, "\t\tuapi: fb=%d,%s,%dx%d, visible=%s, src=" DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",

-:56: WARNING:LONG_LINE: line over 100 characters
#56: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:787:
+			   plane_state->planar_linked_plane->base.base.id, plane_state->planar_linked_plane->base.name,

-:60: WARNING:LONG_LINE: line over 100 characters
#60: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:791:
+			   plane_state->bigjoiner_plane->base.base.id, plane_state->bigjoiner_plane->base.name,

total: 0 errors, 3 warnings, 0 checks, 52 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
