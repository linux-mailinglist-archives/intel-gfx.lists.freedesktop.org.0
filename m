Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D12229033E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 12:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BC796EB28;
	Fri, 16 Oct 2020 10:45:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30316EABC
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 10:44:55 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 12:44:43 +0200
Message-Id: <20201016104444.1492028-61-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 60/61] drm/i915: Finally remove obj->mm.lock.
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

With all callers and selftests fixed to use ww locking, we can now
finally remove this lock.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 -
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  5 +--
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  1 -
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 38 ++++---------------
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      | 34 ++++-------------
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  | 37 +++++++++++++-----
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.h  |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  2 -
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |  3 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |  4 +-
 drivers/gpu/drm/i915/i915_gem.c               |  8 +---
 drivers/gpu/drm/i915/i915_gem_gtt.c           |  2 +-
 13 files changed, 53 insertions(+), 89 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 028a556ab1a5..08d806bbf48e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -62,8 +62,6 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 			  const struct drm_i915_gem_object_ops *ops,
 			  struct lock_class_key *key, unsigned flags)
 {
-	mutex_init(&obj->mm.lock);
-
 	spin_lock_init(&obj->vma.lock);
 	INIT_LIST_HEAD(&obj->vma.list);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index e7236224a29c..f6ccd05010df 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -123,7 +123,7 @@ static inline void assert_object_held_shared(struct drm_i915_gem_object *obj)
 	 */
 	if (IS_ENABLED(CONFIG_LOCKDEP) &&
 	    kref_read(&obj->base.refcount) > 0)
-		lockdep_assert_held(&obj->mm.lock);
+		assert_object_held(obj);
 }
 
 static inline int __i915_gem_object_lock(struct drm_i915_gem_object *obj,
@@ -328,7 +328,7 @@ int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
 static inline int __must_check
 i915_gem_object_pin_pages(struct drm_i915_gem_object *obj)
 {
-	might_lock(&obj->mm.lock);
+	assert_object_held(obj);
 
 	if (atomic_inc_not_zero(&obj->mm.pages_pin_count))
 		return 0;
@@ -374,7 +374,6 @@ i915_gem_object_unpin_pages(struct drm_i915_gem_object *obj)
 }
 
 int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj);
-int __i915_gem_object_put_pages_locked(struct drm_i915_gem_object *obj);
 void i915_gem_object_truncate(struct drm_i915_gem_object *obj);
 void i915_gem_object_writeback(struct drm_i915_gem_object *obj);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 0aa391f5d73c..6ba8f5abef49 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -209,7 +209,6 @@ struct drm_i915_gem_object {
 		 * Protects the pages and their use. Do not use directly, but
 		 * instead go through the pin/unpin interfaces.
 		 */
-		struct mutex lock;
 		atomic_t pages_pin_count;
 		atomic_t shrink_pin;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 81b1b560ad18..55ed1b7b06ce 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -67,7 +67,7 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 		struct list_head *list;
 		unsigned long flags;
 
-		lockdep_assert_held(&obj->mm.lock);
+		assert_object_held(obj);
 		spin_lock_irqsave(&i915->mm.obj_lock, flags);
 
 		i915->mm.shrink_count++;
@@ -114,9 +114,7 @@ int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
 {
 	int err;
 
-	err = mutex_lock_interruptible(&obj->mm.lock);
-	if (err)
-		return err;
+	assert_object_held(obj);
 
 	assert_object_held_shared(obj);
 
@@ -125,15 +123,13 @@ int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
 
 		err = ____i915_gem_object_get_pages(obj);
 		if (err)
-			goto unlock;
+			return err;
 
 		smp_mb__before_atomic();
 	}
 	atomic_inc(&obj->mm.pages_pin_count);
 
-unlock:
-	mutex_unlock(&obj->mm.lock);
-	return err;
+	return 0;
 }
 
 int i915_gem_object_pin_pages_unlocked(struct drm_i915_gem_object *obj)
@@ -222,7 +218,7 @@ __i915_gem_object_unset_pages(struct drm_i915_gem_object *obj)
 	return pages;
 }
 
