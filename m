Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C65BD6A5BD2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 16:26:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46A1A10E4E6;
	Tue, 28 Feb 2023 15:26:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B83F10E4DF;
 Tue, 28 Feb 2023 15:26:15 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 5AB981FDBE;
 Tue, 28 Feb 2023 15:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1677597974; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=KT/lkoRclVjMCyMAxoGseffNWgDypv0x372kDw+wAiE=;
 b=qOCmzTEN7Zzmkij14mXNzYBjqL3qDh6CjdhlGGCsp/aEWKXuY4AsP4b5JivhJm/zclZhcG
 6D5I5Q4RnFiIyQNvg/HdwWf98o7i/WShgyG9CdkTAKorHcjTozBd+nsWzBrjzew+etLNhn
 c8yYCIgkTKLQzzfGjLBSzO/eYXsh5ek=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1677597974;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=KT/lkoRclVjMCyMAxoGseffNWgDypv0x372kDw+wAiE=;
 b=G3gBjN8B255pwHgPz6icCrHZCtzodPMq+Ru5jyBlteRwC4K0/LwP97mW+Z4IAj3cP2IX6O
 ulx2BxrYZrzJyaBg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 2507A13440;
 Tue, 28 Feb 2023 15:26:14 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id hR8wCBYd/mNydwAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Tue, 28 Feb 2023 15:26:14 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: dmitry.osipenko@collabora.com, maarten.lankhorst@linux.intel.com,
 airlied@gmail.com, daniel@ffwll.ch, jani.nikula@intel.com
Date: Tue, 28 Feb 2023 16:26:12 +0100
Message-Id: <20230228152612.19971-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Revert "drm/shmem-helper: Switch to reservation
 lock"
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
Cc: intel-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 67b7836d4458790f1261e31fe0ce3250989784f0.

The locking appears incomplete. A caller of SHMEM helper's pin
function never acquires the dma-buf reservation lock. So we get

  WARNING: CPU: 3 PID: 967 at drivers/gpu/drm/drm_gem_shmem_helper.c:243 drm_gem_shmem_pin+0x42/0x90 [drm_shmem_helper]

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c        | 185 +++++++++++-------
 drivers/gpu/drm/lima/lima_gem.c               |   8 +-
 drivers/gpu/drm/panfrost/panfrost_drv.c       |   7 +-
 .../gpu/drm/panfrost/panfrost_gem_shrinker.c  |   6 +-
 drivers/gpu/drm/panfrost/panfrost_mmu.c       |  19 +-
 include/drm/drm_gem_shmem_helper.h            |  14 +-
 6 files changed, 148 insertions(+), 91 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 3d43e5961573..f75e50273d7a 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -88,6 +88,8 @@ __drm_gem_shmem_create(struct drm_device *dev, size_t size, bool private)
 	if (ret)
 		goto err_release;
 
