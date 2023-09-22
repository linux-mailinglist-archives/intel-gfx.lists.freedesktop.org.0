Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0637AABC4
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 10:07:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFC9610E63C;
	Fri, 22 Sep 2023 08:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B1DFF10E631;
 Fri, 22 Sep 2023 08:07:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A875CAADEB;
 Fri, 22 Sep 2023 08:07:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 22 Sep 2023 08:07:00 -0000
Message-ID: <169537002068.5196.17956394194998075086@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230921195159.2646027-1-imre.deak@intel.com>
In-Reply-To: <20230921195159.2646027-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Improve_BW_management_on_FDI_links?=
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

Series: drm/i915: Improve BW management on FDI links
URL   : https://patchwork.freedesktop.org/series/124078/
State : warning

== Summary ==

Error: dim checkpatch failed
4bf08e1dbb9c drm/i915/dp: Factor out helpers to compute the link limits
-:122: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#122: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:305:
+	limits->min_rate = limits->max_rate =

-:125: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#125: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:308:
+	limits->min_lane_count = limits->max_lane_count =

total: 0 errors, 0 warnings, 2 checks, 147 lines checked
e09b56aaf0c7 drm/i915/dp: Track the pipe and link bpp limits separately
-:49: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#49: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1473:
+		limits->pipe.min_bpp = limits->pipe.max_bpp = bpp;

-:106: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#106: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2211:
+	limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
+						     respect_downstream_limits);

total: 0 errors, 0 warnings, 2 checks, 146 lines checked
1cadf1d469a8 drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
c3949f5b46bd drm/i915/dp: Update the link bpp limits for DSC mode
-:43: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#43: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2129:
+#define BPP_X16_ARGS(bpp_x16)	to_bpp_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bpp_x16' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2129:
+#define BPP_X16_ARGS(bpp_x16)	to_bpp_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)

-:103: WARNING:LONG_LINE: line length of 164 exceeds 100 columns
#103: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2239:
+		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " BPP_X16_FMT "\n",

total: 1 errors, 1 warnings, 1 checks, 201 lines checked
bb574f2c30fa drm/i915/dp: Limit the output link bpp in DSC mode
20d3fc0eaa8b drm/i915: Add helper to modeset a set of pipes
d3fb372cbb17 drm/i915: Rename intel_modeset_all_pipes() to intel_modeset_all_pipes_late()
89ce3eb66d92 drm/i915: Factor out a helper to check/compute all the CRTC states
8b23c700b24f drm/i915: Add helpers for BW management on shared display links
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:241: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#241: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 391 lines checked
99c444be5e08 drm/i915/fdi: Improve FDI BW sharing between pipe B and C
74bb1002e7ef drm/i915/fdi: Recompute state for affected CRTCs on FDI links


