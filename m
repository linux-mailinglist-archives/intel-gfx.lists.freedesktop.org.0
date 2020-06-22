Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BE120341B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 11:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 945396E227;
	Mon, 22 Jun 2020 09:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 184446E21F
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 09:59:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21574661-1500050 
 for multiple; Mon, 22 Jun 2020 10:59:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 10:59:16 +0100
Message-Id: <20200622095921.15530-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200622095921.15530-1-chris@chris-wilson.co.uk>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Reuse the reservation_ww_class
 for acquiring vma backing storage
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

i915_vma_pin() remains as a convenience function to grab a single range
of address space on the GPU, and must not only acquire the backing
storage of the associated buffer/pages, but must also acquire backing
storage for teh page directory. As such, it will want to receive the
allocations, but in the meantime, convert the custom vma->pages_mutex to
reuse the reservation_ww_class from the associated backing store (object
for now).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  21 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   2 -
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |   1 -
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  23 +--
 drivers/gpu/drm/i915/gt/intel_gtt.h           |   2 -
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |   3 +-
 drivers/gpu/drm/i915/i915_vma.c               | 189 ++++++------------
 drivers/gpu/drm/i915/i915_vma.h               |   3 -
 drivers/gpu/drm/i915/i915_vma_types.h         |   7 -
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   4 +-
 drivers/gpu/drm/i915/selftests/mock_gtt.c     |   1 -
 11 files changed, 92 insertions(+), 164 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index f7f34954a920..678e7f82f6c9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -332,7 +332,7 @@ static inline void eb_unreserve_vma(struct eb_vma *ev)
 		__i915_vma_unpin(vma);
 
 	if (ev->flags & __EXEC_OBJECT_HAS_PAGES)
-		i915_vma_put_pages(vma);
+		i915_gem_object_unpin_pages(vma->obj);
 
 	ev->flags &= ~(__EXEC_OBJECT_HAS_PIN |
 		       __EXEC_OBJECT_HAS_FENCE |
@@ -1095,7 +1095,6 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_vma *ev)
 		if (unlikely(err))
 			return err;
 
-		atomic_add(I915_VMA_PAGES_ACTIVE, &vma->pages_count);
 		atomic_or(bind_flags, &vma->flags);
 
 		if (i915_vma_is_ggtt(vma))
@@ -1160,6 +1159,13 @@ static int wait_for_timeline(struct intel_timeline *tl)
 	} while (1);
 }
 
