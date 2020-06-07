Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D631F103A
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 00:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E7D6E45C;
	Sun,  7 Jun 2020 22:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587F86E3EB
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2020 22:21:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21425607-1500050 
 for multiple; Sun, 07 Jun 2020 23:21:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jun 2020 23:20:59 +0100
Message-Id: <20200607222108.14401-19-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200607222108.14401-1-chris@chris-wilson.co.uk>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/28] drm/i915: Remove I915_USER_PRIORITY_SHIFT
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
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  6 +--
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 44 +++++++------------
 drivers/gpu/drm/i915/i915_priolist_types.h    |  3 --
 drivers/gpu/drm/i915/i915_scheduler.c         |  1 -
 7 files changed, 23 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b16aca0fe5f0..511555d444e5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15890,9 +15890,7 @@ static void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 
 static void fb_obj_bump_render_priority(struct drm_i915_gem_object *obj)
 {
-	struct i915_sched_attr attr = {
-		.priority = I915_USER_PRIORITY(I915_PRIORITY_DISPLAY),
-	};
+	struct i915_sched_attr attr = { .priority = I915_PRIORITY_DISPLAY };
 
 	i915_gem_object_wait_priority(obj, 0, &attr);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index f5d59d18cd5b..ef76dff0e255 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -712,7 +712,7 @@ __create_context(struct drm_i915_private *i915)
 
 	kref_init(&ctx->ref);
 	ctx->i915 = i915;
-	ctx->sched.priority = I915_USER_PRIORITY(I915_PRIORITY_NORMAL);
+	ctx->sched.priority = I915_PRIORITY_NORMAL;
 	mutex_init(&ctx->mutex);
 
 	spin_lock_init(&ctx->stale.lock);
@@ -1999,7 +1999,7 @@ static int set_priority(struct i915_gem_context *ctx,
 	    !capable(CAP_SYS_NICE))
 		return -EPERM;
 
-	ctx->sched.priority = I915_USER_PRIORITY(priority);
+	ctx->sched.priority = priority;
 	context_apply_all(ctx, __apply_priority, ctx);
 
 	return 0;
@@ -2502,7 +2502,7 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 
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
index eecf666c772d..ee002eb796cb 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -57,9 +57,7 @@ static void show_heartbeat(const struct i915_request *rq,
 
 static void heartbeat(struct work_struct *wrk)
 {
-	struct i915_sched_attr attr = {
-		.priority = I915_USER_PRIORITY(I915_PRIORITY_MIN),
-	};
+	struct i915_sched_attr attr = { .priority = I915_PRIORITY_MIN };
 	struct intel_engine_cs *engine =
 		container_of(wrk, typeof(*engine), heartbeat.work.work);
 	struct intel_context *ce = engine->kernel_context;
@@ -99,7 +97,7 @@ static void heartbeat(struct work_struct *wrk)
 			 */
 			attr.priority = 0;
 			if (rq->sched.attr.priority >= attr.priority)
-				attr.priority |= I915_USER_PRIORITY(I915_PRIORITY_HEARTBEAT);
+				attr.priority = I915_PRIORITY_HEARTBEAT;
 			if (rq->sched.attr.priority >= attr.priority)
 				attr.priority = I915_PRIORITY_BARRIER;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index a0248c47d7bd..15aaa1bf8943 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -360,7 +360,7 @@ static int live_unlite_switch(void *arg)
 
 static int live_unlite_preempt(void *arg)
 {
-	return live_unlite_restore(arg, I915_USER_PRIORITY(I915_PRIORITY_MAX));
+	return live_unlite_restore(arg, I915_PRIORITY_MAX);
 }
 
 static int live_pin_rewind(void *arg)
@@ -1193,9 +1193,7 @@ static int live_timeslice_queue(void *arg)
 		goto err_pin;
 
 	for_each_engine(engine, gt, id) {
-		struct i915_sched_attr attr = {
-			.priority = I915_USER_PRIORITY(I915_PRIORITY_MAX),
-		};
+		struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
 		struct i915_request *rq, *nop;
 
 		if (!intel_engine_has_preemption(engine))
@@ -1410,14 +1408,12 @@ static int live_busywait_preempt(void *arg)
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
@@ -1620,14 +1616,12 @@ static int live_preempt(void *arg)
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
@@ -1723,7 +1717,7 @@ static int live_late_preempt(void *arg)
 		goto err_ctx_hi;
 
 	/* Make sure ctx_lo stays before ctx_hi until we trigger preemption. */
-	ctx_lo->sched.priority = I915_USER_PRIORITY(1);
+	ctx_lo->sched.priority = 1;
 
 	for_each_engine(engine, gt, id) {
 		struct igt_live_test t;
@@ -1764,7 +1758,7 @@ static int live_late_preempt(void *arg)
 			goto err_wedged;
 		}
 
-		attr.priority = I915_USER_PRIORITY(I915_PRIORITY_MAX);
+		attr.priority = I915_PRIORITY_MAX;
 		engine->schedule(rq, &attr);
 
 		if (!igt_wait_for_spinner(&spin_hi, rq)) {
@@ -1848,7 +1842,7 @@ static int live_nopreempt(void *arg)
 		return -ENOMEM;
 	if (preempt_client_init(gt, &b))
 		goto err_client_a;
-	b.ctx->sched.priority = I915_USER_PRIORITY(I915_PRIORITY_MAX);
+	b.ctx->sched.priority = I915_PRIORITY_MAX;
 
 	for_each_engine(engine, gt, id) {
 		struct i915_request *rq_a, *rq_b;
@@ -2241,11 +2235,9 @@ static int live_preempt_cancel(void *arg)
 
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
@@ -2382,9 +2374,7 @@ static int live_chain_preempt(void *arg)
 		goto err_client_hi;
 
 	for_each_engine(engine, gt, id) {
-		struct i915_sched_attr attr = {
-			.priority = I915_USER_PRIORITY(I915_PRIORITY_MAX),
-		};
+		struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
 		struct igt_live_test t;
 		struct i915_request *rq;
 		int ring_size, count, i;
@@ -2640,9 +2630,7 @@ static int live_preempt_gang(void *arg)
 			return -EIO;
 
 		do {
-			struct i915_sched_attr attr = {
-				.priority = I915_USER_PRIORITY(prio++),
-			};
+			struct i915_sched_attr attr = { .priority = prio++ };
 
 			err = create_gang(engine, &rq);
 			if (err)
@@ -2679,7 +2667,7 @@ static int live_preempt_gang(void *arg)
 					drm_info_printer(engine->i915->drm.dev);
 
 				pr_err("Failed to flush chain of %d requests, at %d\n",
-				       prio, rq_prio(rq) >> I915_USER_PRIORITY_SHIFT);
+				       prio, rq_prio(rq));
 				intel_engine_dump(engine, &p,
 						  "%s\n", engine->name);
 
@@ -3053,14 +3041,12 @@ static int live_preempt_timeout(void *arg)
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
index 7945cc161a12..7246ffbb3e33 100644
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
