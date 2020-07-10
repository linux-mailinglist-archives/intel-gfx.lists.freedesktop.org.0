Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C7D21B485
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:00:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDA846EC14;
	Fri, 10 Jul 2020 12:00:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B9D06EC18
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:00:40 +0000 (UTC)
IronPort-SDR: P/emQDFye/yaMi3ZfVgy3FHB0o/yis3n6Q2yW7eED9SGXICIHAa125jvaK7zCQXubQYwPnxTy+
 urOc8xldPZ/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716677"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716677"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:40 -0700
IronPort-SDR: lZiY2Y/sGIrnIg5a0lKGY5HIX7VuSLdq4VuFfcd/CYpTkhQAidT1ZxzKs5P+6uMmPVx2T0LDvb
 1jdLg1/scBAw==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257963"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:37 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:35 +0100
Message-Id: <20200710115757.290984-39-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 38/60] drm/i915/dg1: Introduce dmabuf mmap to LMEM
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

From: "Michael J. Ruhl" <michael.j.ruhl@intel.com>

The i915 GEM dmabuf mmap interface assumes all BOs are SHMEM. When
the BO is backed by LMEM, this assumption doesn't work so well.

Introduce the dmabuf mmap interface to LMEM by adding the appropriate
VMA faulting mechanism and update dmabuf to allow for LMEM backed BOs by
leveraging the gem_mman path.

Cc: Brian Welty <brian.welty@intel.com>
Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |  58 ++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 103 ++++++++++--------
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   8 ++
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  12 +-
 4 files changed, 119 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 2679380159fc..5824e56751ac 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -9,6 +9,8 @@
 #include <linux/dma-resv.h>
 
 #include "i915_drv.h"
+#include "i915_gem_lmem.h"
+#include "i915_gem_mman.h"
 #include "i915_gem_object.h"
 #include "i915_scatterlist.h"
 
@@ -97,7 +99,41 @@ static void i915_gem_dmabuf_vunmap(struct dma_buf *dma_buf, void *vaddr)
 	i915_gem_object_unpin_map(obj);
 }
 
-static int i915_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *vma)
+/**
+ * i915_gem_dmabuf_update_vma - Setup VMA information for exported LMEM
+ * objects
+ * @obj: valid LMEM object
+ * @vma: va;od vma
+ *
+ * NOTE: on success, the final _object_put() will be done by the VMA
+ * vm_close() callback.
+ */
+static int i915_gem_dmabuf_update_vma(struct drm_i915_gem_object *obj,
+				      struct vm_area_struct *vma)
+{
+	struct i915_mmap_offset *mmo;
+	int err;
+
+	i915_gem_object_get(obj);
+	mmo = i915_gem_mmap_offset_attach(obj, I915_MMAP_TYPE_WC, NULL);
+	if (IS_ERR(mmo)) {
+		err = PTR_ERR(mmo);
+		goto out;
+	}
+
+	err = i915_gem_update_vma_info(mmo, vma);
+	if (err)
+		goto out;
+
+	return 0;
+
+out:
+	i915_gem_object_put(obj);
+	return err;
+}
+
+static int i915_gem_dmabuf_mmap(struct dma_buf *dma_buf,
+				struct vm_area_struct *vma)
 {
 	struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);
 	int ret;
@@ -105,17 +141,21 @@ static int i915_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *
 	if (obj->base.size < vma->vm_end - vma->vm_start)
 		return -EINVAL;
 
-	if (!obj->base.filp)
-		return -ENODEV;
+	/* shmem */
+	if (obj->base.filp) {
+		ret = call_mmap(obj->base.filp, vma);
+		if (ret)
+			return ret;
+		fput(vma->vm_file);
+		vma->vm_file = get_file(obj->base.filp);
 
-	ret = call_mmap(obj->base.filp, vma);
-	if (ret)
-		return ret;
+		return 0;
+	}
 
-	fput(vma->vm_file);
-	vma->vm_file = get_file(obj->base.filp);
+	if (i915_gem_object_is_lmem(obj))
+		return i915_gem_dmabuf_update_vma(obj, vma);
 
-	return 0;
+	return -ENODEV;
 }
 
 static int i915_gem_begin_cpu_access(struct dma_buf *dma_buf, enum dma_data_direction direction)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index b23368529a40..38c8874e10d2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -568,10 +568,10 @@ insert_mmo(struct drm_i915_gem_object *obj, struct i915_mmap_offset *mmo)
 	return mmo;
 }
 
