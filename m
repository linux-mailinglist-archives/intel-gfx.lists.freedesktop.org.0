Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA8944EDFC
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 21:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 522506E0DD;
	Fri, 12 Nov 2021 20:40:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E3E116E0DD;
 Fri, 12 Nov 2021 20:40:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2C6BA00C9;
 Fri, 12 Nov 2021 20:40:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 12 Nov 2021 20:40:57 -0000
Message-ID: <163674965783.27228.15822599629388708019@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Register_define_cleanups?=
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

Series: drm/i915: Register define cleanups
URL   : https://patchwork.freedesktop.org/series/96868/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
07e09e2bbe21 drm/i915: Bump DSL linemask to 20 bits
d6e456b58dab drm/i915: Clean up PIPEMISC register defines
972a671d657e drm/i915: Clean up SKL_BOTTOM_COLOR defines
0a60b5b4e2d5 drm/i915: Clean up PIPECONF bit defines
-:347: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#347: FILE: drivers/gpu/drm/i915/i915_reg.h:6176:
+#define   PIPECONF_FRAME_START_DELAY(x)		REG_FIELD_PREP(PIPECONF_FRAME_START_DELAY_MASK, (x)) /* pre-hsw: 0-3 */

-:354: WARNING:LONG_LINE_COMMENT: line length of 109 exceeds 100 columns
#354: FILE: drivers/gpu/drm/i915/i915_reg.h:6183:
+#define   PIPECONF_GAMMA_MODE_12BIT		REG_FIELD_PREP(PIPECONF_GAMMA_MODE_MASK_ILK, 2) /* ilk-ivb */

-:355: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#355: FILE: drivers/gpu/drm/i915/i915_reg.h:6184:
+#define   PIPECONF_GAMMA_MODE_SPLIT		REG_FIELD_PREP(PIPECONF_GAMMA_MODE_MASK_ILK, 3) /* ivb */

-:356: WARNING:LONG_LINE_COMMENT: line length of 129 exceeds 100 columns
#356: FILE: drivers/gpu/drm/i915/i915_reg.h:6185:
+#define   PIPECONF_GAMMA_MODE(x)		REG_FIELD_PREP(PIPECONF_GAMMA_MODE_MASK_ILK, (x)) /* pass in GAMMA_MODE_MODE_* */

-:359: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#359: FILE: drivers/gpu/drm/i915/i915_reg.h:6188:
+#define   PIPECONF_INTERLACE_W_SYNC_SHIFT_PANEL	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK, 4) /* gen4 only */

-:360: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#360: FILE: drivers/gpu/drm/i915/i915_reg.h:6189:
+#define   PIPECONF_INTERLACE_W_SYNC_SHIFT	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK, 5) /* gen4 only */

-:362: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#362: FILE: drivers/gpu/drm/i915/i915_reg.h:6191:
+#define   PIPECONF_INTERLACE_FIELD_0_ONLY	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK, 7) /* gen3 only */

-:372: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#372: FILE: drivers/gpu/drm/i915/i915_reg.h:6201:
+#define   PIPECONF_INTERLACE_IF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK_ILK, 4) /* ilk/snb only */

-:373: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#373: FILE: drivers/gpu/drm/i915/i915_reg.h:6202:
+#define   PIPECONF_INTERLACE_PF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK_ILK, 5) /* ilk/snb only */

-:379: WARNING:LONG_LINE_COMMENT: line length of 112 exceeds 100 columns
#379: FILE: drivers/gpu/drm/i915/i915_reg.h:6208:
+#define   PIPECONF_OUTPUT_COLORSPACE_RGB	REG_FIELD_PREP(PIPECONF_OUTPUT_COLORSPACE_MASK, 0) /* ilk-ivb */

-:380: WARNING:LONG_LINE_COMMENT: line length of 112 exceeds 100 columns
#380: FILE: drivers/gpu/drm/i915/i915_reg.h:6209:
+#define   PIPECONF_OUTPUT_COLORSPACE_YUV601	REG_FIELD_PREP(PIPECONF_OUTPUT_COLORSPACE_MASK, 1) /* ilk-ivb */

-:381: WARNING:LONG_LINE_COMMENT: line length of 112 exceeds 100 columns
#381: FILE: drivers/gpu/drm/i915/i915_reg.h:6210:
+#define   PIPECONF_OUTPUT_COLORSPACE_YUV709	REG_FIELD_PREP(PIPECONF_OUTPUT_COLORSPACE_MASK, 2) /* ilk-ivb */

total: 0 errors, 12 warnings, 0 checks, 340 lines checked
0a96d6cd3a6a drm/i915: Clean up PCH_TRANSCONF/TRANS_DP_CTL bit defines
-:82: WARNING:LONG_LINE_COMMENT: line length of 104 exceeds 100 columns
#82: FILE: drivers/gpu/drm/i915/i915_reg.h:9000:
+#define  TRANS_FRAME_START_DELAY(x)	REG_FIELD_PREP(TRANS_FRAME_START_DELAY_MASK, (x)) /* ibx: 0-3 */

total: 0 errors, 1 warnings, 0 checks, 104 lines checked
9f255d46dcb8 drm/i915: Clean up PIPESRC defines
8a7681e19c01 drm/i915: Clean up CRC register defines
1b63beb57cdd drm/i915: Clean up DPINVGTT/VLV_DPFLIPSTAT bits
f89511a6ac52 drm/i915: Clean up FPGA_DBG/CLAIM_ER bits


