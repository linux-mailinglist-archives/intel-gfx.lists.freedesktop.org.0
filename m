Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42ADE1C3B7C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 15:43:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A861E6E3F9;
	Mon,  4 May 2020 13:43:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D16F6E03E;
 Mon,  4 May 2020 13:43:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76084A010F;
 Mon,  4 May 2020 13:43:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 04 May 2020 13:43:31 -0000
Message-ID: <158859981145.5818.5585535706602747120@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504044903.7626-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200504044903.7626-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/22=5D_drm/i915=3A_Allow_some_len?=
 =?utf-8?q?iency_in_PCU_reads_=28rev2=29?=
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

Series: series starting with [01/22] drm/i915: Allow some leniency in PCU reads (rev2)
URL   : https://patchwork.freedesktop.org/series/76885/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3420e18d19f1 drm/i915/gem: Specify address type for chained reloc batches
e515da211062 drm/i915/gem: Implement legacy MI_STORE_DATA_IMM
-:339: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#339: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 562 lines checked
b97355c82125 drm/i915/gt: Small tidy of gen8+ breadcrumb emission
16d136335185 drm/i915: Mark concurrent submissions with a weak-dependency
de29266bc3fa drm/i915/selftests: Repeat the rps clock frequency measurement
-:68: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#68: FILE: drivers/gpu/drm/i915/gt/selftest_rps.c:311:
+				udelay(1000);

total: 0 errors, 0 warnings, 1 checks, 83 lines checked
2c95e99a6959 drm/i915/gt: Stop holding onto the pinned_default_state
3874422ce21d dma-buf: Proxy fence, an unsignaled fence placeholder
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:387: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#387: FILE: drivers/dma-buf/st-dma-fence-proxy.c:20:
+	spinlock_t lock;

-:547: WARNING:MEMORY_BARRIER: memory barrier without comment
#547: FILE: drivers/dma-buf/st-dma-fence-proxy.c:180:
+	smp_store_mb(container_of(cb, struct simple_cb, cb)->seen, true);

total: 0 errors, 2 warnings, 1 checks, 1050 lines checked
490d576eff67 drm/syncobj: Allow use of dma-fence-proxy
b0aa4798a0df drm/i915/gem: Teach execbuf how to wait on future syncobj
33eac422e35d drm/i915/gem: Allow combining submit-fences with syncobj
790bb35fea74 drm/i915/gt: Declare when we enabled timeslicing
d53f22cfe300 drm/i915: Replace the hardcoded I915_FENCE_TIMEOUT
-:111: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#111: 
new file mode 100644

-:173: WARNING:LONG_LINE: line over 100 characters
#173: FILE: drivers/gpu/drm/i915/i915_request.c:1231:
+										       fence->context),

total: 0 errors, 2 warnings, 0 checks, 133 lines checked
961120507200 drm/i915: Drop I915_RESET_TIMEOUT and friends
f09d9b73e50d drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
4326f797fff7 drm/i915: Always defer fenced work to the worker
a22d55e2deae drm/i915/gem: Assign context id for async work
ed2c711193c2 drm/i915: Export a preallocate variant of i915_active_acquire()
be6fb364f8d6 drm/i915/gem: Separate the ww_mutex walker into its own list
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
85b00e9cfc8b drm/i915/gem: Asynchronous GTT unbinding
521d3542c857 drm/i915/gem: Bind the fence async for execbuf

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
