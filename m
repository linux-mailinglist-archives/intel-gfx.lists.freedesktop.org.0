Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0A630286C
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 18:08:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7BA6E203;
	Mon, 25 Jan 2021 17:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 525F56E0AD;
 Mon, 25 Jan 2021 17:08:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B297A00E6;
 Mon, 25 Jan 2021 17:08:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 Jan 2021 17:08:32 -0000
Message-ID: <161159451227.3416.15015468172122685708@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210125140136.10494-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/41=5D_drm/i915/selftests=3A_Chec?=
 =?utf-8?q?k_for_engine-reset_errors_in_the_middle_of_workarounds?=
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

Series: series starting with [01/41] drm/i915/selftests: Check for engine-reset errors in the middle of workarounds
URL   : https://patchwork.freedesktop.org/series/86259/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e4e577627c26 drm/i915/selftests: Check for engine-reset errors in the middle of workarounds
367f5e603c5d drm/i915/gt: Move the defer_request waiter active assertion
0611644e4ddf drm/i915: Replace engine->schedule() with a known request operation
b5ca2c04b198 drm/i915: Teach the i915_dependency to use a double-lock
7b140da51266 drm/i915: Restructure priority inheritance
f1443908248f drm/i915/selftests: Measure set-priority duration
-:52: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#52: 
new file mode 100644

-:434: WARNING:LINE_SPACING: Missing a blank line after declarations
#434: FILE: drivers/gpu/drm/i915/selftests/i915_scheduler.c:378:
+	struct igt_spinner spin;
+	I915_RND_STATE(prng);

total: 0 errors, 2 warnings, 0 checks, 702 lines checked
22c3f3836779 drm/i915/selftests: Exercise priority inheritance around an engine loop
9b002fc62d1f drm/i915: Improve DFS for priority inheritance
ddf444ae329e drm/i915/selftests: Exercise relative mmio paths to non-privileged registers
f6b8b7362118 drm/i915/selftests: Exercise cross-process context isolation
1dac44d403d7 drm/i915: Extract request submission from execlists
db49df2e5ac7 drm/i915: Extract request rewinding from execlists
f04573d14fc7 drm/i915: Extract request suspension from the execlists
bf3ba20370f6 drm/i915: Extract the ability to defer and rerun a request later
d6eb9d01bae2 drm/i915: Fix the iterative dfs for defering requests
4ab371f1d39d drm/i915: Move common active lists from engine to i915_scheduler
0597492c1e44 drm/i915: Move scheduler queue
3744cfde0c1b drm/i915: Move tasklet from execlists to sched
3839efb97bae drm/i915/gt: Show scheduler queues when dumping state
4abff63c4cfe drm/i915: Replace priolist rbtree with a skiplist
-:306: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#306: FILE: drivers/gpu/drm/i915/i915_priolist_types.h:62:
+#define for_each_priolist(p, root) \
+	for ((p) = (root)->sentinel.next[0]; \
+	     (p) != &(root)->sentinel; \
+	     (p) = (p)->next[0])

-:306: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'root' - possible side-effects?
#306: FILE: drivers/gpu/drm/i915/i915_priolist_types.h:62:
+#define for_each_priolist(p, root) \
+	for ((p) = (root)->sentinel.next[0]; \
+	     (p) != &(root)->sentinel; \
+	     (p) = (p)->next[0])

-:717: WARNING:LINE_SPACING: Missing a blank line after declarations
#717: FILE: drivers/gpu/drm/i915/selftests/i915_scheduler.c:19:
+	struct i915_priolist *pl = &root.sentinel;
+	IGT_TIMEOUT(end_time);

total: 0 errors, 1 warnings, 2 checks, 697 lines checked
48a6729c987b drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper
-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ptr' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/i915_utils.h:468:
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

-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ptr' - possible side-effects?
#40: FILE: drivers/gpu/drm/i915/i915_utils.h:485:
+#define xchg64(_ptr, _new)						\
+({									\
+	__typeof__(_ptr) __ptr = (_ptr);				\
+	__typeof__(*(_ptr)) __old = *__ptr;				\
+	while (!try_cmpxchg64(__ptr, &__old, (_new)))			\
+		;							\
+	__old;								\
+})

total: 0 errors, 0 warnings, 2 checks, 36 lines checked
4cabd30226f5 drm/i915: Fair low-latency scheduling
f93f85ad482a drm/i915/gt: Specify a deadline for the heartbeat
010d86d0ecb1 drm/i915: Extend the priority boosting for the display with a deadline
e4a776414370 drm/i915/gt: Support virtual engine queues
4e61621ac116 drm/i915: Move saturated workload detection back to the context
-:29: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:29: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 78 lines checked
75ecbfad42e2 drm/i915: Bump default timeslicing quantum to 5ms
1edd11623282 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
fc7e917f62a1 drm/i915/gt: Track timeline GGTT offset separately from subpage offset
9bb8f60faea0 drm/i915/gt: Add timeline "mode"
0a3936960afc drm/i915/gt: Use indices for writing into relative timelines
b9b643d59b9d drm/i915/selftests: Exercise relative timeline modes
913207bf89cd drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
cf05a88e82c0 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
593e08f61ffd drm/i915/gt: Couple tasklet scheduling for all CS interrupts
209430537935 drm/i915/gt: Support creation of 'internal' rings
0337feb5791a drm/i915/gt: Use client timeline address for seqno writes
a07f5ba0a10d drm/i915/gt: Infrastructure for ring scheduling
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 891 lines checked
bf0a549d2293 drm/i915/gt: Implement ring scheduler for gen4-7
-:70: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#70: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:227:
+				*cs++ = i915_mmio_reg_offset(

-:72: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#72: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:229:
+				*cs++ = _MASKED_BIT_ENABLE(

-:107: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#107: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:264:
+				*cs++ = _MASKED_BIT_DISABLE(

total: 0 errors, 0 warnings, 3 checks, 582 lines checked
4743bbd27620 drm/i915/gt: Enable ring scheduling for gen5-7
-:32: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#32: 
References: 0f46832fab77 ("drm/i915: Mask USER interrupts on gen6 (until required)")

-:32: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 0f46832fab77 ("drm/i915: Mask USER interrupts on gen6 (until required)")'
#32: 
References: 0f46832fab77 ("drm/i915: Mask USER interrupts on gen6 (until required)")

total: 1 errors, 1 warnings, 0 checks, 34 lines checked
ac942d24c88f drm/i915: Support secure dispatch on gen6/gen7


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
