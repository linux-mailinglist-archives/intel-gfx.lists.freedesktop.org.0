Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2EC1788AE
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 03:53:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A71EE6E118;
	Wed,  4 Mar 2020 02:53:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DD666E118;
 Wed,  4 Mar 2020 02:53:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 895F2A47DF;
 Wed,  4 Mar 2020 02:53:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Wed, 04 Mar 2020 02:53:39 -0000
Message-ID: <158329041955.429.9543782879922456113@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/perf=3A_add_OA_interrupt_support_=28rev5=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/perf: add OA interrupt support (rev5)
URL   : https://patchwork.freedesktop.org/series/54280/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e9632eb2cc8a drm/i915/perf: rework aging tail workaround
-:189: CHECK:SPACING: No space is necessary after a cast
#189: FILE: drivers/gpu/drm/i915/i915_perf.c:527:
+			u32 *report32 = (void *) report;

-:268: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#268: FILE: drivers/gpu/drm/i915/i915_perf.c:827:
+		report32[0] = report32[1] = 0;

-:312: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#312: FILE: drivers/gpu/drm/i915/i915_perf.c:1042:
+		report32[0] = report32[1] = 0;

-:358: CHECK:LINE_SPACING: Please don't use multiple blank lines
#358: FILE: drivers/gpu/drm/i915/i915_perf.c:4385:
+
+

total: 0 errors, 0 warnings, 4 checks, 364 lines checked
b97afa567f13 drm/i915/perf: move pollin setup to non hw specific code
249c37e99eb0 drm/i915/perf: only append status when data is available
b69637a72e34 drm/i915/perf: add new open param to configure polling of OA buffer
974daa81481c drm/i915: handle interrupts from the OA unit
-:49: ERROR:CODE_INDENT: code indent should use tabs where possible
#49: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:110:
+ ^Iif (instance == OTHER_WDOAPERF_INSTANCE)$

-:49: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#49: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:110:
+ ^Iif (instance == OTHER_WDOAPERF_INSTANCE)$

-:49: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#49: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:110:
+ ^Iif (instance == OTHER_WDOAPERF_INSTANCE)$

-:50: ERROR:CODE_INDENT: code indent should use tabs where possible
#50: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:111:
+ ^I^Ireturn gen8_perfmon_handler(gt->i915, iir);$

-:50: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#50: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:111:
+ ^I^Ireturn gen8_perfmon_handler(gt->i915, iir);$

-:50: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#50: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:111:
+ ^I^Ireturn gen8_perfmon_handler(gt->i915, iir);$

-:94: ERROR:CODE_INDENT: code indent should use tabs where possible
#94: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:463:
+ ^I/* We only expose the i915/perf interface on HSW+. */$

-:94: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#94: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:463:
+ ^I/* We only expose the i915/perf interface on HSW+. */$

-:94: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#94: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:463:
+ ^I/* We only expose the i915/perf interface on HSW+. */$

-:95: ERROR:CODE_INDENT: code indent should use tabs where possible
#95: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:464:
+ ^Iif (IS_HASWELL(gt->i915))$

-:95: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#95: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:464:
+ ^Iif (IS_HASWELL(gt->i915))$

-:95: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#95: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:464:
+ ^Iif (IS_HASWELL(gt->i915))$

-:96: ERROR:CODE_INDENT: code indent should use tabs where possible
#96: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:465:
+ ^I^Igt_irqs |= GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT;$

-:96: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#96: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:465:
+ ^I^Igt_irqs |= GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT;$

-:96: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#96: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:465:
+ ^I^Igt_irqs |= GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT;$

-:109: ERROR:CODE_INDENT: code indent should use tabs where possible
#109: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.h:18:
+ ^I^I      GEN8_GT_WDBOX_OACS_IRQ | \$

-:109: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#109: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.h:18:
+ ^I^I      GEN8_GT_WDBOX_OACS_IRQ | \$

-:109: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#109: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.h:18:
+ ^I^I      GEN8_GT_WDBOX_OACS_IRQ | \$

