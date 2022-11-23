Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 224956368A0
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 19:24:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1C3E10E226;
	Wed, 23 Nov 2022 18:24:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3998210E226;
 Wed, 23 Nov 2022 18:24:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 353A1AADDC;
 Wed, 23 Nov 2022 18:24:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 23 Nov 2022 18:24:06 -0000
Message-ID: <166922784618.15575.12714755738151013598@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Gamma/DSB_prep_work?=
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

Series: drm/i915: Gamma/DSB prep work
URL   : https://patchwork.freedesktop.org/series/111262/
State : warning

== Summary ==

Error: dim checkpatch failed
8f9716b0038b drm/i915: Shorten GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED a bit
725e303baa7f drm/i915: Clean up GAMMA_MODE defines
-:35: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/i915_reg.h:5318:
+#define  GAMMA_MODE_MODE_SPLIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* ivb-bdw */

-:36: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/i915_reg.h:5319:
+#define  GAMMA_MODE_MODE_12BIT_MULTI_SEG	REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* icl-tgl */

total: 0 errors, 2 warnings, 0 checks, 22 lines checked
67b6bbe92e61 drm/i915: Define skl+ palette anti-collision bit
bbcbe1d1b741 drm/i915: Clean up various indexed LUT registers
-:197: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#197: FILE: drivers/gpu/drm/i915/i915_reg.h:7576:
+#define   PAL_PREC_MULTI_SEG_INDEX_VALUE(x)	REG_FIELD_PREP(PAL_PREC_MULTI_SEG_INDEX_VALUE_MASK, (x))

total: 0 errors, 1 warnings, 0 checks, 162 lines checked
1c9ea03dbbbe drm/i915: Standardize auto-increment LUT load procedure
8a2f660eccfe drm/i915: Document LUT "max" register precision
-:32: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#32: FILE: drivers/gpu/drm/i915/i915_reg.h:5307:
+#define PREC_PIPEGCMAX(pipe, i)        _MMIO(_PIPE(pipe, _PIPEAGCMAX, _PIPEBGCMAX) + (i) * 4) /* u1.16 */

-:43: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/i915_reg.h:7554:
+#define PREC_PAL_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_GC_MAX_A, _PAL_PREC_GC_MAX_B) + (i) * 4) /* u1.16 */

-:44: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/i915_reg.h:7555:
+#define PREC_PAL_EXT_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT_GC_MAX_A, _PAL_PREC_EXT_GC_MAX_B) + (i) * 4) /* u3.16 */

-:45: WARNING:LONG_LINE: line length of 136 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/i915_reg.h:7556:
+#define PREC_PAL_EXT2_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT2_GC_MAX_A, _PAL_PREC_EXT2_GC_MAX_B) + (i) * 4) /* glk+, u3.16 */

total: 0 errors, 4 warnings, 0 checks, 28 lines checked
c56e8ed19533 drm/i915: Move the DSB->mmio fallback into the LUT code
643c7b5484d7 drm/i915: Move the DSB setup/cleaup into the color code
-:131: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#131: FILE: drivers/gpu/drm/i915/display/intel_display.h:443:
+#define for_each_old_intel_crtc_in_state(__state, crtc, old_crtc_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->base.dev->mode_config.num_crtc && \
+		     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
+		      (old_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].old_state), 1); \
+	     (__i)++) \
+		for_each_if(crtc)

-:131: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc' - possible side-effects?
#131: FILE: drivers/gpu/drm/i915/display/intel_display.h:443:
+#define for_each_old_intel_crtc_in_state(__state, crtc, old_crtc_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->base.dev->mode_config.num_crtc && \
+		     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
+		      (old_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].old_state), 1); \
+	     (__i)++) \
+		for_each_if(crtc)

-:131: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#131: FILE: drivers/gpu/drm/i915/display/intel_display.h:443:
+#define for_each_old_intel_crtc_in_state(__state, crtc, old_crtc_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->base.dev->mode_config.num_crtc && \
+		     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
+		      (old_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].old_state), 1); \
+	     (__i)++) \
+		for_each_if(crtc)

-:135: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#135: FILE: drivers/gpu/drm/i915/display/intel_display.h:447:
+		      (old_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].old_state), 1); \

total: 0 errors, 1 warnings, 3 checks, 99 lines checked
3376369f655d drm/i915: Make DSB lower level
254311de0fb7 drm/i915: Disable DSB usage specifically for LUTs
029ab662a202 Revert "drm/i915: Disable DSB usage for now"
fcb5168a004e drm/i915: Use ilk_lut_write*() for all ilk+ gamma modes
042ad2520eaf drm/i915: Do state check for color management changes


