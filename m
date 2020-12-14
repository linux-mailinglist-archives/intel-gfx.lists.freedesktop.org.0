Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CF82D980E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 13:37:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96FA8899AB;
	Mon, 14 Dec 2020 12:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6612B899A3;
 Mon, 14 Dec 2020 12:37:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F488A0019;
 Mon, 14 Dec 2020 12:37:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 14 Dec 2020 12:37:12 -0000
Message-ID: <160794943236.28163.16289772462396472514@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/69=5D_drm/i915=3A_Use_cmpxchg64_?=
 =?utf-8?q?for_32b_compatilibity?=
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

Series: series starting with [01/69] drm/i915: Use cmpxchg64 for 32b compatilibity
URL   : https://patchwork.freedesktop.org/series/84900/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0dc75ecba54f drm/i915: Use cmpxchg64 for 32b compatilibity
4e8074241dc4 drm/i915/uc: Squelch load failure error message
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
<3> [111.319340] i915 0000:00:02.0: [drm] *ERROR* GuC load failed: status = 0x00000020

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
b674cfb42071 drm/i915: Encode fence specific waitqueue behaviour into the wait.flags
4aa9ef6d49f8 drm/i915/gt: Replace direct submit with direct call to tasklet
efdd2df1bc73 drm/i915/gt: Use virtual_engine during execlists_dequeue
b930ba2a83d3 drm/i915/gt: Decouple inflight virtual engines
a83ac0a0f58e drm/i915/gt: Defer schedule_out until after the next dequeue
af9dc0dc069e drm/i915/gt: Remove virtual breadcrumb before transfer
b6c9a8fd2b70 drm/i915/gt: Shrink the critical section for irq signaling
9aefee3ded48 drm/i915/gt: Resubmit the virtual engine on schedule-out
a28f9e8810aa drm/i915/gt: Simplify virtual engine handling for execlists_hold()
8ddfebc69fcb drm/i915/gt: ce->inflight updates are now serialised
8ccab6df158e drm/i915/gem: Drop free_work for GEM contexts
e4f662259e10 drm/i915/gt: Track the overall awake/busy time
d77dfac7aad3 drm/i915/gt: Track all timelines created using the HWSP
5d9534289170 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
3c050f7bff37 drm/i915/gt: Track timeline GGTT offset separately from subpage offset
98e9db354de5 drm/i915/gt: Add timeline "mode"
a3ff02a6c8f0 drm/i915/gt: Use indices for writing into relative timelines
722362f35c0d drm/i915/selftests: Exercise relative timeline modes
99692fe0f319 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
937af88e9869 drm/i915/selftests: Confirm RING_TIMESTAMP / CTX_TIMESTAMP share a clock
-:88: WARNING:MEMORY_BARRIER: memory barrier without comment
#88: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:68:
+	wmb();

-:136: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#136: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:116:
+	udelay(100);

total: 0 errors, 1 warnings, 1 checks, 221 lines checked
ccb57dc0aafd drm/i915/gt: Consolidate the CS timestamp clocks
801b88f03c21 drm/i915/gt: Prefer recycling an idle fence
f41ace3aacd9 drm/i915/gem: Optimistically prune dma-resv from the shrinker.
-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 72 lines checked
e1ba077c4634 drm/i915: Drop i915_request.lock serialisation around await_start
acb070e009e6 drm/i915: Drop i915_request.lock requirement for intel_rps_boost()
0874a9ee121d drm/i915/gem: Reduce ctx->engine_mutex for reading the clone source
ca26a0835509 drm/i915/gem: Reduce ctx->engines_mutex for get_engines()
aba47aad12c0 drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()
a1dec9510015 drm/i915/gt: Drop atomic for engine->fw_active tracking
04fb23cb64d2 drm/i915/gt: Extract busy-stats for ring-scheduler
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
f5458bf52a9d drm/i915/gt: Convert stats.active to plain unsigned int
7bbaf73cc381 drm/i915/gt: Refactor heartbeat request construction and submission
19429f06a9d1 drm/i915: Strip out internal priorities
70dd8ff805da drm/i915: Remove I915_USER_PRIORITY_SHIFT
506d0c1b2d3a drm/i915/gt: Defer the kmem_cache_free() until after the HW submit
b0f4da50b0fc drm/i915: Prune empty priolists
b916ef805b71 drm/i915: Replace engine->schedule() with a known request operation
34b62d953f50 drm/i915/gt: Do not suspend bonded requests if one hangs
76805c1d568f drm/i915: Teach the i915_dependency to use a double-lock
c5834625d876 drm/i915: Restructure priority inheritance
622182a65e16 drm/i915/selftests: Measure set-priority duration
-:52: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#52: 
new file mode 100644

