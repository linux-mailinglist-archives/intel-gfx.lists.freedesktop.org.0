Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CCE2E7097
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 13:20:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 952D989336;
	Tue, 29 Dec 2020 12:20:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2ABB3890B3;
 Tue, 29 Dec 2020 12:20:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C68DA8831;
 Tue, 29 Dec 2020 12:20:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 29 Dec 2020 12:20:19 -0000
Message-ID: <160924441908.17553.12224062704811642320@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201229120145.26045-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201229120145.26045-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/56=5D_drm/i915/gt=3A_Restore_ce-?=
 =?utf-8?q?=3Esignal_flush_before_releasing_virtual_engine?=
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

Series: series starting with [01/56] drm/i915/gt: Restore ce->signal flush before releasing virtual engine
URL   : https://patchwork.freedesktop.org/series/85294/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5d253c820f98 drm/i915/gt: Restore ce->signal flush before releasing virtual engine
-:14: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer")'
#14: 
bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer"),

total: 1 errors, 0 warnings, 0 checks, 25 lines checked
08fea6cdbfe1 drm/i915/gt: Only retire on the last breadcrumb if the last request
b23f3eb56bd4 drm/i915/gt: Cancel submitted requests upon context reset
d39c3dc09659 drm/i915/gt: Pull context closure check from request submit to schedule-in
16d47e1aed72 drm/i915/gem: Peek at the inflight context
9b223bba4489 drm/i915: Mark up protected uses of 'i915_request_completed'
376a3fd1aa70 drm/i915: Drop i915_request.lock serialisation around await_start
34d4b5110ba9 drm/i915: Drop i915_request.lock requirement for intel_rps_boost()
f92a7ed45c5b drm/i915/gem: Reduce ctx->engine_mutex for reading the clone source
37f7bcca5bf7 drm/i915/gem: Reduce ctx->engines_mutex for get_engines()
3348d18ca3ea drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()
c4ed88ca7714 drm/i915/gt: Drop atomic for engine->fw_active tracking
5b4b4f36ae61 drm/i915/gt: Extract busy-stats for ring-scheduler
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
a1db817adb4f drm/i915/gt: Convert stats.active to plain unsigned int
5ee474627f5c drm/i915/gt: Do not suspend bonded requests if one hangs
5290a2049e43 drm/i915/gt: Remove timeslice suppression
1416d1c632b4 drm/i915/gt: Skip over completed active execlists, again
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
f2dd5e0bd198 drm/i915: Strip out internal priorities
3e9b37304663 drm/i915: Remove I915_USER_PRIORITY_SHIFT
ab7543b6a53b drm/i915: Replace engine->schedule() with a known request operation
633b60d3ab4a drm/i915: Teach the i915_dependency to use a double-lock
65ec8303e7be drm/i915: Restructure priority inheritance
1e1b4d8257b8 drm/i915/selftests: Measure set-priority duration
-:52: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#52: 
new file mode 100644

-:434: WARNING:LINE_SPACING: Missing a blank line after declarations
#434: FILE: drivers/gpu/drm/i915/selftests/i915_scheduler.c:378:
+	struct igt_spinner spin;
+	I915_RND_STATE(prng);

total: 0 errors, 2 warnings, 0 checks, 702 lines checked
fa0560675867 drm/i915/selftests: Exercise priority inheritance around an engine loop
d1bcccf864ff drm/i915: Improve DFS for priority inheritance
df9a037a9db9 drm/i915: Extract request submission from execlists
0985b4fb1bbc drm/i915: Extract request rewinding from execlists
f5765931129f drm/i915: Extract request suspension from the execlists backend
7ee390647b0c drm/i915: Extract the ability to defer and rerun a request later
c9548999367a drm/i915: Fix the iterative dfs for defering requests
0500494008c6 drm/i915: Move common active lists from engine to i915_scheduler
-:198: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#198: FILE: drivers/gpu/drm/i915/i915_scheduler_types.h:84:
+	spinlock_t lock;

total: 0 errors, 0 warnings, 1 checks, 157 lines checked
c5bd056345df drm/i915: Move scheduler queue
cd4ba685c265 drm/i915: Move tasklet from execlists to sched
1c7ec2edd9ef drm/i915: Replace priolist rbtree with a skiplist
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
513af0b3e8c7 drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper
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
cf1ea11d4f9f drm/i915: Fair low-latency scheduling
3a61917c28fa drm/i915/gt: Specify a deadline for the heartbeat
2fc331d15f56 drm/i915: Extend the priority boosting for the display with a deadline
c1d3e8da3441 drm/i915/gt: Support virtual engine queues
8e5ab6362632 drm/i915: Move saturated workload detection back to the context
-:29: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:29: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 70 lines checked
c075709f4766 drm/i915: Bump default timeslicing quantum to 5ms
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
92bb940c953e drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
2d030b16c499 drm/i915/gt: Track timeline GGTT offset separately from subpage offset
d3fc994ef822 drm/i915/gt: Add timeline "mode"
0f154e95943a drm/i915/gt: Use indices for writing into relative timelines
3745e1be3ac7 drm/i915/selftests: Exercise relative timeline modes
92e978ab04b4 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
4dd9da9947ea Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
c92ce77adff2 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
2f3a563d0c64 drm/i915/gt: Support creation of 'internal' rings
d23d8470fe37 drm/i915/gt: Use client timeline address for seqno writes
0ca0db3206f9 drm/i915/gt: Infrastructure for ring scheduling
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 862 lines checked
a326b4b56178 drm/i915/gt: Enable busy-stats for ring-scheduler
16247b692dd4 drm/i915/gt: Implement ring scheduler for gen6/7
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
633bc777ab49 drm/i915/gt: Enable ring scheduling for gen6/7
e89b9a4f59ca drm/i915/gt: Limit C-states while waiting for requests


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
