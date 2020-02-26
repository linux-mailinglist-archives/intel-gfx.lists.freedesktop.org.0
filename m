Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA7716FB14
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 10:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12F8A6E417;
	Wed, 26 Feb 2020 09:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB8826E409
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 09:43:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20354706-1500050 
 for multiple; Wed, 26 Feb 2020 09:43:16 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 09:43:07 +0000
Message-Id: <20200226094314.1500667-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200226094314.1500667-1-chris@chris-wilson.co.uk>
References: <20200226094314.1500667-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/17] drm/i915/selftests: Add request
 throughput measurement to perf
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Under ideal circumstances, the driver should be able to keep the GPU
fully saturated with work. Measure how close to ideal we get under the
harshest of conditions with no user payload.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/selftests/i915_perf_selftests.h  |   1 +
 drivers/gpu/drm/i915/selftests/i915_request.c | 280 +++++++++++++++++-
 2 files changed, 280 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h b/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
index 3bf7f53e9924..d8da142985eb 100644
--- a/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
+++ b/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
@@ -16,5 +16,6 @@
  * Tests are executed in order by igt/i915_selftest
  */
 selftest(engine_cs, intel_engine_cs_perf_selftests)
+selftest(request, i915_request_perf_selftests)
 selftest(blt, i915_gem_object_blt_perf_selftests)
 selftest(region, intel_memory_region_perf_selftests)
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index f89d9c42f1fa..91f67995f0ac 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -23,6 +23,7 @@
  */
 
 #include <linux/prime_numbers.h>
+#include <linux/pm_qos.h>
 
 #include "gem/i915_gem_pm.h"
 #include "gem/selftests/mock_context.h"
@@ -1233,7 +1234,7 @@ static int live_parallel_engines(void *arg)
 		struct igt_live_test t;
 		unsigned int idx;
 
-		snprintf(name, sizeof(name), "%pS", fn);
+		snprintf(name, sizeof(name), "%ps", *fn);
 		err = igt_live_test_begin(&t, i915, __func__, name);
 		if (err)
 			break;
@@ -1470,3 +1471,280 @@ int i915_request_live_selftests(struct drm_i915_private *i915)
 
 	return i915_subtests(tests, i915);
 }
