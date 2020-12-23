Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9302E1D64
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 15:20:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A48E6E93B;
	Wed, 23 Dec 2020 14:20:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C92D6E93A;
 Wed, 23 Dec 2020 14:20:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 164EDA8836;
 Wed, 23 Dec 2020 14:20:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 23 Dec 2020 14:20:46 -0000
Message-ID: <160873324606.26584.17369580038268068637@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201223111126.3338-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/62=5D_drm/i915/gt=3A_Replace_dir?=
 =?utf-8?q?ect_submit_with_direct_call_to_tasklet?=
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

Series: series starting with [01/62] drm/i915/gt: Replace direct submit with direct call to tasklet
URL   : https://patchwork.freedesktop.org/series/85184/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
11ff28d8f6d3 drm/i915/gt: Replace direct submit with direct call to tasklet
5e8040a840bc drm/i915/gt: Use virtual_engine during execlists_dequeue
2a533c166dca drm/i915/gt: Decouple inflight virtual engines
e67f6b85391f drm/i915/gt: Defer schedule_out until after the next dequeue
4cf4ad3a878b drm/i915/gt: Remove virtual breadcrumb before transfer
5fcc092512e9 drm/i915/gt: Shrink the critical section for irq signaling
535418e46847 drm/i915/gt: Resubmit the virtual engine on schedule-out
fd614fdd85e4 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
f1bc3696961a drm/i915/gt: ce->inflight updates are now serialised
ec26a9257ebb drm/i915/selftests: Confirm CS_TIMESTAMP / CTX_TIMESTAMP share a clock
-:91: WARNING:MEMORY_BARRIER: memory barrier without comment
#91: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:69:
+	wmb();

-:139: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#139: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:117:
+	udelay(100);

total: 0 errors, 1 warnings, 1 checks, 223 lines checked
9b6e9d3440df drm/i915/gt: Consolidate the CS timestamp clocks
b45af9eeb47e drm/i915: Drop i915_request.lock serialisation around await_start
9214c519cc1b drm/i915: Drop i915_request.lock requirement for intel_rps_boost()
cad1adec9393 drm/i915/gem: Reduce ctx->engine_mutex for reading the clone source
8f7854833c40 drm/i915/gem: Reduce ctx->engines_mutex for get_engines()
f3eb0734aa17 drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()
d4ab3dd23cec drm/i915/gt: Drop atomic for engine->fw_active tracking
761f42694117 drm/i915/gt: Extract busy-stats for ring-scheduler
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
1ad786b3dafd drm/i915/gt: Convert stats.active to plain unsigned int
3e32d2a70598 drm/i915/gt: Refactor heartbeat request construction and submission
915e2215b56c drm/i915/gt: Do not suspend bonded requests if one hangs
7f7cfa94210d drm/i915/gt: Remove timeslice suppression
43182c3b43b9 drm/i915: Strip out internal priorities
0fc466b30b40 drm/i915: Remove I915_USER_PRIORITY_SHIFT
b6680c4d807c drm/i915: Replace engine->schedule() with a known request operation
d23c18eec355 drm/i915: Teach the i915_dependency to use a double-lock
660e34df14a0 drm/i915: Restructure priority inheritance
5274e559d740 drm/i915/selftests: Measure set-priority duration
-:52: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#52: 
new file mode 100644

-:434: WARNING:LINE_SPACING: Missing a blank line after declarations
#434: FILE: drivers/gpu/drm/i915/selftests/i915_scheduler.c:378:
+	struct igt_spinner spin;
+	I915_RND_STATE(prng);

total: 0 errors, 2 warnings, 0 checks, 702 lines checked
7b37857ec9d6 drm/i915/selftests: Exercise priority inheritance around an engine loop
eabb4969d40f drm/i915: Improve DFS for priority inheritance
5593476c2a97 drm/i915: Extract request submission from execlists
f48c38d2c375 drm/i915: Extract request rewinding from execlists
26a78cab587f drm/i915: Extract request suspension from the execlists backend
1edcba02be27 drm/i915: Extract the ability to defer and rerun a request later
db66ed30fd5d drm/i915: Fix the iterative dfs for defering requests
56d3c8f1f0e2 drm/i915: Move common active lists from engine to i915_scheduler
-:198: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#198: FILE: drivers/gpu/drm/i915/i915_scheduler_types.h:84:
+	spinlock_t lock;

total: 0 errors, 0 warnings, 1 checks, 157 lines checked
4f4afaec9d87 drm/i915: Move scheduler queue
f728914b401f drm/i915: Move tasklet from execlists to sched
0113a5e42835 drm/i915: Replace priolist rbtree with a skiplist
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

total: 0 errors, 0 warnings, 3 checks, 611 lines checked
a9fdc2e2c3bf drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper
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
c1315fa192f5 drm/i915: Fair low-latency scheduling
5cef41e5cbf1 drm/i915/gt: Specify a deadline for the heartbeat
9fcbcc9f2d17 drm/i915: Extend the priority boosting for the display with a deadline
49e08f2d50fd drm/i915/gt: Skip over completed active execlists, again
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
0ecd53938439 drm/i915/gt: Support virtual engine queues
9fce6e1cde33 drm/i915: Move saturated workload detection back to the context
-:29: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:29: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 70 lines checked
6a525ef3a97d drm/i915: Bump default timeslicing quantum to 5ms
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
4f5204545c50 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
0a1f9167779e drm/i915/gt: Track timeline GGTT offset separately from subpage offset
497d8e60daa0 drm/i915/gt: Add timeline "mode"
a80e287deb01 drm/i915/gt: Use indices for writing into relative timelines
e63e15540e94 drm/i915/selftests: Exercise relative timeline modes
1c8f8f226ec3 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
d1d29911e5a0 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
0714dcad606d drm/i915/gt: Couple tasklet scheduling for all CS interrupts
fef880930860 drm/i915/gt: Support creation of 'internal' rings
9899406a944a drm/i915/gt: Use client timeline address for seqno writes
01ac9a884ed0 drm/i915/gt: Infrastructure for ring scheduling
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 862 lines checked
dc748355fd5a drm/i915/gt: Enable busy-stats for ring-scheduler
b9f7ad160192 drm/i915/gt: Implement ring scheduler for gen6/7
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
58747522a4fc drm/i915/gt: Enable ring scheduling for gen6/7
0167812eaa7f drm/i915: Mark up protected uses of 'i915_request_completed'


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
