Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EE422115A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 17:41:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F9C589911;
	Wed, 15 Jul 2020 15:41:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 802026EBA6;
 Wed, 15 Jul 2020 15:41:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79612A011B;
 Wed, 15 Jul 2020 15:41:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Jul 2020 15:41:52 -0000
Message-ID: <159482771246.3436.9582414291388358759@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/66=5D_drm/i915=3A_Reduce_i915=5F?=
 =?utf-8?q?request=2Elock_contention_for_i915=5Frequest=5Fwait_=28rev2=29?=
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

Series: series starting with [01/66] drm/i915: Reduce i915_request.lock contention for i915_request_wait (rev2)
URL   : https://patchwork.freedesktop.org/series/79517/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
130497fc98af drm/i915: Reduce i915_request.lock contention for i915_request_wait
78b2b4227c1a drm/i915: Remove i915_request.lock requirement for execution callbacks
c0b29c38984e drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs
96f54f935986 drm/i915: Add a couple of missing i915_active_fini()
e0279073e5d3 drm/i915: Skip taking acquire mutex for no ref->active callback
74f1c669d951 drm/i915: Export a preallocate variant of i915_active_acquire()
db2f42ce7206 drm/i915: Keep the most recently used active-fence upon discard
3bfed8a701e1 drm/i915: Make the stale cached active node available for any timeline
8d7b14253127 drm/i915: Provide a fastpath for waiting on vma bindings
638a715d2c30 drm/i915: Soften the tasklet flush frequency before waits
5250859a3025 drm/i915: Preallocate stashes for vma page-directories
2747217ec2ad drm/i915: Switch to object allocations for page directories
6bdab21d6597 drm/i915/gem: Don't drop the timeline lock during execbuf
f3c8a75f8f0d drm/i915/gem: Rename execbuf.bind_link to unbound_link
1608dda568ca drm/i915/gem: Break apart the early i915_vma_pin from execbuf object lookup
63d098780e45 drm/i915/gem: Remove the call for no-evict i915_vma_pin
6ac79cc3b262 drm/i915: Add list_for_each_entry_safe_continue_reverse
-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

total: 0 errors, 0 warnings, 3 checks, 12 lines checked
69b95b2f1b58 drm/i915: Always defer fenced work to the worker
339dd5f35caf drm/i915/gem: Assign context id for async work
dbe18ef2f769 drm/i915/gem: Separate the ww_mutex walker into its own list
d6442826e675 drm/i915/gem: Asynchronous GTT unbinding
2ee5a36ee1d9 drm/i915/gem: Bind the fence async for execbuf
2d3e21b38717 drm/i915/gem: Include cmdparser in common execbuf pinning
c180ca0649ab drm/i915/gem: Include secure batch in common execbuf pinning
9040f3b37f3b drm/i915/gem: Reintroduce multiple passes for reloc processing
-:1512: WARNING:MEMORY_BARRIER: memory barrier without comment
#1512: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c:161:
+		wmb();

total: 0 errors, 1 warnings, 0 checks, 1502 lines checked
d3fe2f8baa11 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:59: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#59: 
new file mode 100644

-:354: WARNING:LINE_SPACING: Missing a blank line after declarations
#354: FILE: drivers/gpu/drm/i915/mm/st_acquire_ctx.c:106:
+	const unsigned int total = ARRAY_SIZE(dl->obj);
+	I915_RND_STATE(prng);

-:450: WARNING:YIELD: Using yield() is generally wrong. See yield() kernel-doc (sched/core.c)
#450: FILE: drivers/gpu/drm/i915/mm/st_acquire_ctx.c:202:
+	yield(); /* start all threads before we begin */

total: 0 errors, 3 warnings, 0 checks, 446 lines checked
90ec819f7195 drm/i915/gem: Pull execbuf dma resv under a single critical section
69013a1a8c42 drm/i915/gem: Replace i915_gem_object.mm.mutex with reservation_ww_class
6cb053b52a1e drm/i915: Hold wakeref for the duration of the vma GGTT binding
22e6c1fa7455 drm/i915: Specialise GGTT binding
f89d50b33136 drm/i915/gt: Acquire backing storage for the context
cd9d5d1c7e79 drm/i915/gt: Push the wait for the context to bound to the request
-:198: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#198: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 237 lines checked
35a1391f3c4b drm/i915: Remove unused i915_gem_evict_vm()
8cdadd182cff drm/i915/gt: Decouple completed requests on unwind
c4ccca3c8899 drm/i915/gt: Check for a completed last request once
364ad467bb9c drm/i915/gt: Replace direct submit with direct call to tasklet
a97efde96c6f drm/i915/gt: Free stale request on destroying the virtual engine
28a117fb0f10 drm/i915/gt: Use virtual_engine during execlists_dequeue
655eecd42876 drm/i915/gt: Decouple inflight virtual engines
0782f33abf51 drm/i915/gt: Defer schedule_out until after the next dequeue
9a3abbadb311 drm/i915/gt: Resubmit the virtual engine on schedule-out
c7b81ba5771a drm/i915/gt: Simplify virtual engine handling for execlists_hold()
9bc1aca39d8f drm/i915/gt: ce->inflight updates are now serialised
f0a8817be8e7 drm/i915/gt: Drop atomic for engine->fw_active tracking
f21e9ee6ef05 drm/i915/gt: Extract busy-stats for ring-scheduler
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
d66ffb59c681 drm/i915/gt: Convert stats.active to plain unsigned int
0618152c0ed3 drm/i915: Lift waiter/signaler iterators
000a31affd74 drm/i915: Strip out internal priorities
bce06e971029 drm/i915: Remove I915_USER_PRIORITY_SHIFT
2383c96eac81 drm/i915: Replace engine->schedule() with a known request operation
56ddf5a9a91a drm/i915/gt: Do not suspend bonded requests if one hangs
6423ee0d3c8a drm/i915: Teach the i915_dependency to use a double-lock
53f0f5814c60 drm/i915: Restructure priority inheritance
fffa992d3a28 drm/i915/gt: Remove timeslice suppression
55f8528025f2 drm/i915: Fair low-latency scheduling
-:1568: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1568: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1392 lines checked
c1be9968e1e1 drm/i915/gt: Specify a deadline for the heartbeat
ba8e433eb1ad drm/i915: Replace the priority boosting for the display with a deadline
dea960c9f9bc drm/i915: Move saturated workload detection to the GT
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 82 lines checked
b8ed262e9007 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
84f48ea3e305 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
0c68e10ca35a drm/i915/gt: Support creation of 'internal' rings
e7bfa5f7c2ca drm/i915/gt: Use client timeline address for seqno writes
3e60e3380101 drm/i915/gt: Infrastructure for ring scheduling
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 844 lines checked
eaa788663d0a drm/i915/gt: Implement ring scheduler for gen6/7
-:68: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#68: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:174:
+				*cs++ = i915_mmio_reg_offset(

-:70: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#70: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:176:
+				*cs++ = _MASKED_BIT_ENABLE(

-:105: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#105: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:211:
+				*cs++ = _MASKED_BIT_DISABLE(

total: 0 errors, 0 warnings, 3 checks, 540 lines checked
e0e91286252d drm/i915/gt: Enable ring scheduling for gen6/7
85f3b20e2a32 drm/i915/gem: Remove timeline nesting from snb relocs


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
