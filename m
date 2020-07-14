Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB70321EFA2
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 13:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 018A36E405;
	Tue, 14 Jul 2020 11:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C28A6E405
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 11:45:19 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 13:44:55 +0200
Message-Id: <20200714114516.3073222-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200714114516.3073222-1-maarten.lankhorst@linux.intel.com>
References: <20200714114516.3073222-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/23] drm/i915: Revert relocation chaining
 commits.
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

This reverts commit 964a9b0f611ee ("drm/i915/gem: Use chained reloc batches")
and commit 0e97fbb080553 ("drm/i915/gem: Use a single chained reloc batches
for a single execbuf").

This breaks ww mutex -EDEADLK handling, and we can deal with relocations
fine without it.  The ww mutexes protect concurrent access to the BO's.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 171 ++++--------------
 .../i915/gem/selftests/i915_gem_execbuffer.c  |   8 +-
 2 files changed, 35 insertions(+), 144 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 446e76e95c38..8e2ae8317c5c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -268,9 +268,7 @@ struct i915_execbuffer {
 		bool has_fence : 1;
 		bool needs_unfenced : 1;
 
-		struct i915_vma *target;
 		struct i915_request *rq;
-		struct i915_vma *rq_vma;
 		u32 *rq_cmd;
 		unsigned int rq_size;
 	} reloc_cache;
@@ -962,7 +960,7 @@ static void reloc_cache_init(struct reloc_cache *cache,
 	cache->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
 	cache->node.flags = 0;
 	cache->rq = NULL;
-	cache->target = NULL;
+	cache->rq_size = 0;
 }
 
 static inline void *unmask_page(unsigned long p)
@@ -984,122 +982,29 @@ static inline struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
 	return &i915->ggtt;
 }
 
-#define RELOC_TAIL 4
-
-static int reloc_gpu_chain(struct reloc_cache *cache)
+static void reloc_gpu_flush(struct reloc_cache *cache)
 {
-	struct intel_gt_buffer_pool_node *pool;
-	struct i915_request *rq = cache->rq;
-	struct i915_vma *batch;
-	u32 *cmd;
-	int err;
-
-	pool = intel_gt_get_buffer_pool(rq->engine->gt, PAGE_SIZE);
-	if (IS_ERR(pool))
-		return PTR_ERR(pool);
-
-	batch = i915_vma_instance(pool->obj, rq->context->vm, NULL);
-	if (IS_ERR(batch)) {
-		err = PTR_ERR(batch);
-		goto out_pool;
-	}
-
-	err = i915_vma_pin(batch, 0, 0, PIN_USER | PIN_NONBLOCK);
-	if (err)
-		goto out_pool;
-
-	GEM_BUG_ON(cache->rq_size + RELOC_TAIL > PAGE_SIZE  / sizeof(u32));
-	cmd = cache->rq_cmd + cache->rq_size;
-	*cmd++ = MI_ARB_CHECK;
-	if (cache->gen >= 8)
-		*cmd++ = MI_BATCH_BUFFER_START_GEN8;
-	else if (cache->gen >= 6)
-		*cmd++ = MI_BATCH_BUFFER_START;
-	else
-		*cmd++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
-	*cmd++ = lower_32_bits(batch->node.start);
-	*cmd++ = upper_32_bits(batch->node.start); /* Always 0 for gen<8 */
-	i915_gem_object_flush_map(cache->rq_vma->obj);
-	i915_gem_object_unpin_map(cache->rq_vma->obj);
-	cache->rq_vma = NULL;
-
-	err = intel_gt_buffer_pool_mark_active(pool, rq);
-	if (err == 0) {
-		i915_vma_lock(batch);
-		err = i915_request_await_object(rq, batch->obj, false);
-		if (err == 0)
-			err = i915_vma_move_to_active(batch, rq, 0);
-		i915_vma_unlock(batch);
-	}
-	i915_vma_unpin(batch);
-	if (err)
-		goto out_pool;
+	struct drm_i915_gem_object *obj = cache->rq->batch->obj;
 
-	cmd = i915_gem_object_pin_map(batch->obj,
-				      cache->has_llc ?
-				      I915_MAP_FORCE_WB :
-				      I915_MAP_FORCE_WC);
-	if (IS_ERR(cmd)) {
-		err = PTR_ERR(cmd);
-		goto out_pool;
-	}
+	GEM_BUG_ON(cache->rq_size >= obj->base.size / sizeof(u32));
+	cache->rq_cmd[cache->rq_size] = MI_BATCH_BUFFER_END;
 
-	/* Return with batch mapping (cmd) still pinned */
-	cache->rq_cmd = cmd;
-	cache->rq_size = 0;
-	cache->rq_vma = batch;
+	__i915_gem_object_flush_map(obj, 0, sizeof(u32) * (cache->rq_size + 1));
+	i915_gem_object_unpin_map(obj);
 
-out_pool:
-	intel_gt_buffer_pool_put(pool);
-	return err;
-}
+	intel_gt_chipset_flush(cache->rq->engine->gt);
 
