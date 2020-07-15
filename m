Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B2F220C70
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0E9A6EB27;
	Wed, 15 Jul 2020 11:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8ED06EACC
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826135-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:51:09 +0100
Message-Id: <20200715115147.11866-28-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/66] drm/i915/gem: Replace
 i915_gem_object.mm.mutex with reservation_ww_class
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

Our goal is to pull all memory reservations (next iteration
obj->ops->get_pages()) under a ww_mutex, and to align those reservations
with other drivers, i.e. control all such allocations with the
reservation_ww_class. Currently, this is under the purview of the
obj->mm.mutex, and while obj->mm remains an embedded struct we can
"simply" switch to using the reservation_ww_class obj->base.resv->lock

The major consequence is the impact on the shrinker paths as the
reservation_ww_class is used to wrap allocations, and a ww_mutex does
not support subclassing so we cannot do our usual trick of knowing that
we never recurse inside the shrinker and instead have to finish the
reclaim with a trylock. This may result in us failing to release the
pages after having released the vma. This will have to do until a better
idea comes along.

However, this step only converts the mutex over and continues to treat
everything as a single allocation and pinning the pages. With the
ww_mutex in place we can remove the temporary pinning, as we can then
reserve all storage en masse.

One last thing to do: kill the implict page pinning for active vma.
This will require us to invalidate the vma->pages when the backing store
is removed (and we expect that while the vma is active, we mark the
backing store as active so that it cannot be removed while the HW is
busy.)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |  20 +-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |  18 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  65 ++----
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  40 +++-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   8 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  37 +--
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   1 -
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 134 ++++++-----
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      |   8 +-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  13 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |   2 -
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |  15 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  32 ++-
 .../i915/gem/selftests/i915_gem_coherency.c   |  14 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |  10 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   2 +
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   2 -
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |   1 -
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |   5 +-
 drivers/gpu/drm/i915/gt/intel_gtt.h           |   2 -
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |   1 +
 drivers/gpu/drm/i915/i915_gem.c               |  16 +-
 drivers/gpu/drm/i915/i915_vma.c               | 217 +++++++-----------
 drivers/gpu/drm/i915/i915_vma_types.h         |   6 -
 drivers/gpu/drm/i915/mm/i915_acquire_ctx.c    |  12 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   4 +-
 .../drm/i915/selftests/intel_memory_region.c  |  17 +-
 27 files changed, 313 insertions(+), 389 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
index bc0223716906..a32fd0d5570b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
@@ -27,16 +27,8 @@ static void __do_clflush(struct drm_i915_gem_object *obj)
 static int clflush_work(struct dma_fence_work *base)
 {
 	struct clflush *clflush = container_of(base, typeof(*clflush), base);
-	struct drm_i915_gem_object *obj = clflush->obj;
-	int err;
-
-	err = i915_gem_object_pin_pages(obj);
-	if (err)
-		return err;
-
-	__do_clflush(obj);
-	i915_gem_object_unpin_pages(obj);
 
+	__do_clflush(clflush->obj);
 	return 0;
 }
 
@@ -44,7 +36,7 @@ static void clflush_release(struct dma_fence_work *base)
 {
 	struct clflush *clflush = container_of(base, typeof(*clflush), base);
 
-	i915_gem_object_put(clflush->obj);
+	i915_gem_object_unpin_pages(clflush->obj);
 }
 
 static const struct dma_fence_work_ops clflush_ops = {
@@ -63,8 +55,14 @@ static struct clflush *clflush_work_create(struct drm_i915_gem_object *obj)
 	if (!clflush)
 		return NULL;
 
+	if (__i915_gem_object_get_pages_locked(obj)) {
+		kfree(clflush);
+		return NULL;
+	}
+
 	dma_fence_work_init(&clflush->base, &clflush_ops);
-	clflush->obj = i915_gem_object_get(obj); /* obj <-> clflush cycle */
+	__i915_gem_object_pin_pages(obj);
+	clflush->obj = obj; /* Beware the obj.resv <-> clflush fence cycle */
 
 	return clflush;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 2679380159fc..049a15e6b496 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -124,19 +124,12 @@ static int i915_gem_begin_cpu_access(struct dma_buf *dma_buf, enum dma_data_dire
 	bool write = (direction == DMA_BIDIRECTIONAL || direction == DMA_TO_DEVICE);
 	int err;
 
-	err = i915_gem_object_pin_pages(obj);
-	if (err)
-		return err;
-
 	err = i915_gem_object_lock_interruptible(obj);
 	if (err)
-		goto out;
+		return err;
 
 	err = i915_gem_object_set_to_cpu_domain(obj, write);
 	i915_gem_object_unlock(obj);
-
-out:
-	i915_gem_object_unpin_pages(obj);
 	return err;
 }
 
@@ -145,19 +138,12 @@ static int i915_gem_end_cpu_access(struct dma_buf *dma_buf, enum dma_data_direct
 	struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);
 	int err;
 
-	err = i915_gem_object_pin_pages(obj);
-	if (err)
-		return err;
-
 	err = i915_gem_object_lock_interruptible(obj);
 	if (err)
-		goto out;
+		return err;
 
 	err = i915_gem_object_set_to_gtt_domain(obj, false);
 	i915_gem_object_unlock(obj);
-
-out:
-	i915_gem_object_unpin_pages(obj);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 7f76fc68f498..30e4b163588b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -70,7 +70,7 @@ i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write)
 	 * continue to assume that the obj remained out of the CPU cached
 	 * domain.
 	 */
-	ret = i915_gem_object_pin_pages(obj);
+	ret = __i915_gem_object_get_pages_locked(obj);
 	if (ret)
 		return ret;
 
@@ -94,7 +94,6 @@ i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write)
 		obj->mm.dirty = true;
 	}
 
-	i915_gem_object_unpin_pages(obj);
 	return 0;
 }
 
@@ -131,7 +130,7 @@ i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, bool write)
 	 * continue to assume that the obj remained out of the CPU cached
 	 * domain.
 	 */
-	ret = i915_gem_object_pin_pages(obj);
+	ret = __i915_gem_object_get_pages_locked(obj);
 	if (ret)
 		return ret;
 
@@ -163,7 +162,6 @@ i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, bool write)
 		spin_unlock(&obj->vma.lock);
 	}
 
-	i915_gem_object_unpin_pages(obj);
 	return 0;
 }
 
@@ -532,13 +530,9 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	 * continue to assume that the obj remained out of the CPU cached
 	 * domain.
 	 */
-	err = i915_gem_object_pin_pages(obj);
-	if (err)
-		goto out;
-
 	err = i915_gem_object_lock_interruptible(obj);
 	if (err)
-		goto out_unpin;
+		goto out;
 
 	if (read_domains & I915_GEM_DOMAIN_WC)
 		err = i915_gem_object_set_to_wc_domain(obj, write_domain);
@@ -555,8 +549,6 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	if (write_domain)
 		i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
 
