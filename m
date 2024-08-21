Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F0D959914
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 13:08:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18DA410E5E5;
	Wed, 21 Aug 2024 11:08:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A18F10E5E5;
 Wed, 21 Aug 2024 11:08:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Display_Global_Histo?=
 =?utf-8?q?gram_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2024 11:08:07 -0000
Message-ID: <172423848755.717750.11747699481805135127@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
In-Reply-To: <20240821102349.3961986-1-arun.r.murthy@intel.com>
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

Series: Display Global Histogram (rev2)
URL   : https://patchwork.freedesktop.org/series/135793/
State : warning

== Summary ==

Error: dim checkpatch failed
337a25d5ced9 drm/i915/display: Add support for histogram
-:43: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#43: 
new file mode 100644

-:103: WARNING:BRACES: braces {} are not necessary for single statement blocks
#103: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:56:
+	if (!histogram->can_enable) {
+		return -EINVAL;
+	}

-:241: WARNING:BRACES: braces {} are not necessary for single statement blocks
#241: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:194:
+	if (!histogram) {
+		return -ENOMEM;
+	}

-:259: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_histogram.h', please use '/*' instead
#259: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:1:
+// SPDX-License-Identifier: MIT

-:259: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#259: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:1:
+// SPDX-License-Identifier: MIT

-:280: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#280: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:22:
+#define DPST_CTL_EN_MULTIPLICATIVE			REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)

-:287: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#287: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:29:
+#define DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 1)

-:288: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#288: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:30:
+#define DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 0)

-:294: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#294: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:36:
+#define DPST_GUARD(pipe)				_MMIO_PIPE(pipe, _DPST_GUARD_A, _DPST_GUARD_B)

-:298: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#298: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:40:
+#define DPST_GUARD_INTERRUPT_DELAY(val)			REG_FIELD_PREP(DPST_GUARD_INTERRUPT_DELAY_MASK, val)

-:300: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#300: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:42:
+#define DPST_GUARD_THRESHOLD_GB(val)			REG_FIELD_PREP(DPST_GUARD_THRESHOLD_GB_MASK, val)

total: 0 errors, 11 warnings, 0 checks, 305 lines checked
b98928743342 drm/i915/display: histogram interrupt handling
-:6: WARNING:TYPO_SPELLING: 'trigerred' may be misspelled - perhaps 'triggered'?
#6: 
Upon enabling histogram an interrupt is trigerred after the generation
                                        ^^^^^^^^^

-:68: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#68: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:35:
+	char *histogram_event[] = {"HISTOGRAM=1", NULL};

total: 0 errors, 2 warnings, 0 checks, 173 lines checked
72761d7c3212 Add crtc properties for global histogram
-:409: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#409: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:70:
+	drm_property_replace_global_blob(&i915->drm,
+			&intel_crtc->config->histogram,

total: 0 errors, 0 warnings, 1 checks, 364 lines checked
a1efcc4da642 drm/i915/histogram: histogram delay counter doesnt reset
-:4: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#4: 
Subject: [PATCH] drm/i915/histogram: histogram delay counter doesnt reset
                                                             ^^^^^^

-:34: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#34: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:87:
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */

-:36: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#36: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:89:
+		intel_de_write(i915, DPST_CTL(intel_crtc->pipe), intel_de_read(i915,
+			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);

-:47: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:156:
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */

-:49: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#49: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:158:
+		intel_de_write(i915, DPST_CTL(intel_crtc->pipe), intel_de_read(i915,
+			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);

total: 0 errors, 3 warnings, 2 checks, 42 lines checked
03d4b005d1c2 drm/i915/display/histogram: Histogram changes for Display LNL+
-:91: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#91: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:80:
+{
+

-:106: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#106: FILE: drivers/gpu/drm/i915/display/intel_histogram.c:95:
+	char *histogram_event[] = {"HISTOGRAM=1", NULL};

-:217: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#217: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:56:
+#define DPST_HIST_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_INDEX_A, _DPST_HIST_INDEX_B)

-:219: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#219: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:58:
+#define DPST_HIST_BIN_INDEX(val)			REG_FIELD_PREP(DPST_HIST_BIN_INDEX_MASK, val)

-:223: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#223: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:62:
+#define DPST_HIST_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_BIN_A, _DPST_HIST_BIN_B)

-:229: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#229: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:68:
+#define DPST_IE_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_IE_BIN_A, _DPST_IE_BIN_B)

-:235: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#235: FILE: drivers/gpu/drm/i915/display/intel_histogram.h:74:
+#define DPST_IE_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_IE_INDEX_A, _DPST_IE_INDEX_B)

total: 0 errors, 6 warnings, 1 checks, 214 lines checked


