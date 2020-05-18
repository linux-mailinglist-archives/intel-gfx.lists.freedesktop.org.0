Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD861D7353
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 10:58:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BE26E1F1;
	Mon, 18 May 2020 08:58:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F1E6E1F1
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 08:58:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21226853-1500050 
 for multiple; Mon, 18 May 2020 09:57:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 09:57:24 +0100
Message-Id: <20200518085724.18815-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Measure dispatch latency
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A useful metric of the system's health is how fast we can tell the GPU
to do various actions, so measure our latency.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_request.c | 802 ++++++++++++++++++
 1 file changed, 802 insertions(+)

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 6014e8dfcbb1..f9631526730d 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -24,16 +24,20 @@
 
 #include <linux/prime_numbers.h>
 #include <linux/pm_qos.h>
+#include <linux/sort.h>
 
 #include "gem/i915_gem_pm.h"
 #include "gem/selftests/mock_context.h"
 
+#include "gt/intel_engine_heartbeat.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_requests.h"
 
 #include "i915_random.h"
 #include "i915_selftest.h"
+#include "igt_flush_test.h"
 #include "igt_live_test.h"
 #include "igt_spinner.h"
 #include "lib_sw_fence.h"
@@ -1524,6 +1528,803 @@ struct perf_series {
 	struct intel_context *ce[];
 };
 
