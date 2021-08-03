Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5633DF81B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 00:52:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0FF96E935;
	Tue,  3 Aug 2021 22:52:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7F1316E935;
 Tue,  3 Aug 2021 22:51:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77557A8830;
 Tue,  3 Aug 2021 22:51:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Aug 2021 22:51:59 -0000
Message-ID: <162803111948.9818.723673477935988517@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210803222943.27686-1-matthew.brost@intel.com>
In-Reply-To: <20210803222943.27686-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Parallel_submission_aka_multi-bb_execbuf_=28rev2=29?=
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

Series: Parallel submission aka multi-bb execbuf (rev2)
URL   : https://patchwork.freedesktop.org/series/92789/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5e27ca906d33 drm/i915/guc: Allow flexible number of context ids
27bc3be5a17a drm/i915/guc: Connect the number of guc_ids to debugfs
314754bac86b drm/i915/guc: Don't return -EAGAIN to user when guc_ids exhausted
9a569e392672 drm/i915/guc: Don't allow requests not ready to consume all guc_ids
112dd7286938 drm/i915/guc: Introduce guc_submit_engine object
-:1235: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1235: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1243 lines checked
889784d21320 drm/i915/guc: Check return of __xa_store when registering a context
f482b6e988b8 drm/i915/guc: Non-static lrc descriptor registration buffer
ac6f010842ee drm/i915/guc: Take GT PM ref when deregistering context
-:35: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#35: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
+#define with_intel_gt_pm(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

-:35: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
#35: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
+#define with_intel_gt_pm(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

-:38: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#38: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:47:
+#define with_intel_gt_pm_async(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put_async(gt), tmp = 0)

-:38: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
#38: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:47:
+#define with_intel_gt_pm_async(gt, tmp) \
+	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
+	     intel_gt_pm_put_async(gt), tmp = 0)

