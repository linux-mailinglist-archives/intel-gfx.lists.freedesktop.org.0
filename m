Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2ACE7932F5
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 02:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF14F10E100;
	Wed,  6 Sep 2023 00:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6307410E100;
 Wed,  6 Sep 2023 00:42:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61829AADF3;
 Wed,  6 Sep 2023 00:42:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 06 Sep 2023 00:42:13 -0000
Message-ID: <169396093339.17389.17755282495190514@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1693933849.git.jani.nikula@intel.com>
In-Reply-To: <cover.1693933849.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dsc=3A_cleanups?=
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

Series: drm/i915/dsc: cleanups
URL   : https://patchwork.freedesktop.org/series/123291/
State : warning

== Summary ==

Error: dim checkpatch failed
485ced3f5bf8 drm/i915/dsc: improve clarify of the pps reg read/write helpers
21be8697dfba drm/i915/dsc: have intel_dsc_pps_read_and_verify() return the value
97b57a727048 drm/i915/dsc: have intel_dsc_pps_read() return the value
76972ba1a5e1 drm/i915/dsc: rename pps write to intel_dsc_pps_write()
8fbce99af540 drm/i915/dsc: drop redundant = 0 assignments
2f5aa6719445 drm/i915/dsc: clean up pps comments
f0a412705ae1 drm/i915/dsc: add the PPS number to the register content macros
-:236: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#236: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:908:
+	vdsc_cfg->first_line_bpg_offset = REG_FIELD_GET(DSC_PPS6_FIRST_LINE_BPG_OFFSET_MASK, pps_temp);

-:267: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#267: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:932:
+	vdsc_cfg->rc_quant_incr_limit0 = REG_FIELD_GET(DSC_PPS10_RC_QUANT_INC_LIMIT0_MASK, pps_temp);

-:268: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#268: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:933:
+	vdsc_cfg->rc_quant_incr_limit1 = REG_FIELD_GET(DSC_PPS10_RC_QUANT_INC_LIMIT1_MASK, pps_temp);

-:281: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#281: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:944:
+		vdsc_cfg->second_line_bpg_offset = REG_FIELD_GET(DSC_PPS17_SL_BPG_OFFSET_MASK, pps_temp);

-:289: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#289: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:950:
+		vdsc_cfg->second_line_offset_adj = REG_FIELD_GET(DSC_PPS18_SL_OFFSET_ADJ_MASK, pps_temp);

-:349: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#349: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:102:
+#define   DSC_PPS3_SLICE_WIDTH(slice_width)	REG_FIELD_PREP(DSC_PPS3_SLICE_WIDTH_MASK, slice_width)

-:350: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#350: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:103:
+#define   DSC_PPS3_SLICE_HEIGHT(slice_height)	REG_FIELD_PREP(DSC_PPS3_SLICE_HEIGHT_MASK, slice_height)

-:362: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#362: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:110:
+#define   DSC_PPS4_INITIAL_XMIT_DELAY(xmit_delay)	REG_FIELD_PREP(DSC_PPS4_INITIAL_XMIT_DELAY_MASK, \

-:372: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#372: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:116:
+#define   DSC_PPS5_SCALE_DEC_INT(scale_dec)	REG_FIELD_PREP(DSC_PPS5_SCALE_DEC_INT_MASK, scale_dec)

-:373: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#373: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:117:
+#define   DSC_PPS5_SCALE_INC_INT(scale_inc)	REG_FIELD_PREP(DSC_PPS5_SCALE_INC_INT_MASK, scale_inc)

-:389: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#389: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:124:
+#define   DSC_PPS6_FLATNESS_MAX_QP(max_qp)	REG_FIELD_PREP(DSC_PPS6_FLATNESS_MAX_QP_MASK, max_qp)

-:390: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#390: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:125:
+#define   DSC_PPS6_FLATNESS_MIN_QP(min_qp)	REG_FIELD_PREP(DSC_PPS6_FLATNESS_MIN_QP_MASK, min_qp)

-:391: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#391: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:126:
+#define   DSC_PPS6_FIRST_LINE_BPG_OFFSET(offset)	REG_FIELD_PREP(DSC_PPS6_FIRST_LINE_BPG_OFFSET_MASK, \

-:403: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#403: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:134:
+#define   DSC_PPS7_NFL_BPG_OFFSET(bpg_offset)	REG_FIELD_PREP(DSC_PPS7_NFL_BPG_OFFSET_MASK, bpg_offset)

-:414: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#414: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:140:
+#define   DSC_PPS8_INITIAL_OFFSET(initial_offset)	REG_FIELD_PREP(DSC_PPS8_INITIAL_OFFSET_MASK, \

-:441: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#441: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:158:
+#define   DSC_PPS10_RC_TARGET_OFF_LOW(rc_tgt_off_low)	REG_FIELD_PREP(DSC_PPS10_RC_TGT_OFF_LOW_MASK, \

-:444: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#444: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:160:
+#define   DSC_PPS10_RC_TARGET_OFF_HIGH(rc_tgt_off_high)	REG_FIELD_PREP(DSC_PPS10_RC_TGT_OFF_HIGH_MASK, \

-:448: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#448: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:162:
+#define   DSC_PPS10_RC_QUANT_INC_LIMIT1(lim)	REG_FIELD_PREP(DSC_PPS10_RC_QUANT_INC_LIMIT1_MASK, lim)

-:449: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#449: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:163:
+#define   DSC_PPS10_RC_QUANT_INC_LIMIT0(lim)	REG_FIELD_PREP(DSC_PPS10_RC_QUANT_INC_LIMIT0_MASK, lim)

-:464: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#464: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:169:
+#define   DSC_PPS16_SLICE_ROW_PER_FRAME(slice_row_per_frame)	REG_FIELD_PREP(DSC_PPS16_SLICE_ROW_PR_FRME_MASK, \

-:466: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#466: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:171:
+#define   DSC_PPS16_SLICE_PER_LINE(slice_per_line)		REG_FIELD_PREP(DSC_PPS16_SLICE_PER_LINE_MASK, \

-:468: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#468: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:173:
+#define   DSC_PPS16_SLICE_CHUNK_SIZE(slice_chunk_size)		REG_FIELD_PREP(DSC_PPS16_SLICE_CHUNK_SIZE_MASK, \

-:484: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#484: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:183:
+#define   DSC_PPS18_NSL_BPG_OFFSET(offset)	REG_FIELD_PREP(DSC_PPS18_NSL_BPG_OFFSET_MASK, offset)

total: 0 errors, 23 warnings, 0 checks, 462 lines checked
7a424cc5c4fa drm/i915/dsc: use REG_BIT, REG_GENMASK, and friends for PPS0 and PPS1