-static unsigned int reloc_bb_flags(const struct reloc_cache *cache)
-{
-	return cache->gen > 5 ? 0 : I915_DISPATCH_SECURE;
-}
-
-static int reloc_gpu_flush(struct reloc_cache *cache)
-{
-	struct i915_request *rq;
-	int err;
-
-	rq = fetch_and_zero(&cache->rq);
-	if (!rq)
-		return 0;
-
-	if (cache->rq_vma) {
-		struct drm_i915_gem_object *obj = cache->rq_vma->obj;
-
-		GEM_BUG_ON(cache->rq_size >= obj->base.size / sizeof(u32));
-		cache->rq_cmd[cache->rq_size++] = MI_BATCH_BUFFER_END;
-
-		__i915_gem_object_flush_map(obj,
-					    0, sizeof(u32) * cache->rq_size);
-		i915_gem_object_unpin_map(obj);
-	}
-
-	err = 0;
-	if (rq->engine->emit_init_breadcrumb)
-		err = rq->engine->emit_init_breadcrumb(rq);
-	if (!err)
-		err = rq->engine->emit_bb_start(rq,
-						rq->batch->node.start,
-						PAGE_SIZE,
-						reloc_bb_flags(cache));
-	if (err)
-		i915_request_set_error_once(rq, err);
-
-	intel_gt_chipset_flush(rq->engine->gt);
-	i915_request_add(rq);
-
-	return err;
+	i915_request_add(cache->rq);
+	cache->rq = NULL;
 }
 
 static void reloc_cache_reset(struct reloc_cache *cache)
 {
 	void *vaddr;
 
+	if (cache->rq)
+		reloc_gpu_flush(cache);
+
 	if (!cache->vaddr)
 		return;
 
@@ -1293,6 +1198,7 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 
 static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 			     struct intel_engine_cs *engine,
+			     struct i915_vma *vma,
 			     unsigned int len)
 {
 	struct reloc_cache *cache = &eb->reloc_cache;
@@ -1315,7 +1221,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 		goto out_pool;
 	}
 
-	batch = i915_vma_instance(pool->obj, eb->context->vm, NULL);
+	batch = i915_vma_instance(pool->obj, vma->vm, NULL);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
 		goto err_unmap;
@@ -1351,6 +1257,16 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (err)
 		goto err_request;
 
+	err = reloc_move_to_gpu(rq, vma);
+	if (err)
+		goto err_request;
+
+	err = eb->engine->emit_bb_start(rq,
+					batch->node.start, PAGE_SIZE,
+					cache->gen > 5 ? 0 : I915_DISPATCH_SECURE);
+	if (err)
+		goto skip_request;
+
 	i915_vma_lock(batch);
 	err = i915_request_await_object(rq, batch->obj, false);
 	if (err == 0)
