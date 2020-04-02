Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAC419C09C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 13:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B74F46EA6D;
	Thu,  2 Apr 2020 11:59:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D3FF6EA6D
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 11:59:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20775669-1500050 
 for multiple; Thu, 02 Apr 2020 12:59:08 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Apr 2020 12:59:08 +0100
Message-Id: <20200402115908.24532-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use per-engine request pools
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

Add a per-engine request mempool so that we should always have a couple
of requests available for powermanagement allocations from tricky
contexts. These reserves are expected to be only used for kernel
contexts when barriers must be emitted [almost] without fail.

When using the mempool, requests are first allocated from the global
slab cache (utilising all the per-cpu lockless freelists and caches) and
only if that is empty and cannot be filled under the gfp_t do we
fallback to using the per-engine cache of recently freed requests. For
our use cases, this will never be empty for long as there will always be
at least the previous powermanagent request to reuse.

The downside is that this is quite a bulky addition and abstraction to
use, but it will ensure that we never fail to park the engine due to
oom.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h       |  3 +++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 14 +++++++++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  4 ++++
 drivers/gpu/drm/i915/gt/intel_lrc.c          |  3 +++
 drivers/gpu/drm/i915/i915_request.c          | 22 ++++++++++++--------
 drivers/gpu/drm/i915/i915_request.h          |  2 ++
 6 files changed, 39 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index b469de0dd9b6..c1159bd17989 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -324,6 +324,9 @@ void intel_engine_init_active(struct intel_engine_cs *engine,
 #define ENGINE_MOCK	1
 #define ENGINE_VIRTUAL	2
 
+void intel_engine_init_request_pool(struct intel_engine_cs *engine);
+void intel_engine_fini_request_pool(struct intel_engine_cs *engine);
+
 static inline bool
 intel_engine_has_preempt_reset(const struct intel_engine_cs *engine)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 843cb6f2f696..6a5bb6e7b126 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -602,6 +602,18 @@ static int init_status_page(struct intel_engine_cs *engine)
 	return ret;
 }
 
