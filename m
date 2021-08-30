Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 153203FB5AC
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D76489D39;
	Mon, 30 Aug 2021 12:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D42B489D42
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:09:54 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Mon, 30 Aug 2021 14:10:01 +0200
Message-Id: <20210830121006.2978297-15-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/19] drm/i915: Add i915_vma_unbind_unlocked,
 and take obj lock for i915_vma_unbind
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We want to remove more members of i915_vma, which requires the locking to be
held more often.

Start requiring gem object lock for i915_vma_unbind, as it's one of the
callers that may unpin pages.

Some special care is needed when evicting, because the last reference to the
object may be held by the VMA, so after __i915_vma_unbind, vma may be garbage,
and we need to cache vma->obj before unlocking.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  | 14 +++-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  4 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |  2 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  6 ++
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 46 ++++++++++--
 drivers/gpu/drm/i915/i915_drv.h               |  7 +-
 drivers/gpu/drm/i915/i915_gem.c               | 29 +++++++-
 drivers/gpu/drm/i915/i915_gem_evict.c         | 74 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_vma.c               | 27 ++++++-
 drivers/gpu/drm/i915/i915_vma.h               |  1 +
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 22 +++---
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  2 +-
 13 files changed, 195 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5560d2f4c352..b46ea14ac10f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -940,7 +940,7 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 		goto err;
 
 	if (i915_vma_misplaced(vma, 0, alignment, 0)) {
-		ret = i915_vma_unbind(vma);
+		ret = i915_vma_unbind_unlocked(vma);
 		if (ret) {
 			vma = ERR_PTR(ret);
 			goto err;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 7f7849b6296d..71e855fcbd8c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -404,12 +404,22 @@ i915_gem_shrinker_vmap(struct notifier_block *nb, unsigned long event, void *ptr
 	list_for_each_entry_safe(vma, next,
 				 &i915->ggtt.vm.bound_list, vm_link) {
 		unsigned long count = vma->node.size >> PAGE_SHIFT;
+		struct drm_i915_gem_object *obj;
 
 		if (!vma->iomap || i915_vma_is_active(vma))
 			continue;
 
-		if (__i915_vma_unbind(vma) == 0)
-			freed_pages += count;
+		obj = vma->obj;
+		if (!kref_get_unless_zero(&obj->base.refcount))
+			continue;
+
+		if (i915_gem_object_trylock(obj)) {
+			if (__i915_vma_unbind(vma) == 0)
+				freed_pages += count;
+
+			i915_gem_object_unlock(obj);
+		}
+		i915_gem_object_put(obj);
 	}
 	mutex_unlock(&i915->ggtt.vm.mutex);
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index a094f3ce1a90..a43f55c52252 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -626,7 +626,7 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 		 * pages.
 		 */
 		for (offset = 4096; offset < page_size; offset += 4096) {
-			err = i915_vma_unbind(vma);
+			err = i915_vma_unbind_unlocked(vma);
 			if (err)
 				goto out_unpin;
 
@@ -1075,7 +1075,7 @@ static int __igt_write_huge(struct intel_context *ce,
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	err = i915_vma_unbind(vma);
+	err = i915_vma_unbind_unlocked(vma);
 	if (err)
 		return err;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index ecbcbb86ae1e..d132933c5054 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -311,7 +311,7 @@ static int pin_buffer(struct i915_vma *vma, u64 addr)
 	int err;
 
 	if (drm_mm_node_allocated(&vma->node) && vma->node.start != addr) {
-		err = i915_vma_unbind(vma);
+		err = i915_vma_unbind_unlocked(vma);
 		if (err)
 			return err;
 	}
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index b20f5621f62b..4c51c30b12e6 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -165,7 +165,9 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 	kunmap(p);
 
 out:
+	i915_gem_object_lock(obj, NULL);
 	__i915_vma_put(vma);
+	i915_gem_object_unlock(obj);
 	return err;
 }
 
@@ -259,7 +261,9 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 		if (err)
 			return err;
 
+		i915_gem_object_lock(obj, NULL);
 		__i915_vma_put(vma);
+		i915_gem_object_unlock(obj);
 
 		if (igt_timeout(end_time,
 				"%s: timed out after tiling=%d stride=%d\n",
@@ -1333,7 +1337,9 @@ static int __igt_mmap_revoke(struct drm_i915_private *i915,
 	 * for other objects. Ergo we have to revoke the previous mmap PTE
 	 * access as it no longer points to the same object.
 	 */
+	i915_gem_object_lock(obj, NULL);
 	err = i915_gem_object_unbind(obj, I915_GEM_OBJECT_UNBIND_ACTIVE);
+	i915_gem_object_unlock(obj);
 	if (err) {
 		pr_err("Failed to unbind object!\n");
 		goto out_unmap;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 8c46a44e5a40..7bf15293a471 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -118,22 +118,44 @@ void i915_ggtt_suspend(struct i915_ggtt *ggtt)
 	struct i915_vma *vma, *vn;
 	int open;
 
+retry:
 	mutex_lock(&ggtt->vm.mutex);
 
 	/* Skip rewriting PTE on VMA unbind. */
 	open = atomic_xchg(&ggtt->vm.open, 0);
 
 	list_for_each_entry_safe(vma, vn, &ggtt->vm.bound_list, vm_link) {
+		struct drm_i915_gem_object *obj = vma->obj;
+
 		GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
-		i915_vma_wait_for_bind(vma);
 
-		if (i915_vma_is_pinned(vma))
+		if (i915_vma_is_pinned(vma) || !i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
 			continue;
 
-		if (!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND)) {
-			__i915_vma_evict(vma);
-			drm_mm_remove_node(&vma->node);
+		i915_gem_object_get(obj);
+
+		/* unlikely to race when GPU is idle, so no worry about slowpath.. */
+		if (!i915_gem_object_trylock(obj)) {
+			atomic_set(&ggtt->vm.open, open);
+			mutex_unlock(&ggtt->vm.mutex);
+
+			i915_gem_object_lock(obj, NULL);
+			open = i915_vma_unbind(vma);
+			i915_gem_object_unlock(obj);
+
+			GEM_WARN_ON(open);
+
+			i915_gem_object_put(obj);
+			goto retry;
 		}
+
+		i915_vma_wait_for_bind(vma);
+
+		__i915_vma_evict(vma);
+		drm_mm_remove_node(&vma->node);
+
+		i915_gem_object_unlock(obj);
+		i915_gem_object_put(obj);
 	}
 
 	ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);
@@ -729,9 +751,21 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
 
 	mutex_lock(&ggtt->vm.mutex);
 
-	list_for_each_entry_safe(vma, vn, &ggtt->vm.bound_list, vm_link)
+	list_for_each_entry_safe(vma, vn, &ggtt->vm.bound_list, vm_link) {
+		struct drm_i915_gem_object *obj = vma->obj;
+		bool trylock;
+
+		i915_gem_object_get(obj);
+		trylock = i915_gem_object_trylock(obj);
+
+		WARN_ON(!trylock);
 		WARN_ON(__i915_vma_unbind(vma));
 
+		if (trylock)
+			i915_gem_object_unlock(obj);
+		i915_gem_object_put(obj);
+	}
+
 	if (drm_mm_node_allocated(&ggtt->error_capture))
 		drm_mm_remove_node(&ggtt->error_capture);
 	mutex_destroy(&ggtt->error_mutex);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ac4cea32601f..39ffa765eb61 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1818,13 +1818,10 @@ i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
 			    const struct i915_ggtt_view *view,
 			    u64 size, u64 alignment, u64 flags);
 
-static inline struct i915_vma * __must_check
+struct i915_vma * __must_check
 i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 			 const struct i915_ggtt_view *view,
-			 u64 size, u64 alignment, u64 flags)
-{
-	return i915_gem_object_ggtt_pin_ww(obj, NULL, view, size, alignment, flags);
-}
+			 u64 size, u64 alignment, u64 flags);
 
 int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 			   unsigned long flags);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 590efc8b0265..3727e77f651f 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -118,6 +118,8 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 	struct i915_vma *vma;
 	int ret;
 
+	assert_object_held(obj);
+
 	if (list_empty(&obj->vma.list))
 		return 0;
 
@@ -936,10 +938,7 @@ i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
 			return ERR_PTR(ret);
 	}
 
-	if (ww)
-		ret = i915_vma_pin_ww(vma, ww, size, alignment, flags | PIN_GLOBAL);
-	else
-		ret = i915_vma_pin(vma, size, alignment, flags | PIN_GLOBAL);
+	ret = i915_vma_pin_ww(vma, ww, size, alignment, flags | PIN_GLOBAL);
 
 	if (ret)
 		return ERR_PTR(ret);
@@ -959,6 +958,28 @@ i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
 	return vma;
 }
 
+struct i915_vma *
+i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
+			 const struct i915_ggtt_view *view,
+			 u64 size, u64 alignment, u64 flags)
+{
+	struct i915_vma *vma = ERR_PTR(-ENODEV);
+	struct i915_gem_ww_ctx ww;
+	int err;
+
+	for_i915_gem_ww(&ww, err, true) {
+		err = i915_gem_object_lock(obj, &ww);
+		if (!err) {
+			vma = i915_gem_object_ggtt_pin_ww(obj, &ww, view, size,
+							  alignment, flags);
+			if (IS_ERR(vma))
+				err = PTR_ERR(vma);
+		}
+	}
+
+	return err ? ERR_PTR(err) : vma;
+}
+
 int
 i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
 		       struct drm_file *file_priv)
diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
index 2b73ddb11c66..872c631e59b9 100644
--- a/drivers/gpu/drm/i915/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/i915_gem_evict.c
@@ -58,6 +58,14 @@ mark_free(struct drm_mm_scan *scan,
 	if (i915_vma_is_pinned(vma))
 		return false;
 
+	if (!kref_get_unless_zero(&vma->obj->base.refcount))
+		return false;
+
+	if (!i915_gem_object_trylock(vma->obj)) {
+		i915_vma_put(vma);
+		return false;
+	}
+
 	list_add(&vma->evict_link, unwind);
 	return drm_mm_scan_add_block(scan, &vma->node);
 }
@@ -178,6 +186,8 @@ i915_gem_evict_something(struct i915_address_space *vm,
 	list_for_each_entry_safe(vma, next, &eviction_list, evict_link) {
 		ret = drm_mm_scan_remove_block(&scan, &vma->node);
 		BUG_ON(ret);
+		i915_gem_object_unlock(vma->obj);
+		i915_gem_object_put(vma->obj);
 	}
 
 	/*
@@ -222,10 +232,13 @@ i915_gem_evict_something(struct i915_address_space *vm,
 	 * of any of our objects, thus corrupting the list).
 	 */
 	list_for_each_entry_safe(vma, next, &eviction_list, evict_link) {
-		if (drm_mm_scan_remove_block(&scan, &vma->node))
+		if (drm_mm_scan_remove_block(&scan, &vma->node)) {
 			__i915_vma_pin(vma);
-		else
+		} else {
 			list_del(&vma->evict_link);
+			i915_gem_object_unlock(vma->obj);
+			i915_gem_object_put(vma->obj);
+		}
 	}
 
 	/* Unbinding will emit any required flushes */
@@ -234,16 +247,28 @@ i915_gem_evict_something(struct i915_address_space *vm,
 		__i915_vma_unpin(vma);
 		if (ret == 0)
 			ret = __i915_vma_unbind(vma);
+
+		i915_gem_object_unlock(vma->obj);
+		i915_gem_object_put(vma->obj);
 	}
 
 	while (ret == 0 && (node = drm_mm_scan_color_evict(&scan))) {
 		vma = container_of(node, struct i915_vma, node);
 
+
 		/* If we find any non-objects (!vma), we cannot evict them */
-		if (vma->node.color != I915_COLOR_UNEVICTABLE)
-			ret = __i915_vma_unbind(vma);
-		else
-			ret = -ENOSPC; /* XXX search failed, try again? */
+		ret = -ENOSPC;
+
+		if (vma->node.color != I915_COLOR_UNEVICTABLE &&
+		    !kref_get_unless_zero(&vma->obj->base.refcount)) {
+			struct drm_i915_gem_object *obj = vma->obj;
+
+			if (i915_gem_object_trylock(obj)) {
+				ret = __i915_vma_unbind(vma);
+				i915_gem_object_unlock(obj);
+			}
+			i915_gem_object_put(obj);
+		}
 	}
 
 	return ret;
@@ -333,6 +358,17 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
 			break;
 		}
 
