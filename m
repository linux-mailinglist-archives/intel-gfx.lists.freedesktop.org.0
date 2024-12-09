Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A33449E9EAE
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 20:01:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A11C10E518;
	Mon,  9 Dec 2024 19:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB2E510E518;
 Mon,  9 Dec 2024 19:01:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Display_Global_Histo?=
 =?utf-8?q?gram_=28rev10=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Dec 2024 19:01:32 -0000
Message-ID: <173377089276.562858.12268512018143368901@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241209162504.2146697-1-arun.r.murthy@intel.com>
In-Reply-To: <20241209162504.2146697-1-arun.r.murthy@intel.com>
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

Series: Display Global Histogram (rev10)
URL   : https://patchwork.freedesktop.org/series/135793/
State : warning

== Summary ==

Error: dim checkpatch failed
33f1a03f6bbe drm/crtc: Add histogram properties
-:15: WARNING:TYPO_SPELLING: 'recieving' may be misspelled - perhaps 'receiving'?
#15: 
An event HISTOGRAM will be sent to the user. User upon recieving this
                                                       ^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 93 lines checked
c2526ba20b16 drm/crtc: Expose API to create drm crtc property for histogram
-:96: WARNING:TYPO_SPELLING: 'recieving' may be misspelled - perhaps 'receiving'?
#96: FILE: drivers/gpu/drm/drm_crtc.c:952:
+ * An event HISTOGRAM will be sent to the user. User upon recieving this
                                                           ^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
d795412868e0 drm/i915/histogram: Define registers for histogram
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
a7c4106d5c05 drm/i915/histogram: Add support for histogram
-:49: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#49: 
new file mode 100644

-:214: WARNING:ALLOC_WITH_MULTIPLY: Prefer kcalloc over kzalloc with multiply
#214: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:161:
+	data = kzalloc(sizeof(data) * iet->nr_elements, GFP_KERNEL);

-:246: WARNING:BRACES: braces {} are not necessary for single statement blocks
#246: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:193:
+	if (!histogram) {
+		return -ENOMEM;
+	}

-:262: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_histogram.h', please use '/*' instead
#262: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:1:
+// SPDX-License-Identifier: MIT

-:262: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#262: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:1:
+// SPDX-License-Identifier: MIT

total: 0 errors, 5 warnings, 0 checks, 254 lines checked
600052121fbf drm/xe: Add histogram support to Xe builds
abfb254252b8 drm/i915/histogram: histogram interrupt handling
-:6: WARNING:TYPO_SPELLING: 'trigerred' may be misspelled - perhaps 'triggered'?
#6: 
Upon enabling histogram an interrupt is trigerred after the generation
                                        ^^^^^^^^^

-:77: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#77: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:41:
+		if (!(dpstbin & DPST_BIN_BUSY)) {
[...]
+		} else
[...]

-:79: CHECK:BRACES: Unbalanced braces around else statement
#79: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:43:
+		} else

-:92: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#92: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:56:
+	char *histogram_event[] = { event, pipe_id, NULL };

-:114: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*hist)...) over kzalloc(sizeof(struct drm_histogram)...)
#114: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:78:
+			hist = kzalloc(sizeof(struct drm_histogram), GFP_KERNEL);

-:121: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#121: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:85:
+			drm_property_replace_global_blob(display->drm,
+				&intel_crtc->base.state->histogram_data,

total: 0 errors, 3 warnings, 3 checks, 202 lines checked
657e95b5738c drm/i915/display: Handle drm-crtc histogram property updates
-:90: ERROR:ASSIGN_IN_IF: do not use assignment in if condition
#90: FILE: drivers/gpu/drm/i915/display/intel_display.c:6843:
+		if (new_crtc_state->uapi.histogram_enable |=

total: 1 errors, 0 warnings, 0 checks, 85 lines checked
b0ace50be2e5 drm/i915/histogram: histogram delay counter doesnt reset
-:4: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#4: 
Subject: [PATCH] drm/i915/histogram: histogram delay counter doesnt reset
                                                             ^^^^^^

-:43: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:109:
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */

-:62: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#62: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:20:
+#define  DPST_CTL_GUARDBAND_INTERRUPT_DELAY(val)	REG_FIELD_PREP(DPST_CTL_GUARDBAND_INTERRUPT_DELAY_CNT, val)

total: 0 errors, 3 warnings, 0 checks, 34 lines checked
535c23c25460 drm/i915/histogram: Histogram changes for Display 20+
-:39: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#39: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:44:
+static void write_iet(struct intel_display *display, enum pipe pipe,
+			      u32 *data)

-:195: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#195: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:53:
+#define DPST_HIST_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_INDEX_A, _DPST_HIST_INDEX_B)

-:197: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#197: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:55:
+#define  DPST_HIST_BIN_INDEX(val)			REG_FIELD_PREP(DPST_HIST_BIN_INDEX_MASK, val)

-:201: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#201: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:59:
+#define DPST_HIST_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_BIN_A, _DPST_HIST_BIN_B)

-:207: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#207: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:65:
+#define DPST_IE_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_IE_BIN_A, _DPST_IE_BIN_B)

-:213: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#213: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:71:
+#define DPST_IE_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_IE_INDEX_A, _DPST_IE_INDEX_B)

total: 0 errors, 5 warnings, 1 checks, 183 lines checked
d701a7f63480 drm/i915/histogram: Enable pipe dithering


