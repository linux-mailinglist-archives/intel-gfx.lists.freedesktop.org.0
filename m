Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7262D17C7AA
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 22:13:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B1FE6E50E;
	Fri,  6 Mar 2020 21:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD0236E50D;
 Fri,  6 Mar 2020 21:13:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C55ABA00C7;
 Fri,  6 Mar 2020 21:13:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 06 Mar 2020 21:13:47 -0000
Message-ID: <158352922777.3082.2744878829079687010@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/17=5D_drm/i915/selftests=3A_Appl?=
 =?utf-8?q?y_a_heavy_handed_flush_to_i915=5Factive?=
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

Series: series starting with [01/17] drm/i915/selftests: Apply a heavy handed flush to i915_active
URL   : https://patchwork.freedesktop.org/series/74392/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
982908c93abd drm/i915/selftests: Apply a heavy handed flush to i915_active
031f94155df6 drm/i915/execlists: Enable timeslice on partial virtual engine dequeue
9b61d8749081 drm/i915: Improve the start alignment of bonded pairs
5d9fda3690f4 drm/i915: Tweak scheduler's kick_submission()
c0d1c65cb89a drm/i915: Wrap i915_active in a simple kreffed struct
3109c8f9d4d0 drm/i915: Extend i915_request_await_active to use all timelines
5ae4e5feccba drm/i915/perf: Schedule oa_config after modifying the contexts
d0db810d00b0 drm/i915/selftests: Add request throughput measurement to perf
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
0a74ccdc875c dma-buf: Prettify typecasts for dma-fence-chain
3702ebf022c1 dma-buf: Report signaled links inside dma-fence-chain
e3df6c598dbd dma-buf: Exercise dma-fence-chain under selftests
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
dfcab52a6de6 dma-buf: Proxy fence, an unsignaled fence placeholder
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:93: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#93: FILE: drivers/dma-buf/dma-fence-proxy.c:18:
+	spinlock_t lock;

-:321: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#321: FILE: drivers/dma-buf/st-dma-fence-proxy.c:20:
+	spinlock_t lock;

-:481: WARNING:MEMORY_BARRIER: memory barrier without comment
#481: FILE: drivers/dma-buf/st-dma-fence-proxy.c:180:
+	smp_store_mb(container_of(cb, struct simple_cb, cb)->seen, true);

total: 0 errors, 2 warnings, 2 checks, 852 lines checked
72c5da66b118 drm/syncobj: Allow use of dma-fence-proxy
2bf6c69d342d drm/i915/gem: Teach execbuf how to wait on future syncobj
e7ace1917afa drm/i915/gem: Allow combining submit-fences with syncobj
232c8948625d drm/i915/gt: Declare when we enabled timeslicing
62e2ea9500a8 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