-int __i915_gem_object_put_pages_locked(struct drm_i915_gem_object *obj)
+int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
 {
 	struct sg_table *pages;
 
@@ -253,21 +249,6 @@ int __i915_gem_object_put_pages_locked(struct drm_i915_gem_object *obj)
 	return 0;
 }
 
-int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
-{
-	int err;
-
-	if (i915_gem_object_has_pinned_pages(obj))
-		return -EBUSY;
-
-	/* May be called by shrinker from within get_pages() (on another bo) */
-	mutex_lock(&obj->mm.lock);
-	err = __i915_gem_object_put_pages_locked(obj);
-	mutex_unlock(&obj->mm.lock);
-
-	return err;
-}
-
 static inline pte_t iomap_pte(resource_size_t base,
 			      dma_addr_t offset,
 			      pgprot_t prot)
@@ -384,9 +365,7 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 	    !i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_IOMEM))
 		return ERR_PTR(-ENXIO);
 
-	err = mutex_lock_interruptible(&obj->mm.lock);
-	if (err)
-		return ERR_PTR(err);
+	assert_object_held(obj);
 
 	pinned = !(type & I915_MAP_OVERRIDE);
 	type &= ~I915_MAP_OVERRIDE;
@@ -428,15 +407,12 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 		obj->mm.mapping = page_pack_bits(ptr, type);
 	}
 
-out_unlock:
-	mutex_unlock(&obj->mm.lock);
 	return ptr;
 
 err_unpin:
 	atomic_dec(&obj->mm.pages_pin_count);
 err_unlock:
-	ptr = ERR_PTR(err);
-	goto out_unlock;
+	return ERR_PTR(err);
 }
 
 void *i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 15d8f8d52cbe..fee2e1ffba07 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -184,40 +184,22 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 	if (err)
 		return err;
 
-	err = mutex_lock_interruptible(&obj->mm.lock);
-	if (err)
-		return err;
+	if (obj->mm.madv != I915_MADV_WILLNEED)
+		return -EFAULT;
 
-	if (unlikely(!i915_gem_object_has_struct_page(obj)))
-		goto out;
+	if (obj->mm.quirked)
+		return -EFAULT;
 
-	if (obj->mm.madv != I915_MADV_WILLNEED) {
-		err = -EFAULT;
-		goto out;
-	}
-
-	if (obj->mm.quirked) {
-		err = -EFAULT;
-		goto out;
-	}
-
-	if (obj->mm.mapping || i915_gem_object_has_pinned_pages(obj)) {
-		err = -EBUSY;
-		goto out;
-	}
+	if (obj->mm.mapping || i915_gem_object_has_pinned_pages(obj))
+		return -EBUSY;
 
 	if (unlikely(obj->mm.madv != I915_MADV_WILLNEED)) {
 		drm_dbg(obj->base.dev,
 			"Attempting to obtain a purgeable object\n");
-		err = -EFAULT;
-		goto out;
+		return -EFAULT;
 	}
 
-	err = i915_gem_object_shmem_to_phys(obj);
-
-out:
-	mutex_unlock(&obj->mm.lock);
-	return err;
+	return i915_gem_object_shmem_to_phys(obj);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index e0778b3cc0c3..5ae09be61c0b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -99,7 +99,7 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 				goto err_sg;
 			}
 
-			i915_gem_shrink(i915, 2 * page_count, NULL, *s++);
+			i915_gem_shrink(NULL, i915, 2 * page_count, NULL, *s++);
 
 			/*
 			 * We've tried hard to allocate the memory by reaping
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index afc6e5b4dcf1..e42192834c88 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -93,7 +93,8 @@ static void try_to_writeback(struct drm_i915_gem_object *obj,
  * The number of pages of backing storage actually released.
  */
 unsigned long
