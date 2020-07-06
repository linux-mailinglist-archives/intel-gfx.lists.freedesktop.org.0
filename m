Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6757215282
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 08:19:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC1F6E0DD;
	Mon,  6 Jul 2020 06:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C9446E0CC
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 06:19:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21724459-1500050 
 for multiple; Mon, 06 Jul 2020 07:19:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 07:19:22 +0100
Message-Id: <20200706061926.6687-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200706061926.6687-1-chris@chris-wilson.co.uk>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/20] drm/i915/gem: Reintroduce multiple passes
 for reloc processing
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

The prospect of locking the entire submission sequence under a wide
ww_mutex re-imposes some key restrictions, in particular that we must
not call copy_(from|to)_user underneath the mutex (as the faulthandlers
themselves may need to take the ww_mutex). To satisfy this requirement,
we need to split the relocation handling into multiple phases again.
After dropping the reservations, we need to allocate enough buffer space
to both copy the relocations from userspace into, and serve as the
relocation command buffer. Once we have finished copying the
relocations, we can then re-aquire all the objects for the execbuf and
rebind them, including our new relocations objects. After we have bound
all the new and old objects into their final locations, we can then
convert the relocation entries into the GPU commands to update the
relocated vma. Finally, once it is all over and we have dropped the
ww_mutex for the last time, we can then complete the update of the user
relocation entries.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 842 ++++++++----------
 .../i915/gem/selftests/i915_gem_execbuffer.c  | 195 ++--
 2 files changed, 520 insertions(+), 517 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 629b736adf2c..fbf5c5cd51ca 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -35,6 +35,7 @@ struct eb_vma {
 
 	/** This vma's place in the execbuf reservation list */
 	struct drm_i915_gem_exec_object2 *exec;
+	u32 bias;
 
 	struct list_head bind_link;
 	struct list_head unbound_link;
@@ -60,15 +61,12 @@ struct eb_vma_array {
 #define __EXEC_OBJECT_HAS_PIN		BIT(31)
 #define __EXEC_OBJECT_HAS_FENCE		BIT(30)
 #define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
-#define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
-#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
+#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 29) /* all of the above */
 
 #define __EXEC_HAS_RELOC	BIT(31)
 #define __EXEC_INTERNAL_FLAGS	(~0u << 31)
 #define UPDATE			PIN_OFFSET_FIXED
 
-#define BATCH_OFFSET_BIAS (256*1024)
-
 #define __I915_EXEC_ILLEGAL_FLAGS \
 	(__I915_EXEC_UNKNOWN_FLAGS | \
 	 I915_EXEC_CONSTANTS_MASK  | \
@@ -266,20 +264,18 @@ struct i915_execbuffer {
 	 * obj/page
 	 */
 	struct reloc_cache {
-		struct drm_mm_node node; /** temporary GTT binding */
 		unsigned int gen; /** Cached value of INTEL_GEN */
 		bool use_64bit_reloc : 1;
-		bool has_llc : 1;
 		bool has_fence : 1;
 		bool needs_unfenced : 1;
 
 		struct intel_context *ce;
 
-		struct i915_vma *target;
-		struct i915_request *rq;
-		struct i915_vma *rq_vma;
-		u32 *rq_cmd;
-		unsigned int rq_size;
+		struct eb_relocs_link {
+			struct i915_vma *vma;
+		} head;
+		struct drm_i915_gem_relocation_entry *map;
+		unsigned int pos;
 	} reloc_cache;
 
 	struct eb_cmdparser {
@@ -288,7 +284,7 @@ struct i915_execbuffer {
 	} parser;
 
 	u64 invalid_flags; /** Set of execobj.flags that are invalid */
-	u32 context_flags; /** Set of execobj.flags to insert from the ctx */
+	u32 context_bias;
 
 	u32 batch_start_offset; /** Location within object of batch */
 	u32 batch_len; /** Length of batch within object */
@@ -308,6 +304,12 @@ static struct drm_i915_gem_exec_object2 no_entry = {
 	.offset = -1ull
 };
 
+static u64 noncanonical_addr(u64 addr, const struct i915_address_space *vm)
+{
+	GEM_BUG_ON(!is_power_of_2(vm->total));
+	return addr & (vm->total - 1);
+}
+
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
 {
 	return intel_engine_requires_cmd_parser(eb->engine) ||
@@ -479,11 +481,12 @@ static int eb_create(struct i915_execbuffer *eb)
 	return 0;
 }
 
-static bool
-eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
-		 const struct i915_vma *vma,
-		 unsigned int flags)
+static bool eb_vma_misplaced(const struct eb_vma *ev)
 {
+	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
+	const struct i915_vma *vma = ev->vma;
+	unsigned int flags = ev->flags;
+
 	if (test_bit(I915_VMA_ERROR_BIT, __i915_vma_flags(vma)))
 		return true;
 
@@ -497,8 +500,7 @@ eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
 	    vma->node.start != entry->offset)
 		return true;
 
-	if (flags & __EXEC_OBJECT_NEEDS_BIAS &&
-	    vma->node.start < BATCH_OFFSET_BIAS)
+	if (vma->node.start < ev->bias)
 		return true;
 
 	if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS) &&
@@ -543,7 +545,7 @@ eb_pin_vma_inplace(struct i915_execbuffer *eb,
 	if (!i915_active_is_idle(&vma->vm->binding))
 		return false;
 
-	if (eb_vma_misplaced(entry, vma, ev->flags))
+	if (eb_vma_misplaced(ev))
 		return false;
 
 	pin_flags = PIN_USER;
@@ -561,7 +563,7 @@ eb_pin_vma_inplace(struct i915_execbuffer *eb,
 		}
 	}
 
-	GEM_BUG_ON(eb_vma_misplaced(entry, vma, ev->flags));
+	GEM_BUG_ON(eb_vma_misplaced(ev));
 
 	ev->flags |= __EXEC_OBJECT_HAS_PIN;
 	return true;
@@ -599,7 +601,7 @@ eb_validate_vma(struct i915_execbuffer *eb,
 	 * so from this point we're always using non-canonical
 	 * form internally.
 	 */
-	entry->offset = gen8_noncanonical_addr(entry->offset);
+	entry->offset = noncanonical_addr(entry->offset, eb->context->vm);
 
 	if (!eb->reloc_cache.has_fence) {
 		entry->flags &= ~EXEC_OBJECT_NEEDS_FENCE;
@@ -610,9 +612,6 @@ eb_validate_vma(struct i915_execbuffer *eb,
 			entry->flags |= EXEC_OBJECT_NEEDS_GTT | __EXEC_OBJECT_NEEDS_MAP;
 	}
 
-	if (!(entry->flags & EXEC_OBJECT_PINNED))
-		entry->flags |= eb->context_flags;
-
 	return 0;
 }
 
@@ -629,7 +628,9 @@ eb_add_vma(struct i915_execbuffer *eb,
 	ev->vma = vma;
 	ev->exec = entry;
 	ev->flags = entry->flags;
+	ev->bias = eb->context_bias;
 
+	ev->handle = entry->handle;
 	if (eb->lut_size > 0) {
 		ev->handle = entry->handle;
 		hlist_add_head(&ev->node,
@@ -655,7 +656,8 @@ eb_add_vma(struct i915_execbuffer *eb,
 	if (i == batch_idx) {
 		if (entry->relocation_count &&
 		    !(ev->flags & EXEC_OBJECT_PINNED))
-			ev->flags |= __EXEC_OBJECT_NEEDS_BIAS;
+			ev->bias = max_t(u32, ev->bias, SZ_256K);
+
 		if (eb->reloc_cache.has_fence)
 			ev->flags |= EXEC_OBJECT_NEEDS_FENCE;
 
@@ -981,7 +983,8 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
 	const unsigned int exec_flags = bind->ev->flags;
 	struct i915_vma *vma = bind->ev->vma;
 	struct i915_address_space *vm = vma->vm;
-	u64 start = 0, end = vm->total;
+	u64 start = round_up(bind->ev->bias, I915_GTT_MIN_ALIGNMENT);
+	u64 end = vm->total;
 	u64 align = entry->alignment ?: I915_GTT_MIN_ALIGNMENT;
 	unsigned int bind_flags;
 	int err;
@@ -1001,7 +1004,7 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
 	GEM_BUG_ON(!vma->size);
 
 	/* Reuse old address (if it doesn't conflict with new requirements) */
-	if (eb_vma_misplaced(entry, vma, exec_flags)) {
+	if (eb_vma_misplaced(bind->ev)) {
 		vma->node.start = entry->offset & PIN_OFFSET_MASK;
 		vma->node.size = max(entry->pad_to_size, vma->size);
 		vma->node.color = 0;
@@ -1023,11 +1026,8 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
 		align = max_t(u64, align, vma->fence_alignment);
 	}
 
-	if (exec_flags & __EXEC_OBJECT_NEEDS_BIAS)
-		start = BATCH_OFFSET_BIAS;
-
 	GEM_BUG_ON(!vma->node.size);
-	if (vma->node.size > end - start)
+	if (start > end || vma->node.size > end - start)
 		return -E2BIG;
 
 	/* Try the user's preferred location first (mandatory if soft-pinned) */
@@ -1110,7 +1110,7 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
 	}
 
 	bind->ev->flags |= __EXEC_OBJECT_HAS_PIN;
-	GEM_BUG_ON(eb_vma_misplaced(entry, vma, bind->ev->flags));
+	GEM_BUG_ON(eb_vma_misplaced(bind->ev));
 
 	if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_FENCE)) {
 		err = __i915_vma_pin_fence_async(vma, &work->base);
@@ -1346,8 +1346,7 @@ static int wait_for_unbinds(struct i915_execbuffer *eb,
 
 		GEM_BUG_ON(ev->flags & __EXEC_OBJECT_HAS_PIN);
 
-		if (drm_mm_node_allocated(&vma->node) &&
-		    eb_vma_misplaced(ev->exec, vma, ev->flags)) {
+		if (drm_mm_node_allocated(&vma->node) && eb_vma_misplaced(ev)) {
 			err = i915_vma_unbind(vma);
 			if (err)
 				return err;
@@ -1467,7 +1466,7 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 			 * we cannot handle migrating the vma inside the worker.
 			 */
 			if (drm_mm_node_allocated(&vma->node)) {
-				if (eb_vma_misplaced(ev->exec, vma, ev->flags)) {
+				if (eb_vma_misplaced(ev)) {
 					err = -ENOSPC;
 					break;
 				}
@@ -1710,9 +1709,9 @@ static int eb_select_context(struct i915_execbuffer *eb)
 	if (rcu_access_pointer(ctx->vm))
 		eb->invalid_flags |= EXEC_OBJECT_NEEDS_GTT;
 
-	eb->context_flags = 0;
+	eb->context_bias = 0;
 	if (test_bit(UCONTEXT_NO_ZEROMAP, &ctx->user_flags))
-		eb->context_flags |= __EXEC_OBJECT_NEEDS_BIAS;
+		eb->context_bias = I915_GTT_MIN_ALIGNMENT;
 
 	return 0;
 }
@@ -1858,8 +1857,6 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 
 static void eb_destroy(const struct i915_execbuffer *eb)
 {
-	GEM_BUG_ON(eb->reloc_cache.rq);
-
 	eb_vma_array_put(eb->array);
 	if (eb->lut_size > 0)
 		kfree(eb->buckets);
@@ -1877,98 +1874,25 @@ static void reloc_cache_init(struct reloc_cache *cache,
 {
 	/* Must be a variable in the struct to allow GCC to unroll. */
 	cache->gen = INTEL_GEN(i915);
-	cache->has_llc = HAS_LLC(i915);
 	cache->use_64bit_reloc = HAS_64BIT_RELOC(i915);
 	cache->has_fence = cache->gen < 4;
 	cache->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
-	cache->node.flags = 0;
-	cache->rq = NULL;
-	cache->target = NULL;
-}
-
-#define RELOC_TAIL 4
-
-static int reloc_gpu_chain(struct reloc_cache *cache)
-{
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
-
-	cmd = i915_gem_object_pin_map(batch->obj,
-				      cache->has_llc ?
-				      I915_MAP_FORCE_WB :
-				      I915_MAP_FORCE_WC);
-	if (IS_ERR(cmd)) {
-		err = PTR_ERR(cmd);
-		goto out_pool;
-	}
-
-	/* Return with batch mapping (cmd) still pinned */
-	cache->rq_cmd = cmd;
-	cache->rq_size = 0;
-	cache->rq_vma = batch;
-
-out_pool:
-	intel_gt_buffer_pool_put(pool);
-	return err;
 }
 
 static struct i915_request *
-nested_request_create(struct intel_context *ce)
+nested_request_create(struct intel_context *ce, struct i915_execbuffer *eb)
 {
 	struct i915_request *rq;
 
 	/* XXX This only works once; replace with shared timeline */
-	mutex_lock_nested(&ce->timeline->mutex, SINGLE_DEPTH_NESTING);
+	if (ce->timeline != eb->context->timeline)
+		mutex_lock_nested(&ce->timeline->mutex, SINGLE_DEPTH_NESTING);
 	intel_context_enter(ce);
 
 	rq = __i915_request_create(ce, GFP_KERNEL);
 
 	intel_context_exit(ce);
-	if (IS_ERR(rq))
+	if (IS_ERR(rq) && ce->timeline != eb->context->timeline)
 		mutex_unlock(&ce->timeline->mutex);
 
 	return rq;
@@ -1991,28 +1915,18 @@ static unsigned int reloc_bb_flags(const struct reloc_cache *cache)
 	return cache->gen > 5 ? 0 : I915_DISPATCH_SECURE;
 }
 
-static int reloc_gpu_flush(struct i915_execbuffer *eb)
+static int
+reloc_gpu_flush(struct i915_execbuffer *eb, struct i915_request *rq, int err)
 {
 	struct reloc_cache *cache = &eb->reloc_cache;
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
+	u32 *cs;
 
-		__i915_gem_object_flush_map(obj,
-					    0, sizeof(u32) * cache->rq_size);
-		i915_gem_object_unpin_map(obj);
-	}
+	cs = (u32 *)(cache->map + cache->pos);
+	*cs++ = MI_BATCH_BUFFER_END;
+	__i915_gem_object_flush_map(cache->head.vma->obj,
+				    0, (void *)cs - (void *)cache->map);
+	i915_gem_object_unpin_map(cache->head.vma->obj);
 
-	err = 0;
 	if (rq->engine->emit_init_breadcrumb)
 		err = rq->engine->emit_init_breadcrumb(rq);
 	if (!err)
@@ -2025,6 +1939,7 @@ static int reloc_gpu_flush(struct i915_execbuffer *eb)
 
 	intel_gt_chipset_flush(rq->engine->gt);
 	__i915_request_add(rq, &eb->gem_context->sched);
+
 	if (i915_request_timeline(rq) != eb->context->timeline)
 		mutex_unlock(&i915_request_timeline(rq)->mutex);
 
@@ -2042,7 +1957,7 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 		i915_gem_clflush_object(obj, 0);
 	obj->write_domain = 0;
 
-	err = i915_request_await_object(rq, vma->obj, true);
+	err = i915_request_await_object(rq, obj, true);
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 
@@ -2051,130 +1966,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	return err;
 }
 
-static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
-			     struct intel_engine_cs *engine,
-			     unsigned int len)
-{
-	struct reloc_cache *cache = &eb->reloc_cache;
-	struct intel_gt_buffer_pool_node *pool;
-	struct i915_request *rq;
-	struct i915_vma *batch;
-	u32 *cmd;
-	int err;
-
-	pool = intel_gt_get_buffer_pool(engine->gt, PAGE_SIZE);
-	if (IS_ERR(pool))
-		return PTR_ERR(pool);
-
-	cmd = i915_gem_object_pin_map(pool->obj,
-				      cache->has_llc ?
-				      I915_MAP_FORCE_WB :
-				      I915_MAP_FORCE_WC);
-	if (IS_ERR(cmd)) {
-		err = PTR_ERR(cmd);
-		goto out_pool;
-	}
-
-	batch = i915_vma_instance(pool->obj, eb->context->vm, NULL);
-	if (IS_ERR(batch)) {
-		err = PTR_ERR(batch);
-		goto err_unmap;
-	}
-
-	err = i915_vma_pin(batch, 0, 0, PIN_USER | PIN_NONBLOCK);
-	if (err)
-		goto err_unmap;
-
-	if (cache->ce == eb->context)
-		rq = __i915_request_create(cache->ce, GFP_KERNEL);
-	else
-		rq = nested_request_create(cache->ce);
-	if (IS_ERR(rq)) {
-		err = PTR_ERR(rq);
-		goto err_unpin;
-	}
-	rq->cookie = lockdep_pin_lock(&i915_request_timeline(rq)->mutex);
-
-	err = intel_gt_buffer_pool_mark_active(pool, rq);
-	if (err)
-		goto err_request;
-
-	i915_vma_lock(batch);
-	err = i915_request_await_object(rq, batch->obj, false);
-	if (err == 0)
-		err = i915_vma_move_to_active(batch, rq, 0);
-	i915_vma_unlock(batch);
-	if (err)
-		goto skip_request;
-
-	rq->batch = batch;
-	i915_vma_unpin(batch);
-
-	cache->rq = rq;
-	cache->rq_cmd = cmd;
-	cache->rq_size = 0;
-	cache->rq_vma = batch;
-
-	/* Return with batch mapping (cmd) still pinned */
-	goto out_pool;
-
-skip_request:
-	i915_request_set_error_once(rq, err);
-err_request:
-	__i915_request_add(rq, &eb->gem_context->sched);
-	if (i915_request_timeline(rq) != eb->context->timeline)
-		mutex_unlock(&i915_request_timeline(rq)->mutex);
-err_unpin:
-	i915_vma_unpin(batch);
-err_unmap:
-	i915_gem_object_unpin_map(pool->obj);
-out_pool:
-	intel_gt_buffer_pool_put(pool);
-	return err;
-}
-
-static u32 *reloc_gpu(struct i915_execbuffer *eb,
-		      struct i915_vma *vma,
-		      unsigned int len)
-{
-	struct reloc_cache *cache = &eb->reloc_cache;
-	u32 *cmd;
-	int err;
-
-	if (unlikely(!cache->rq)) {
-		struct intel_engine_cs *engine = eb->engine;
-
-		err = __reloc_gpu_alloc(eb, engine, len);
-		if (unlikely(err))
-			return ERR_PTR(err);
-	}
-
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
-	cmd = cache->rq_cmd + cache->rq_size;
-	cache->rq_size += len;
-
-	return cmd;
-}
-
 static unsigned long vma_phys_addr(struct i915_vma *vma, u32 offset)
 {
 	struct page *page;
@@ -2189,30 +1980,30 @@ static unsigned long vma_phys_addr(struct i915_vma *vma, u32 offset)
 	return addr + offset_in_page(offset);
 }
 
-static int __reloc_entry_gpu(struct i915_execbuffer *eb,
-			     struct i915_vma *vma,
-			     u64 offset,
-			     u64 target_addr)
+static bool
+eb_relocs_vma_entry(struct i915_execbuffer *eb,
+		    const struct eb_vma *ev,
+		    struct drm_i915_gem_relocation_entry *reloc)
 {
 	const unsigned int gen = eb->reloc_cache.gen;
-	unsigned int len;
+	struct i915_vma *target = eb_get_vma(eb, reloc->target_handle)->vma;
+	const u64 target_addr = relocation_target(reloc, target);
+	const u64 presumed =
+		noncanonical_addr(reloc->presumed_offset, target->vm);
+	u64 offset = reloc->offset;
 	u32 *batch;
-	u64 addr;
 
-	if (gen >= 8)
-		len = offset & 7 ? 8 : 5;
-	else if (gen >= 4)
-		len = 4;
-	else
-		len = 3;
+	GEM_BUG_ON(!i915_vma_is_pinned(target));
 
-	batch = reloc_gpu(eb, vma, len);
-	if (IS_ERR(batch))
-		return PTR_ERR(batch);
+	/* Replace the reloc entry with the GPU commands */
+	batch = memset(reloc, 0, sizeof(*reloc));
+	if (presumed == target->node.start)
+		return false;
 
-	addr = gen8_canonical_addr(vma->node.start + offset);
 	if (gen >= 8) {
-		if (offset & 7) {
+		u64 addr = gen8_canonical_addr(ev->vma->node.start + offset);
+
+		if (addr & 7) {
 			*batch++ = MI_STORE_DWORD_IMM_GEN4;
 			*batch++ = lower_32_bits(addr);
 			*batch++ = upper_32_bits(addr);
@@ -2234,107 +2025,65 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 	} else if (gen >= 6) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4;
 		*batch++ = 0;
-		*batch++ = addr;
+		*batch++ = ev->vma->node.start + offset;
 		*batch++ = target_addr;
 	} else if (IS_I965G(eb->i915)) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4;
 		*batch++ = 0;
-		*batch++ = vma_phys_addr(vma, offset);
+		*batch++ = vma_phys_addr(ev->vma, offset);
 		*batch++ = target_addr;
 	} else if (gen >= 4) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 		*batch++ = 0;
-		*batch++ = addr;
+		*batch++ = ev->vma->node.start + offset;
 		*batch++ = target_addr;
-	} else if (gen >= 3 &&
-		   !(IS_I915G(eb->i915) || IS_I915GM(eb->i915))) {
+	} else if (gen >= 3 && !(IS_I915G(eb->i915) || IS_I915GM(eb->i915))) {
 		*batch++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
-		*batch++ = addr;
+		*batch++ = ev->vma->node.start + offset;
 		*batch++ = target_addr;
 	} else {
 		*batch++ = MI_STORE_DWORD_IMM;
-		*batch++ = vma_phys_addr(vma, offset);
+		*batch++ = vma_phys_addr(ev->vma, offset);
 		*batch++ = target_addr;
 	}
+	GEM_BUG_ON(batch > (u32 *)(reloc + 1));
 
-	return 0;
-}
-
-static u64
-relocate_entry(struct i915_execbuffer *eb,
-	       struct i915_vma *vma,
-	       const struct drm_i915_gem_relocation_entry *reloc,
-	       const struct i915_vma *target)
-{
-	u64 target_addr = relocation_target(reloc, target);
-	int err;
-
-	err = __reloc_entry_gpu(eb, vma, reloc->offset, target_addr);
-	if (err)
-		return err;
-
-	return target->node.start | UPDATE;
-}
-
-static int gen6_fixup_ggtt(struct i915_vma *vma)
-{
-	int err;
-
-	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
-		return 0;
-
-	err = i915_vma_wait_for_bind(vma);
-	if (err)
-		return err;
-
-	mutex_lock(&vma->vm->mutex);
-	if (!(atomic_fetch_or(I915_VMA_GLOBAL_BIND, &vma->flags) & I915_VMA_GLOBAL_BIND)) {
-		__i915_gem_object_pin_pages(vma->obj);
-		vma->ops->bind_vma(vma->vm, NULL, vma,
-				   vma->obj->cache_level,
-				   I915_VMA_GLOBAL_BIND);
-	}
-	mutex_unlock(&vma->vm->mutex);
-
-	return 0;
+	return true;
 }
 
-static u64
-eb_relocate_entry(struct i915_execbuffer *eb,
-		  struct eb_vma *ev,
-		  const struct drm_i915_gem_relocation_entry *reloc)
+static int
+eb_relocs_check_entry(struct i915_execbuffer *eb,
+		      const struct eb_vma *ev,
+		      const struct drm_i915_gem_relocation_entry *reloc)
 {
 	struct drm_i915_private *i915 = eb->i915;
 	struct eb_vma *target;
-	int err;
 
 	/* we've already hold a reference to all valid objects */
 	target = eb_get_vma(eb, reloc->target_handle);
 	if (unlikely(!target))
 		return -ENOENT;
 
-	GEM_BUG_ON(!i915_vma_is_pinned(target->vma));
-
 	/* Validate that the target is in a valid r/w GPU domain */
 	if (unlikely(reloc->write_domain & (reloc->write_domain - 1))) {
 		drm_dbg(&i915->drm, "reloc with multiple write domains: "
-			  "target %d offset %d "
-			  "read %08x write %08x",
-			  reloc->target_handle,
-			  (int) reloc->offset,
-			  reloc->read_domains,
-			  reloc->write_domain);
+			"target %d offset %llu "
+			"read %08x write %08x",
+			reloc->target_handle,
+			reloc->offset,
+			reloc->read_domains,
+			reloc->write_domain);
 		return -EINVAL;
 	}
 	if (unlikely((reloc->write_domain | reloc->read_domains)
 		     & ~I915_GEM_GPU_DOMAINS)) {
 		drm_dbg(&i915->drm, "reloc with read/write non-GPU domains: "
-			  "target %d offset %d "
-			  "read %08x write %08x",
-			  reloc->target_handle,
-			  (int) reloc->offset,
-			  reloc->read_domains,
-			  reloc->write_domain);
+			"target %d offset %llu "
+			"read %08x write %08x",
+			reloc->target_handle,
+			reloc->offset,
+			reloc->read_domains,
+			reloc->write_domain);
 		return -EINVAL;
 	}
 
@@ -2348,130 +2097,334 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 		 * batchbuffers.
 		 */
 		if (reloc->write_domain == I915_GEM_DOMAIN_INSTRUCTION &&
-		    IS_GEN(eb->i915, 6)) {
-			err = gen6_fixup_ggtt(target->vma);
-			if (err)
-				return err;
-		}
+		    IS_GEN(eb->i915, 6))
+			target->flags |= EXEC_OBJECT_NEEDS_GTT;
 	}
 
-	/*
-	 * If the relocation already has the right value in it, no
-	 * more work needs to be done.
-	 */
-	if (gen8_canonical_addr(target->vma->node.start) == reloc->presumed_offset)
-		return 0;
+	if ((int)reloc->delta < 0)
+		target->bias = max_t(u32, target->bias, -(int)reloc->delta);
 
 	/* Check that the relocation address is valid... */
 	if (unlikely(reloc->offset >
 		     ev->vma->size - (eb->reloc_cache.use_64bit_reloc ? 8 : 4))) {
 		drm_dbg(&i915->drm, "Relocation beyond object bounds: "
-			  "target %d offset %d size %d.\n",
-			  reloc->target_handle,
-			  (int)reloc->offset,
-			  (int)ev->vma->size);
+			"target %d offset %llu size %llu.\n",
+			reloc->target_handle,
+			reloc->offset,
+			ev->vma->size);
 		return -EINVAL;
 	}
 	if (unlikely(reloc->offset & 3)) {
 		drm_dbg(&i915->drm, "Relocation not 4-byte aligned: "
-			  "target %d offset %d.\n",
-			  reloc->target_handle,
-			  (int)reloc->offset);
+			"target %d offset %llu.\n",
+			reloc->target_handle,
+			reloc->offset);
 		return -EINVAL;
 	}
 
-	/*
-	 * If we write into the object, we need to force the synchronisation
-	 * barrier, either with an asynchronous clflush or if we executed the
-	 * patching using the GPU (though that should be serialised by the
-	 * timeline). To be completely sure, and since we are required to
-	 * do relocations we are already stalling, disable the user's opt
-	 * out of our synchronisation.
-	 */
-	ev->flags &= ~EXEC_OBJECT_ASYNC;
+	return 0;
+}
 
-	/* and update the user's relocation entry */
-	return relocate_entry(eb, ev->vma, reloc, target->vma);
+static struct drm_i915_gem_relocation_entry *
+eb_relocs_grow(struct i915_execbuffer *eb, unsigned long *count)
+{
+#define RELOC_SZ SZ_64K
+#define N_RELOC (RELOC_SZ / sizeof(struct drm_i915_gem_relocation_entry) - 1)
+	struct reloc_cache *c = &eb->reloc_cache;
+	struct drm_i915_gem_relocation_entry *r;
+	unsigned long remain;
+
+	GEM_BUG_ON(c->pos > N_RELOC);
+	remain = N_RELOC - c->pos;
+	if (remain == 0) {
+		struct drm_i915_gem_object *obj;
+		struct i915_vma *vma;
+		struct eb_vma *ev;
+
+		obj = i915_gem_object_create_internal(eb->i915, RELOC_SZ);
+		if (IS_ERR(obj))
+			return ERR_CAST(obj);
+
+		if (c->gen >= 6)
+			i915_gem_object_set_cache_coherency(obj,
+							    I915_CACHE_LLC);
+
+		vma = i915_vma_instance(obj, eb->context->vm, NULL);
+		if (IS_ERR(vma)) {
+			i915_gem_object_put(obj);
+			return ERR_CAST(vma);
+		}
+
+		ev = kzalloc(sizeof(*ev), GFP_KERNEL);
+		if (!ev) {
+			i915_gem_object_put(obj);
+			return ERR_PTR(-ENOMEM);
+		}
+
+		vma->private = ev;
+		ev->vma = vma;
+		ev->exec = &no_entry;
+		ev->flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
+		list_add_tail(&ev->bind_link, &eb->bind_list);
+		list_add(&ev->reloc_link, &eb->array->aux_list);
+
+		if (!c->head.vma) {
+			c->head.vma = vma;
+		} else {
+			struct eb_relocs_link *link;
+
+			link = (struct eb_relocs_link *)(c->map + c->pos);
+			link->vma = vma;
+		}
+
+		c->pos = 0;
+		c->map = i915_gem_object_pin_map(obj, I915_MAP_WB);
+		if (IS_ERR(c->map))
+			return ERR_CAST(c->map);
+
+		remain = N_RELOC;
+	}
+	*count = min(remain, *count);
+
+	GEM_BUG_ON(!c->map);
+	r = c->map + c->pos;
+	c->pos += *count;
+	GEM_BUG_ON(c->pos > N_RELOC);
+
+	return r;
 }
 
-static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
+static int
+eb_relocs_copy_vma(struct i915_execbuffer *eb, const struct eb_vma *ev)
 {
-#define N_RELOC(x) ((x) / sizeof(struct drm_i915_gem_relocation_entry))
-	struct drm_i915_gem_relocation_entry stack[N_RELOC(512)];
 	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
-	struct drm_i915_gem_relocation_entry __user *urelocs =
+	const struct drm_i915_gem_relocation_entry __user *ureloc =
 		u64_to_user_ptr(entry->relocs_ptr);
 	unsigned long remain = entry->relocation_count;
 
-	if (unlikely(remain > N_RELOC(ULONG_MAX)))
+	if (unlikely(remain > ULONG_MAX / sizeof(*ureloc)))
 		return -EINVAL;
 
-	/*
-	 * We must check that the entire relocation array is safe
-	 * to read. However, if the array is not writable the user loses
-	 * the updated relocation values.
-	 */
-	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
-		return -EFAULT;
-
 	do {
-		struct drm_i915_gem_relocation_entry *r = stack;
-		unsigned int count =
-			min_t(unsigned long, remain, ARRAY_SIZE(stack));
-		unsigned int copied;
+		struct drm_i915_gem_relocation_entry *r;
+		unsigned long count = remain;
+		int err;
 
-		/*
-		 * This is the fast path and we cannot handle a pagefault
-		 * whilst holding the struct mutex lest the user pass in the
-		 * relocations contained within a mmaped bo. For in such a case
-		 * we, the page fault handler would call i915_gem_fault() and
-		 * we would try to acquire the struct mutex again. Obviously
-		 * this is bad and so lockdep complains vehemently.
-		 */
-		copied = __copy_from_user(r, urelocs, count * sizeof(r[0]));
-		if (unlikely(copied))
+		r = eb_relocs_grow(eb, &count);
+		if (IS_ERR(r))
+			return PTR_ERR(r);
+
+		GEM_BUG_ON(!count);
+		if (unlikely(copy_from_user(r, ureloc, count * sizeof(r[0]))))
 			return -EFAULT;
 
 		remain -= count;
-		do {
-			u64 offset = eb_relocate_entry(eb, ev, r);
+		ureloc += count;
 
-			if (likely(offset == 0)) {
-			} else if ((s64)offset < 0) {
-				return (int)offset;
-			} else {
-				/*
-				 * Note that reporting an error now
-				 * leaves everything in an inconsistent
-				 * state as we have *already* changed
-				 * the relocation value inside the
-				 * object. As we have not changed the
-				 * reloc.presumed_offset or will not
-				 * change the execobject.offset, on the
-				 * call we may not rewrite the value
-				 * inside the object, leaving it
-				 * dangling and causing a GPU hang. Unless
-				 * userspace dynamically rebuilds the
-				 * relocations on each execbuf rather than
-				 * presume a static tree.
-				 *
-				 * We did previously check if the relocations
-				 * were writable (access_ok), an error now
-				 * would be a strange race with mprotect,
-				 * having already demonstrated that we
-				 * can read from this userspace address.
-				 */
-				offset = gen8_canonical_addr(offset & ~UPDATE);
-				__put_user(offset,
-					   &urelocs[r - stack].presumed_offset);
-			}
-		} while (r++, --count);
-		urelocs += ARRAY_SIZE(stack);
+		do {
+			err = eb_relocs_check_entry(eb, ev, r++);
+			if (err)
+				return err;
+		} while (--count);
 	} while (remain);
 
 	return 0;
 }
 
+static int eb_relocs_copy_user(struct i915_execbuffer *eb)
+{
+	struct eb_vma *ev;
+	int err;
+
+	/* Drop everything before we copy_from_user */
+	list_for_each_entry(ev, &eb->bind_list, bind_link)
+		eb_unreserve_vma(ev);
+
+	eb->reloc_cache.head.vma = NULL;
+	eb->reloc_cache.pos = N_RELOC;
+
+	list_for_each_entry(ev, &eb->relocs, reloc_link) {
+		err = eb_relocs_copy_vma(eb, ev);
+		if (err)
+			return err;
+	}
+
+	/* Now reacquire everything, including the extra reloc bo */
+	return eb_reserve_vm(eb);
+}
+
+static struct drm_i915_gem_relocation_entry *
+get_gpu_relocs(struct i915_execbuffer *eb,
+	       struct i915_request *rq,
+	       unsigned long *count)
+{
+	struct reloc_cache *c = &eb->reloc_cache;
+	struct drm_i915_gem_relocation_entry *r;
+	unsigned long remain;
+
+	GEM_BUG_ON(c->pos > N_RELOC);
+	remain = N_RELOC - c->pos;
+	if (remain == 0) {
+		struct eb_relocs_link link;
+		const int gen = c->gen;
+		u32 *cs;
+
+		GEM_BUG_ON(!c->head.vma);
+		GEM_BUG_ON(!c->map);
+
+		link = *(struct eb_relocs_link *)(c->map + c->pos);
+		GEM_BUG_ON(!link.vma);
+		GEM_BUG_ON(!i915_vma_is_pinned(link.vma));
+
+		cs = (u32 *)(c->map + c->pos);
+		*cs++ = MI_ARB_CHECK;
+		if (gen >= 8)
+			*cs++ = MI_BATCH_BUFFER_START_GEN8;
+		else if (gen >= 6)
+			*cs++ = MI_BATCH_BUFFER_START;
+		else
+			*cs++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
+		*cs++ = lower_32_bits(link.vma->node.start);
+		*cs++ = upper_32_bits(link.vma->node.start);
+		i915_gem_object_flush_map(c->head.vma->obj);
+		i915_gem_object_unpin_map(c->head.vma->obj);
+
+		c->head = link;
+		c->map = NULL;
+	}
+
+	if (!c->map) {
+		struct i915_vma *vma = c->head.vma;
+		int err;
+
+		GEM_BUG_ON(!vma);
+		i915_vma_lock(vma);
+		err = i915_request_await_object(rq, vma->obj, false);
+		if (err == 0)
+			err = i915_vma_move_to_active(vma, rq, 0);
+		i915_vma_unlock(vma);
+		if (err)
+			return ERR_PTR(err);
+
+		GEM_BUG_ON(!i915_gem_object_has_pinned_pages(vma->obj));
+		c->map = page_mask_bits(vma->obj->mm.mapping);
+		c->pos = 0;
+
+		remain = N_RELOC;
+	}
+
+	*count = min(remain, *count);
+
+	GEM_BUG_ON(!c->map);
+	r = c->map + c->pos;
+	c->pos += *count;
+	GEM_BUG_ON(c->pos > N_RELOC);
+
+	return r;
+}
+
+static int eb_relocs_gpu_vma(struct i915_execbuffer *eb,
+			     struct i915_request *rq,
+			     const struct eb_vma *ev)
+{
+	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
+	unsigned long remain = entry->relocation_count;
+	bool write = false;
+	int err = 0;
+
+	do {
+		struct drm_i915_gem_relocation_entry *r;
+		unsigned long count = remain;
+
+		r = get_gpu_relocs(eb, rq, &count);
+		if (IS_ERR(r))
+			return PTR_ERR(r);
+
+		GEM_BUG_ON(!count);
+		remain -= count;
+		do {
+			write |= eb_relocs_vma_entry(eb, ev, r++);
+		} while (--count);
+	} while (remain);
+
+	if (write)
+		err = reloc_move_to_gpu(rq, ev->vma);
+
+	return err;
+}
+
+static struct i915_request *reloc_gpu_alloc(struct i915_execbuffer *eb)
+{
+	struct reloc_cache *cache = &eb->reloc_cache;
+	struct i915_request *rq;
+
+	if (cache->ce == eb->context)
+		rq = __i915_request_create(cache->ce, GFP_KERNEL);
+	else
+		rq = nested_request_create(cache->ce, eb);
+	if (IS_ERR(rq))
+		return rq;
+
+	rq->cookie = lockdep_pin_lock(&i915_request_timeline(rq)->mutex);
+	return rq;
+}
+
+static int eb_relocs_gpu(struct i915_execbuffer *eb)
+{
+	struct i915_request *rq;
+	struct eb_vma *ev;
+	int err;
+
+	rq = reloc_gpu_alloc(eb);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	rq->batch = eb->reloc_cache.head.vma;
+
+	eb->reloc_cache.map = NULL;
+	eb->reloc_cache.pos = 0;
+
+	err = 0;
+	list_for_each_entry(ev, &eb->relocs, reloc_link) {
+		err = eb_relocs_gpu_vma(eb, rq, ev);
+		if (err)
+			break;
+	}
+
+	return reloc_gpu_flush(eb, rq, err);
+}
+
+static void eb_relocs_update_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
+{
+	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
+	struct drm_i915_gem_relocation_entry __user *ureloc =
+		u64_to_user_ptr(entry->relocs_ptr);
+	unsigned long count = entry->relocation_count;
+
+	do {
+		u32 handle;
+
+		if (get_user(handle, &ureloc->target_handle) == 0) {
+			struct i915_vma *vma = eb_get_vma(eb, handle)->vma;
+			u64 offset = gen8_canonical_addr(vma->node.start);
+
+			if (put_user(offset, &ureloc->presumed_offset))
+				return;
+		}
+	} while (ureloc++, --count);
+}
+
+static void eb_relocs_update_user(struct i915_execbuffer *eb)
+{
+	struct eb_vma *ev;
+
+	if (!(eb->args->flags & __EXEC_HAS_RELOC))
+		return;
+
+	list_for_each_entry(ev, &eb->relocs, reloc_link)
+		eb_relocs_update_vma(eb, ev);
+}
+
 static int eb_relocate(struct i915_execbuffer *eb)
 {
 	int err;
@@ -2493,22 +2446,17 @@ static int eb_relocate(struct i915_execbuffer *eb)
 		return err;
 
 	/* The objects are in their final locations, apply the relocations. */
-	if (eb->args->flags & __EXEC_HAS_RELOC) {
-		struct eb_vma *ev;
-		int flush;
-
-		list_for_each_entry(ev, &eb->relocs, reloc_link) {
-			err = eb_relocate_vma(eb, ev);
-			if (err)
-				break;
-		}
+	if (eb->args->flags & __EXEC_HAS_RELOC && !list_empty(&eb->relocs)) {
+		err = eb_relocs_copy_user(eb);
+		if (err)
+			return err;
 
-		flush = reloc_gpu_flush(eb);
-		if (!err)
-			err = flush;
+		err = eb_relocs_gpu(eb);
+		if (err)
+			return err;
 	}
 
-	return err;
+	return 0;
 }
 
 static int eb_move_to_gpu(struct i915_execbuffer *eb)
@@ -2983,6 +2931,8 @@ static int __eb_pin_reloc_engine(struct i915_execbuffer *eb)
 		return PTR_ERR(ce);
 
 	/* Reuse eb->context->timeline with scheduler! */
+	if (engine->schedule)
+		ce->timeline = intel_timeline_get(eb->context->timeline);
 
 	i915_vm_put(ce->vm);
 	ce->vm = i915_vm_get(eb->context->vm);
@@ -3433,9 +3383,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (err)
 		goto err_vma;
 
-	/* All GPU relocation batches must be submitted prior to the user rq */
-	GEM_BUG_ON(eb.reloc_cache.rq);
-
 	/* Allocate a request for this batch buffer nice and early. */
 	eb.request = __i915_request_create(eb.context, GFP_KERNEL);
 	if (IS_ERR(eb.request)) {
@@ -3507,6 +3454,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_vma:
 	if (eb.parser.shadow)
 		intel_gt_buffer_pool_put(eb.parser.shadow->vma->private);
+	eb_relocs_update_user(&eb);
 	eb_unpin_engine(&eb);
 err_context:
 	i915_gem_context_put(eb.gem_context);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index 992d46db1b33..c3b94948ef9f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -11,7 +11,7 @@
 
 #include "mock_context.h"
 
-static u64 read_reloc(const u32 *map, int x, const u64 mask)
+static u64 read_reloc(const char *map, int x, const u64 mask)
 {
 	u64 reloc;
 
@@ -19,90 +19,111 @@ static u64 read_reloc(const u32 *map, int x, const u64 mask)
 	return reloc & mask;
 }
 
-static int __igt_gpu_reloc(struct i915_execbuffer *eb,
-			   struct drm_i915_gem_object *obj)
+static int mock_relocs_copy_user(struct i915_execbuffer *eb, struct eb_vma *ev)
 {
-	const unsigned int offsets[] = { 8, 3, 0 };
-	const u64 mask =
-		GENMASK_ULL(eb->reloc_cache.use_64bit_reloc ? 63 : 31, 0);
-	const u32 *map = page_mask_bits(obj->mm.mapping);
-	struct i915_request *rq;
-	struct i915_vma *vma;
-	int err;
-	int i;
+	const int stride = 2 * sizeof(u64);
+	struct drm_i915_gem_object *obj = ev->vma->obj;
+	void *last = NULL;
+	int n, total = 0;
+
+	eb->reloc_cache.head.vma = NULL;
+	eb->reloc_cache.pos = N_RELOC;
+
+	for (n = 0; n < obj->base.size / stride; n++) {
+		struct drm_i915_gem_relocation_entry *r;
+		unsigned long count = 1;
+
+		r = eb_relocs_grow(eb, &count);
+		if (IS_ERR(r))
+			return PTR_ERR(r);
+
+		if (!count)
+			return -EINVAL;
+
+		if (eb->reloc_cache.map != last) {
+			pr_info("%s New reloc buffer @ %d\n",
+				eb->engine->name, n);
+			last = eb->reloc_cache.map;
+			total++;
+		}
 
-	vma = i915_vma_instance(obj, eb->context->vm, NULL);
-	if (IS_ERR(vma))
-		return PTR_ERR(vma);
+		r->target_handle = 0;
+		r->offset = n * stride;
+		if (n & 1)
+			r->offset += sizeof(u32);
+		r->delta = n;
+	}
 
-	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_HIGH);
-	if (err)
-		return err;
+	pr_info("%s: %d relocs, %d buffers\n", eb->engine->name, n, total);
 
-	/* 8-Byte aligned */
-	err = __reloc_entry_gpu(eb, vma, offsets[0] * sizeof(u32), 0);
-	if (err)
-		goto unpin_vma;
+	return n;
+}
 
-	/* !8-Byte aligned */
-	err = __reloc_entry_gpu(eb, vma, offsets[1] * sizeof(u32), 1);
+static int check_relocs(struct i915_execbuffer *eb, struct eb_vma *ev)
+{
+	const u64 mask =
+		GENMASK_ULL(eb->reloc_cache.use_64bit_reloc ? 63 : 31, 0);
+	const int stride = 2 * sizeof(u64);
+	struct drm_i915_gem_object *obj = ev->vma->obj;
+	const void *map = __i915_gem_object_mapping(obj);
+	int n, err = 0;
+
+	for (n = 0; n < obj->base.size / stride; n++) {
+		unsigned int offset;
+		u64 address, reloc;
+
+		address = gen8_canonical_addr(ev->vma->node.start + n);
+		address &= mask;
+
+		offset = n * stride;
+		if (n & 1)
+			offset += sizeof(u32);
+
+		reloc = read_reloc(map, offset, mask);
+		if (reloc != address) {
+			pr_err("%s[%d]: map[%x] %llx != %llx\n",
+			       eb->engine->name, n, offset, reloc, address);
+			err = -EINVAL;
+		}
+	}
 	if (err)
-		goto unpin_vma;
+		igt_hexdump(map, obj->base.size);
+
+	return err;
+}
 
-	/* Skip to the end of the cmd page */
-	i = PAGE_SIZE / sizeof(u32) - RELOC_TAIL - 1;
-	i -= eb->reloc_cache.rq_size;
-	memset32(eb->reloc_cache.rq_cmd + eb->reloc_cache.rq_size,
-		 MI_NOOP, i);
-	eb->reloc_cache.rq_size += i;
+static int __igt_gpu_reloc(struct i915_execbuffer *eb, struct eb_vma *ev)
+{
+	int err;
+
+	err = mock_relocs_copy_user(eb, ev);
+	if (err < 0)
+		return err;
+	ev->exec->relocation_count = err;
 
-	/* Force batch chaining */
-	err = __reloc_entry_gpu(eb, vma, offsets[2] * sizeof(u32), 2);
+	err = eb_reserve_vm(eb);
 	if (err)
-		goto unpin_vma;
+		return err;
 
-	GEM_BUG_ON(!eb->reloc_cache.rq);
-	rq = i915_request_get(eb->reloc_cache.rq);
-	err = reloc_gpu_flush(eb);
+	err = eb_relocs_gpu(eb);
 	if (err)
-		goto put_rq;
-	GEM_BUG_ON(eb->reloc_cache.rq);
+		return err;
 
-	err = i915_gem_object_wait(obj, I915_WAIT_INTERRUPTIBLE, HZ / 2);
-	if (err) {
+	if (i915_gem_object_wait(ev->vma->obj,
+				 I915_WAIT_INTERRUPTIBLE, HZ / 2)) {
 		intel_gt_set_wedged(eb->engine->gt);
-		goto put_rq;
+		return -EIO;
 	}
 
-	if (!i915_request_completed(rq)) {
-		pr_err("%s: did not wait for relocations!\n", eb->engine->name);
-		err = -EINVAL;
-		goto put_rq;
-	}
-
-	for (i = 0; i < ARRAY_SIZE(offsets); i++) {
-		u64 reloc = read_reloc(map, offsets[i], mask);
-
-		if (reloc != i) {
-			pr_err("%s[%d]: map[%d] %llx != %x\n",
-			       eb->engine->name, i, offsets[i], reloc, i);
-			err = -EINVAL;
-		}
-	}
-	if (err)
-		igt_hexdump(map, 4096);
-
-put_rq:
-	i915_request_put(rq);
-unpin_vma:
-	i915_vma_unpin(vma);
-	return err;
+	return check_relocs(eb, ev);
 }
 
 static int igt_gpu_reloc(void *arg)
 {
 	struct i915_execbuffer eb;
 	struct drm_i915_gem_object *scratch;
+	struct drm_i915_gem_exec_object2 exec;
+	struct eb_vma ev = { .exec = &exec };
 	struct file *file;
 	int err = 0;
 	u32 *map;
@@ -112,11 +133,13 @@ static int igt_gpu_reloc(void *arg)
 		return PTR_ERR(file);
 
 	eb.i915 = arg;
+	INIT_LIST_HEAD(&eb.relocs);
+
 	eb.gem_context = live_context(arg, file);
 	if (IS_ERR(eb.gem_context))
 		goto err_file;
 
-	scratch = i915_gem_object_create_internal(eb.i915, 4096);
+	scratch = i915_gem_object_create_internal(eb.i915, SZ_32K);
 	if (IS_ERR(scratch))
 		goto err_file;
 
@@ -126,33 +149,65 @@ static int igt_gpu_reloc(void *arg)
 		goto err_scratch;
 	}
 
+	eb.lut_size = -1;
+	eb.vma = &ev;
+	list_add(&ev.reloc_link, &eb.relocs);
+	GEM_BUG_ON(eb_get_vma(&eb, 0) != &ev);
+
 	for_each_uabi_engine(eb.engine, eb.i915) {
+		INIT_LIST_HEAD(&eb.bind_list);
 		reloc_cache_init(&eb.reloc_cache, eb.i915);
-		memset(map, POISON_INUSE, 4096);
+		memset(map, POISON_INUSE, scratch->base.size);
+		wmb();
 
 		intel_engine_pm_get(eb.engine);
+
+		eb.array = eb_vma_array_create(1);
+		if (!eb.array) {
+			err = -ENOMEM;
+			goto err_pm;
+		}
+
 		eb.context = intel_context_create(eb.engine);
 		if (IS_ERR(eb.context)) {
 			err = PTR_ERR(eb.context);
-			goto err_pm;
+			goto err_array;
 		}
 
 		err = intel_context_pin(eb.context);
 		if (err)
 			goto err_put;
 
+		ev.vma = i915_vma_instance(scratch, eb.context->vm, NULL);
+		if (IS_ERR(ev.vma)) {
+			err = PTR_ERR(ev.vma);
+			goto err_unpin;
+		}
+
+		err = i915_vma_pin(ev.vma, 0, 0, PIN_USER | PIN_HIGH);
+		if (err)
+			goto err_unpin;
+
 		mutex_lock(&eb.context->timeline->mutex);
 		intel_context_enter(eb.context);
-		eb.reloc_cache.ce = eb.context;
 
-		err = __igt_gpu_reloc(&eb, scratch);
+		err = __eb_pin_reloc_engine(&eb);
+		if (err)
+			goto err_exit;
 
+		err = __igt_gpu_reloc(&eb, &ev);
+
+		__eb_unpin_reloc_engine(&eb);
+err_exit:
 		intel_context_exit(eb.context);
 		mutex_unlock(&eb.context->timeline->mutex);
-
+		i915_vma_unpin(ev.vma);
+err_unpin:
 		intel_context_unpin(eb.context);
 err_put:
 		intel_context_put(eb.context);
+err_array:
+		eb_vma_array_put(eb.array);
 err_pm:
 		intel_engine_pm_put(eb.engine);
 		if (err)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
