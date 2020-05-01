Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF211C17A2
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 16:23:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBAF06ECB9;
	Fri,  1 May 2020 14:23:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 412116ECB8
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 14:23:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21083969-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 May 2020 15:23:22 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 15:23:20 +0100
Message-Id: <20200501142322.17048-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915/gem: Use chained reloc batches
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

The ring is a precious resource: we anticipate to only use a few hundred
bytes for a request, and only try to reserve that before we start. If we
go beyond our guess in building the request, then instead of waiting at
the start of execbuf before we hold any locks or other resources, we
may trigger a wait inside a critical region. One example is in using gpu
relocations, where currently we emit a new MI_BB_START from the ring
every time we overflow a page of relocation entries. However, instead of
insert the command into the precious ring, we can chain the next page of
relocation entries as MI_BB_START from the end of the previous.

v2: Delay the emit_bb_start until after all the chained vma
synchronisation is complete. Since the buffer pool batches are idle, this
_should_ be a no-op, but one day we may some fancy async GPU bindings
for new vma!

v3: Use pool/batch consitently, once we start thinking in terms of the
batch vma, use batch->obj.
v4: Explain the magic number 4.

Tvrtko spotted that we lose propagation of the error for failing to
submit the relocation request; that's easier to fix up in the next
patch.

Testcase: igt/gem_exec_reloc/basic-many-active
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 134 +++++++++++++++---
 1 file changed, 115 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 414859fa2673..0411618d66a9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -269,6 +269,7 @@ struct i915_execbuffer {
 		bool needs_unfenced : 1;
 
 		struct i915_request *rq;
+		struct i915_vma *rq_vma;
 		u32 *rq_cmd;
 		unsigned int rq_size;
 	} reloc_cache;
@@ -975,20 +976,114 @@ static inline struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
 	return &i915->ggtt;
 }
 
+#define RELOC_TAIL 4
+
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
+	GEM_BUG_ON(cache->rq_size + RELOC_TAIL > PAGE_SIZE  / sizeof(u32));
+	cmd = cache->rq_cmd + cache->rq_size;
+	*cmd++ = MI_ARB_CHECK;
+	if (cache->gen >= 8) {
+		*cmd++ = MI_BATCH_BUFFER_START_GEN8;
+		*cmd++ = lower_32_bits(batch->node.start);
+		*cmd++ = upper_32_bits(batch->node.start);
+	} else {
+		*cmd++ = MI_BATCH_BUFFER_START;
+		*cmd++ = lower_32_bits(batch->node.start);
+	}
+	i915_gem_object_flush_map(cache->rq_vma->obj);
+	i915_gem_object_unpin_map(cache->rq_vma->obj);
+	cache->rq_vma = NULL;
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
+	cmd = i915_gem_object_pin_map(batch->obj,
+				      cache->has_llc ?
+				      I915_MAP_FORCE_WB :
+				      I915_MAP_FORCE_WC);
+	if (IS_ERR(cmd)) {
+		err = PTR_ERR(cmd);
+		goto out_pool;
+	}
+
+	/* Return with batch mapping (cmd) still pinned */
+	cache->rq_cmd = cmd;
+	cache->rq_size = 0;
+	cache->rq_vma = batch;
+
+out_pool:
+	intel_gt_buffer_pool_put(pool);
+	return err;
+}
+
+static unsigned int reloc_bb_flags(const struct reloc_cache *cache)
+{
+	return cache->gen > 5 ? 0 : I915_DISPATCH_SECURE;
+}
+
 static void reloc_gpu_flush(struct reloc_cache *cache)
 {
-	struct drm_i915_gem_object *obj = cache->rq->batch->obj;
+	struct i915_request *rq;
+	int err;
 
-	GEM_BUG_ON(cache->rq_size >= obj->base.size / sizeof(u32));
-	cache->rq_cmd[cache->rq_size] = MI_BATCH_BUFFER_END;
+	rq = fetch_and_zero(&cache->rq);
+	if (!rq)
+		return;
 
-	__i915_gem_object_flush_map(obj, 0, sizeof(u32) * (cache->rq_size + 1));
-	i915_gem_object_unpin_map(obj);
+	if (cache->rq_vma) {
+		struct drm_i915_gem_object *obj = cache->rq_vma->obj;
 
-	intel_gt_chipset_flush(cache->rq->engine->gt);
+		GEM_BUG_ON(cache->rq_size >= obj->base.size / sizeof(u32));
+		cache->rq_cmd[cache->rq_size++] = MI_BATCH_BUFFER_END;
 
-	i915_request_add(cache->rq);
-	cache->rq = NULL;
+		__i915_gem_object_flush_map(obj,
+					    0, sizeof(u32) * cache->rq_size);
+		i915_gem_object_unpin_map(obj);
+	}
+
+	err = 0;
+	if (rq->engine->emit_init_breadcrumb)
+		err = rq->engine->emit_init_breadcrumb(rq);
+	if (!err)
+		err = rq->engine->emit_bb_start(rq,
+						rq->batch->node.start,
+						PAGE_SIZE,
+						reloc_bb_flags(cache));
+	if (err)
+		i915_request_set_error_once(rq, err);
+
+	intel_gt_chipset_flush(rq->engine->gt);
+	i915_request_add(rq);
 }
 
 static void reloc_cache_reset(struct reloc_cache *cache)
@@ -1237,12 +1332,6 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (err)
 		goto err_request;
 
-	err = eb->engine->emit_bb_start(rq,
-					batch->node.start, PAGE_SIZE,
-					cache->gen > 5 ? 0 : I915_DISPATCH_SECURE);
-	if (err)
-		goto skip_request;
-
 	i915_vma_lock(batch);
 	err = i915_request_await_object(rq, batch->obj, false);
 	if (err == 0)
@@ -1257,6 +1346,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	cache->rq = rq;
 	cache->rq_cmd = cmd;
 	cache->rq_size = 0;
+	cache->rq_vma = batch;
 
 	/* Return with batch mapping (cmd) still pinned */
 	goto out_pool;
@@ -1280,13 +1370,9 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
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
 
@@ -1295,6 +1381,16 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 			return ERR_PTR(err);
 	}
 
+	if (unlikely(cache->rq_size + len >
+		     PAGE_SIZE / sizeof(u32) - RELOC_TAIL)) {
+		err = reloc_gpu_chain(cache);
+		if (unlikely(err)) {
+			i915_request_set_error_once(cache->rq, err);
+			return ERR_PTR(err);
+		}
+	}
+
+	GEM_BUG_ON(cache->rq_size + len >= PAGE_SIZE  / sizeof(u32));
 	cmd = cache->rq_cmd + cache->rq_size;
 	cache->rq_size += len;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
