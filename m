Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 462C2287E90
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 00:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5B7F6EB49;
	Thu,  8 Oct 2020 22:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 707386EB49;
 Thu,  8 Oct 2020 22:15:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6CB94A7525;
 Thu,  8 Oct 2020 22:15:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 08 Oct 2020 22:15:35 -0000
Message-ID: <160219533544.11035.10721846589716607982@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201008214535.22942-1-manasi.d.navare@intel.com>
In-Reply-To: <20201008214535.22942-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv10=2C01/11=5D_HAX_to_make_DSC_work?=
 =?utf-8?q?_on_the_icelake_test_system?=
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

Series: series starting with [v10,01/11] HAX to make DSC work on the icelake test system
URL   : https://patchwork.freedesktop.org/series/82483/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
999aa92a11f0 HAX to make DSC work on the icelake test system
870138d57034 drm/i915/display: Rename pipe_timings to transcoder_timings
-:11: WARNING:TYPO_SPELLING: 'halfs' may be misspelled - perhaps 'halves'?
#11: 
With Bigjoiner, there are 2 pipes driving 2 halfs of 1

total: 0 errors, 1 warnings, 0 checks, 82 lines checked
d7eab67d7a38 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
-:7: WARNING:TYPO_SPELLING: 'halfs' may be misspelled - perhaps 'halves'?
#7: 
With bigjoiner, there will be 2 pipes driving 2 halfs of 1 transcoder,

-:134: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#134: FILE: drivers/gpu/drm/i915/display/intel_display.c:13355:
+	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;

total: 0 errors, 1 warnings, 1 checks, 364 lines checked
03231e226425 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
0f128ffd6e7b drm/i915: Try to make bigjoiner work in atomic check
-:145: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#145: FILE: drivers/gpu/drm/i915/display/intel_display.c:13367:
+								  crtc_state->bigjoiner_linked_crtc);

-:205: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#205: FILE: drivers/gpu/drm/i915/display/intel_display.c:13438:
+	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;

-:300: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#300: FILE: drivers/gpu/drm/i915/display/intel_display.c:15045:
+	slave = new_crtc_state->bigjoiner_linked_crtc =

-:334: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#334: FILE: drivers/gpu/drm/i915/display/intel_display.c:15079:
+		slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;

-:335: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#335: FILE: drivers/gpu/drm/i915/display/intel_display.c:15080:
+		slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;

-:336: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#336: FILE: drivers/gpu/drm/i915/display/intel_display.c:15081:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

-:336: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#336: FILE: drivers/gpu/drm/i915/display/intel_display.c:15081:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

-:391: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#391: FILE: drivers/gpu/drm/i915/display/intel_display.c:15615:
+	if (new_crtc_state->bigjoiner) {
[...]
+	} else if (INTEL_GEN(dev_priv) >= 9)
[...]
 	else
[...]

total: 0 errors, 3 warnings, 5 checks, 403 lines checked
8b2c9eaf5fbf drm/i915: Enable big joiner support in enable and disable sequences.
-:186: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#186: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4534:
+		/* Our own transcoder needs to be disabled when reading it in intel_ddi_read_func_ctl() */

-:188: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#188: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4536:
+		pipe_config->cpu_transcoder = (enum transcoder)pipe_config->bigjoiner_linked_crtc->pipe;

-:839: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#839: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:841:
+#define PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE      (1<<1) /* bigjoiner slave, partial readout */
                                                  ^

total: 0 errors, 2 warnings, 1 checks, 1033 lines checked
9bf5d4cad324 drm/i915: Make hardware readout work on i915.
-:33: WARNING:TABSTOP: Statements should start on a tabstop
#33: FILE: drivers/gpu/drm/i915/display/intel_display.c:3622:
+	 struct intel_crtc_state *crtc_state =

-:76: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/display/intel_display.c:10811:
+		    (intel_de_read(dev_priv, PLANE_SURF(pipe, plane_id)) & 0xfffff000) == plane_config->base) {

total: 0 errors, 2 warnings, 0 checks, 118 lines checked
6f55653a6e1f drm/i915: Link planes in a bigjoiner configuration, v3.
-:206: ERROR:CODE_INDENT: code indent should use tabs where possible
#206: FILE: drivers/gpu/drm/i915/display/intel_display.c:12752:
+         * Setup and teardown the new bigjoiner plane mappings.$

-:207: ERROR:CODE_INDENT: code indent should use tabs where possible
#207: FILE: drivers/gpu/drm/i915/display/intel_display.c:12753:
+         */$

-:292: ERROR:CODE_INDENT: code indent should use tabs where possible
#292: FILE: drivers/gpu/drm/i915/display/intel_display.c:12834:
+         *$

-:308: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#308: FILE: drivers/gpu/drm/i915/display/intel_display.c:12848:
+		for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {

-:324: ERROR:CODE_INDENT: code indent should use tabs where possible
#324: FILE: drivers/gpu/drm/i915/display/intel_display.c:12864:
+         * Make sure bigjoiner slave crtc's are also pulled in. This is not done automatically$

-:325: ERROR:CODE_INDENT: code indent should use tabs where possible
#325: FILE: drivers/gpu/drm/i915/display/intel_display.c:12865:
+         * when adding slave planes, because plane_state->crtc is null.$

-:326: ERROR:CODE_INDENT: code indent should use tabs where possible
#326: FILE: drivers/gpu/drm/i915/display/intel_display.c:12866:
+         */$

-:438: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 8)
#438: FILE: drivers/gpu/drm/i915/display/intel_display.h:472:
+	for_each_intel_plane_mask(((crtc_state)->uapi.state->dev), (iter), \
[...]
+	for_each_if ((((plane_state) = \

-:444: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#444: FILE: drivers/gpu/drm/i915/display/intel_display.h:478:
+	for_each_if ((((plane_state) = \

-:445: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#445: FILE: drivers/gpu/drm/i915/display/intel_display.h:479:
+		       to_intel_plane_state(__drm_atomic_get_current_plane_state((crtc_state)->uapi.state, &iter->base))), \

-:446: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#446: FILE: drivers/gpu/drm/i915/display/intel_display.h:480:
+		      ((plane) = (plane_state)->bigjoiner_slave ? (plane_state)->bigjoiner_plane : (iter)), \

-:448: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#448: FILE: drivers/gpu/drm/i915/display/intel_display.h:482:
+		       to_intel_plane_state(__drm_atomic_get_current_plane_state((crtc_state)->uapi.state, &plane->base)) : \

total: 6 errors, 6 warnings, 0 checks, 482 lines checked
aea49fc97daa drm/i915: Add bigjoiner aware plane clipping checks
225f41e9605a drm/i915: Ensure correct master/slave enable/disable sequence
5595d86a59e6 drm/i915: Add debugfs dumping for bigjoiner, v3.
-:46: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:782:
+	seq_printf(m, "\t\tuapi: fb=%d,%s,%dx%d, visible=%s, src=" DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",

-:56: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:792:
+			   plane_state->planar_linked_plane->base.base.id, plane_state->planar_linked_plane->base.name,

-:60: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:796:
+			   plane_state->bigjoiner_plane->base.base.id, plane_state->bigjoiner_plane->base.name,

total: 0 errors, 3 warnings, 0 checks, 52 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
