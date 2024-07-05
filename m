Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4F19289D4
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 15:36:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C8F10E257;
	Fri,  5 Jul 2024 13:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63D9B10E257;
 Fri,  5 Jul 2024 13:36:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Display_Global_Histo?=
 =?utf-8?q?gram?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 05 Jul 2024 13:36:17 -0000
Message-ID: <172018657740.30803.15049661484300881104@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
In-Reply-To: <20240705095551.1244154-1-arun.r.murthy@intel.com>
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

Series: Display Global Histogram
URL   : https://patchwork.freedesktop.org/series/135793/
State : warning

== Summary ==

Error: dim checkpatch failed
9b4d0f8ed82e drm/i915/display: Add support for histogram
-:42: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#42: 
new file mode 100644

-:240: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_histogram.h', please use '/*' instead
#240: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:1:
+// SPDX-License-Identifier: MIT

-:240: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#240: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:1:
+// SPDX-License-Identifier: MIT

-:262: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#262: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:23:
+#define DPST_CTL_EN_MULTIPLICATIVE			REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)

-:269: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#269: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:30:
+#define DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 1)

-:270: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#270: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:31:
+#define DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 0)

-:276: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#276: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:37:
+#define DPST_GUARD(pipe)				_MMIO_PIPE(pipe, _DPST_GUARD_A, _DPST_GUARD_B)

-:280: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#280: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:41:
+#define DPST_GUARD_INTERRUPT_DELAY(val)			REG_FIELD_PREP(DPST_GUARD_INTERRUPT_DELAY_MASK, val)

-:282: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#282: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:43:
+#define DPST_GUARD_THRESHOLD_GB(val)			REG_FIELD_PREP(DPST_GUARD_THRESHOLD_GB_MASK, val)

total: 0 errors, 9 warnings, 0 checks, 301 lines checked
a6329355571c drm/i915/display: histogram interrupt handling
-:6: WARNING:TYPO_SPELLING: 'trigerred' may be misspelled - perhaps 'triggered'?
#6: 
Upon enabling histogram an interrupt is trigerred after the generation
                                        ^^^^^^^^^

-:58: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#58: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:21:
+	char *histogram_event[] = {"HISTOGRAM=1", NULL};

-:108: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#108: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:71:
+	drm_property_replace_global_blob(&i915->drm,
+			&intel_crtc->config->histogram,

total: 0 errors, 2 warnings, 1 checks, 179 lines checked
3297a20f1fb7 Add crtc properties for global histogram
42b88e298bf7 drm/i915/histogram: histogram delay counter doesnt reset
-:4: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#4: 
Subject: [PATCH] drm/i915/histogram: histogram delay counter doesnt reset
                                                             ^^^^^^

-:34: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#34: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:69:
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */

-:36: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#36: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:71:
+		intel_de_write(i915, DPST_CTL(histogram->pipe), intel_de_read(i915,
+			       DPST_CTL(histogram->pipe)) | DPST_CTL_RESTORE);

-:47: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:143:
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */

-:49: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#49: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:145:
+		intel_de_write(i915, DPST_CTL(histogram->pipe), intel_de_read(i915,
+			       DPST_CTL(histogram->pipe)) | DPST_CTL_RESTORE);

total: 0 errors, 3 warnings, 2 checks, 42 lines checked
a56de5ec6295 drm/i915/display/histogram: Histogram changes for Display LNL+
-:113: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#113: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:106:
+	char *histogram_event[] = {"HISTOGRAM=1", NULL};

-:247: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#247: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:55:
+#define DPST_HIST_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_INDEX_A, _DPST_HIST_INDEX_B)

-:249: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#249: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:57:
+#define DPST_HIST_BIN_INDEX(val)			REG_FIELD_PREP(DPST_HIST_BIN_INDEX_MASK, val)

-:253: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#253: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:61:
+#define DPST_HIST_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_BIN_A, _DPST_HIST_BIN_B)

-:259: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#259: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:67:
+#define DPST_IE_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_IE_BIN_A, _DPST_IE_BIN_B)

-:265: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#265: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:73:
+#define DPST_IE_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_IE_INDEX_A, _DPST_IE_INDEX_B)

total: 0 errors, 6 warnings, 0 checks, 245 lines checked


