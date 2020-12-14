Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E3F2D9801
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 13:31:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C66B899AB;
	Mon, 14 Dec 2020 12:31:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 167148949C
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 12:31:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23319642-1500050 
 for multiple; Mon, 14 Dec 2020 12:31:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 12:31:25 +0000
Message-Id: <20201214123126.9777-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Individual request cancellation
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

Currently, we cancel outstanding requests within a context when the
context is closed. We may also want to cancel individual requests using
the same graceful preemption mechanism.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |   1 +
 .../drm/i915/gt/intel_execlists_submission.c  |   9 +-
 drivers/gpu/drm/i915/i915_request.c           |  62 ++++++-
 drivers/gpu/drm/i915/i915_request.h           |   4 +-
 drivers/gpu/drm/i915/selftests/i915_request.c | 170 ++++++++++++++++++
 5 files changed, 240 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 9060385cd69e..351c3431786d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -267,6 +267,7 @@ int intel_engine_pulse(struct intel_engine_cs *engine)
 		mutex_unlock(&ce->timeline->mutex);
 	}
 
+	intel_engine_flush_submission(engine);
 	intel_engine_pm_put(engine);
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index dcecc2887891..fd3b170ec4ff 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1309,6 +1309,11 @@ static void intel_context_update_runtime(struct intel_context *ce)
 	ce->runtime.total += dt;
 }
 
+static bool bad_request(const struct i915_request *rq)
+{
+	return rq->fence.error && i915_request_started(rq);
+}
+
 static inline struct intel_engine_cs *
 __execlists_schedule_in(struct i915_request *rq)
 {
@@ -1317,7 +1322,7 @@ __execlists_schedule_in(struct i915_request *rq)
 
 	intel_context_get(ce);
 
-	if (unlikely(intel_context_is_banned(ce)))
+	if (unlikely(intel_context_is_banned(ce) || bad_request(rq)))
 		reset_active(rq, engine);
 
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
@@ -2008,7 +2013,7 @@ static unsigned long active_preempt_timeout(struct intel_engine_cs *engine,
 		return 0;
 
 	/* Force a fast reset for terminated contexts (ignoring sysfs!) */
-	if (unlikely(intel_context_is_banned(rq->context)))
+	if (unlikely(intel_context_is_banned(rq->context) || bad_request(rq)))
 		return 1;
 
 	return READ_ONCE(engine->props.preempt_timeout_ms);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index a9db1376b996..45e53001e386 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -33,6 +33,9 @@
 #include "gem/i915_gem_context.h"
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_context.h"
+#include "gt/intel_engine.h"
+#include "gt/intel_engine_heartbeat.h"
+#include "gt/intel_reset.h"
 #include "gt/intel_ring.h"
 #include "gt/intel_rps.h"
 
@@ -498,20 +501,22 @@ void __i915_request_skip(struct i915_request *rq)
 	rq->infix = rq->postfix;
 }
 
-void i915_request_set_error_once(struct i915_request *rq, int error)
+bool i915_request_set_error_once(struct i915_request *rq, int error)
 {
 	int old;
 
 	GEM_BUG_ON(!IS_ERR_VALUE((long)error));
 
 	if (i915_request_signaled(rq))
-		return;
+		return false;
 
 	old = READ_ONCE(rq->fence.error);
 	do {
 		if (fatal_error(old))
-			return;
+			return false;
 	} while (!try_cmpxchg(&rq->fence.error, &old, error));
+
+	return true;
 }
 
 bool __i915_request_submit(struct i915_request *request)
@@ -669,6 +674,57 @@ void i915_request_unsubmit(struct i915_request *request)
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
+static struct intel_engine_cs *active_engine(struct i915_request *rq)
+{
+	struct intel_engine_cs *engine, *locked;
+
+	locked = READ_ONCE(rq->engine);
+	spin_lock_irq(&locked->active.lock);
+	while (unlikely(locked != (engine = READ_ONCE(rq->engine)))) {
+		spin_unlock(&locked->active.lock);
+		locked = engine;
+		spin_lock(&locked->active.lock);
+	}
+
+	engine = NULL;
+	if (i915_request_is_active(rq) && !i915_request_completed(rq))
+		engine = locked;
+
+	spin_unlock_irq(&locked->active.lock);
+
+	return engine;
+}
+
+static void __cancel_request(struct i915_request *rq)
+{
+	struct intel_engine_cs *engine = active_engine(rq);
+
+	if (engine && intel_engine_pulse(engine))
+		intel_gt_handle_error(engine->gt, engine->mask, 0,
+				      "request cancellation by %s",
+				      current->comm);
+}
+
+void i915_request_cancel(struct i915_request *rq, int error)
+{
+	if (!i915_request_set_error_once(rq, error))
+		return;
+
+	if (i915_sw_fence_signaled(&rq->submit)) {
+		struct i915_dependency *p;
+
+		for_each_waiter(p, rq) {
+			struct i915_request *w =
+				container_of(p->waiter, typeof(*w), sched);
+
+			/* Recursion is bounded by the number of engines */
+			i915_request_cancel(w, error);
+		}
+	}
+
+	__cancel_request(rq);
+}
+
 static int __i915_sw_fence_call
 submit_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 {
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 92e4320c50c4..692e302047f9 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -309,7 +309,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp);
 struct i915_request * __must_check
 i915_request_create(struct intel_context *ce);
 
-void i915_request_set_error_once(struct i915_request *rq, int error);
+bool i915_request_set_error_once(struct i915_request *rq, int error);
 void __i915_request_skip(struct i915_request *rq);
 
 struct i915_request *__i915_request_commit(struct i915_request *request);
@@ -364,6 +364,8 @@ void i915_request_submit(struct i915_request *request);
 void __i915_request_unsubmit(struct i915_request *request);
 void i915_request_unsubmit(struct i915_request *request);
 
+void i915_request_cancel(struct i915_request *rq, int error);
+
 long i915_request_wait(struct i915_request *rq,
 		       unsigned int flags,
 		       long timeout)
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index e424a6d1a68c..cdd0c34e4f62 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -608,6 +608,175 @@ static int live_nop_request(void *arg)
 	return err;
 }
 
