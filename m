Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4D5211EDE
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 10:32:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA51B6EAA2;
	Thu,  2 Jul 2020 08:32:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E63066EA99
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 08:32:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21685246-1500050 
 for multiple; Thu, 02 Jul 2020 09:32:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 09:32:23 +0100
Message-Id: <20200702083225.20044-21-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200702083225.20044-1-chris@chris-wilson.co.uk>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/23] drm/i915/gem: Reintroduce multiple passes
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 758 ++++++++----------
 .../i915/gem/selftests/i915_gem_execbuffer.c  |   6 +
 2 files changed, 348 insertions(+), 416 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 320840f9c629..c325aed82629 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -265,20 +265,18 @@ struct i915_execbuffer {
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
@@ -305,6 +303,12 @@ struct i915_execbuffer {
 
 static struct drm_i915_gem_exec_object2 no_entry;
 
+static u64 noncanonical_addr(u64 addr, const struct i915_address_space *vm)
+{
+	GEM_BUG_ON(!is_power_of_2(vm->total));
+	return addr & (vm->total - 1);
+}
+
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
 {
 	return intel_engine_requires_cmd_parser(eb->engine) ||
@@ -593,7 +597,7 @@ eb_validate_vma(struct i915_execbuffer *eb,
 	 * so from this point we're always using non-canonical
 	 * form internally.
 	 */
-	entry->offset = gen8_noncanonical_addr(entry->offset);
+	entry->offset = noncanonical_addr(entry->offset, eb->context->vm);
 
 	if (!eb->reloc_cache.has_fence) {
 		entry->flags &= ~EXEC_OBJECT_NEEDS_FENCE;
@@ -1851,8 +1855,6 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 
 static void eb_destroy(const struct i915_execbuffer *eb)
 {
-	GEM_BUG_ON(eb->reloc_cache.rq);
-
 	eb_vma_array_put(eb->array);
 	if (eb->lut_size > 0)
 		kfree(eb->buckets);
@@ -1870,83 +1872,9 @@ static void reloc_cache_init(struct reloc_cache *cache,
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
@@ -1984,28 +1912,18 @@ static unsigned int reloc_bb_flags(const struct reloc_cache *cache)
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
+	cs = memset(cache->map + cache->pos, 0, 4);
+	*cs++ = MI_BATCH_BUFFER_END;
+	__i915_gem_object_flush_map(cache->head.vma->obj,
+				    0, (void *)cs - (void *)cache->map);
+	i915_gem_object_unpin_map(cache->head.vma->obj);
 
-	err = 0;
 	if (rq->engine->emit_init_breadcrumb)
 		err = rq->engine->emit_init_breadcrumb(rq);
 	if (!err)
@@ -2018,6 +1936,7 @@ static int reloc_gpu_flush(struct i915_execbuffer *eb)
 
 	intel_gt_chipset_flush(rq->engine->gt);
 	__i915_request_add(rq, &eb->gem_context->sched);
+
 	if (i915_request_timeline(rq) != eb->context->timeline)
 		mutex_unlock(&i915_request_timeline(rq)->mutex);
 
@@ -2035,7 +1954,7 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 		i915_gem_clflush_object(obj, 0);
 	obj->write_domain = 0;
 
-	err = i915_request_await_object(rq, vma->obj, true);
+	err = i915_request_await_object(rq, obj, true);
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 
@@ -2044,130 +1963,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
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
@@ -2182,30 +1977,28 @@ static unsigned long vma_phys_addr(struct i915_vma *vma, u32 offset)
 	return addr + offset_in_page(offset);
 }
 
-static int __reloc_entry_gpu(struct i915_execbuffer *eb,
-			     struct i915_vma *vma,
-			     u64 offset,
-			     u64 target_addr)
+static bool
+eb_relocs_vma_entry(struct i915_execbuffer *eb,
+		    struct eb_vma *ev,
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
-
-	batch = reloc_gpu(eb, vma, len);
-	if (IS_ERR(batch))
-		return PTR_ERR(batch);
+	/* Replace the reloc entry with the GPU commands */
+	batch = memset(reloc, 0, 32);
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
@@ -2227,107 +2020,64 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
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
+		      struct eb_vma *ev,
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
 
@@ -2341,130 +2091,313 @@ eb_relocate_entry(struct i915_execbuffer *eb,
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
-
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
+
+static struct drm_i915_gem_relocation_entry *
+eb_relocs_grow(struct i915_execbuffer *eb, unsigned long *count)
+{
+#define RELOC_SZ SZ_64K
+#define N_RELOC (RELOC_SZ / sizeof(struct drm_i915_gem_relocation_entry) - 1)
+	struct reloc_cache *c = &eb->reloc_cache;
+	struct drm_i915_gem_relocation_entry *r;
+	unsigned long remain;
+
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
+		list_add(&ev->bind_link, &eb->bind_list);
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
+		c->map = i915_gem_object_pin_map(obj, I915_MAP_WB);
+		c->pos = 0;
+
+		remain = N_RELOC;
+	}
+	*count = min(remain, *count);
+
+	r = c->map + c->pos;
+	c->pos += *count;
 
-	/* and update the user's relocation entry */
-	return relocate_entry(eb, ev->vma, reloc, target->vma);
+	return r;
 }
 
-static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
+static int eb_relocs_copy_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 {
-#define N_RELOC(x) ((x) / sizeof(struct drm_i915_gem_relocation_entry))
-	struct drm_i915_gem_relocation_entry stack[N_RELOC(512)];
 	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
 	struct drm_i915_gem_relocation_entry __user *urelocs =
 		u64_to_user_ptr(entry->relocs_ptr);
 	unsigned long remain = entry->relocation_count;
 
-	if (unlikely(remain > N_RELOC(ULONG_MAX)))
+	if (unlikely(remain > ULONG_MAX / sizeof(*urelocs)))
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
+		if (unlikely(copy_from_user(r, urelocs, count * sizeof(r[0]))))
 			return -EFAULT;
 
 		remain -= count;
-		do {
-			u64 offset = eb_relocate_entry(eb, ev, r);
+		urelocs += count;
 
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
+	remain = N_RELOC - c->pos;
+	if (remain == 0) {
+		struct eb_relocs_link link;
+		const int gen = c->gen;
+		u32 *cs;
+
+		link = *(struct eb_relocs_link *)(c->map + c->pos);
+
+		cs = memset(c->map + c->pos, 0, 32);
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
+		i915_vma_lock(vma);
+		err = i915_request_await_object(rq, vma->obj, false);
+		if (err == 0)
+			err = i915_vma_move_to_active(vma, rq, 0);
+		i915_vma_unlock(vma);
+		if (err)
+			return ERR_PTR(err);
+
+		c->map = page_mask_bits(vma->obj->mm.mapping);
+		c->pos = 0;
+
+		remain = N_RELOC;
+	}
+
+	*count = min(remain, *count);
+
+	r = c->map + c->pos;
+	c->pos += *count;
+
+	return r;
+}
+
+static int eb_relocs_gpu_vma(struct i915_execbuffer *eb,
+			     struct i915_request *rq,
+			     struct eb_vma *ev)
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
+		rq = nested_request_create(cache->ce);
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
+	struct drm_i915_gem_relocation_entry __user *urelocs =
+		u64_to_user_ptr(entry->relocs_ptr);
+	unsigned long count = entry->relocation_count;
+
+	do {
+		u32 handle;
+
+		if (get_user(handle, &urelocs->target_handle) == 0) {
+			struct i915_vma *vma = eb_get_vma(eb, handle)->vma;
+			u64 offset = gen8_canonical_addr(vma->node.start);
+
+			if (put_user(offset, &urelocs->presumed_offset))
+				return;
+		}
+	} while (urelocs++, --count);
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
@@ -2486,22 +2419,17 @@ static int eb_relocate(struct i915_execbuffer *eb)
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
@@ -3398,9 +3326,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (err)
 		goto err_vma;
 
-	/* All GPU relocation batches must be submitted prior to the user rq */
-	GEM_BUG_ON(eb.reloc_cache.rq);
-
 	/* Allocate a request for this batch buffer nice and early. */
 	eb.request = __i915_request_create(eb.context, GFP_KERNEL);
 	if (IS_ERR(eb.request)) {
@@ -3472,6 +3397,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_vma:
 	if (eb.parser.shadow)
 		intel_gt_buffer_pool_put(eb.parser.shadow->vma->private);
+	eb_relocs_update_user(&eb);
 	eb_unpin_engine(&eb);
 err_context:
 	i915_gem_context_put(eb.gem_context);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index 992d46db1b33..940090753949 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -11,6 +11,7 @@
 
 #include "mock_context.h"
 
+#if 0
 static u64 read_reloc(const u32 *map, int x, const u64 mask)
 {
 	u64 reloc;
@@ -18,10 +19,12 @@ static u64 read_reloc(const u32 *map, int x, const u64 mask)
 	memcpy(&reloc, &map[x], sizeof(reloc));
 	return reloc & mask;
 }
+#endif
 
 static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 			   struct drm_i915_gem_object *obj)
 {
+#if 0
 	const unsigned int offsets[] = { 8, 3, 0 };
 	const u64 mask =
 		GENMASK_ULL(eb->reloc_cache.use_64bit_reloc ? 63 : 31, 0);
@@ -97,6 +100,9 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 unpin_vma:
 	i915_vma_unpin(vma);
 	return err;
+#else
+	return 0;
+#endif
 }
 
 static int igt_gpu_reloc(void *arg)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