-out_unpin:
-	i915_gem_object_unpin_pages(obj);
 out:
 	i915_gem_object_put(obj);
 	return err;
@@ -572,11 +564,13 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 {
 	int ret;
 
+	assert_object_held(obj);
+
 	*needs_clflush = 0;
 	if (!i915_gem_object_has_struct_page(obj))
 		return -ENODEV;
 
-	ret = i915_gem_object_lock_interruptible(obj);
+	ret = __i915_gem_object_get_pages_locked(obj);
 	if (ret)
 		return ret;
 
@@ -584,19 +578,11 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 				   I915_WAIT_INTERRUPTIBLE,
 				   MAX_SCHEDULE_TIMEOUT);
 	if (ret)
-		goto err_unlock;
-
-	ret = i915_gem_object_pin_pages(obj);
-	if (ret)
-		goto err_unlock;
+		return ret;
 
 	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ ||
 	    !static_cpu_has(X86_FEATURE_CLFLUSH)) {
-		ret = i915_gem_object_set_to_cpu_domain(obj, false);
-		if (ret)
-			goto err_unpin;
-		else
-			goto out;
+		return i915_gem_object_set_to_cpu_domain(obj, false);
 	}
 
 	i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
@@ -610,15 +596,7 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 	    !(obj->read_domains & I915_GEM_DOMAIN_CPU))
 		*needs_clflush = CLFLUSH_BEFORE;
 
-out:
-	/* return with the pages pinned */
 	return 0;
-
-err_unpin:
-	i915_gem_object_unpin_pages(obj);
-err_unlock:
-	i915_gem_object_unlock(obj);
-	return ret;
 }
 
 int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
@@ -626,11 +604,13 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 {
 	int ret;
 
+	assert_object_held(obj);
+
 	*needs_clflush = 0;
 	if (!i915_gem_object_has_struct_page(obj))
 		return -ENODEV;
 
-	ret = i915_gem_object_lock_interruptible(obj);
+	ret = __i915_gem_object_get_pages_locked(obj);
 	if (ret)
 		return ret;
 
@@ -639,20 +619,11 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 				   I915_WAIT_ALL,
 				   MAX_SCHEDULE_TIMEOUT);
 	if (ret)
-		goto err_unlock;
-
-	ret = i915_gem_object_pin_pages(obj);
-	if (ret)
-		goto err_unlock;
+		return ret;
 
 	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE ||
-	    !static_cpu_has(X86_FEATURE_CLFLUSH)) {
-		ret = i915_gem_object_set_to_cpu_domain(obj, true);
-		if (ret)
-			goto err_unpin;
-		else
-			goto out;
-	}
+	    !static_cpu_has(X86_FEATURE_CLFLUSH))
+		return i915_gem_object_set_to_cpu_domain(obj, true);
 
 	i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
 
@@ -672,15 +643,7 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 			*needs_clflush |= CLFLUSH_BEFORE;
 	}
 
-out:
 	i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
 	obj->mm.dirty = true;
-	/* return with the pages pinned */
 	return 0;
-
-err_unpin:
-	i915_gem_object_unpin_pages(obj);
-err_unlock:
-	i915_gem_object_unlock(obj);
-	return ret;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index db433f3f18ec..b07c508812ad 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -966,6 +966,13 @@ static int best_hole(struct drm_mm *mm, struct drm_mm_node *node,
 	} while (1);
 }
 
+static void eb_pin_vma_pages(struct i915_vma *vma, unsigned int count)
+{
+	count = hweight32(count);
+	while (count--)
+		__i915_gem_object_pin_pages(vma->obj);
+}
+
 static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
 {
 	struct drm_i915_gem_exec_object2 *entry = bind->ev->exec;
@@ -1077,7 +1084,6 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
 		if (unlikely(err))
 			return err;
 
-		atomic_add(I915_VMA_PAGES_ACTIVE, &vma->pages_count);
 		atomic_or(bind_flags, &vma->flags);
 
 		if (i915_vma_is_ggtt(vma))
@@ -1184,9 +1190,14 @@ static void __eb_bind_vma(struct eb_vm_work *work)
 		GEM_BUG_ON(vma->vm != vm);
 		GEM_BUG_ON(!i915_vma_is_active(vma));
 
+		if (!vma->pages)
+			vma->ops->set_pages(vma); /* plain assignment */
+
 		vma->ops->bind_vma(vm, &work->stash, vma,
 				   vma->obj->cache_level, bind->bind_flags);
 
+		eb_pin_vma_pages(vma, bind->bind_flags);
+
 		if (drm_mm_node_allocated(&bind->hole)) {
 			mutex_lock(&vm->mutex);
 			GEM_BUG_ON(bind->hole.mm != &vm->mm);
@@ -1203,7 +1214,6 @@ static void __eb_bind_vma(struct eb_vm_work *work)
 
 put:
 		GEM_BUG_ON(drm_mm_node_allocated(&bind->hole));
-		i915_vma_put_pages(vma);
 	}
 	work->count = 0;
 }
@@ -1316,8 +1326,24 @@ static int eb_prepare_vma(struct eb_vm_work *work,
 		if (err)
 			return err;
 	}
+	return 0;
+}
+
+static int eb_lock_pt(struct i915_execbuffer *eb,
+		      struct i915_vm_pt_stash *stash)
+{
+	struct i915_page_table *pt;
+	int n, err;
 
-	return i915_vma_get_pages(vma);
+	for (n = 0; n < ARRAY_SIZE(stash->pt); n++) {
+		for (pt = stash->pt[n]; pt; pt = pt->stash) {
+			err = i915_acquire_ctx_lock(&eb->acquire, pt->base);
+			if (err)
+				return err;
+		}
+	}
+
+	return 0;
 }
 
 static int wait_for_unbinds(struct i915_execbuffer *eb,
@@ -1457,11 +1483,11 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 			}
 		}
 
-		err = eb_acquire_mm(eb);
+		err = eb_lock_pt(eb, &work->stash);
 		if (err)
 			return eb_vm_work_cancel(work, err);
 
-		err = i915_vm_pin_pt_stash(work->vm, &work->stash);
+		err = eb_acquire_mm(eb);
 		if (err)
 			return eb_vm_work_cancel(work, err);
 
@@ -2714,7 +2740,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	if (!pw)
 		return -ENOMEM;
 
