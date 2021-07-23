Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AF63D3154
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 03:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8BEC6F5CA;
	Fri, 23 Jul 2021 01:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C1A1A6EAC7;
 Fri, 23 Jul 2021 01:34:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1F7AA7DFB;
 Fri, 23 Jul 2021 01:34:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Fri, 23 Jul 2021 01:34:55 -0000
Message-ID: <162700409570.3045.5957947750212230320@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210722235426.31831-1-matthew.brost@intel.com>
In-Reply-To: <20210722235426.31831-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Remaining_patches_for_basic_GuC_submission?=
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

Series: Remaining patches for basic GuC submission
URL   : https://patchwork.freedesktop.org/series/92912/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c4c2a95bc42c drm/i915/guc: GuC virtual engines
-:595: CHECK:LINE_SPACING: Please don't use multiple blank lines
#595: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1895:
+
+

total: 0 errors, 0 warnings, 1 checks, 537 lines checked
ed2ce8f94165 drm/i915/guc: Make hangcheck work with GuC virtual engines
abe5c9520ece drm/i915: Hold reference to intel_context over life of i915_request
095ca97f853a drm/i915/guc: Disable bonding extension with GuC submission
9b220ffb651e drm/i915/guc: Direct all breadcrumbs for a class to single breadcrumbs
e7bbc081df3c drm/i915: Add i915_sched_engine destroy vfunc
96e05d821dc0 drm/i915: Move active request tracking to a vfunc
2fe085686ac0 drm/i915/guc: Reset implementation for new GuC interface
-:198: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "guc->lrc_desc_pool_vaddr"
#198: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:248:
+	return guc->lrc_desc_pool_vaddr != NULL;

-:851: CHECK:BRACES: braces {} should be used on all arms of this statement
#851: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1263:
+		if (unlikely(ret == -EBUSY)) {
[...]
+		} else if (unlikely(ret == -ENODEV))
[...]

-:1075: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1075: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.c:568:
 
+

total: 0 errors, 0 warnings, 3 checks, 1029 lines checked
7cfdea9a7cca drm/i915: Reset GPU immediately if submission is disabled
-:94: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#94: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:223:
+
+}

total: 0 errors, 0 warnings, 1 checks, 181 lines checked
8bc28306ef3c drm/i915/guc: Add disable interrupts to guc sanitize
2d8442c0bcb5 drm/i915/guc: Suspend/resume implementation for new interface
93fcd3d3f15f drm/i915/guc: Handle context reset notification
a6a5b8bd25ca drm/i915/guc: Handle engine reset failure notification
39fc22487a99 drm/i915/guc: Enable the timer expired interrupt for GuC
6642efd29a52 drm/i915/guc: Provide mmio list to be saved/restored on engine reset
-:360: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#360: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:212:
+	temp_set.registers = kmalloc_array(temp_set.size,
+					  sizeof(*temp_set.registers),

-:389: CHECK:SPACING: No space is necessary after a cast
#389: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:241:
+	temp_set.registers = (struct guc_mmio_reg *) (((u8 *) blob) + offset);

-:464: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email name mismatch: 'From: "Signed-off-by: John Harrison" <John.C.Harrison@Intel.com>' != 'Signed-off-by: John Harrison <John.C.Harrison@Intel.com>'

total: 0 errors, 1 warnings, 2 checks, 400 lines checked
5e642e904723 drm/i915/guc: Don't complain about reset races
ee7a77ae81e6 drm/i915/guc: Enable GuC engine reset
3a6d2423e625 drm/i915/guc: Capture error state on context reset
b4ed2cab4b35 drm/i915/guc: Fix for error capture after full GPU reset with GuC
-:120: CHECK:BRACES: braces {} should be used on all arms of this statement
#120: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1716:
+	if (guc) {
[...]
+	} else
[...]

-:124: CHECK:BRACES: Unbalanced braces around else statement
#124: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1720:
+	} else

total: 0 errors, 0 warnings, 2 checks, 347 lines checked
43ba142e24f9 drm/i915/guc: Hook GuC scheduling policies up
078bbab61932 drm/i915/guc: Connect reset modparam updates to GuC policy flags
-:53: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#53: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:17:
+#define GET_I915(i915, name, ptr)	\
+	do {	\
+		struct i915_params *params;	\
+		params = container_of(((void *) (ptr)), typeof(*params), name);	\
+		(i915) = container_of(params, typeof(*(i915)), params);	\
+	} while (0)

