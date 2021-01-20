Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 571FC2FCFFA
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 13:22:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1D796E3E3;
	Wed, 20 Jan 2021 12:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A3826E417
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 12:22:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23649219-1500050 
 for multiple; Wed, 20 Jan 2021 12:22:17 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Jan 2021 12:21:59 +0000
Message-Id: <20210120122205.2808-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210120122205.2808-1-chris@chris-wilson.co.uk>
References: <20210120122205.2808-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/10] drm/i915: Remove I915_USER_PRIORITY_SHIFT
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

As we do not have any internal priority levels, the priority can be set
directed from the user values.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  6 +--
 .../i915/gem/selftests/i915_gem_object_blt.c  |  4 +-
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  | 10 ++---
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 44 +++++++------------
 drivers/gpu/drm/i915/i915_priolist_types.h    |  3 --
 drivers/gpu/drm/i915/i915_scheduler.c         |  1 -
 7 files changed, 24 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7373f54b216e..6f04f85812fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -13543,9 +13543,7 @@ int
 intel_prepare_plane_fb(struct drm_plane *_plane,
 		       struct drm_plane_state *_new_plane_state)
 {
-	struct i915_sched_attr attr = {
-		.priority = I915_USER_PRIORITY(I915_PRIORITY_DISPLAY),
-	};
+	struct i915_sched_attr attr = { .priority = I915_PRIORITY_DISPLAY };
 	struct intel_plane *plane = to_intel_plane(_plane);
 	struct intel_plane_state *new_plane_state =
 		to_intel_plane_state(_new_plane_state);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 4d2f40cf237b..61a7360c4d9a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -679,7 +679,7 @@ __create_context(struct drm_i915_private *i915)
 
 	kref_init(&ctx->ref);
 	ctx->i915 = i915;
-	ctx->sched.priority = I915_USER_PRIORITY(I915_PRIORITY_NORMAL);
+	ctx->sched.priority = I915_PRIORITY_NORMAL;
 	mutex_init(&ctx->mutex);
 	INIT_LIST_HEAD(&ctx->link);
 
@@ -1959,7 +1959,7 @@ static int set_priority(struct i915_gem_context *ctx,
 	    !capable(CAP_SYS_NICE))
 		return -EPERM;
 
-	ctx->sched.priority = I915_USER_PRIORITY(priority);
+	ctx->sched.priority = priority;
 	context_apply_all(ctx, __apply_priority, ctx);
 
 	return 0;
@@ -2463,7 +2463,7 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 
 	case I915_CONTEXT_PARAM_PRIORITY:
 		args->size = 0;
-		args->value = ctx->sched.priority >> I915_USER_PRIORITY_SHIFT;
+		args->value = ctx->sched.priority;
 		break;
 
 	case I915_CONTEXT_PARAM_SSEU:
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
index 23b6e11bbc3e..c4c04fb97d14 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
@@ -220,7 +220,7 @@ static int igt_fill_blt_thread(void *arg)
 			return PTR_ERR(ctx);
 
 		prio = i915_prandom_u32_max_state(I915_PRIORITY_MAX, prng);
-		ctx->sched.priority = I915_USER_PRIORITY(prio);
+		ctx->sched.priority = prio;
 	}
 
 	ce = i915_gem_context_get_engine(ctx, 0);
@@ -338,7 +338,7 @@ static int igt_copy_blt_thread(void *arg)
 			return PTR_ERR(ctx);
 
 		prio = i915_prandom_u32_max_state(I915_PRIORITY_MAX, prng);