@@ -1365,7 +1281,6 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	cache->rq = rq;
 	cache->rq_cmd = cmd;
 	cache->rq_size = 0;
-	cache->rq_vma = batch;
 
 	/* Return with batch mapping (cmd) still pinned */
 	goto out_pool;
@@ -1394,9 +1309,12 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 {
 	struct reloc_cache *cache = &eb->reloc_cache;
 	u32 *cmd;
-	int err;
+
+	if (cache->rq_size > PAGE_SIZE/sizeof(u32) - (len + 1))
+		reloc_gpu_flush(cache);
 
 	if (unlikely(!cache->rq)) {
+		int err;
 		struct intel_engine_cs *engine = eb->engine;
 
 		if (!reloc_can_use_engine(engine)) {
@@ -1405,31 +1323,11 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 				return ERR_PTR(-ENODEV);
 		}
 
-		err = __reloc_gpu_alloc(eb, engine, len);
+		err = __reloc_gpu_alloc(eb, engine, vma, len);
 		if (unlikely(err))
 			return ERR_PTR(err);
 	}
 
-	if (vma != cache->target) {
-		err = reloc_move_to_gpu(cache->rq, vma);
-		if (unlikely(err)) {
-			i915_request_set_error_once(cache->rq, err);
-			return ERR_PTR(err);
-		}
-
-		cache->target = vma;
-	}
-
-	if (unlikely(cache->rq_size + len >
-		     PAGE_SIZE / sizeof(u32) - RELOC_TAIL)) {
-		err = reloc_gpu_chain(cache);
-		if (unlikely(err)) {
-			i915_request_set_error_once(cache->rq, err);
-			return ERR_PTR(err);
-		}
-	}
-
-	GEM_BUG_ON(cache->rq_size + len >= PAGE_SIZE  / sizeof(u32));
 	cmd = cache->rq_cmd + cache->rq_size;
 	cache->rq_size += len;
 
@@ -1777,20 +1675,15 @@ static int eb_relocate(struct i915_execbuffer *eb)
 	/* The objects are in their final locations, apply the relocations. */
 	if (eb->args->flags & __EXEC_HAS_RELOC) {
 		struct eb_vma *ev;
-		int flush;
 
 		list_for_each_entry(ev, &eb->relocs, reloc_link) {
 			err = eb_relocate_vma(eb, ev);
 			if (err)
-				break;
+				return err;
 		}
-
-		flush = reloc_gpu_flush(&eb->reloc_cache);
-		if (!err)
-			err = flush;
 	}
 
-	return err;
+	return 0;
 }
 
 static int eb_move_to_gpu(struct i915_execbuffer *eb)
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index a49016f8ee0d..580884cffec3 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -53,13 +53,13 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	}
 
 	/* Skip to the end of the cmd page */
-	i = PAGE_SIZE / sizeof(u32) - RELOC_TAIL - 1;
+	i = PAGE_SIZE / sizeof(u32) - 1;
 	i -= eb->reloc_cache.rq_size;
 	memset32(eb->reloc_cache.rq_cmd + eb->reloc_cache.rq_size,
 		 MI_NOOP, i);
 	eb->reloc_cache.rq_size += i;
 
-	/* Force batch chaining */
+	/* Force next batch */
 	if (!__reloc_entry_gpu(eb, vma,
 			       offsets[2] * sizeof(u32),
 			       2)) {
@@ -69,9 +69,7 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 
 	GEM_BUG_ON(!eb->reloc_cache.rq);
 	rq = i915_request_get(eb->reloc_cache.rq);
-	err = reloc_gpu_flush(&eb->reloc_cache);
-	if (err)
-		goto put_rq;
+	reloc_gpu_flush(&eb->reloc_cache);
 	GEM_BUG_ON(eb->reloc_cache.rq);
 
 	err = i915_gem_object_wait(obj, I915_WAIT_INTERRUPTIBLE, HZ / 2);
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
