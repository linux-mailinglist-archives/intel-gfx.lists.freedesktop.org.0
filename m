Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 995DE23CA80
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C1D6E5A1;
	Wed,  5 Aug 2020 12:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 056AC6E57E
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 12:22:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22039483-1500050 
 for multiple; Wed, 05 Aug 2020 13:22:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 13:22:18 +0100
Message-Id: <20200805122231.23313-25-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 24/37] drm/i915/gem: Reintroduce multiple passes
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 883 +++++++++---------
 .../i915/gem/selftests/i915_gem_execbuffer.c  | 206 ++--
 .../drm/i915/gt/intel_gt_buffer_pool_types.h  |   2 +-
 3 files changed, 585 insertions(+), 506 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 0839397c7e50..58e40348b551 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -59,6 +59,20 @@ struct eb_vma_array {
 	struct eb_vma vma[];
 };
 
+struct eb_relocs_link {
+	unsigned long rsvd; /* overwritten by MI_BATCH_BUFFER_END */
+	struct i915_vma *vma;
+};
+
+struct eb_relocs {
+	struct i915_vma *head;
+	struct drm_i915_gem_relocation_entry *map;
+	unsigned int pos;
+	unsigned int max;
+
+	unsigned int bufsz;
+};
+
 #define __EXEC_OBJECT_HAS_PIN		BIT(31)
 #define __EXEC_OBJECT_HAS_FENCE		BIT(30)
 #define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