-	ptr = i915_gem_object_pin_map(shadow->obj, I915_MAP_FORCE_WB);
+	ptr = __i915_gem_object_pin_map_locked(shadow->obj, I915_MAP_FORCE_WB);
 	if (IS_ERR(ptr)) {
 		err = PTR_ERR(ptr);
 		goto err_free;
@@ -2722,7 +2748,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 
 	if (!(batch->obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ) &&
 	    i915_has_memcpy_from_wc()) {
-		ptr = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
+		ptr = __i915_gem_object_pin_map_locked(batch->obj, I915_MAP_WC);
 		if (IS_ERR(ptr)) {
 			err = PTR_ERR(ptr);
 			goto err_dst;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index c8421fd9d2dc..799ad4e648aa 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -53,8 +53,6 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 			  const struct drm_i915_gem_object_ops *ops,
 			  struct lock_class_key *key)
 {
-	__mutex_init(&obj->mm.lock, ops->name ?: "obj->mm.lock", key);
-
 	spin_lock_init(&obj->vma.lock);
 	INIT_LIST_HEAD(&obj->vma.list);
 
@@ -73,10 +71,6 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 	obj->mm.madv = I915_MADV_WILLNEED;
 	INIT_RADIX_TREE(&obj->mm.get_page.radix, GFP_KERNEL | __GFP_NOWARN);
 	mutex_init(&obj->mm.get_page.lock);
-
-	if (IS_ENABLED(CONFIG_LOCKDEP) && i915_gem_object_is_shrinkable(obj))
-		i915_gem_shrinker_taints_mutex(to_i915(obj->base.dev),
-					       &obj->mm.lock);
 }
 
 /**
@@ -229,10 +223,12 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
 
 		GEM_BUG_ON(!list_empty(&obj->lut_list));
 
+		i915_gem_object_lock(obj);
 		atomic_set(&obj->mm.pages_pin_count, 0);
 		__i915_gem_object_put_pages(obj);
 		GEM_BUG_ON(i915_gem_object_has_pages(obj));
 		bitmap_free(obj->bit_17);
+		i915_gem_object_unlock(obj);
 
 		if (obj->base.import_attach)
 			drm_prime_gem_destroy(&obj->base, NULL);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 6f60687b6be2..26f53321443b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -271,36 +271,9 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 				 struct sg_table *pages,
 				 unsigned int sg_page_sizes);
 
-int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
-int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
-
-enum i915_mm_subclass { /* lockdep subclass for obj->mm.lock/struct_mutex */
-	I915_MM_NORMAL = 0,
-	/*
-	 * Only used by struct_mutex, when called "recursively" from
-	 * direct-reclaim-esque. Safe because there is only every one
-	 * struct_mutex in the entire system.
-	 */
-	I915_MM_SHRINKER = 1,
-	/*
-	 * Used for obj->mm.lock when allocating pages. Safe because the object
-	 * isn't yet on any LRU, and therefore the shrinker can't deadlock on
-	 * it. As soon as the object has pages, obj->mm.lock nests within
-	 * fs_reclaim.
-	 */
-	I915_MM_GET_PAGES = 1,
-};
-
-static inline int __must_check
-i915_gem_object_pin_pages(struct drm_i915_gem_object *obj)
-{
-	might_lock_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+int __i915_gem_object_get_pages_locked(struct drm_i915_gem_object *obj);
 
-	if (atomic_inc_not_zero(&obj->mm.pages_pin_count))
-		return 0;
-
-	return __i915_gem_object_get_pages(obj);
-}
+int i915_gem_object_pin_pages(struct drm_i915_gem_object *obj);
 
 static inline bool
 i915_gem_object_has_pages(struct drm_i915_gem_object *obj)
@@ -368,6 +341,9 @@ enum i915_map_type {
 void *__must_check i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 					   enum i915_map_type type);
 
+void *__i915_gem_object_pin_map_locked(struct drm_i915_gem_object *obj,
+				       enum i915_map_type type);
+
 static inline void *__i915_gem_object_mapping(struct drm_i915_gem_object *obj)
 {
 	return page_mask_bits(obj->mm.mapping);
@@ -417,8 +393,7 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 static inline void
 i915_gem_object_finish_access(struct drm_i915_gem_object *obj)
 {
-	i915_gem_object_unpin_pages(obj);
-	i915_gem_object_unlock(obj);
+	assert_object_held(obj);
 }
 
 static inline struct intel_engine_cs *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index d0847d7896f9..ae3303ba272c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -187,7 +187,6 @@ struct drm_i915_gem_object {
 		 * Protects the pages and their use. Do not use directly, but
 		 * instead go through the pin/unpin interfaces.
 		 */
-		struct mutex lock;
 		atomic_t pages_pin_count;
 		atomic_t shrink_pin;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 7050519c87a4..76d53e535f42 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -18,7 +18,7 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 	unsigned long supported = INTEL_INFO(i915)->page_sizes;
 	int i;
 
-	lockdep_assert_held(&obj->mm.lock);
+	assert_object_held(obj);
 
 	if (i915_gem_object_is_volatile(obj))
 		obj->mm.madv = I915_MADV_DONTNEED;
@@ -81,13 +81,17 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 	}
 }
 
-int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
+int __i915_gem_object_get_pages_locked(struct drm_i915_gem_object *obj)
 {
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	int err;
 
+	assert_object_held(obj);
+
+	if (i915_gem_object_has_pages(obj))
+		return 0;
+
 	if (unlikely(obj->mm.madv != I915_MADV_WILLNEED)) {
-		drm_dbg(&i915->drm,
+		drm_dbg(obj->base.dev,
 			"Attempting to obtain a purgeable object\n");
 		return -EFAULT;
 	}
@@ -98,34 +102,33 @@ int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
 	return err;
 }
 
-/* Ensure that the associated pages are gathered from the backing storage
+/*
+ * Ensure that the associated pages are gathered from the backing storage
  * and pinned into our object. i915_gem_object_pin_pages() may be called
  * multiple times before they are released by a single call to
  * i915_gem_object_unpin_pages() - once the pages are no longer referenced
  * either as a result of memory pressure (reaping pages under the shrinker)
  * or as the object is itself released.
  */
-int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
+int i915_gem_object_pin_pages(struct drm_i915_gem_object *obj)
 {
 	int err;
 
-	err = mutex_lock_interruptible_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+	might_lock(&obj->base.resv->lock.base);
+
+	if (atomic_inc_not_zero(&obj->mm.pages_pin_count))
+		return 0;
+
+	err = i915_gem_object_lock_interruptible(obj);
 	if (err)
 		return err;
 
-	if (unlikely(!i915_gem_object_has_pages(obj))) {
-		GEM_BUG_ON(i915_gem_object_has_pinned_pages(obj));
-
-		err = ____i915_gem_object_get_pages(obj);
-		if (err)
-			goto unlock;
+	err = __i915_gem_object_get_pages_locked(obj);
+	if (err == 0)
+		atomic_inc(&obj->mm.pages_pin_count);
 
-		smp_mb__before_atomic();
-	}
-	atomic_inc(&obj->mm.pages_pin_count);
+	i915_gem_object_unlock(obj);
 
-unlock:
-	mutex_unlock(&obj->mm.lock);
 	return err;
 }
 
@@ -140,7 +143,7 @@ void i915_gem_object_truncate(struct drm_i915_gem_object *obj)
 /* Try to discard unwanted pages */
 void i915_gem_object_writeback(struct drm_i915_gem_object *obj)
 {
-	lockdep_assert_held(&obj->mm.lock);
+	assert_object_held(obj);
 	GEM_BUG_ON(i915_gem_object_has_pages(obj));
 
 	if (obj->ops->writeback)
@@ -194,17 +197,15 @@ __i915_gem_object_unset_pages(struct drm_i915_gem_object *obj)
 int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
 {
 	struct sg_table *pages;
-	int err;
+
+	/* May be called by shrinker from within get_pages() (on another bo) */
+	assert_object_held(obj);
 
 	if (i915_gem_object_has_pinned_pages(obj))
 		return -EBUSY;
 
-	/* May be called by shrinker from within get_pages() (on another bo) */
-	mutex_lock(&obj->mm.lock);
-	if (unlikely(atomic_read(&obj->mm.pages_pin_count))) {
-		err = -EBUSY;
-		goto unlock;
-	}
+	if (unlikely(atomic_read(&obj->mm.pages_pin_count)))
+		return -EBUSY;
 
 	i915_gem_object_release_mmap_offset(obj);
 
@@ -227,11 +228,7 @@ int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
 	if (!IS_ERR(pages))
 		obj->ops->put_pages(obj, pages);
 
-	err = 0;
-unlock:
-	mutex_unlock(&obj->mm.lock);
-
-	return err;
+	return 0;
 }
 
 static inline pte_t iomap_pte(resource_size_t base,
@@ -311,48 +308,28 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
 	return area->addr;
 }
 
-/* get, pin, and map the pages of the object into kernel space */
-void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
-			      enum i915_map_type type)
+void *__i915_gem_object_pin_map_locked(struct drm_i915_gem_object *obj,
+				       enum i915_map_type type)
 {
 	enum i915_map_type has_type;
 	unsigned int flags;
 	bool pinned;
 	void *ptr;
-	int err;
+
+	assert_object_held(obj);
+	GEM_BUG_ON(!i915_gem_object_has_pages(obj));
 
 	flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE | I915_GEM_OBJECT_HAS_IOMEM;
 	if (!i915_gem_object_type_has(obj, flags))
 		return ERR_PTR(-ENXIO);
 
-	err = mutex_lock_interruptible_nested(&obj->mm.lock, I915_MM_GET_PAGES);
-	if (err)
-		return ERR_PTR(err);
-
 	pinned = !(type & I915_MAP_OVERRIDE);
 	type &= ~I915_MAP_OVERRIDE;
 
-	if (!atomic_inc_not_zero(&obj->mm.pages_pin_count)) {
-		if (unlikely(!i915_gem_object_has_pages(obj))) {
-			GEM_BUG_ON(i915_gem_object_has_pinned_pages(obj));
-
-			err = ____i915_gem_object_get_pages(obj);
-			if (err)
-				goto err_unlock;
-
-			smp_mb__before_atomic();
-		}
-		atomic_inc(&obj->mm.pages_pin_count);
-		pinned = false;
-	}
-	GEM_BUG_ON(!i915_gem_object_has_pages(obj));
-
 	ptr = page_unpack_bits(obj->mm.mapping, &has_type);
 	if (ptr && has_type != type) {
-		if (pinned) {
-			err = -EBUSY;
-			goto err_unpin;
-		}
+		if (pinned)
+			return ERR_PTR(-EBUSY);
 
 		unmap_object(obj, ptr);
 
@@ -361,23 +338,38 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 
 	if (!ptr) {
 		ptr = i915_gem_object_map(obj, type);
-		if (!ptr) {
-			err = -ENOMEM;
-			goto err_unpin;
-		}
+		if (!ptr)
+			return ERR_PTR(-ENOMEM);
 
 		obj->mm.mapping = page_pack_bits(ptr, type);
 	}
 
-out_unlock:
-	mutex_unlock(&obj->mm.lock);
+	__i915_gem_object_pin_pages(obj);
 	return ptr;
+}
+
+/* get, pin, and map the pages of the object into kernel space */
+void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
+			      enum i915_map_type type)
+{
+	void *ptr;
+	int err;
+
+	err = i915_gem_object_lock_interruptible(obj);
+	if (err)
+		return ERR_PTR(err);
 
-err_unpin:
-	atomic_dec(&obj->mm.pages_pin_count);
-err_unlock:
-	ptr = ERR_PTR(err);
-	goto out_unlock;
+	err = __i915_gem_object_get_pages_locked(obj);
+	if (err) {
+		ptr = ERR_PTR(err);
+		goto out;
+	}
+
+	ptr = __i915_gem_object_pin_map_locked(obj, type);
+
+out:
+	i915_gem_object_unlock(obj);
+	return ptr;
 }
 
 void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
@@ -434,7 +426,9 @@ i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 
 	might_sleep();
 	GEM_BUG_ON(n >= obj->base.size >> PAGE_SHIFT);
-	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
+	GEM_BUG_ON(!i915_gem_object_has_pages(obj));
+	GEM_BUG_ON(!mutex_is_locked(&obj->base.resv->lock.base) &&
+		   !i915_gem_object_has_pinned_pages(obj));
 
 	/* As we iterate forward through the sg, we record each entry in a
 	 * radixtree for quick repeated (backwards) lookups. If we have seen
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 28147aab47b9..f7f93b68b7c1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -165,7 +165,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 	if (err)
 		return err;
 
-	mutex_lock_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+	i915_gem_object_lock(obj);
 
 	if (obj->mm.madv != I915_MADV_WILLNEED) {
 		err = -EFAULT;
@@ -186,7 +186,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 
 	obj->ops = &i915_gem_phys_ops;
 
-	err = ____i915_gem_object_get_pages(obj);
+	err = __i915_gem_object_get_pages_locked(obj);
 	if (err)
 		goto err_xfer;
 
@@ -198,7 +198,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 
 	i915_gem_object_release_memory_region(obj);
 
-	mutex_unlock(&obj->mm.lock);
+	i915_gem_object_unlock(obj);
 	return 0;
 
 err_xfer:
@@ -209,7 +209,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 		__i915_gem_object_set_pages(obj, pages, sg_page_sizes);
 	}
 err_unlock:
-	mutex_unlock(&obj->mm.lock);
+	i915_gem_object_unlock(obj);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index dc8f052a0ffe..4e928103a38f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -47,10 +47,7 @@ static bool unsafe_drop_pages(struct drm_i915_gem_object *obj,
 	if (!(shrink & I915_SHRINK_BOUND))
 		flags = I915_GEM_OBJECT_UNBIND_TEST;
 
-	if (i915_gem_object_unbind(obj, flags) == 0)
-		__i915_gem_object_put_pages(obj);
-
-	return !i915_gem_object_has_pages(obj);
+	return i915_gem_object_unbind(obj, flags) == 0;
 }
 
 static void try_to_writeback(struct drm_i915_gem_object *obj,
@@ -199,14 +196,14 @@ i915_gem_shrink(struct drm_i915_private *i915,
 
 			spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 
-			if (unsafe_drop_pages(obj, shrink)) {
-				/* May arrive from get_pages on another bo */
-				mutex_lock(&obj->mm.lock);
+			if (unsafe_drop_pages(obj, shrink) &&
+			    i915_gem_object_trylock(obj)) {
+				__i915_gem_object_put_pages(obj);
 				if (!i915_gem_object_has_pages(obj)) {
 					try_to_writeback(obj, shrink);
 					count += obj->base.size >> PAGE_SHIFT;
 				}
-				mutex_unlock(&obj->mm.lock);
+				i915_gem_object_unlock(obj);
 			}
 
 			scanned += obj->base.size >> PAGE_SHIFT;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index ff72ee2fd9cd..ac12e1c20e66 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -265,7 +265,6 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
 	 * pages to prevent them being swapped out and causing corruption
 	 * due to the change in swizzling.
 	 */
-	mutex_lock(&obj->mm.lock);
 	if (i915_gem_object_has_pages(obj) &&
 	    obj->mm.madv == I915_MADV_WILLNEED &&
 	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
@@ -280,7 +279,6 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
 			obj->mm.quirked = true;
 		}
 	}
-	mutex_unlock(&obj->mm.lock);
 
 	spin_lock(&obj->vma.lock);
 	for_each_ggtt_vma(vma, obj) {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index e946032b13e4..80907c00c6fd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -129,8 +129,15 @@ userptr_mn_invalidate_range_start(struct mmu_notifier *_mn,
 		ret = i915_gem_object_unbind(obj,
 					     I915_GEM_OBJECT_UNBIND_ACTIVE |
 					     I915_GEM_OBJECT_UNBIND_BARRIER);
-		if (ret == 0)
-			ret = __i915_gem_object_put_pages(obj);
+		if (ret == 0) {
+			/* ww_mutex and mmu_notifier is fs_reclaim tainted */
+			if (i915_gem_object_trylock(obj)) {
+				ret = __i915_gem_object_put_pages(obj);
+				i915_gem_object_unlock(obj);
+			} else {
+				ret = -EAGAIN;
+			}
+		}
 		i915_gem_object_put(obj);
 		if (ret)
 			return ret;
@@ -485,7 +492,7 @@ __i915_gem_userptr_get_pages_worker(struct work_struct *_work)
 		}
 	}
 
-	mutex_lock_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+	i915_gem_object_lock(obj);
 	if (obj->userptr.work == &work->work) {
 		struct sg_table *pages = ERR_PTR(ret);
 
@@ -502,7 +509,7 @@ __i915_gem_userptr_get_pages_worker(struct work_struct *_work)
 		if (IS_ERR(pages))
 			__i915_gem_userptr_set_active(obj, false);
 	}
-	mutex_unlock(&obj->mm.lock);
+	i915_gem_object_unlock(obj);
 
 	unpin_user_pages(pvec, pinned);
 	kvfree(pvec);
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index e2f3d014acb2..eb12d444d2cc 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -452,6 +452,15 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
 	return err;
 }
 
