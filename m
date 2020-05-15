Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F111D5356
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 17:11:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3AD6E0D7;
	Fri, 15 May 2020 15:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54BE06E0D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 15:11:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21205911-1500050 
 for multiple; Fri, 15 May 2020 16:10:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 May 2020 16:10:27 +0100
Message-Id: <20200515151027.8818-1-chris@chris-wilson.co.uk>
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
---
 drivers/gpu/drm/i915/selftests/i915_request.c | 505 ++++++++++++++++++
 1 file changed, 505 insertions(+)

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 6014e8dfcbb1..94c79066f82a 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -24,13 +24,16 @@
 
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
@@ -1524,6 +1527,507 @@ struct perf_series {
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
+	return sum >> 2;
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
+		cycles = ENGINE_READ_FW(ce->engine, RING_TIMESTAMP);
+		WRITE_ONCE(sema[0], i);
+		wmb();
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
+	pr_err("%s: semaphore response %d cycles, %lluns\n",
+	       ce->engine->name, cycles >> COUNT,
+	       i915_cs_timestamp_ticks_to_ns(ce->engine->i915,
+					     cycles) >> COUNT);
+
+	return 0;
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
+		elapsed[i] = ENGINE_READ_FW(ce->engine, RING_TIMESTAMP);
+		i915_request_add(rq);
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
+	pr_err("%s: idle dispatch latency %d cycles, %lluns\n",
+	       ce->engine->name, cycles >> COUNT,
+	       i915_cs_timestamp_ticks_to_ns(ce->engine->i915,
+					     cycles) >> COUNT);
+
+	return 0;
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
+	i915_sw_fence_commit(submit);
+	intel_engine_flush_submission(ce->engine);
+	heap_fence_put(submit);
+
+	WRITE_ONCE(sema[0], 1);
+	if (wait_for(READ_ONCE(sema[COUNT + 1]), 100)) {
+		intel_gt_set_wedged(ce->engine->gt);
+		return -EIO;
+	}
+
+	for (i = 1; i <= COUNT; i++)
+		elapsed[i - 1] = (sema[i + 1] - sema[i]) << COUNT;
+
+	cycles = trifilter(elapsed);
+	pr_err("%s: inter-request latency %d cycles, %lluns\n",
+	       ce->engine->name, cycles >> COUNT,
+	       i915_cs_timestamp_ticks_to_ns(ce->engine->i915,
+					     cycles) >> COUNT);
+
+	return 0;
+}
+
+static int measure_lite_restore(struct intel_context *ce)
+{
+	u32 *sema = memset32(ce->engine->status_page.addr + 1000, 0, 21);
+	const u32 offset =
+		i915_ggtt_offset(ce->engine->status_page.vma) +
+		offset_in_page(sema);
+	u32 elapsed[COUNT + 1], cycles;
+	u32 *cs;
+	int i;
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
+		intel_engine_flush_submission(ce->engine);
+
+		WRITE_ONCE(sema[0], i - 1);
+		if (i > 1 && wait_for(READ_ONCE(sema[2 * (i - 1)]), 100)) {
+			intel_gt_set_wedged(ce->engine->gt);
+			return -EIO;
+		}
+	}
+
+	WRITE_ONCE(sema[0], i - 1);
+	if (wait_for(READ_ONCE(sema[2 *i - 1]), 500)) {
+		intel_gt_set_wedged(ce->engine->gt);
+		return -EIO;
+	}
+
+	for (i = 1; i <= COUNT; i++)
+		elapsed[i - 1] = (sema[2 * i + 2] - sema[2 * i + 1]) << COUNT;
+
+	cycles = trifilter(elapsed);
+	pr_err("%s: lite restore latency %d cycles, %lluns\n",
+	       ce->engine->name, cycles >> COUNT,
+	       i915_cs_timestamp_ticks_to_ns(ce->engine->i915,
+					     cycles) >> COUNT);
+
+	return 0;
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
+	if (wait_for(READ_ONCE(sema[2 *i - 1]), 500)) {
+		intel_gt_set_wedged(ce->engine->gt);
+		return -EIO;
+	}
+
+	for (i = 1; i <= COUNT; i++)
+		elapsed[i - 1] = (sema[2 * i + 2] - sema[2 * i + 1]) << COUNT;
+
+	cycles = trifilter(elapsed);
+	pr_err("%s: context switch latency %d cycles, %lluns\n",
+	       ce->engine->name, cycles >> COUNT,
+	       i915_cs_timestamp_ticks_to_ns(ce->engine->i915,
+					     cycles) >> COUNT);
+
+	return 0;
+}
+
+static void rps_pin(struct intel_gt *gt)
+{
+	/* Pin the frequency to max */
+	atomic_inc(&gt->rps.num_waiters);
+
+	mutex_lock(&gt->rps.lock);
+	intel_rps_set(&gt->rps, gt->rps.max_freq);
+	mutex_unlock(&gt->rps.lock);
+}
+
+static void rps_unpin(struct intel_gt *gt)
+{
+	atomic_dec(&gt->rps.num_waiters);
+}
+
+static unsigned long engine_heartbeat_disable(struct intel_engine_cs *engine)
+{
+	unsigned long old;
+
+	old = fetch_and_zero(&engine->props.heartbeat_interval_ms);
+
+	intel_engine_pm_get(engine);
+	intel_engine_park_heartbeat(engine);
+
+	return old;
+}
+
+static void engine_heartbeat_enable(struct intel_engine_cs *engine,
+				    unsigned long saved)
+{
+	intel_engine_pm_put(engine);
+
+	engine->props.heartbeat_interval_ms = saved;
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
+		unsigned long saved_heartbeat;
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
+		saved_heartbeat = engine_heartbeat_disable(engine);
+		intel_uncore_forcewake_get(engine->uncore, FORCEWAKE_ALL);
+		rps_pin(engine->gt);
+
+		if (err == 0)
+			err = measure_semaphore_response(ce);
+		if (err == 0)
+			err = measure_idle_dispatch(ce);
+		if (err == 0)
+			err = measure_inter_request(ce);
+		if (err == 0)
+			err = measure_lite_restore(ce);
+		if (err == 0)
+			err = measure_context_switch(ce);
+
+		rps_unpin(engine->gt);
+		intel_uncore_forcewake_put(engine->uncore, FORCEWAKE_ALL);
+		engine_heartbeat_enable(engine, saved_heartbeat);
+
+		intel_context_unpin(ce);
+		intel_context_put(ce);
+		if (err)
+			goto out;
+	}
+
+out:
+	cpu_latency_qos_remove_request(&qos);
+	return err;
+}
+
 static int s_sync0(void *arg)
 {
 	struct perf_series *ps = arg;
@@ -2042,6 +2546,7 @@ static int perf_parallel_engines(void *arg)
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
