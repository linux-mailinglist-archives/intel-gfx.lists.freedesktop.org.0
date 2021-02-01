Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 660BE30A966
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 15:13:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC2D96E5AE;
	Mon,  1 Feb 2021 14:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D9AA6E5AB;
 Mon,  1 Feb 2021 14:13:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4059AA47E8;
 Mon,  1 Feb 2021 14:13:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 01 Feb 2021 14:13:28 -0000
Message-ID: <161218880822.18682.4714469914308455659@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/57=5D_drm/i915/gt=3A_Restrict_th?=
 =?utf-8?q?e_GT_clock_override_to_just_Icelake?=
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

Series: series starting with [01/57] drm/i915/gt: Restrict the GT clock override to just Icelake
URL   : https://patchwork.freedesktop.org/series/86521/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
02ff187efe58 drm/i915/gt: Restrict the GT clock override to just Icelake
1168085745bb drm/i915/selftests: Exercise relative mmio paths to non-privileged registers
67ba4bc3ef45 drm/i915/selftests: Exercise cross-process context isolation
812b9702970c drm/i915: Protect against request freeing during cancellation on wedging
396c9772ff96 drm/i915: Take rcu_read_lock for querying fence's driver/timeline names
ba9a0134558c drm/i915/gt: Always flush the submission queue on checking for idle
fb9da1a17162 drm/i915/gt: Move engine setup out of set_default_submission
95ba0d20edbc drm/i915/gt: Move submission_method into intel_gt
afc69f5ccf6a drm/i915: Replace engine->schedule() with a known request operation
e0c808804030 drm/i915: Restructure priority inheritance
e49cef4b719f drm/i915/selftests: Measure set-priority duration
-:52: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#52: 
new file mode 100644

-:428: WARNING:LINE_SPACING: Missing a blank line after declarations
#428: FILE: drivers/gpu/drm/i915/selftests/i915_scheduler.c:372:
+	struct igt_spinner spin;
+	I915_RND_STATE(prng);

total: 0 errors, 2 warnings, 0 checks, 695 lines checked
99c1c68a0d6e drm/i915/selftests: Exercise priority inheritance around an engine loop
eee64a384f1e drm/i915/selftests: Force a rewind if at first we don't succeed
89047ac8d3f9 drm/i915: Improve DFS for priority inheritance
cf0e863b4096 drm/i915: Extract request submission from execlists
9ab06af43466 drm/i915: Extract request rewinding from execlists
a68bf747a102 drm/i915: Extract request suspension from the execlists
8e964ba6ce2c drm/i915: Extract the ability to defer and rerun a request later
717bce49e733 drm/i915: Fix the iterative dfs for defering requests
243b0f26514f drm/i915: Wrap access to intel_engine.active
ac5293ea766c drm/i915: Move common active lists from engine to i915_scheduler
-:305: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#305: FILE: drivers/gpu/drm/i915/i915_request.h:55:
+#define RQ_ARG(rq) (rq) ? (rq)->fence.context : 0, (rq) ? (rq)->fence.seqno : 0

-:305: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'rq' - possible side-effects?
#305: FILE: drivers/gpu/drm/i915/i915_request.h:55:
+#define RQ_ARG(rq) (rq) ? (rq)->fence.context : 0, (rq) ? (rq)->fence.seqno : 0

total: 1 errors, 0 warnings, 1 checks, 480 lines checked
d985e3531992 drm/i915: Move scheduler queue
2d5deefbefcb drm/i915: Move tasklet from execlists to sched
60fd8d9b19bc drm/i915/gt: Only kick the scheduler on timeslice/preemption change
492e7ec772a6 drm/i915: Move submit_request to i915_sched_engine
ccdcb60f774f drm/i915: Move finding the current active request to the scheduler
e7478a72f93a drm/i915: Show execlists queues when dumping state
-:406: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#406: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:3617:
+				DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),

total: 0 errors, 1 warnings, 0 checks, 737 lines checked
df270cd5e7df drm/i915: Wrap i915_request_use_semaphores()
94cbab52393f drm/i915: Move scheduler flags
d3588f5a9eef drm/i915: Move timeslicing flag to scheduler
8232ce85b9b8 drm/i915/gt: Declare when we enabled timeslicing
a73b1d6cc5e3 drm/i915: Move needs-breadcrumb flags to scheduler
6c112fa724bf drm/i915: Move busywaiting control to the scheduler
8260622919a6 drm/i915: Move preempt-reset flag to the scheduler
8f639a9acdb1 drm/i915: Replace priolist rbtree with a skiplist
-:355: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#355: FILE: drivers/gpu/drm/i915/i915_priolist_types.h:98:
+#define for_each_priolist(p, root) \
+	for ((p) = (root)->sentinel.next[0]; \
+	     (p) != &(root)->sentinel; \
+	     (p) = (p)->next[0])