-		ctx->sched.priority = I915_USER_PRIORITY(prio);
+		ctx->sched.priority = prio;
 	}
 
 	ce = i915_gem_context_get_engine(ctx, 0);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 1732a42e9075..ed03c08737f5 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -81,9 +81,7 @@ static void show_heartbeat(const struct i915_request *rq,
 
 static void heartbeat(struct work_struct *wrk)
 {
-	struct i915_sched_attr attr = {
-		.priority = I915_USER_PRIORITY(I915_PRIORITY_MIN),
-	};
+	struct i915_sched_attr attr = { .priority = I915_PRIORITY_MIN };
 	struct intel_engine_cs *engine =
 		container_of(wrk, typeof(*engine), heartbeat.work.work);
 	struct intel_context *ce = engine->kernel_context;
@@ -127,7 +125,7 @@ static void heartbeat(struct work_struct *wrk)
 			 */
 			attr.priority = 0;
 			if (rq->sched.attr.priority >= attr.priority)
-				attr.priority |= I915_USER_PRIORITY(I915_PRIORITY_HEARTBEAT);
+				attr.priority = I915_PRIORITY_HEARTBEAT;
 			if (rq->sched.attr.priority >= attr.priority)
 				attr.priority = I915_PRIORITY_BARRIER;
 
@@ -285,9 +283,7 @@ int intel_engine_pulse(struct intel_engine_cs *engine)
 
 int intel_engine_flush_barriers(struct intel_engine_cs *engine)
 {
-	struct i915_sched_attr attr = {
-		.priority = I915_USER_PRIORITY(I915_PRIORITY_MIN),
-	};
+	struct i915_sched_attr attr = { .priority = I915_PRIORITY_MIN };
 	struct intel_context *ce = engine->kernel_context;
 	struct i915_request *rq;
 	int err;
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 6bce45f63f37..7240a61ccb78 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -321,7 +321,7 @@ static int live_unlite_switch(void *arg)
 
 static int live_unlite_preempt(void *arg)
 {
-	return live_unlite_restore(arg, I915_USER_PRIORITY(I915_PRIORITY_MAX));
+	return live_unlite_restore(arg, I915_PRIORITY_MAX);
 }
 
 static int live_unlite_ring(void *arg)
@@ -1311,9 +1311,7 @@ static int live_timeslice_queue(void *arg)
 		goto err_pin;
 
 	for_each_engine(engine, gt, id) {
-		struct i915_sched_attr attr = {
-			.priority = I915_USER_PRIORITY(I915_PRIORITY_MAX),
-		};
+		struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
 		struct i915_request *rq, *nop;
 
 		if (!intel_engine_has_preemption(engine))
@@ -1528,14 +1526,12 @@ static int live_busywait_preempt(void *arg)
 	ctx_hi = kernel_context(gt->i915);
 	if (!ctx_hi)
 		return -ENOMEM;
-	ctx_hi->sched.priority =
-		I915_USER_PRIORITY(I915_CONTEXT_MAX_USER_PRIORITY);
+	ctx_hi->sched.priority = I915_CONTEXT_MAX_USER_PRIORITY;
 
 	ctx_lo = kernel_context(gt->i915);
 	if (!ctx_lo)
 		goto err_ctx_hi;
-	ctx_lo->sched.priority =
-		I915_USER_PRIORITY(I915_CONTEXT_MIN_USER_PRIORITY);
+	ctx_lo->sched.priority = I915_CONTEXT_MIN_USER_PRIORITY;
 
 	obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
 	if (IS_ERR(obj)) {
@@ -1732,14 +1728,12 @@ static int live_preempt(void *arg)
 	ctx_hi = kernel_context(gt->i915);
 	if (!ctx_hi)
 		goto err_spin_lo;
-	ctx_hi->sched.priority =
-		I915_USER_PRIORITY(I915_CONTEXT_MAX_USER_PRIORITY);
+	ctx_hi->sched.priority = I915_CONTEXT_MAX_USER_PRIORITY;
 
 	ctx_lo = kernel_context(gt->i915);
 	if (!ctx_lo)
 		goto err_ctx_hi;
-	ctx_lo->sched.priority =
-		I915_USER_PRIORITY(I915_CONTEXT_MIN_USER_PRIORITY);
+	ctx_lo->sched.priority = I915_CONTEXT_MIN_USER_PRIORITY;
 
 	for_each_engine(engine, gt, id) {
 		struct igt_live_test t;
@@ -1832,7 +1826,7 @@ static int live_late_preempt(void *arg)
 		goto err_ctx_hi;
 
 	/* Make sure ctx_lo stays before ctx_hi until we trigger preemption. */
-	ctx_lo->sched.priority = I915_USER_PRIORITY(1);
+	ctx_lo->sched.priority = 1;
 
 	for_each_engine(engine, gt, id) {
 		struct igt_live_test t;
@@ -1873,7 +1867,7 @@ static int live_late_preempt(void *arg)
 			goto err_wedged;
 		}
 
-		attr.priority = I915_USER_PRIORITY(I915_PRIORITY_MAX);
+		attr.priority = I915_PRIORITY_MAX;
 		engine->schedule(rq, &attr);
 
 		if (!igt_wait_for_spinner(&spin_hi, rq)) {
@@ -1954,7 +1948,7 @@ static int live_nopreempt(void *arg)
 		return -ENOMEM;
 	if (preempt_client_init(gt, &b))
 		goto err_client_a;
-	b.ctx->sched.priority = I915_USER_PRIORITY(I915_PRIORITY_MAX);
+	b.ctx->sched.priority = I915_PRIORITY_MAX;
 
 	for_each_engine(engine, gt, id) {
 		struct i915_request *rq_a, *rq_b;
@@ -2419,11 +2413,9 @@ static int live_preempt_cancel(void *arg)
 
 static int live_suppress_self_preempt(void *arg)
 {
+	struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
-	struct i915_sched_attr attr = {
-		.priority = I915_USER_PRIORITY(I915_PRIORITY_MAX)
-	};
 	struct preempt_client a, b;
 	enum intel_engine_id id;
 	int err = -ENOMEM;
@@ -2554,9 +2546,7 @@ static int live_chain_preempt(void *arg)
 		goto err_client_hi;
 
 	for_each_engine(engine, gt, id) {
-		struct i915_sched_attr attr = {
-			.priority = I915_USER_PRIORITY(I915_PRIORITY_MAX),
-		};
+		struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
 		struct igt_live_test t;
 		struct i915_request *rq;
 		int ring_size, count, i;
@@ -2975,9 +2965,7 @@ static int live_preempt_gang(void *arg)
 			return -EIO;
 
 		do {
-			struct i915_sched_attr attr = {
-				.priority = I915_USER_PRIORITY(prio++),
-			};
+			struct i915_sched_attr attr = { .priority = prio++ };
 
 			err = create_gang(engine, &rq);
 			if (err)
@@ -3013,7 +3001,7 @@ static int live_preempt_gang(void *arg)
 					drm_info_printer(engine->i915->drm.dev);
 
 				pr_err("Failed to flush chain of %d requests, at %d\n",
-				       prio, rq_prio(rq) >> I915_USER_PRIORITY_SHIFT);
+				       prio, rq_prio(rq));
 				intel_engine_dump(engine, &p,
 						  "%s\n", engine->name);
 
@@ -3383,14 +3371,12 @@ static int live_preempt_timeout(void *arg)
 	ctx_hi = kernel_context(gt->i915);
 	if (!ctx_hi)
 		goto err_spin_lo;
-	ctx_hi->sched.priority =
-		I915_USER_PRIORITY(I915_CONTEXT_MAX_USER_PRIORITY);
+	ctx_hi->sched.priority = I915_CONTEXT_MAX_USER_PRIORITY;
 
 	ctx_lo = kernel_context(gt->i915);
 	if (!ctx_lo)
 		goto err_ctx_hi;
-	ctx_lo->sched.priority =
-		I915_USER_PRIORITY(I915_CONTEXT_MIN_USER_PRIORITY);
+	ctx_lo->sched.priority = I915_CONTEXT_MIN_USER_PRIORITY;
 
 	for_each_engine(engine, gt, id) {
 		unsigned long saved_timeout;
diff --git a/drivers/gpu/drm/i915/i915_priolist_types.h b/drivers/gpu/drm/i915/i915_priolist_types.h
index 9a7657bb002e..bc2fa84f98a8 100644
--- a/drivers/gpu/drm/i915/i915_priolist_types.h
+++ b/drivers/gpu/drm/i915/i915_priolist_types.h
@@ -24,9 +24,6 @@ enum {
 	I915_PRIORITY_DISPLAY,
 };
 
-#define I915_USER_PRIORITY_SHIFT 0
-#define I915_USER_PRIORITY(x) ((x) << I915_USER_PRIORITY_SHIFT)
-
 /* Smallest priority value that cannot be bumped. */
 #define I915_PRIORITY_INVALID (INT_MIN)
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index d9f4cafe5a74..efa638c3acc7 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -71,7 +71,6 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
 	lockdep_assert_held(&engine->active.lock);
 	assert_priolists(execlists);
 
-	prio >>= I915_USER_PRIORITY_SHIFT;
 	if (unlikely(execlists->no_priolist))
 		prio = I915_PRIORITY_NORMAL;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
