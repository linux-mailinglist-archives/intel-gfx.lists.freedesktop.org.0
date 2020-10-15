Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9893328F0EF
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 13:26:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 996EE6EC75;
	Thu, 15 Oct 2020 11:26:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B18B46EC71
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 11:26:35 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 13:25:38 +0200
Message-Id: <20201015112627.1142745-15-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 14/63] drm/i915: Reject UNSYNCHRONIZED for
 userptr
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

We should not allow this any more, as it will break with the new userptr
implementation, it could still be made to work, but there's no point in
doing so.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  4 ++
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  2 +
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   | 64 ++++++-------------
 drivers/gpu/drm/i915/i915_drv.h               |  2 +
 5 files changed, 31 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index ea2242f1b5b8..c30fa5790a47 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1966,8 +1966,10 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb,
 		err = 0;
 	}
 
+#ifdef CONFIG_MMU_NOTIFIER
 	if (!err)
 		flush_workqueue(eb->i915->mm.userptr_wq);
+#endif
 
 err_relock:
 	i915_gem_ww_ctx_init(&eb->ww, true);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 436ff0d4951f..a3774e80aedd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -531,7 +531,11 @@ void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
 static inline bool
 i915_gem_object_is_userptr(struct drm_i915_gem_object *obj)
 {
+#ifdef CONFIG_MMU_NOTIFIER
 	return obj->userptr.mm;
+#else
+	return false;
+#endif
 }
 
 static inline void
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index e84b279bfee6..1f729e63867c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -289,6 +289,7 @@ struct drm_i915_gem_object {
 	unsigned long *bit_17;
 
 	union {
+#ifdef CONFIG_MMU_NOTIFIER
 		struct i915_gem_userptr {
 			uintptr_t ptr;
 
@@ -296,6 +297,7 @@ struct drm_i915_gem_object {
 			struct i915_mmu_object *mmu_object;
 			struct work_struct *work;
 		} userptr;
+#endif
 
 		unsigned long scratch;
 		u64 encode;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 3fd63fdd7466..a2b7f6db2f1a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -15,6 +15,8 @@
 #include "i915_gem_object.h"
 #include "i915_scatterlist.h"
 
+#if defined(CONFIG_MMU_NOTIFIER)
+
 struct i915_mm_struct {
 	struct mm_struct *mm;
 	struct drm_i915_private *i915;
@@ -24,7 +26,6 @@ struct i915_mm_struct {
 	struct rcu_work work;
 };
 
-#if defined(CONFIG_MMU_NOTIFIER)
 #include <linux/interval_tree.h>
 
 struct i915_mmu_notifier {
@@ -217,15 +218,11 @@ i915_mmu_notifier_find(struct i915_mm_struct *mm)
 }
 
 static int
-i915_gem_userptr_init__mmu_notifier(struct drm_i915_gem_object *obj,
-				    unsigned flags)
+i915_gem_userptr_init__mmu_notifier(struct drm_i915_gem_object *obj)
 {
 	struct i915_mmu_notifier *mn;
 	struct i915_mmu_object *mo;
 
-	if (flags & I915_USERPTR_UNSYNCHRONIZED)
-		return capable(CAP_SYS_ADMIN) ? 0 : -EPERM;
-
 	if (GEM_WARN_ON(!obj->userptr.mm))
 		return -EINVAL;
 
@@ -258,38 +255,6 @@ i915_mmu_notifier_free(struct i915_mmu_notifier *mn,
 	kfree(mn);
 }
 
-#else
-
-static void
-__i915_gem_userptr_set_active(struct drm_i915_gem_object *obj, bool value)
-{
-}
-
-static void
-i915_gem_userptr_release__mmu_notifier(struct drm_i915_gem_object *obj)
-{
-}
-
-static int
-i915_gem_userptr_init__mmu_notifier(struct drm_i915_gem_object *obj,
-				    unsigned flags)
-{
-	if ((flags & I915_USERPTR_UNSYNCHRONIZED) == 0)
-		return -ENODEV;
-
-	if (!capable(CAP_SYS_ADMIN))
-		return -EPERM;
-
-	return 0;
-}
-
-static void
-i915_mmu_notifier_free(struct i915_mmu_notifier *mn,
-		       struct mm_struct *mm)
-{
-}
-
-#endif
 
 static struct i915_mm_struct *
 __i915_mm_struct_find(struct drm_i915_private *i915, struct mm_struct *real)
@@ -731,6 +696,8 @@ static const struct drm_i915_gem_object_ops i915_gem_userptr_ops = {
 	.release = i915_gem_userptr_release,
 };
 
+#endif
+
 /*
  * Creates a new mm object that wraps some normal memory from the process
  * context - user memory.
@@ -771,12 +738,12 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 		       void *data,
 		       struct drm_file *file)
 {
-	static struct lock_class_key lock_class;
+	static struct lock_class_key __maybe_unused lock_class;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_i915_gem_userptr *args = data;
-	struct drm_i915_gem_object *obj;
-	int ret;
-	u32 handle;
+	struct drm_i915_gem_object __maybe_unused *obj;
+	int __maybe_unused ret;
+	u32 __maybe_unused handle;
 
 	if (!HAS_LLC(dev_priv) && !HAS_SNOOP(dev_priv)) {
 		/* We cannot support coherent userptr objects on hw without
@@ -815,6 +782,9 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 	if (!access_ok((char __user *)(unsigned long)args->user_ptr, args->user_size))
 		return -EFAULT;
 
+	if (args->flags & I915_USERPTR_UNSYNCHRONIZED)
+		return -ENODEV;
+
 	if (args->flags & I915_USERPTR_READ_ONLY) {
 		/*
 		 * On almost all of the older hw, we cannot tell the GPU that
@@ -824,6 +794,7 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 			return -ENODEV;
 	}
 
+#ifdef CONFIG_MMU_NOTIFIER
 	obj = i915_gem_object_alloc();
 	if (obj == NULL)
 		return -ENOMEM;
@@ -845,7 +816,7 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 	 */
 	ret = i915_gem_userptr_init__mm_struct(obj);
 	if (ret == 0)
-		ret = i915_gem_userptr_init__mmu_notifier(obj, args->flags);
+		ret = i915_gem_userptr_init__mmu_notifier(obj);
 	if (ret == 0)
 		ret = drm_gem_handle_create(file, &obj->base, &handle);
 
@@ -856,10 +827,14 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 
 	args->handle = handle;
 	return 0;
+#else
+	return -ENODEV;
+#endif
 }
 
 int i915_gem_init_userptr(struct drm_i915_private *dev_priv)
 {
+#ifdef CONFIG_MMU_NOTIFIER
 	spin_lock_init(&dev_priv->mm_lock);
 	hash_init(dev_priv->mm_structs);
 
@@ -869,11 +844,14 @@ int i915_gem_init_userptr(struct drm_i915_private *dev_priv)
 				0);
 	if (!dev_priv->mm.userptr_wq)
 		return -ENOMEM;
+#endif
 
 	return 0;
 }
 
 void i915_gem_cleanup_userptr(struct drm_i915_private *dev_priv)
 {
+#ifdef CONFIG_MMU_NOTIFIER
 	destroy_workqueue(dev_priv->mm.userptr_wq);
+#endif
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 126114484cb6..77d47c18572d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -589,12 +589,14 @@ struct i915_gem_mm {
 	struct notifier_block vmap_notifier;
 	struct shrinker shrinker;
 
+#ifdef CONFIG_MMU_NOTIFIER
 	/**
 	 * Workqueue to fault in userptr pages, flushed by the execbuf
 	 * when required but otherwise left to userspace to try again
 	 * on EAGAIN.
 	 */
 	struct workqueue_struct *userptr_wq;
+#endif
 
 	/* shrinker accounting, also useful for userland debugging */
 	u64 shrink_memory;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
