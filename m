Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 504CF1D0A66
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 10:01:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5BB56E9B8;
	Wed, 13 May 2020 08:01:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7A0D96E9B6;
 Wed, 13 May 2020 08:01:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7413CA0078;
 Wed, 13 May 2020 08:01:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 13 May 2020 08:01:40 -0000
Message-ID: <158935690047.25405.13757905846565879648@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200513074809.18194-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200513074809.18194-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/24=5D_drm/i915/gt=3A_Transfer_ol?=
 =?utf-8?q?d_virtual_breadcrumbs_to_irq=5Fworker?=
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

Series: series starting with [01/24] drm/i915/gt: Transfer old virtual breadcrumbs to irq_worker
URL   : https://patchwork.freedesktop.org/series/77206/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cef179c6c753 drm/i915/gt: Transfer old virtual breadcrumbs to irq_worker
d6f1021a3dcb dma-buf: Use atomic_fetch_add() for the context id
a15a684cc4c9 drm/i915: Mark the addition of the initial-breadcrumb in the request
a94b5ee24e05 dma-buf: Proxy fence, an unsignaled fence placeholder
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
82be0c56504c drm/syncobj: Allow use of dma-fence-proxy
773537ae484b drm/i915/gem: Teach execbuf how to wait on future syncobj
fc77d982c314 drm/i915/gem: Allow combining submit-fences with syncobj
897758a943d2 drm/i915/gt: Declare when we enabled timeslicing
266499ff1b75 drm/i915/gem: Remove redundant exec_fence
bf2ca3e56570 drm/i915: Drop no-semaphore boosting
49a593e6bf87 drm/i915: Move saturated workload detection back to the context
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 68 lines checked
eccb2abc67b2 drm/i915: Remove the saturation backoff for HW semaphores
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
References: ca6e56f654e7 ("drm/i915: Disable semaphore busywaits on saturated systems")

-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ca6e56f654e7 ("drm/i915: Disable semaphore busywaits on saturated systems")'
#10: 
References: ca6e56f654e7 ("drm/i915: Disable semaphore busywaits on saturated systems")

total: 1 errors, 1 warnings, 0 checks, 139 lines checked
6bf996a3601d drm/i915/gt: Use built-in active intel_context reference
67e7f9c1fd1b drm/i915: Drop I915_RESET_TIMEOUT and friends
a6ea09974ca5 drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
6cd3a2e3228f drm/i915/selftests: Always call the provided engine->emit_init_breadcrumb
5ab78e0c654c drm/i915/gt: Do not suspend bonded requests if one hangs
c229c3651ca1 drm/i915: Always defer fenced work to the worker
ec1ec75471f6 drm/i915/gem: Assign context id for async work
536b4afc6bcd drm/i915: Export a preallocate variant of i915_active_acquire()
dbb8c079fa73 drm/i915/gem: Separate the ww_mutex walker into its own list
-:92: WARNING:LONG_LINE: line over 100 characters
#92: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1812:
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
f36911bb9551 drm/i915/gem: Asynchronous GTT unbinding
e56800e94599 drm/i915/gem: Bind the fence async for execbuf
4842e8ffd4a0 drm/i915: Show per-engine default property values in sysfs

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
