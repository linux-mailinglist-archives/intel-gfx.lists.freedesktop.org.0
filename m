Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DE4A9F72D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 19:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04CCF10E012;
	Mon, 28 Apr 2025 17:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 930D610E012;
 Mon, 28 Apr 2025 17:21:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=5Fmst=3A?=
 =?utf-8?q?_Add_support_for_fractional_link_bpps_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Apr 2025 17:21:27 -0000
Message-ID: <174586088758.21389.6806668710888030649@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250428133135.3396080-1-imre.deak@intel.com>
In-Reply-To: <20250428133135.3396080-1-imre.deak@intel.com>
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

Series: drm/i915/dp_mst: Add support for fractional link bpps (rev2)
URL   : https://patchwork.freedesktop.org/series/147435/
State : warning

== Summary ==

Error: dim checkpatch failed
0623c7747178 drm/i915/dp_mst: Use the correct connector while computing the link BPP limit on MST
3b968ffcb73f drm/i915/dp_mst: Simplify handling the single-bpp case during state computation
c85f6435814d drm/i915/dp_mst: Validate compressed bpp vs. platform restrictions
9862026aff94 drm/i915/dp_mst: Update the total link slot count early
c75b3a55687e drm/i915/dp_mst: Check BW limit on the local MST link early
0ef2118ec198 drm/i915/dp_mst: Simplify computing the min/max compressed bpp limits
fe05644e8278 drm/i915/dp: Limit max link bpp properly to a fractional value on SST
fb8c3e63bfbd drm/i915/dp_mst: Add support for fractional compressed link bpps on MST
-:87: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:521:
+		    "DSC Sink supported compressed min bpp " FXP_Q4_FMT " compressed max bpp " FXP_Q4_FMT "\n",

-:94: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:526:
+	max_compressed_bpp_x16 = min(max_compressed_bpp_x16, fxp_q4_from_int(crtc_state->pipe_bpp) - bpp_step_x16);

total: 0 errors, 2 warnings, 0 checks, 76 lines checked
3fd8dc357a28 drm/i915/display: Factor out intel_display_{min, max}_pipe_bpp()
-:29: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#29: FILE: drivers/gpu/drm/i915/display/intel_display.c:4313:
+		return 10*3;
 		         ^

-:31: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#31: FILE: drivers/gpu/drm/i915/display/intel_display.c:4315:
+		return 12*3;
 		         ^

-:33: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#33: FILE: drivers/gpu/drm/i915/display/intel_display.c:4317:
+		return 8*3;
 		        ^

total: 0 errors, 0 warnings, 3 checks, 58 lines checked
d49f18155761 drm/i915/dp: Export intel_dp_dsc_min_src_compressed_bpp()
85ec918caa18 drm/i915: Add support for forcing the link bpp on a connector
-:52: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#52: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:175:
+#define HAS_FDI(__display)		(IS_DISPLAY_VER((__display), 5, 8) && !HAS_GMCH(__display))

total: 0 errors, 0 warnings, 1 checks, 341 lines checked
a46b7eb00095 drm/i915/dp_mst: Enable fractional link bpps on MST if the bpp is forced