+static void close_object(struct drm_i915_gem_object *obj)
+{
+	i915_gem_object_lock(obj);
+	__i915_gem_object_put_pages(obj);
+	i915_gem_object_unlock(obj);
+
+	i915_gem_object_put(obj);
+}
+
 static int igt_mock_memory_region_huge_pages(void *arg)
 {
 	const unsigned int flags[] = { 0, I915_BO_ALLOC_CONTIGUOUS };
@@ -514,8 +523,7 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 			}
 
 			i915_vma_unpin(vma);
-			__i915_gem_object_put_pages(obj);
-			i915_gem_object_put(obj);
+			close_object(obj);
 		}
 	}
 
@@ -633,8 +641,7 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 		}
 
 		i915_gem_object_unpin_pages(obj);
-		__i915_gem_object_put_pages(obj);
-		i915_gem_object_put(obj);
+		close_object(obj);
 	}
 
 	return 0;
@@ -655,8 +662,7 @@ static void close_object_list(struct list_head *objects,
 	list_for_each_entry_safe(obj, on, objects, st_link) {
 		list_del(&obj->st_link);
 		i915_gem_object_unpin_pages(obj);
-		__i915_gem_object_put_pages(obj);
-		i915_gem_object_put(obj);
+		close_object(obj);
 	}
 }
 
