Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 233E112904A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 00:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 882D86E101;
	Sun, 22 Dec 2019 23:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43B2C6E101
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Dec 2019 23:36:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19666403-1500050 
 for multiple; Sun, 22 Dec 2019 23:36:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Dec 2019 23:35:58 +0000
Message-Id: <20191222233558.2201901-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Mark the GEM context link as RCU
 protected
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

The only protection for intel_context.gem_cotext is granted by RCU, so
annotate it as a rcu protected pointer and carefully dereference it in
the few occasions we need to use it.

Fixes: 9f3ccd40acf4 ("drm/i915: Drop GEM context as a direct link from i915_request")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  5 ++-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         | 26 +++++++++---
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         | 40 ++++++++++++-------
 drivers/gpu/drm/i915/i915_request.c           |  6 +--
 drivers/gpu/drm/i915/i915_request.h           |  8 ++++
 7 files changed, 62 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 6167e68bbb25..dc90b044a217 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -212,8 +212,8 @@ context_get_vm_rcu(struct i915_gem_context *ctx)
 static void intel_context_set_gem(struct intel_context *ce,
 				  struct i915_gem_context *ctx)
 {
-	GEM_BUG_ON(ce->gem_context);
-	ce->gem_context = ctx;
+	GEM_BUG_ON(rcu_access_pointer(ce->gem_context));
+	RCU_INIT_POINTER(ce->gem_context, ctx);
 
 	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))
 		ce->ring = __intel_context_ring_size(SZ_16K);
@@ -244,6 +244,7 @@ static void __free_engines(struct i915_gem_engines *e, unsigned int count)
 		if (!e->engines[count])
 			continue;
 
