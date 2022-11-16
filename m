Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAB262CD9C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 23:25:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A96ED10E509;
	Wed, 16 Nov 2022 22:25:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7CF7610E515;
 Wed, 16 Nov 2022 22:25:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77277A9932;
 Wed, 16 Nov 2022 22:25:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 16 Nov 2022 22:25:43 -0000
Message-ID: <166863754346.29192.11149198185289909043@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Finish_=28de=29gamma_readout_=28rev9=29?=
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

Series: drm/i915: Finish (de)gamma readout (rev9)
URL   : https://patchwork.freedesktop.org/series/79614/
State : warning

== Summary ==

Error: dim checkpatch failed
cac4d657a616 drm/i915: Clean up legacy palette defines
ce63ce25648d drm/i915: Clean up 10bit precision palette defines
-:31: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#31: FILE: drivers/gpu/drm/i915/display/intel_color.c:475:
+		REG_FIELD_PREP(PREC_PALETTE_10_GREEN_MASK, drm_color_lut_extract(color->green, 10)) |

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
edb4556cf4b8 drm/i915: Clean up 12.4bit precision palette defines
6b13c0d663bb drm/i915: Clean up chv CGM (de)gamma defines
-:29: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#29: FILE: drivers/gpu/drm/i915/display/intel_color.c:1081:
+	return REG_FIELD_PREP(CGM_PIPE_DEGAMMA_GREEN_LDW_MASK, drm_color_lut_extract(color->green, 14)) |

-:30: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#30: FILE: drivers/gpu/drm/i915/display/intel_color.c:1082:
+		REG_FIELD_PREP(CGM_PIPE_DEGAMMA_BLUE_LDW_MASK, drm_color_lut_extract(color->blue, 14));

-:46: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_color.c:1108:
+	return REG_FIELD_PREP(CGM_PIPE_GAMMA_GREEN_LDW_MASK, drm_color_lut_extract(color->green, 10)) |

-:47: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_color.c:1109:
+		REG_FIELD_PREP(CGM_PIPE_GAMMA_BLUE_LDW_MASK, drm_color_lut_extract(color->blue, 10));

total: 0 errors, 4 warnings, 0 checks, 65 lines checked
8c7fd0bd4deb drm/i915: Reorder 12.4 lut udw vs. ldw functions
686b18544844 drm/i915: Fix adl+ degamma LUT size
ee7a9ad39b99 drm/i915: s/gamma/post_csc_lut/
c67c29895246 drm/i915: Add glk+ degamma readout
81af8fe489c0 drm/i915: Read out CHV CGM degamma
-:27: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/display/intel_color.c:1092:
+	entry->green = intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_DEGAMMA_GREEN_LDW_MASK, ldw), 14);

total: 0 errors, 1 warnings, 0 checks, 54 lines checked
e8da1ccfc3b2 drm/i915: Add gamma/degamma readout for bdw+
59d8d5d8d768 drm/i915: Add gamma/degamma readout for ivb/hsw
031e17bf0c4b drm/i915: Make ilk_read_luts() capable of degamma readout
b1f469c17d03 drm/i915: Prep for C8 palette readout
91bd79f686e8 drm/i915: Make .read_luts() mandatory
ccd194651a58 drm/i915: Finish the LUT state checker
-:517: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'lut' - possible side-effects?
#517: FILE: drivers/gpu/drm/i915/display/intel_display.c:5679:
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

-:517: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'lut' may be better as '(lut)' to avoid precedence issues
#517: FILE: drivers/gpu/drm/i915/display/intel_display.c:5679:
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

total: 0 errors, 0 warnings, 2 checks, 476 lines checked
3e5b3da7e9fc drm/i915: Rework legacy LUT handling
7c90905dfd1f drm/i915: Use hw degamma LUT for sw gamma on glk with YCbCr output
-:93: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "crtc_state->post_csc_lut"
#93: FILE: drivers/gpu/drm/i915/display/intel_color.c:1426:
+			    crtc_state->post_csc_lut != NULL &&

total: 0 errors, 0 warnings, 1 checks, 131 lines checked
a98bc605f874 drm/i915: Use gamma LUT for RGB limited range compression
debf0208736a drm/i915: Add 10bit gamma mode for gen2/3
bc983b9016a7 drm/i915: Do state check for color management changes


