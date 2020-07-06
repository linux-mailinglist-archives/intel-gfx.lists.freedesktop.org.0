Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DF12152B2
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 08:28:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6BCB89D53;
	Mon,  6 Jul 2020 06:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 672AF89D52;
 Mon,  6 Jul 2020 06:28:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 60A4FA0019;
 Mon,  6 Jul 2020 06:28:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jul 2020 06:28:08 -0000
Message-ID: <159401688836.17683.16409178541736603513@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200706061926.6687-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/20=5D_drm/i915=3A_Preallocate_st?=
 =?utf-8?q?ashes_for_vma_page-directories?=
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

Series: series starting with [01/20] drm/i915: Preallocate stashes for vma page-directories
URL   : https://patchwork.freedesktop.org/series/79129/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b5c5d0ce6d3d drm/i915: Preallocate stashes for vma page-directories
5ff5ae1fb079 drm/i915: Switch to object allocations for page directories
1da308be5b55 drm/i915/gem: Don't drop the timeline lock during execbuf
a8aa1e74f47e drm/i915/gem: Rename execbuf.bind_link to unbound_link
6779fcaed114 drm/i915/gem: Break apart the early i915_vma_pin from execbuf object lookup
c3cc3ce10691 drm/i915/gem: Remove the call for no-evict i915_vma_pin
acb85ac92a2f drm/i915: Add list_for_each_entry_safe_continue_reverse
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
ed90e5840625 drm/i915: Always defer fenced work to the worker
03e637530b30 drm/i915/gem: Assign context id for async work
fe694efd1728 drm/i915: Export a preallocate variant of i915_active_acquire()
8669de2e382e drm/i915/gem: Separate the ww_mutex walker into its own list
a1fb11db685d drm/i915/gem: Asynchronous GTT unbinding
92aa37aeda01 drm/i915/gem: Bind the fence async for execbuf
6002974eb6ce drm/i915/gem: Include cmdparser in common execbuf pinning
8b519af3185f drm/i915/gem: Include secure batch in common execbuf pinning
3a96506f63d3 drm/i915/gem: Reintroduce multiple passes for reloc processing
-:1434: WARNING:MEMORY_BARRIER: memory barrier without comment
#1434: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c:161:
+		wmb();

total: 0 errors, 1 warnings, 0 checks, 1421 lines checked
2036c3ef6f3e drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
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
0c763806ba4f drm/i915/gem: Pull execbuf dma resv under a single critical section
f3622825131d drm/i915/gem: Replace i915_gem_object.mm.mutex with reservation_ww_class
33bcfafbc4ab drm/i915: Track i915_vma with its own reference counter
-:2081: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#2081: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:254:
+		spinlock_t lock;

-:3963: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#3963: FILE: drivers/gpu/drm/i915/i915_vma.h:392:
+	spinlock_t lock;

-:4210: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4210: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:419:
+						if (offset < hole_start + vma->size)

-:4221: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#4221: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:427:
+						       __func__, p->name, err, npages, prime, offset,

-:4231: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4231: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:444:
+						if (offset + vma->node.size > hole_end)

-:4247: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4247: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:453:
+						if (offset < hole_start + vma->node.size)

-:4259: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4259: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:476:
+						if (offset + vma->node.size > hole_end)

-:4275: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4275: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:485:
+						if (offset < hole_start + vma->node.size)

-:4287: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4287: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:509:
+						if (offset + vma->size >= hole_end)

-:4303: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4303: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:518:
+						if (offset < hole_start + vma->size)

-:4315: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4315: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:541:
+						if (offset + vma->size >= hole_end)

total: 0 errors, 9 warnings, 2 checks, 4801 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
