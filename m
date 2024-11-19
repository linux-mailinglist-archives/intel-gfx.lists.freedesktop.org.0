Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF3F9D24E3
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 12:34:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 882F510E217;
	Tue, 19 Nov 2024 11:33:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A21FA10E217;
 Tue, 19 Nov 2024 11:33:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Display_Global_Histo?=
 =?utf-8?q?gram_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2024 11:33:47 -0000
Message-ID: <173201602768.270273.9788070349450771681@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241119104521.575377-1-arun.r.murthy@intel.com>
In-Reply-To: <20241119104521.575377-1-arun.r.murthy@intel.com>
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

Series: Display Global Histogram (rev6)
URL   : https://patchwork.freedesktop.org/series/135793/
State : warning

== Summary ==

Error: dim checkpatch failed
ea9d7335b8ed drm/i915/histogram: Define registers for histogram
-:13: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#13: 
new file mode 100644

-:18: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_histogram_regs.h', please use '/*' instead
#18: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:1:
+// SPDX-License-Identifier: MIT

-:18: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#18: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:1:
+// SPDX-License-Identifier: MIT

-:37: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:20:
+#define  DPST_CTL_EN_MULTIPLICATIVE			REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)

-:44: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:27:
+#define  DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 1)

-:45: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:28:
+#define  DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 0)

-:51: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:34:
+#define DPST_GUARD(pipe)				_MMIO_PIPE(pipe, _DPST_GUARD_A, _DPST_GUARD_B)

-:55: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#55: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:38:
+#define  DPST_GUARD_INTERRUPT_DELAY(val)			REG_FIELD_PREP(DPST_GUARD_INTERRUPT_DELAY_MASK, val)

-:57: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#57: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:40:
+#define  DPST_GUARD_THRESHOLD_GB(val)			REG_FIELD_PREP(DPST_GUARD_THRESHOLD_GB_MASK, val)

total: 0 errors, 9 warnings, 0 checks, 48 lines checked
f2d78cdc8a07 drm/i915/histogram: Add support for histogram
-:46: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#46: 
new file mode 100644

-:236: WARNING:BRACES: braces {} are not necessary for single statement blocks
#236: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:186:
+	if (!histogram) {
+		return -ENOMEM;
+	}

-:252: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_histogram.h', please use '/*' instead
#252: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:1:
+// SPDX-License-Identifier: MIT

-:252: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#252: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:1:
+// SPDX-License-Identifier: MIT

total: 0 errors, 4 warnings, 0 checks, 245 lines checked
f303a335aa40 drm/xe: Add histogram support to Xe builds
02b2ba5e8080 drm/i915/histogram: histogram interrupt handling
-:6: WARNING:TYPO_SPELLING: 'trigerred' may be misspelled - perhaps 'triggered'?
#6: 
Upon enabling histogram an interrupt is trigerred after the generation
                                        ^^^^^^^^^

-:109: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#109: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:75:
+	char *histogram_event[] = {"HISTOGRAM=1", NULL};

total: 0 errors, 2 warnings, 0 checks, 184 lines checked
fb80f196e567 drm/i915/histogram: Add crtc properties for global histogram
-:336: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#336: FILE: drivers/gpu/drm/i915/display/intel_display.c:7917:
+						    (u32 *)new_crtc_state->histogram.global_iet->data);

-:380: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#380: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:86:
+		drm_property_replace_global_blob(display->drm,
+				&intel_crtc->config->histogram.histogram,

total: 0 errors, 1 warnings, 1 checks, 330 lines checked
507a7e9a2ee8 drm/i915/histogram: histogram delay counter doesnt reset
-:4: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#4: 
Subject: [PATCH] drm/i915/histogram: histogram delay counter doesnt reset
                                                             ^^^^^^

-:35: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:104:
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */

-:37: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#37: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:106:
+		intel_de_write(display, DPST_CTL(intel_crtc->pipe), intel_de_read(display,
+			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);

-:48: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:256:
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */

-:50: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#50: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:258:
+		intel_de_write(display, DPST_CTL(intel_crtc->pipe), intel_de_read(display,
+			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);

total: 0 errors, 3 warnings, 2 checks, 42 lines checked
d53808ff25bd drm/i915/histogram: Histogram changes for Display 20+
-:35: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#35: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:44:
+static void write_iet(struct intel_display *display, enum pipe pipe,
+			      u32 *data)

-:82: ERROR:CODE_INDENT: code indent should use tabs where possible
#82: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:93:
+^I^I^I^I^I^I^I        DPST_HIST_BIN_DATA_MASK :$

-:83: ERROR:CODE_INDENT: code indent should use tabs where possible
#83: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:94:
+^I^I^I^I^I^I^I        DPST_BIN_DATA_MASK);$

-:195: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#195: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:52:
+#define DPST_HIST_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_INDEX_A, _DPST_HIST_INDEX_B)

-:197: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#197: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:54:
+#define  DPST_HIST_BIN_INDEX(val)			REG_FIELD_PREP(DPST_HIST_BIN_INDEX_MASK, val)

-:201: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#201: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:58:
+#define DPST_HIST_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_BIN_A, _DPST_HIST_BIN_B)

-:207: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#207: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:64:
+#define DPST_IE_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_IE_BIN_A, _DPST_IE_BIN_B)

-:213: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#213: FILE: drivers/gpu/drm/i915/display/intel_histogram_regs.h:70:
+#define DPST_IE_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_IE_INDEX_A, _DPST_IE_INDEX_B)

total: 2 errors, 5 warnings, 1 checks, 187 lines checked
e138a9cfa004 drm/i915/histogram: Enable pipe dithering


