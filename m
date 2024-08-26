Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4A095F625
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 18:11:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E77510E217;
	Mon, 26 Aug 2024 16:11:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 575B810E217;
 Mon, 26 Aug 2024 16:11:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Consolidation_of_DSS?=
 =?utf-8?q?_Control_in_Separate_Files?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2024 16:11:09 -0000
Message-ID: <172468866935.784648.7859011970215661795@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
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

Series: Consolidation of DSS Control in Separate Files
URL   : https://patchwork.freedesktop.org/series/137789/
State : warning

== Summary ==

Error: dim checkpatch failed
9df1bf3a4109 drm/i915/display: Move all DSS control registers to a new file
-:68: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#68: 
new file mode 100644

-:92: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#92: FILE: drivers/gpu/drm/i915/display/intel_dss_regs.h:20:
+#define  LEFT_DL_BUF_TARGET_DEPTH(pixels)	REG_FIELD_PREP(LEFT_DL_BUF_TARGET_DEPTH_MASK, pixels)

-:99: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#99: FILE: drivers/gpu/drm/i915/display/intel_dss_regs.h:27:
+#define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	REG_FIELD_PREP(RIGHT_DL_BUF_TARGET_DEPTH_MASK, pixels)

total: 0 errors, 3 warnings, 0 checks, 138 lines checked
7d4ca5f3a52b drm/i915/ddi: Move all mso related helpers to a new file
-:157: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#157: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 244 lines checked
6cc1fef086fc drm/i915/dss: Move to struct intel_display
a2b258d91784 drm/i915/icl_dsi: Move helpers to configure dsi dual link to intel_dss
230ba998db56 drm/i915/vdsc: Rename helper to check if the pipe supports dsc
fa561b9889d1 drm/i915/vdsc: Move all dss stuff in dss files
-:88: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/display/intel_dss.c:175:
+		intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);

total: 0 errors, 1 warnings, 0 checks, 245 lines checked
96155425ec21 drm/i915/display: Move dss stuff in intel_dss files
-:77: CHECK:SPACING: No space is necessary after a cast
#77: FILE: drivers/gpu/drm/i915/display/intel_dss.c:228:
+	power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);

total: 0 errors, 0 warnings, 1 checks, 114 lines checked
4a98b0eddf86 drm/i915/display: Move helper to get joined pipe mask to intel_dss
20e9a216132e drm/i915/display: Move helpers for primary joiner to intel_dss
-:50: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/display/intel_display.c:255:
+		return crtc_state->joiner_pipes & ~BIT(intel_dss_get_primary_joiner_pipe(crtc_state));

-:94: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_display.c:3545:
+static enum pipe get_intel_dss_get_primary_joiner_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)

-:112: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#112: FILE: drivers/gpu/drm/i915/display/intel_display.c:3648:
+			get_intel_dss_get_primary_joiner_pipe(crtc->pipe, primary_pipes, secondary_pipes);

-:130: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#130: FILE: drivers/gpu/drm/i915/display/intel_display.c:5972:
+			primary_crtc->pipe != intel_dss_get_primary_joiner_pipe(primary_crtc_state)))

total: 0 errors, 4 warnings, 0 checks, 150 lines checked
a5032f0b53a2 drm/i915/display: Move helper to check for secondary joiner pipe
bbdce7960822 drm/i915/display: Move helper to get all secondary pipes
-:71: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#71: FILE: drivers/gpu/drm/i915/display/intel_dss.c:297:
+		return crtc_state->joiner_pipes & ~BIT(intel_dss_get_primary_joiner_pipe(crtc_state));

-:114: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:740:
+								 intel_dss_get_secondary_joiner_pipes(crtc_state)) {

total: 0 errors, 2 warnings, 0 checks, 79 lines checked
5d9a199abe47 drm/i915/display: Move intel_joiner_num_pipes to intel dss


