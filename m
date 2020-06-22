Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BD120341C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 11:59:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABDD26E200;
	Mon, 22 Jun 2020 09:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17BA96E200
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 09:59:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21574660-1500050 
 for multiple; Mon, 22 Jun 2020 10:59:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 10:59:15 +0100
Message-Id: <20200622095921.15530-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/gem: Replace
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

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    | 18 +------
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    | 36 ++++---------
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  8 +--
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 21 +-------
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  1 -
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 51 ++++++++++---------
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      |  6 +--
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  | 15 +++---
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  2 -
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   | 15 ++++--
 .../gpu/drm/i915/gem/selftests/huge_pages.c   | 32 +++++++-----
 .../i915/gem/selftests/i915_gem_coherency.c   | 14 +++--
 .../drm/i915/gem/selftests/i915_gem_context.c | 10 +++-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  2 +
 drivers/gpu/drm/i915/i915_gem.c               | 16 ++++--
 .../drm/i915/selftests/intel_memory_region.c  | 17 +++++--
 16 files changed, 128 insertions(+), 136 deletions(-)

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
index 7f76fc68f498..8b93941f7f93 100644
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
 
@@ -131,7 +131,7 @@ i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, bool write)
 	 * continue to assume that the obj remained out of the CPU cached
 	 * domain.
 	 */
-	ret = i915_gem_object_pin_pages(obj);
+	ret = __i915_gem_object_get_pages_locked(obj);
 	if (ret)
 		return ret;
 
@@ -532,13 +532,9 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
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
@@ -555,8 +551,6 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	if (write_domain)
 		i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
 
-out_unpin:
-	i915_gem_object_unpin_pages(obj);
 out:
 	i915_gem_object_put(obj);
 	return err;
@@ -572,11 +566,13 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
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
 
@@ -584,11 +580,7 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 				   I915_WAIT_INTERRUPTIBLE,
 				   MAX_SCHEDULE_TIMEOUT);
 	if (ret)
-		goto err_unlock;
-
-	ret = i915_gem_object_pin_pages(obj);
-	if (ret)
-		goto err_unlock;
+		goto err_unpin;
 
 	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ ||
 	    !static_cpu_has(X86_FEATURE_CLFLUSH)) {
@@ -616,8 +608,6 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 
 err_unpin:
 	i915_gem_object_unpin_pages(obj);
-err_unlock:
-	i915_gem_object_unlock(obj);
 	return ret;
 }
 
@@ -626,11 +616,13 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
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
 
@@ -639,11 +631,7 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 				   I915_WAIT_ALL,
 				   MAX_SCHEDULE_TIMEOUT);
 	if (ret)
-		goto err_unlock;
-
-	ret = i915_gem_object_pin_pages(obj);
-	if (ret)
-		goto err_unlock;
+		goto err_unpin;
 
 	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE ||
 	    !static_cpu_has(X86_FEATURE_CLFLUSH)) {
@@ -680,7 +668,5 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 
 err_unpin:
 	i915_gem_object_unpin_pages(obj);
-err_unlock:
-	i915_gem_object_unlock(obj);
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index b6ec5b50d93b..37b3fb0eb943 100644
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
 
@@ -72,10 +70,6 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 	obj->mm.madv = I915_MADV_WILLNEED;
 	INIT_RADIX_TREE(&obj->mm.get_page.radix, GFP_KERNEL | __GFP_NOWARN);
 	mutex_init(&obj->mm.get_page.lock);
-
-	if (IS_ENABLED(CONFIG_LOCKDEP) && i915_gem_object_is_shrinkable(obj))
-		i915_gem_shrinker_taints_mutex(to_i915(obj->base.dev),
-					       &obj->mm.lock);
 }
 
 /**
@@ -209,10 +203,12 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
 		GEM_BUG_ON(obj->userfault_count);
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
index 7bcd2661de4c..03a1b859aeef 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -277,28 +277,12 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 
 int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
 int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
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
+int __i915_gem_object_get_pages_locked(struct drm_i915_gem_object *obj);
 
 static inline int __must_check
 i915_gem_object_pin_pages(struct drm_i915_gem_object *obj)
 {
-	might_lock_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+	might_lock(&obj->base.resv->lock.base);
 
 	if (atomic_inc_not_zero(&obj->mm.pages_pin_count))
 		return 0;
@@ -410,7 +394,6 @@ static inline void
 i915_gem_object_finish_access(struct drm_i915_gem_object *obj)
 {
 	i915_gem_object_unpin_pages(obj);
-	i915_gem_object_unlock(obj);
 }
 
 static inline struct intel_engine_cs *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index b1f82a11aef2..dbb33aac7828 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -186,7 +186,6 @@ struct drm_i915_gem_object {
 		 * Protects the pages and their use. Do not use directly, but
 		 * instead go through the pin/unpin interfaces.
 		 */
-		struct mutex lock;
 		atomic_t pages_pin_count;
 		atomic_t shrink_pin;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index af9e48ee4a33..2ff1036ef91f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -18,7 +18,7 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 	unsigned long supported = INTEL_INFO(i915)->page_sizes;
 	int i;
 