-:433: WARNING:LINE_SPACING: Missing a blank line after declarations
#433: FILE: drivers/gpu/drm/i915/selftests/i915_scheduler.c:377:
+	struct igt_spinner spin;
+	I915_RND_STATE(prng);

total: 0 errors, 2 warnings, 0 checks, 686 lines checked
fdf0bf3f6e3e drm/i915/selftests: Exercise priority inheritance around an engine loop
3835bb8e7018 drm/i915: Improve DFS for priority inheritance
6463731d3356 drm/i915/gt: Remove timeslice suppression
0c5bc38dac03 drm/i915: Extract request submission from execlists
f0634ef3a719 drm/i915: Extract request suspension from the execlists backend
a5ffb8e4d752 drm/i915: Extract the ability to defer and rerun a request later
a751859ecb72 drm/i915: Fix the iterative dfs for defering requests
48624311bbf0 drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ptr' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/i915_utils.h:462:
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

total: 0 errors, 0 warnings, 1 checks, 19 lines checked
ee5f9ad7eee0 drm/i915: Fair low-latency scheduling
ea38b5a2194f drm/i915/gt: Specify a deadline for the heartbeat
cce02f220b17 drm/i915: Extend the priority boosting for the display with a deadline
307f5103a402 drm/i915: Move common active lists from engine to i915_scheduler
-:198: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#198: FILE: drivers/gpu/drm/i915/i915_scheduler_types.h:107:
+	spinlock_t lock;

total: 0 errors, 0 warnings, 1 checks, 157 lines checked
3fdabb21ae8c drm/i915: Move scheduler queue
115fa74d21c8 drm/i915: Move tasklet from execlists to sched
d968c14536c6 drm/i915/gt: Another tweak for flushing the tasklets
84c52535dbaf Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
fc966b2cd073 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
cd3ce6df8cdc drm/i915/gt: Support creation of 'internal' rings
86d6df08c846 drm/i915/gt: Use client timeline address for seqno writes
413f05d8e17b drm/i915/gt: Infrastructure for ring scheduling
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 916 lines checked
d96ffec133d1 drm/i915/gt: Enable busy-stats for ring-scheduler
f8ed557dd270 drm/i915/gt: Implement ring scheduler for gen6/7
-:68: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#68: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:212:
+				*cs++ = i915_mmio_reg_offset(

-:70: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#70: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:214:
+				*cs++ = _MASKED_BIT_ENABLE(

-:105: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#105: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:249:
+				*cs++ = _MASKED_BIT_DISABLE(

total: 0 errors, 0 warnings, 3 checks, 580 lines checked
323da02de4eb drm/i915/gt: Enable ring scheduling for gen6/7
dc3d8fa55043 drm/i915: Move saturated workload detection back to the context
-:29: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:29: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#29: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 70 lines checked
eea9c98ae924 drm/i915/gt: Skip over completed active execlists, again
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Referenecs: 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")

-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")'
#10: 
Referenecs: 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")

-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 8ab3a3812aa9 ("drm/i915/gt: Incrementally check for rewinding")'
#11: 
References: 8ab3a3812aa9 ("drm/i915/gt: Incrementally check for rewinding")

-:92: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Chris Wilson <ickle@kabylake.alporthouse.com>' != 'Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>'

total: 2 errors, 2 warnings, 0 checks, 69 lines checked
70d710616a47 drm/i915/gt: Support virtual engine queues


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