+static int __cancel_inactive(struct intel_engine_cs *engine)
+{
+	struct intel_context *ce;
+	struct igt_spinner spin;
+	struct i915_request *rq;
+	int err = 0;
+
+	if (igt_spinner_init(&spin, engine->gt))
+		return -ENOMEM;
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce)) {
+		err = PTR_ERR(ce);
+		goto out_spin;
+	}
+
+	rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out_ce;
+	}
+
+	pr_debug("%s: Cancelling inactive request\n", engine->name);
+	i915_request_cancel(rq, -EINTR);
+	i915_request_add(rq);
+
+	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
+		struct drm_printer p = drm_info_printer(engine->i915->drm.dev);
+
+		pr_err("Failed to cancel inactive request\n");
+		intel_engine_dump(engine, &p, "%s\n", engine->name);
+		err = -ETIME;
+		goto out_ce;
+	}
+
+	if (rq->fence.error != -EINTR)
+		err = -EINVAL;
+
+out_ce:
+	intel_context_put(ce);
+out_spin:
+	igt_spinner_fini(&spin);
+	return err;
+}
+
+static int __cancel_active(struct intel_engine_cs *engine)
+{
+	struct intel_context *ce;
+	struct igt_spinner spin;
+	struct i915_request *rq;
+	int err = 0;
+
+	if (igt_spinner_init(&spin, engine->gt))
+		return -ENOMEM;
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce)) {
+		err = PTR_ERR(ce);
+		goto out_spin;
+	}
+
+	rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out_ce;
+	}
+
+	pr_debug("%s: Cancelling active request\n", engine->name);
+	i915_request_add(rq);
+	i915_request_cancel(rq, -EINTR);
+
+	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
+		struct drm_printer p = drm_info_printer(engine->i915->drm.dev);
+
+		pr_err("Failed to cancel active request\n");
+		intel_engine_dump(engine, &p, "%s\n", engine->name);
+		err = -ETIME;
+		goto out_ce;
+	}
+
+	if (rq->fence.error != -EINTR)
+		err = -EINVAL;
+
+out_ce:
+	intel_context_put(ce);
+out_spin:
+	igt_spinner_fini(&spin);
+	return err;
+}
+
+static int __cancel_completed(struct intel_engine_cs *engine)
+{
+	struct intel_context *ce;
+	struct igt_spinner spin;
+	struct i915_request *rq;
+	int err = 0;
+
+	if (igt_spinner_init(&spin, engine->gt))
+		return -ENOMEM;
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce)) {
+		err = PTR_ERR(ce);
+		goto out_spin;
+	}
+
+	rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out_ce;
+	}
+	igt_spinner_end(&spin);
+	i915_request_add(rq);
+
+	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
+		err = -ETIME;
+		goto out_ce;
+	}
+
+	pr_debug("%s: Cancelling completed request\n", engine->name);
+	i915_request_cancel(rq, -EINTR);
+	if (rq->fence.error)
+		err = -EINVAL;
+
+out_ce:
+	intel_context_put(ce);
+out_spin:
+	igt_spinner_fini(&spin);
+	return err;
+}
+
+
+static int live_cancel_request(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	struct intel_engine_cs *engine;
+
+	/*
+	 * Check cancellation of requests. We expect to be able to immediately
+	 * cancel active requests, even if they are currently on the GPU.
+	 */
+
+	for_each_uabi_engine(engine, i915) {
+		struct igt_live_test t;
+		int err, err2;
+
+		if (!intel_engine_has_preemption(engine))
+			continue;
+
+		err = igt_live_test_begin(&t, i915, __func__, engine->name);
+		if (err)
+			return err;
+
+		err = __cancel_inactive(engine);
+		if (err == 0)
+			err = __cancel_active(engine);
+		if (err == 0)
+			err = __cancel_completed(engine);
+
+		err2 = igt_live_test_end(&t);
+		if (err)
+			return err;
+		if (err2)
+			return err2;
+	}
+
+	return 0;
+}
+
 static struct i915_vma *empty_batch(struct drm_i915_private *i915)
 {
 	struct drm_i915_gem_object *obj;
@@ -1485,6 +1654,7 @@ int i915_request_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_sequential_engines),
 		SUBTEST(live_parallel_engines),
 		SUBTEST(live_empty_request),
+		SUBTEST(live_cancel_request),
 		SUBTEST(live_breadcrumbs_smoketest),
 	};
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
