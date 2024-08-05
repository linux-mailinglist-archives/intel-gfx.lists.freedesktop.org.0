Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB16B947EA5
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 17:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9800610E23D;
	Mon,  5 Aug 2024 15:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D1C210E23D;
 Mon,  5 Aug 2024 15:51:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Dump_DSC?=
 =?utf-8?q?_HW_state?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 Aug 2024 15:51:05 -0000
Message-ID: <172287306563.540583.15026126292380533290@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240805150802.3568970-1-imre.deak@intel.com>
In-Reply-To: <20240805150802.3568970-1-imre.deak@intel.com>
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

Series: drm/i915: Dump DSC HW state
URL   : https://patchwork.freedesktop.org/series/136890/
State : warning

== Summary ==

Error: dim checkpatch failed
48090026fcb9 drm/i915: Replace to_bpp_x16() with fxp_q4_from_int()
2f3bb8ac464d drm/i915: Replace to_bpp_int() with fxp_q4_to_int()
-:103: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#103: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2209:
+#define BPP_X16_ARGS(bpp_x16)	fxp_q4_to_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)

-:103: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bpp_x16' - possible side-effects?
#103: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2209:
+#define BPP_X16_ARGS(bpp_x16)	fxp_q4_to_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)

total: 1 errors, 0 warnings, 1 checks, 148 lines checked
2cd0ab1563b7 drm/i915: Replace to_bpp_int_roundup() with fxp_q4_to_int_roundup()
f87465bd1b11 drm/i915: Replace to_bpp_frac() with fxp_q4_to_frac()
-:29: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#29: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2204:
+#define BPP_X16_ARGS(bpp_x16)	fxp_q4_to_int(bpp_x16), (fxp_q4_to_frac(bpp_x16) * 625)

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bpp_x16' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2204:
+#define BPP_X16_ARGS(bpp_x16)	fxp_q4_to_int(bpp_x16), (fxp_q4_to_frac(bpp_x16) * 625)

total: 1 errors, 0 warnings, 1 checks, 38 lines checked
b01c8accd3a8 drm/i915: Replace BPP_X16_FMT()/ARGS() with FXP_Q4_FMT()/ARGS()
-:77: WARNING:MISSING_SPACE: break quoted strings at a space character
#77: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2369:
 			    "Cannot compute valid DSC parameters for Input Bpp = %d"
+			    "Compressed BPP = " FXP_Q4_FMT "\n",

-:99: WARNING:LONG_LINE: line length of 163 exceeds 100 columns
#99: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2432:
+		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " FXP_Q4_FMT "\n",

total: 0 errors, 2 warnings, 0 checks, 98 lines checked
9f5642dbbd50 drm/i915: Dump DSC state to dmesg and debugfs/i915_display_info
9187a52309a5 drm/i915: Remove DSC register dump