@@ -250,6 +264,7 @@ struct i915_execbuffer {
 
 	struct intel_engine_cs *engine; /** engine to queue the request to */
 	struct intel_context *context; /* logical state for the request */
+	struct intel_context *reloc_context; /* distinct context for relocs */
 	struct i915_gem_context *gem_context; /** caller's context */
 
 	struct i915_request *request; /** our request to build */
@@ -261,27 +276,11 @@ struct i915_execbuffer {
 	/** list of all vma required to be bound for this execbuf */
 	struct list_head bind_list;
 
-	/** list of vma that have execobj.relocation_count */
-	struct list_head relocs_list;
-
 	struct list_head submit_list;
 
-	/**
-	 * Track the most recently used object for relocations, as we
-	 * frequently have to perform multiple relocations within the same
-	 * obj/page
-	 */
-	struct reloc_cache {
-		struct drm_mm_node node; /** temporary GTT binding */
-
-		struct intel_context *ce;
-
-		struct i915_vma *target;
-		struct i915_request *rq;
-		struct i915_vma *rq_vma;
-		u32 *rq_cmd;
-		unsigned int rq_size;
-	} reloc_cache;
+	/** list of vma that have execobj.relocation_count */
+	struct list_head relocs_list;
+	unsigned long relocs_count;
 
 	struct eb_cmdparser {
 		struct eb_vma *shadow;
@@ -297,7 +296,6 @@ struct i915_execbuffer {
 
 	unsigned int gen; /** Cached value of INTEL_GEN */
 	bool use_64bit_reloc : 1;
-	bool has_llc : 1;
 	bool has_fence : 1;
 	bool needs_unfenced : 1;
 
@@ -485,6 +483,7 @@ static int eb_create(struct i915_execbuffer *eb)
 	INIT_LIST_HEAD(&eb->bind_list);
 	INIT_LIST_HEAD(&eb->submit_list);
 	INIT_LIST_HEAD(&eb->relocs_list);
+	eb->relocs_count = 0;
 
 	return 0;
 }
@@ -631,8 +630,10 @@ eb_add_vma(struct i915_execbuffer *eb,
 	list_add_tail(&ev->bind_link, &eb->bind_list);
 	list_add_tail(&ev->submit_link, &eb->submit_list);
 
-	if (entry->relocation_count)
+	if (entry->relocation_count) {
 		list_add_tail(&ev->reloc_link, &eb->relocs_list);
+		eb->relocs_count += entry->relocation_count;
+	}
 
 	/*
 	 * SNA is doing fancy tricks with compressing batch buffers, which leads
@@ -1889,8 +1890,6 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 
 static void eb_destroy(const struct i915_execbuffer *eb)
 {
-	GEM_BUG_ON(eb->reloc_cache.rq);
-
 	eb_vma_array_put(eb->array);
 	if (eb->lut_size > 0)
 		kfree(eb->buckets);
@@ -1908,90 +1907,11 @@ static void eb_info_init(struct i915_execbuffer *eb,
 {
 	/* Must be a variable in the struct to allow GCC to unroll. */
 	eb->gen = INTEL_GEN(i915);
-	eb->has_llc = HAS_LLC(i915);
 	eb->use_64bit_reloc = HAS_64BIT_RELOC(i915);
 	eb->has_fence = eb->gen < 4;
 	eb->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
 }
 
-static void reloc_cache_init(struct reloc_cache *cache)
-{
-	cache->node.flags = 0;
-	cache->rq = NULL;
-	cache->target = NULL;
-}
-
-#define RELOC_TAIL 4
-
-static int reloc_gpu_chain(struct i915_execbuffer *eb)
-{
-	struct reloc_cache *cache = &eb->reloc_cache;
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
-	if (eb->gen >= 8)
-		*cmd++ = MI_BATCH_BUFFER_START_GEN8;
-	else if (eb->gen >= 6)
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
-				      eb->has_llc ?
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
-}
-
 static struct i915_request *
 nested_request_create(struct intel_context *ce, struct i915_execbuffer *eb)
 {
@@ -2028,28 +1948,43 @@ static unsigned int reloc_bb_flags(const struct i915_execbuffer *eb)
 	return eb->gen > 5 ? 0 : I915_DISPATCH_SECURE;
 }
 
-static int reloc_gpu_flush(struct i915_execbuffer *eb)
+static struct intel_gt_buffer_pool_node *reloc_node(struct i915_vma *vma)
 {
-	struct reloc_cache *cache = &eb->reloc_cache;
-	struct i915_request *rq;
-	int err;
+	return vma->private;
+}
 
-	rq = fetch_and_zero(&cache->rq);
-	if (!rq)
-		return 0;
+static struct eb_relocs_link *as_link(struct eb_relocs *relocs, int pos)
+{
+	return (struct eb_relocs_link *)(relocs->map + pos);
+}
 
-	if (cache->rq_vma) {
-		struct drm_i915_gem_object *obj = cache->rq_vma->obj;
+static void eb_relocs_close(struct eb_relocs *relocs)
+{
+	struct i915_vma *vma = relocs->head;
+
+	while (vma) {
+		struct i915_vma *next = as_link(relocs, relocs->max)->vma;
 
-		GEM_BUG_ON(cache->rq_size >= obj->base.size / sizeof(u32));
-		cache->rq_cmd[cache->rq_size++] = MI_BATCH_BUFFER_END;
+		i915_gem_object_unpin_map(vma->obj);
+		intel_gt_buffer_pool_put(reloc_node(vma));
 
-		__i915_gem_object_flush_map(obj,
-					    0, sizeof(u32) * cache->rq_size);
-		i915_gem_object_unpin_map(obj);
+		vma = next;
 	}
+}
+
+static int
+reloc_gpu_flush(struct i915_execbuffer *eb,
+		struct eb_relocs *relocs,
+		struct i915_request *rq,
+		int err)
+{
+	u32 *cs;
+
+	cs = (u32 *)(relocs->map + relocs->pos);
+	*cs++ = MI_BATCH_BUFFER_END;
+	__i915_gem_object_flush_map(relocs->head->obj,
+				    0, (void *)cs - (void *)relocs->map);
 
-	err = 0;
 	if (rq->engine->emit_init_breadcrumb)
 		err = rq->engine->emit_init_breadcrumb(rq);
 	if (!err)
@@ -2079,7 +2014,7 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 		i915_gem_clflush_object(obj, 0);
 	obj->write_domain = 0;
 
-	err = i915_request_await_object(rq, vma->obj, true);
+	err = i915_request_await_object(rq, obj, true);
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 
@@ -2088,130 +2023,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
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
-				      eb->has_llc ?
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
-		rq = nested_request_create(cache->ce, eb);
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
-		err = reloc_gpu_chain(eb);
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
@@ -2226,30 +2037,29 @@ static unsigned long vma_phys_addr(struct i915_vma *vma, u32 offset)
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
 	const unsigned int gen = eb->gen;
-	unsigned int len;
+	struct i915_vma *target = eb_get_vma(eb, reloc->target_handle)->vma;
+	const u64 target_addr = relocation_target(reloc, target);
+	const u64 presumed = gen8_noncanonical_addr(reloc->presumed_offset);
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
@@ -2271,107 +2081,65 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
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
 
@@ -2385,155 +2153,400 @@ eb_relocate_entry(struct i915_execbuffer *eb,
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
 		     ev->vma->size - (eb->use_64bit_reloc ? 8 : 4))) {
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
+
+static struct drm_i915_gem_relocation_entry *
+eb_relocs_grow(struct i915_execbuffer *eb,
+	       struct eb_relocs *relocs,
+	       unsigned long *count)
+{
+	struct drm_i915_gem_relocation_entry *r;
+	unsigned long remain;
+
+	GEM_BUG_ON(relocs->pos > relocs->max);
+	remain = relocs->max - relocs->pos;
+	if (remain == 0) {
+		struct intel_gt_buffer_pool_node *pool;
+		struct i915_vma *vma;
+		struct eb_vma *ev;
+
+		pool = intel_gt_get_buffer_pool(eb->engine->gt, relocs->bufsz);
+		if (IS_ERR(pool))
+			return ERR_CAST(pool);
+
+		i915_gem_object_set_readonly(pool->obj);
+		if (eb->gen >= 6)
+			i915_gem_object_set_cache_coherency(pool->obj,
+							    I915_CACHE_LLC);
+
+		vma = i915_vma_instance(pool->obj, eb->context->vm, NULL);
+		if (IS_ERR(vma)) {
+			intel_gt_buffer_pool_put(pool);
+			return ERR_CAST(vma);
+		}
+
+		ev = kzalloc(sizeof(*ev), GFP_KERNEL);
+		if (!ev) {
+			intel_gt_buffer_pool_put(pool);
+			return ERR_PTR(-ENOMEM);
+		}
+
+		vma->private = pool;
+		ev->vma = i915_vma_get(vma);
+		ev->exec = &no_entry;
+		ev->flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
+		list_add_tail(&ev->bind_link, &eb->bind_list);
+		list_add(&ev->reloc_link, &eb->array->aux_list);
+
+		if (!relocs->head)
+			relocs->head = vma;
+		else
+			as_link(relocs, relocs->pos)->vma = vma;
+
+		relocs->pos = 0;
+		relocs->map = i915_gem_object_pin_map(vma->obj, I915_MAP_WB);
+		if (IS_ERR(relocs->map))
+			return ERR_CAST(relocs->map);
+
+		memset(relocs->map + relocs->max, 0,
+		       sizeof(struct eb_relocs_link));
+		remain = relocs->max;
+	}
+	*count = min(remain, *count);
+
+	GEM_BUG_ON(!relocs->map);
+	r = relocs->map + relocs->pos;
+	relocs->pos += *count;
+	GEM_BUG_ON(relocs->pos > relocs->max);
 
-	/* and update the user's relocation entry */
-	return relocate_entry(eb, ev->vma, reloc, target->vma);
+	return r;
 }
 
-static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
+static int
+eb_relocs_copy_vma(struct i915_execbuffer *eb,
+		   struct eb_relocs *relocs,
+		   const struct eb_vma *ev)
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
+		r = eb_relocs_grow(eb, relocs, &count);
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
 
+static int eb_relocs_copy_user(struct i915_execbuffer *eb,
+			       struct eb_relocs *relocs)
+{
+	struct eb_vma *ev;
+	int err;
+
+	relocs->head = NULL;
+	relocs->pos = relocs->max;
+
+	/* Note: must be holding no locks nor pinned user buffers */
+	list_for_each_entry(ev, &eb->relocs_list, reloc_link) {
+		err = eb_relocs_copy_vma(eb, relocs, ev);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static struct drm_i915_gem_relocation_entry *
+get_gpu_relocs(struct i915_execbuffer *eb,
+	       struct eb_relocs *relocs,
+	       struct i915_request *rq,
+	       unsigned long *count)
+{
+	struct drm_i915_gem_relocation_entry *r;
+	unsigned long remain;
+
+	GEM_BUG_ON(relocs->pos > relocs->max);
+	remain = relocs->max - relocs->pos;
+	if (remain == 0) {
+		struct i915_vma *next;
+		const int gen = eb->gen;
+		u32 *cs;
+
+		GEM_BUG_ON(!relocs->head);
+		GEM_BUG_ON(!relocs->map);
+
+		next = as_link(relocs, relocs->pos)->vma;
+		GEM_BUG_ON(!next);
+		GEM_BUG_ON(!i915_vma_is_pinned(next));
+
+		/* Chain [jump] from the end of the last buffer to the next */
+		cs = (u32 *)(relocs->map + relocs->pos);
+		*cs++ = MI_ARB_CHECK;
+		if (gen >= 8)
+			*cs++ = MI_BATCH_BUFFER_START_GEN8;
+		else if (gen >= 6)
+			*cs++ = MI_BATCH_BUFFER_START;
+		else
+			*cs++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
+		*cs++ = lower_32_bits(next->node.start);
+		*cs++ = upper_32_bits(next->node.start);
+		i915_gem_object_flush_map(relocs->head->obj);
+		i915_gem_object_unpin_map(relocs->head->obj);
+
+		intel_gt_buffer_pool_put(reloc_node(relocs->head));
+
+		relocs->head = next;
+		relocs->map = NULL;
+	}
+
+	if (!relocs->map) {
+		struct i915_vma *vma = relocs->head;
+		int err;
+
+		GEM_BUG_ON(!vma);
+
+		/* Keep the buffer cache claimed until completion */
+		err = i915_active_add_request(&reloc_node(vma)->active, rq);
+		if (err < 0)
+			return ERR_PTR(err);
+
+		/* Wait for the vma to be bound and keep it alive for relocs */
+		err = __i915_vma_move_to_active(vma, rq);
+		if (err)
+			return ERR_PTR(err);
+
+		GEM_BUG_ON(!i915_gem_object_has_pinned_pages(vma->obj));
+		relocs->map = page_mask_bits(vma->obj->mm.mapping);
+		relocs->pos = 0;
+
+		remain = relocs->max;
+	}
+
+	*count = min(remain, *count);
+
+	GEM_BUG_ON(!relocs->map);
+	r = relocs->map + relocs->pos;
+	relocs->pos += *count;
+	GEM_BUG_ON(relocs->pos > relocs->max);
+
+	return r;
+}
+
+static int eb_relocs_gpu_vma(struct i915_execbuffer *eb,
+			     struct eb_relocs *relocs,
+			     struct i915_request *rq,
+			     const struct eb_vma *ev)
+{
+	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
+	unsigned long remain = entry->relocation_count;
+	bool write = false;
+	int err = 0;
+
+	/*
+	 * All the user relocation entries have been copied into system
+	 * memory (tracked by our GEM objects). Those GEM objects have
+	 * been bound into the user's GTT, now we will convert the relocation
+	 * entries into the GPU comands to update the target buffers.
+	 */
+	do {
+		struct drm_i915_gem_relocation_entry *r;
+		unsigned long count = remain;
+
+		r = get_gpu_relocs(eb, relocs, rq, &count);
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
+	/* Mark the target vma as being written to for execbuf sync */
+	if (write)
+		err = reloc_move_to_gpu(rq, ev->vma);
+
+	return err;
+}
+
+static struct i915_request *reloc_gpu_alloc(struct i915_execbuffer *eb)
+{
+	struct i915_request *rq;
+
+	if (eb->reloc_context == eb->context)
+		rq = __i915_request_create(eb->reloc_context, GFP_KERNEL);
+	else
+		rq = nested_request_create(eb->reloc_context, eb);
+	if (IS_ERR(rq))
+		return rq;
+
+	rq->cookie = lockdep_pin_lock(&i915_request_timeline(rq)->mutex);
+	return rq;
+}
+
+static int eb_relocs_gpu(struct i915_execbuffer *eb, struct eb_relocs *relocs)
+{
+	struct i915_request *rq;
+	struct eb_vma *ev;
+	int err;
+
+	rq = reloc_gpu_alloc(eb);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	rq->batch = relocs->head;
+
+	relocs->map = NULL;
+	relocs->pos = 0;
+
+	err = 0;
+	list_for_each_entry(ev, &eb->relocs_list, reloc_link) {
+		/* Chain together all the reloc entries to form the batch */
+		err = eb_relocs_gpu_vma(eb, relocs, rq, ev);
+		if (err)
+			break;
+	}
+
+	/* Terminate the batch and submit */
+	return reloc_gpu_flush(eb, relocs, rq, err);
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
+	/* About to write into user memory, no locks nor user pinned allowed */
+	list_for_each_entry(ev, &eb->relocs_list, reloc_link)
+		eb_relocs_update_vma(eb, ev);
+}
+
 static int eb_relocate(struct i915_execbuffer *eb)
 {
+	const size_t sz = sizeof(struct drm_i915_gem_relocation_entry);
+	struct eb_relocs relocs;
+	unsigned long bufsz;
+	struct eb_vma *ev;
 	int err;
 
+	/* Drop everything before we copy_from_user */
+	list_for_each_entry(ev, &eb->bind_list, bind_link)
+		eb_unreserve_vma(ev);
+
+	/* Pick a single buffer for all relocs, within reason */
+	bufsz = round_up(eb->relocs_count * sz + sz, SZ_4K);
+	relocs.bufsz = clamp_val(bufsz, SZ_4K, SZ_256K);
+
+	/* We leave the final slot for chaining together or termination */
+	relocs.max = relocs.bufsz / sz - 1;
+
+	/* Copy the user's relocations into plain system memory */
+	err = eb_relocs_copy_user(eb, &relocs);
+	if (err)
+		goto out_close;
+
+	/* Now reacquire everything, including the extra reloc bo */
 	err = eb_reserve_vm(eb);
 	if (err)
-		return err;
+		goto out_close;
 
-	/* The objects are in their final locations, apply the relocations. */
-	if (eb->args->flags & __EXEC_HAS_RELOC) {
-		struct eb_vma *ev;
-		int flush;
+	/* The objects are now final, convert the relocations into commands. */
+	err = eb_relocs_gpu(eb, &relocs);
 
-		list_for_each_entry(ev, &eb->relocs_list, reloc_link) {
-			err = eb_relocate_vma(eb, ev);
-			if (err)
-				break;
-		}
+out_close:
+	eb_relocs_close(&relocs);
+	return err;
+}
 
-		flush = reloc_gpu_flush(eb);
-		if (!err)
-			err = flush;
+static int eb_reserve(struct i915_execbuffer *eb)
+{
+	int err;
+
+	err = eb_reserve_vm(eb);
+	if (err)
+		return err;
+
+	if (eb->args->flags & __EXEC_HAS_RELOC &&
+	    !list_empty(&eb->relocs_list)) {
+		err = eb_relocate(eb);
+		if (err)
+			return err;
 	}
 
-	return err;
+	return 0;
 }
 
 static int eb_move_to_gpu(struct i915_execbuffer *eb)
@@ -2966,7 +2979,7 @@ static int __eb_pin_reloc_engine(struct i915_execbuffer *eb)
 	int err;
 
 	if (reloc_can_use_engine(engine)) {
-		eb->reloc_cache.ce = eb->context;
+		eb->reloc_context = eb->context;
 		return 0;
 	}
 
@@ -2989,13 +3002,13 @@ static int __eb_pin_reloc_engine(struct i915_execbuffer *eb)
 	if (err)
 		return err;
 
-	eb->reloc_cache.ce = ce;
+	eb->reloc_context = ce;
 	return 0;
 }
 
 static void __eb_unpin_reloc_engine(struct i915_execbuffer *eb)
 {
-	struct intel_context *ce = eb->reloc_cache.ce;
+	struct intel_context *ce = eb->reloc_context;
 
 	if (ce == eb->context)
 		return;
@@ -3544,7 +3557,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 
 	eb.invalid_flags = __EXEC_OBJECT_UNKNOWN_FLAGS;
 	eb_info_init(&eb, eb.i915);
-	reloc_cache_init(&eb.reloc_cache);
 
 	eb.buffer_count = args->buffer_count;
 	eb.batch_start_offset = args->batch_start_offset;
@@ -3624,7 +3636,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_engine;
 	lockdep_assert_held(&eb.context->timeline->mutex);
 
-	err = eb_relocate(&eb);
+	err = eb_reserve(&eb);
 	if (err) {
 		/*
 		 * If the user expects the execobject.offset and
@@ -3641,9 +3653,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (err)
 		goto err_vma;
 
-	/* All GPU relocation batches must be submitted prior to the user rq */
-	GEM_BUG_ON(eb.reloc_cache.rq);
-
 	/* Allocate a request for this batch buffer nice and early. */
 	eb.request = __i915_request_create(eb.context, GFP_KERNEL);
 	if (IS_ERR(eb.request)) {
@@ -3704,6 +3713,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_vma:
 	eb_unlock_engine(&eb);
 	/* *** TIMELINE UNLOCK *** */
+
+	eb_relocs_update_user(&eb);
 err_engine:
 	eb_unpin_engine(&eb);
 err_context:
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index 13f17d6b5c66..df02cb8b27ed 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -11,7 +11,7 @@
 
 #include "mock_context.h"
 
-static u64 read_reloc(const u32 *map, int x, const u64 mask)
+static u64 read_reloc(const char *map, int x, const u64 mask)
 {
 	u64 reloc;
 
@@ -19,89 +19,122 @@ static u64 read_reloc(const u32 *map, int x, const u64 mask)
 	return reloc & mask;
 }
 
-static int __igt_gpu_reloc(struct i915_execbuffer *eb,
-			   struct drm_i915_gem_object *obj)
+static int mock_relocs_copy_user(struct i915_execbuffer *eb,
+				 struct eb_relocs *relocs,
+				 struct eb_vma *ev)
 {
-	const unsigned int offsets[] = { 8, 3, 0 };
-	const u64 mask = GENMASK_ULL(eb->use_64bit_reloc ? 63 : 31, 0);
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
+	relocs->head = NULL;
+	relocs->pos = relocs->max;
+
+	for (n = 0; n < obj->base.size / stride; n++) {
+		struct drm_i915_gem_relocation_entry *r;
+		unsigned long count = 1;
+
+		r = eb_relocs_grow(eb, relocs, &count);
+		if (IS_ERR(r))
+			return PTR_ERR(r);
+
+		if (!count)
+			return -EINVAL;
+
+		if (relocs->map != last) {
+			pr_info("%s New reloc buffer @ %d\n",
+				eb->engine->name, n);
+			last = relocs->map;
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
+	const u64 mask = GENMASK_ULL(eb->use_64bit_reloc ? 63 : 31, 0);
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
 
-	/* Skip to the end of the cmd page */
-	i = PAGE_SIZE / sizeof(u32) - RELOC_TAIL - 1;
-	i -= eb->reloc_cache.rq_size;
-	memset32(eb->reloc_cache.rq_cmd + eb->reloc_cache.rq_size,
-		 MI_NOOP, i);
-	eb->reloc_cache.rq_size += i;
+	return err;
+}
 
-	/* Force batch chaining */
-	err = __reloc_entry_gpu(eb, vma, offsets[2] * sizeof(u32), 2);
-	if (err)
-		goto unpin_vma;
+static int mock_reloc_gpu(struct i915_execbuffer *eb, struct eb_relocs *relocs)
+{
+	int err;
 
-	GEM_BUG_ON(!eb->reloc_cache.rq);
-	rq = i915_request_get(eb->reloc_cache.rq);
-	err = reloc_gpu_flush(eb);
-	if (err)
-		goto put_rq;
-	GEM_BUG_ON(eb->reloc_cache.rq);
+	err = eb_reserve_vm(eb);
+	if (err == 0)
+		err = eb_relocs_gpu(eb, relocs);
 
-	err = i915_gem_object_wait(obj, I915_WAIT_INTERRUPTIBLE, HZ / 2);
-	if (err) {
-		intel_gt_set_wedged(eb->engine->gt);
-		goto put_rq;
-	}
+	eb_relocs_close(relocs);
+	return err;
+}
 
-	if (!i915_request_completed(rq)) {
-		pr_err("%s: did not wait for relocations!\n", eb->engine->name);
-		err = -EINVAL;
-		goto put_rq;
-	}
+static int __igt_gpu_reloc(struct i915_execbuffer *eb,
+			   struct eb_relocs *relocs,
+			   struct eb_vma *ev)
+{
+	int err;
 
-	for (i = 0; i < ARRAY_SIZE(offsets); i++) {
-		u64 reloc = read_reloc(map, offsets[i], mask);
+	err = mock_relocs_copy_user(eb, relocs, ev);
+	if (err < 0)
+		return err;
+	ev->exec->relocation_count = err;
 
-		if (reloc != i) {
-			pr_err("%s[%d]: map[%d] %llx != %x\n",
-			       eb->engine->name, i, offsets[i], reloc, i);
-			err = -EINVAL;
-		}
-	}
+	err = mock_reloc_gpu(eb, relocs);
 	if (err)
-		igt_hexdump(map, 4096);
+		return err;
 
-put_rq:
-	i915_request_put(rq);
-unpin_vma:
-	i915_vma_unpin(vma);
-	return err;
+	if (i915_gem_object_wait(ev->vma->obj,
+				 I915_WAIT_INTERRUPTIBLE, HZ / 2)) {
+		intel_gt_set_wedged(eb->engine->gt);
+		return -EIO;
+	}
+
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
@@ -111,11 +144,13 @@ static int igt_gpu_reloc(void *arg)
 		return PTR_ERR(file);
 
 	eb.i915 = arg;
+	INIT_LIST_HEAD(&eb.relocs_list);
+
 	eb.gem_context = live_context(arg, file);
 	if (IS_ERR(eb.gem_context))
 		goto err_file;
 
-	scratch = i915_gem_object_create_internal(eb.i915, 4096);
+	scratch = i915_gem_object_create_internal(eb.i915, SZ_32K);
 	if (IS_ERR(scratch))
 		goto err_file;
 
@@ -125,22 +160,52 @@ static int igt_gpu_reloc(void *arg)
 		goto err_scratch;
 	}
 
+	eb.lut_size = -1;
+	eb.vma = &ev;
+	list_add(&ev.reloc_link, &eb.relocs_list);
+	GEM_BUG_ON(eb_get_vma(&eb, 0) != &ev);
+
 	eb_info_init(&eb, eb.i915);
 	for_each_uabi_engine(eb.engine, eb.i915) {
-		reloc_cache_init(&eb.reloc_cache);
-		memset(map, POISON_INUSE, 4096);
+		struct eb_relocs relocs;
+
+		INIT_LIST_HEAD(&eb.bind_list);
+		memset(map, POISON_INUSE, scratch->base.size);
+		wmb();
+
+		relocs.bufsz = SZ_4K;
+		relocs.max = relocs.bufsz;
+		relocs.max /= sizeof(struct drm_i915_gem_relocation_entry);
+		relocs.max--; /* leave room for terminator */
 
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
 
@@ -148,16 +213,19 @@ static int igt_gpu_reloc(void *arg)
 		if (err)
 			goto err_exit;
 
-		err = __igt_gpu_reloc(&eb, scratch);
+		err = __igt_gpu_reloc(&eb, &relocs, &ev);
 
 		__eb_unpin_reloc_engine(&eb);
 err_exit:
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
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
index bcf1658c9633..bb8b0312cb74 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
@@ -17,7 +17,7 @@ struct drm_i915_gem_object;
 
 struct intel_gt_buffer_pool {
 	spinlock_t lock;
-	struct list_head cache_list[4];
+	struct list_head cache_list[5];
 	struct delayed_work work;
 };
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