-i915_gem_shrink(struct drm_i915_private *i915,
+i915_gem_shrink(struct i915_gem_ww_ctx *ww,
+		struct drm_i915_private *i915,
 		unsigned long target,
 		unsigned long *nr_scanned,
 		unsigned int shrink)
@@ -112,6 +113,7 @@ i915_gem_shrink(struct drm_i915_private *i915,
 	intel_wakeref_t wakeref = 0;
 	unsigned long count = 0;
 	unsigned long scanned = 0;
+	int err;
 
 	trace_i915_gem_shrink(i915, target, shrink);
 
@@ -199,23 +201,38 @@ i915_gem_shrink(struct drm_i915_private *i915,
 
 			spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 
-			if (unsafe_drop_pages(obj, shrink) &&
-			    mutex_trylock(&obj->mm.lock)) {
+			err = 0;
+			if (unsafe_drop_pages(obj, shrink)) {
 				/* May arrive from get_pages on another bo */
-				if (!__i915_gem_object_put_pages_locked(obj)) {
+				if (!ww) {
+					if (!i915_gem_object_trylock(obj))
+						goto skip;
+				} else {
+					err = i915_gem_object_lock(obj, ww);
+					if (err)
+						goto skip;
+				}
+
+				if (!__i915_gem_object_put_pages(obj)) {
 					try_to_writeback(obj, shrink);
 					count += obj->base.size >> PAGE_SHIFT;
 				}
-				mutex_unlock(&obj->mm.lock);
+				if (!ww)
+					i915_gem_object_unlock(obj);
 			}
 
 			scanned += obj->base.size >> PAGE_SHIFT;
+skip:
 			i915_gem_object_put(obj);
 
 			spin_lock_irqsave(&i915->mm.obj_lock, flags);
+			if (err)
+				break;
 		}
 		list_splice_tail(&still_in_list, phase->list);
 		spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
+		if (err)
+			return err;
 	}
 
 	if (shrink & I915_SHRINK_BOUND)
@@ -246,7 +263,7 @@ unsigned long i915_gem_shrink_all(struct drm_i915_private *i915)
 	unsigned long freed = 0;
 
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
-		freed = i915_gem_shrink(i915, -1UL, NULL,
+		freed = i915_gem_shrink(NULL, i915, -1UL, NULL,
 					I915_SHRINK_BOUND |
 					I915_SHRINK_UNBOUND);
 	}
@@ -292,7 +309,7 @@ i915_gem_shrinker_scan(struct shrinker *shrinker, struct shrink_control *sc)
 
 	sc->nr_scanned = 0;
 
-	freed = i915_gem_shrink(i915,
+	freed = i915_gem_shrink(NULL, i915,
 				sc->nr_to_scan,
 				&sc->nr_scanned,
 				I915_SHRINK_BOUND |
@@ -301,7 +318,7 @@ i915_gem_shrinker_scan(struct shrinker *shrinker, struct shrink_control *sc)
 		intel_wakeref_t wakeref;
 
 		with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
-			freed += i915_gem_shrink(i915,
+			freed += i915_gem_shrink(NULL, i915,
 						 sc->nr_to_scan - sc->nr_scanned,
 						 &sc->nr_scanned,
 						 I915_SHRINK_ACTIVE |
@@ -326,7 +343,7 @@ i915_gem_shrinker_oom(struct notifier_block *nb, unsigned long event, void *ptr)
 
 	freed_pages = 0;
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		freed_pages += i915_gem_shrink(i915, -1UL, NULL,
+		freed_pages += i915_gem_shrink(NULL, i915, -1UL, NULL,
 					       I915_SHRINK_BOUND |
 					       I915_SHRINK_UNBOUND |
 					       I915_SHRINK_WRITEBACK);
@@ -364,7 +381,7 @@ i915_gem_shrinker_vmap(struct notifier_block *nb, unsigned long event, void *ptr
 	intel_wakeref_t wakeref;
 
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		freed_pages += i915_gem_shrink(i915, -1UL, NULL,
+		freed_pages += i915_gem_shrink(NULL, i915, -1UL, NULL,
 					       I915_SHRINK_BOUND |
 					       I915_SHRINK_UNBOUND |
 					       I915_SHRINK_VMAPS);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.h b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.h
index b397d7785789..8512470f6fd6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.h
@@ -9,10 +9,12 @@
 #include <linux/bits.h>
 
 struct drm_i915_private;
+struct i915_gem_ww_ctx;
 struct mutex;
 
 /* i915_gem_shrinker.c */
-unsigned long i915_gem_shrink(struct drm_i915_private *i915,
+unsigned long i915_gem_shrink(struct i915_gem_ww_ctx *ww,
+			      struct drm_i915_private *i915,
 			      unsigned long target,
 			      unsigned long *nr_scanned,
 			      unsigned flags);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index ffcaee74a249..4523a14db86e 100644
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
index 01a9b7306c68..8f05b6d90d54 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -240,7 +240,7 @@ static int i915_gem_object_userptr_unbind(struct drm_i915_gem_object *obj, bool
 	if (GEM_WARN_ON(i915_gem_object_has_pinned_pages(obj)))
 		return -EBUSY;
 
-	mutex_lock(&obj->mm.lock);
+	assert_object_held(obj);
 
 	pages = __i915_gem_object_unset_pages(obj);
 	if (!IS_ERR_OR_NULL(pages))
@@ -248,7 +248,6 @@ static int i915_gem_object_userptr_unbind(struct drm_i915_gem_object *obj, bool
 
 	if (get_pages)
 		err = ____i915_gem_object_get_pages(obj);
-	mutex_unlock(&obj->mm.lock);
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index ea469168cd44..c5c7f77ee8dd 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1508,10 +1508,10 @@ i915_drop_caches_set(void *data, u64 val)
 
 	fs_reclaim_acquire(GFP_KERNEL);
 	if (val & DROP_BOUND)
-		i915_gem_shrink(i915, LONG_MAX, NULL, I915_SHRINK_BOUND);
+		i915_gem_shrink(NULL, i915, LONG_MAX, NULL, I915_SHRINK_BOUND);
 
 	if (val & DROP_UNBOUND)
-		i915_gem_shrink(i915, LONG_MAX, NULL, I915_SHRINK_UNBOUND);
+		i915_gem_shrink(NULL, i915, LONG_MAX, NULL, I915_SHRINK_UNBOUND);
 
 	if (val & DROP_SHRINK_ALL)
 		i915_gem_shrink_all(i915);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index c58ea2490bf4..5a497576614c 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1103,10 +1103,6 @@ i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
 	if (err)
 		goto out;
 
-	err = mutex_lock_interruptible(&obj->mm.lock);
-	if (err)
-		goto out_ww;
-
 	if (i915_gem_object_has_pages(obj) &&
 	    i915_gem_object_is_tiled(obj) &&
 	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
@@ -1149,9 +1145,7 @@ i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
 		i915_gem_object_truncate(obj);
 
 	args->retained = obj->mm.madv != __I915_MADV_PURGED;
-	mutex_unlock(&obj->mm.lock);
 
-out_ww:
 	i915_gem_object_unlock(obj);
 out:
 	i915_gem_object_put(obj);
@@ -1332,7 +1326,7 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
-	i915_gem_shrink(i915, -1UL, NULL, ~0);
+	i915_gem_shrink(NULL, i915, -1UL, NULL, ~0);
 	i915_gem_drain_freed_objects(i915);
 
 	list_for_each_entry(obj, &i915->mm.shrink_list, mm.link) {
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
index c5ee1567f3d1..729074ee33d4 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
@@ -44,7 +44,7 @@ int i915_gem_gtt_prepare_pages(struct drm_i915_gem_object *obj,
 		 * the DMA remapper, i915_gem_shrink will return 0.
 		 */
 		GEM_BUG_ON(obj->mm.pages == pages);
-	} while (i915_gem_shrink(to_i915(obj->base.dev),
+	} while (i915_gem_shrink(NULL, to_i915(obj->base.dev),
 				 obj->base.size >> PAGE_SHIFT, NULL,
 				 I915_SHRINK_BOUND |
 				 I915_SHRINK_UNBOUND));
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