+void intel_engine_init_request_pool(struct intel_engine_cs *engine)
+{
+	mempool_init_slab_pool(&engine->request_pool,
+			       INTEL_ENGINE_REQUEST_POOL_RESERVED,
+			       i915_request_slab_cache());
+}
+
+void intel_engine_fini_request_pool(struct intel_engine_cs *engine)
+{
+	mempool_exit(&engine->request_pool);
+}
+
 static int engine_setup_common(struct intel_engine_cs *engine)
 {
 	int err;
@@ -618,6 +630,7 @@ static int engine_setup_common(struct intel_engine_cs *engine)
 	intel_engine_init_cmd_parser(engine);
 	intel_engine_init__pm(engine);
 	intel_engine_init_retire(engine);
+	intel_engine_init_request_pool(engine);
 
 	intel_engine_pool_init(&engine->pool);
 
@@ -816,6 +829,7 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 
 	cleanup_status_page(engine);
 
+	intel_engine_fini_request_pool(engine);
 	intel_engine_fini_retire(engine);
 	intel_engine_pool_fini(&engine->pool);
 	intel_engine_fini_breadcrumbs(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 80cdde712842..0db03215127b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -13,6 +13,7 @@
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/llist.h>
+#include <linux/mempool.h>
 #include <linux/rbtree.h>
 #include <linux/timer.h>
 #include <linux/types.h>
@@ -308,6 +309,9 @@ struct intel_engine_cs {
 		struct list_head hold; /* ready requests, but on hold */
 	} active;
 
+	mempool_t request_pool; /* keep some in reserve for powermanagement */
+#define INTEL_ENGINE_REQUEST_POOL_RESERVED 2
+
 	struct llist_head barrier_tasks;
 
 	struct intel_context *kernel_context; /* pinned */
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3479cda37fdc..afc9107e5d04 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4892,6 +4892,8 @@ static void virtual_context_destroy(struct kref *kref)
 		__execlists_context_fini(&ve->context);
 	intel_context_fini(&ve->context);
 
+	intel_engine_fini_request_pool(&ve->base);
+
 	kfree(ve->bonds);
 	kfree(ve);
 }
@@ -5203,6 +5205,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 	intel_engine_init_active(&ve->base, ENGINE_VIRTUAL);
 	intel_engine_init_breadcrumbs(&ve->base);
 	intel_engine_init_execlists(&ve->base);
+	intel_engine_init_request_pool(&ve->base);
 
 	ve->base.cops = &virtual_context_ops;
 	ve->base.request_alloc = execlists_request_alloc;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 3388c5b610c5..a912ce8b9437 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -54,6 +54,11 @@ static struct i915_global_request {
 	struct kmem_cache *slab_execute_cbs;
 } global;
 
+struct kmem_cache *i915_request_slab_cache(void)
+{
+	return global.slab_requests;
+}
+
 static const char *i915_fence_get_driver_name(struct dma_fence *fence)
 {
 	return dev_name(to_request(fence)->i915->drm.dev);
@@ -115,7 +120,7 @@ static void i915_fence_release(struct dma_fence *fence)
 	i915_sw_fence_fini(&rq->submit);
 	i915_sw_fence_fini(&rq->semaphore);
 
-	kmem_cache_free(global.slab_requests, rq);
+	mempool_free(rq, &rq->engine->request_pool);
 }
 
 const struct dma_fence_ops i915_fence_ops = {
@@ -629,7 +634,7 @@ static void retire_requests(struct intel_timeline *tl)
 }
 
 static noinline struct i915_request *
-request_alloc_slow(struct intel_timeline *tl, gfp_t gfp)
+request_alloc_slow(struct intel_timeline *tl, mempool_t *pool, gfp_t gfp)
 {
 	struct i915_request *rq;
 
@@ -643,8 +648,7 @@ request_alloc_slow(struct intel_timeline *tl, gfp_t gfp)
 	rq = list_first_entry(&tl->requests, typeof(*rq), link);
 	i915_request_retire(rq);
 
-	rq = kmem_cache_alloc(global.slab_requests,
-			      gfp | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
+	rq = mempool_alloc(pool, gfp | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
 	if (rq)
 		return rq;
 
@@ -656,7 +660,7 @@ request_alloc_slow(struct intel_timeline *tl, gfp_t gfp)
 	retire_requests(tl);
 
 out:
-	return kmem_cache_alloc(global.slab_requests, gfp);
+	return mempool_alloc(pool, gfp | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
 }
 
 static void __i915_request_ctor(void *arg)
@@ -718,10 +722,10 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	 *
 	 * Do not use kmem_cache_zalloc() here!
 	 */
-	rq = kmem_cache_alloc(global.slab_requests,
-			      gfp | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
+	rq = mempool_alloc(&ce->engine->request_pool,
+			   gfp | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
 	if (unlikely(!rq)) {
-		rq = request_alloc_slow(tl, gfp);
+		rq = request_alloc_slow(tl, &ce->engine->request_pool, gfp);
 		if (!rq) {
 			ret = -ENOMEM;
 			goto err_unreserve;
@@ -807,7 +811,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	GEM_BUG_ON(!list_empty(&rq->sched.waiters_list));
 
 err_free:
-	kmem_cache_free(global.slab_requests, rq);
+	mempool_free(rq, &ce->engine->request_pool);
 err_unreserve:
 	intel_context_unpin(ce);
 	return ERR_PTR(ret);
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 3c552bfea67a..d8ce908e1346 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -300,6 +300,8 @@ static inline bool dma_fence_is_i915(const struct dma_fence *fence)
 	return fence->ops == &i915_fence_ops;
 }
 
+struct kmem_cache *i915_request_slab_cache(void);
+
 struct i915_request * __must_check
 __i915_request_create(struct intel_context *ce, gfp_t gfp);
 struct i915_request * __must_check
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
