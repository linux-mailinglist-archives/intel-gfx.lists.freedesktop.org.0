Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0FE988B0D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 22:06:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFC8D10ED0C;
	Fri, 27 Sep 2024 20:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB4210ED0C;
 Fri, 27 Sep 2024 20:06:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Display_Global_Histo?=
 =?utf-8?q?gram_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2024 20:06:45 -0000
Message-ID: <172746760523.1112958.4483028018143053181@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240925150754.1876893-1-arun.r.murthy@intel.com>
In-Reply-To: <20240925150754.1876893-1-arun.r.murthy@intel.com>
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

Series: Display Global Histogram (rev5)
URL   : https://patchwork.freedesktop.org/series/135793/
State : warning

== Summary ==

Error: dim checkpatch failed
28f3d5fbad76 drm/i915/histogram: Define registers for histogram
-:11: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#11: 
new file mode 100644

-:16: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_histogram_reg.h', please use '/*' instead
#16: FILE: drivers/gpu/drm/i915/display/intel_histogram_reg.h:1:
+// SPDX-License-Identifier: MIT

-:16: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#16: FILE: drivers/gpu/drm/i915/display/intel_histogram_reg.h:1:
+// SPDX-License-Identifier: MIT

-:35: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/intel_histogram_reg.h:20:
+#define DPST_CTL_EN_MULTIPLICATIVE			REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)

-:42: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/display/intel_histogram_reg.h:27:
+#define DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 1)

-:43: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_histogram_reg.h:28:
+#define DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 0)

-:49: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/intel_histogram_reg.h:34:
+#define DPST_GUARD(pipe)				_MMIO_PIPE(pipe, _DPST_GUARD_A, _DPST_GUARD_B)

-:53: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/display/intel_histogram_reg.h:38:
+#define DPST_GUARD_INTERRUPT_DELAY(val)			REG_FIELD_PREP(DPST_GUARD_INTERRUPT_DELAY_MASK, val)

-:55: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#55: FILE: drivers/gpu/drm/i915/display/intel_histogram_reg.h:40:
+#define DPST_GUARD_THRESHOLD_GB(val)			REG_FIELD_PREP(DPST_GUARD_THRESHOLD_GB_MASK, val)

total: 0 errors, 9 warnings, 0 checks, 54 lines checked
04dcd5708251 drm/i915/histogram: Add support for histogram
-:46: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#46: 
new file mode 100644

-:228: WARNING:BRACES: braces {} are not necessary for single statement blocks
#228: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:178:
+	if (!histogram) {
+		return -ENOMEM;
+	}

-:244: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_histogram.h', please use '/*' instead
#244: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:1:
+// SPDX-License-Identifier: MIT

-:244: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#244: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:1:
+// SPDX-License-Identifier: MIT

total: 0 errors, 4 warnings, 0 checks, 237 lines checked
db47e145d86b drm/xe: Add histogram support to Xe builds
dedc9b1d95fa drm/i915/histogram: histogram interrupt handling
-:6: WARNING:TYPO_SPELLING: 'trigerred' may be misspelled - perhaps 'triggered'?
#6: 
Upon enabling histogram an interrupt is trigerred after the generation
                                        ^^^^^^^^^

-:109: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#109: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:75:
+	char *histogram_event[] = {"HISTOGRAM=1", NULL};

total: 0 errors, 2 warnings, 0 checks, 184 lines checked
a547804197a9 drm/i915/histogram: Add crtc properties for global histogram
-:324: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#324: FILE: drivers/gpu/drm/i915/display/intel_display.c:7561:
+						    (u32 *)new_crtc_state->histogram.global_iet->data);

-:368: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#368: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:86:
+		drm_property_replace_global_blob(display->drm,
+				&intel_crtc->config->histogram.histogram,

total: 0 errors, 1 warnings, 1 checks, 320 lines checked
4d4b405b9eb2 drm/i915/histogram: histogram delay counter doesnt reset
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
#48: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:248:
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */

-:50: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#50: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:250:
+		intel_de_write(display, DPST_CTL(intel_crtc->pipe), intel_de_read(display,
+			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);

total: 0 errors, 3 warnings, 2 checks, 42 lines checked
5ccc481b423b drm/i915/histogram: Histogram changes for Display 20+
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
#195: FILE: drivers/gpu/drm/i915/display/intel_histogram_reg.h:52:
+#define DPST_HIST_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_INDEX_A, _DPST_HIST_INDEX_B)

-:197: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#197: FILE: drivers/gpu/drm/i915/display/intel_histogram_reg.h:54:
+#define DPST_HIST_BIN_INDEX(val)			REG_FIELD_PREP(DPST_HIST_BIN_INDEX_MASK, val)

-:201: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#201: FILE: drivers/gpu/drm/i915/display/intel_histogram_reg.h:58:
+#define DPST_HIST_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_BIN_A, _DPST_HIST_BIN_B)

-:207: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#207: FILE: drivers/gpu/drm/i915/display/intel_histogram_reg.h:64:
+#define DPST_IE_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_IE_BIN_A, _DPST_IE_BIN_B)

-:213: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#213: FILE: drivers/gpu/drm/i915/display/intel_histogram_reg.h:70:
+#define DPST_IE_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_IE_INDEX_A, _DPST_IE_INDEX_B)

total: 2 errors, 5 warnings, 1 checks, 189 lines checked


