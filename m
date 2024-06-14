Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2191D9092B8
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 21:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 586D610EE35;
	Fri, 14 Jun 2024 19:07:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9585C10E077;
 Fri, 14 Jun 2024 19:07:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Dump_DSC?=
 =?utf-8?q?_state_to_dmesg/debugfs?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2024 19:07:16 -0000
Message-ID: <171839203661.80112.9095877930530274312@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240614173911.3743172-1-imre.deak@intel.com>
In-Reply-To: <20240614173911.3743172-1-imre.deak@intel.com>
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

Series: drm/i915: Dump DSC state to dmesg/debugfs
URL   : https://patchwork.freedesktop.org/series/134906/
State : warning

== Summary ==

Error: dim checkpatch failed
f07f771fbdda drm: Add helpers for x16 fixed point values
-:33: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#33: FILE: drivers/gpu/drm/display/drm_dp_helper.c:4155:
+		DRM_DEBUG_KMS("Invalid BW overhead params: lane_count %d, hactive %d, bpp_x16 " DRM_X16_FMT "\n",

-:69: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#69: FILE: include/drm/drm_fixed.h:238:
+#define DRM_X16_ARGS(val_x16)	drm_x16_to_int(val_x16), (drm_x16_to_frac(val_x16) * 625)

-:69: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val_x16' - possible side-effects?
#69: FILE: include/drm/drm_fixed.h:238:
+#define DRM_X16_ARGS(val_x16)	drm_x16_to_int(val_x16), (drm_x16_to_frac(val_x16) * 625)

total: 1 errors, 1 warnings, 1 checks, 45 lines checked
2d5a17f369ab drm/display/dsc: Add a helper to dump the DSC configuration
-:35: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#35: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1484:
+			  cfg->slice_count, cfg->slice_width, cfg->slice_height, cfg->slice_chunk_size);

-:40: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#40: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1489:
+			  str_yes_no(cfg->simple_422), str_yes_no(cfg->native_422), str_yes_no(cfg->native_420));

-:43: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#43: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1492:
+			  cfg->bits_per_component, DRM_X16_ARGS(cfg->bits_per_pixel), cfg->line_buf_depth);

-:54: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#54: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1503:
+			  cfg->second_line_bpg_offset, cfg->nsl_bpg_offset, cfg->second_line_offset_adj);

-:58: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#58: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1507:
+			  cfg->rc_edge_factor, cfg->rc_quant_incr_limit0, cfg->rc_quant_incr_limit1);

-:61: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#61: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1510:
+			  cfg->initial_scale_value, cfg->scale_increment_interval, cfg->scale_decrement_interval);

-:84: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#84: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1533:
+			  rp[0].range_min_qp,  rp[1].range_min_qp,  rp[2].range_min_qp,  rp[3].range_min_qp,

-:85: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#85: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1534:
+			  rp[4].range_min_qp,  rp[5].range_min_qp,  rp[6].range_min_qp,  rp[7].range_min_qp,

-:86: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#86: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1535:
+			  rp[8].range_min_qp,  rp[9].range_min_qp,  rp[10].range_min_qp, rp[11].range_min_qp,

-:90: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#90: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1539:
+			  rp[0].range_max_qp,  rp[1].range_max_qp,  rp[2].range_max_qp,  rp[3].range_max_qp,

-:91: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#91: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1540:
+			  rp[4].range_max_qp,  rp[5].range_max_qp,  rp[6].range_max_qp,  rp[7].range_max_qp,

-:92: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#92: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1541:
+			  rp[8].range_max_qp,  rp[9].range_max_qp,  rp[10].range_max_qp, rp[11].range_max_qp,

-:96: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#96: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1545:
+			  rp[0].range_bpg_offset,  rp[1].range_bpg_offset,  rp[2].range_bpg_offset,  rp[3].range_bpg_offset,

-:97: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#97: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1546:
+			  rp[4].range_bpg_offset,  rp[5].range_bpg_offset,  rp[6].range_bpg_offset,  rp[7].range_bpg_offset,

-:98: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#98: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1547:
+			  rp[8].range_bpg_offset,  rp[9].range_bpg_offset,  rp[10].range_bpg_offset, rp[11].range_bpg_offset,

-:99: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#99: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1548:
+			  rp[12].range_bpg_offset, rp[13].range_bpg_offset, rp[14].range_bpg_offset);

-:108: WARNING:TYPO_SPELLING: 'configration' may be misspelled - perhaps 'configuration'?
#108: FILE: drivers/gpu/drm/display/drm_dsc_helper.c:1557:
+ * Print the provided DSC configration in @cfg.
                           ^^^^^^^^^^^^

total: 0 errors, 17 warnings, 0 checks, 115 lines checked
4a5c159b6291 drm/i915: Replace to_bpp_x16() with drm_x16_from_int()
-:122: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#122: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:215:
+						intel_dp_output_bpp(crtc_state->output_format, bpp));

total: 0 errors, 1 warnings, 0 checks, 153 lines checked
b41f883b9ee2 drm/i915: Replace to_bpp_int() with drm_x16_to_int()
-:100: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#100: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2178:
+#define BPP_X16_ARGS(bpp_x16)	drm_x16_to_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)

-:100: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bpp_x16' - possible side-effects?
#100: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2178:
+#define BPP_X16_ARGS(bpp_x16)	drm_x16_to_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)

total: 1 errors, 0 warnings, 1 checks, 148 lines checked
473e6d137aee drm/i915: Replace to_bpp_int_roundup() with drm_x16_to_int_roundup()
e45a5f368a30 drm/i915: Replace to_bpp_frac() with drm_x16_to_frac()
-:26: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#26: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2173:
+#define BPP_X16_ARGS(bpp_x16)	drm_x16_to_int(bpp_x16), (drm_x16_to_frac(bpp_x16) * 625)

-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bpp_x16' - possible side-effects?
#26: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2173:
+#define BPP_X16_ARGS(bpp_x16)	drm_x16_to_int(bpp_x16), (drm_x16_to_frac(bpp_x16) * 625)

total: 1 errors, 0 warnings, 1 checks, 38 lines checked
93b554a82d9a drm/i915: Replace BPP_X16_FMT()/ARGS() with DRM_X16_FMT()/ARGS()
-:74: WARNING:MISSING_SPACE: break quoted strings at a space character
#74: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2270:
 			    "Cannot compute valid DSC parameters for Input Bpp = %d"
+			    "Compressed BPP = " DRM_X16_FMT "\n",

-:96: WARNING:LONG_LINE: line length of 164 exceeds 100 columns
#96: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2333:
+		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " DRM_X16_FMT "\n",

total: 0 errors, 2 warnings, 0 checks, 98 lines checked
20813853cdc9 drm/i915: Dump DSC state to dmesg and debugfs/i915_display_info
b3a258825ae6 drm/i915: Remove DSC register dump


