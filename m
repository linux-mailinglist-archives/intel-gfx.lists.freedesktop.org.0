Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF4B49F0DB
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 03:16:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D155610E811;
	Fri, 28 Jan 2022 02:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E49910E7DA;
 Fri, 28 Jan 2022 02:15:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7DE6BA77A5;
 Fri, 28 Jan 2022 02:15:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 28 Jan 2022 02:15:57 -0000
Message-ID: <164333615751.27322.3897760323029698029@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220127234334.4016964-1-matthew.d.roper@intel.com>
In-Reply-To: <20220127234334.4016964-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Second_round_of_i915=5Freg=2Eh_splitting_=28rev3=29?=
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

Series: Second round of i915_reg.h splitting (rev3)
URL   : https://patchwork.freedesktop.org/series/99079/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4b63057fdde4 drm/i915/perf: Move OA regs to their own header
-:40: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#40: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1023 lines checked
5f5be89db2a9 drm/i915/perf: Express OA register ranges with i915_range
cebea3585011 drm/i915: Parameterize R_PWR_CLK_STATE register definition
ecb952d200fd drm/i915: Parameterize MI_PREDICATE registers
e9fb86df5f3e drm/i915: Move GT registers to their own header file
-:185: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#185: 
new file mode 100644

-:298: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#298: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:109:
+#define   GEN8_SELECTIVE_READ_SUBSLICE_SELECT_MASK	(0x3 << GEN8_SELECTIVE_READ_SUBSLICE_SELECT_SHIFT)

-:300: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#300: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:111:
+#define   GEN8_SELECTIVE_READ_SLICE_SELECT_MASK		(0x3 << GEN8_SELECTIVE_READ_SLICE_SELECT_SHIFT)

-:415: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#415: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:226:
+#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(1 << GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)

-:419: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#419: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:230:
+#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(0x7 << GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)

-:425: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#425: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:236:
+#define  GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK	(0x3 << GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT)

-:746: WARNING:LONG_LINE_COMMENT: line length of 104 exceeds 100 columns
#746: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:557:
+#define PXVFREQ(fstart)		_MMIO(0x11110 + (fstart) * 4)  /* P[0-15]VIDFREQ (0x1114c) (Ironlake) */

-:785: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#785: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:596:
+#define   MEMCTL_CMD_STS	(1 << 12) /* write 1 triggers command, clears
+					     when command complete */

-:785: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#785: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:596:
+					     when command complete */

-:898: WARNING:LONG_LINE_COMMENT: line length of 134 exceeds 100 columns
#898: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:709:
+#define   IMPROMOEN		(1 << 10) /* promo is immediate or delayed until next idle interval (only for timeout method above) */

-:985: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'cxt_reg' - possible side-effects?
#985: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:796:
+#define GEN6_CXT_TOTAL_SIZE(cxt_reg)	(GEN6_CXT_RING_SIZE(cxt_reg) + \
+					GEN6_CXT_EXTENDED_SIZE(cxt_reg) + \
+					GEN6_CXT_PIPELINE_SIZE(cxt_reg))

-:995: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ctx_reg' - possible side-effects?
#995: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:806:
+#define GEN7_CXT_TOTAL_SIZE(ctx_reg)	(GEN7_CXT_EXTENDED_SIZE(ctx_reg) + \
+					 GEN7_CXT_VFSTATE_SIZE(ctx_reg))

-:1565: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'slice' - possible side-effects?
#1565: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1376:
+#define GEN10_SLICE_PGCTL_ACK(slice)	_MMIO(0x804c + ((slice) / 3) * 0x34 + \
+					      ((slice) % 3) * 0x4)

-:1572: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'slice' - possible side-effects?
#1572: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1383:
+#define GEN10_SS01_EU_PGCTL_ACK(slice)	_MMIO(0x805c + ((slice) / 3) * 0x30 + \
+					      ((slice) % 3) * 0x8)

-:1575: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'slice' - possible side-effects?
#1575: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1386:
+#define GEN10_SS23_EU_PGCTL_ACK(slice)	_MMIO(0x8060 + ((slice) / 3) * 0x30 + \
+					      ((slice) % 3) * 0x8)

total: 0 errors, 10 warnings, 5 checks, 3537 lines checked
e79aa0dd9ff2 drm/i915: Only include i915_reg.h from .c files


