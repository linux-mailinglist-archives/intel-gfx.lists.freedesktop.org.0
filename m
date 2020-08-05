Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A25B023CAA4
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:41:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06D416E5B0;
	Wed,  5 Aug 2020 12:41:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4BDA36E5AB;
 Wed,  5 Aug 2020 12:41:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46962A47EA;
 Wed,  5 Aug 2020 12:41:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 05 Aug 2020 12:41:22 -0000
Message-ID: <159663128226.4770.17599320251242952241@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Replace_obj-=3Emm=2Elock_with_reservation=5Fww=5Fclass?=
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

Series: Replace obj->mm.lock with reservation_ww_class
URL   : https://patchwork.freedesktop.org/series/80291/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa0ff87bd9b0 drm/i915/gem: Reduce context termination list iteration guard to RCU
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
References: d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits") # rcu protection of timeline->requests

-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits")'
#20: 
References: d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits") # rcu protection of timeline->requests

total: 1 errors, 1 warnings, 0 checks, 65 lines checked
ce73eec0532c drm/i915/gt: Protect context lifetime with RCU
dd5a5156d3f0 drm/i915/gt: Free stale request on destroying the virtual engine
3bc9e76bcdd9 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
4749f15dd1d3 drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
042d0d931dcf drm/i915/gt: Don't cancel the interrupt shadow too early
1ee396796726 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:339: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#339: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:54:
+	spinlock_t signal_lock;

total: 0 errors, 0 warnings, 1 checks, 293 lines checked
98e29e72ccd2 drm/i915/gem: Don't drop the timeline lock during execbuf
f0a442c8ea00 drm/i915/gem: Rename execbuf.bind_link to unbound_link
aae43a649127 drm/i915/gem: Rename the list of relocations to reloc_list
f6729467a31c drm/i915/gem: Move the 'cached' info to i915_execbuffer
cbf2d6b56eea drm/i915/gem: Break apart the early i915_vma_pin from execbuf object lookup
89bf55e09136 drm/i915/gem: Remove the call for no-evict i915_vma_pin
225f65b93b67 drm/i915: Serialise i915_vma_pin_inplace() with i915_vma_unbind()
aeec0677ca2f drm/i915: Add list_for_each_entry_safe_continue_reverse
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

total: 0 errors, 0 warnings, 3 checks, 12 lines checked
7ebf143a2b61 drm/i915: Always defer fenced work to the worker
1105264eb6df drm/i915/gem: Assign context id for async work
b5426c3e8f1e drm/i915/gem: Separate the ww_mutex walker into its own list
418443e4f373 drm/i915/gem: Asynchronous GTT unbinding
6909712422ff drm/i915/gem: Bind the fence async for execbuf
08253ca5d7f8 drm/i915/gem: Include cmdparser in common execbuf pinning
c04ff4d7bd4f drm/i915/gem: Include secure batch in common execbuf pinning
555b300812f8 drm/i915/gem: Manage GTT placement bias (starting offset) explicitly
245b73f9f203 drm/i915/gem: Reintroduce multiple passes for reloc processing
-:1390: WARNING:MEMORY_BARRIER: memory barrier without comment
#1390: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c:174:
+		wmb();

total: 0 errors, 1 warnings, 0 checks, 1401 lines checked
aec7bc6e676a drm/i915: Add an implementation for common reservation_ww_class locking
-:65: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#65: 
new file mode 100644

-:360: WARNING:LINE_SPACING: Missing a blank line after declarations
#360: FILE: drivers/gpu/drm/i915/mm/st_acquire_ctx.c:106:
+	const unsigned int total = ARRAY_SIZE(dl->obj);
+	I915_RND_STATE(prng);

-:456: WARNING:YIELD: Using yield() is generally wrong. See yield() kernel-doc (sched/core.c)
#456: FILE: drivers/gpu/drm/i915/mm/st_acquire_ctx.c:202:
+	yield(); /* start all threads before we begin */

total: 0 errors, 3 warnings, 0 checks, 446 lines checked
6042caeec62a drm/i915/gem: Pull execbuf dma resv under a single critical section
b313eb75c832 drm/i915/gtt: map the PD up front
16aa360bdace drm/i915: Acquire the object lock around page directories
3f782c3a5e03 drm/i915/gem: Replace i915_gem_object.mm.mutex with reservation_ww_class
47862f436ee8 drm/i915: Hold wakeref for the duration of the vma GGTT binding
d6c88f1cc938 drm/i915/gt: Refactor heartbeat request construction and submission
177315485c00 drm/i915: Specialise GGTT binding
49e3f29287fb drm/i915/gt: Acquire backing storage for the context
c516449eb6f5 drm/i915/gt: Push the wait for the context to bound to the request
-:202: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#202: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 237 lines checked
6e88c2dcdd0b drm/i915: Remove unused i915_gem_evict_vm()
5fce5e4b3f18 drm/i915/display: Drop object lock from intel_unpin_fb_vma
ed8fec45359a drm/i915/gem: Delay attach mmu-notifier until we acquire the pinned userptr


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
