Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AE9222E2F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 23:53:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C42A6ECC0;
	Thu, 16 Jul 2020 21:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 716896E7EC;
 Thu, 16 Jul 2020 21:53:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6A762A00E6;
 Thu, 16 Jul 2020 21:53:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 16 Jul 2020 21:53:06 -0000
Message-ID: <159493638640.25374.16244157521648186943@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
In-Reply-To: <20200715224222.7557-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv6=2C01/11=5D_HAX_to_make_DSC_work_?=
 =?utf-8?q?on_the_icelake_test_system_=28rev2=29?=
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

Series: series starting with [v6,01/11] HAX to make DSC work on the icelake test system (rev2)
URL   : https://patchwork.freedesktop.org/series/79534/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6756ad0df458 HAX to make DSC work on the icelake test system
42b7ec254efd drm/i915: Remove hw.mode
fb6b540c3882 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
-:216: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#216: FILE: drivers/gpu/drm/i915/display/intel_display.c:13219:
+	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;

total: 0 errors, 0 warnings, 1 checks, 445 lines checked
e1afb809eac2 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
07b3d174ba99 drm/i915: Try to make bigjoiner work in atomic check
-:143: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#143: FILE: drivers/gpu/drm/i915/display/intel_display.c:13232:
+								  crtc_state->bigjoiner_linked_crtc);

-:202: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#202: FILE: drivers/gpu/drm/i915/display/intel_display.c:13303:
+	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;

-:296: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#296: FILE: drivers/gpu/drm/i915/display/intel_display.c:14920:
+	slave = new_crtc_state->bigjoiner_linked_crtc =

-:330: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#330: FILE: drivers/gpu/drm/i915/display/intel_display.c:14954:
+		slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;

-:331: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#331: FILE: drivers/gpu/drm/i915/display/intel_display.c:14955:
+		slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;

-:332: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#332: FILE: drivers/gpu/drm/i915/display/intel_display.c:14956:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

-:332: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#332: FILE: drivers/gpu/drm/i915/display/intel_display.c:14956:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

-:387: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#387: FILE: drivers/gpu/drm/i915/display/intel_display.c:15351:
+	if (new_crtc_state->bigjoiner) {
[...]
+	} else if (INTEL_GEN(dev_priv) >= 9)
[...]
 	else
[...]

total: 0 errors, 3 warnings, 5 checks, 401 lines checked
52facad4f0f8 drm/i915: Enable big joiner support in enable and disable sequences.
-:176: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#176: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4403:
+		/* Our own transcoder needs to be disabled when reading it in intel_ddi_read_func_ctl() */

-:178: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#178: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4405:
+		pipe_config->cpu_transcoder = (enum transcoder)pipe_config->bigjoiner_linked_crtc->pipe;

-:789: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#789: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:829:
+#define PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE      (1<<1) /* bigjoiner slave, partial readout */
                                                  ^

total: 0 errors, 2 warnings, 1 checks, 997 lines checked
01023aaf7c78 drm/i915: Make hardware readout work on i915.
-:33: WARNING:TABSTOP: Statements should start on a tabstop
#33: FILE: drivers/gpu/drm/i915/display/intel_display.c:3609:
+	 struct intel_crtc_state *crtc_state =

-:76: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/display/intel_display.c:10694:
+		    (intel_de_read(dev_priv, PLANE_SURF(pipe, plane_id)) & 0xfffff000) == plane_config->base) {

total: 0 errors, 2 warnings, 0 checks, 118 lines checked
4f5779f44812 drm/i915: Link planes in a bigjoiner configuration, v3.
-:203: ERROR:CODE_INDENT: code indent should use tabs where possible
#203: FILE: drivers/gpu/drm/i915/display/intel_display.c:12626:
+         * Setup and teardown the new bigjoiner plane mappings.$

-:204: ERROR:CODE_INDENT: code indent should use tabs where possible
#204: FILE: drivers/gpu/drm/i915/display/intel_display.c:12627:
+         */$

-:289: ERROR:CODE_INDENT: code indent should use tabs where possible
#289: FILE: drivers/gpu/drm/i915/display/intel_display.c:12708:
+         *$

-:305: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#305: FILE: drivers/gpu/drm/i915/display/intel_display.c:12722:
+		for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {

-:321: ERROR:CODE_INDENT: code indent should use tabs where possible
#321: FILE: drivers/gpu/drm/i915/display/intel_display.c:12738:
+         * Make sure bigjoiner slave crtc's are also pulled in. This is not done automatically$

-:322: ERROR:CODE_INDENT: code indent should use tabs where possible
#322: FILE: drivers/gpu/drm/i915/display/intel_display.c:12739:
+         * when adding slave planes, because plane_state->crtc is null.$

-:323: ERROR:CODE_INDENT: code indent should use tabs where possible
#323: FILE: drivers/gpu/drm/i915/display/intel_display.c:12740:
+         */$

-:435: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 8)
#435: FILE: drivers/gpu/drm/i915/display/intel_display.h:472:
+	for_each_intel_plane_mask(((crtc_state)->uapi.state->dev), (iter), \
[...]
+	for_each_if ((((plane_state) = \

-:441: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#441: FILE: drivers/gpu/drm/i915/display/intel_display.h:478:
+	for_each_if ((((plane_state) = \

-:442: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#442: FILE: drivers/gpu/drm/i915/display/intel_display.h:479:
+		       to_intel_plane_state(__drm_atomic_get_current_plane_state((crtc_state)->uapi.state, &iter->base))), \

-:443: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#443: FILE: drivers/gpu/drm/i915/display/intel_display.h:480:
+		      ((plane) = (plane_state)->bigjoiner_slave ? (plane_state)->bigjoiner_plane : (iter)), \

-:445: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#445: FILE: drivers/gpu/drm/i915/display/intel_display.h:482:
+		       to_intel_plane_state(__drm_atomic_get_current_plane_state((crtc_state)->uapi.state, &plane->base)) : \

total: 6 errors, 6 warnings, 0 checks, 481 lines checked
81c299846f0d drm/i915: Add bigjoiner aware plane clipping checks
ce260481299f drm/i915: Add intel_update_bigjoiner handling.
f4de44a552c1 drm/i915: Add debugfs dumping for bigjoiner, v3.
-:46: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:777:
+	seq_printf(m, "\t\tuapi: fb=%d,%s,%dx%d, visible=%s, src=" DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",

-:56: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:787:
+			   plane_state->planar_linked_plane->base.base.id, plane_state->planar_linked_plane->base.name,

-:60: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:791:
+			   plane_state->bigjoiner_plane->base.base.id, plane_state->bigjoiner_plane->base.name,

total: 0 errors, 3 warnings, 0 checks, 52 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
