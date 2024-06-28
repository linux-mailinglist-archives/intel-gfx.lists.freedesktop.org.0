Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2413091C4BA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 19:22:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF20F10ECC5;
	Fri, 28 Jun 2024 17:22:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D13610ECC5;
 Fri, 28 Jun 2024 17:22:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Dump_DSC?=
 =?utf-8?q?_state_to_dmesg/debugfs_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2024 17:22:48 -0000
Message-ID: <171959536824.186685.10682706059313670088@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240628164451.1177612-1-imre.deak@intel.com>
In-Reply-To: <20240628164451.1177612-1-imre.deak@intel.com>
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

Series: drm/i915: Dump DSC state to dmesg/debugfs (rev2)
URL   : https://patchwork.freedesktop.org/series/134906/
State : warning

== Summary ==

Error: dim checkpatch failed
4affbe7acace drm: Add helpers for q4 fixed point values
-:46: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#46: FILE: drivers/gpu/drm/display/drm_dp_helper.c:4155:
+		DRM_DEBUG_KMS("Invalid BW overhead params: lane_count %d, hactive %d, bpp_x16 " FXP_Q4_FMT "\n",

-:82: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#82: FILE: include/drm/drm_fixed.h:238:
+#define FXP_Q4_ARGS(val_q4)	fxp_q4_to_int(val_q4), (fxp_q4_to_frac(val_q4) * 625)

-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val_q4' - possible side-effects?
#82: FILE: include/drm/drm_fixed.h:238:
+#define FXP_Q4_ARGS(val_q4)	fxp_q4_to_int(val_q4), (fxp_q4_to_frac(val_q4) * 625)

total: 1 errors, 1 warnings, 1 checks, 45 lines checked
36c3d675d384 drm/display/dsc: Add a helper to dump the DSC configuration
-:11: WARNING:TYPO_SPELLING: 'configration' may be misspelled - perhaps 'configuration'?
#11: 
- s/DSC configration/DSC configuration in the function documentation.
        ^^^^^^^^^^^^

-:39: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#39: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1484:
+			  cfg->slice_count, cfg->slice_width, cfg->slice_height, cfg->slice_chunk_size);

-:44: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#44: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1489:
+			  str_yes_no(cfg->simple_422), str_yes_no(cfg->native_422), str_yes_no(cfg->native_420));

-:47: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#47: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1492:
+			  cfg->bits_per_component, FXP_Q4_ARGS(cfg->bits_per_pixel), cfg->line_buf_depth);

-:58: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#58: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1503:
+			  cfg->second_line_bpg_offset, cfg->nsl_bpg_offset, cfg->second_line_offset_adj);

-:62: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#62: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1507:
+			  cfg->rc_edge_factor, cfg->rc_quant_incr_limit0, cfg->rc_quant_incr_limit1);

-:65: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#65: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1510:
+			  cfg->initial_scale_value, cfg->scale_increment_interval, cfg->scale_decrement_interval);

-:88: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#88: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1533:
+			  rp[0].range_min_qp,  rp[1].range_min_qp,  rp[2].range_min_qp,  rp[3].range_min_qp,

-:89: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#89: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1534:
+			  rp[4].range_min_qp,  rp[5].range_min_qp,  rp[6].range_min_qp,  rp[7].range_min_qp,

-:90: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#90: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1535:
+			  rp[8].range_min_qp,  rp[9].range_min_qp,  rp[10].range_min_qp, rp[11].range_min_qp,

-:94: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#94: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1539:
+			  rp[0].range_max_qp,  rp[1].range_max_qp,  rp[2].range_max_qp,  rp[3].range_max_qp,

-:95: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#95: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1540:
+			  rp[4].range_max_qp,  rp[5].range_max_qp,  rp[6].range_max_qp,  rp[7].range_max_qp,

-:96: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#96: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1541:
+			  rp[8].range_max_qp,  rp[9].range_max_qp,  rp[10].range_max_qp, rp[11].range_max_qp,

-:100: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#100: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1545:
+			  rp[0].range_bpg_offset,  rp[1].range_bpg_offset,  rp[2].range_bpg_offset,  rp[3].range_bpg_offset,

-:101: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#101: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1546:
+			  rp[4].range_bpg_offset,  rp[5].range_bpg_offset,  rp[6].range_bpg_offset,  rp[7].range_bpg_offset,

-:102: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#102: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1547:
+			  rp[8].range_bpg_offset,  rp[9].range_bpg_offset,  rp[10].range_bpg_offset, rp[11].range_bpg_offset,

-:103: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#103: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1548:
+			  rp[12].range_bpg_offset, rp[13].range_bpg_offset, rp[14].range_bpg_offset);

total: 0 errors, 17 warnings, 0 checks, 115 lines checked
e547afbbbe94 drm/i915: Replace to_bpp_x16() with fxp_q4_from_int()
1e56c9bd14f8 drm/i915: Replace to_bpp_int() with fxp_q4_to_int()
-:102: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#102: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2187:
+#define BPP_X16_ARGS(bpp_x16)	fxp_q4_to_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)

-:102: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bpp_x16' - possible side-effects?
#102: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2187:
+#define BPP_X16_ARGS(bpp_x16)	fxp_q4_to_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)

total: 1 errors, 0 warnings, 1 checks, 148 lines checked
5dd303b640a1 drm/i915: Replace to_bpp_int_roundup() with fxp_q4_to_int_roundup()
aa103679d5d6 drm/i915: Replace to_bpp_frac() with fxp_q4_to_frac()
-:28: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#28: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2182:
+#define BPP_X16_ARGS(bpp_x16)	fxp_q4_to_int(bpp_x16), (fxp_q4_to_frac(bpp_x16) * 625)

-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bpp_x16' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2182:
+#define BPP_X16_ARGS(bpp_x16)	fxp_q4_to_int(bpp_x16), (fxp_q4_to_frac(bpp_x16) * 625)

total: 1 errors, 0 warnings, 1 checks, 38 lines checked
59b0ce38fefe drm/i915: Replace BPP_X16_FMT()/ARGS() with FXP_Q4_FMT()/ARGS()
-:76: WARNING:MISSING_SPACE: break quoted strings at a space character
#76: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2274:
 			    "Cannot compute valid DSC parameters for Input Bpp = %d"
+			    "Compressed BPP = " FXP_Q4_FMT "\n",

-:98: WARNING:LONG_LINE: line length of 163 exceeds 100 columns
#98: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2337:
+		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " FXP_Q4_FMT "\n",

total: 0 errors, 2 warnings, 0 checks, 98 lines checked
7d66cbd5171a drm/i915: Dump DSC state to dmesg and debugfs/i915_display_info
a7bba197b3cf drm/i915: Remove DSC register dump


