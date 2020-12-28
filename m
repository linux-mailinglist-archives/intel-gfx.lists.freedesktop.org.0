Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 338D42E6487
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Dec 2020 16:53:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C715E89A14;
	Mon, 28 Dec 2020 15:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A443A899C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Dec 2020 15:52:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23448200-1500050 
 for multiple; Mon, 28 Dec 2020 15:52:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Dec 2020 15:51:57 +0000
Message-Id: <20201228155229.9516-22-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201228155229.9516-1-chris@chris-wilson.co.uk>
References: <20201228155229.9516-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/54] drm/i915/selftests: Exercise priority
 inheritance around an engine loop
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

Exercise rescheduling priority inheritance around a sequence of requests
that wrap around all the engines.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/selftests/i915_scheduler.c   | 219 ++++++++++++++++++
 1 file changed, 219 insertions(+)

diff --git a/drivers/gpu/drm/i915/selftests/i915_scheduler.c b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
index cb67de304aeb..e6910f4c429d 100644
--- a/drivers/gpu/drm/i915/selftests/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
@@ -7,6 +7,7 @@
 
 #include "gt/intel_context.h"
 #include "gt/intel_gpu_commands.h"
+#include "gt/intel_ring.h"
 #include "gt/selftest_engine_heartbeat.h"
 #include "selftests/igt_spinner.h"
 #include "selftests/i915_random.h"
@@ -512,10 +513,228 @@ static int igt_priority_chains(void *arg)
 	return igt_schedule_chains(arg, igt_priority);
 }
 
+static struct i915_request *
+__write_timestamp(struct intel_engine_cs *engine,
+		  struct drm_i915_gem_object *obj,
+		  int slot,
+		  struct i915_request *prev)
+{
+	struct i915_request *rq = ERR_PTR(-EINVAL);
+	struct intel_context *ce;
+	struct i915_vma *vma;
+	int err = 0;
+	u32 *cs;
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce))
+		return ERR_CAST(ce);
+
+	vma = i915_vma_instance(obj, ce->vm, NULL);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto out_ce;
+	}
+
+	err = i915_vma_pin(vma, 0, 0, PIN_USER);
+	if (err)
+		goto out_ce;
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out_unpin;
+	}
+
+	i915_vma_lock(vma);
+	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
+	i915_vma_unlock(vma);
+	if (err)
+		goto out_request;
+
+	if (prev) {
+		err = i915_request_await_dma_fence(rq, &prev->fence);
+		if (err)
+			goto out_request;
+	}
+
+	if (engine->emit_init_breadcrumb) {
+		err = engine->emit_init_breadcrumb(rq);
+		if (err)
+			goto out_request;
+	}
+
+	cs = intel_ring_begin(rq, 4);
+	if (IS_ERR(cs)) {
+		err = PTR_ERR(cs);
+		goto out_request;
+	}
+
+	*cs++ = MI_STORE_REGISTER_MEM_GEN8;
+	*cs++ = i915_mmio_reg_offset(RING_TIMESTAMP(engine->mmio_base));
+	*cs++ = lower_32_bits(vma->node.start) + sizeof(u32) * slot;
+	*cs++ = upper_32_bits(vma->node.start);
+	intel_ring_advance(rq, cs);
+
+	i915_request_get(rq);
+out_request:
+	i915_request_add(rq);
+out_unpin:
+	i915_vma_unpin(vma);
+out_ce:
+	intel_context_put(ce);
+	i915_request_put(prev);
+	return err ? ERR_PTR(err) : rq;
+}
+
+static struct i915_request *create_spinner(struct drm_i915_private *i915,
+					   struct igt_spinner *spin)
+{
+	struct intel_engine_cs *engine;
+
+	for_each_uabi_engine(engine, i915) {
+		struct intel_context *ce;
+		struct i915_request *rq;
+
+		if (igt_spinner_init(spin, engine->gt))
+			return ERR_PTR(-ENOMEM);
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce))
+			return ERR_CAST(ce);
+
+		rq = igt_spinner_create_request(spin, ce, MI_NOOP);
+		intel_context_put(ce);
+		if (rq == ERR_PTR(-ENODEV))
+			continue;
+		if (IS_ERR(rq))
+			return rq;
+
+		i915_request_get(rq);
+		i915_request_add(rq);
+		return rq;
+	}
+
+	return ERR_PTR(-ENODEV);
+}
+
+static int __igt_schedule_cycle(struct drm_i915_private *i915,
+				bool (*fn)(struct i915_request *rq,
+					   unsigned long v, unsigned long e))
+{
+	struct intel_engine_cs *engine;
+	struct drm_i915_gem_object *obj;
+	struct igt_spinner spin;
+	struct i915_request *rq;
+	unsigned long count, n;
+	u32 *time, last;
+	int err;
+
+	/*
+	 * Queue a bunch of ordered requests (each waiting on the previous)
+	 * around the engines a couple of times. Each request will write
+	 * the timestamp it executes at into the scratch, with the expectation
+	 * that the timestamp will be in our desired execution order.
+	 */
+
+	if (INTEL_GEN(i915) < 8)
+		return 0;
+
+	obj = i915_gem_object_create_internal(i915, SZ_64K);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
+
+	time = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	if (IS_ERR(time)) {
+		err = PTR_ERR(time);
+		goto out_obj;
+	}
+
+	rq = create_spinner(i915, &spin);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out_obj;
+	}
+
+	err = 0;
+	count = 0;
+	for_each_uabi_engine(engine, i915) {
+		if (!intel_engine_has_scheduler(engine))
+			continue;
+
+		rq = __write_timestamp(engine, obj, count, rq);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			break;
+		}
+
+		count++;
+	}
+	for_each_uabi_engine(engine, i915) {
+		if (!intel_engine_has_scheduler(engine))
+			continue;
+
+		rq = __write_timestamp(engine, obj, count, rq);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			break;
+		}
+
+		count++;
+	}
+	GEM_BUG_ON(count * sizeof(u32) > obj->base.size);
+	if (err || !count)
+		goto out_spin;
+
+	fn(rq, count + 1, count);
+	igt_spinner_end(&spin);
+
+	if (i915_request_wait(rq, 0, HZ / 2) < 0) {
+		err = -ETIME;
+		goto out_request;
+	}
+
+	last = time[0];
+	for (n = 1; n < count; n++) {
+		if (i915_seqno_passed(last, time[n])) {
+			pr_err("Timestamp[%lu] %x before previous %x\n",
+			       n, time[n], last);
+			err = -EINVAL;
+			break;
+		}
+		last = time[n];
+	}
+
+out_request:
+	i915_request_put(rq);
+out_spin:
+	igt_spinner_fini(&spin);
+out_obj:
+	i915_gem_object_put(obj);
+	return 0;
+}
+
+static bool noop(struct i915_request *rq, unsigned long v, unsigned long e)
+{
+	return true;
+}
+
+static int igt_schedule_cycle(void *arg)
+{
+	return __igt_schedule_cycle(arg, noop);
+}
+
+static int igt_priority_cycle(void *arg)
+{
+	return __igt_schedule_cycle(arg, igt_priority);
+}
+
 int i915_scheduler_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(igt_priority_chains),
+
+		SUBTEST(igt_schedule_cycle),
+		SUBTEST(igt_priority_cycle),
 	};
 
 	return i915_subtests(tests, i915);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
