Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C78929034A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 12:45:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1896EB91;
	Fri, 16 Oct 2020 10:45:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C72936EACA
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 10:44:50 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 12:43:59 +0200
Message-Id: <20201016104444.1492028-17-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 16/61] drm/i915: Flatten obj->mm.lock
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

With userptr fixed, there is no need for all separate lockdep classes
now, and we can remove all lockdep tricks used. A trylock in the
shrinker is all we need now to flatten the locking hierarchy.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c   |  6 +---
 drivers/gpu/drm/i915/gem/i915_gem_object.h   | 20 ++----------
 drivers/gpu/drm/i915/gem/i915_gem_pages.c    | 34 ++++++++++----------
 drivers/gpu/drm/i915/gem/i915_gem_phys.c     |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 10 +++---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c  |  2 +-
 6 files changed, 27 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 1393988bd5af..028a556ab1a5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -62,7 +62,7 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 			  const struct drm_i915_gem_object_ops *ops,
 			  struct lock_class_key *key, unsigned flags)
 {
-	__mutex_init(&obj->mm.lock, ops->name ?: "obj->mm.lock", key);
+	mutex_init(&obj->mm.lock);
 
 	spin_lock_init(&obj->vma.lock);
 	INIT_LIST_HEAD(&obj->vma.list);
@@ -86,10 +86,6 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 	mutex_init(&obj->mm.get_page.lock);
 	INIT_RADIX_TREE(&obj->mm.get_dma_page.radix, GFP_KERNEL | __GFP_NOWARN);
 	mutex_init(&obj->mm.get_dma_page.lock);
-
-	if (IS_ENABLED(CONFIG_LOCKDEP) && i915_gem_object_is_shrinkable(obj))
-		i915_gem_shrinker_taints_mutex(to_i915(obj->base.dev),
-					       &obj->mm.lock);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index abcce4d285b5..b7d15a3db10e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -316,27 +316,10 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
 int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
 
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
 static inline int __must_check
 i915_gem_object_pin_pages(struct drm_i915_gem_object *obj)
 {
-	might_lock_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+	might_lock(&obj->mm.lock);
 
 	if (atomic_inc_not_zero(&obj->mm.pages_pin_count))
 		return 0;
@@ -380,6 +363,7 @@ i915_gem_object_unpin_pages(struct drm_i915_gem_object *obj)
 }
 
 int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj);
+int __i915_gem_object_put_pages_locked(struct drm_i915_gem_object *obj);
 void i915_gem_object_truncate(struct drm_i915_gem_object *obj);
 void i915_gem_object_writeback(struct drm_i915_gem_object *obj);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index b81f253f5dc9..00ce88c609f9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -111,7 +111,7 @@ int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
 {
 	int err;
 
-	err = mutex_lock_interruptible_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+	err = mutex_lock_interruptible(&obj->mm.lock);
 	if (err)
 		return err;
 
@@ -195,21 +195,13 @@ __i915_gem_object_unset_pages(struct drm_i915_gem_object *obj)
 	return pages;
 }
 
-int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
+int __i915_gem_object_put_pages_locked(struct drm_i915_gem_object *obj)
 {
 	struct sg_table *pages;
-	int err;
 
 	if (i915_gem_object_has_pinned_pages(obj))
 		return -EBUSY;
 
-	/* May be called by shrinker from within get_pages() (on another bo) */
-	mutex_lock(&obj->mm.lock);
-	if (unlikely(atomic_read(&obj->mm.pages_pin_count))) {
-		err = -EBUSY;
-		goto unlock;
-	}
-
 	i915_gem_object_release_mmap_offset(obj);
 
 	/*
@@ -225,14 +217,22 @@ int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
 	 * get_pages backends we should be better able to handle the
 	 * cancellation of the async task in a more uniform manner.
 	 */
-	if (!pages)
-		pages = ERR_PTR(-EINVAL);
-
-	if (!IS_ERR(pages))
+	if (!IS_ERR_OR_NULL(pages))
 		obj->ops->put_pages(obj, pages);
 
-	err = 0;
-unlock:
+	return 0;
+}
+
+int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
+{
+	int err;
+
+	if (i915_gem_object_has_pinned_pages(obj))
+		return -EBUSY;
+
+	/* May be called by shrinker from within get_pages() (on another bo) */
+	mutex_lock(&obj->mm.lock);
+	err = __i915_gem_object_put_pages_locked(obj);
 	mutex_unlock(&obj->mm.lock);
 
 	return err;
@@ -354,7 +354,7 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 	    !i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_IOMEM))
 		return ERR_PTR(-ENXIO);
 
-	err = mutex_lock_interruptible_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+	err = mutex_lock_interruptible(&obj->mm.lock);
 	if (err)
 		return ERR_PTR(err);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 153de6538378..4322e35cfe48 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -186,7 +186,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 	if (err)
 		return err;
 
-	err = mutex_lock_interruptible_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+	err = mutex_lock_interruptible(&obj->mm.lock);
 	if (err)
 		goto err_unlock;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index dc8f052a0ffe..afc6e5b4dcf1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -48,9 +48,9 @@ static bool unsafe_drop_pages(struct drm_i915_gem_object *obj,
 		flags = I915_GEM_OBJECT_UNBIND_TEST;
 
 	if (i915_gem_object_unbind(obj, flags) == 0)
-		__i915_gem_object_put_pages(obj);
+		return true;
 
-	return !i915_gem_object_has_pages(obj);
+	return false;
 }
 
 static void try_to_writeback(struct drm_i915_gem_object *obj,
@@ -199,10 +199,10 @@ i915_gem_shrink(struct drm_i915_private *i915,
 
 			spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 
-			if (unsafe_drop_pages(obj, shrink)) {
+			if (unsafe_drop_pages(obj, shrink) &&
+			    mutex_trylock(&obj->mm.lock)) {
 				/* May arrive from get_pages on another bo */
-				mutex_lock(&obj->mm.lock);
-				if (!i915_gem_object_has_pages(obj)) {
+				if (!__i915_gem_object_put_pages_locked(obj)) {
 					try_to_writeback(obj, shrink);
 					count += obj->base.size >> PAGE_SHIFT;
 				}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 58a426bec2e5..01a9b7306c68 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -240,7 +240,7 @@ static int i915_gem_object_userptr_unbind(struct drm_i915_gem_object *obj, bool
 	if (GEM_WARN_ON(i915_gem_object_has_pinned_pages(obj)))
 		return -EBUSY;
 
-	mutex_lock_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+	mutex_lock(&obj->mm.lock);
 
 	pages = __i915_gem_object_unset_pages(obj);
 	if (!IS_ERR_OR_NULL(pages))
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