+		if (!kref_get_unless_zero(&vma->obj->base.refcount)) {
+			ret = -ENOSPC;
+			break;
+		}
+
+		if (!i915_gem_object_trylock(vma->obj)) {
+			ret = -ENOSPC;
+			i915_gem_object_put(vma->obj);
+			break;
+		}
+
 		/*
 		 * Never show fear in the face of dragons!
 		 *
@@ -347,9 +383,14 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
 	}
 
 	list_for_each_entry_safe(vma, next, &eviction_list, evict_link) {
+		struct drm_i915_gem_object *obj = vma->obj;
+
 		__i915_vma_unpin(vma);
 		if (ret == 0)
 			ret = __i915_vma_unbind(vma);
+
+		i915_gem_object_unlock(obj);
+		i915_gem_object_put(obj);
 	}
 
 	return ret;
@@ -388,6 +429,7 @@ int i915_gem_evict_vm(struct i915_address_space *vm)
 	do {
 		struct i915_vma *vma, *vn;
 		LIST_HEAD(eviction_list);
+		bool evicted = false;
 
 		list_for_each_entry(vma, &vm->bound_list, vm_link) {
 			if (i915_vma_is_pinned(vma))
@@ -401,12 +443,32 @@ int i915_gem_evict_vm(struct i915_address_space *vm)
 
 		ret = 0;
 		list_for_each_entry_safe(vma, vn, &eviction_list, evict_link) {
+			struct drm_i915_gem_object *obj = vma->obj;
+
 			__i915_vma_unpin(vma);
+
+			if (!kref_get_unless_zero(&vma->obj->base.refcount))
+				continue;
+
+			if (!i915_gem_object_trylock(vma->obj)) {
+				i915_gem_object_put(vma->obj);
+				continue;
+			}
+
 			if (ret == 0)
 				ret = __i915_vma_unbind(vma);
 			if (ret != -EINTR) /* "Get me out of here!" */
 				ret = 0;
