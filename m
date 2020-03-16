Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54244186A44
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 12:42:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF376E417;
	Mon, 16 Mar 2020 11:42:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 618716E418
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 11:42:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20574775-1500050 
 for multiple; Mon, 16 Mar 2020 11:42:38 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 11:42:30 +0000
Message-Id: <20200316114237.5436-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316114237.5436-1-chris@chris-wilson.co.uk>
References: <20200316114237.5436-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/15] drm/i915/gem: Drop cached obj->bind_count
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

We cached the number of vma bound to the object in order to speed up
shrinker decisions. This has been superseded by being more proactive in
removing objects we cannot shrink from the shrinker lists, and so we can
drop the clumsy attempt at atomically counting the bind count and
comparing it to the number of pinned mappings of the object. This will
only get more clumsier with asynchronous binding and unbinding.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  1 -
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 ---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |  2 --
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  | 18 ++-----------
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  4 ---
 drivers/gpu/drm/i915/i915_debugfs.c           |  7 ++---
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 drivers/gpu/drm/i915/i915_gem.c               |  7 ++++-
 drivers/gpu/drm/i915/i915_vma.c               | 24 -----------------
 .../gpu/drm/i915/selftests/i915_gem_evict.c   | 26 +------------------
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  1 -
 12 files changed, 13 insertions(+), 83 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 0cc40e77bbd2..af43e82f45c7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -369,7 +369,7 @@ static void i915_gem_object_bump_inactive_ggtt(struct drm_i915_gem_object *obj)
 	struct i915_vma *vma;
 
 	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
-	if (!atomic_read(&obj->bind_count))
+	if (list_empty(&obj->vma.list))
 		return;
 
 	mutex_lock(&i915->ggtt.vm.mutex);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 5da9f9e534b9..3f01cdd1a39b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -206,7 +206,6 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
 		}
 		obj->mmo.offsets = RB_ROOT;
 
