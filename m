Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0D76954B5
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 00:24:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2506B10E783;
	Mon, 13 Feb 2023 23:24:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8F34610E77E;
 Mon, 13 Feb 2023 23:24:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87A02AADD5;
 Mon, 13 Feb 2023 23:24:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 13 Feb 2023 23:24:27 -0000
Message-ID: <167633066755.20212.12729127618611367100@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Transcoder_timing_stuff?=
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

Series: drm/i915: Transcoder timing stuff
URL   : https://patchwork.freedesktop.org/series/113974/
State : warning

== Summary ==

Error: dim checkpatch failed
29054f91dc49 drm/i915: Rename intel_ddi_{enable, disable}_pipe_clock()
90b8f6819152 drm/i915: Flatten intel_ddi_{enable, disable}_transcoder_clock()
7fb6bce53da6 drm/i915: Give CPU transcoder timing registers TRANS_ prefix
cbfdc446a13d drm/i915: s/PIPECONF/TRANSCONF/
-:120: WARNING:LINE_SPACING: Missing a blank line after declarations
#120: FILE: drivers/gpu/drm/i915/display/intel_display.c:422:
+		u32 val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
+		cur_state = !!(val & TRANSCONF_ENABLE);

-:183: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#183: FILE: drivers/gpu/drm/i915/display/intel_display.c:2900:
+		return intel_de_read(dev_priv, TRANSCONF(cpu_transcoder)) & TRANSCONF_INTERLACE_MASK_HSW;

-:186: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#186: FILE: drivers/gpu/drm/i915/display/intel_display.c:2902:
+		return intel_de_read(dev_priv, TRANSCONF(cpu_transcoder)) & TRANSCONF_INTERLACE_MASK;

-:826: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#826: FILE: drivers/gpu/drm/i915/i915_reg.h:3453:
+#define   TRANSCONF_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANSCONF_FRAME_START_DELAY_MASK, (x)) /* pre-hsw: 0-3 */

-:833: WARNING:LONG_LINE_COMMENT: line length of 110 exceeds 100 columns
#833: FILE: drivers/gpu/drm/i915/i915_reg.h:3460:
+#define   TRANSCONF_GAMMA_MODE_12BIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, 2) /* ilk-ivb */

-:834: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#834: FILE: drivers/gpu/drm/i915/i915_reg.h:3461:
+#define   TRANSCONF_GAMMA_MODE_SPLIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, 3) /* ivb */

-:835: WARNING:LONG_LINE_COMMENT: line length of 130 exceeds 100 columns
#835: FILE: drivers/gpu/drm/i915/i915_reg.h:3462:
+#define   TRANSCONF_GAMMA_MODE(x)		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, (x)) /* pass in GAMMA_MODE_MODE_* */

-:838: WARNING:LONG_LINE_COMMENT: line length of 115 exceeds 100 columns
#838: FILE: drivers/gpu/drm/i915/i915_reg.h:3465:
+#define   TRANSCONF_INTERLACE_W_SYNC_SHIFT_PANEL	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 4) /* gen4 only */

-:839: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#839: FILE: drivers/gpu/drm/i915/i915_reg.h:3466:
+#define   TRANSCONF_INTERLACE_W_SYNC_SHIFT	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 5) /* gen4 only */

-:841: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#841: FILE: drivers/gpu/drm/i915/i915_reg.h:3468:
+#define   TRANSCONF_INTERLACE_FIELD_0_ONLY	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 7) /* gen3 only */

-:880: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#880: FILE: drivers/gpu/drm/i915/i915_reg.h:3478:
+#define   TRANSCONF_INTERLACE_IF_ID_DBL_ILK	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 4) /* ilk/snb only */

-:881: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#881: FILE: drivers/gpu/drm/i915/i915_reg.h:3479:
+#define   TRANSCONF_INTERLACE_PF_ID_DBL_ILK	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 5) /* ilk/snb only */

-:889: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#889: FILE: drivers/gpu/drm/i915/i915_reg.h:3487:
+#define   TRANSCONF_OUTPUT_COLORSPACE_RGB	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 0) /* ilk-ivb */

-:890: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#890: FILE: drivers/gpu/drm/i915/i915_reg.h:3488:
+#define   TRANSCONF_OUTPUT_COLORSPACE_YUV601	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 1) /* ilk-ivb */

-:891: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#891: FILE: drivers/gpu/drm/i915/i915_reg.h:3489:
+#define   TRANSCONF_OUTPUT_COLORSPACE_YUV709	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 2) /* ilk-ivb */

total: 0 errors, 15 warnings, 0 checks, 819 lines checked
a14b1fc40c0b drm/i915: Dump blanking start/end
8797c05fff74 drm/i915: Define the "unmodified vblank" interrupt bit
c4734266bd12 drm/i915/psr: Stop clobbering TRANS_SET_CONTEXT_LATENCY
99cb9b3ea1a8 drm/i915: Add local adjusted_mode variable
f165b7be5012 drm/i915: Define transcoder timing register bitmasks
6c8a94324c47 drm/i915: Configure TRANS_SET_CONTEXT_LATENCY correctly on ADL+
92ecde8830fd drm/i915: Sprinkle some FIXMEs about TGL+ DSI transcoder timing mess
dc709edac43d drm/i915: Remove pointless register read