-:355: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'root' - possible side-effects?
#355: FILE: drivers/gpu/drm/i915/i915_priolist_types.h:98:
+#define for_each_priolist(p, root) \
+	for ((p) = (root)->sentinel.next[0]; \
+	     (p) != &(root)->sentinel; \
+	     (p) = (p)->next[0])

-:833: WARNING:LINE_SPACING: Missing a blank line after declarations
#833: FILE: drivers/gpu/drm/i915/selftests/i915_scheduler.c:19:
+	struct i915_priolist *pl = &root.sentinel;
+	IGT_TIMEOUT(end_time);

total: 0 errors, 1 warnings, 2 checks, 782 lines checked
2beff973e550 drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper
-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ptr' - possible side-effects?
#24: FILE: drivers/gpu/drm/i915/i915_utils.h:468:
+#define try_cmpxchg64(_ptr, _pold, _new)				\
+({									\
+	__typeof__(_ptr) _old = (__typeof__(_ptr))(_pold);		\
+	__typeof__(*(_ptr)) __old = *_old;				\
+	__typeof__(*(_ptr)) __cur = cmpxchg64(_ptr, __old, _new);	\
+	bool success = __cur == __old;					\
+	if (unlikely(!success))						\
+		*_old = __cur;						\
+	likely(success);						\
+})

-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ptr' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/i915_utils.h:485:
+#define xchg64(_ptr, _new)						\
+({									\
+	__typeof__(_ptr) __ptr = (_ptr);				\
+	__typeof__(*(_ptr)) __old = *__ptr;				\
+	while (!try_cmpxchg64(__ptr, &__old, (_new)))			\
+		;							\
+	__old;								\
+})

total: 0 errors, 0 warnings, 2 checks, 36 lines checked
23fa83845f05 drm/i915: Fair low-latency scheduling
24a11bfa8dbf drm/i915/gt: Specify a deadline for the heartbeat
8644267db4b4 drm/i915: Extend the priority boosting for the display with a deadline
a6cae6915e50 drm/i915/gt: Support virtual engine queues
65775c6234be drm/i915: Move saturated workload detection back to the context
-:29: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:29: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 78 lines checked
c192c49b3bd7 drm/i915: Bump default timeslicing quantum to 5ms
c90a2524e5fe drm/i915/gt: Delay taking irqoff for execlists submission
86b5296ad1e5 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
5cbb46815b8e drm/i915/gt: Track timeline GGTT offset separately from subpage offset
be28ddaf3bb0 drm/i915/gt: Add timeline "mode"
6e26e9574360 drm/i915/gt: Use indices for writing into relative timelines
db08eb6640fc drm/i915/selftests: Exercise relative timeline modes
2f0c54ac6a70 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
eaa4cd3f228c Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
069f382f469f drm/i915/gt: Couple tasklet scheduling for all CS interrupts
07876cc097ab drm/i915/gt: Support creation of 'internal' rings
a412ec7bad23 drm/i915/gt: Use client timeline address for seqno writes
ca4963eac3db drm/i915/gt: Infrastructure for ring scheduling
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 877 lines checked
a6fdbc84692b drm/i915/gt: Implement ring scheduler for gen4-7
-:70: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#70: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:221:
+				*cs++ = i915_mmio_reg_offset(

-:72: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#72: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:223:
+				*cs++ = _MASKED_BIT_ENABLE(

-:107: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#107: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:258:
+				*cs++ = _MASKED_BIT_DISABLE(

total: 0 errors, 0 warnings, 3 checks, 584 lines checked
3792ac8f12bf drm/i915/gt: Enable ring scheduling for gen5-7
-:32: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#32: 
References: 0f46832fab77 ("drm/i915: Mask USER interrupts on gen6 (until required)")

-:32: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 0f46832fab77 ("drm/i915: Mask USER interrupts on gen6 (until required)")'
#32: 
References: 0f46832fab77 ("drm/i915: Mask USER interrupts on gen6 (until required)")

total: 1 errors, 1 warnings, 0 checks, 45 lines checked
c95a028fe9ef drm/i915: Support secure dispatch on gen6/gen7


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