-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:50:
+#define with_intel_gt_pm_if_awake(gt, tmp) \
+	for (tmp = intel_gt_pm_get_if_awake(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:50:
+#define with_intel_gt_pm_if_awake(gt, tmp) \
+	for (tmp = intel_gt_pm_get_if_awake(gt); tmp; \
+	     intel_gt_pm_put(gt), tmp = 0)

-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#44: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:53:
+#define with_intel_gt_pm_if_awake_async(gt, tmp) \
+	for (tmp = intel_gt_pm_get_if_awake(gt); tmp; \
+	     intel_gt_pm_put_async(gt), tmp = 0)

-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
#44: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:53:
+#define with_intel_gt_pm_if_awake_async(gt, tmp) \
+	for (tmp = intel_gt_pm_get_if_awake(gt); tmp; \
+	     intel_gt_pm_put_async(gt), tmp = 0)

total: 0 errors, 0 warnings, 8 checks, 217 lines checked
8c650cfb86b5 drm/i915: Add GT PM unpark worker
-:59: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#59: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 184 lines checked
68d99ae2054b drm/i915/guc: Take engine PM when a context is pinned with GuC submission
da629af1ed2d drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
d89645be64e8 drm/i915/guc: Selftest for GuC flow control
-:220: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#220: 
new file mode 100644

-:362: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#362: FILE: drivers/gpu/drm/i915/gt/uc/selftest_guc_flow_control.c:138:
+	if (!contexts) {
+		pr_err("Context array allocation failed\n");

total: 0 errors, 2 warnings, 0 checks, 774 lines checked
a00a22e7333d drm/i915: Add logical engine mapping
4fc6c6ac891e drm/i915: Expose logical engine instance to user
fa22d6168e5d drm/i915/guc: Introduce context parent-child relationship
ffe691bcda89 drm/i915/guc: Implement GuC parent-child context pin / unpin functions
de52a524ffff drm/i915/guc: Add multi-lrc context registration
9b9cf89ec1fa drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts
affe37a98124 drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids
-:96: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'guc' - possible side-effects?
#96: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:178:
+#define NUMBER_MULTI_LRC_GUC_ID(guc) \
+	((guc)->num_guc_ids / 16 > 32 ? (guc)->num_guc_ids / 16 : 32)

total: 0 errors, 0 warnings, 1 checks, 428 lines checked
1e00caa2078b drm/i915/guc: Add hang check to GuC submit engine
dac8e22d9b0f drm/i915/guc: Add guc_child_context_destroy
dae43b9ae4ca drm/i915/guc: Implement multi-lrc submission
-:186: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#186: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:906:
+		*wqi++ = child->ring->tail / sizeof(u64);
 		^

total: 0 errors, 0 warnings, 1 checks, 345 lines checked
b48693c26c56 drm/i915/guc: Insert submit fences between requests in parent-child relationship
e99b23e86490 drm/i915/guc: Implement multi-lrc reset
e278330f18d8 drm/i915/guc: Update debugfs for GuC multi-lrc
d70a91bd7039 drm/i915: Connect UAPI to GuC multi-lrc interface
f5b94aff1055 drm/i915/doc: Update parallel submit doc to point to i915_drm.h
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
1e623d060bfa drm/i915/guc: Add basic GuC multi-lrc selftest
-:22: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#22: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 180 lines checked
f04f2fb6c221 drm/i915/guc: Extend GuC flow control selftest for multi-lrc
-:127: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#127: FILE: drivers/gpu/drm/i915/gt/uc/selftest_guc_flow_control.c:654:
+	if (!contexts) {
+		pr_err("Context array allocation failed\n");

-:182: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#182: FILE: drivers/gpu/drm/i915/gt/uc/selftest_guc_flow_control.c:709:
+					contexts[j] = multi_lrc_create_parent(gt, VIDEO_DECODE_CLASS, 0);

total: 0 errors, 2 warnings, 0 checks, 360 lines checked
87f926fb4e0e drm/i915/guc: Implement no mid batch preemption for multi-lrc
94ba50b6aaae drm/i915: Move secure execbuf check to execbuf2
722cabe63be0 drm/i915: Move input/exec fence handling to i915_gem_execbuffer2
866830d7b8df drm/i915: Move output fence handling to i915_gem_execbuffer2
ca7de92f4b87 drm/i915: Return output fence from i915_gem_do_execbuffer
866efe3b7b62 drm/i915: Store batch index in struct i915_execbuffer
e092e2a0aa4a drm/i915: Allow callers of i915_gem_do_execbuffer to override the batch index
53e1b9709de9 drm/i915: Teach execbuf there can be more than one batch in the objects list
b48c4d1c82fb drm/i915: Only track object dependencies on first request
e159516409c6 drm/i915: Force parallel contexts to use copy engine for reloc
77d80c169b21 drm/i915: Multi-batch execbuffer2
3e6d8fb0d85c drm/i915: Eliminate unnecessary VMA calls for multi-BB submission
692205dd3cff drm/i915: Hold all parallel requests until last request, properly handle error
be69dbafd8a5 drm/i915/guc: Handle errors in multi-lrc requests
dd80d82c5c4f drm/i915: Enable multi-bb execbuf
fe8d1a1c8b89 drm/i915/execlists: Weak parallel submission support for execlists
31f37bf214eb drm/i915/guc: Add delay before disabling scheduling on contexts
-:371: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'guc' may be better as '(guc)' to avoid precedence issues
#371: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2954:
+#define next_sched_disable_time(guc, now, ce) \
+	(guc->sched_disable_delay_ns - \
+	 (ktime_to_ns(now) - ktime_to_ns(ce->guc_sched_disable_time)))

-:371: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ce' may be better as '(ce)' to avoid precedence issues
#371: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2954:
+#define next_sched_disable_time(guc, now, ce) \
+	(guc->sched_disable_delay_ns - \
+	 (ktime_to_ns(now) - ktime_to_ns(ce->guc_sched_disable_time)))

-:488: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'guc' may be better as '(guc)' to avoid precedence issues
#488: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3071:
+#define should_sched_be_disabled(guc, now, ce) \
+	((ktime_to_ns(now) - ktime_to_ns(ce->guc_sched_disable_time)) > \
+	(guc->sched_disable_delay_ns / 4) * 3)

-:488: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ce' may be better as '(ce)' to avoid precedence issues
#488: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3071:
+#define should_sched_be_disabled(guc, now, ce) \
+	((ktime_to_ns(now) - ktime_to_ns(ce->guc_sched_disable_time)) > \
+	(guc->sched_disable_delay_ns / 4) * 3)

-:555: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#555: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3138:
+		return HRTIMER_RESTART;
+	} else {

-:562: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'max' may be better as '(max)' to avoid precedence issues
#562: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3145:
+#define guc_id_pressure(max, in_use)	(in_use > (max / 4) * 3)

-:562: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'in_use' may be better as '(in_use)' to avoid precedence issues
#562: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3145:
+#define guc_id_pressure(max, in_use)	(in_use > (max / 4) * 3)

total: 0 errors, 1 warnings, 6 checks, 735 lines checked


