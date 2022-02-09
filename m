Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A914AE905
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 06:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D5A10E17E;
	Wed,  9 Feb 2022 05:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0386D10E17E;
 Wed,  9 Feb 2022 05:24:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F21D5A00FD;
 Wed,  9 Feb 2022 05:24:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 09 Feb 2022 05:24:40 -0000
Message-ID: <164438428095.23775.6804272300735843020@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220209051140.1599643-1-matthew.d.roper@intel.com>
In-Reply-To: <20220209051140.1599643-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_More_GT_register_cleanup?=
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

Series: More GT register cleanup
URL   : https://patchwork.freedesktop.org/series/99872/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9a3768557554 drm/i915/gt: Drop duplicate register definition for VDBOX_CGCTL3F18
827feabcfa0f drm/i915/gt: Move SFC lock bits to intel_engine_regs.h
c2ad90281821 drm/i915/gt: Use parameterized RING_MI_MODE
da6b61418421 drm/i915/gt: Cleanup spacing of intel_gt_regs.h
-:401: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#401: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:207:
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(1 << GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)

-:405: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#405: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:211:
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(0x7 << GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)

-:411: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#411: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:217:
+#define   GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK	(0x3 << GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT)

-:1217: WARNING:LONG_LINE_COMMENT: line length of 120 exceeds 100 columns
#1217: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:538:
+#define PXVFREQ(fstart)				_MMIO(0x11110 + (fstart) * 4)  /* P[0-15]VIDFREQ (0x1114c) (Ironlake) */

-:1256: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#1256: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:577:
+#define   MEMCTL_CMD_STS			(1 << 12) /* write 1 triggers command, clears
+							     when command complete */

-:1256: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#1256: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:577:
+							     when command complete */

-:1369: WARNING:LONG_LINE_COMMENT: line length of 150 exceeds 100 columns
#1369: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:690:
+#define   IMPROMOEN				(1 << 10) /* promo is immediate or delayed until next idle interval (only for timeout method above) */

-:1377: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#1377: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:698:
+#define   REDSAVES				(1 << 3) /* no context save if was idle during rs0 */

-:1464: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'cxt_reg' - possible side-effects?
#1464: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:777:
+#define   GEN6_CXT_TOTAL_SIZE(cxt_reg)		(GEN6_CXT_RING_SIZE(cxt_reg) + \
+						GEN6_CXT_EXTENDED_SIZE(cxt_reg) + \
+						GEN6_CXT_PIPELINE_SIZE(cxt_reg))

-:1474: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ctx_reg' - possible side-effects?
#1474: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:787:
+#define   GEN7_CXT_TOTAL_SIZE(ctx_reg)		(GEN7_CXT_EXTENDED_SIZE(ctx_reg) + \
+						 GEN7_CXT_VFSTATE_SIZE(ctx_reg))

-:2218: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'slice' - possible side-effects?
#2218: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1357:
+#define GEN10_SLICE_PGCTL_ACK(slice)		_MMIO(0x804c + ((slice) / 3) * 0x34 + \
+						      ((slice) % 3) * 0x4)

-:2225: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'slice' - possible side-effects?
#2225: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1364:
+#define GEN10_SS01_EU_PGCTL_ACK(slice)		_MMIO(0x805c + ((slice) / 3) * 0x30 + \
+						      ((slice) % 3) * 0x8)

-:2228: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'slice' - possible side-effects?
#2228: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1367:
+#define GEN10_SS23_EU_PGCTL_ACK(slice)		_MMIO(0x8060 + ((slice) / 3) * 0x30 + \
+						      ((slice) % 3) * 0x8)

total: 0 errors, 8 warnings, 5 checks, 2393 lines checked
e69f259c44a8 drm/i915/gt: Use consistent offset notation in intel_gt_regs.h
1048c366fb86 drm/i915/gt: Order GT registers by MMIO offset
-:34: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#34: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:14:
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(1 << GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)

-:38: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:18:
+#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(0x7 << GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)

-:44: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:24:
+#define   GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK	(0x3 << GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT)

-:284: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'cxt_reg' - possible side-effects?
#284: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:194:
+#define   GEN6_CXT_TOTAL_SIZE(cxt_reg)		(GEN6_CXT_RING_SIZE(cxt_reg) + \
+						GEN6_CXT_EXTENDED_SIZE(cxt_reg) + \
+						GEN6_CXT_PIPELINE_SIZE(cxt_reg))

-:294: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ctx_reg' - possible side-effects?
#294: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:204:
+#define   GEN7_CXT_TOTAL_SIZE(ctx_reg)		(GEN7_CXT_EXTENDED_SIZE(ctx_reg) + \
+						 GEN7_CXT_VFSTATE_SIZE(ctx_reg))

-:735: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'slice' - possible side-effects?
#735: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:444:
+#define GEN10_SLICE_PGCTL_ACK(slice)		_MMIO(0x804c + ((slice) / 3) * 0x34 + \
+						      ((slice) % 3) * 0x4)

-:742: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'slice' - possible side-effects?
#742: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:451:
+#define GEN10_SS01_EU_PGCTL_ACK(slice)		_MMIO(0x805c + ((slice) / 3) * 0x30 + \
+						      ((slice) % 3) * 0x8)

-:745: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'slice' - possible side-effects?
#745: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:454:
+#define GEN10_SS23_EU_PGCTL_ACK(slice)		_MMIO(0x8060 + ((slice) / 3) * 0x30 + \
+						      ((slice) % 3) * 0x8)

-:1900: WARNING:LONG_LINE_COMMENT: line length of 120 exceeds 100 columns
#1900: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1105:
+#define PXVFREQ(fstart)				_MMIO(0x11110 + (fstart) * 4)  /* P[0-15]VIDFREQ (0x1114c) (Ironlake) */

-:1938: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#1938: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1143:
+#define   MEMCTL_CMD_STS			(1 << 12) /* write 1 triggers command, clears
+when command complete */

-:1938: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#1938: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1143:
+when command complete */

-:2051: WARNING:LONG_LINE_COMMENT: line length of 150 exceeds 100 columns
#2051: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1256:
+#define   IMPROMOEN				(1 << 10) /* promo is immediate or delayed until next idle interval (only for timeout method above) */

-:2059: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#2059: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1264:
+#define   REDSAVES				(1 << 3) /* no context save if was idle during rs0 */

total: 0 errors, 8 warnings, 5 checks, 2562 lines checked