+
+			i915_gem_object_unlock(obj);
+			i915_gem_object_put(obj);
+
+			evicted = true;
 		}
+
+		/* Nothing evicted because objects were dead or locked? */
+		if (!evicted)
+			break;
 	} while (ret == 0);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 77319619dba0..da54e6882650 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1479,8 +1479,16 @@ void i915_vma_parked(struct intel_gt *gt)
 		struct drm_i915_gem_object *obj = vma->obj;
 		struct i915_address_space *vm = vma->vm;
 
-		INIT_LIST_HEAD(&vma->closed_link);
-		__i915_vma_put(vma);
+		if (i915_gem_object_trylock(obj)) {
+			INIT_LIST_HEAD(&vma->closed_link);
+			__i915_vma_put(vma);
+			i915_gem_object_unlock(obj);
+		} else {
+			/* back you go.. */
+			spin_lock_irq(&gt->closed_lock);
+			list_move(&vma->closed_link, &gt->closed_vma);
+			spin_unlock_irq(&gt->closed_lock);
+		}
 
 		i915_gem_object_put(obj);
 		i915_vm_close(vm);
@@ -1591,6 +1599,7 @@ int i915_vma_move_to_active(struct i915_vma *vma,
 void __i915_vma_evict(struct i915_vma *vma)
 {
 	GEM_BUG_ON(i915_vma_is_pinned(vma));
+	assert_object_held_shared(vma->obj);
 
 	if (i915_vma_is_map_and_fenceable(vma)) {
 		/* Force a pagefault for domain tracking on next user access */
@@ -1636,6 +1645,7 @@ int __i915_vma_unbind(struct i915_vma *vma)
 	int ret;
 
 	lockdep_assert_held(&vma->vm->mutex);
+	assert_object_held_shared(vma->obj);
 
 	if (!drm_mm_node_allocated(&vma->node))
 		return 0;
@@ -1667,6 +1677,8 @@ int i915_vma_unbind(struct i915_vma *vma)
 	intel_wakeref_t wakeref = 0;
 	int err;
 
+	assert_object_held_shared(vma->obj);
+
 	/* Optimistic wait before taking the mutex */
 	err = i915_vma_sync(vma);
 	if (err)
@@ -1697,6 +1709,17 @@ int i915_vma_unbind(struct i915_vma *vma)
 	return err;
 }
 
+int i915_vma_unbind_unlocked(struct i915_vma *vma)
+{
+	int err;
+
+	i915_gem_object_lock(vma->obj, NULL);
+	err = i915_vma_unbind(vma);
+	i915_gem_object_unlock(vma->obj);
+
+	return err;
+}
+
 struct i915_vma *i915_vma_make_unshrinkable(struct i915_vma *vma)
 {
 	i915_gem_object_make_unshrinkable(vma->obj);
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index e4dc5187c8ad..74357ea71a9f 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -207,6 +207,7 @@ void i915_vma_revoke_mmap(struct i915_vma *vma);
 void __i915_vma_evict(struct i915_vma *vma);
 int __i915_vma_unbind(struct i915_vma *vma);
 int __must_check i915_vma_unbind(struct i915_vma *vma);
+int __must_check i915_vma_unbind_unlocked(struct i915_vma *vma);
 void i915_vma_unlink_ctx(struct i915_vma *vma);
 void i915_vma_close(struct i915_vma *vma);
 void i915_vma_reopen(struct i915_vma *vma);
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index a3e3d97728e7..4b936a2e724d 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -385,7 +385,7 @@ static void close_object_list(struct list_head *objects,
 
 		vma = i915_vma_instance(obj, vm, NULL);
 		if (!IS_ERR(vma))
-			ignored = i915_vma_unbind(vma);
+			ignored = i915_vma_unbind_unlocked(vma);
 
 		list_del(&obj->st_link);
 		i915_gem_object_put(obj);
@@ -496,7 +496,7 @@ static int fill_hole(struct i915_address_space *vm,
 						goto err;
 					}
 
-					err = i915_vma_unbind(vma);
+					err = i915_vma_unbind_unlocked(vma);
 					if (err) {
 						pr_err("%s(%s) (forward) unbind of vma.node=%llx + %llx failed with err=%d\n",
 						       __func__, p->name, vma->node.start, vma->node.size,
@@ -569,7 +569,7 @@ static int fill_hole(struct i915_address_space *vm,
 						goto err;
 					}
 
-					err = i915_vma_unbind(vma);
+					err = i915_vma_unbind_unlocked(vma);
 					if (err) {
 						pr_err("%s(%s) (backward) unbind of vma.node=%llx + %llx failed with err=%d\n",
 						       __func__, p->name, vma->node.start, vma->node.size,
@@ -655,7 +655,7 @@ static int walk_hole(struct i915_address_space *vm,
 				goto err_put;
 			}
 
-			err = i915_vma_unbind(vma);
+			err = i915_vma_unbind_unlocked(vma);
 			if (err) {
 				pr_err("%s unbind failed at %llx + %llx  with err=%d\n",
 				       __func__, addr, vma->size, err);
@@ -732,13 +732,13 @@ static int pot_hole(struct i915_address_space *vm,
 				pr_err("%s incorrect at %llx + %llx\n",
 				       __func__, addr, vma->size);
 				i915_vma_unpin(vma);
-				err = i915_vma_unbind(vma);
+				err = i915_vma_unbind_unlocked(vma);
 				err = -EINVAL;
 				goto err_obj;
 			}
 
 			i915_vma_unpin(vma);
-			err = i915_vma_unbind(vma);
+			err = i915_vma_unbind_unlocked(vma);
 			GEM_BUG_ON(err);
 		}
 
@@ -832,13 +832,13 @@ static int drunk_hole(struct i915_address_space *vm,
 				pr_err("%s incorrect at %llx + %llx\n",
 				       __func__, addr, BIT_ULL(size));
 				i915_vma_unpin(vma);
-				err = i915_vma_unbind(vma);
+				err = i915_vma_unbind_unlocked(vma);
 				err = -EINVAL;
 				goto err_obj;
 			}
 
 			i915_vma_unpin(vma);
-			err = i915_vma_unbind(vma);
+			err = i915_vma_unbind_unlocked(vma);
 			GEM_BUG_ON(err);
 
 			if (igt_timeout(end_time,
@@ -906,7 +906,7 @@ static int __shrink_hole(struct i915_address_space *vm,
 			pr_err("%s incorrect at %llx + %llx\n",
 			       __func__, addr, size);
 			i915_vma_unpin(vma);
-			err = i915_vma_unbind(vma);
+			err = i915_vma_unbind_unlocked(vma);
 			err = -EINVAL;
 			break;
 		}
@@ -1465,7 +1465,7 @@ static int igt_gtt_reserve(void *arg)
 			goto out;
 		}
 
-		err = i915_vma_unbind(vma);
+		err = i915_vma_unbind_unlocked(vma);
 		if (err) {
 			pr_err("i915_vma_unbind failed with err=%d!\n", err);
 			goto out;
@@ -1647,7 +1647,7 @@ static int igt_gtt_insert(void *arg)
 		GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
 		offset = vma->node.start;
 
-		err = i915_vma_unbind(vma);
+		err = i915_vma_unbind_unlocked(vma);
 		if (err) {
 			pr_err("i915_vma_unbind failed with err=%d!\n", err);
 			goto out;
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index dd0607254a95..3a1eb487826a 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -340,7 +340,7 @@ static int igt_vma_pin1(void *arg)
 
 		if (!err) {
 			i915_vma_unpin(vma);
-			err = i915_vma_unbind(vma);
+			err = i915_vma_unbind_unlocked(vma);
 			if (err) {
 				pr_err("Failed to unbind single page from GGTT, err=%d\n", err);
 				goto out;
-- 
2.32.0