+static void eb_pin_vma_pages(struct i915_vma *vma, unsigned int count)
+{
+	count = hweight32(count);
+	while (count--)
+		__i915_gem_object_pin_pages(vma->obj);
+}
+
 static int __eb_bind_vma(struct eb_vm_work *work, int err)
 {
 	struct i915_address_space *vm = work->vm;
@@ -1201,12 +1207,15 @@ static int __eb_bind_vma(struct eb_vm_work *work, int err)
 		GEM_BUG_ON(vma->vm != vm);
 		GEM_BUG_ON(!i915_vma_is_active(vma));
 
+		if (!vma->pages)
+			err = vma->ops->set_pages(vma);
 		if (err == 0)
 			err = vma->ops->bind_vma(vma,
 						 vma->obj->cache_level,
-						 ev->bind_flags |
-						 I915_VMA_ALLOC);
-		if (err)
+						 ev->bind_flags);
+		if (err == 0)
+			eb_pin_vma_pages(vma, ev->bind_flags);
+		else
 			atomic_and(~ev->bind_flags, &vma->flags);
 
 		if (drm_mm_node_allocated(&ev->hole)) {
@@ -1318,7 +1327,7 @@ static int eb_prepare_vma(struct eb_vma *ev)
 	ev->bind_flags = 0;
 
 	if (!(ev->flags &  __EXEC_OBJECT_HAS_PAGES)) {
-		err = i915_vma_get_pages(vma);
+		err = i915_gem_object_pin_pages(vma->obj);
 		if (err)
 			return err;
 
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 2c5ac598ade2..34f66a9ccf2d 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -360,7 +360,6 @@ static struct i915_vma *pd_vma_create(struct gen6_ppgtt *ppgtt, int size)
 	i915_active_init(&vma->active, NULL, NULL);
 
 	kref_init(&vma->ref);
-	mutex_init(&vma->pages_mutex);
 	vma->vm = i915_vm_get(&ggtt->vm);
 	vma->ops = &pd_vma_ops;
 	vma->private = ppgtt;
@@ -447,7 +446,6 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 	ppgtt_init(&ppgtt->base, gt);
 	ppgtt->base.vm.top = 1;
 
-	ppgtt->base.vm.bind_async_flags = I915_VMA_LOCAL_BIND;
 	ppgtt->base.vm.allocate_va_range = gen6_alloc_va_range;
 	ppgtt->base.vm.clear_range = gen6_ppgtt_clear_range;
 	ppgtt->base.vm.insert_entries = gen6_ppgtt_insert_entries;
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 699125928272..1aea30238aa4 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -737,7 +737,6 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
 			goto err_free_pd;
 	}
 
-	ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
 	ppgtt->vm.insert_entries = gen8_ppgtt_insert;
 	ppgtt->vm.allocate_va_range = gen8_ppgtt_alloc;
 	ppgtt->vm.clear_range = gen8_ppgtt_clear;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index eaacf369d304..a7160e142c1c 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -582,8 +582,7 @@ static int aliasing_gtt_bind_vma(struct i915_vma *vma,
 	if (flags & I915_VMA_LOCAL_BIND) {
 		struct i915_ppgtt *alias = i915_vm_to_ggtt(vma->vm)->alias;
 
-		if (flags & I915_VMA_ALLOC &&
-		    !test_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
+		if (!test_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
 			ret = alias->vm.allocate_va_range(&alias->vm,
 							  vma->node.start,
 							  vma->size);
@@ -646,7 +645,6 @@ static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
 		goto err_ppgtt;
 
 	ggtt->alias = ppgtt;
-	ggtt->vm.bind_async_flags |= ppgtt->vm.bind_async_flags;
 
 	GEM_BUG_ON(ggtt->vm.vma_ops.bind_vma != ggtt_bind_vma);
 	ggtt->vm.vma_ops.bind_vma = aliasing_gtt_bind_vma;
@@ -882,8 +880,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	    IS_CHERRYVIEW(i915) /* fails with concurrent use/update */) {
 		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
 		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
-		ggtt->vm.bind_async_flags =
-			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
 	}
 
 	ggtt->invalidate = gen8_ggtt_invalidate;
@@ -1181,11 +1177,6 @@ void i915_ggtt_disable_guc(struct i915_ggtt *ggtt)
 	ggtt->invalidate(ggtt);
 }
 
-static unsigned int clear_bind(struct i915_vma *vma)
-{
-	return atomic_fetch_and(~I915_VMA_BIND_MASK, &vma->flags);
-}
-
 void i915_ggtt_resume(struct i915_ggtt *ggtt)
 {
 	struct i915_vma *vma;
@@ -1203,11 +1194,13 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
 	/* clflush objects bound into the GGTT and rebind them. */
 	list_for_each_entry(vma, &ggtt->vm.bound_list, vm_link) {
 		struct drm_i915_gem_object *obj = vma->obj;
-		unsigned int was_bound = clear_bind(vma);
+		unsigned int was_bound =
+			atomic_read(&vma->flags) & I915_VMA_BIND_MASK;
 
-		WARN_ON(i915_vma_bind(vma,
-				      obj ? obj->cache_level : 0,
-				      was_bound, NULL));
+		GEM_BUG_ON(!was_bound);
+		GEM_WARN_ON(vma->ops->bind_vma(vma,
+					       obj ? obj->cache_level : 0,
+					       was_bound));
 		if (obj) { /* only used during resume => exclusive access */
 			flush |= fetch_and_zero(&obj->write_domain);
 			obj->read_domains |= I915_GEM_DOMAIN_GTT;
@@ -1448,7 +1441,7 @@ i915_get_ggtt_vma_pages(struct i915_vma *vma)
 	 * must be the vma->pages. A simple rule is that vma->pages must only
 	 * be accessed when the obj->mm.pages are pinned.
 	 */
-	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(vma->obj));
+	GEM_BUG_ON(!i915_gem_object_has_pages(vma->obj));
 
 	switch (vma->ggtt_view.type) {
 	default:
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 773fc76dfa1b..5cbaf55e4941 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -239,8 +239,6 @@ struct i915_address_space {
 	u64 total;		/* size addr space maps (ex. 2GB for ggtt) */
 	u64 reserved;		/* size addr space reserved */
 
-	unsigned int bind_async_flags;
-
 	/*
 	 * Each active user context has its own address space (in full-ppgtt).
 	 * Since the vm may be shared between multiple contexts, we count how
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index ecdd58f4b993..fd1abdee2b27 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -162,8 +162,7 @@ static int ppgtt_bind_vma(struct i915_vma *vma,
 	u32 pte_flags;
 	int err;
 
-	if (flags & I915_VMA_ALLOC &&
-	    !test_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
+	if (!test_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
 		err = vma->vm->allocate_va_range(vma->vm,
 						 vma->node.start, vma->size);
 		if (err)
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index efb9eacf59b9..dc656c7d3191 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -115,7 +115,6 @@ vma_create(struct drm_i915_gem_object *obj,
 		return ERR_PTR(-ENOMEM);
 
 	kref_init(&vma->ref);
-	mutex_init(&vma->pages_mutex);
 	vma->vm = i915_vm_get(vm);
 	vma->ops = &vm->vma_ops;
 	vma->obj = obj;
@@ -302,13 +301,27 @@ struct i915_vma_work {
 	unsigned int flags;
 };
 
+static void pin_pages(struct i915_vma *vma, unsigned int bind)
+{
+	bind = hweight32(bind & I915_VMA_BIND_MASK);
+	while (bind--)
+		__i915_gem_object_pin_pages(vma->obj);
+}
+
 static int __vma_bind(struct dma_fence_work *work)
 {
 	struct i915_vma_work *vw = container_of(work, typeof(*vw), base);
 	struct i915_vma *vma = vw->vma;
 	int err;
 
-	err = vma->ops->bind_vma(vma, vw->cache_level, vw->flags);
+	if (vma->obj) /* fixup the pin-pages for bind-flags */
+		pin_pages(vma, vw->flags);
+
+	err = 0;
+	if (!vma->pages)
+		err = vma->ops->set_pages(vma);
+	if (err == 0)
+		err = vma->ops->bind_vma(vma, vw->cache_level, vw->flags);
 	if (err)
 		atomic_or(I915_VMA_ERROR, &vma->flags);
 
@@ -390,9 +403,9 @@ int i915_vma_bind(struct i915_vma *vma,
 		  u32 flags,
 		  struct i915_vma_work *work)
 {
+	struct dma_fence *prev;
 	u32 bind_flags;
 	u32 vma_flags;
-	int ret;
 
 	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
 	GEM_BUG_ON(vma->size > vma->node.size);
@@ -415,43 +428,34 @@ int i915_vma_bind(struct i915_vma *vma,
 	if (bind_flags == 0)
 		return 0;
 
-	GEM_BUG_ON(!vma->pages);
-
 	trace_i915_vma_bind(vma, bind_flags);
-	if (work && bind_flags & vma->vm->bind_async_flags) {
-		struct dma_fence *prev;
 
-		work->vma = vma;
-		work->cache_level = cache_level;
-		work->flags = bind_flags | I915_VMA_ALLOC;
+	work->vma = vma;
+	work->cache_level = cache_level;
+	work->flags = bind_flags;
 
-		/*
-		 * Note we only want to chain up to the migration fence on
-		 * the pages (not the object itself). As we don't track that,
-		 * yet, we have to use the exclusive fence instead.
-		 *
-		 * Also note that we do not want to track the async vma as
-		 * part of the obj->resv->excl_fence as it only affects
-		 * execution and not content or object's backing store lifetime.
-		 */
-		prev = i915_active_set_exclusive(&vma->active, &work->base.dma);
-		if (prev) {
-			__i915_sw_fence_await_dma_fence(&work->base.chain,
-							prev,
-							&work->cb);
-			dma_fence_put(prev);
-		}
+	/*
+	 * Note we only want to chain up to the migration fence on
+	 * the pages (not the object itself). As we don't track that,
+	 * yet, we have to use the exclusive fence instead.
+	 *
+	 * Also note that we do not want to track the async vma as
+	 * part of the obj->resv->excl_fence as it only affects
+	 * execution and not content or object's backing store lifetime.
+	 */
+	prev = i915_active_set_exclusive(&vma->active, &work->base.dma);
+	if (prev) {
+		__i915_sw_fence_await_dma_fence(&work->base.chain,
+						prev,
+						&work->cb);
+		dma_fence_put(prev);
+	}
 
-		work->base.dma.error = 0; /* enable the queue_work() */
+	work->base.dma.error = 0; /* enable the queue_work() */
 
-		if (vma->obj) {
-			__i915_gem_object_pin_pages(vma->obj);
-			work->pinned = vma->obj;
-		}
-	} else {
-		ret = vma->ops->bind_vma(vma, cache_level, bind_flags);
-		if (ret)
-			return ret;
+	if (vma->obj) {
+		__i915_gem_object_pin_pages(vma->obj);
+		work->pinned = vma->obj;
 	}
 
 	atomic_or(bind_flags, &vma->flags);
@@ -694,6 +698,9 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 		if (ret)
 			return ret;
 	} else {
+		const unsigned long page_sizes =
+			INTEL_INFO(vma->vm->i915)->page_sizes;
+
 		/*
 		 * We only support huge gtt pages through the 48b PPGTT,
 		 * however we also don't want to force any alignment for
@@ -703,7 +710,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 		 * forseeable future. See also i915_ggtt_offset().
 		 */
 		if (upper_32_bits(end - 1) &&
-		    vma->page_sizes.sg > I915_GTT_PAGE_SIZE) {
+		    page_sizes > I915_GTT_PAGE_SIZE) {
 			/*
 			 * We can't mix 64K and 4K PTEs in the same page-table
 			 * (2M block), and so to avoid the ugliness and
@@ -711,7 +718,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 			 * objects to 2M.
 			 */
 			u64 page_alignment =
-				rounddown_pow_of_two(vma->page_sizes.sg |
+				rounddown_pow_of_two(page_sizes |
 						     I915_GTT_PAGE_SIZE_2M);
 
 			/*
@@ -723,7 +730,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 
 			alignment = max(alignment, page_alignment);
 
-			if (vma->page_sizes.sg & I915_GTT_PAGE_SIZE_64K)
+			if (page_sizes & I915_GTT_PAGE_SIZE_64K)
 				size = round_up(size, I915_GTT_PAGE_SIZE_2M);
 		}
 
@@ -798,74 +805,6 @@ static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
 	return pinned;
 }
 
-int i915_vma_get_pages(struct i915_vma *vma)
-{
-	int err = 0;
-
-	if (atomic_add_unless(&vma->pages_count, 1, 0))
-		return 0;
-
-	/* Allocations ahoy! */
-	if (mutex_lock_interruptible(&vma->pages_mutex))
-		return -EINTR;
-
-	if (!atomic_read(&vma->pages_count)) {
-		if (vma->obj) {
-			err = i915_gem_object_pin_pages(vma->obj);
-			if (err)
-				goto unlock;
-		}
-
-		err = vma->ops->set_pages(vma);
-		if (err) {
-			if (vma->obj)
-				i915_gem_object_unpin_pages(vma->obj);
-			goto unlock;
-		}
-	}
-	atomic_inc(&vma->pages_count);
-
-unlock:
-	mutex_unlock(&vma->pages_mutex);
-
-	return err;
-}
-
-static void __vma_put_pages(struct i915_vma *vma, unsigned int count)
-{
-	/* We allocate under vma_get_pages, so beware the shrinker */
-	mutex_lock_nested(&vma->pages_mutex, SINGLE_DEPTH_NESTING);
-	GEM_BUG_ON(atomic_read(&vma->pages_count) < count);
-	if (atomic_sub_return(count, &vma->pages_count) == 0) {
-		vma->ops->clear_pages(vma);
-		GEM_BUG_ON(vma->pages);
-		if (vma->obj)
-			i915_gem_object_unpin_pages(vma->obj);
-	}
-	mutex_unlock(&vma->pages_mutex);
-}
-
-void i915_vma_put_pages(struct i915_vma *vma)
-{
-	if (atomic_add_unless(&vma->pages_count, -1, 1))
-		return;
-
-	__vma_put_pages(vma, 1);
-}
-
-static void vma_unbind_pages(struct i915_vma *vma)
-{
-	unsigned int count;
-
-	lockdep_assert_held(&vma->vm->mutex);
-
-	/* The upper portion of pages_count is the number of bindings */
-	count = atomic_read(&vma->pages_count);
-	count >>= I915_VMA_PAGES_BIAS;
-	if (count)
-		__vma_put_pages(vma, count | count << I915_VMA_PAGES_BIAS);
-}
-
 static int __wait_for_unbind(struct i915_vma *vma, unsigned int flags)
 {
 	return __i915_vma_wait_excl(vma, false, flags);
@@ -887,20 +826,20 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	if (try_qad_pin(vma, flags & I915_VMA_BIND_MASK))
 		return 0;
 
-	err = i915_vma_get_pages(vma);
-	if (err)
-		return err;
+	if (vma->obj) {
+		err = i915_gem_object_pin_pages(vma->obj);
+		if (err)
+			return err;
+	}
 
 	err = __wait_for_unbind(vma, flags);
 	if (err)
 		goto err_pages;
 
-	if (flags & vma->vm->bind_async_flags) {
-		work = i915_vma_work();
-		if (!work) {
-			err = -ENOMEM;
-			goto err_pages;
-		}
+	work = i915_vma_work();
+	if (!work) {
+		err = -ENOMEM;
+		goto err_pages;
 	}
 
 	if (flags & PIN_GLOBAL)
@@ -968,16 +907,12 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 			__i915_vma_set_map_and_fenceable(vma);
 	}
 
-	GEM_BUG_ON(!vma->pages);
 	err = i915_vma_bind(vma,
 			    vma->obj ? vma->obj->cache_level : 0,
 			    flags, work);
 	if (err)
 		goto err_remove;
 
-	/* There should only be at most 2 active bindings (user, global) */
-	GEM_BUG_ON(bound + I915_VMA_PAGES_ACTIVE < bound);
-	atomic_add(I915_VMA_PAGES_ACTIVE, &vma->pages_count);
 	list_move_tail(&vma->vm_link, &vma->vm->bound_list);
 	GEM_BUG_ON(!i915_vma_is_active(vma));
 
@@ -996,12 +931,12 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 err_unlock:
 	mutex_unlock(&vma->vm->mutex);
 err_fence:
-	if (work)
-		dma_fence_work_commit_imm(&work->base);
+	dma_fence_work_commit_imm(&work->base);
 	if (wakeref)
 		intel_runtime_pm_put(&vma->vm->i915->runtime_pm, wakeref);
 err_pages:
-	i915_vma_put_pages(vma);
+	if (vma->obj)
+		i915_gem_object_unpin_pages(vma->obj);
 	return err;
 }
 
@@ -1257,6 +1192,8 @@ int i915_vma_move_to_active(struct i915_vma *vma,
 
 void __i915_vma_evict(struct i915_vma *vma)
 {
+	int count;
+
 	GEM_BUG_ON(i915_vma_is_pinned(vma));
 
 	if (i915_vma_is_map_and_fenceable(vma)) {
@@ -1291,11 +1228,17 @@ void __i915_vma_evict(struct i915_vma *vma)
 		trace_i915_vma_unbind(vma);
 		vma->ops->unbind_vma(vma);
 	}
+	count = hweight32(atomic_read(&vma->flags) & I915_VMA_BIND_MASK);
 	atomic_and(~(I915_VMA_BIND_MASK | I915_VMA_ERROR | I915_VMA_GGTT_WRITE),
 		   &vma->flags);
 
 	i915_vma_detach(vma);
-	vma_unbind_pages(vma);
+
+	vma->ops->clear_pages(vma);
+	if (vma->obj) {
+		while (count--)
+			__i915_gem_object_unpin_pages(vma->obj);
+	}
 }
 
 int __i915_vma_unbind(struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 478e8679f331..8ec204817986 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -240,9 +240,6 @@ int __must_check
 i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags);
 int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags);
 
-int i915_vma_get_pages(struct i915_vma *vma);
-void i915_vma_put_pages(struct i915_vma *vma);
-
 static inline int i915_vma_pin_count(const struct i915_vma *vma)
 {
 	return atomic_read(&vma->flags) & I915_VMA_PIN_MASK;
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 63831cdb7402..02c1640bb034 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -235,7 +235,6 @@ struct i915_vma {
 #define I915_VMA_BIND_MASK (I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND)
 
 #define I915_VMA_ALLOC_BIT	12
-#define I915_VMA_ALLOC		((int)BIT(I915_VMA_ALLOC_BIT))
 
 #define I915_VMA_ERROR_BIT	13
 #define I915_VMA_ERROR		((int)BIT(I915_VMA_ERROR_BIT))
@@ -252,11 +251,6 @@ struct i915_vma {
 
 	struct i915_active active;
 
-#define I915_VMA_PAGES_BIAS 24
-#define I915_VMA_PAGES_ACTIVE (BIT(24) | 1)
-	atomic_t pages_count; /* number of active binds to the pages */
-	struct mutex pages_mutex; /* protect acquire/release of backing pages */
-
 	/**
 	 * Support different GGTT views into the same object.
 	 * This means there can be multiple VMA mappings per object and per VM.
@@ -280,4 +274,3 @@ struct i915_vma {
 };
 
 #endif
-
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 0016ffc7d914..e840093e205f 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1221,9 +1221,9 @@ static void track_vma_bind(struct i915_vma *vma)
 	__i915_gem_object_pin_pages(obj);
 
 	GEM_BUG_ON(vma->pages);
-	atomic_set(&vma->pages_count, I915_VMA_PAGES_ACTIVE);
-	__i915_gem_object_pin_pages(obj);
 	vma->pages = obj->mm.pages;
+	__i915_gem_object_pin_pages(obj);
+	atomic_or(I915_VMA_GLOBAL_BIND, &vma->flags);
 
 	mutex_lock(&vma->vm->mutex);
 	list_add_tail(&vma->vm_link, &vma->vm->bound_list);
diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
index edc5e3dda8ca..54825a322852 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
@@ -92,7 +92,6 @@ static int mock_bind_ggtt(struct i915_vma *vma,
 			  enum i915_cache_level cache_level,
 			  u32 flags)
 {
-	atomic_or(I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND, &vma->flags);
 	return 0;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