+
+struct perf_parallel {
+	struct intel_engine_cs *engine;
+	unsigned long count;
+	ktime_t time;
+	ktime_t busy;
+	u64 runtime;
+};
+
+static int switch_to_kernel_sync(struct intel_context *ce, int err)
+{
+	struct i915_request *rq;
+	struct dma_fence *fence;
+
+	rq = intel_engine_create_kernel_request(ce->engine);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	fence = i915_active_fence_get(&ce->timeline->last_request);
+	if (fence) {
+		i915_request_await_dma_fence(rq, fence);
+		dma_fence_put(fence);
+	}
+
+	rq = i915_request_get(rq);
+	i915_request_add(rq);
+	if (i915_request_wait(rq, 0, HZ / 2) < 0 && !err)
+		err = -ETIME;
+	i915_request_put(rq);
+
+	while (!err && !intel_engine_is_idle(ce->engine))
+		intel_engine_flush_submission(ce->engine);
+
+	return err;
+}
+
+static int perf_sync(void *arg)
+{
+	struct perf_parallel *p = arg;
+	struct intel_engine_cs *engine = p->engine;
+	struct intel_context *ce;
+	IGT_TIMEOUT(end_time);
+	unsigned long count;
+	bool busy;
+	int err = 0;
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce))
+		return PTR_ERR(ce);
+
+	err = intel_context_pin(ce);
+	if (err) {
+		intel_context_put(ce);
+		return err;
+	}
+
+	busy = false;
+	if (intel_engine_supports_stats(engine) &&
+	    !intel_enable_engine_stats(engine)) {
+		p->busy = intel_engine_get_busy_time(engine);
+		busy = true;
+	}
+
+	p->time = ktime_get();
+	count = 0;
+	do {
+		struct i915_request *rq;
+
+		rq = i915_request_create(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			break;
+		}
+
+		i915_request_get(rq);
+		i915_request_add(rq);
+
+		err = 0;
+		if (i915_request_wait(rq, 0, HZ / 5) < 0)
+			err = -ETIME;
+		i915_request_put(rq);
+		if (err)
+			break;
+
+		count++;
+	} while (!__igt_timeout(end_time, NULL));
+	p->time = ktime_sub(ktime_get(), p->time);
+
+	if (busy) {
+		p->busy = ktime_sub(intel_engine_get_busy_time(engine),
+				    p->busy);
+		intel_disable_engine_stats(engine);
+	}
+
+	err = switch_to_kernel_sync(ce, err);
+	p->runtime = intel_context_get_total_runtime_ns(ce);
+	p->count = count;
+
+	intel_context_unpin(ce);
+	intel_context_put(ce);
+	return err;
+}
+
+static int perf_many(void *arg)
+{
+	struct perf_parallel *p = arg;
+	struct intel_engine_cs *engine = p->engine;
+	struct intel_context *ce;
+	IGT_TIMEOUT(end_time);
+	unsigned long count;
+	int err = 0;
+	bool busy;
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce))
+		return PTR_ERR(ce);
+
+	err = intel_context_pin(ce);
+	if (err) {
+		intel_context_put(ce);
+		return err;
+	}
+
+	busy = false;
+	if (intel_engine_supports_stats(engine) &&
+	    !intel_enable_engine_stats(engine)) {
+		p->busy = intel_engine_get_busy_time(engine);
+		busy = true;
+	}
+
+	count = 0;
+	p->time = ktime_get();
+	do {
+		struct i915_request *rq;
+
+		rq = i915_request_create(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			break;
+		}
+
+		i915_request_add(rq);
+		count++;
+	} while (!__igt_timeout(end_time, NULL));
+	p->time = ktime_sub(ktime_get(), p->time);
+
+	if (busy) {
+		p->busy = ktime_sub(intel_engine_get_busy_time(engine),
+				    p->busy);
+		intel_disable_engine_stats(engine);
+	}
+
+	err = switch_to_kernel_sync(ce, err);
+	p->runtime = intel_context_get_total_runtime_ns(ce);
+	p->count = count;
+
+	intel_context_unpin(ce);
+	intel_context_put(ce);
+	return err;
+}
+
+static int perf_parallel_engines(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	static int (* const func[])(void *arg) = {
+		perf_sync,
+		perf_many,
+		NULL,
+	};
+	const unsigned int nengines = num_uabi_engines(i915);
+	struct pm_qos_request qos = {};
+	struct intel_engine_cs *engine;
+	int (* const *fn)(void *arg);
+	struct {
+		struct perf_parallel p;
+		struct task_struct *tsk;
+	} *engines;
+	int err = 0;
+
+	engines = kcalloc(nengines, sizeof(*engines), GFP_KERNEL);
+	if (!engines)
+		return -ENOMEM;
+
+	pm_qos_add_request(&qos, PM_QOS_CPU_DMA_LATENCY, 0);
+
+	for (fn = func; *fn; fn++) {
+		char name[KSYM_NAME_LEN];
+		struct igt_live_test t;
+		unsigned int idx;
+
+		snprintf(name, sizeof(name), "%ps", *fn);
+		err = igt_live_test_begin(&t, i915, __func__, name);
+		if (err)
+			break;
+
+		atomic_set(&i915->selftest.counter, nengines);
+
+		idx = 0;
+		for_each_uabi_engine(engine, i915) {
+			intel_engine_pm_get(engine);
+
+			memset(&engines[idx].p, 0, sizeof(engines[idx].p));
+			engines[idx].p.engine = engine;
+
+			engines[idx].tsk = kthread_run(*fn, &engines[idx].p,
+						       "igt:%s", engine->name);
+			if (IS_ERR(engines[idx].tsk)) {
+				err = PTR_ERR(engines[idx].tsk);
+				intel_engine_pm_put(engine);
+				break;
+			}
+			get_task_struct(engines[idx++].tsk);
+		}
+
+		yield(); /* start all threads before we kthread_stop() */
+
+		idx = 0;
+		for_each_uabi_engine(engine, i915) {
+			int status;
+
+			if (IS_ERR(engines[idx].tsk))
+				break;
+
+			status = kthread_stop(engines[idx].tsk);
+			if (status && !err)
+				err = status;
+
+			intel_engine_pm_put(engine);
+			put_task_struct(engines[idx++].tsk);
+		}
+
+		if (igt_live_test_end(&t))
+			err = -EIO;
+		if (err)
+			break;
+
+		idx = 0;
+		for_each_uabi_engine(engine, i915) {
+			struct perf_parallel *p = &engines[idx].p;
+			u64 busy = 100 * ktime_to_ns(p->busy);
+			u64 dt = ktime_to_ns(p->time);
+			int integer, decimal;
+
+			if (dt) {
+				integer = div64_u64(busy, dt);
+				busy -= integer * dt;
+				decimal = div64_u64(100 * busy, dt);
+			} else {
+				integer = 0;
+				decimal = 0;
+			}
+
+			GEM_BUG_ON(engine != p->engine);
+			pr_info("%s %5s: { count:%lu, busy:%d.%02d%%, runtime:%lldms, walltime:%lldms }\n",
+				name, engine->name, p->count, integer, decimal,
+				div_u64(p->runtime, 1000 * 1000),
+				div_u64(ktime_to_ns(p->time), 1000 * 1000));
+			idx++;
+		}
+	}
+
+	pm_qos_remove_request(&qos);
+	kfree(engines);
+	return err;
+}
+
+int i915_request_perf_selftests(struct drm_i915_private *i915)
+{
+	static const struct i915_subtest tests[] = {
+		SUBTEST(perf_parallel_engines),
+	};
+
+	if (intel_gt_is_wedged(&i915->gt))
+		return 0;
+
+	return i915_subtests(tests, i915);
+}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