+		RCU_INIT_POINTER(e->engines[count]->gem_context, NULL);
 		intel_context_put(e->engines[count]);
 	}
 	kfree(e);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 7dd03ad9826c..9527a659546c 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -44,7 +44,7 @@ struct intel_context {
 #define intel_context_inflight_count(ce) ptr_unmask_bits((ce)->inflight, 2)
 
 	struct i915_address_space *vm;
-	struct i915_gem_context *gem_context;
+	struct i915_gem_context __rcu *gem_context;
 
 	struct list_head signal_link;
 	struct list_head signals;
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index ab8213b90517..1c51296646e0 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -85,20 +85,27 @@ static bool mark_guilty(struct i915_request *rq)
 	bool banned;
 	int i;
 
-	ctx = rq->context->gem_context;
+	rcu_read_lock();
+	ctx = rcu_dereference(rq->context->gem_context);
+	if (ctx && !kref_get_unless_zero(&ctx->ref))
+		ctx = NULL;
+	rcu_read_unlock();
 	if (!ctx)
 		return false;
 
 	if (i915_gem_context_is_closed(ctx)) {
 		intel_context_set_banned(rq->context);
-		return true;
+		banned = true;
+		goto out;
 	}
 
 	atomic_inc(&ctx->guilty_count);
 
 	/* Cool contexts are too cool to be banned! (Used for reset testing.) */
-	if (!i915_gem_context_is_bannable(ctx))
-		return false;
+	if (!i915_gem_context_is_bannable(ctx)) {
+		banned = false;
+		goto out;
+	}
 
 	dev_notice(ctx->i915->drm.dev,
 		   "%s context reset due to GPU hang\n",
@@ -122,13 +129,20 @@ static bool mark_guilty(struct i915_request *rq)
 
 	client_mark_guilty(ctx, banned);
 
+out:
+	i915_gem_context_put(ctx);
 	return banned;
 }
 
 static void mark_innocent(struct i915_request *rq)
 {
-	if (rq->context->gem_context)
-		atomic_inc(&rq->context->gem_context->active_count);
+	struct i915_gem_context *ctx;
+
+	rcu_read_lock();
+	ctx = rcu_dereference(rq->context->gem_context);
+	if (ctx)
+		atomic_inc(&ctx->active_count);
+	rcu_read_unlock();
 }
 
 void __i915_request_reset(struct i915_request *rq, bool guilty)
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 118170eb51b4..81f872f9ef03 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1550,7 +1550,7 @@ static int remap_l3_slice(struct i915_request *rq, int slice)
 
 static int remap_l3(struct i915_request *rq)
 {
-	struct i915_gem_context *ctx = rq->context->gem_context;
+	struct i915_gem_context *ctx = i915_request_gem_context(rq);
 	int i, err;
 
 	if (!ctx || !ctx->remap_slice)
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 7e2cb063110c..fda0977d2059 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1221,7 +1221,7 @@ static void error_record_engine_registers(struct i915_gpu_state *error,
 static void record_request(const struct i915_request *request,
 			   struct drm_i915_error_request *erq)
 {
-	const struct i915_gem_context *ctx = request->context->gem_context;
+	const struct i915_gem_context *ctx;
 
 	erq->flags = request->fence.flags;
 	erq->context = request->fence.context;
@@ -1231,7 +1231,13 @@ static void record_request(const struct i915_request *request,
 	erq->start = i915_ggtt_offset(request->ring->vma);
 	erq->head = request->head;
 	erq->tail = request->tail;
-	erq->pid = ctx && ctx->pid ? pid_nr(ctx->pid) : 0;
+
+	erq->pid = 0;
+	rcu_read_lock();
+	ctx = rcu_dereference(request->context->gem_context);
+	if (ctx)
+		erq->pid = pid_nr(ctx->pid);
+	rcu_read_unlock();
 }
 
 static void engine_record_requests(struct intel_engine_cs *engine,
@@ -1298,28 +1304,34 @@ static void error_record_engine_execlists(const struct intel_engine_cs *engine,
 static bool record_context(struct drm_i915_error_context *e,
 			   const struct i915_request *rq)
 {
-	const struct i915_gem_context *ctx = rq->context->gem_context;
+	struct i915_gem_context *ctx;
+	struct task_struct *task;
+	bool capture;
 
+	rcu_read_lock();
+	ctx = rcu_dereference(rq->context->gem_context);
+	if (ctx && !kref_get_unless_zero(&ctx->ref))
+		ctx = NULL;
+	rcu_read_unlock();
 	if (!ctx)
 		return false;
 
-	if (ctx->pid) {
-		struct task_struct *task;
-
-		rcu_read_lock();
-		task = pid_task(ctx->pid, PIDTYPE_PID);
-		if (task) {
-			strcpy(e->comm, task->comm);
-			e->pid = task->pid;
-		}
-		rcu_read_unlock();
+	rcu_read_lock();
+	task = pid_task(ctx->pid, PIDTYPE_PID);
+	if (task) {
+		strcpy(e->comm, task->comm);
+		e->pid = task->pid;
 	}
+	rcu_read_unlock();
 
 	e->sched_attr = ctx->sched;
 	e->guilty = atomic_read(&ctx->guilty_count);
 	e->active = atomic_read(&ctx->active_count);
 
-	return i915_gem_context_no_error_capture(ctx);
+	capture = i915_gem_context_no_error_capture(ctx);
+
+	i915_gem_context_put(ctx);
+	return capture;
 }
 
 struct capture_vma {
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 14a5a99284fa..44a0d1a950c5 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -76,7 +76,7 @@ static const char *i915_fence_get_timeline_name(struct dma_fence *fence)
 	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
 		return "signaled";
 
-	ctx = to_request(fence)->context->gem_context;
+	ctx = i915_request_gem_context(to_request(fence));
 	if (!ctx)
 		return "[" DRIVER_NAME "]";
 
@@ -1312,8 +1312,8 @@ void i915_request_add(struct i915_request *rq)
 
 	prev = __i915_request_commit(rq);
 
-	if (rq->context->gem_context)
-		attr = rq->context->gem_context->sched;
+	if (rcu_access_pointer(rq->context->gem_context))
+		attr = i915_request_gem_context(rq)->sched;
 
 	/*
 	 * Boost actual workloads past semaphores!
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 0e4fe3205ce7..565322640378 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -28,6 +28,7 @@
 #include <linux/dma-fence.h>
 #include <linux/lockdep.h>
 
+#include "gem/i915_gem_context_types.h"
 #include "gt/intel_context_types.h"
 #include "gt/intel_engine_types.h"
 #include "gt/intel_timeline_types.h"
@@ -463,6 +464,13 @@ i915_request_timeline(struct i915_request *rq)
 					 lockdep_is_held(&rcu_access_pointer(rq->timeline)->mutex));
 }
 
+static inline struct i915_gem_context *
+i915_request_gem_context(struct i915_request *rq)
+{
+	/* Valid only while the request is being constructed (or retired). */
+	return rcu_dereference_protected(rq->context->gem_context, true);
+}
+
 static inline struct intel_timeline *
 i915_request_active_timeline(struct i915_request *rq)
 {
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
