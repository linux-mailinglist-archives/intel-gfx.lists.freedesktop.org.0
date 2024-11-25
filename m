Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8502F9D7CB1
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 09:15:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B1910E5D7;
	Mon, 25 Nov 2024 08:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E74FA10E5D7;
 Mon, 25 Nov 2024 08:15:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Display_Global_Histo?=
 =?utf-8?q?gram_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2024 08:15:12 -0000
Message-ID: <173252251296.2750561.11203153747636685928@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241121122603.736267-1-arun.r.murthy@intel.com>
In-Reply-To: <20241121122603.736267-1-arun.r.murthy@intel.com>
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

Series: Display Global Histogram (rev8)
URL   : https://patchwork.freedesktop.org/series/135793/
State : warning

== Summary ==

Error: dim checkpatch failed
914f0be9a51f drm/i915/histogram: Define registers for histogram
-:15: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#15: 
new file mode 100644

-:20: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_histogram_regs.h', please use '/*' instead
#20: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:1:
+// SPDX-License-Identifier: MIT

-:20: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#20: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:1:
+// SPDX-License-Identifier: MIT

-:39: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:20:
+#define  DPST_CTL_EN_MULTIPLICATIVE			REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)

-:46: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:27:
+#define  DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 1)

-:47: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:28:
+#define  DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 0)

-:53: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:34:
+#define DPST_GUARD(pipe)				_MMIO_PIPE(pipe, _DPST_GUARD_A, _DPST_GUARD_B)

-:57: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#57: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:38:
+#define  DPST_GUARD_INTERRUPT_DELAY(val)			REG_FIELD_PREP(DPST_GUARD_INTERRUPT_DELAY_MASK, val)

-:59: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#59: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:40:
+#define  DPST_GUARD_THRESHOLD_GB(val)			REG_FIELD_PREP(DPST_GUARD_THRESHOLD_GB_MASK, val)

total: 0 errors, 9 warnings, 0 checks, 48 lines checked
64df0e035450 drm/i915/histogram: Add support for histogram
-:49: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#49: 
new file mode 100644

-:234: WARNING:BRACES: braces {} are not necessary for single statement blocks
#234: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:181:
+	if (!histogram) {
+		return -ENOMEM;
+	}

-:250: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_histogram.h', please use '/*' instead
#250: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:1:
+// SPDX-License-Identifier: MIT

-:250: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#250: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:1:
+// SPDX-License-Identifier: MIT

total: 0 errors, 4 warnings, 0 checks, 240 lines checked
9f9623f329fb drm/xe: Add histogram support to Xe builds
c2a0874443a2 drm/i915/histogram: histogram interrupt handling
-:6: WARNING:TYPO_SPELLING: 'trigerred' may be misspelled - perhaps 'triggered'?
#6: 
Upon enabling histogram an interrupt is trigerred after the generation
                                        ^^^^^^^^^

-:76: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#76: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:41:
+		if (!(dpstbin & DPST_BIN_BUSY)) {
[...]
+		} else
[...]

-:78: CHECK:BRACES: Unbalanced braces around else statement
#78: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:43:
+		} else

-:91: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#91: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:56:
+	char *histogram_event[] = { event, pipe_id, NULL };

total: 0 errors, 3 warnings, 1 checks, 184 lines checked
dcfa1e210b10 drm/i915/histogram: Add crtc properties for global histogram
-:326: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#326: FILE: drivers/gpu/drm/i915/display/intel_display.c:7915:
+						    (u32 *)new_crtc_state->histogram.global_iet->data);

-:370: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#370: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:72:
+			drm_property_replace_global_blob(display->drm,
+				&intel_crtc->config->histogram.histogram,

total: 0 errors, 1 warnings, 1 checks, 320 lines checked
05dc7d8ccfb3 drm/i915/histogram: histogram delay counter doesnt reset
-:4: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#4: 
Subject: [PATCH] drm/i915/histogram: histogram delay counter doesnt reset
                                                             ^^^^^^

-:41: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:96:
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */

-:60: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:20:
+#define  DPST_CTL_GUARDBAND_INTERRUPT_DELAY(val)	REG_FIELD_PREP(DPST_CTL_GUARDBAND_INTERRUPT_DELAY_CNT, val)

total: 0 errors, 3 warnings, 0 checks, 34 lines checked
3445ace7574a drm/i915/histogram: Histogram changes for Display 20+
-:38: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#38: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:44:
+static void write_iet(struct intel_display *display, enum pipe pipe,
+			      u32 *data)

-:189: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#189: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:53:
+#define DPST_HIST_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_INDEX_A, _DPST_HIST_INDEX_B)

-:191: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#191: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:55:
+#define  DPST_HIST_BIN_INDEX(val)			REG_FIELD_PREP(DPST_HIST_BIN_INDEX_MASK, val)

-:195: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#195: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:59:
+#define DPST_HIST_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_BIN_A, _DPST_HIST_BIN_B)

-:201: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#201: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:65:
+#define DPST_IE_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_IE_BIN_A, _DPST_IE_BIN_B)

-:207: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#207: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:71:
+#define DPST_IE_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_IE_INDEX_A, _DPST_IE_INDEX_B)

total: 0 errors, 5 warnings, 1 checks, 179 lines checked
b06f84aa8180 drm/i915/histogram: Enable pipe dithering