+#define COUNT 5
+
+static int cmp_u32(const void *A, const void *B)
+{
+	const u32 *a = A, *b = B;
+
+	return *a - *b;
+}
+
+static u32 trifilter(u32 *a)
+{
+	u64 sum;
+
+	sort(a, COUNT, sizeof(*a), cmp_u32, NULL);
+
+	sum = mul_u32_u32(a[2], 2);
+	sum += a[1];
+	sum += a[3];
+
+	return (sum + 2) >> 2;
+}
+
+static u64 cycles_to_ns(struct intel_engine_cs *engine, u32 cycles)
+{
+	u64 ns = i915_cs_timestamp_ticks_to_ns(engine->i915, cycles);
+
+	return DIV_ROUND_CLOSEST(ns, 1 << COUNT);
+}
+
+static int measure_semaphore_response(struct intel_context *ce)
+{
+	u32 *sema = memset32(ce->engine->status_page.addr + 1000, 0, 21);
+	const u32 offset =
+		i915_ggtt_offset(ce->engine->status_page.vma) +
+		offset_in_page(sema);
+	u32 elapsed[COUNT], cycles;
+	struct i915_request *rq;
+	u32 *cs;
+	int i;
+
+	/*
+	 * Measure how many cycles it takes for the HW to detect the change
+	 * in a semaphore value.
+	 *
+	 *    A: read CS_TIMESTAMP from CPU
+	 *    poke semaphore
+	 *    B: read CS_TIMESTAMP on GPU
+	 *
+	 * Semaphore latency: B - A
+	 */
+
+	rq = i915_request_create(ce);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	cs = intel_ring_begin(rq, 4 + 8 * ARRAY_SIZE(elapsed));
+	if (IS_ERR(cs)) {
+		i915_request_add(rq);
+		return PTR_ERR(cs);
+	}
+
+	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
+	*cs++ = offset;
+	*cs++ = 0;
+	*cs++ = 0xffffffff;
+
+	for (i = 1; i <= ARRAY_SIZE(elapsed); i++) {
+		*cs++ = MI_SEMAPHORE_WAIT |
+			MI_SEMAPHORE_GLOBAL_GTT |
+			MI_SEMAPHORE_POLL |
+			MI_SEMAPHORE_SAD_EQ_SDD;
+		*cs++ = i;
+		*cs++ = offset;
+		*cs++ = 0;
+
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+		*cs++ = ce->engine->mmio_base + 0x358;
+		*cs++ = offset + sizeof(*sema) * i;
+		*cs++ = 0;
+	}
+
+	intel_ring_advance(rq, cs);
+	i915_request_add(rq);
+
+	if (wait_for(READ_ONCE(*sema) == 0xffffffff, 50)) {
+		intel_gt_set_wedged(ce->engine->gt);
+		return -EIO;
+	}
+
+	for (i = 1; i <= ARRAY_SIZE(elapsed); i++) {
+		preempt_disable();
+		cycles = ENGINE_READ_FW(ce->engine, RING_TIMESTAMP);
+		WRITE_ONCE(sema[0], i);
+		wmb(); /* flush the update to the cache, and beyond */
+		preempt_enable();
+
+		if (wait_for(READ_ONCE(sema[i]), 50)) {
+			intel_gt_set_wedged(ce->engine->gt);
+			return -EIO;
+		}
+
+		elapsed[i - 1] = (sema[i] - cycles) << COUNT;
+	}
+
+	cycles = trifilter(elapsed);
+	pr_info("%s: semaphore response %d cycles, %lluns\n",
+		ce->engine->name, cycles >> COUNT,
+		cycles_to_ns(ce->engine, cycles));
+
+	return intel_gt_wait_for_idle(ce->engine->gt, HZ);
+}
+
+static int measure_idle_dispatch(struct intel_context *ce)
+{
+	u32 *sema = memset32(ce->engine->status_page.addr + 1000, 0, 21);
+	const u32 offset =
+		i915_ggtt_offset(ce->engine->status_page.vma) +
+		offset_in_page(sema);
+	u32 elapsed[COUNT], cycles;
+	u32 *cs;
+	int i;
+
+	/*
+	 * Measure how long it takes for us to submit a request while the
+	 * engine is idle, but is resting in our context.
+	 *
+	 *    A: read CS_TIMESTAMP from CPU
+	 *    submit request
+	 *    B: read CS_TIMESTAMP on GPU
+	 *
+	 * Submission latency: B - A
+	 */
+
+	for (i = 0; i < ARRAY_SIZE(elapsed); i++) {
+		struct i915_request *rq;
+		int err;
+
+		err = intel_gt_wait_for_idle(ce->engine->gt, HZ / 2);
+		if (err)
+			return err;
+
+		rq = i915_request_create(ce);
+		if (IS_ERR(rq))
+			return PTR_ERR(rq);
+
+		cs = intel_ring_begin(rq, 4);
+		if (IS_ERR(cs)) {
+			i915_request_add(rq);
+			return PTR_ERR(cs);
+		}
+
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+		*cs++ = ce->engine->mmio_base + 0x358;
+		*cs++ = offset + sizeof(*sema) * i;
+		*cs++ = 0;
+
+		intel_ring_advance(rq, cs);
+
+		preempt_disable();
+		local_bh_disable();
+		elapsed[i] = ENGINE_READ_FW(ce->engine, RING_TIMESTAMP);
+		i915_request_add(rq);
+		local_bh_enable();
+		preempt_enable();
+	}
+
+	for (i = 0; i < ARRAY_SIZE(elapsed); i++) {
+		if (wait_for(READ_ONCE(sema[i]), 50)) {
+			intel_gt_set_wedged(ce->engine->gt);
+			return -EIO;
+		}
+
+		elapsed[i] = (sema[i] - elapsed[i]) << COUNT;
+	}
+
+	cycles = trifilter(elapsed);
+	pr_info("%s: idle dispatch latency %d cycles, %lluns\n",
+		ce->engine->name, cycles >> COUNT,
+		cycles_to_ns(ce->engine, cycles));
+
+	return intel_gt_wait_for_idle(ce->engine->gt, HZ);
+}
+
+static int measure_busy_dispatch(struct intel_context *ce)
+{
+	u32 *sema = memset32(ce->engine->status_page.addr + 1000, 0, 21);
+	const u32 offset =
+		i915_ggtt_offset(ce->engine->status_page.vma) +
+		offset_in_page(sema);
+	u32 elapsed[COUNT + 1], cycles;
+	u32 *cs;
+	int i;
+
+	/*
+	 * Measure how long it takes for us to submit a request while the
+	 * engine is busy, polling on a semaphore in our context. With
+	 * direct submission, this will include the cost of an idle restore.
+	 *
+	 *    A: read CS_TIMESTAMP from CPU
+	 *    submit request
+	 *    B: read CS_TIMESTAMP on GPU
+	 *
+	 * Submission latency: B - A
+	 */
+
+	for (i = 1; i <= ARRAY_SIZE(elapsed); i++) {
+		struct i915_request *rq;
+
+		rq = i915_request_create(ce);
+		if (IS_ERR(rq))
+			return PTR_ERR(rq);
+
+		cs = intel_ring_begin(rq, 12);
+		if (IS_ERR(cs)) {
+			i915_request_add(rq);
+			return PTR_ERR(cs);
+		}
+
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+		*cs++ = ce->engine->mmio_base + 0x358;
+		*cs++ = offset + sizeof(*sema) * i;
+		*cs++ = 0;
+
+		*cs++ = MI_SEMAPHORE_WAIT |
+			MI_SEMAPHORE_GLOBAL_GTT |
+			MI_SEMAPHORE_POLL |
+			MI_SEMAPHORE_SAD_GTE_SDD;
+		*cs++ = i;
+		*cs++ = offset;
+		*cs++ = 0;
+
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+		*cs++ = ce->engine->mmio_base + 0x358;
+		*cs++ = offset + sizeof(*sema) * i;
+		*cs++ = 0;
+
+		intel_ring_advance(rq, cs);
+
+		if (i > 1 && wait_for(READ_ONCE(sema[i - 1]), 500)) {
+			intel_gt_set_wedged(ce->engine->gt);
+			return -EIO;
+		}
+
+		preempt_disable();
+		local_bh_disable();
+		elapsed[i - 1] = ENGINE_READ_FW(ce->engine, RING_TIMESTAMP);
+		i915_request_add(rq);
+		local_bh_enable();
+		WRITE_ONCE(sema[0], i - 1);
+		wmb(); /* flush the update to the cache, and beyond */
+		preempt_enable();
+	}
+	WRITE_ONCE(sema[0], i - 1);
+
+	for (i = 1; i <= COUNT; i++)
+		elapsed[i - 1] = (sema[i] - elapsed[i]) << COUNT;
+
+	cycles = trifilter(elapsed);
+	pr_info("%s: busy dispatch latency %d cycles, %lluns\n",
+		ce->engine->name, cycles >> COUNT,
+		cycles_to_ns(ce->engine, cycles));
+
+	return intel_gt_wait_for_idle(ce->engine->gt, HZ);
+}
+
+static int plug(struct intel_engine_cs *engine, u32 *sema, u32 mode, int value)
+{
+	const u32 offset =
+		i915_ggtt_offset(engine->status_page.vma) +
+		offset_in_page(sema);
+	struct i915_request *rq;
+	u32 *cs;
+
+	rq = i915_request_create(engine->kernel_context);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	cs = intel_ring_begin(rq, 4);
+	if (IS_ERR(cs)) {
+		i915_request_add(rq);
+		return PTR_ERR(cs);
+	}
+
+	*cs++ = MI_SEMAPHORE_WAIT |
+		MI_SEMAPHORE_GLOBAL_GTT |
+		MI_SEMAPHORE_POLL |
+		mode;
+	*cs++ = value;
+	*cs++ = offset;
+	*cs++ = 0;
+
+	intel_ring_advance(rq, cs);
+	i915_request_add(rq);
+
+	return 0;
+}
+
+static int measure_inter_request(struct intel_context *ce)
+{
+	u32 *sema = memset32(ce->engine->status_page.addr + 1000, 0, 21);
+	const u32 offset =
+		i915_ggtt_offset(ce->engine->status_page.vma) +
+		offset_in_page(sema);
+	u32 elapsed[COUNT + 1], cycles;
+	struct i915_sw_fence *submit;
+	int i, err;
+
+	/*
+	 * Measure how long it takes to advance from one request into the
+	 * next. Between each request we flush the GPU caches to memory,
+	 * update the breadcrumbs, and then invalidate those caches.
+	 * We queue up all the requests to be submitted in one batch so
+	 * it should be one set of contiguous measurements.
+	 *
+	 *    A: read CS_TIMESTAMP on GPU
+	 *    advance request
+	 *    B: read CS_TIMESTAMP on GPU
+	 *
+	 * Request latency: B - A
+	 */
+
+	err = plug(ce->engine, sema, MI_SEMAPHORE_SAD_NEQ_SDD, 0);
+	if (err)
+		return err;
+
+	submit = heap_fence_create(GFP_KERNEL);
+	if (!submit) {
+		WRITE_ONCE(sema[0], 1);
+		return -ENOMEM;
+	}
+
+	intel_engine_flush_submission(ce->engine);
+	for (i = 1; i <= ARRAY_SIZE(elapsed); i++) {
+		struct i915_request *rq;
+		u32 *cs;
+
+		rq = i915_request_create(ce);
+		if (IS_ERR(rq)) {
+			WRITE_ONCE(sema[0], 1);
+			return PTR_ERR(rq);
+		}
+
+		err = i915_sw_fence_await_sw_fence_gfp(&rq->submit,
+						       submit,
+						       GFP_KERNEL);
+		if (err < 0) {
+			i915_sw_fence_commit(submit);
+			heap_fence_put(submit);
+			i915_request_add(rq);
+			WRITE_ONCE(sema[0], 1);
+			return err;
+		}
+
+		cs = intel_ring_begin(rq, 4);
+		if (IS_ERR(cs)) {
+			i915_sw_fence_commit(submit);
+			heap_fence_put(submit);
+			i915_request_add(rq);
+			WRITE_ONCE(sema[0], 1);
+			return PTR_ERR(cs);
+		}
+
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+		*cs++ = ce->engine->mmio_base + 0x358;
+		*cs++ = offset + sizeof(*sema) * i;
+		*cs++ = 0;
+
+		intel_ring_advance(rq, cs);
+		i915_request_add(rq);
+	}
+	local_bh_disable();
+	i915_sw_fence_commit(submit);
+	local_bh_enable();
+	intel_engine_flush_submission(ce->engine);
+	heap_fence_put(submit);
+
+	WRITE_ONCE(sema[0], 1);
+	wmb(); /* flush the update to the cache, and beyond */
+
+	if (wait_for(READ_ONCE(sema[COUNT + 1]), 100)) {
+		intel_gt_set_wedged(ce->engine->gt);
+		return -EIO;
+	}
+
+	for (i = 1; i <= COUNT; i++)
+		elapsed[i - 1] = (sema[i + 1] - sema[i]) << COUNT;
+
+	cycles = trifilter(elapsed);
+	pr_info("%s: inter-request latency %d cycles, %lluns\n",
+		ce->engine->name, cycles >> COUNT,
+		cycles_to_ns(ce->engine, cycles));
+
+	return intel_gt_wait_for_idle(ce->engine->gt, HZ);
+}
+
+static int measure_context_switch(struct intel_context *ce)
+{
+	u32 *sema = memset32(ce->engine->status_page.addr + 1000, 0, 21);
+	const u32 offset =
+		i915_ggtt_offset(ce->engine->status_page.vma) +
+		offset_in_page(sema);
+	struct i915_request *fence = NULL;
+	u32 elapsed[COUNT + 1], cycles;
+	int i, j, err;
+	u32 *cs;
+
+	/*
+	 * Measure how long it takes to advance from one request in one
+	 * context to a request in another context. This allows us to
+	 * measure how long the context save/restore take, along with all
+	 * the inter-context setup we require.
+	 *
+	 *    A: read CS_TIMESTAMP on GPU
+	 *    switch context
+	 *    B: read CS_TIMESTAMP on GPU
+	 *
+	 * Context switch latency: B - A
+	 */
+
+	err = plug(ce->engine, sema, MI_SEMAPHORE_SAD_NEQ_SDD, 0);
+	if (err)
+		return err;
+
+	for (i = 1; i <= ARRAY_SIZE(elapsed); i++) {
+		struct intel_context *arr[] = {
+			ce, ce->engine->kernel_context
+		};
+
+		for (j = 0; j < ARRAY_SIZE(arr); j++) {
+			struct i915_request *rq;
+
+			rq = i915_request_create(arr[j]);
+			if (IS_ERR(rq))
+				return PTR_ERR(rq);
+
+			if (fence) {
+				err = i915_request_await_dma_fence(rq,
+								   &fence->fence);
+				if (err) {
+					i915_request_add(rq);
+					return err;
+				}
+			}
+
+			cs = intel_ring_begin(rq, 4);
+			if (IS_ERR(cs)) {
+				i915_request_add(rq);
+				return PTR_ERR(cs);
+			}
+
+			*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+			*cs++ = ce->engine->mmio_base + 0x358;
+			*cs++ = offset +
+				sizeof(*sema) * (ARRAY_SIZE(arr) * i + j);
+			*cs++ = 0;
+
+			intel_ring_advance(rq, cs);
+
+			i915_request_put(fence);
+			fence = i915_request_get(rq);
+
+			i915_request_add(rq);
+		}
+	}
+	i915_request_put(fence);
+	intel_engine_flush_submission(ce->engine);
+
+	WRITE_ONCE(sema[0], 1);
+	wmb(); /* flush the update to the cache, and beyond */
+
+	if (wait_for(READ_ONCE(sema[2 * i - 1]), 500)) {
+		intel_gt_set_wedged(ce->engine->gt);
+		return -EIO;
+	}
+
+	for (i = 1; i <= COUNT; i++)
+		elapsed[i - 1] = (sema[2 * i + 2] - sema[2 * i + 1]) << COUNT;
+
+	cycles = trifilter(elapsed);
+	pr_info("%s: context switch latency %d cycles, %lluns\n",
+		ce->engine->name, cycles >> COUNT,
+		cycles_to_ns(ce->engine, cycles));
+
+	return intel_gt_wait_for_idle(ce->engine->gt, HZ);
+}
+
+static int measure_preemption(struct intel_context *ce)
+{
+	u32 *sema = memset32(ce->engine->status_page.addr + 1000, 0, 21);
+	const u32 offset =
+		i915_ggtt_offset(ce->engine->status_page.vma) +
+		offset_in_page(sema);
+	u32 elapsed[COUNT], cycles;
+	u32 *cs;
+	int i;
+
+	/*
+	 * We measure two latencies while triggering preemption. The first
+	 * latency is how long it takes for us to submit a preempting request.
+	 * The second latency is how it takes for us to return from the
+	 * preemption back to the original context.
+	 *
+	 *    A: read CS_TIMESTAMP from CPU
+	 *    submit preemption
+	 *    B: read CS_TIMESTAMP on GPU (in preempting context)
+	 *    context switch
+	 *    C: read CS_TIMESTAMP on GPU (in original context)
+	 *
+	 * Preemption dispatch latency: B - A
+	 * Preemption switch latency: C - B
+	 */
+
+	if (!intel_engine_has_preemption(ce->engine))
+		return 0;
+
+	for (i = 1; i <= ARRAY_SIZE(elapsed); i++) {
+		struct i915_request *rq;
+
+		rq = i915_request_create(ce);
+		if (IS_ERR(rq))
+			return PTR_ERR(rq);
+
+		cs = intel_ring_begin(rq, 12);
+		if (IS_ERR(cs)) {
+			i915_request_add(rq);
+			return PTR_ERR(cs);
+		}
+
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+		*cs++ = ce->engine->mmio_base + 0x358;
+		*cs++ = offset + sizeof(*sema) * (2 * i + 0);
+		*cs++ = 0;
+
+		*cs++ = MI_SEMAPHORE_WAIT |
+			MI_SEMAPHORE_GLOBAL_GTT |
+			MI_SEMAPHORE_POLL |
+			MI_SEMAPHORE_SAD_GTE_SDD;
+		*cs++ = i;
+		*cs++ = offset;
+		*cs++ = 0;
+
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+		*cs++ = ce->engine->mmio_base + 0x358;
+		*cs++ = offset + sizeof(*sema) * (2 * i + 1);
+		*cs++ = 0;
+
+		intel_ring_advance(rq, cs);
+		i915_request_add(rq);
+
+		if (wait_for(READ_ONCE(sema[2 * i]), 500)) {
+			intel_gt_set_wedged(ce->engine->gt);
+			return -EIO;
+		}
+
+		rq = i915_request_create(ce->engine->kernel_context);
+		if (IS_ERR(rq))
+			return PTR_ERR(rq);
+
+		cs = intel_ring_begin(rq, 8);
+		if (IS_ERR(cs)) {
+			i915_request_add(rq);
+			return PTR_ERR(cs);
+		}
+
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+		*cs++ = ce->engine->mmio_base + 0x358;
+		*cs++ = offset + sizeof(*sema) * (2 * i + 0);
+		*cs++ = 0;
+
+		*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
+		*cs++ = offset;
+		*cs++ = 0;
+		*cs++ = i;
+
+		intel_ring_advance(rq, cs);
+		rq->sched.attr.priority = I915_PRIORITY_BARRIER;
+
+		elapsed[i - 1] = ENGINE_READ_FW(ce->engine, RING_TIMESTAMP);
+		i915_request_add(rq);
+	}
+
+	if (wait_for(READ_ONCE(sema[2 * i - 1]), 500)) {
+		intel_gt_set_wedged(ce->engine->gt);
+		return -EIO;
+	}
+
+	for (i = 1; i <= COUNT; i++)
+		elapsed[i - 1] = (sema[2 * i + 0] - elapsed[i - 1]) << COUNT;
+
+	cycles = trifilter(elapsed);
+	pr_info("%s: preemption dispatch latency %d cycles, %lluns\n",
+		ce->engine->name, cycles >> COUNT,
+		cycles_to_ns(ce->engine, cycles));
+
+	for (i = 1; i <= COUNT; i++)
+		elapsed[i - 1] = (sema[2 * i + 1] - sema[2 * i + 0]) << COUNT;
+
+	cycles = trifilter(elapsed);
+	pr_info("%s: preemption switch latency %d cycles, %lluns\n",
+		ce->engine->name, cycles >> COUNT,
+		cycles_to_ns(ce->engine, cycles));
+
+	return intel_gt_wait_for_idle(ce->engine->gt, HZ);
+}
+
+struct signal_cb {
+	struct dma_fence_cb base;
+	bool seen;
+};
+
+static void signal_cb(struct dma_fence *fence, struct dma_fence_cb *cb)
+{
+	struct signal_cb *s = container_of(cb, typeof(*s), base);
+
+	smp_store_mb(s->seen, true); /* be safe, be strong */
+}
+
+static int measure_completion(struct intel_context *ce)
+{
+	u32 *sema = memset32(ce->engine->status_page.addr + 1000, 0, 21);
+	const u32 offset =
+		i915_ggtt_offset(ce->engine->status_page.vma) +
+		offset_in_page(sema);
+	u32 elapsed[COUNT], cycles;
+	u32 *cs;
+	int i;
+
+	/*
+	 * Measure how long it takes for the signal (interrupt) to be
+	 * sent from the GPU to be processed by the CPU.
+	 *
+	 *    A: read CS_TIMESTAMP on GPU
+	 *    signal
+	 *    B: read CS_TIMESTAMP from CPU
+	 *
+	 * Completion latency: B - A
+	 */
+
+	for (i = 1; i <= ARRAY_SIZE(elapsed); i++) {
+		struct signal_cb cb = { .seen = false };
+		struct i915_request *rq;
+
+		rq = i915_request_create(ce);
+		if (IS_ERR(rq))
+			return PTR_ERR(rq);
+
+		cs = intel_ring_begin(rq, 12);
+		if (IS_ERR(cs)) {
+			i915_request_add(rq);
+			return PTR_ERR(cs);
+		}
+
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+		*cs++ = ce->engine->mmio_base + 0x358;
+		*cs++ = offset + sizeof(*sema) * i;
+		*cs++ = 0;
+
+		*cs++ = MI_SEMAPHORE_WAIT |
+			MI_SEMAPHORE_GLOBAL_GTT |
+			MI_SEMAPHORE_POLL |
+			MI_SEMAPHORE_SAD_EQ_SDD;
+		*cs++ = i;
+		*cs++ = offset;
+		*cs++ = 0;
+
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+		*cs++ = ce->engine->mmio_base + 0x358;
+		*cs++ = offset + sizeof(*sema) * i;
+		*cs++ = 0;
+
+		intel_ring_advance(rq, cs);
+
+		dma_fence_add_callback(&rq->fence, &cb.base, signal_cb);
+
+		local_bh_disable();
+		i915_request_add(rq);
+		local_bh_enable();
+
+		if (wait_for(READ_ONCE(sema[i]), 50)) {
+			intel_gt_set_wedged(ce->engine->gt);
+			return -EIO;
+		}
+
+		preempt_disable();
+		WRITE_ONCE(sema[0], i);
+		wmb();
+		while (!READ_ONCE(cb.seen))
+			cpu_relax();
+
+		elapsed[i - 1] = ENGINE_READ_FW(ce->engine, RING_TIMESTAMP);
+		preempt_enable();
+	}
+
+	for (i = 0; i < ARRAY_SIZE(elapsed); i++)
+		elapsed[i] = (elapsed[i] - sema[i + 1]) << COUNT;
+
+	cycles = trifilter(elapsed);
+	pr_info("%s: completion latency %d cycles, %lluns\n",
+		ce->engine->name, cycles >> COUNT,
+		cycles_to_ns(ce->engine, cycles));
+
+	return intel_gt_wait_for_idle(ce->engine->gt, HZ);
+}
+
+static void rps_pin(struct intel_gt *gt)
+{
+	/* Pin the frequency to max */
+	atomic_inc(&gt->rps.num_waiters);
+	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
+
+	mutex_lock(&gt->rps.lock);
+	intel_rps_set(&gt->rps, gt->rps.max_freq);
+	mutex_unlock(&gt->rps.lock);
+}
+
+static void rps_unpin(struct intel_gt *gt)
+{
+	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
+	atomic_dec(&gt->rps.num_waiters);
+}
+
+static void engine_heartbeat_disable(struct intel_engine_cs *engine)
+{
+	engine->props.heartbeat_interval_ms = 0;
+
+	intel_engine_pm_get(engine);
+	intel_engine_park_heartbeat(engine);
+}
+
+static void engine_heartbeat_enable(struct intel_engine_cs *engine)
+{
+	intel_engine_pm_put(engine);
+
+	engine->props.heartbeat_interval_ms =
+		engine->defaults.heartbeat_interval_ms;
+}
+
+static int perf_request_latency(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	struct intel_engine_cs *engine;
+	struct pm_qos_request qos;
+	int err = 0;
+
+	if (INTEL_GEN(i915) < 8) /* per-engine CS timestamp, semaphores */
+		return 0;
+
+	cpu_latency_qos_add_request(&qos, 0); /* disable cstates */
+
+	for_each_uabi_engine(engine, i915) {
+		struct intel_context *ce;
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce))
+			goto out;
+
+		err = intel_context_pin(ce);
+		if (err) {
+			intel_context_put(ce);
+			goto out;
+		}
+
+		engine_heartbeat_disable(engine);
+		rps_pin(engine->gt);
+
+		if (err == 0)
+			err = measure_semaphore_response(ce);
+		if (err == 0)
+			err = measure_idle_dispatch(ce);
+		if (err == 0)
+			err = measure_busy_dispatch(ce);
+		if (err == 0)
+			err = measure_inter_request(ce);
+		if (err == 0)
+			err = measure_context_switch(ce);
+		if (err == 0)
+			err = measure_preemption(ce);
+		if (err == 0)
+			err = measure_completion(ce);
+
+		rps_unpin(engine->gt);
+		engine_heartbeat_enable(engine);
+
+		intel_context_unpin(ce);
+		intel_context_put(ce);
+		if (err)
+			goto out;
+	}
+
+out:
+	if (igt_flush_test(i915))
+		err = -EIO;
+
+	cpu_latency_qos_remove_request(&qos);
+	return err;
+}
+
 static int s_sync0(void *arg)
 {
 	struct perf_series *ps = arg;
@@ -2042,6 +2843,7 @@ static int perf_parallel_engines(void *arg)
 int i915_request_perf_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(perf_request_latency),
 		SUBTEST(perf_series_engines),
 		SUBTEST(perf_parallel_engines),
 	};
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