-static struct i915_mmap_offset *
-mmap_offset_attach(struct drm_i915_gem_object *obj,
-		   enum i915_mmap_type mmap_type,
-		   struct drm_file *file)
+struct i915_mmap_offset *
+i915_gem_mmap_offset_attach(struct drm_i915_gem_object *obj,
+			    enum i915_mmap_type mmap_type,
+			    struct drm_file *file)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct i915_mmap_offset *mmo;
@@ -645,7 +645,7 @@ __assign_mmap_offset(struct drm_file *file,
 		goto out;
 	}
 
-	mmo = mmap_offset_attach(obj, mmap_type, file);
+	mmo = i915_gem_mmap_offset_attach(obj, mmap_type, file);
 	if (IS_ERR(mmo)) {
 		err = PTR_ERR(mmo);
 		goto out;
@@ -816,56 +816,21 @@ static struct file *mmap_singleton(struct drm_i915_private *i915)
 	return file;
 }
 
-/*
- * This overcomes the limitation in drm_gem_mmap's assignment of a
- * drm_gem_object as the vma->vm_private_data. Since we need to
- * be able to resolve multiple mmap offsets which could be tied
- * to a single gem object.
- */
-int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
+int i915_gem_update_vma_info(struct i915_mmap_offset *mmo,
+			     struct vm_area_struct *vma)
 {
-	struct drm_vma_offset_node *node;
-	struct drm_file *priv = filp->private_data;
-	struct drm_device *dev = priv->minor->dev;
-	struct drm_i915_gem_object *obj = NULL;
-	struct i915_mmap_offset *mmo = NULL;
 	struct file *anon;
 
-	if (drm_dev_is_unplugged(dev))
-		return -ENODEV;
-
-	rcu_read_lock();
-	drm_vma_offset_lock_lookup(dev->vma_offset_manager);
-	node = drm_vma_offset_exact_lookup_locked(dev->vma_offset_manager,
-						  vma->vm_pgoff,
-						  vma_pages(vma));
-	if (node && drm_vma_node_is_allowed(node, priv)) {
-		/*
-		 * Skip 0-refcnted objects as it is in the process of being
-		 * destroyed and will be invalid when the vma manager lock
-		 * is released.
-		 */
-		mmo = container_of(node, struct i915_mmap_offset, vma_node);
-		obj = i915_gem_object_get_rcu(mmo->obj);
-	}
-	drm_vma_offset_unlock_lookup(dev->vma_offset_manager);
-	rcu_read_unlock();
-	if (!obj)
-		return node ? -EACCES : -EINVAL;
-
-	if (i915_gem_object_is_readonly(obj)) {
-		if (vma->vm_flags & VM_WRITE) {
-			i915_gem_object_put(obj);
+	if (i915_gem_object_is_readonly(mmo->obj)) {
+		if (vma->vm_flags & VM_WRITE)
 			return -EINVAL;
-		}
+
 		vma->vm_flags &= ~VM_MAYWRITE;
 	}
 
-	anon = mmap_singleton(to_i915(dev));
-	if (IS_ERR(anon)) {
-		i915_gem_object_put(obj);
+	anon = mmap_singleton(to_i915(mmo->obj->base.dev));
+	if (IS_ERR(anon))
 		return PTR_ERR(anon);
-	}
 
 	vma->vm_flags |= VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP;
 	vma->vm_private_data = mmo;
@@ -910,6 +875,50 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
 	return 0;
 }
 
+/*
+ * This overcomes the limitation in drm_gem_mmap's assignment of a
+ * drm_gem_object as the vma->vm_private_data. Since we need to
+ * be able to resolve multiple mmap offsets which could be tied
+ * to a single gem object.
+ */
+int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
+{
+	struct drm_vma_offset_node *node;
+	struct drm_file *priv = filp->private_data;
+	struct drm_device *dev = priv->minor->dev;
+	struct drm_i915_gem_object *obj = NULL;
+	struct i915_mmap_offset *mmo = NULL;
+	int err;
+
+	if (drm_dev_is_unplugged(dev))
+		return -ENODEV;
+
+	rcu_read_lock();
+	drm_vma_offset_lock_lookup(dev->vma_offset_manager);
+	node = drm_vma_offset_exact_lookup_locked(dev->vma_offset_manager,
+						  vma->vm_pgoff,
+						  vma_pages(vma));
+	if (node && drm_vma_node_is_allowed(node, priv)) {
+		/*
+		 * Skip 0-refcnted objects as it is in the process of being
+		 * destroyed and will be invalid when the vma manager lock
+		 * is released.
+		 */
+		mmo = container_of(node, struct i915_mmap_offset, vma_node);
+		obj = i915_gem_object_get_rcu(mmo->obj);
+	}
+	drm_vma_offset_unlock_lookup(dev->vma_offset_manager);
+	rcu_read_unlock();
+	if (!obj)
+		return node ? -EACCES : -EINVAL;
+
+	err = i915_gem_update_vma_info(mmo, vma);
+	if (err)
+		i915_gem_object_put(obj);
+
+	return err;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/i915_gem_mman.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.h b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
index efee9e0d2508..8da5f0d6f46f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
@@ -10,6 +10,8 @@
 #include <linux/mm_types.h>
 #include <linux/types.h>
 
+#include "gem/i915_gem_object_types.h"
+
 struct drm_device;
 struct drm_file;
 struct drm_i915_gem_object;
@@ -29,4 +31,10 @@ void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
 
 void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj);
 
+struct i915_mmap_offset *
+i915_gem_mmap_offset_attach(struct drm_i915_gem_object *obj,
+			    enum i915_mmap_type mmap_type,
+			    struct drm_file *file);
+int i915_gem_update_vma_info(struct i915_mmap_offset *mmo,
+			     struct vm_area_struct *vma);
 #endif
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9c7402ce5bf9..4343f4ccc9b6 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -572,7 +572,7 @@ static bool assert_mmap_offset(struct drm_i915_private *i915,
 	if (IS_ERR(obj))
 		return false;
 
-	mmo = mmap_offset_attach(obj, I915_MMAP_OFFSET_GTT, NULL);
+	mmo = i915_gem_mmap_offset_attach(obj, I915_MMAP_OFFSET_GTT, NULL);
 	i915_gem_object_put(obj);
 
 	return PTR_ERR_OR_ZERO(mmo) == expected;
@@ -675,7 +675,7 @@ static int igt_mmap_offset_exhaustion(void *arg)
 		goto out;
 	}
 
-	mmo = mmap_offset_attach(obj, I915_MMAP_OFFSET_GTT, NULL);
+	mmo = i915_gem_mmap_offset_attach(obj, I915_MMAP_OFFSET_GTT, NULL);
 	if (IS_ERR(mmo)) {
 		pr_err("Unable to insert object into reclaimed hole\n");
 		err = PTR_ERR(mmo);
@@ -850,7 +850,7 @@ static int __igt_mmap(struct drm_i915_private *i915,
 	if (err)
 		return err;
 
-	mmo = mmap_offset_attach(obj, type, NULL);
+	mmo = i915_gem_mmap_offset_attach(obj, type, NULL);
 	if (IS_ERR(mmo))
 		return PTR_ERR(mmo);
 
@@ -988,7 +988,7 @@ static int __igt_mmap_access(struct drm_i915_private *i915,
 	if (!can_mmap(obj, type) || !can_access(obj))
 		return 0;
 
-	mmo = mmap_offset_attach(obj, type, NULL);
+	mmo = i915_gem_mmap_offset_attach(obj, type, NULL);
 	if (IS_ERR(mmo))
 		return PTR_ERR(mmo);
 
@@ -1101,7 +1101,7 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 	if (err)
 		return err;
 
-	mmo = mmap_offset_attach(obj, type, NULL);
+	mmo = i915_gem_mmap_offset_attach(obj, type, NULL);
 	if (IS_ERR(mmo))
 		return PTR_ERR(mmo);
 
@@ -1267,7 +1267,7 @@ static int __igt_mmap_revoke(struct drm_i915_private *i915,
 	if (!can_mmap(obj, type))
 		return 0;
 
-	mmo = mmap_offset_attach(obj, type, NULL);
+	mmo = i915_gem_mmap_offset_attach(obj, type, NULL);
 	if (IS_ERR(mmo))
 		return PTR_ERR(mmo);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
