Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCFF49A786
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 03:58:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7D3210EB8C;
	Tue, 25 Jan 2022 02:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3334010EB8C;
 Tue, 25 Jan 2022 02:58:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 256CDA73C9;
 Tue, 25 Jan 2022 02:58:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 25 Jan 2022 02:58:28 -0000
Message-ID: <164307950811.27367.9965655186966407631@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220125020826.2693097-1-matthew.d.roper@intel.com>
In-Reply-To: <20220125020826.2693097-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Second_round_of_i915=5Freg=2Eh_splitting_=28rev2=29?=
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

Series: Second round of i915_reg.h splitting (rev2)
URL   : https://patchwork.freedesktop.org/series/99079/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
48db4167e8d0 drm/i915/perf: Move OA regs to their own header
-:39: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#39: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1023 lines checked
0a70f3e5b4bc drm/i915/perf: Express OA register ranges with i915_range
-:32: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
#32: FILE: drivers/gpu/drm/i915/i915_perf.c:3867:
+static bool reg_in_range_table(u32 addr, const struct i915_range *table) {

-:89: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#89: FILE: drivers/gpu/drm/i915/i915_perf.c:3914:
+       { .start = 0x182300, .end = 0x1823a4 },$

-:90: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#90: FILE: drivers/gpu/drm/i915/i915_perf.c:3915:
+       {}$

total: 1 errors, 2 warnings, 0 checks, 524 lines checked
35f45d644995 drm/i915: Parameterize R_PWR_CLK_STATE register definition
75196de08f35 drm/i915: Parameterize MI_PREDICATE registers
e304eedf6882 drm/i915: Move GT registers to their own header file
-:181: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#181: 
new file mode 100644

-:294: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#294: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:109:
+#define   GEN8_SELECTIVE_READ_SUBSLICE_SELECT_MASK	(0x3 << GEN8_SELECTIVE_READ_SUBSLICE_SELECT_SHIFT)

-:296: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#296: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:111:
+#define   GEN8_SELECTIVE_READ_SLICE_SELECT_MASK		(0x3 << GEN8_SELECTIVE_READ_SLICE_SELECT_SHIFT)

-:411: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#411: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:226:
+#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(1 << GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)

-:415: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#415: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:230:
+#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(0x7 << GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)

-:421: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#421: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:236:
+#define  GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK	(0x3 << GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT)

-:741: WARNING:LONG_LINE_COMMENT: line length of 104 exceeds 100 columns
#741: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:556:
+#define PXVFREQ(fstart)		_MMIO(0x11110 + (fstart) * 4)  /* P[0-15]VIDFREQ (0x1114c) (Ironlake) */

-:780: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#780: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:595:
+#define   MEMCTL_CMD_STS	(1 << 12) /* write 1 triggers command, clears
+when command complete */

-:780: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#780: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:595:
+when command complete */

-:893: WARNING:LONG_LINE_COMMENT: line length of 134 exceeds 100 columns
#893: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:708:
+#define   IMPROMOEN		(1 << 10) /* promo is immediate or delayed until next idle interval (only for timeout method above) */

-:980: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'cxt_reg' - possible side-effects?
#980: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:795:
+#define GEN6_CXT_TOTAL_SIZE(cxt_reg)	(GEN6_CXT_RING_SIZE(cxt_reg) + \
+					GEN6_CXT_EXTENDED_SIZE(cxt_reg) + \
+					GEN6_CXT_PIPELINE_SIZE(cxt_reg))

-:990: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ctx_reg' - possible side-effects?
#990: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:805:
+#define GEN7_CXT_TOTAL_SIZE(ctx_reg)	(GEN7_CXT_EXTENDED_SIZE(ctx_reg) + \
+					 GEN7_CXT_VFSTATE_SIZE(ctx_reg))

-:1560: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'slice' - possible side-effects?
#1560: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1375:
+#define GEN10_SLICE_PGCTL_ACK(slice)	_MMIO(0x804c + ((slice) / 3) * 0x34 + \
+((slice) % 3) * 0x4)

-:1567: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'slice' - possible side-effects?
#1567: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1382:
+#define GEN10_SS01_EU_PGCTL_ACK(slice)	_MMIO(0x805c + ((slice) / 3) * 0x30 + \
+((slice) % 3) * 0x8)

-:1570: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'slice' - possible side-effects?
#1570: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1385:
+#define GEN10_SS23_EU_PGCTL_ACK(slice)	_MMIO(0x8060 + ((slice) / 3) * 0x30 + \
+((slice) % 3) * 0x8)

total: 0 errors, 10 warnings, 5 checks, 3535 lines checked
033e2e31ec1c drm/i915: Only include i915_reg.h from .c files