-		GEM_BUG_ON(atomic_read(&obj->bind_count));
 		GEM_BUG_ON(obj->userfault_count);
 		GEM_BUG_ON(!list_empty(&obj->lut_list));
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index a0b10bcd8d8a..54ee658bb168 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -179,9 +179,6 @@ struct drm_i915_gem_object {
 #define TILING_MASK (FENCE_MINIMUM_STRIDE - 1)
 #define STRIDE_MASK (~TILING_MASK)
 
-	/** Count of VMA actually bound by this object */
-	atomic_t bind_count;
-
 	struct {
 		/*
 		 * Protects the pages and their use. Do not use directly, but
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 24f4cadea114..5d855fcd5c0f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -199,8 +199,6 @@ int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
 	if (i915_gem_object_has_pinned_pages(obj))
 		return -EBUSY;
 
-	GEM_BUG_ON(atomic_read(&obj->bind_count));
-
 	/* May be called by shrinker from within get_pages() (on another bo) */
 	mutex_lock(&obj->mm.lock);
 	if (unlikely(atomic_read(&obj->mm.pages_pin_count))) {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 03e5eb4c99d1..5b65ce738b16 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -26,18 +26,6 @@ static bool can_release_pages(struct drm_i915_gem_object *obj)
 	if (!i915_gem_object_is_shrinkable(obj))
 		return false;
 
-	/*
-	 * Only report true if by unbinding the object and putting its pages
-	 * we can actually make forward progress towards freeing physical
-	 * pages.
-	 *
-	 * If the pages are pinned for any other reason than being bound
-	 * to the GPU, simply unbinding from the GPU is not going to succeed
-	 * in releasing our pin count on the pages themselves.
-	 */
-	if (atomic_read(&obj->mm.pages_pin_count) > atomic_read(&obj->bind_count))
-		return false;
-
 	/*
 	 * We can only return physical pages to the system if we can either
 	 * discard the contents (because the user has marked them as being
@@ -54,6 +42,8 @@ static bool unsafe_drop_pages(struct drm_i915_gem_object *obj,
 	flags = 0;
 	if (shrink & I915_SHRINK_ACTIVE)
 		flags = I915_GEM_OBJECT_UNBIND_ACTIVE;
+	if (!(shrink & I915_SHRINK_BOUND))
+		flags = I915_GEM_OBJECT_UNBIND_TEST;
 
 	if (i915_gem_object_unbind(obj, flags) == 0)
 		__i915_gem_object_put_pages(obj);
@@ -194,10 +184,6 @@ i915_gem_shrink(struct drm_i915_private *i915,
 			    i915_gem_object_is_framebuffer(obj))
 				continue;
 
-			if (!(shrink & I915_SHRINK_BOUND) &&
-			    atomic_read(&obj->bind_count))
-				continue;
-
 			if (!can_release_pages(obj))
 				continue;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 43912e9b683d..ef7abcb3f4ee 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1156,9 +1156,6 @@ static int __igt_mmap_revoke(struct drm_i915_private *i915,
 	if (err)
 		goto out_unmap;
 
-	GEM_BUG_ON(mmo->mmap_type == I915_MMAP_TYPE_GTT &&
-		   !atomic_read(&obj->bind_count));
-
 	err = check_present(addr, obj->base.size);
 	if (err) {
 		pr_err("%s: was not present\n", obj->mm.region->name);
@@ -1175,7 +1172,6 @@ static int __igt_mmap_revoke(struct drm_i915_private *i915,
 		pr_err("Failed to unbind object!\n");
 		goto out_unmap;
 	}
-	GEM_BUG_ON(atomic_read(&obj->bind_count));
 
 	if (type != I915_MMAP_TYPE_GTT) {
 		__i915_gem_object_put_pages(obj);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 6ca797128aa1..9881940eaefd 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -218,7 +218,7 @@ i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
 struct file_stats {
 	struct i915_address_space *vm;
 	unsigned long count;
-	u64 total, unbound;
+	u64 total;
 	u64 active, inactive;
 	u64 closed;
 };
@@ -234,8 +234,6 @@ static int per_file_stats(int id, void *ptr, void *data)
 
 	stats->count++;
 	stats->total += obj->base.size;
-	if (!atomic_read(&obj->bind_count))
-		stats->unbound += obj->base.size;
 
 	spin_lock(&obj->vma.lock);
 	if (!stats->vm) {
@@ -285,13 +283,12 @@ static int per_file_stats(int id, void *ptr, void *data)
 
 #define print_file_stats(m, name, stats) do { \
 	if (stats.count) \
-		seq_printf(m, "%s: %lu objects, %llu bytes (%llu active, %llu inactive, %llu unbound, %llu closed)\n", \
+		seq_printf(m, "%s: %lu objects, %llu bytes (%llu active, %llu inactive, %llu closed)\n", \
 			   name, \
 			   stats.count, \
 			   stats.total, \
 			   stats.active, \
 			   stats.inactive, \
-			   stats.unbound, \
 			   stats.closed); \
 } while (0)
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a7ea1d855359..09ecf0526441 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1736,6 +1736,7 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 			   unsigned long flags);
 #define I915_GEM_OBJECT_UNBIND_ACTIVE BIT(0)
 #define I915_GEM_OBJECT_UNBIND_BARRIER BIT(1)
+#define I915_GEM_OBJECT_UNBIND_TEST BIT(2)
 
 void i915_gem_runtime_suspend(struct drm_i915_private *dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index b0836fc47ae6..0cbcb9f54e7d 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -118,7 +118,7 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 	struct i915_vma *vma;
 	int ret;
 
-	if (!atomic_read(&obj->bind_count))
+	if (list_empty(&obj->vma.list))
 		return 0;
 
 	/*
@@ -141,6 +141,11 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 		if (!i915_vma_is_bound(vma, I915_VMA_BIND_MASK))
 			continue;
 
+		if (flags & I915_GEM_OBJECT_UNBIND_TEST) {
+			ret = -EBUSY;
+			break;
+		}
+
 		ret = -EAGAIN;
 		if (!i915_vm_tryopen(vm))
 			break;
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index df197b07ac99..73dafaafb3e5 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -608,18 +608,6 @@ bool i915_gem_valid_gtt_space(struct i915_vma *vma, unsigned long color)
 	return true;
 }
 
-static void assert_bind_count(const struct drm_i915_gem_object *obj)
-{
-	/*
-	 * Combine the assertion that the object is bound and that we have
-	 * pinned its pages. But we should never have bound the object
-	 * more than we have pinned its pages. (For complete accuracy, we
-	 * assume that no else is pinning the pages, but as a rough assertion
-	 * that we will not run into problems later, this will do!)
-	 */
-	GEM_BUG_ON(atomic_read(&obj->mm.pages_pin_count) < atomic_read(&obj->bind_count));
-}
-
 /**
  * i915_vma_insert - finds a slot for the vma in its address space
  * @vma: the vma
@@ -738,12 +726,6 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
 	GEM_BUG_ON(!i915_gem_valid_gtt_space(vma, color));
 
-	if (vma->obj) {
-		struct drm_i915_gem_object *obj = vma->obj;
-
-		atomic_inc(&obj->bind_count);
-		assert_bind_count(obj);
-	}
 	list_add_tail(&vma->vm_link, &vma->vm->bound_list);
 
 	return 0;
@@ -761,12 +743,6 @@ i915_vma_detach(struct i915_vma *vma)
 	 * it to be reaped by the shrinker.
 	 */
 	list_del(&vma->vm_link);
-	if (vma->obj) {
-		struct drm_i915_gem_object *obj = vma->obj;
-
-		assert_bind_count(obj);
-		atomic_dec(&obj->bind_count);
-	}
 }
 
 static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
index 06ef88510209..028baae9631f 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
@@ -45,8 +45,8 @@ static void quirk_add(struct drm_i915_gem_object *obj,
 
 static int populate_ggtt(struct i915_ggtt *ggtt, struct list_head *objects)
 {
-	unsigned long unbound, bound, count;
 	struct drm_i915_gem_object *obj;
+	unsigned long count;
 
 	count = 0;
 	do {
@@ -72,30 +72,6 @@ static int populate_ggtt(struct i915_ggtt *ggtt, struct list_head *objects)
 	pr_debug("Filled GGTT with %lu pages [%llu total]\n",
 		 count, ggtt->vm.total / PAGE_SIZE);
 
-	bound = 0;
-	unbound = 0;
-	list_for_each_entry(obj, objects, st_link) {
-		GEM_BUG_ON(!obj->mm.quirked);
-
-		if (atomic_read(&obj->bind_count))
-			bound++;
-		else
-			unbound++;
-	}
-	GEM_BUG_ON(bound + unbound != count);
-
-	if (unbound) {
-		pr_err("%s: Found %lu objects unbound, expected %u!\n",
-		       __func__, unbound, 0);
-		return -EINVAL;
-	}
-
-	if (bound != count) {
-		pr_err("%s: Found %lu objects bound, expected %lu!\n",
-		       __func__, bound, count);
-		return -EINVAL;
-	}
-
 	if (list_empty(&ggtt->vm.bound_list)) {
 		pr_err("No objects on the GGTT inactive list!\n");
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index b342bef5e7c9..5d2a02fcf595 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1229,7 +1229,6 @@ static void track_vma_bind(struct i915_vma *vma)
 {
 	struct drm_i915_gem_object *obj = vma->obj;
 
-	atomic_inc(&obj->bind_count); /* track for eviction later */
 	__i915_gem_object_pin_pages(obj);
 
 	GEM_BUG_ON(vma->pages);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
