Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF75175C78
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 14:58:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 656E36E41D;
	Mon,  2 Mar 2020 13:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C1B06E419;
 Mon,  2 Mar 2020 13:58:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24235A0088;
 Mon,  2 Mar 2020 13:58:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 02 Mar 2020 13:58:33 -0000
Message-ID: <158315751314.30645.11916985128321874599@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/22=5D_drm/i915/gem=3A_Consolidat?=
 =?utf-8?q?e_ctx-=3Eengines=5B=5D_release?=
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

Series: series starting with [01/22] drm/i915/gem: Consolidate ctx->engines[] release
URL   : https://patchwork.freedesktop.org/series/74131/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
15d2ef066485 drm/i915/gem: Consolidate ctx->engines[] release
efe30d6b961f drm/i915/gt: Prevent allocation on a banned context
273e8c952a87 drm/i915/gem: Check that the context wasn't closed during setup
a9e51e63509e drm/i915: Drop inspection of execbuf flags during evict
abe716d0c7b1 drm/i915/gem: Extract transient execbuf flags from i915_vma
785f2f840a4b drm/i915/gem: Only call eb_lookup_vma once during execbuf ioctl
4bc4e5b8bf9b drm/i915/perf: Reintroduce wait on OA configuration completion
80532d70b271 drm/i915: Wrap i915_active in a simple kreffed struct
d9379944ec2d drm/i915: Extend i915_request_await_active to use all timelines
c217c503b903 drm/i915/perf: Schedule oa_config after modifying the contexts
44ec5f8e5c7c drm/i915/selftests: Add request throughput measurement to perf
-:90: WARNING:LINE_SPACING: Missing a blank line after declarations
#90: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1515:
+	struct intel_context *ce;
+	IGT_TIMEOUT(end_time);

-:157: WARNING:LINE_SPACING: Missing a blank line after declarations
#157: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1582:
+	struct intel_context *ce;
+	IGT_TIMEOUT(end_time);

-:213: WARNING:LINE_SPACING: Missing a blank line after declarations
#213: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1638:
+	struct drm_i915_private *i915 = arg;
+	static int (* const func[])(void *arg) = {

-:220: WARNING:LINE_SPACING: Missing a blank line after declarations
#220: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1645:
+	struct intel_engine_cs *engine;
+	int (* const *fn)(void *arg);

-:265: WARNING:YIELD: Using yield() is generally wrong. See yield() kernel-doc (sched/core.c)
#265: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1690:
+		yield(); /* start all threads before we kthread_stop() */

total: 0 errors, 5 warnings, 0 checks, 306 lines checked
d92fc6dcd157 drm/i915/execlists: Check the sentinel is alone in the ELSP
304b7730d4f7 drm/i915/execlists: Reduce preempt-to-busy roundtrip delay
ec6462245001 dma-buf: Prettify typecasts for dma-fence-chain
0c794e11ae51 dma-buf: Report signaled links inside dma-fence-chain
7a77040c1c21 dma-buf: Exercise dma-fence-chain under selftests
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
new file mode 100644

-:61: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#61: FILE: drivers/dma-buf/st-dma-fence-chain.c:24:
+	spinlock_t lock;

-:235: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'find_seqno', this function's name, in a string
#235: FILE: drivers/dma-buf/st-dma-fence-chain.c:198:
+		pr_err("Reported %d for find_seqno(0)!\n", err);

-:244: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'find_seqno', this function's name, in a string
#244: FILE: drivers/dma-buf/st-dma-fence-chain.c:207:
+			pr_err("Reported %d for find_seqno(%d:%d)!\n",

-:249: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'find_seqno', this function's name, in a string
#249: FILE: drivers/dma-buf/st-dma-fence-chain.c:212:
+			pr_err("Incorrect fence reported by find_seqno(%d:%d)\n",

-:272: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'find_seqno', this function's name, in a string
#272: FILE: drivers/dma-buf/st-dma-fence-chain.c:235:
+			pr_err("Error not reported for future fence: find_seqno(%d:%d)!\n",

-:286: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'find_seqno', this function's name, in a string
#286: FILE: drivers/dma-buf/st-dma-fence-chain.c:249:
+			pr_err("Incorrect fence reported by find_seqno(%d:%d)\n",

-:737: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'dma_fence_chain', this function's name, in a string
#737: FILE: drivers/dma-buf/st-dma-fence-chain.c:700:
+	pr_info("sizeof(dma_fence_chain)=%zu\n",

total: 0 errors, 7 warnings, 1 checks, 725 lines checked
2f9c8ffce272 dma-buf: Proxy fence, an unsignaled fence placeholder
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:93: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#93: FILE: drivers/dma-buf/dma-fence-proxy.c:18:
+	spinlock_t lock;

-:320: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#320: FILE: drivers/dma-buf/st-dma-fence-proxy.c:20:
+	spinlock_t lock;

-:480: WARNING:MEMORY_BARRIER: memory barrier without comment
#480: FILE: drivers/dma-buf/st-dma-fence-proxy.c:180:
+	smp_store_mb(container_of(cb, struct simple_cb, cb)->seen, true);

total: 0 errors, 2 warnings, 2 checks, 811 lines checked
e95e336bec8e drm/syncobj: Allow use of dma-fence-proxy
36dadb2f23d6 drm/i915/gem: Teach execbuf how to wait on future syncobj
a4595a6bbbfb drm/i915/gem: Allow combining submit-fences with syncobj
0fe67463719f drm/i915/gt: Declare when we enabled timeslicing
9d36cbcd1c36 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
