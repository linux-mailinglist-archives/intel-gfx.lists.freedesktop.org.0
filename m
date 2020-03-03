Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CDF1784F4
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 22:33:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B47A6E958;
	Tue,  3 Mar 2020 21:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1D726E959
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 21:33:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20434033-1500050 
 for multiple; Tue, 03 Mar 2020 21:33:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Mar 2020 21:33:25 +0000
Message-Id: <20200303213326.1906480-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Apply i915_request_skip() on
 submission
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Trying to use i915_request_skip() prior to i915_request_add() causes us
to try and fill the ring upto request->postfix, which has not yet been
set, and so may cause us to memset() past the end of the ring.

Instead of skipping the request immediately, just flag the error on the
request (only accepting the first fatal error we see) and then clear the
request upon submission.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_client_blt.c    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  6 +--
 .../gpu/drm/i915/gem/i915_gem_object_blt.c    |  4 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |  6 +--
 .../drm/i915/gem/selftests/igt_gem_utils.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  4 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  2 +-
 drivers/gpu/drm/i915/i915_request.c           | 39 +++++++++----------
 drivers/gpu/drm/i915/i915_request.h           | 28 ++++++++++++-
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |  2 +-
 11 files changed, 60 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
index 81366aa4812b..0598e5382a1d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
@@ -217,7 +217,7 @@ static void clear_pages_worker(struct work_struct *work)
 					   0);
 out_request:
 	if (unlikely(err)) {
-		i915_request_skip(rq, err);
+		i915_request_set_error_once(rq, err);
 		err = 0;
 	}
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d73be2c28098..3aa28b43128e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1197,7 +1197,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	goto out_pool;
 
 skip_request:
-	i915_request_skip(rq, err);
+	i915_request_set_error_once(rq, err);
 err_request:
 	i915_request_add(rq);
 err_unpin:
@@ -1886,7 +1886,7 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 	return 0;
 
 err_skip:
-	i915_request_skip(eb->request, err);
+	i915_request_set_error_once(eb->request, err);
 	return err;
 }
 
@@ -2618,7 +2618,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
 			attr.priority |= I915_PRIORITY_WAIT;
 	} else {
 		/* Serialise with context_close via the add_to_timeline */
-		i915_request_skip(rq, -ENOENT);
+		i915_request_set_error_once(rq, -ENOENT);
 	}
 
 	local_bh_disable();
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
index 70809d8897cd..39b8a055d80a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
@@ -186,7 +186,7 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 					0);
 out_request:
 	if (unlikely(err))
-		i915_request_skip(rq, err);
+		i915_request_set_error_once(rq, err);
 
 	i915_request_add(rq);
 out_batch:
@@ -385,7 +385,7 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
 	drm_gem_unlock_reservations(objs, ARRAY_SIZE(objs), &acquire);
 out_request:
 	if (unlikely(err))
-		i915_request_skip(rq, err);
+		i915_request_set_error_once(rq, err);
 
 	i915_request_add(rq);
 out_batch:
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 375d864736f3..77c7e65de7c3 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1004,7 +1004,7 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 	return 0;
 
 skip_request:
-	i915_request_skip(rq, err);
+	i915_request_set_error_once(rq, err);
 err_request:
 	i915_request_add(rq);
 err_batch:
@@ -1559,7 +1559,7 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 
 	goto out_vm;
 skip_request:
-	i915_request_skip(rq, err);
+	i915_request_set_error_once(rq, err);
 err_request:
 	i915_request_add(rq);
 err_unpin:
@@ -1708,7 +1708,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 
 	goto out_vm;
 skip_request:
-	i915_request_skip(rq, err);
+	i915_request_set_error_once(rq, err);
 err_request:
 	i915_request_add(rq);
 err_unpin:
diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
index 6718da20f35d..772d8cba7da9 100644
--- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
+++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
@@ -159,7 +159,7 @@ int igt_gpu_fill_dw(struct intel_context *ce,
 	return 0;
 
 skip_request:
-	i915_request_skip(rq, err);
+	i915_request_set_error_once(rq, err);
 err_request:
 	i915_request_add(rq);
 err_batch:
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index b9b3f78f1324..8af5a4069f20 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4903,7 +4903,7 @@ static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
 	mask = rq->execution_mask;
 	if (unlikely(!mask)) {
 		/* Invalid selection, submit to a random engine in error */
-		i915_request_skip(rq, -ENODEV);
+		i915_request_set_error_once(rq, -ENODEV);
 		mask = ve->siblings[0]->mask;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index aef6ab58d7d9..f8bcf6ac36ce 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -49,7 +49,7 @@ static void engine_skip_context(struct i915_request *rq)
 	lockdep_assert_held(&engine->active.lock);
 	list_for_each_entry_continue(rq, &engine->active.requests, sched.link)
 		if (rq->context == hung_ctx)
-			i915_request_skip(rq, -EIO);
+			i915_request_set_error_once(rq, -EIO);
 }
 
 static void client_mark_guilty(struct i915_gem_context *ctx, bool banned)
@@ -154,7 +154,7 @@ void __i915_request_reset(struct i915_request *rq, bool guilty)
 
 	rcu_read_lock(); /* protect the GEM context */
 	if (guilty) {
-		i915_request_skip(rq, -EIO);
+		i915_request_set_error_once(rq, -EIO);
 		if (mark_guilty(rq))
 			engine_skip_context(rq);
 	} else {
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index c3514ec7b8db..2b2efff6e19d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -268,7 +268,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 
 cancel_rq:
 	if (err) {
-		i915_request_skip(rq, err);
+		i915_request_set_error_once(rq, err);
 		i915_request_add(rq);
 	}
 unpin_hws:
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index d837c1380015..abde1fea4b2b 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -363,6 +363,20 @@ __await_execution(struct i915_request *rq,
 	return 0;
 }
 
+static void i915_request_skip(struct i915_request *rq)
+{
+	if (rq->infix == rq->postfix)
+		return;
+
+	/*
+	 * As this request likely depends on state from the lost
+	 * context, clear out all the user operations leaving the
+	 * breadcrumb at the end (so we get the fence notifications).
+	 */
+	__i915_request_fill(rq, 0);
+	rq->infix = rq->postfix;
+}
+
 bool __i915_request_submit(struct i915_request *request)
 {
 	struct intel_engine_cs *engine = request->engine;
@@ -392,8 +406,10 @@ bool __i915_request_submit(struct i915_request *request)
 	if (i915_request_completed(request))
 		goto xfer;
 
-	if (intel_context_is_banned(request->context))
-		i915_request_skip(request, -EIO);
+	if (unlikely(intel_context_is_banned(request->context)))
+		i915_request_set_error_once(request, -EIO);
+	if (unlikely(i915_request_fatal_error(request->fence.error)))
+		i915_request_skip(request);
 
 	/*
 	 * Are we using semaphores when the gpu is already saturated?
@@ -519,7 +535,7 @@ submit_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 		trace_i915_request_submit(request);
 
 		if (unlikely(fence->error))
-			i915_request_skip(request, fence->error);
+			i915_request_set_error_once(request, fence->error);
 
 		/*
 		 * We need to serialize use of the submit_request() callback
@@ -1209,23 +1225,6 @@ i915_request_await_object(struct i915_request *to,
 	return ret;
 }
 
-void i915_request_skip(struct i915_request *rq, int error)
-{
-	GEM_BUG_ON(!IS_ERR_VALUE((long)error));
-	dma_fence_set_error(&rq->fence, error);
-
-	if (rq->infix == rq->postfix)
-		return;
-
-	/*
-	 * As this request likely depends on state from the lost
-	 * context, clear out all the user operations leaving the
-	 * breadcrumb at the end (so we get the fence notifications).
-	 */
-	__i915_request_fill(rq, 0);
-	rq->infix = rq->postfix;
-}
-
 static struct i915_request *
 __i915_request_add_to_timeline(struct i915_request *rq)
 {
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index da8420f03232..81094669682f 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -352,8 +352,6 @@ void i915_request_add(struct i915_request *rq);
 bool __i915_request_submit(struct i915_request *request);
 void i915_request_submit(struct i915_request *request);
 
-void i915_request_skip(struct i915_request *request, int error);
-
 void __i915_request_unsubmit(struct i915_request *request);
 void i915_request_unsubmit(struct i915_request *request);
 
@@ -570,4 +568,30 @@ i915_request_active_timeline(struct i915_request *rq)
 					 lockdep_is_held(&rq->engine->active.lock));
 }
 
+static bool i915_request_fatal_error(int err)
+{
+	switch (err) {
+	case 0: /* not an error! */
+	case -EAGAIN: /* innocent victim of a GT reset (__i915_request_reset) */
+	case -ETIMEDOUT: /* waiting for a Godot (timer_i915_sw_fence_wake) */
+		return false;
+	default:
+		return true;
+	}
+}
+
+static inline void
+i915_request_set_error_once(struct i915_request *rq, int err)
+{
+	int old;
+
+	GEM_BUG_ON(!IS_ERR_VALUE((long)err));
+
+	old = READ_ONCE(rq->fence.error);
+	do {
+		if (i915_request_fatal_error(old))
+			return;
+	} while (!try_cmpxchg(&rq->fence.error, &old, err));
+}
+
 #endif /* I915_REQUEST_H */
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index e8a58fe49c39..9ad4ab088466 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -183,7 +183,7 @@ igt_spinner_create_request(struct igt_spinner *spin,
 
 cancel_rq:
 	if (err) {
-		i915_request_skip(rq, err);
+		i915_request_set_error_once(rq, err);
 		i915_request_add(rq);
 	}
 unpin_hws:
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
