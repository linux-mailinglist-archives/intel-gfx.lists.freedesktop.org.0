Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DF22E6F67
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 10:39:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF77F89292;
	Tue, 29 Dec 2020 09:39:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9BC2F8926B;
 Tue, 29 Dec 2020 09:39:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E34CA7DFF;
 Tue, 29 Dec 2020 09:39:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 29 Dec 2020 09:39:08 -0000
Message-ID: <160923474855.17549.9600974717624295382@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201228155229.9516-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201228155229.9516-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/54=5D_drm/i915/gt=3A_Cancel_subm?=
 =?utf-8?q?itted_requests_upon_context_reset?=
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

Series: series starting with [01/54] drm/i915/gt: Cancel submitted requests upon context reset
URL   : https://patchwork.freedesktop.org/series/85275/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0b9748fc4fd3 drm/i915/gt: Cancel submitted requests upon context reset
69e67c0b5c51 drm/i915/gt: Pull context closure check from request submit to schedule-in
9f63c2557add drm/i915/gem: Peek at the inflight context
5eb79ce389c1 drm/i915: Mark up protected uses of 'i915_request_completed'
34004d143982 drm/i915: Drop i915_request.lock serialisation around await_start
d1078b6751d7 drm/i915: Drop i915_request.lock requirement for intel_rps_boost()
279d9aafdb7b drm/i915/gem: Reduce ctx->engine_mutex for reading the clone source
84fade942b88 drm/i915/gem: Reduce ctx->engines_mutex for get_engines()
ce5d84639d7c drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()
54b08969c728 drm/i915/gt: Drop atomic for engine->fw_active tracking
cb7601bcf0b2 drm/i915/gt: Extract busy-stats for ring-scheduler
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
ee4ba8911307 drm/i915/gt: Convert stats.active to plain unsigned int
d5cc1786e885 drm/i915/gt: Do not suspend bonded requests if one hangs
d654d951ab15 drm/i915/gt: Remove timeslice suppression
157c2def0cb3 drm/i915/gt: Skip over completed active execlists, again
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Referenecs: 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")

-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")'
#10: 
Referenecs: 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")

-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 8ab3a3812aa9 ("drm/i915/gt: Incrementally check for rewinding")'
#11: 
References: 8ab3a3812aa9 ("drm/i915/gt: Incrementally check for rewinding")

total: 2 errors, 1 warnings, 0 checks, 71 lines checked
34ee71c219d7 drm/i915: Strip out internal priorities
ee184d638694 drm/i915: Remove I915_USER_PRIORITY_SHIFT
08990ad0d442 drm/i915: Replace engine->schedule() with a known request operation
478814419b5e drm/i915: Teach the i915_dependency to use a double-lock
3d95d5214a1d drm/i915: Restructure priority inheritance
a3467b661390 drm/i915/selftests: Measure set-priority duration
-:52: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#52: 
new file mode 100644

-:434: WARNING:LINE_SPACING: Missing a blank line after declarations
#434: FILE: drivers/gpu/drm/i915/selftests/i915_scheduler.c:378:
+	struct igt_spinner spin;
+	I915_RND_STATE(prng);

total: 0 errors, 2 warnings, 0 checks, 702 lines checked
fb9f48e3fe22 drm/i915/selftests: Exercise priority inheritance around an engine loop
4bea1b5f3437 drm/i915: Improve DFS for priority inheritance
edaf360fa696 drm/i915: Extract request submission from execlists
325e252e7bac drm/i915: Extract request rewinding from execlists
1c3bd294373d drm/i915: Extract request suspension from the execlists backend
6aca7a704425 drm/i915: Extract the ability to defer and rerun a request later
ad32d79a370d drm/i915: Fix the iterative dfs for defering requests
4f299a9c3688 drm/i915: Move common active lists from engine to i915_scheduler
-:198: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#198: FILE: drivers/gpu/drm/i915/i915_scheduler_types.h:84:
+	spinlock_t lock;

total: 0 errors, 0 warnings, 1 checks, 157 lines checked
718db6262de1 drm/i915: Move scheduler queue
152ed7b45e2e drm/i915: Move tasklet from execlists to sched
082e8ae14675 drm/i915: Replace priolist rbtree with a skiplist
-:305: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'root' - possible side-effects?
#305: FILE: drivers/gpu/drm/i915/i915_priolist_types.h:61:
+#define i915_priolist_is_empty(root) (priolist_first(root) == &(root)->sentinel)

-:307: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#307: FILE: drivers/gpu/drm/i915/i915_priolist_types.h:63:
+#define for_each_priolist(p, root) \
+	for ((p) = priolist_first(root); \
+	     (p) != &(root)->sentinel; \
+	     (p) = (p)->next[0])

-:307: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'root' - possible side-effects?
#307: FILE: drivers/gpu/drm/i915/i915_priolist_types.h:63:
+#define for_each_priolist(p, root) \
+	for ((p) = priolist_first(root); \
+	     (p) != &(root)->sentinel; \
+	     (p) = (p)->next[0])

total: 0 errors, 0 warnings, 3 checks, 675 lines checked
91c1ecade9a3 drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper
-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ptr' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/i915_utils.h:463:
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
#40: FILE: drivers/gpu/drm/i915/i915_utils.h:480:
+#define xchg64(_ptr, _new)						\
+({									\
+	__typeof__(_ptr) __ptr = (_ptr);				\
+	__typeof__(*(_ptr)) __old = *__ptr;				\
+	while (!try_cmpxchg64(__ptr, &__old, (_new)))			\
+		;							\
+	__old;								\
+})

total: 0 errors, 0 warnings, 2 checks, 36 lines checked
3e371540df63 drm/i915: Fair low-latency scheduling
11ed8ad94eeb drm/i915/gt: Specify a deadline for the heartbeat
94a385b757e2 drm/i915: Extend the priority boosting for the display with a deadline
6098f9f08113 drm/i915/gt: Support virtual engine queues
ccb84bd14161 drm/i915: Move saturated workload detection back to the context
-:29: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:29: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 70 lines checked
01a354fdc655 drm/i915: Bump default timeslicing quantum to 5ms
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
16a564083b55 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
6c93d6121ff6 drm/i915/gt: Track timeline GGTT offset separately from subpage offset
a7e054e1d51f drm/i915/gt: Add timeline "mode"
052ed5effc8f drm/i915/gt: Use indices for writing into relative timelines
3aab63db2a5a drm/i915/selftests: Exercise relative timeline modes
e6b3a4e89fdb drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
d7f96649f044 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
cf7d73fc42f7 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
c9361a735109 drm/i915/gt: Support creation of 'internal' rings
7c96efa12d48 drm/i915/gt: Use client timeline address for seqno writes
6f6f3304e33a drm/i915/gt: Infrastructure for ring scheduling
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 862 lines checked
dd507815ad29 drm/i915/gt: Enable busy-stats for ring-scheduler
68a57f8992ac drm/i915/gt: Implement ring scheduler for gen6/7
-:68: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#68: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:202:
+				*cs++ = i915_mmio_reg_offset(

-:70: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#70: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:204:
+				*cs++ = _MASKED_BIT_ENABLE(

-:105: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#105: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:239:
+				*cs++ = _MASKED_BIT_DISABLE(

total: 0 errors, 0 warnings, 3 checks, 580 lines checked
b1e8c9683e18 drm/i915/gt: Enable ring scheduling for gen6/7
85f98ac537c4 drm/i915/gt: Limit C-states while waiting for requests


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