-:56: CHECK:SPACING: No space is necessary after a cast
#56: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:20:
+		params = container_of(((void *) (ptr)), typeof(*params), name);	\

total: 0 errors, 0 warnings, 2 checks, 69 lines checked
bce9b2362ee8 drm/i915/guc: Include scheduling policies in the debugfs state dump
e1639b04b6cc drm/i915/guc: Add golden context to GuC ADS
-:262: CHECK:SPACING: No space is necessary after a cast
#262: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:455:
+	ptr = ((u8 *) blob) + offset;

total: 0 errors, 0 warnings, 1 checks, 345 lines checked
5901f74f1b1c drm/i915/guc: Implement banned contexts for GuC submission
-:382: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#382: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1412:
+	if (submission_disabled(guc) || (!context_enabled(ce) &&
+	    !context_pending_disable(ce))) {

total: 0 errors, 0 warnings, 1 checks, 465 lines checked
e2274e0cf772 drm/i915/guc: Support request cancellation
-:9: WARNING:TYPO_SPELLING: 'implemenation' may be misspelled - perhaps 'implementation'?
#9: 
This implemenation makes use of fence while there is likely simplier
     ^^^^^^^^^^^^^

-:10: WARNING:TYPO_SPELLING: 'choosen' may be misspelled - perhaps 'chosen'?
#10: 
options. A fence was choosen because of another feature coming soon
                     ^^^^^^^

total: 0 errors, 2 warnings, 0 checks, 407 lines checked
77466a3adca9 drm/i915/selftest: Better error reporting from hangcheck selftest
d95ac126a5a4 drm/i915/selftest: Fix workarounds selftest for GuC submission
-:139: CHECK:BRACES: Unbalanced braces around else statement
#139: FILE: drivers/gpu/drm/i915/gt/selftest_workarounds.c:824:
+			} else

-:161: CHECK:LINE_SPACING: Please don't use multiple blank lines
#161: FILE: drivers/gpu/drm/i915/gt/selftest_workarounds.c:1284:
+
+

-:257: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#257: 
new file mode 100644

-:369: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email name mismatch: 'From: "Signed-off-by: Rahul Kumar Singh" <rahul.kumar.singh@intel.com>' != 'Signed-off-by: Rahul Kumar Singh <rahul.kumar.singh@intel.com>'

total: 0 errors, 2 warnings, 2 checks, 324 lines checked
d60575e53546 drm/i915/selftest: Fix MOCS selftest for GuC submission
5f655534ddb9 drm/i915/selftest: Increase some timeouts in live_requests
e9554ae57a96 drm/i915/selftest: Fix hangcheck self test for GuC submission
-:271: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#271: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:1052:
+			err = intel_selftest_modify_policy(engine, &saved,
+							  SELFTEST_SCHEDULER_MODIFY_FAST_RESET);

-:436: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#436: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:1664:
+			err = intel_selftest_modify_policy(engine, &saved,
+							  SELFTEST_SCHEDULER_MODIFY_NO_HANGCHECK);

-:550: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#550: FILE: drivers/gpu/drm/i915/gt/selftest_workarounds.c:814:
+								   SELFTEST_SCHEDULER_MODIFY_FAST_RESET);

total: 0 errors, 1 warnings, 2 checks, 554 lines checked
600cd57aa349 drm/i915/selftest: Bump selftest timeouts for hangcheck
37ae6f386bc5 drm/i915/guc: Implement GuC priority management
-:366: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rq->guc_prio == GUC_PRIO_FINI'
#366: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2242:
+	if (prio < I915_PRIORITY_NORMAL ||
+	    (rq->guc_prio == GUC_PRIO_FINI) ||
+	    (rq->guc_prio != GUC_PRIO_INIT &&
+	     !new_guc_prio_higher(rq->guc_prio, new_guc_prio)))

total: 0 errors, 0 warnings, 1 checks, 491 lines checked
222b8f5f4ed1 drm/i915/guc: Unblock GuC submission on Gen11+


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