@@ -923,8 +929,7 @@ static int igt_mock_ppgtt_64K(void *arg)
 
 			i915_vma_unpin(vma);
 			i915_gem_object_unpin_pages(obj);
-			__i915_gem_object_put_pages(obj);
-			i915_gem_object_put(obj);
+			close_object(obj);
 		}
 	}
 
@@ -964,9 +969,10 @@ __cpu_check_shmem(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 	unsigned long n;
 	int err;
 
+	i915_gem_object_lock(obj);
 	err = i915_gem_object_prepare_read(obj, &needs_flush);
 	if (err)
-		return err;
+		goto unlock;
 
 	for (n = 0; n < obj->base.size >> PAGE_SHIFT; ++n) {
 		u32 *ptr = kmap_atomic(i915_gem_object_get_page(obj, n));
@@ -986,7 +992,8 @@ __cpu_check_shmem(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 	}
 
 	i915_gem_object_finish_access(obj);
-
+unlock:
+	i915_gem_object_unlock(obj);
 	return err;
 }
 
@@ -1304,7 +1311,9 @@ static int igt_ppgtt_smoke_huge(void *arg)
 		}
 out_unpin:
 		i915_gem_object_unpin_pages(obj);
+		i915_gem_object_lock(obj);
 		__i915_gem_object_put_pages(obj);
+		i915_gem_object_unlock(obj);
 out_put:
 		i915_gem_object_put(obj);
 
@@ -1392,8 +1401,7 @@ static int igt_ppgtt_sanity_check(void *arg)
 			err = igt_write_huge(ctx, obj);
 
 			i915_gem_object_unpin_pages(obj);
