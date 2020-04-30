Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 756E81C0AF0
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:22:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1AD96EA4C;
	Thu, 30 Apr 2020 23:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB2096EA4E
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 23:22:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21076594-1500050 
 for multiple; Fri, 01 May 2020 00:22:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 00:22:08 +0100
Message-Id: <20200430232208.26052-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Use chained reloc batches
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

The ring is a precious resource: we anticipate to only use a few hundred
bytes for a request, and only try to reserve that before we start. If we
go beyond our guess in building the request, then instead of waiting at
the start of execbuf before we hold any locks or other resources, we
may trigger a wait inside a critical region. One example is in using gpu
relocations, where currently we emit a new MI_BB_START from the ring
every time we overflow a page of relocation entries. However, instead of
insert the command into the precious ring, we can chain the next page of
relocation entries as MI_BB_START from the end of the previous.

Testcase: igt/gem_exec_reloc/basic-many-active
Testcase: igt/gem_exec_reloc/basic-wide-active
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 125 ++++++++++++++----
 1 file changed, 102 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 414859fa2673..803a601588b1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -268,6 +268,7 @@ struct i915_execbuffer {
 		bool has_fence : 1;
 		bool needs_unfenced : 1;
 
+		struct i915_vma *target;
 		struct i915_request *rq;
 		u32 *rq_cmd;
 		unsigned int rq_size;
@@ -975,29 +976,99 @@ static inline struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
 	return &i915->ggtt;
 }
 
+static int reloc_gpu_chain(struct reloc_cache *cache)
+{
+	struct intel_gt_buffer_pool_node *pool;
+	struct i915_request *rq = cache->rq;
+	struct i915_vma *batch;
+	u32 *cmd;
+	int err;
+
+	pool = intel_gt_get_buffer_pool(rq->engine->gt, PAGE_SIZE);
+	if (IS_ERR(pool))
+		return PTR_ERR(pool);
+
+	batch = i915_vma_instance(pool->obj, rq->context->vm, NULL);
+	if (IS_ERR(batch)) {
+		err = PTR_ERR(batch);
+		goto out_pool;
+	}
+
+	err = i915_vma_pin(batch, 0, 0, PIN_USER | PIN_NONBLOCK);
+	if (err)
+		goto out_pool;
+
+	cmd = cache->rq_cmd + cache->rq_size;
+	if (cache->gen >= 8) {
+		*cmd++ = MI_BATCH_BUFFER_START_GEN8;
+		*cmd++ = lower_32_bits(batch->node.start);
+		*cmd++ = upper_32_bits(batch->node.start);
+	} else {
+		*cmd++ = MI_BATCH_BUFFER_START;
+		*cmd++ = lower_32_bits(batch->node.start);
+	}
+	i915_gem_object_flush_map(rq->batch->obj);
+	i915_gem_object_unpin_map(rq->batch->obj);
+	rq->batch = NULL;
+
+	err = intel_gt_buffer_pool_mark_active(pool, rq);
+	if (err == 0) {
+		i915_vma_lock(batch);
+		err = i915_request_await_object(rq, batch->obj, false);
+		if (err == 0)
+			err = i915_vma_move_to_active(batch, rq, 0);
+		i915_vma_unlock(batch);
+	}
+	i915_vma_unpin(batch);
+	if (err)
+		goto out_pool;
+
+	cmd = i915_gem_object_pin_map(pool->obj,
+				      cache->has_llc ?
+				      I915_MAP_FORCE_WB :
+				      I915_MAP_FORCE_WC);
+	if (IS_ERR(cmd)) {
+		err = PTR_ERR(cmd);
+		goto out_pool;
+	}
+
+	cache->rq_cmd = cmd;
+	cache->rq_size = 0;
+
+	/* Return with batch mapping (cmd) still pinned */
+	rq->batch = batch;
+
+out_pool:
+	intel_gt_buffer_pool_put(pool);
+	return err;
+}
+
 static void reloc_gpu_flush(struct reloc_cache *cache)
 {
-	struct drm_i915_gem_object *obj = cache->rq->batch->obj;
+	struct i915_request *rq;
 
-	GEM_BUG_ON(cache->rq_size >= obj->base.size / sizeof(u32));
-	cache->rq_cmd[cache->rq_size] = MI_BATCH_BUFFER_END;
+	rq = fetch_and_zero(&cache->rq);
+	if (!rq)
+		return;
 
-	__i915_gem_object_flush_map(obj, 0, sizeof(u32) * (cache->rq_size + 1));
-	i915_gem_object_unpin_map(obj);
+	if (rq->batch) {
+		struct drm_i915_gem_object *obj = rq->batch->obj;
 
-	intel_gt_chipset_flush(cache->rq->engine->gt);
+		GEM_BUG_ON(cache->rq_size >= obj->base.size / sizeof(u32));
+		cache->rq_cmd[cache->rq_size] = MI_BATCH_BUFFER_END;
 
-	i915_request_add(cache->rq);
-	cache->rq = NULL;
+		__i915_gem_object_flush_map(obj, 0, sizeof(u32) * (cache->rq_size + 1));
+		i915_gem_object_unpin_map(obj);
+	}
+
+	intel_gt_chipset_flush(rq->engine->gt);
+	i915_request_add(rq);
 }
 
 static void reloc_cache_reset(struct reloc_cache *cache)
 {
 	void *vaddr;
 
-	if (cache->rq)
-		reloc_gpu_flush(cache);
-
 	if (!cache->vaddr)
 		return;
 
@@ -1190,7 +1261,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 }
 
 static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
