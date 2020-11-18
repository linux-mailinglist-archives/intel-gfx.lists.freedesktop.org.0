Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 465CB2B7414
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 03:02:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 370876E15A;
	Wed, 18 Nov 2020 02:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 205CC6E159;
 Wed, 18 Nov 2020 02:02:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18BEEA0003;
 Wed, 18 Nov 2020 02:02:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 18 Nov 2020 02:02:33 -0000
Message-ID: <160566495307.24805.1094732029743328529@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201117194718.11462-1-manasi.d.navare@intel.com>
In-Reply-To: <20201117194718.11462-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Rebased_remaining_big_joiner_series?=
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

Series: Rebased remaining big joiner series
URL   : https://patchwork.freedesktop.org/series/83990/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d8255ae03ad0 drm/i915: Copy the plane hw state directly for Y planes
385ac914e475 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
f5d68c7c35ae drm/i915: Try to make bigjoiner work in atomic check
-:79: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#79: FILE: drivers/gpu/drm/i915/display/intel_display.c:13481:
+								  crtc_state->bigjoiner_linked_crtc);

-:125: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#125: FILE: drivers/gpu/drm/i915/display/intel_display.c:13555:
+	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;

-:169: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#169: FILE: drivers/gpu/drm/i915/display/intel_display.c:15174:
+	slave = new_crtc_state->bigjoiner_linked_crtc =

-:203: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#203: FILE: drivers/gpu/drm/i915/display/intel_display.c:15208:
+		slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;

-:204: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#204: FILE: drivers/gpu/drm/i915/display/intel_display.c:15209:
+		slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;

-:205: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#205: FILE: drivers/gpu/drm/i915/display/intel_display.c:15210:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

-:205: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#205: FILE: drivers/gpu/drm/i915/display/intel_display.c:15210:
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

total: 0 errors, 2 warnings, 5 checks, 266 lines checked
2352c92d6e9d drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner slave
8bd4ba682f50 drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner
cf90185fc58a drm/i915: HW state readout for Bigjoiner case
-:92: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#92: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4697:
+		/* Our own transcoder needs to be disabled when reading it in intel_ddi_read_func_ctl() */

-:94: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4699:
+		pipe_config->cpu_transcoder = (enum transcoder)pipe_config->bigjoiner_linked_crtc->pipe;

-:121: WARNING:TABSTOP: Statements should start on a tabstop
#121: FILE: drivers/gpu/drm/i915/display/intel_display.c:3634:
+	 struct intel_crtc_state *crtc_state =

-:603: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#603: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:853:
+#define PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE      (1<<1) /* bigjoiner slave, partial readout */
                                                  ^

total: 0 errors, 3 warnings, 1 checks, 531 lines checked
0482905e2737 drm/i915: Add crtcs affected by bigjoiner to the state
827d41a94f1c drm/i915: Add planes affected by bigjoiner to the state
12a124f7192b drm/i915: Get the uapi state from the correct plane when bigjoiner is used
5cab172f2ad0 drm/i915: Add bigjoiner aware plane clipping checks
58ce13d4bfd2 drm/i915: Add debugfs dumping for bigjoiner, v3.
-:47: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:787:
+	seq_printf(m, "\t\tuapi: [FB:%d] %s,0x%llx,%dx%d, visible=%s, src=" DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",

-:58: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:798:
+			   plane_state->planar_linked_plane->base.base.id, plane_state->planar_linked_plane->base.name,

total: 0 errors, 2 warnings, 0 checks, 49 lines checked
7076c6782390 drm/i915: Disable legacy cursor fastpath for bigjoiner
40d4ac57744a drm/i915: Fix cursor src/dst rectangle with bigjoiner
1f7c0f835d55 drm/i915: Add bigjoiner state dump
e3f81d0a69ee drm/i915: Enable bigjoiner


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
