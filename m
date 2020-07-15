Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 598D1220E13
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 15:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A66536EB5B;
	Wed, 15 Jul 2020 13:27:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6269A6EB26;
 Wed, 15 Jul 2020 13:27:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C505A47EA;
 Wed, 15 Jul 2020 13:27:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Jul 2020 13:27:19 -0000
Message-ID: <159481963935.3438.8722024616788062609@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/66=5D_drm/i915=3A_Reduce_i915=5F?=
 =?utf-8?q?request=2Elock_contention_for_i915=5Frequest=5Fwait?=
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

Series: series starting with [01/66] drm/i915: Reduce i915_request.lock contention for i915_request_wait
URL   : https://patchwork.freedesktop.org/series/79517/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
91bde1c5e935 drm/i915: Reduce i915_request.lock contention for i915_request_wait
13de08637a53 drm/i915: Remove i915_request.lock requirement for execution callbacks
6fa430293a65 drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs
e919aa95911c drm/i915: Add a couple of missing i915_active_fini()
379852a0d374 drm/i915: Skip taking acquire mutex for no ref->active callback
8628c1a1b800 drm/i915: Export a preallocate variant of i915_active_acquire()
383c7cbfc8d5 drm/i915: Keep the most recently used active-fence upon discard
00c92cc2c921 drm/i915: Make the stale cached active node available for any timeline
a938c15b20b3 drm/i915: Provide a fastpath for waiting on vma bindings
63c73191100c drm/i915: Soften the tasklet flush frequency before waits
7c20ceade654 drm/i915: Preallocate stashes for vma page-directories
f62b56fc3c3f drm/i915: Switch to object allocations for page directories
d9e5a405669b drm/i915/gem: Don't drop the timeline lock during execbuf
a488eb2ac0c6 drm/i915/gem: Rename execbuf.bind_link to unbound_link
bf7156efc5fe drm/i915/gem: Break apart the early i915_vma_pin from execbuf object lookup
b336351c77f1 drm/i915/gem: Remove the call for no-evict i915_vma_pin
482c12431055 drm/i915: Add list_for_each_entry_safe_continue_reverse
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
03f0ac6d0aa7 drm/i915: Always defer fenced work to the worker
0ffcc361f56b drm/i915/gem: Assign context id for async work
82ed2ac041bb drm/i915/gem: Separate the ww_mutex walker into its own list
8ed473e9ebb5 drm/i915/gem: Asynchronous GTT unbinding
289e4f21e37d drm/i915/gem: Bind the fence async for execbuf
3994c1315802 drm/i915/gem: Include cmdparser in common execbuf pinning
d59dcbda945a drm/i915/gem: Include secure batch in common execbuf pinning
a2d67581b7cc drm/i915/gem: Reintroduce multiple passes for reloc processing
-:1512: WARNING:MEMORY_BARRIER: memory barrier without comment
#1512: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c:161:
+		wmb();

total: 0 errors, 1 warnings, 0 checks, 1502 lines checked
34f8c8b06fb1 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
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
fe0b2e8f9867 drm/i915/gem: Pull execbuf dma resv under a single critical section
0ca5333286a3 drm/i915/gem: Replace i915_gem_object.mm.mutex with reservation_ww_class
009379133a04 drm/i915: Hold wakeref for the duration of the vma GGTT binding
30196b1778f2 drm/i915: Specialise GGTT binding
7ef75aca0d57 drm/i915/gt: Acquire backing storage for the context
0e4a431e2f5e drm/i915/gt: Push the wait for the context to bound to the request
-:198: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#198: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 237 lines checked
6296fe868377 drm/i915: Remove unused i915_gem_evict_vm()
4ddd5ececb22 drm/i915/gt: Decouple completed requests on unwind
b1fba621ff00 drm/i915/gt: Check for a completed last request once
9fd59fa35cdc drm/i915/gt: Replace direct submit with direct call to tasklet
bf6e26068597 drm/i915/gt: Free stale request on destroying the virtual engine
067ea4919a58 drm/i915/gt: Use virtual_engine during execlists_dequeue
bf89b50c5a71 drm/i915/gt: Decouple inflight virtual engines
ce7f6e2bf488 drm/i915/gt: Defer schedule_out until after the next dequeue
f0e7e4b98971 drm/i915/gt: Resubmit the virtual engine on schedule-out
08be9ee137a1 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
11f1bf554545 drm/i915/gt: ce->inflight updates are now serialised
79b47cba6b9c drm/i915/gt: Drop atomic for engine->fw_active tracking
488c89851fae drm/i915/gt: Extract busy-stats for ring-scheduler
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
ff6f1d863327 drm/i915/gt: Convert stats.active to plain unsigned int
e716fd9ed81d drm/i915: Lift waiter/signaler iterators
657226e71789 drm/i915: Strip out internal priorities
ec6f07931628 drm/i915: Remove I915_USER_PRIORITY_SHIFT
109dafe14a1a drm/i915: Replace engine->schedule() with a known request operation
b8563a88df20 drm/i915/gt: Do not suspend bonded requests if one hangs
64cc265ade5a drm/i915: Teach the i915_dependency to use a double-lock
cdaf10b00d13 drm/i915: Restructure priority inheritance
96a6eabdd904 drm/i915/gt: Remove timeslice suppression
5dbb21007170 drm/i915: Fair low-latency scheduling
-:1570: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1570: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1394 lines checked
e27a7ce87a79 drm/i915/gt: Specify a deadline for the heartbeat
bb9eb77ea30a drm/i915: Replace the priority boosting for the display with a deadline
09a11cb682d1 drm/i915: Move saturated workload detection to the GT
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 82 lines checked
d23e78b07d59 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
6645f5fddc72 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
f28f48cf03af drm/i915/gt: Support creation of 'internal' rings
2b5546dd8abd drm/i915/gt: Use client timeline address for seqno writes
863da3117a20 drm/i915/gt: Infrastructure for ring scheduling
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 844 lines checked
87c21a67aa37 drm/i915/gt: Implement ring scheduler for gen6/7
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
b3c1e59841ea drm/i915/gt: Enable ring scheduling for gen6/7
823526e73ba8 drm/i915/gem: Remove timeline nesting from snb relocs


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