-			__i915_gem_object_put_pages(obj);
-			i915_gem_object_put(obj);
+			close_object(obj);
 
 			if (err) {
 				pr_err("%s write-huge failed with size=%u pages=%u i=%d, j=%d\n",
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 87d7d8aa080f..b8dd6fabe70a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -27,9 +27,10 @@ static int cpu_set(struct context *ctx, unsigned long offset, u32 v)
 	u32 *cpu;
 	int err;
 
+	i915_gem_object_lock(ctx->obj);
 	err = i915_gem_object_prepare_write(ctx->obj, &needs_clflush);
 	if (err)
-		return err;
+		goto unlock;
 
 	page = i915_gem_object_get_page(ctx->obj, offset >> PAGE_SHIFT);
 	map = kmap_atomic(page);
@@ -46,7 +47,9 @@ static int cpu_set(struct context *ctx, unsigned long offset, u32 v)
 	kunmap_atomic(map);
 	i915_gem_object_finish_access(ctx->obj);
 
-	return 0;
+unlock:
+	i915_gem_object_unlock(ctx->obj);
+	return err;
 }
 
 static int cpu_get(struct context *ctx, unsigned long offset, u32 *v)
@@ -57,9 +60,10 @@ static int cpu_get(struct context *ctx, unsigned long offset, u32 *v)
 	u32 *cpu;
 	int err;
 
+	i915_gem_object_lock(ctx->obj);
 	err = i915_gem_object_prepare_read(ctx->obj, &needs_clflush);
 	if (err)
-		return err;
+		goto unlock;
 
 	page = i915_gem_object_get_page(ctx->obj, offset >> PAGE_SHIFT);
 	map = kmap_atomic(page);
@@ -73,7 +77,9 @@ static int cpu_get(struct context *ctx, unsigned long offset, u32 *v)
 	kunmap_atomic(map);
 	i915_gem_object_finish_access(ctx->obj);
 
-	return 0;
+unlock:
+	i915_gem_object_unlock(ctx->obj);
+	return err;
 }
 
 static int gtt_set(struct context *ctx, unsigned long offset, u32 v)
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index d176b015353f..f2a307b4146e 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -461,9 +461,10 @@ static int cpu_fill(struct drm_i915_gem_object *obj, u32 value)
 	unsigned int n, m, need_flush;
 	int err;
 
+	i915_gem_object_lock(obj);
 	err = i915_gem_object_prepare_write(obj, &need_flush);
 	if (err)
-		return err;
+		goto unlock;
 
 	for (n = 0; n < real_page_count(obj); n++) {
 		u32 *map;
@@ -479,6 +480,8 @@ static int cpu_fill(struct drm_i915_gem_object *obj, u32 value)
 	i915_gem_object_finish_access(obj);
 	obj->read_domains = I915_GEM_DOMAIN_GTT | I915_GEM_DOMAIN_CPU;
 	obj->write_domain = 0;
+unlock:
+	i915_gem_object_unlock(obj);
 	return 0;
 }
 