-:284: ERROR:CODE_INDENT: code indent should use tabs where possible
#284: FILE: drivers/gpu/drm/i915/i915_perf.c:2680:
+ ^Iif (stream->oa_interrupt_monitor) {$

-:284: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#284: FILE: drivers/gpu/drm/i915/i915_perf.c:2680:
+ ^Iif (stream->oa_interrupt_monitor) {$

-:284: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#284: FILE: drivers/gpu/drm/i915/i915_perf.c:2680:
+ ^Iif (stream->oa_interrupt_monitor) {$

-:285: ERROR:CODE_INDENT: code indent should use tabs where possible
#285: FILE: drivers/gpu/drm/i915/i915_perf.c:2681:
+ ^I^Ispin_lock_irq(&stream->perf->i915->irq_lock);$

-:285: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#285: FILE: drivers/gpu/drm/i915/i915_perf.c:2681:
+ ^I^Ispin_lock_irq(&stream->perf->i915->irq_lock);$

-:285: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#285: FILE: drivers/gpu/drm/i915/i915_perf.c:2681:
+ ^I^Ispin_lock_irq(&stream->perf->i915->irq_lock);$

-:286: ERROR:CODE_INDENT: code indent should use tabs where possible
#286: FILE: drivers/gpu/drm/i915/i915_perf.c:2682:
+ ^I^Igen5_gt_disable_irq(&stream->perf->i915->gt,$

-:286: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#286: FILE: drivers/gpu/drm/i915/i915_perf.c:2682:
+ ^I^Igen5_gt_disable_irq(&stream->perf->i915->gt,$

-:286: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#286: FILE: drivers/gpu/drm/i915/i915_perf.c:2682:
+ ^I^Igen5_gt_disable_irq(&stream->perf->i915->gt,$

-:287: ERROR:CODE_INDENT: code indent should use tabs where possible
#287: FILE: drivers/gpu/drm/i915/i915_perf.c:2683:
+ ^I^I^I^I    GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT);$

-:287: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#287: FILE: drivers/gpu/drm/i915/i915_perf.c:2683:
+ ^I^I^I^I    GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT);$

-:287: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#287: FILE: drivers/gpu/drm/i915/i915_perf.c:2683:
+ 		gen5_gt_disable_irq(&stream->perf->i915->gt,
+ 				    GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT);

-:287: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#287: FILE: drivers/gpu/drm/i915/i915_perf.c:2683:
+ ^I^I^I^I    GT_PERFMON_BUFFER_HALF_FULL_INTERRUPT);$

-:288: ERROR:CODE_INDENT: code indent should use tabs where possible
#288: FILE: drivers/gpu/drm/i915/i915_perf.c:2684:
+ ^I^Ispin_unlock_irq(&stream->perf->i915->irq_lock);$

-:288: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#288: FILE: drivers/gpu/drm/i915/i915_perf.c:2684:
+ ^I^Ispin_unlock_irq(&stream->perf->i915->irq_lock);$

-:288: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#288: FILE: drivers/gpu/drm/i915/i915_perf.c:2684:
+ ^I^Ispin_unlock_irq(&stream->perf->i915->irq_lock);$

-:289: ERROR:CODE_INDENT: code indent should use tabs where possible
#289: FILE: drivers/gpu/drm/i915/i915_perf.c:2685:
+ ^I}$

-:289: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#289: FILE: drivers/gpu/drm/i915/i915_perf.c:2685:
+ ^I}$

-:289: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#289: FILE: drivers/gpu/drm/i915/i915_perf.c:2685:
+ ^I}$

-:298: ERROR:CODE_INDENT: code indent should use tabs where possible
#298: FILE: drivers/gpu/drm/i915/i915_perf.c:2699:
+ ^Iintel_uncore_write(uncore, GEN8_OA_IMR, 0xffffffff);$

-:298: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#298: FILE: drivers/gpu/drm/i915/i915_perf.c:2699:
+ ^Iintel_uncore_write(uncore, GEN8_OA_IMR, 0xffffffff);$

-:298: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#298: FILE: drivers/gpu/drm/i915/i915_perf.c:2699:
+ ^Iintel_uncore_write(uncore, GEN8_OA_IMR, 0xffffffff);$

-:307: ERROR:CODE_INDENT: code indent should use tabs where possible
#307: FILE: drivers/gpu/drm/i915/i915_perf.c:2713:
+ ^Iintel_uncore_write(uncore, GEN12_OA_IMR, 0xffffffff);$

-:307: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#307: FILE: drivers/gpu/drm/i915/i915_perf.c:2713:
+ ^Iintel_uncore_write(uncore, GEN12_OA_IMR, 0xffffffff);$

-:307: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#307: FILE: drivers/gpu/drm/i915/i915_perf.c:2713:
+ ^Iintel_uncore_write(uncore, GEN12_OA_IMR, 0xffffffff);$

total: 14 errors, 28 warnings, 1 checks, 321 lines checked
4f90346ada25 drm/i915/perf: add interrupt enabling parameter
-:7: WARNING:TYPO_SPELLING: 'conjuction' may be misspelled - perhaps 'conjunction'?
#7: 
mechanism of the HW. In conjuction with long periods for checks for

-:124: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'stream->half_full_count_last !=
 	     atomic64_read(&stream->half_full_count)'
#124: FILE: drivers/gpu/drm/i915/i915_perf.c:3126:
+	if (stream->oa_interrupt_monitor &&
+	    (stream->half_full_count_last !=
+	     atomic64_read(&stream->half_full_count))) {

-:167: WARNING:TYPO_SPELLING: 'paramter' may be misspelled - perhaps 'parameter'?
#167: FILE: drivers/gpu/drm/i915/i915_perf.c:4552:
+	 * 5: Add DRM_I915_PERF_PROP_OA_ENABLE_INTERRUPT paramter to

-:185: WARNING:TYPO_SPELLING: 'conjuction' may be misspelled - perhaps 'conjunction'?
#185: FILE: include/uapi/drm/i915_drm.h:1984:
+	 * buffer in i915. This option in conjuction with a long polling delay

total: 0 errors, 3 warnings, 1 checks, 157 lines checked
cd7ce8c94fd0 drm/i915/perf: add flushing ioctl

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
