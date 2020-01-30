Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDE214DCE6
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 15:40:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E51586E854;
	Thu, 30 Jan 2020 14:40:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C94E86E854
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 14:40:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20060858-1500050 
 for multiple; Thu, 30 Jan 2020 14:39:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jan 2020 14:39:31 +0000
Message-Id: <20200130143931.1906301-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Tighten checks and acquiring the
 mmap object
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make sure we hold the rcu lock as we acquire the rcu protected reference
of the object when looking it up from the associated mmap vma.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1083
Fixes: cc662126b413 ("drm/i915: Introduce DRM_I915_GEM_MMAP_OFFSET")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c   | 39 ++++++----------------
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 12 +++++--
 2 files changed, 21 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index e9be2508c04f..0b6a442108de 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -807,60 +807,43 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
 	struct drm_vma_offset_node *node;
 	struct drm_file *priv = filp->private_data;
 	struct drm_device *dev = priv->minor->dev;
+	struct drm_i915_gem_object *obj = NULL;
 	struct i915_mmap_offset *mmo = NULL;
-	struct drm_gem_object *obj = NULL;
 	struct file *anon;
 
 	if (drm_dev_is_unplugged(dev))
 		return -ENODEV;
 
+	rcu_read_lock();
 	drm_vma_offset_lock_lookup(dev->vma_offset_manager);
 	node = drm_vma_offset_exact_lookup_locked(dev->vma_offset_manager,
 						  vma->vm_pgoff,
 						  vma_pages(vma));
-	if (likely(node)) {
-		mmo = container_of(node, struct i915_mmap_offset,
-				   vma_node);
-		/*
-		 * In our dependency chain, the drm_vma_offset_node
-		 * depends on the validity of the mmo, which depends on
-		 * the gem object. However the only reference we have
-		 * at this point is the mmo (as the parent of the node).
-		 * Try to check if the gem object was at least cleared.
-		 */
-		if (!mmo || !mmo->obj) {
-			drm_vma_offset_unlock_lookup(dev->vma_offset_manager);
-			return -EINVAL;
-		}
+	if (node && drm_vma_node_is_allowed(node, priv)) {
 		/*
 		 * Skip 0-refcnted objects as it is in the process of being
 		 * destroyed and will be invalid when the vma manager lock
 		 * is released.
 		 */
-		obj = &mmo->obj->base;
-		if (!kref_get_unless_zero(&obj->refcount))
-			obj = NULL;
+		mmo = container_of(node, struct i915_mmap_offset, vma_node);
+		obj = i915_gem_object_get_rcu(mmo->obj);
 	}
 	drm_vma_offset_unlock_lookup(dev->vma_offset_manager);
+	rcu_read_unlock();
 	if (!obj)
-		return -EINVAL;
-
-	if (!drm_vma_node_is_allowed(node, priv)) {
-		drm_gem_object_put_unlocked(obj);
-		return -EACCES;
-	}
+		return node ? -EACCES : -EINVAL;
 
-	if (i915_gem_object_is_readonly(to_intel_bo(obj))) {
+	if (i915_gem_object_is_readonly(obj)) {
 		if (vma->vm_flags & VM_WRITE) {
-			drm_gem_object_put_unlocked(obj);
+			i915_gem_object_put(obj);
 			return -EINVAL;
 		}
 		vma->vm_flags &= ~VM_MAYWRITE;
 	}
 
-	anon = mmap_singleton(to_i915(obj->dev));
+	anon = mmap_singleton(to_i915(dev));
 	if (IS_ERR(anon)) {
-		drm_gem_object_put_unlocked(obj);
+		i915_gem_object_put(obj);
 		return PTR_ERR(anon);
 	}
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index db70a3306e59..9c86f2dea947 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -69,6 +69,15 @@ i915_gem_object_lookup_rcu(struct drm_file *file, u32 handle)
 	return idr_find(&file->object_idr, handle);
 }
 
+static inline struct drm_i915_gem_object *
+i915_gem_object_get_rcu(struct drm_i915_gem_object *obj)
+{
+	if (obj && !kref_get_unless_zero(&obj->base.refcount))
+		obj = NULL;
+
+	return obj;
+}
+
 static inline struct drm_i915_gem_object *
 i915_gem_object_lookup(struct drm_file *file, u32 handle)
 {
@@ -76,8 +85,7 @@ i915_gem_object_lookup(struct drm_file *file, u32 handle)
 
 	rcu_read_lock();
 	obj = i915_gem_object_lookup_rcu(file, handle);
-	if (obj && !kref_get_unless_zero(&obj->base.refcount))
-		obj = NULL;
+	obj = i915_gem_object_get_rcu(obj);
 	rcu_read_unlock();
 
 	return obj;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