-			     struct i915_vma *vma,
 			     unsigned int len)
 {
 	struct reloc_cache *cache = &eb->reloc_cache;
@@ -1213,7 +1283,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 		goto out_pool;
 	}
 
-	batch = i915_vma_instance(pool->obj, vma->vm, NULL);
+	batch = i915_vma_instance(pool->obj, eb->context->vm, NULL);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
 		goto err_unmap;
@@ -1233,10 +1303,6 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (err)
 		goto err_request;
 
-	err = reloc_move_to_gpu(rq, vma);
-	if (err)
-		goto err_request;
-
 	err = eb->engine->emit_bb_start(rq,
 					batch->node.start, PAGE_SIZE,
 					cache->gen > 5 ? 0 : I915_DISPATCH_SECURE);
@@ -1280,21 +1346,32 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 {
 	struct reloc_cache *cache = &eb->reloc_cache;
 	u32 *cmd;
-
-	if (cache->rq_size > PAGE_SIZE/sizeof(u32) - (len + 1))
-		reloc_gpu_flush(cache);
+	int err;
 
 	if (unlikely(!cache->rq)) {
-		int err;
-
 		if (!intel_engine_can_store_dword(eb->engine))
 			return ERR_PTR(-ENODEV);
 
-		err = __reloc_gpu_alloc(eb, vma, len);
+		err = __reloc_gpu_alloc(eb, len);
+		if (unlikely(err))
+			return ERR_PTR(err);
+	}
+
+	if (vma != cache->target) {
+		err = reloc_move_to_gpu(cache->rq, vma);
 		if (unlikely(err))
 			return ERR_PTR(err);
+
+		cache->target = vma;
 	}
 
+	if (cache->rq_size > PAGE_SIZE/sizeof(u32) - (len + 1) - 4) {
+		err = reloc_gpu_chain(cache);
+		if (unlikely(err))
+			return ERR_PTR(err);
+	}
+
+	GEM_BUG_ON(cache->rq_size + len > PAGE_SIZE/sizeof(u32));
 	cmd = cache->rq_cmd + cache->rq_size;
 	cache->rq_size += len;
 
@@ -1602,6 +1679,8 @@ static int eb_relocate(struct i915_execbuffer *eb)
 			if (err)
 				return err;
 		}
+
+		reloc_gpu_flush(&eb->reloc_cache);
 	}
 
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