@@ -488,9 +491,10 @@ static noinline int cpu_check(struct drm_i915_gem_object *obj,
 	unsigned int n, m, needs_flush;
 	int err;
 
+	i915_gem_object_lock(obj);
 	err = i915_gem_object_prepare_read(obj, &needs_flush);
 	if (err)
-		return err;
+		goto unlock;
 
 	for (n = 0; n < real_page_count(obj); n++) {
 		u32 *map;
@@ -527,6 +531,8 @@ static noinline int cpu_check(struct drm_i915_gem_object *obj,
 	}
 
 	i915_gem_object_finish_access(obj);
+unlock:
+	i915_gem_object_unlock(obj);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9c7402ce5bf9..11f734fea3ab 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1297,7 +1297,9 @@ static int __igt_mmap_revoke(struct drm_i915_private *i915,
 	}
 
 	if (type != I915_MMAP_TYPE_GTT) {
+		i915_gem_object_lock(obj);
 		__i915_gem_object_put_pages(obj);
+		i915_gem_object_unlock(obj);
 		if (i915_gem_object_has_pages(obj)) {
 			pr_err("Failed to put-pages object!\n");
 			err = -EINVAL;
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 71baf2f8bdf3..3eab2cc751bc 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -351,7 +351,6 @@ static struct i915_vma *pd_vma_create(struct gen6_ppgtt *ppgtt, int size)
 	i915_active_init(&vma->active, NULL, NULL);
 
 	kref_init(&vma->ref);
-	mutex_init(&vma->pages_mutex);
 	vma->vm = i915_vm_get(&ggtt->vm);
 	vma->ops = &pd_vma_ops;
 	vma->private = ppgtt;
@@ -439,7 +438,6 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 	ppgtt->base.vm.pd_shift = 22;
 	ppgtt->base.vm.top = 1;
 
-	ppgtt->base.vm.bind_async_flags = I915_VMA_LOCAL_BIND;
 	ppgtt->base.vm.allocate_va_range = gen6_alloc_va_range;
 	ppgtt->base.vm.clear_range = gen6_ppgtt_clear_range;
 	ppgtt->base.vm.insert_entries = gen6_ppgtt_insert_entries;
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index e3afd250cd7f..203aa1f9aec7 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -720,7 +720,6 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
 			goto err_free_pd;
 	}
 
-	ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
 	ppgtt->vm.insert_entries = gen8_ppgtt_insert;
 	ppgtt->vm.allocate_va_range = gen8_ppgtt_alloc;
 	ppgtt->vm.clear_range = gen8_ppgtt_clear;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 33a3f627ddb1..59a4a3ab6bfd 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -628,7 +628,6 @@ static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
 	ppgtt->vm.allocate_va_range(&ppgtt->vm, &stash, 0, ggtt->vm.total);
 
 	ggtt->alias = ppgtt;
-	ggtt->vm.bind_async_flags |= ppgtt->vm.bind_async_flags;
 
 	GEM_BUG_ON(ggtt->vm.vma_ops.bind_vma != ggtt_bind_vma);
 	ggtt->vm.vma_ops.bind_vma = aliasing_gtt_bind_vma;
@@ -862,8 +861,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	    IS_CHERRYVIEW(i915) /* fails with concurrent use/update */) {
 		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
 		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
-		ggtt->vm.bind_async_flags =
-			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
 	}
 
 	ggtt->invalidate = gen8_ggtt_invalidate;
@@ -1429,7 +1426,7 @@ i915_get_ggtt_vma_pages(struct i915_vma *vma)
 	 * must be the vma->pages. A simple rule is that vma->pages must only
 	 * be accessed when the obj->mm.pages are pinned.
 	 */
-	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(vma->obj));
+	GEM_BUG_ON(!i915_gem_object_has_pages(vma->obj));
 
 	switch (vma->ggtt_view.type) {
 	default:
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 496f8236ca09..1bb447ef824b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -226,8 +226,6 @@ struct i915_address_space {
 	u64 total;		/* size addr space maps (ex. 2GB for ggtt) */
 	u64 reserved;		/* size addr space reserved */
 
-	unsigned int bind_async_flags;
-
 	/*
 	 * Each active user context has its own address space (in full-ppgtt).
 	 * Since the vm may be shared between multiple contexts, we count how
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index 1f80d79a6588..68dd3f8b79d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -271,6 +271,7 @@ void i915_vm_free_pt_stash(struct i915_address_space *vm,
 int ppgtt_set_pages(struct i915_vma *vma)
 {
 	GEM_BUG_ON(vma->pages);
+	GEM_BUG_ON(IS_ERR_OR_NULL(vma->obj->mm.pages));
 
 	vma->pages = vma->obj->mm.pages;
 	vma->page_sizes = vma->obj->mm.page_sizes;
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index e998f25f30a3..0fbe438c4523 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -335,12 +335,16 @@ i915_gem_shmem_pread(struct drm_i915_gem_object *obj,
 	u64 remain;
 	int ret;
 
+	i915_gem_object_lock(obj);
 	ret = i915_gem_object_prepare_read(obj, &needs_clflush);
-	if (ret)
+	if (ret) {
+		i915_gem_object_unlock(obj);
 		return ret;
+	}
 
 	fence = i915_gem_object_lock_fence(obj);
 	i915_gem_object_finish_access(obj);
+	i915_gem_object_unlock(obj);
 	if (!fence)
 		return -ENOMEM;
 
@@ -734,12 +738,16 @@ i915_gem_shmem_pwrite(struct drm_i915_gem_object *obj,
 	u64 remain;
 	int ret;
 
+	i915_gem_object_lock(obj);
 	ret = i915_gem_object_prepare_write(obj, &needs_clflush);
-	if (ret)
+	if (ret) {
+		i915_gem_object_unlock(obj);
 		return ret;
+	}
 
 	fence = i915_gem_object_lock_fence(obj);
 	i915_gem_object_finish_access(obj);
+	i915_gem_object_unlock(obj);
 	if (!fence)
 		return -ENOMEM;
 
@@ -1063,7 +1071,7 @@ i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
 	if (!obj)
 		return -ENOENT;
 
-	err = mutex_lock_interruptible(&obj->mm.lock);
+	err = i915_gem_object_lock_interruptible(obj);
 	if (err)
 		goto out;
 
@@ -1109,7 +1117,7 @@ i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
 		i915_gem_object_truncate(obj);
 
 	args->retained = obj->mm.madv != __I915_MADV_PURGED;
-	mutex_unlock(&obj->mm.lock);
+	i915_gem_object_unlock(obj);
 
 out:
 	i915_gem_object_put(obj);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 7278cc7c40b9..633f335ce892 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -116,7 +116,6 @@ vma_create(struct drm_i915_gem_object *obj,
 		return ERR_PTR(-ENOMEM);
 
 	kref_init(&vma->ref);
-	mutex_init(&vma->pages_mutex);
 	vma->vm = i915_vm_get(vm);
 	vma->ops = &vm->vma_ops;
 	vma->obj = obj;
@@ -295,16 +294,31 @@ struct i915_vma_work {
 	struct i915_address_space *vm;
 	struct i915_vm_pt_stash stash;
 	struct i915_vma *vma;
-	struct drm_i915_gem_object *pinned;
 	struct i915_sw_dma_fence_cb cb;
 	enum i915_cache_level cache_level;
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
+	int err;
+
+	if (!vma->pages) {
+		err = vma->ops->set_pages(vma);
+		if (err) {
+			atomic_or(I915_VMA_ERROR, &vma->flags);
+			return err;
+		}
+	}
 
 	vma->ops->bind_vma(vw->vm, &vw->stash,
 			   vma, vw->cache_level, vw->flags);
@@ -315,8 +329,8 @@ static void __vma_release(struct dma_fence_work *work)
 {
 	struct i915_vma_work *vw = container_of(work, typeof(*vw), base);
 
-	if (vw->pinned)
-		__i915_gem_object_unpin_pages(vw->pinned);
+	if (work->dma.error && vw->flags)
+		atomic_or(I915_VMA_ERROR, &vw->vma->flags);
 
 	i915_vm_free_pt_stash(vw->vm, &vw->stash);
 	i915_vm_put(vw->vm);
@@ -389,6 +403,7 @@ int i915_vma_bind(struct i915_vma *vma,
 		  u32 flags,
 		  struct i915_vma_work *work)
 {
+	struct dma_fence *prev;
 	u32 bind_flags;
 	u32 vma_flags;
 
@@ -413,41 +428,39 @@ int i915_vma_bind(struct i915_vma *vma,
 	if (bind_flags == 0)
 		return 0;
 
-	GEM_BUG_ON(!vma->pages);
-
 	trace_i915_vma_bind(vma, bind_flags);
-	if (work && bind_flags & vma->vm->bind_async_flags) {
-		struct dma_fence *prev;
 
-		work->vma = vma;
-		work->cache_level = cache_level;
-		work->flags = bind_flags;
+	work->vma = vma;
+	work->cache_level = cache_level;
+	work->flags = bind_flags;
+	work->base.dma.error = 0; /* enable the queue_work() */
 
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
-
-		work->base.dma.error = 0; /* enable the queue_work() */
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
 
-		if (vma->obj) {
-			__i915_gem_object_pin_pages(vma->obj);
-			work->pinned = vma->obj;
+	if (vma->obj) {
+		if (IS_ERR(vma->obj->mm.pages)) {
+			i915_sw_fence_set_error_once(&work->base.chain,
+						     PTR_ERR(vma->obj->mm.pages));
+			atomic_or(I915_VMA_ERROR, &vma->flags);
+			bind_flags = 0;
 		}
-	} else {
-		vma->ops->bind_vma(vma->vm, NULL, vma, cache_level, bind_flags);
+
+		pin_pages(vma, bind_flags);
 	}
 
 	atomic_or(bind_flags, &vma->flags);
@@ -690,6 +703,9 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 		if (ret)
 			return ret;
 	} else {
+		const unsigned long page_sizes =
+			INTEL_INFO(vma->vm->i915)->page_sizes;
+
 		/*
 		 * We only support huge gtt pages through the 48b PPGTT,
 		 * however we also don't want to force any alignment for
@@ -699,7 +715,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 		 * forseeable future. See also i915_ggtt_offset().
 		 */
 		if (upper_32_bits(end - 1) &&
-		    vma->page_sizes.sg > I915_GTT_PAGE_SIZE) {
+		    page_sizes > I915_GTT_PAGE_SIZE) {
 			/*
 			 * We can't mix 64K and 4K PTEs in the same page-table
 			 * (2M block), and so to avoid the ugliness and
@@ -707,7 +723,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 			 * objects to 2M.
 			 */
 			u64 page_alignment =
-				rounddown_pow_of_two(vma->page_sizes.sg |
+				rounddown_pow_of_two(page_sizes |
 						     I915_GTT_PAGE_SIZE_2M);
 
 			/*
@@ -719,7 +735,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 
 			alignment = max(alignment, page_alignment);
 
-			if (vma->page_sizes.sg & I915_GTT_PAGE_SIZE_64K)
+			if (page_sizes & I915_GTT_PAGE_SIZE_64K)
 				size = round_up(size, I915_GTT_PAGE_SIZE_2M);
 		}
 
@@ -796,74 +812,6 @@ bool i915_vma_pin_inplace(struct i915_vma *vma, unsigned int flags)
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
@@ -885,9 +833,11 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	if (i915_vma_pin_inplace(vma, flags & I915_VMA_BIND_MASK))
 		return 0;
 
-	err = i915_vma_get_pages(vma);
-	if (err)
-		return err;
+	if (vma->obj) {
+		err = i915_gem_object_pin_pages(vma->obj);
+		if (err)
+			return err;
+	}
 
 	if (flags & PIN_GLOBAL)
 		wakeref = intel_runtime_pm_get(&vma->vm->i915->runtime_pm);
@@ -896,26 +846,21 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	if (err)
 		goto err_rpm;
 
-	if (flags & vma->vm->bind_async_flags) {
-		work = i915_vma_work();
-		if (!work) {
-			err = -ENOMEM;
-			goto err_rpm;
-		}
+	work = i915_vma_work();
+	if (!work) {
+		err = -ENOMEM;
+		goto err_rpm;
+	}
 
-		work->vm = i915_vm_get(vma->vm);
+	work->vm = i915_vm_get(vma->vm);
 
-		/* Allocate enough page directories to used PTE */
-		if (vma->vm->allocate_va_range) {
-			i915_vm_alloc_pt_stash(vma->vm,
-					       &work->stash,
-					       vma->size);
+	/* Allocate enough page directories to used PTE */
+	if (vma->vm->allocate_va_range) {
+		i915_vm_alloc_pt_stash(vma->vm, &work->stash, vma->size);
 
-			err = i915_vm_pin_pt_stash(vma->vm,
-						   &work->stash);
-			if (err)
-				goto err_fence;
-		}
+		err = i915_vm_pin_pt_stash(vma->vm, &work->stash);
+		if (err)
+			goto err_fence;
 	}
 
 	/*
@@ -980,16 +925,12 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
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
 
@@ -1008,12 +949,12 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 err_unlock:
 	mutex_unlock(&vma->vm->mutex);
 err_fence:
-	if (work)
-		dma_fence_work_commit_imm(&work->base);
+	dma_fence_work_commit_imm(&work->base);
 err_rpm:
 	if (wakeref)
 		intel_runtime_pm_put(&vma->vm->i915->runtime_pm, wakeref);
-	i915_vma_put_pages(vma);
+	if (vma->obj)
+		i915_gem_object_unpin_pages(vma->obj);
 	return err;
 }
 
@@ -1274,6 +1215,8 @@ int i915_vma_move_to_active(struct i915_vma *vma,
 
 void __i915_vma_evict(struct i915_vma *vma)
 {
+	int count;
+
 	GEM_BUG_ON(i915_vma_is_pinned(vma));
 
 	if (i915_vma_is_map_and_fenceable(vma)) {
@@ -1308,11 +1251,19 @@ void __i915_vma_evict(struct i915_vma *vma)
 		trace_i915_vma_unbind(vma);
 		vma->ops->unbind_vma(vma->vm, vma);
 	}
+	count = hweight32(atomic_read(&vma->flags) & I915_VMA_BIND_MASK);
 	atomic_and(~(I915_VMA_BIND_MASK | I915_VMA_ERROR | I915_VMA_GGTT_WRITE),
 		   &vma->flags);
 
 	i915_vma_detach(vma);
-	vma_unbind_pages(vma);
+
+	if (vma->pages)
+		vma->ops->clear_pages(vma);
+
+	if (vma->obj) {
+		while (count--)
+			__i915_gem_object_unpin_pages(vma->obj);
+	}
 }
 
 int __i915_vma_unbind(struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 9e9082dc8f4b..02c1640bb034 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -251,11 +251,6 @@ struct i915_vma {
 
 	struct i915_active active;
 
-#define I915_VMA_PAGES_BIAS 24
-#define I915_VMA_PAGES_ACTIVE (BIT(24) | 1)
-	atomic_t pages_count; /* number of active binds to the pages */
-	struct mutex pages_mutex; /* protect acquire/release of backing pages */
-
 	/**
 	 * Support different GGTT views into the same object.
 	 * This means there can be multiple VMA mappings per object and per VM.
@@ -279,4 +274,3 @@ struct i915_vma {
 };
 
 #endif
-
diff --git a/drivers/gpu/drm/i915/mm/i915_acquire_ctx.c b/drivers/gpu/drm/i915/mm/i915_acquire_ctx.c
index d1c3b958c15d..02b653328b9d 100644
--- a/drivers/gpu/drm/i915/mm/i915_acquire_ctx.c
+++ b/drivers/gpu/drm/i915/mm/i915_acquire_ctx.c
@@ -89,8 +89,18 @@ int i915_acquire_ctx_lock(struct i915_acquire_ctx *ctx,
 	return err;
 }
 
-int i915_acquire_mm(struct i915_acquire_ctx *acquire)
+int i915_acquire_mm(struct i915_acquire_ctx *ctx)
 {
+	struct i915_acquire *lnk;
+	int err;
+
+	for (lnk = ctx->locked; lnk; lnk = lnk->next) {
+		err = __i915_gem_object_get_pages_locked(lnk->obj);
+		if (err)
+			return err;
+	}
+
+	i915_acquire_ctx_done(ctx);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index af8205a2bd8f..e5e6973eb6ea 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1245,9 +1245,9 @@ static void track_vma_bind(struct i915_vma *vma)
 	__i915_gem_object_pin_pages(obj);
 
 	GEM_BUG_ON(vma->pages);
-	atomic_set(&vma->pages_count, I915_VMA_PAGES_ACTIVE);
-	__i915_gem_object_pin_pages(obj);
 	vma->pages = obj->mm.pages;
+	__i915_gem_object_pin_pages(obj);
+	atomic_or(I915_VMA_GLOBAL_BIND, &vma->flags);
 
 	mutex_lock(&vma->vm->mutex);
 	list_add_tail(&vma->vm_link, &vma->vm->bound_list);
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 6e80d99048e4..8d9fdf591514 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -24,6 +24,15 @@
 #include "selftests/igt_flush_test.h"
 #include "selftests/i915_random.h"
 
+static void close_object(struct drm_i915_gem_object *obj)
+{
+	i915_gem_object_lock(obj);
+	__i915_gem_object_put_pages(obj);
+	i915_gem_object_unlock(obj);
+
+	i915_gem_object_put(obj);
+}
+
 static void close_objects(struct intel_memory_region *mem,
 			  struct list_head *objects)
 {
@@ -33,10 +42,9 @@ static void close_objects(struct intel_memory_region *mem,
 	list_for_each_entry_safe(obj, on, objects, st_link) {
 		if (i915_gem_object_has_pinned_pages(obj))
 			i915_gem_object_unpin_pages(obj);
-		/* No polluting the memory region between tests */
-		__i915_gem_object_put_pages(obj);
 		list_del(&obj->st_link);
-		i915_gem_object_put(obj);
+		/* No polluting the memory region between tests */
+		close_object(obj);
 	}
 
 	cond_resched();
@@ -124,9 +132,8 @@ igt_object_create(struct intel_memory_region *mem,
 static void igt_object_release(struct drm_i915_gem_object *obj)
 {
 	i915_gem_object_unpin_pages(obj);
-	__i915_gem_object_put_pages(obj);
 	list_del(&obj->st_link);
-	i915_gem_object_put(obj);
+	close_object(obj);
 }
 
 static int igt_mock_contiguous(void *arg)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
