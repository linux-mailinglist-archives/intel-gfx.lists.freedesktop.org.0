Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DA8624D57
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 22:55:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A47D10E77B;
	Thu, 10 Nov 2022 21:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B28010E0F2;
 Thu, 10 Nov 2022 21:55:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 33428A7DFC;
 Thu, 10 Nov 2022 21:55:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 10 Nov 2022 21:55:46 -0000
Message-ID: <166811734617.16954.15704379924830514437@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Finish_=28de=29gamma_readout_=28rev2=29?=
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

Series: drm/i915: Finish (de)gamma readout (rev2)
URL   : https://patchwork.freedesktop.org/series/79614/
State : warning

== Summary ==

Error: dim checkpatch failed
ad80098b2909 drm/i915: Clean up legacy palette defines
1be46d64da65 drm/i915: Clean up 10bit precision palette defines
-:30: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#30: FILE: drivers/gpu/drm/i915/display/intel_color.c:474:
+		REG_FIELD_PREP(PREC_PALETTE_10_GREEN_MASK, drm_color_lut_extract(color->green, 10)) |

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
ba1c32a01b06 drm/i915: Clean up 12.4bit precision palette defines
7292f3acfd00 drm/i915: Clean up chv CGM (de)gamma defines
-:28: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#28: FILE: drivers/gpu/drm/i915/display/intel_color.c:1080:
+	return REG_FIELD_PREP(CGM_PIPE_DEGAMMA_GREEN_LDW_MASK, drm_color_lut_extract(color->green, 14)) |

-:29: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#29: FILE: drivers/gpu/drm/i915/display/intel_color.c:1081:
+		REG_FIELD_PREP(CGM_PIPE_DEGAMMA_BLUE_LDW_MASK, drm_color_lut_extract(color->blue, 14));

-:45: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_color.c:1107:
+	return REG_FIELD_PREP(CGM_PIPE_GAMMA_GREEN_LDW_MASK, drm_color_lut_extract(color->green, 10)) |

-:46: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_color.c:1108:
+		REG_FIELD_PREP(CGM_PIPE_GAMMA_BLUE_LDW_MASK, drm_color_lut_extract(color->blue, 10));

total: 0 errors, 4 warnings, 0 checks, 65 lines checked
babb1b1c06d6 drm/i915: Reorder 12.4 lut udw vs. ldw functions
29c656a7353c drm/i915: Fix adl+ degamma LUT size
988d2c1b9f30 drm/i915: Add glk+ degamma readout
85458e9c275c drm/i915: Read out CHV CGM degamma
-:27: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/display/intel_color.c:1091:
+	entry->green = intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_DEGAMMA_GREEN_LDW_MASK, ldw), 14);

total: 0 errors, 1 warnings, 0 checks, 54 lines checked
0a59b7cbc6f6 drm/i915: Add gamma/degamma readout for bdw+
da3bf65db646 drm/i915: Add gamma/degamma readout for ivb/hsw
bf28006605c0 drm/i915: Make ilk_read_luts() capable of degamma readout
17c92a474c6f drm/i915: Make .read_luts() mandatory
509577df038e drm/i915: Finish the LUT state checker
-:496: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'lut' - possible side-effects?
#496: FILE: drivers/gpu/drm/i915/display/intel_display.c:5678:
+#define PIPE_CONF_CHECK_COLOR_LUT(lut, is_pre_csc_lut) do { \
+	if (current_config->gamma_mode == pipe_config->gamma_mode && \
+	    !intel_color_lut_equal(current_config, \
+				   current_config->lut, pipe_config->lut, \
+				   is_pre_csc_lut)) {	\
+		pipe_config_mismatch(fastset, crtc, __stringify(lut), \
+				     "hw_state doesn't match sw_state"); \
+		ret = false; \
 	} \
 } while (0)

-:496: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'lut' may be better as '(lut)' to avoid precedence issues
#496: FILE: drivers/gpu/drm/i915/display/intel_display.c:5678:
+#define PIPE_CONF_CHECK_COLOR_LUT(lut, is_pre_csc_lut) do { \
+	if (current_config->gamma_mode == pipe_config->gamma_mode && \
+	    !intel_color_lut_equal(current_config, \
+				   current_config->lut, pipe_config->lut, \
+				   is_pre_csc_lut)) {	\
+		pipe_config_mismatch(fastset, crtc, __stringify(lut), \
+				     "hw_state doesn't match sw_state"); \
+		ret = false; \
 	} \
 } while (0)

total: 0 errors, 0 warnings, 2 checks, 463 lines checked
b855e2fe2818 drm/i915: Rework legacy LUT handling
c7eea86b5e5d drm/i915: Use hw degamma LUT for sw gamma on glk with YCbCr output
-:93: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "crtc_state->post_csc_lut"
#93: FILE: drivers/gpu/drm/i915/display/intel_color.c:1418:
+			    crtc_state->post_csc_lut != NULL &&

total: 0 errors, 0 warnings, 1 checks, 131 lines checked
691de47062ec drm/i915: Use gamma LUT for RGB limited range compression
9ad23c06b78d drm/i915: Add 10bit gamma mode for gen2/3
99b976ce3548 drm/i915: Do state check for color management changes


