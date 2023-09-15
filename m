Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D98557A14AC
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 06:07:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031D310E5BE;
	Fri, 15 Sep 2023 04:07:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F79410E5BE;
 Fri, 15 Sep 2023 04:07:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 247AEAADF6;
 Fri, 15 Sep 2023 04:07:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 15 Sep 2023 04:07:44 -0000
Message-ID: <169475086412.32042.5602688686226226461@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230914192659.757475-1-imre.deak@intel.com>
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Improve_BW_management_on_shared_display_links_?=
 =?utf-8?b?KHJldjUp?=
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

Series: drm/i915: Improve BW management on shared display links (rev5)
URL   : https://patchwork.freedesktop.org/series/122589/
State : warning

== Summary ==

Error: dim checkpatch failed
1c45ddaa2306 drm/i915/dp: Factor out helpers to compute the link limits
-:122: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#122: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:305:
+	limits->min_rate = limits->max_rate =

-:125: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#125: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:308:
+	limits->min_lane_count = limits->max_lane_count =

total: 0 errors, 0 warnings, 2 checks, 147 lines checked
5cbf75c5fb66 drm/i915/dp: Track the pipe and link bpp limits separately
-:49: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#49: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1473:
+		limits->pipe.min_bpp = limits->pipe.max_bpp = bpp;

-:106: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#106: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2211:
+	limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
+						     respect_downstream_limits);

total: 0 errors, 0 warnings, 2 checks, 146 lines checked
2e87799dc7ea drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
667d1ee529b5 drm/i915/dp: Update the link bpp limits for DSC mode
-:42: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#42: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2124:
+#define BPP_X16_ARGS(bpp_x16)	to_bpp_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bpp_x16' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2124:
+#define BPP_X16_ARGS(bpp_x16)	to_bpp_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)

-:102: WARNING:LONG_LINE: line length of 164 exceeds 100 columns
#102: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2239:
+		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " BPP_X16_FMT "\n",

total: 1 errors, 1 warnings, 1 checks, 201 lines checked
34432c0c443b drm/i915/dp: Limit the output link bpp in DSC mode
e8ed36a51e75 drm/i915: Add helper to modeset a set of pipes
cb5bc3bee5cb drm/i915: During modeset forcing handle inactive but enabled pipes
a17735557882 drm/i915: Factor out a helper to check/compute all the CRTC states
5d31d9dbb9ed drm/i915: Add helpers for BW management on shared display links
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:202: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#202: 
new file mode 100644

-:345: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#345: FILE: drivers/gpu/drm/i915/display/intel_link_bw.c:139:
+intel_link_bw_reset_pipe_limit_to_min(struct intel_atomic_state *state,
+				       const struct intel_link_bw_limits *old_limits,

total: 0 errors, 1 warnings, 1 checks, 399 lines checked
ed7982fe9d39 drm/i915/fdi: Improve FDI BW sharing between pipe B and C
b38be1ad15df drm/i915/fdi: Recompute state for affected CRTCs on FDI links
99d9a52aa5ea drm/dp_mst: Fix fractional DSC bpp handling
41e7f4331308 drm/dp_mst: Add a way to calculate PBN values with FEC overhead
25a200eb8743 drm/dp_mst: Add helper to determine if an MST port is downstream of another port
24bf5adfae59 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
f3ffe6554889 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
21f5901a18f8 drm/i915/dp_mst: Fix PBN calculation with FEC overhead
9a1abab8aa76 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
60fff6a4ea44 drm/i915/dp_mst: Program the DSC PPS SDP for each stream
4890fc83d5c6 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
32535a81601d drm/i915/dp_mst: Enable DSC decompression if any stream needs this
4867d9c884e6 drm/i915/dp_mst: Add missing DSC compression disabling
b57b36c685a6 drm/i915/dp_mst: Allow DSC only for sink ports of the first branch device
d09682322e32 drm/i915/dp_mst: Improve BW sharing between MST streams
54f569c34398 drm/i915/dp_mst: Check BW limitations only after all streams are computed


