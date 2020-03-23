Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 452E618F9AD
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 17:28:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 748F46E297;
	Mon, 23 Mar 2020 16:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C2F1B89911;
 Mon, 23 Mar 2020 16:28:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BDFCAA47EB;
 Mon, 23 Mar 2020 16:28:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Mar 2020 16:28:35 -0000
Message-ID: <158498091575.9808.17210015141478141717@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323134348.8513-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200323134348.8513-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/12=5D_drm/i915/selftests=3A_Add_?=
 =?utf-8?q?request_throughput_measurement_to_perf?=
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

Series: series starting with [01/12] drm/i915/selftests: Add request throughput measurement to perf
URL   : https://patchwork.freedesktop.org/series/74974/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c1539761ed10 drm/i915/selftests: Add request throughput measurement to perf
-:96: WARNING:LINE_SPACING: Missing a blank line after declarations
#96: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1519:
+	struct perf_series *ps = arg;
+	IGT_TIMEOUT(end_time);

-:130: WARNING:LINE_SPACING: Missing a blank line after declarations
#130: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1553:
+	struct i915_request *prev = NULL;
+	IGT_TIMEOUT(end_time);

-:165: WARNING:LINE_SPACING: Missing a blank line after declarations
#165: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1588:
+	struct perf_series *ps = arg;
+	IGT_TIMEOUT(end_time);

-:188: WARNING:LINE_SPACING: Missing a blank line after declarations
#188: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1611:
+	struct drm_i915_private *i915 = arg;
+	static int (* const func[])(void *arg) = {

-:196: WARNING:LINE_SPACING: Missing a blank line after declarations
#196: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1619:
+	struct intel_engine_cs *engine;
+	int (* const *fn)(void *arg);

-:325: WARNING:LINE_SPACING: Missing a blank line after declarations
#325: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1748:
+	struct intel_context *ce;
+	IGT_TIMEOUT(end_time);

-:393: WARNING:LINE_SPACING: Missing a blank line after declarations
#393: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1816:
+	struct intel_context *ce;
+	IGT_TIMEOUT(end_time);

-:462: WARNING:LINE_SPACING: Missing a blank line after declarations
#462: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1885:
+	struct intel_context *ce;
+	IGT_TIMEOUT(end_time);

-:518: WARNING:LINE_SPACING: Missing a blank line after declarations
#518: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1941:
+	struct drm_i915_private *i915 = arg;
+	static int (* const func[])(void *arg) = {

-:526: WARNING:LINE_SPACING: Missing a blank line after declarations
#526: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1949:
+	struct intel_engine_cs *engine;
+	int (* const *fn)(void *arg);

-:571: WARNING:YIELD: Using yield() is generally wrong. See yield() kernel-doc (sched/core.c)
#571: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1994:
+		yield(); /* start all threads before we kthread_stop() */

total: 0 errors, 11 warnings, 0 checks, 611 lines checked
030aa96c9843 drm/i915: Wrap i915_active in a simple kreffed struct
c65d3fa2eec2 drm/i915/perf: Schedule oa_config after modifying the contexts
5a79f011558a dma-buf: Prettify typecasts for dma-fence-chain
e6dfb3670cb9 dma-buf: Report signaled links inside dma-fence-chain
eeb9fd4e53b9 dma-buf: Exercise dma-fence-chain under selftests
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
3b5f0d282759 dma-buf: Proxy fence, an unsignaled fence placeholder
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
8f54e0485592 drm/syncobj: Allow use of dma-fence-proxy
23be6793b2d9 drm/i915/gem: Teach execbuf how to wait on future syncobj
9b2b992129d0 drm/i915/gem: Allow combining submit-fences with syncobj
341125247817 drm/i915/gt: Declare when we enabled timeslicing
1342e0cc637a drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