-	lockdep_assert_held(&obj->mm.lock);
+	assert_object_held(obj);
 
 	if (i915_gem_object_is_volatile(obj))
 		obj->mm.madv = I915_MADV_DONTNEED;
@@ -86,6 +86,8 @@ int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	int err;
 
+	assert_object_held(obj);
+
 	if (unlikely(obj->mm.madv != I915_MADV_WILLNEED)) {
 		drm_dbg(&i915->drm,
 			"Attempting to obtain a purgeable object\n");
@@ -105,27 +107,34 @@ int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
  * either as a result of memory pressure (reaping pages under the shrinker)
  * or as the object is itself released.
  */
-int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
+int __i915_gem_object_get_pages_locked(struct drm_i915_gem_object *obj)
 {
 	int err;
 
-	err = mutex_lock_interruptible_nested(&obj->mm.lock, I915_MM_GET_PAGES);
-	if (err)
-		return err;
-
 	if (unlikely(!i915_gem_object_has_pages(obj))) {
 		GEM_BUG_ON(i915_gem_object_has_pinned_pages(obj));
 
 		err = ____i915_gem_object_get_pages(obj);
 		if (err)
-			goto unlock;
+			return err;
 
 		smp_mb__before_atomic();
 	}
 	atomic_inc(&obj->mm.pages_pin_count);
 
-unlock:
-	mutex_unlock(&obj->mm.lock);
+	return 0;
+}
+
+int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
+{
+	int err;
+
+	err = i915_gem_object_lock_interruptible(obj);
+	if (err)
+		return err;
+
+	err = __i915_gem_object_get_pages_locked(obj);
+	i915_gem_object_unlock(obj);
 	return err;
 }
 
@@ -140,7 +149,7 @@ void i915_gem_object_truncate(struct drm_i915_gem_object *obj)
 /* Try to discard unwanted pages */
 void i915_gem_object_writeback(struct drm_i915_gem_object *obj)
 {
-	lockdep_assert_held(&obj->mm.lock);
+	assert_object_held(obj);
 	GEM_BUG_ON(i915_gem_object_has_pages(obj));
 
 	if (obj->ops->writeback)
@@ -194,17 +203,15 @@ __i915_gem_object_unset_pages(struct drm_i915_gem_object *obj)
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
 
@@ -227,11 +234,7 @@ int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
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
@@ -325,7 +328,7 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 	if (!i915_gem_object_type_has(obj, flags))
 		return ERR_PTR(-ENXIO);
 
-	err = mutex_lock_interruptible_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+	err = i915_gem_object_lock_interruptible(obj);
 	if (err)
 		return ERR_PTR(err);
 
@@ -370,7 +373,7 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 	}
 
 out_unlock:
-	mutex_unlock(&obj->mm.lock);
+	i915_gem_object_unlock(obj);
 	return ptr;
 
 err_unpin:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 28147aab47b9..099bcfa8f978 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -165,7 +165,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 	if (err)
 		return err;
 
-	mutex_lock_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+	i915_gem_object_lock(obj);
 
 	if (obj->mm.madv != I915_MADV_WILLNEED) {
 		err = -EFAULT;
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
index 5b65ce738b16..5fe2c1dd82ee 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -45,10 +45,7 @@ static bool unsafe_drop_pages(struct drm_i915_gem_object *obj,
 	if (!(shrink & I915_SHRINK_BOUND))
 		flags = I915_GEM_OBJECT_UNBIND_TEST;
 
-	if (i915_gem_object_unbind(obj, flags) == 0)
-		__i915_gem_object_put_pages(obj);
-
-	return !i915_gem_object_has_pages(obj);
+	return i915_gem_object_unbind(obj, flags) == 0;
 }
 
 static void try_to_writeback(struct drm_i915_gem_object *obj,
@@ -192,14 +189,14 @@ i915_gem_shrink(struct drm_i915_private *i915,
 
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
@@ -415,7 +412,7 @@ void i915_gem_shrinker_taints_mutex(struct drm_i915_private *i915,
 
 	if (!lockdep_is_held_type(&i915->drm.struct_mutex, -1)) {
 		mutex_acquire(&i915->drm.struct_mutex.dep_map,
-			      I915_MM_NORMAL, 0, _RET_IP_);
+			      0, 0, _RET_IP_);
 		unlock = true;
 	}
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index 0158e49bf9bb..a5a272c2e43b 100644
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
index e946032b13e4..4cd79f425eac 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -129,8 +129,15 @@ userptr_mn_invalidate_range_start(struct mmu_notifier *_mn,
 		ret = i915_gem_object_unbind(obj,
 					     I915_GEM_OBJECT_UNBIND_ACTIVE |
 					     I915_GEM_OBJECT_UNBIND_BARRIER);
-		if (ret == 0)
-			ret = __i915_gem_object_put_pages(obj);
+		if (ret == 0) {
+			/* XXX ww_mutex is fs_reclaim tainted */
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
index 8291ede6902c..6ff7c402556e 100644
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
index bb57687aea99..7e373a5b5c3c 100644
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
