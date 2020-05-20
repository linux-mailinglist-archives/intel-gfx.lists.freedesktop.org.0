Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFE41DADAD
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 10:37:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47FD16E5D2;
	Wed, 20 May 2020 08:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 736046E5CF;
 Wed, 20 May 2020 08:37:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5EC70A363B;
 Wed, 20 May 2020 08:37:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 20 May 2020 08:37:18 -0000
Message-ID: <158996383837.30691.4267414047132272450@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200520075503.10388-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200520075503.10388-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/22=5D_drm/i915/gem=3A_Suppress_s?=
 =?utf-8?q?ome_random_warnings?=
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

Series: series starting with [01/22] drm/i915/gem: Suppress some random warnings
URL   : https://patchwork.freedesktop.org/series/77459/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
35b35b313bad drm/i915/gem: Suppress some random warnings
-:62: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!obj->userptr.mm"
#62: FILE: drivers/gpu/drm/i915/gem/i915_gem_userptr.c:238:
+	if (GEM_WARN_ON(obj->userptr.mm == NULL))

total: 0 errors, 0 warnings, 1 checks, 35 lines checked
ec289918ff88 drm/i915/execlists: Shortcircuit queue_prio() for no internal levels
ad7a7cab4515 drm/i915: Avoid using rq->engine after free during i915_fence_release
8ea14b342e49 drm/i915: Move saturated workload detection back to the context
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 68 lines checked
c4839c4c4fe9 drm/i915/gt: Use virtual_engine during execlists_dequeue
f63db413341d drm/i915/gt: Decouple inflight virtual engines
0435401407a9 drm/i915/gt: Resubmit the virtual engine on schedule-out
b72331f639dd drm/i915: Improve execute_cb struct packing
cc0b5daa9c3a dma-buf: Proxy fence, an unsignaled fence placeholder
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:380: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#380: FILE: drivers/dma-buf/st-dma-fence-proxy.c:20:
+	spinlock_t lock;

-:540: WARNING:MEMORY_BARRIER: memory barrier without comment
#540: FILE: drivers/dma-buf/st-dma-fence-proxy.c:180:
+	smp_store_mb(container_of(cb, struct simple_cb, cb)->seen, true);

total: 0 errors, 2 warnings, 1 checks, 1043 lines checked
be1de9ed0950 drm/syncobj: Allow use of dma-fence-proxy
6995a5de6f1d drm/i915/gem: Teach execbuf how to wait on future syncobj
c78b3fceaec2 drm/i915/gem: Allow combining submit-fences with syncobj
44980c2e4806 drm/i915/gt: Declare when we enabled timeslicing
a612c3379605 drm/i915/gt: Use built-in active intel_context reference
1db0d219282e drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
a166cd2383c3 drm/i915: Always defer fenced work to the worker
4d8c9d1e6bf7 drm/i915/gem: Assign context id for async work
d4f5912b32c2 drm/i915: Export a preallocate variant of i915_active_acquire()
32a908f52387 drm/i915/gem: Separate the ww_mutex walker into its own list
-:92: WARNING:LONG_LINE: line over 100 characters
#92: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1811:
+			list_for_each_entry_safe_continue_reverse(unlock, en, &eb->lock, lock_link) {

-:140: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#140: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+		n = list_prev_entry(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:140: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#140: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+		n = list_prev_entry(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:140: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#140: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+		n = list_prev_entry(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

total: 0 errors, 1 warnings, 3 checks, 120 lines checked
93d1d01786b9 drm/i915/gem: Asynchronous GTT unbinding
002b1ada3b2c drm/i915/gem: Bind the fence async for execbuf
b91e0003626c drm/i915: Micro-optimise i915_request_completed()

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