+	mutex_init(&shmem->pages_lock);
+	mutex_init(&shmem->vmap_lock);
 	INIT_LIST_HEAD(&shmem->madv_list);
 
 	if (!private) {
@@ -139,13 +141,11 @@ void drm_gem_shmem_free(struct drm_gem_shmem_object *shmem)
 {
 	struct drm_gem_object *obj = &shmem->base;
 
+	drm_WARN_ON(obj->dev, shmem->vmap_use_count);
+
 	if (obj->import_attach) {
 		drm_prime_gem_destroy(obj, shmem->sgt);
 	} else {
-		dma_resv_lock(shmem->base.resv, NULL);
-
-		drm_WARN_ON(obj->dev, shmem->vmap_use_count);
-
 		if (shmem->sgt) {
 			dma_unmap_sgtable(obj->dev->dev, shmem->sgt,
 					  DMA_BIDIRECTIONAL, 0);
@@ -154,18 +154,18 @@ void drm_gem_shmem_free(struct drm_gem_shmem_object *shmem)
 		}
 		if (shmem->pages)
 			drm_gem_shmem_put_pages(shmem);
-
-		drm_WARN_ON(obj->dev, shmem->pages_use_count);
-
-		dma_resv_unlock(shmem->base.resv);
 	}
 
+	drm_WARN_ON(obj->dev, shmem->pages_use_count);
+
 	drm_gem_object_release(obj);
+	mutex_destroy(&shmem->pages_lock);
+	mutex_destroy(&shmem->vmap_lock);
 	kfree(shmem);
 }
 EXPORT_SYMBOL_GPL(drm_gem_shmem_free);
 
-static int drm_gem_shmem_get_pages(struct drm_gem_shmem_object *shmem)
+static int drm_gem_shmem_get_pages_locked(struct drm_gem_shmem_object *shmem)
 {
 	struct drm_gem_object *obj = &shmem->base;
 	struct page **pages;
@@ -197,16 +197,35 @@ static int drm_gem_shmem_get_pages(struct drm_gem_shmem_object *shmem)
 }
 
 /*
- * drm_gem_shmem_put_pages - Decrease use count on the backing pages for a shmem GEM object
+ * drm_gem_shmem_get_pages - Allocate backing pages for a shmem GEM object
  * @shmem: shmem GEM object
  *
- * This function decreases the use count and puts the backing pages when use drops to zero.
+ * This function makes sure that backing pages exists for the shmem GEM object
+ * and increases the use count.
+ *
+ * Returns:
+ * 0 on success or a negative error code on failure.
  */
-void drm_gem_shmem_put_pages(struct drm_gem_shmem_object *shmem)
+int drm_gem_shmem_get_pages(struct drm_gem_shmem_object *shmem)
 {
 	struct drm_gem_object *obj = &shmem->base;
+	int ret;
 
-	dma_resv_assert_held(shmem->base.resv);
+	drm_WARN_ON(obj->dev, obj->import_attach);
+
+	ret = mutex_lock_interruptible(&shmem->pages_lock);
+	if (ret)
+		return ret;
+	ret = drm_gem_shmem_get_pages_locked(shmem);
+	mutex_unlock(&shmem->pages_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL(drm_gem_shmem_get_pages);
+
+static void drm_gem_shmem_put_pages_locked(struct drm_gem_shmem_object *shmem)
+{
+	struct drm_gem_object *obj = &shmem->base;
 
 	if (drm_WARN_ON_ONCE(obj->dev, !shmem->pages_use_count))
 		return;
@@ -224,6 +243,19 @@ void drm_gem_shmem_put_pages(struct drm_gem_shmem_object *shmem)
 			  shmem->pages_mark_accessed_on_put);
 	shmem->pages = NULL;
 }
+
+/*
+ * drm_gem_shmem_put_pages - Decrease use count on the backing pages for a shmem GEM object
+ * @shmem: shmem GEM object
+ *
+ * This function decreases the use count and puts the backing pages when use drops to zero.
+ */
+void drm_gem_shmem_put_pages(struct drm_gem_shmem_object *shmem)
+{
+	mutex_lock(&shmem->pages_lock);
+	drm_gem_shmem_put_pages_locked(shmem);
+	mutex_unlock(&shmem->pages_lock);
+}
 EXPORT_SYMBOL(drm_gem_shmem_put_pages);
 
 /**
@@ -240,8 +272,6 @@ int drm_gem_shmem_pin(struct drm_gem_shmem_object *shmem)
 {
 	struct drm_gem_object *obj = &shmem->base;
 
-	dma_resv_assert_held(shmem->base.resv);
-
 	drm_WARN_ON(obj->dev, obj->import_attach);
 
 	return drm_gem_shmem_get_pages(shmem);
@@ -259,31 +289,14 @@ void drm_gem_shmem_unpin(struct drm_gem_shmem_object *shmem)
 {
 	struct drm_gem_object *obj = &shmem->base;
 
-	dma_resv_assert_held(shmem->base.resv);
-
 	drm_WARN_ON(obj->dev, obj->import_attach);
 
 	drm_gem_shmem_put_pages(shmem);
 }
 EXPORT_SYMBOL(drm_gem_shmem_unpin);
 
-/*
- * drm_gem_shmem_vmap - Create a virtual mapping for a shmem GEM object
- * @shmem: shmem GEM object
- * @map: Returns the kernel virtual address of the SHMEM GEM object's backing
- *       store.
- *
- * This function makes sure that a contiguous kernel virtual address mapping
- * exists for the buffer backing the shmem GEM object. It hides the differences
- * between dma-buf imported and natively allocated objects.
- *
- * Acquired mappings should be cleaned up by calling drm_gem_shmem_vunmap().
- *
- * Returns:
- * 0 on success or a negative error code on failure.
- */
-int drm_gem_shmem_vmap(struct drm_gem_shmem_object *shmem,
-		       struct iosys_map *map)
+static int drm_gem_shmem_vmap_locked(struct drm_gem_shmem_object *shmem,
+				     struct iosys_map *map)
 {
 	struct drm_gem_object *obj = &shmem->base;
 	int ret = 0;
@@ -299,8 +312,6 @@ int drm_gem_shmem_vmap(struct drm_gem_shmem_object *shmem,
 	} else {
 		pgprot_t prot = PAGE_KERNEL;
 
-		dma_resv_assert_held(shmem->base.resv);
-
 		if (shmem->vmap_use_count++ > 0) {
 			iosys_map_set_vaddr(map, shmem->vaddr);
 			return 0;
@@ -335,30 +346,45 @@ int drm_gem_shmem_vmap(struct drm_gem_shmem_object *shmem,
 
 	return ret;
 }
-EXPORT_SYMBOL(drm_gem_shmem_vmap);
 
 /*
- * drm_gem_shmem_vunmap - Unmap a virtual mapping for a shmem GEM object
+ * drm_gem_shmem_vmap - Create a virtual mapping for a shmem GEM object
  * @shmem: shmem GEM object
- * @map: Kernel virtual address where the SHMEM GEM object was mapped
+ * @map: Returns the kernel virtual address of the SHMEM GEM object's backing
+ *       store.
  *
- * This function cleans up a kernel virtual address mapping acquired by
- * drm_gem_shmem_vmap(). The mapping is only removed when the use count drops to
- * zero.
+ * This function makes sure that a contiguous kernel virtual address mapping
+ * exists for the buffer backing the shmem GEM object. It hides the differences
+ * between dma-buf imported and natively allocated objects.
  *
- * This function hides the differences between dma-buf imported and natively
- * allocated objects.
+ * Acquired mappings should be cleaned up by calling drm_gem_shmem_vunmap().
+ *
+ * Returns:
+ * 0 on success or a negative error code on failure.
  */
-void drm_gem_shmem_vunmap(struct drm_gem_shmem_object *shmem,
-			  struct iosys_map *map)
+int drm_gem_shmem_vmap(struct drm_gem_shmem_object *shmem,
+		       struct iosys_map *map)
+{
+	int ret;
+
+	ret = mutex_lock_interruptible(&shmem->vmap_lock);
+	if (ret)
+		return ret;
+	ret = drm_gem_shmem_vmap_locked(shmem, map);
+	mutex_unlock(&shmem->vmap_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL(drm_gem_shmem_vmap);
+
+static void drm_gem_shmem_vunmap_locked(struct drm_gem_shmem_object *shmem,
+					struct iosys_map *map)
 {
 	struct drm_gem_object *obj = &shmem->base;
 
 	if (obj->import_attach) {
 		dma_buf_vunmap(obj->import_attach->dmabuf, map);
 	} else {
-		dma_resv_assert_held(shmem->base.resv);
-
 		if (drm_WARN_ON_ONCE(obj->dev, !shmem->vmap_use_count))
 			return;
 
@@ -371,6 +397,26 @@ void drm_gem_shmem_vunmap(struct drm_gem_shmem_object *shmem,
 
 	shmem->vaddr = NULL;
 }
+
+/*
+ * drm_gem_shmem_vunmap - Unmap a virtual mapping for a shmem GEM object
+ * @shmem: shmem GEM object
+ * @map: Kernel virtual address where the SHMEM GEM object was mapped
+ *
+ * This function cleans up a kernel virtual address mapping acquired by
+ * drm_gem_shmem_vmap(). The mapping is only removed when the use count drops to
+ * zero.
+ *
+ * This function hides the differences between dma-buf imported and natively
+ * allocated objects.
+ */
+void drm_gem_shmem_vunmap(struct drm_gem_shmem_object *shmem,
+			  struct iosys_map *map)
+{
+	mutex_lock(&shmem->vmap_lock);
+	drm_gem_shmem_vunmap_locked(shmem, map);
+	mutex_unlock(&shmem->vmap_lock);
+}
 EXPORT_SYMBOL(drm_gem_shmem_vunmap);
 
 static int
@@ -401,24 +447,24 @@ drm_gem_shmem_create_with_handle(struct drm_file *file_priv,
  */
 int drm_gem_shmem_madvise(struct drm_gem_shmem_object *shmem, int madv)
 {
-	dma_resv_assert_held(shmem->base.resv);
+	mutex_lock(&shmem->pages_lock);
 
 	if (shmem->madv >= 0)
 		shmem->madv = madv;
 
 	madv = shmem->madv;
 
+	mutex_unlock(&shmem->pages_lock);
+
 	return (madv >= 0);
 }
 EXPORT_SYMBOL(drm_gem_shmem_madvise);
 
-void drm_gem_shmem_purge(struct drm_gem_shmem_object *shmem)
+void drm_gem_shmem_purge_locked(struct drm_gem_shmem_object *shmem)
 {
 	struct drm_gem_object *obj = &shmem->base;
 	struct drm_device *dev = obj->dev;
 
-	dma_resv_assert_held(shmem->base.resv);
-
 	drm_WARN_ON(obj->dev, !drm_gem_shmem_is_purgeable(shmem));
 
 	dma_unmap_sgtable(dev->dev, shmem->sgt, DMA_BIDIRECTIONAL, 0);
@@ -426,7 +472,7 @@ void drm_gem_shmem_purge(struct drm_gem_shmem_object *shmem)
 	kfree(shmem->sgt);
 	shmem->sgt = NULL;
 
-	drm_gem_shmem_put_pages(shmem);
+	drm_gem_shmem_put_pages_locked(shmem);
 
 	shmem->madv = -1;
 
@@ -442,6 +488,17 @@ void drm_gem_shmem_purge(struct drm_gem_shmem_object *shmem)
 
 	invalidate_mapping_pages(file_inode(obj->filp)->i_mapping, 0, (loff_t)-1);
 }
+EXPORT_SYMBOL(drm_gem_shmem_purge_locked);
+
+bool drm_gem_shmem_purge(struct drm_gem_shmem_object *shmem)
+{
+	if (!mutex_trylock(&shmem->pages_lock))
+		return false;
+	drm_gem_shmem_purge_locked(shmem);
+	mutex_unlock(&shmem->pages_lock);
+
+	return true;
+}
 EXPORT_SYMBOL(drm_gem_shmem_purge);
 
 /**
@@ -494,7 +551,7 @@ static vm_fault_t drm_gem_shmem_fault(struct vm_fault *vmf)
 	/* We don't use vmf->pgoff since that has the fake offset */
 	page_offset = (vmf->address - vma->vm_start) >> PAGE_SHIFT;
 
-	dma_resv_lock(shmem->base.resv, NULL);
+	mutex_lock(&shmem->pages_lock);
 
 	if (page_offset >= num_pages ||
 	    drm_WARN_ON_ONCE(obj->dev, !shmem->pages) ||
@@ -506,7 +563,7 @@ static vm_fault_t drm_gem_shmem_fault(struct vm_fault *vmf)
 		ret = vmf_insert_pfn(vma, vmf->address, page_to_pfn(page));
 	}
 
-	dma_resv_unlock(shmem->base.resv);
+	mutex_unlock(&shmem->pages_lock);
 
 	return ret;
 }
@@ -518,7 +575,7 @@ static void drm_gem_shmem_vm_open(struct vm_area_struct *vma)
 
 	drm_WARN_ON(obj->dev, obj->import_attach);
 
-	dma_resv_lock(shmem->base.resv, NULL);
+	mutex_lock(&shmem->pages_lock);
 
 	/*
 	 * We should have already pinned the pages when the buffer was first
@@ -528,7 +585,7 @@ static void drm_gem_shmem_vm_open(struct vm_area_struct *vma)
 	if (!drm_WARN_ON_ONCE(obj->dev, !shmem->pages_use_count))
 		shmem->pages_use_count++;
 
-	dma_resv_unlock(shmem->base.resv);
+	mutex_unlock(&shmem->pages_lock);
 
 	drm_gem_vm_open(vma);
 }
@@ -538,10 +595,7 @@ static void drm_gem_shmem_vm_close(struct vm_area_struct *vma)
 	struct drm_gem_object *obj = vma->vm_private_data;
 	struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);
 
-	dma_resv_lock(shmem->base.resv, NULL);
 	drm_gem_shmem_put_pages(shmem);
-	dma_resv_unlock(shmem->base.resv);
-
 	drm_gem_vm_close(vma);
 }
 
@@ -576,10 +630,7 @@ int drm_gem_shmem_mmap(struct drm_gem_shmem_object *shmem, struct vm_area_struct
 		return dma_buf_mmap(obj->dma_buf, vma, 0);
 	}
 
-	dma_resv_lock(shmem->base.resv, NULL);
 	ret = drm_gem_shmem_get_pages(shmem);
-	dma_resv_unlock(shmem->base.resv);
-
 	if (ret)
 		return ret;
 
@@ -645,7 +696,7 @@ static struct sg_table *drm_gem_shmem_get_pages_sgt_locked(struct drm_gem_shmem_
 
 	drm_WARN_ON(obj->dev, obj->import_attach);
 
-	ret = drm_gem_shmem_get_pages(shmem);
+	ret = drm_gem_shmem_get_pages_locked(shmem);
 	if (ret)
 		return ERR_PTR(ret);
 
@@ -667,7 +718,7 @@ static struct sg_table *drm_gem_shmem_get_pages_sgt_locked(struct drm_gem_shmem_
 	sg_free_table(sgt);
 	kfree(sgt);
 err_put_pages:
-	drm_gem_shmem_put_pages(shmem);
+	drm_gem_shmem_put_pages_locked(shmem);
 	return ERR_PTR(ret);
 }
 
@@ -692,11 +743,11 @@ struct sg_table *drm_gem_shmem_get_pages_sgt(struct drm_gem_shmem_object *shmem)
 	int ret;
 	struct sg_table *sgt;
 
-	ret = dma_resv_lock_interruptible(shmem->base.resv, NULL);
+	ret = mutex_lock_interruptible(&shmem->pages_lock);
 	if (ret)
 		return ERR_PTR(ret);
 	sgt = drm_gem_shmem_get_pages_sgt_locked(shmem);
-	dma_resv_unlock(shmem->base.resv);
+	mutex_unlock(&shmem->pages_lock);
 
 	return sgt;
 }
diff --git a/drivers/gpu/drm/lima/lima_gem.c b/drivers/gpu/drm/lima/lima_gem.c
index 5008f0c2428f..0f1ca0b0db49 100644
--- a/drivers/gpu/drm/lima/lima_gem.c
+++ b/drivers/gpu/drm/lima/lima_gem.c
@@ -34,7 +34,7 @@ int lima_heap_alloc(struct lima_bo *bo, struct lima_vm *vm)
 
 	new_size = min(new_size, bo->base.base.size);
 
-	dma_resv_lock(bo->base.base.resv, NULL);
+	mutex_lock(&bo->base.pages_lock);
 
 	if (bo->base.pages) {
 		pages = bo->base.pages;
@@ -42,7 +42,7 @@ int lima_heap_alloc(struct lima_bo *bo, struct lima_vm *vm)
 		pages = kvmalloc_array(bo->base.base.size >> PAGE_SHIFT,
 				       sizeof(*pages), GFP_KERNEL | __GFP_ZERO);
 		if (!pages) {
-			dma_resv_unlock(bo->base.base.resv);
+			mutex_unlock(&bo->base.pages_lock);
 			return -ENOMEM;
 		}
 
@@ -56,13 +56,13 @@ int lima_heap_alloc(struct lima_bo *bo, struct lima_vm *vm)
 		struct page *page = shmem_read_mapping_page(mapping, i);
 
 		if (IS_ERR(page)) {
-			dma_resv_unlock(bo->base.base.resv);
+			mutex_unlock(&bo->base.pages_lock);
 			return PTR_ERR(page);
 		}
 		pages[i] = page;
 	}
 
-	dma_resv_unlock(bo->base.base.resv);
+	mutex_unlock(&bo->base.pages_lock);
 
 	ret = sg_alloc_table_from_pages(&sgt, pages, i, 0,
 					new_size, GFP_KERNEL);
diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index aa292e4a86eb..f49096f53141 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -407,10 +407,6 @@ static int panfrost_ioctl_madvise(struct drm_device *dev, void *data,
 
 	bo = to_panfrost_bo(gem_obj);
 
-	ret = dma_resv_lock_interruptible(bo->base.base.resv, NULL);
-	if (ret)
-		goto out_put_object;
-
 	mutex_lock(&pfdev->shrinker_lock);
 	mutex_lock(&bo->mappings.lock);
 	if (args->madv == PANFROST_MADV_DONTNEED) {
@@ -448,8 +444,7 @@ static int panfrost_ioctl_madvise(struct drm_device *dev, void *data,
 out_unlock_mappings:
 	mutex_unlock(&bo->mappings.lock);
 	mutex_unlock(&pfdev->shrinker_lock);
-	dma_resv_unlock(bo->base.base.resv);
-out_put_object:
+
 	drm_gem_object_put(gem_obj);
 	return ret;
 }
diff --git a/drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c b/drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c
index 6a71a2555f85..bf0170782f25 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c
+++ b/drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c
@@ -48,14 +48,14 @@ static bool panfrost_gem_purge(struct drm_gem_object *obj)
 	if (!mutex_trylock(&bo->mappings.lock))
 		return false;
 
-	if (!dma_resv_trylock(shmem->base.resv))
+	if (!mutex_trylock(&shmem->pages_lock))
 		goto unlock_mappings;
 
 	panfrost_gem_teardown_mappings_locked(bo);
-	drm_gem_shmem_purge(&bo->base);
+	drm_gem_shmem_purge_locked(&bo->base);
 	ret = true;
 
-	dma_resv_unlock(shmem->base.resv);
+	mutex_unlock(&shmem->pages_lock);
 
 unlock_mappings:
 	mutex_unlock(&bo->mappings.lock);
diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
index 94421fa255d2..4e83a1891f3e 100644
--- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
@@ -443,7 +443,6 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
 	struct panfrost_gem_mapping *bomapping;
 	struct panfrost_gem_object *bo;
 	struct address_space *mapping;
-	struct drm_gem_object *obj;
 	pgoff_t page_offset;
 	struct sg_table *sgt;
 	struct page **pages;
@@ -466,16 +465,15 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
 	page_offset = addr >> PAGE_SHIFT;
 	page_offset -= bomapping->mmnode.start;
 
-	obj = &bo->base.base;
-
-	dma_resv_lock(obj->resv, NULL);
+	mutex_lock(&bo->base.pages_lock);
 
 	if (!bo->base.pages) {
 		bo->sgts = kvmalloc_array(bo->base.base.size / SZ_2M,
 				     sizeof(struct sg_table), GFP_KERNEL | __GFP_ZERO);
 		if (!bo->sgts) {
+			mutex_unlock(&bo->base.pages_lock);
 			ret = -ENOMEM;
-			goto err_unlock;
+			goto err_bo;
 		}
 
 		pages = kvmalloc_array(bo->base.base.size >> PAGE_SHIFT,
@@ -483,8 +481,9 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
 		if (!pages) {
 			kvfree(bo->sgts);
 			bo->sgts = NULL;
+			mutex_unlock(&bo->base.pages_lock);
 			ret = -ENOMEM;
-			goto err_unlock;
+			goto err_bo;
 		}
 		bo->base.pages = pages;
 		bo->base.pages_use_count = 1;
@@ -492,6 +491,7 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
 		pages = bo->base.pages;
 		if (pages[page_offset]) {
 			/* Pages are already mapped, bail out. */
+			mutex_unlock(&bo->base.pages_lock);
 			goto out;
 		}
 	}
@@ -502,11 +502,14 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
 	for (i = page_offset; i < page_offset + NUM_FAULT_PAGES; i++) {
 		pages[i] = shmem_read_mapping_page(mapping, i);
 		if (IS_ERR(pages[i])) {
+			mutex_unlock(&bo->base.pages_lock);
 			ret = PTR_ERR(pages[i]);
 			goto err_pages;
 		}
 	}
 
+	mutex_unlock(&bo->base.pages_lock);
+
 	sgt = &bo->sgts[page_offset / (SZ_2M / PAGE_SIZE)];
 	ret = sg_alloc_table_from_pages(sgt, pages + page_offset,
 					NUM_FAULT_PAGES, 0, SZ_2M, GFP_KERNEL);
@@ -525,8 +528,6 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
 	dev_dbg(pfdev->dev, "mapped page fault @ AS%d %llx", as, addr);
 
 out:
-	dma_resv_unlock(obj->resv);
-
 	panfrost_gem_mapping_put(bomapping);
 
 	return 0;
@@ -535,8 +536,6 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
 	sg_free_table(sgt);
 err_pages:
 	drm_gem_shmem_put_pages(&bo->base);
-err_unlock:
-	dma_resv_unlock(obj->resv);
 err_bo:
 	panfrost_gem_mapping_put(bomapping);
 	return ret;
diff --git a/include/drm/drm_gem_shmem_helper.h b/include/drm/drm_gem_shmem_helper.h
index 20ddcd799df9..5994fed5e327 100644
--- a/include/drm/drm_gem_shmem_helper.h
+++ b/include/drm/drm_gem_shmem_helper.h
@@ -26,6 +26,11 @@ struct drm_gem_shmem_object {
 	 */
 	struct drm_gem_object base;
 
+	/**
+	 * @pages_lock: Protects the page table and use count
+	 */
+	struct mutex pages_lock;
+
 	/**
 	 * @pages: Page table
 	 */
@@ -60,6 +65,11 @@ struct drm_gem_shmem_object {
 	 */
 	struct sg_table *sgt;
 
+	/**
+	 * @vmap_lock: Protects the vmap address and use count
+	 */
+	struct mutex vmap_lock;
+
 	/**
 	 * @vaddr: Kernel virtual address of the backing memory
 	 */
@@ -99,6 +109,7 @@ struct drm_gem_shmem_object {
 struct drm_gem_shmem_object *drm_gem_shmem_create(struct drm_device *dev, size_t size);
 void drm_gem_shmem_free(struct drm_gem_shmem_object *shmem);
 
+int drm_gem_shmem_get_pages(struct drm_gem_shmem_object *shmem);
 void drm_gem_shmem_put_pages(struct drm_gem_shmem_object *shmem);
 int drm_gem_shmem_pin(struct drm_gem_shmem_object *shmem);
 void drm_gem_shmem_unpin(struct drm_gem_shmem_object *shmem);
@@ -117,7 +128,8 @@ static inline bool drm_gem_shmem_is_purgeable(struct drm_gem_shmem_object *shmem
 		!shmem->base.dma_buf && !shmem->base.import_attach;
 }
 
-void drm_gem_shmem_purge(struct drm_gem_shmem_object *shmem);
+void drm_gem_shmem_purge_locked(struct drm_gem_shmem_object *shmem);
+bool drm_gem_shmem_purge(struct drm_gem_shmem_object *shmem);
 
 struct sg_table *drm_gem_shmem_get_sg_table(struct drm_gem_shmem_object *shmem);
 struct sg_table *drm_gem_shmem_get_pages_sgt(struct drm_gem_shmem_object *shmem);
-- 
2.39.2

