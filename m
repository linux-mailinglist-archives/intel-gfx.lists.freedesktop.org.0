Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1D07A6170
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 13:38:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FAB510E399;
	Tue, 19 Sep 2023 11:38:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5EC4910E1FD;
 Tue, 19 Sep 2023 11:38:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 599A2A00CC;
 Tue, 19 Sep 2023 11:38:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 19 Sep 2023 11:38:23 -0000
Message-ID: <169512350333.3668.4140642547661259766@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230914192659.757475-1-imre.deak@intel.com>
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Improve_BW_management_on_shared_display_links_?=
 =?utf-8?q?=28rev10=29?=
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

Series: drm/i915: Improve BW management on shared display links (rev10)
URL   : https://patchwork.freedesktop.org/series/122589/
State : warning

== Summary ==

Error: dim checkpatch failed
0e769abe103a drm/i915/dp: Factor out helpers to compute the link limits
-:122: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#122: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:305:
+	limits->min_rate = limits->max_rate =

-:125: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#125: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:308:
+	limits->min_lane_count = limits->max_lane_count =

total: 0 errors, 0 warnings, 2 checks, 147 lines checked
1525f98fbe12 drm/i915/dp: Track the pipe and link bpp limits separately
-:49: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#49: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1473:
+		limits->pipe.min_bpp = limits->pipe.max_bpp = bpp;

-:106: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#106: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2211:
+	limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
+						     respect_downstream_limits);

total: 0 errors, 0 warnings, 2 checks, 146 lines checked
1416f13a8059 drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
0f6491c4f5d1 drm/i915/dp: Update the link bpp limits for DSC mode
-:42: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#42: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2123:
+#define BPP_X16_ARGS(bpp_x16)	to_bpp_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bpp_x16' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2123:
+#define BPP_X16_ARGS(bpp_x16)	to_bpp_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)

-:102: WARNING:LONG_LINE: line length of 164 exceeds 100 columns
#102: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2239:
+		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " BPP_X16_FMT "\n",

total: 1 errors, 1 warnings, 1 checks, 201 lines checked
839860a573d8 drm/i915/dp: Limit the output link bpp in DSC mode
689a28deb22c drm/i915: Add helper to modeset a set of pipes
acfb411e320f drm/i915: Rename intel_modeset_all_pipes() to intel_modeset_all_pipes_late()
ec1406d466a8 drm/i915: Factor out a helper to check/compute all the CRTC states
6e1d98550ce4 drm/i915: Add helpers for BW management on shared display links
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:232: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#232: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 419 lines checked
700d5cceef18 drm/i915/fdi: Improve FDI BW sharing between pipe B and C
59191742c173 drm/i915/fdi: Recompute state for affected CRTCs on FDI links
9d9701a8f56a drm/dp_mst: Fix fractional DSC bpp handling
817d92348eb9 drm/dp_mst: Add a way to calculate PBN values with FEC overhead
a91522685352 drm/dp_mst: Add helper to determine if an MST port is downstream of another port
81f7101e39b5 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
58bf9b9347e9 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
2ca95c87c30d drm/i915/dp_mst: Fix PBN calculation with FEC overhead
80ec3153a9a7 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
06742b5c7c2e drm/i915/dp_mst: Program the DSC PPS SDP for each stream
1fea76ef43d3 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
b6af7d5578b3 drm/i915/dp_mst: Enable DSC decompression if any stream needs this
612154343be9 drm/i915/dp_mst: Add missing DSC compression disabling
2dacce68ab64 drm/i915/dp_mst: Allow DSC only for sink ports of the first branch device
3a5e55eb4bc7 drm/i915/dp_mst: Improve BW sharing between MST streams
4592c30e1159 drm/i915/dp_mst: Check BW limitations only after all streams are computed


