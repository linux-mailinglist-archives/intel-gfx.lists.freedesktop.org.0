Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC1D54A377
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 03:14:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 043E410FD9B;
	Tue, 14 Jun 2022 01:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 530B210FCCC
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 01:14:09 +0000 (UTC)
Received: from sobremesa.fritz.box (82-69-11-11.dsl.in-addr.zen.co.uk
 [82.69.11.11])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: alarumbe)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id D5F296601694;
 Tue, 14 Jun 2022 02:14:07 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1655169247;
 bh=nQ/5eGaBpm0vRH146kA7SVfPKMyxlg5vpBQBw5gBq/Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oVa2pn9CYb/5fn0CDRGWEbFHNj3jen62R949vorUoo4Wo6TQ2OyzYrs119v/vTfBe
 Jppd86+g4TYPjoYeXYI7xe/R/laHcQUIY0FtP73bAKQmsfW27CZryU0h2X0mIWFFUB
 k6vWFuscAr8tNn59Y0zCLccyh08/pq/D1NlMEbBjO2Of9Oe+nNCGzwVnlB5ct4I52m
 Px+oFgV7L9Ck5d/wlqWkDmA77DVNxqRwT5qzbcFH7EUoMNZk4cTpNOBuuZTjHOHcyr
 4AcBzpgtwT/8qUrjvnthcsNok3nkDD8EUyM88jUHVMcjUKcV66z6ZpK7EZCugSAHYR
 jC9rIpGFDk2Tw==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch,
	intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jun 2022 02:13:50 +0100
Message-Id: <20220614011350.122168-4-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220614011350.122168-1-adrian.larumbe@collabora.com>
References: <20220614011350.122168-1-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/ttm: remove shmem memory region
 and gem object backend
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove shmem region and object backend code as they are now unnecessary.
In the case of objects placed in SMEM and backed by kernel shmem files, the
file pointer has to be retrieved from the ttm_tt structure, so change this
as well. This means accessing an shmem-backed BO's file pointer requires
getting its pages beforehand, unlike in the old shmem backend.

In a few cases this isn't ideal, like in pwrite, shmem_create_from_object
or in the legacy mmap ioctl. In those instances, create an ad-hoc shmem
file without filling the object's page array.

shmem_create_from_object requires marking the source object's shmem pages
dirty and accessed to trigger a cache flush, otherwise the relevant engine
won't be able to access its default state and trigger a reset.

Modify the logic of i915_ttm_cache_level so that the cache level of
discrete and integrated platforms are considered separately.

Adapt phys backend to put pages of original shmem object in a 'TTM way',
also making sure its pages are put when a TTM shmem object has no struct
page.

TTM's put pages callback has to handle both smem-placed objects on
integrated platforms, lmem-objects on TTM and the case of objects
transformed through the old phys backend.

Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c   |  10 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.c     |  14 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h   |   6 +-
 drivers/gpu/drm/i915/gem/i915_gem_phys.c     |  29 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c    | 392 +------------------
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 345 ++++++++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h      |   3 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c |  13 +-
 drivers/gpu/drm/i915/gt/shmem_utils.c        |  36 +-
 drivers/gpu/drm/i915/intel_memory_region.c   |   7 +-
 10 files changed, 418 insertions(+), 437 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index f5062d0c6333..a2cf7e9635e6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -12,6 +12,7 @@
 #include <asm/smp.h>
 
 #include "gem/i915_gem_dmabuf.h"
+#include "gem/i915_gem_ttm.h"
 #include "i915_drv.h"
 #include "i915_gem_object.h"
 #include "i915_scatterlist.h"
@@ -94,6 +95,7 @@ static int i915_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *
 {
 	struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct file *filp = i915_gem_ttm_get_filep(obj);
 	int ret;
 
 	if (obj->base.size < vma->vm_end - vma->vm_start)
@@ -102,14 +104,14 @@ static int i915_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *
 	if (HAS_LMEM(i915))
 		return drm_gem_prime_mmap(&obj->base, vma);
 
-	if (!obj->base.filp)
-		return -ENODEV;
+	if (IS_ERR(filp))
+		return PTR_ERR(filp);
 
-	ret = call_mmap(obj->base.filp, vma);
+	ret = call_mmap(filp, vma);
 	if (ret)
 		return ret;
 
-	vma_set_file(vma, obj->base.filp);
+	vma_set_file(vma, filp);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 0c5c43852e24..7994756e7f78 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -65,6 +65,7 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_mmap *args = data;
 	struct drm_i915_gem_object *obj;
 	unsigned long addr;
+	struct file *filp;
 
 	/*
 	 * mmap ioctl is disallowed for all discrete platforms,
@@ -86,17 +87,24 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
 	/* prime objects have no backing filp to GEM mmap
 	 * pages from.
 	 */
-	if (!obj->base.filp) {
+	if (obj->base.import_attach) {
+		GEM_WARN_ON(obj->base.filp != NULL);
 		addr = -ENXIO;
 		goto err;
 	}
 
+	filp = i915_gem_ttm_get_filep(obj);
+	if (IS_ERR(filp)) {
+		addr = PTR_ERR(filp);
+		goto err;
+	}
+
 	if (range_overflows(args->offset, args->size, (u64)obj->base.size)) {
 		addr = -EINVAL;
 		goto err;
 	}
 
-	addr = vm_mmap(obj->base.filp, 0, args->size,
+	addr = vm_mmap(filp, 0, args->size,
 		       PROT_READ | PROT_WRITE, MAP_SHARED,
 		       args->offset);
 	if (IS_ERR_VALUE(addr))
@@ -111,7 +119,7 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
 			goto err;
 		}
 		vma = find_vma(mm, addr);
-		if (vma && __vma_matches(vma, obj->base.filp, addr, args->size))
+		if (vma && __vma_matches(vma, filp, addr, args->size))
 			vma->vm_page_prot =
 				pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
 		else
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index e11d82a9f7c3..153b51f43d7c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -72,8 +72,6 @@ __i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
 			      struct intel_memory_region **placements,
 			      unsigned int n_placements);
 
-extern const struct drm_i915_gem_object_ops i915_gem_shmem_ops;
-
 void __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
 				     struct sg_table *pages,
 				     bool needs_clflush);
@@ -84,8 +82,6 @@ int i915_gem_object_pread_phys(struct drm_i915_gem_object *obj,
 			       const struct drm_i915_gem_pread *args);
 
 int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align);
-void i915_gem_object_put_pages_shmem(struct drm_i915_gem_object *obj,
-				     struct sg_table *pages);
 void i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
 				    struct sg_table *pages);
 
@@ -592,7 +588,7 @@ i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
 
 int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size);
 
-bool i915_gem_object_is_shmem(const struct drm_i915_gem_object *obj);
+bool i915_gem_object_is_shmem(struct drm_i915_gem_object *obj);
 
 void __i915_gem_free_object_rcu(struct rcu_head *head);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 0d0e46dae559..0cc143cd22eb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -16,13 +16,15 @@
 #include "i915_gem_region.h"
 #include "i915_gem_tiling.h"
 #include "i915_scatterlist.h"
+#include "gem/i915_gem_ttm.h"
 
 static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
 {
-	struct address_space *mapping = obj->base.filp->f_mapping;
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct address_space *mapping;
 	struct scatterlist *sg;
 	struct sg_table *st;
+	struct file *file;
 	dma_addr_t dma;
 	void *vaddr;
 	void *dst;
@@ -31,6 +33,13 @@ static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
 	if (GEM_WARN_ON(i915_gem_object_needs_bit17_swizzle(obj)))
 		return -EINVAL;
 
+	file = i915_gem_ttm_get_filep(obj);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	obj->base.filp = get_file(file);
+	mapping = obj->base.filp->f_mapping;
+
 	/*
 	 * Always aligning to the object size, allows a single allocation
 	 * to handle all possible callers, and given typical object sizes,
@@ -102,10 +111,15 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
 	__i915_gem_object_release_shmem(obj, pages, false);
 
 	if (obj->mm.dirty) {
-		struct address_space *mapping = obj->base.filp->f_mapping;
+		struct address_space *mapping;
 		void *src = vaddr;
 		int i;
 
+		if (GEM_WARN_ON(!obj->base.filp))
+			goto err_no_filep;
+
+		mapping = obj->base.filp->f_mapping;
+
 		for (i = 0; i < obj->base.size / PAGE_SIZE; i++) {
 			struct page *page;
 			char *dst;
@@ -129,6 +143,11 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
 		obj->mm.dirty = false;
 	}
 
+	fput(obj->base.filp);
+	if (file_count(obj->base.filp) == 0)
+		obj->base.filp = NULL;
+
+err_no_filep:
 	sg_free_table(pages);
 	kfree(pages);
 
@@ -202,8 +221,10 @@ static int i915_gem_object_shmem_to_phys(struct drm_i915_gem_object *obj)
 	/* Perma-pin (until release) the physical set of pages */
 	__i915_gem_object_pin_pages(obj);
 
-	if (!IS_ERR_OR_NULL(pages))
-		i915_gem_object_put_pages_shmem(obj, pages);
+	if (!IS_ERR_OR_NULL(pages)) {
+		GEM_WARN_ON(pages != &obj->mm.rsgt->table);
+		i915_refct_sgt_put(fetch_and_zero(&obj->mm.rsgt));
+	}
 
 	i915_gem_object_release_memory_region(obj);
 	return 0;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 4eed3dd90ba8..f170343b1036 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -11,12 +11,14 @@
 #include <drm/drm_cache.h>
 
 #include "gem/i915_gem_region.h"
+#include "gem/i915_gem_ttm.h"
 #include "i915_drv.h"
 #include "i915_gem_object.h"
 #include "i915_gem_tiling.h"
 #include "i915_gemfs.h"
 #include "i915_scatterlist.h"
 #include "i915_trace.h"
+#include "i915_gem_clflush.h"
 
 /*
  * Move pages to appropriate lru and release the pagevec, decrementing the
@@ -188,105 +190,6 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	return ret;
 }
 
-static int shmem_get_pages(struct drm_i915_gem_object *obj)
-{
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-	struct intel_memory_region *mem = obj->mm.region;
-	struct address_space *mapping = obj->base.filp->f_mapping;
-	const unsigned long page_count = obj->base.size / PAGE_SIZE;
-	unsigned int max_segment = i915_sg_segment_size();
-	struct sg_table *st;
-	struct sgt_iter sgt_iter;
-	struct page *page;
-	int ret;
-
-	/*
-	 * Assert that the object is not currently in any GPU domain. As it
-	 * wasn't in the GTT, there shouldn't be any way it could have been in
-	 * a GPU cache
-	 */
-	GEM_BUG_ON(obj->read_domains & I915_GEM_GPU_DOMAINS);
-	GEM_BUG_ON(obj->write_domain & I915_GEM_GPU_DOMAINS);
-
-rebuild_st:
-	st = kmalloc(sizeof(*st), GFP_KERNEL);
-	if (!st)
-		return -ENOMEM;
-
-	ret = shmem_sg_alloc_table(i915, st, obj->base.size, mem, mapping,
-				   max_segment);
-	if (ret)
-		goto err_st;
-
-	ret = i915_gem_gtt_prepare_pages(obj, st);
-	if (ret) {
-		/*
-		 * DMA remapping failed? One possible cause is that
-		 * it could not reserve enough large entries, asking
-		 * for PAGE_SIZE chunks instead may be helpful.
-		 */
-		if (max_segment > PAGE_SIZE) {
-			for_each_sgt_page(page, sgt_iter, st)
-				put_page(page);
-			sg_free_table(st);
-			kfree(st);
-
-			max_segment = PAGE_SIZE;
-			goto rebuild_st;
-		} else {
-			dev_warn(i915->drm.dev,
-				 "Failed to DMA remap %lu pages\n",
-				 page_count);
-			goto err_pages;
-		}
-	}
-
-	if (i915_gem_object_needs_bit17_swizzle(obj))
-		i915_gem_object_do_bit_17_swizzle(obj, st);
-
-	if (i915_gem_object_can_bypass_llc(obj))
-		obj->cache_dirty = true;
-
-	__i915_gem_object_set_pages(obj, st, i915_sg_dma_sizes(st->sgl));
-
-	return 0;
-
-err_pages:
-	shmem_sg_free_table(st, mapping, false, false);
-	/*
-	 * shmemfs first checks if there is enough memory to allocate the page
-	 * and reports ENOSPC should there be insufficient, along with the usual
-	 * ENOMEM for a genuine allocation failure.
-	 *
-	 * We use ENOSPC in our driver to mean that we have run out of aperture
-	 * space and so want to translate the error from shmemfs back to our
-	 * usual understanding of ENOMEM.
-	 */
-err_st:
-	if (ret == -ENOSPC)
-		ret = -ENOMEM;
-
-	kfree(st);
-
-	return ret;
-}
-
-static int
-shmem_truncate(struct drm_i915_gem_object *obj)
-{
-	/*
-	 * Our goal here is to return as much of the memory as
-	 * is possible back to the system as we are called from OOM.
-	 * To do this we must instruct the shmfs to drop all of its
-	 * backing pages, *now*.
-	 */
-	shmem_truncate_range(file_inode(obj->base.filp), 0, (loff_t)-1);
-	obj->mm.madv = __I915_MADV_PURGED;
-	obj->mm.pages = ERR_PTR(-EFAULT);
-
-	return 0;
-}
-
 void __shmem_writeback(size_t size, struct address_space *mapping)
 {
 	struct writeback_control wbc = {
@@ -329,27 +232,6 @@ void __shmem_writeback(size_t size, struct address_space *mapping)
 	}
 }
 
-static void
-shmem_writeback(struct drm_i915_gem_object *obj)
-{
-	__shmem_writeback(obj->base.size, obj->base.filp->f_mapping);
-}
-
-static int shmem_shrink(struct drm_i915_gem_object *obj, unsigned int flags)
-{
-	switch (obj->mm.madv) {
-	case I915_MADV_DONTNEED:
-		return i915_gem_object_truncate(obj);
-	case __I915_MADV_PURGED:
-		return 0;
-	}
-
-	if (flags & I915_GEM_OBJECT_SHRINK_WRITEBACK)
-		shmem_writeback(obj);
-
-	return 0;
-}
-
 void
 __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
 				struct sg_table *pages,
@@ -376,238 +258,10 @@ __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
 	 * pages are swapped-in, and since execbuf binds the object before doing
 	 * the async flush, we have a race window.
 	 */
-	if (!HAS_LLC(i915))
+	if (!HAS_LLC(i915) && !IS_DGFX(i915))
 		obj->cache_dirty = true;
 }
 
-void i915_gem_object_put_pages_shmem(struct drm_i915_gem_object *obj, struct sg_table *pages)
-{
-	__i915_gem_object_release_shmem(obj, pages, true);
-
-	i915_gem_gtt_finish_pages(obj, pages);
-
-	if (i915_gem_object_needs_bit17_swizzle(obj))
-		i915_gem_object_save_bit_17_swizzle(obj, pages);
-
-	shmem_sg_free_table(pages, file_inode(obj->base.filp)->i_mapping,
-			    obj->mm.dirty, obj->mm.madv == I915_MADV_WILLNEED);
-	kfree(pages);
-	obj->mm.dirty = false;
-}
-
-static void
-shmem_put_pages(struct drm_i915_gem_object *obj, struct sg_table *pages)
-{
-	if (likely(i915_gem_object_has_struct_page(obj)))
-		i915_gem_object_put_pages_shmem(obj, pages);
-	else
-		i915_gem_object_put_pages_phys(obj, pages);
-}
-
-static int
-shmem_pwrite(struct drm_i915_gem_object *obj,
-	     const struct drm_i915_gem_pwrite *arg)
-{
-	struct address_space *mapping = obj->base.filp->f_mapping;
-	const struct address_space_operations *aops = mapping->a_ops;
-	char __user *user_data = u64_to_user_ptr(arg->data_ptr);
-	u64 remain, offset;
-	unsigned int pg;
-
-	/* Caller already validated user args */
-	GEM_BUG_ON(!access_ok(user_data, arg->size));
-
-	if (!i915_gem_object_has_struct_page(obj))
-		return i915_gem_object_pwrite_phys(obj, arg);
-
-	/*
-	 * Before we instantiate/pin the backing store for our use, we
-	 * can prepopulate the shmemfs filp efficiently using a write into
-	 * the pagecache. We avoid the penalty of instantiating all the
-	 * pages, important if the user is just writing to a few and never
-	 * uses the object on the GPU, and using a direct write into shmemfs
-	 * allows it to avoid the cost of retrieving a page (either swapin
-	 * or clearing-before-use) before it is overwritten.
-	 */
-	if (i915_gem_object_has_pages(obj))
-		return -ENODEV;
-
-	if (obj->mm.madv != I915_MADV_WILLNEED)
-		return -EFAULT;
-
-	/*
-	 * Before the pages are instantiated the object is treated as being
-	 * in the CPU domain. The pages will be clflushed as required before
-	 * use, and we can freely write into the pages directly. If userspace
-	 * races pwrite with any other operation; corruption will ensue -
-	 * that is userspace's prerogative!
-	 */
-
-	remain = arg->size;
-	offset = arg->offset;
-	pg = offset_in_page(offset);
-
-	do {
-		unsigned int len, unwritten;
-		struct page *page;
-		void *data, *vaddr;
-		int err;
-		char c;
-
-		len = PAGE_SIZE - pg;
-		if (len > remain)
-			len = remain;
-
-		/* Prefault the user page to reduce potential recursion */
-		err = __get_user(c, user_data);
-		if (err)
-			return err;
-
-		err = __get_user(c, user_data + len - 1);
-		if (err)
-			return err;
-
-		err = aops->write_begin(obj->base.filp, mapping, offset, len,
-					&page, &data);
-		if (err < 0)
-			return err;
-
-		vaddr = kmap_atomic(page);
-		unwritten = __copy_from_user_inatomic(vaddr + pg,
-						      user_data,
-						      len);
-		kunmap_atomic(vaddr);
-
-		err = aops->write_end(obj->base.filp, mapping, offset, len,
-				      len - unwritten, page, data);
-		if (err < 0)
-			return err;
-
-		/* We don't handle -EFAULT, leave it to the caller to check */
-		if (unwritten)
-			return -ENODEV;
-
-		remain -= len;
-		user_data += len;
-		offset += len;
-		pg = 0;
-	} while (remain);
-
-	return 0;
-}
-
-static int
-shmem_pread(struct drm_i915_gem_object *obj,
-	    const struct drm_i915_gem_pread *arg)
-{
-	if (!i915_gem_object_has_struct_page(obj))
-		return i915_gem_object_pread_phys(obj, arg);
-
-	return -ENODEV;
-}
-
-static void shmem_release(struct drm_i915_gem_object *obj)
-{
-	if (i915_gem_object_has_struct_page(obj))
-		i915_gem_object_release_memory_region(obj);
-
-	fput(obj->base.filp);
-}
-
-const struct drm_i915_gem_object_ops i915_gem_shmem_ops = {
-	.name = "i915_gem_object_shmem",
-	.flags = I915_GEM_OBJECT_IS_SHRINKABLE,
-
-	.get_pages = shmem_get_pages,
-	.put_pages = shmem_put_pages,
-	.truncate = shmem_truncate,
-	.shrink = shmem_shrink,
-
-	.pwrite = shmem_pwrite,
-	.pread = shmem_pread,
-
-	.release = shmem_release,
-};
-
-static int __create_shmem(struct drm_i915_private *i915,
-			  struct drm_gem_object *obj,
-			  resource_size_t size)
-{
-	unsigned long flags = VM_NORESERVE;
-	struct file *filp;
-
-	drm_gem_private_object_init(&i915->drm, obj, size);
-
-	if (i915->mm.gemfs)
-		filp = shmem_file_setup_with_mnt(i915->mm.gemfs, "i915", size,
-						 flags);
-	else
-		filp = shmem_file_setup("i915", size, flags);
-	if (IS_ERR(filp))
-		return PTR_ERR(filp);
-
-	obj->filp = filp;
-	return 0;
-}
-
-static int shmem_object_init(struct intel_memory_region *mem,
-			     struct drm_i915_gem_object *obj,
-			     resource_size_t offset,
-			     resource_size_t size,
-			     resource_size_t page_size,
-			     unsigned int flags)
-{
-	static struct lock_class_key lock_class;
-	struct drm_i915_private *i915 = mem->i915;
-	struct address_space *mapping;
-	unsigned int cache_level;
-	gfp_t mask;
-	int ret;
-
-	ret = __create_shmem(i915, &obj->base, size);
-	if (ret)
-		return ret;
-
-	mask = GFP_HIGHUSER | __GFP_RECLAIMABLE;
-	if (IS_I965GM(i915) || IS_I965G(i915)) {
-		/* 965gm cannot relocate objects above 4GiB. */
-		mask &= ~__GFP_HIGHMEM;
-		mask |= __GFP_DMA32;
-	}
-
-	mapping = obj->base.filp->f_mapping;
-	mapping_set_gfp_mask(mapping, mask);
-	GEM_BUG_ON(!(mapping_gfp_mask(mapping) & __GFP_RECLAIM));
-
-	i915_gem_object_init(obj, &i915_gem_shmem_ops, &lock_class, 0);
-	obj->mem_flags |= I915_BO_FLAG_STRUCT_PAGE;
-	obj->write_domain = I915_GEM_DOMAIN_CPU;
-	obj->read_domains = I915_GEM_DOMAIN_CPU;
-
-	if (HAS_LLC(i915))
-		/* On some devices, we can have the GPU use the LLC (the CPU
-		 * cache) for about a 10% performance improvement
-		 * compared to uncached.  Graphics requests other than
-		 * display scanout are coherent with the CPU in
-		 * accessing this cache.  This means in this mode we
-		 * don't need to clflush on the CPU side, and on the
-		 * GPU side we only need to flush internal caches to
-		 * get data visible to the CPU.
-		 *
-		 * However, we maintain the display planes as UC, and so
-		 * need to rebind when first used as such.
-		 */
-		cache_level = I915_CACHE_LLC;
-	else
-		cache_level = I915_CACHE_NONE;
-
-	i915_gem_object_set_cache_coherency(obj, cache_level);
-
-	i915_gem_object_init_memory_region(obj, mem);
-
-	return 0;
-}
-
 struct drm_i915_gem_object *
 i915_gem_object_create_shmem(struct drm_i915_private *i915,
 			     resource_size_t size)
@@ -634,8 +288,11 @@ i915_gem_object_create_shmem_from_data(struct drm_i915_private *dev_priv,
 
 	GEM_BUG_ON(obj->write_domain != I915_GEM_DOMAIN_CPU);
 
-	file = obj->base.filp;
+	file = i915_gem_ttm_get_filep(obj);
+	if (IS_ERR(file))
+		return ERR_CAST(file);
 	aops = file->f_mapping->a_ops;
+
 	offset = 0;
 	do {
 		unsigned int len = min_t(typeof(size), size, PAGE_SIZE);
@@ -667,38 +324,3 @@ i915_gem_object_create_shmem_from_data(struct drm_i915_private *dev_priv,
 	i915_gem_object_put(obj);
 	return ERR_PTR(err);
 }
-
-static int init_shmem(struct intel_memory_region *mem)
-{
-	i915_gemfs_init(mem->i915);
-	intel_memory_region_set_name(mem, "system");
-
-	return 0; /* We have fallback to the kernel mnt if gemfs init failed. */
-}
-
-static int release_shmem(struct intel_memory_region *mem)
-{
-	i915_gemfs_fini(mem->i915);
-	return 0;
-}
-
-static const struct intel_memory_region_ops shmem_region_ops = {
-	.init = init_shmem,
-	.release = release_shmem,
-	.init_object = shmem_object_init,
-};
-
-struct intel_memory_region *i915_gem_shmem_setup(struct drm_i915_private *i915,
-						 u16 type, u16 instance)
-{
-	return intel_memory_region_create(i915, 0,
-					  totalram_pages() << PAGE_SHIFT,
-					  PAGE_SIZE, 0, 0,
-					  type, instance,
-					  &shmem_region_ops);
-}
-
-bool i915_gem_object_is_shmem(const struct drm_i915_gem_object *obj)
-{
-	return obj->ops == &i915_gem_shmem_ops;
-}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 27d59639177f..57a147b81148 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -21,6 +21,8 @@
 #include "gem/i915_gem_ttm_move.h"
 #include "gem/i915_gem_ttm_pm.h"
 #include "gt/intel_gpu_commands.h"
+#include "gem/i915_gem_tiling.h"
+#include "gem/i915_gemfs.h"
 
 #define I915_TTM_PRIO_PURGE     0
 #define I915_TTM_PRIO_NO_PAGES  1
@@ -182,6 +184,38 @@ i915_ttm_placement_from_obj(const struct drm_i915_gem_object *obj,
 	placement->busy_placement = busy;
 }
 
+static struct file *
+ttm_create_shmem_file(struct drm_i915_private *dev_priv,
+		       const size_t size)
+{
+	struct file *filp;
+	struct address_space *mapping;
+	gfp_t mask;
+
+	if (dev_priv->mm.gemfs)
+		filp = shmem_file_setup_with_mnt(dev_priv->mm.gemfs,
+						 "i915-shmem-tt",
+						 size,
+						 VM_NORESERVE);
+	else
+		filp = shmem_file_setup("i915-shmem-tt", size, VM_NORESERVE);
+	if (IS_ERR(filp))
+		return filp;
+
+	mask = GFP_HIGHUSER | __GFP_RECLAIMABLE;
+	if (IS_I965GM(dev_priv) || IS_I965G(dev_priv)) {
+		/* 965gm cannot relocate objects above 4GiB. */
+		mask &= ~__GFP_HIGHMEM;
+		mask |= __GFP_DMA32;
+	}
+
+	mapping = filp->f_mapping;
+	mapping_set_gfp_mask(mapping, mask);
+	GEM_BUG_ON(!(mapping_gfp_mask(mapping) & __GFP_RECLAIM));
+
+	return filp;
+}
+
 static int i915_ttm_tt_shmem_populate(struct ttm_device *bdev,
 				      struct ttm_tt *ttm,
 				      struct ttm_operation_ctx *ctx)
@@ -199,19 +233,10 @@ static int i915_ttm_tt_shmem_populate(struct ttm_device *bdev,
 	int err;
 
 	if (!filp) {
-		struct address_space *mapping;
-		gfp_t mask;
-
-		filp = shmem_file_setup("i915-shmem-tt", size, VM_NORESERVE);
+		filp = ttm_create_shmem_file(i915, size);
 		if (IS_ERR(filp))
 			return PTR_ERR(filp);
 
-		mask = GFP_HIGHUSER | __GFP_RECLAIMABLE;
-
-		mapping = filp->f_mapping;
-		mapping_set_gfp_mask(mapping, mask);
-		GEM_BUG_ON(!(mapping_gfp_mask(mapping) & __GFP_RECLAIM));
-
 		i915_tt->filp = filp;
 	}
 
@@ -222,7 +247,9 @@ static int i915_ttm_tt_shmem_populate(struct ttm_device *bdev,
 		return err;
 
 	err = dma_map_sgtable(i915_tt->dev, st, DMA_BIDIRECTIONAL,
-			      DMA_ATTR_SKIP_CPU_SYNC);
+			      DMA_ATTR_SKIP_CPU_SYNC |
+			      DMA_ATTR_NO_KERNEL_MAPPING |
+			      DMA_ATTR_NO_WARN);
 	if (err)
 		goto err_free_st;
 
@@ -247,6 +274,8 @@ static void i915_ttm_tt_shmem_unpopulate(struct ttm_tt *ttm)
 	bool backup = ttm->page_flags & TTM_TT_FLAG_SWAPPED;
 	struct sg_table *st = &i915_tt->cached_rsgt.table;
 
+	GEM_WARN_ON(!i915_tt->filp);
+
 	shmem_sg_free_table(st, file_inode(i915_tt->filp)->i_mapping,
 			    backup, backup);
 }
@@ -779,6 +808,28 @@ static int __i915_ttm_get_pages(struct drm_i915_gem_object *obj,
 	}
 
 	if (bo->ttm && !ttm_tt_is_populated(bo->ttm)) {
+		struct i915_ttm_tt *i915_tt =
+			container_of(bo->ttm, typeof(*i915_tt), ttm);
+		struct drm_i915_private *i915 = to_i915(obj->base.dev);
+		unsigned long ccs_pages = 0;
+
+		if (HAS_FLAT_CCS(i915) && i915_gem_object_needs_ccs_pages(obj))
+			ccs_pages = DIV_ROUND_UP(DIV_ROUND_UP(bo->base.size,
+							      NUM_BYTES_PER_CCS_BYTE),
+						 PAGE_SIZE);
+
+		if (i915_tt->is_shmem && bo->resource->mem_type == I915_PL_SYSTEM) {
+			/*
+			 * Assert that the object is not currently in any GPU domain. As it
+			 * wasn't in the GTT, there shouldn't be any way it could have been in
+			 * a GPU cache
+			 */
+			GEM_BUG_ON(obj->read_domains & I915_GEM_GPU_DOMAINS);
+			GEM_BUG_ON(obj->write_domain & I915_GEM_GPU_DOMAINS);
+		}
+
+		GEM_BUG_ON(((bo->ttm->num_pages - ccs_pages) << PAGE_SHIFT) != obj->base.size);
+
 		ret = ttm_tt_populate(bo->bdev, bo->ttm, &ctx);
 		if (ret)
 			return ret;
@@ -794,6 +845,20 @@ static int __i915_ttm_get_pages(struct drm_i915_gem_object *obj,
 		if (IS_ERR(rsgt))
 			return PTR_ERR(rsgt);
 
+		if (bo->ttm) {
+			struct i915_ttm_tt *i915_tt =
+				container_of(bo->ttm, typeof(*i915_tt), ttm);
+
+			if (i915_tt->is_shmem &&
+			    bo->resource->mem_type == I915_PL_SYSTEM) {
+				if (i915_gem_object_needs_bit17_swizzle(obj))
+					i915_gem_object_do_bit_17_swizzle(obj, &rsgt->table);
+
+				if (i915_gem_object_can_bypass_llc(obj))
+					obj->cache_dirty = true;
+			}
+		}
+
 		GEM_BUG_ON(obj->mm.rsgt);
 		obj->mm.rsgt = rsgt;
 		__i915_gem_object_set_pages(obj, &rsgt->table,
@@ -873,16 +938,35 @@ static int i915_ttm_migrate(struct drm_i915_gem_object *obj,
 static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
 			       struct sg_table *st)
 {
-	/*
-	 * We're currently not called from a shrinker, so put_pages()
-	 * typically means the object is about to destroyed, or called
-	 * from move_notify(). So just avoid doing much for now.
-	 * If the object is not destroyed next, The TTM eviction logic
-	 * and shrinkers will move it out if needed.
-	 */
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
+
 
-	if (obj->mm.rsgt)
-		i915_refct_sgt_put(fetch_and_zero(&obj->mm.rsgt));
+	if (likely(i915_gem_object_has_struct_page(obj) || IS_DGFX(i915))) {
+		if (bo->resource->mem_type == I915_PL_SYSTEM && bo->ttm) {
+			struct i915_ttm_tt *i915_tt =
+				container_of(bo->ttm, typeof(*i915_tt), ttm);
+
+			if (i915_tt->is_shmem) {
+				__i915_gem_object_release_shmem(obj, st, true);
+
+				if (i915_gem_object_needs_bit17_swizzle(obj))
+					i915_gem_object_save_bit_17_swizzle(obj, st);
+			}
+		}
+
+		/*
+		 * We're currently not called from a shrinker, so put_pages()
+		 * typically means the object is about to destroyed, or called
+		 * from move_notify(). So just avoid doing much for now.
+		 * If the object is not destroyed next, The TTM eviction logic
+		 * and shrinkers will move it out if needed.
+		 */
+		if (obj->mm.rsgt)
+			i915_refct_sgt_put(fetch_and_zero(&obj->mm.rsgt));
+
+	} else
+		i915_gem_object_put_pages_phys(obj, st);
 }
 
 /**
@@ -979,6 +1063,116 @@ void i915_ttm_adjust_lru(struct drm_i915_gem_object *obj)
 	spin_unlock(&bo->bdev->lru_lock);
 }
 
+static int
+i915_ttm_pread(struct drm_i915_gem_object *obj,
+	       const struct drm_i915_gem_pread *arg)
+{
+	if (!i915_gem_object_has_struct_page(obj))
+		return i915_gem_object_pread_phys(obj, arg);
+
+	return -ENODEV;
+}
+
+static int
+i915_ttm_pwrite(struct drm_i915_gem_object *obj,
+		const struct drm_i915_gem_pwrite *arg)
+{
+	char __user *user_data = u64_to_user_ptr(arg->data_ptr);
+	const struct address_space_operations *aops;
+	struct address_space *mapping;
+	u64 remain, offset;
+	struct file *filp;
+	unsigned int pg;
+
+	/* Caller already validated user args */
+	GEM_BUG_ON(!access_ok(user_data, arg->size));
+
+	if (!i915_gem_object_has_struct_page(obj))
+		return i915_gem_object_pwrite_phys(obj, arg);
+
+	/*
+	 * Before we instantiate/pin the backing store for our use, we
+	 * can prepopulate the shmemfs filp efficiently using a write into
+	 * the pagecache. We avoid the penalty of instantiating all the
+	 * pages, important if the user is just writing to a few and never
+	 * uses the object on the GPU, and using a direct write into shmemfs
+	 * allows it to avoid the cost of retrieving a page (either swapin
+	 * or clearing-before-use) before it is overwritten.
+	 */
+	if (i915_gem_object_has_pages(obj))
+		return -ENODEV;
+
+	filp = i915_gem_ttm_get_filep(obj);
+	if (!filp)
+		return -ENXIO;
+
+	mapping = filp->f_mapping;
+	aops = mapping->a_ops;
+
+	if (obj->mm.madv != I915_MADV_WILLNEED)
+		return -EFAULT;
+
+	/*
+	 * Before the pages are instantiated the object is treated as being
+	 * in the CPU domain. The pages will be clflushed as required before
+	 * use, and we can freely write into the pages directly. If userspace
+	 * races pwrite with any other operation; corruption will ensue -
+	 * that is userspace's prerogative!
+	 */
+
+	remain = arg->size;
+	offset = arg->offset;
+	pg = offset_in_page(offset);
+
+	do {
+		unsigned int len, unwritten;
+		struct page *page;
+		void *data, *vaddr;
+		int err;
+		char c;
+
+		len = PAGE_SIZE - pg;
+		if (len > remain)
+			len = remain;
+
+		/* Prefault the user page to reduce potential recursion */
+		err = __get_user(c, user_data);
+		if (err)
+			return err;
+
+		err = __get_user(c, user_data + len - 1);
+		if (err)
+			return err;
+
+		err = aops->write_begin(filp, mapping, offset, len,
+					&page, &data);
+		if (err < 0)
+			return err;
+
+		vaddr = kmap_atomic(page);
+		unwritten = __copy_from_user_inatomic(vaddr + pg,
+						      user_data,
+						      len);
+		kunmap_atomic(vaddr);
+
+		err = aops->write_end(filp, mapping, offset, len,
+				      len - unwritten, page, data);
+		if (err < 0)
+			return err;
+
+		/* We don't handle -EFAULT, leave it to the caller to check */
+		if (unwritten)
+			return -ENODEV;
+
+		remain -= len;
+		user_data += len;
+		offset += len;
+		pg = 0;
+	} while (remain);
+
+	return 0;
+}
+
 /*
  * TTM-backed gem object destruction requires some clarification.
  * Basically we have two possibilities here. We can either rely on the
@@ -1120,7 +1314,7 @@ static void i915_ttm_unmap_virtual(struct drm_i915_gem_object *obj)
 	ttm_bo_unmap_virtual(i915_gem_to_ttm(obj));
 }
 
-static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
+static const struct drm_i915_gem_object_ops i915_gem_ttm_discrete_ops = {
 	.name = "i915_gem_object_ttm",
 	.flags = I915_GEM_OBJECT_IS_SHRINKABLE |
 		 I915_GEM_OBJECT_SELF_MANAGED_SHRINK_LIST,
@@ -1139,11 +1333,35 @@ static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
 	.mmap_ops = &vm_ops_ttm,
 };
 
+static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_integrated_ops = {
+	.name = "i915_gem_object_ttm",
+	.flags = I915_GEM_OBJECT_IS_SHRINKABLE |
+		 I915_GEM_OBJECT_SELF_MANAGED_SHRINK_LIST,
+
+	.get_pages = i915_ttm_get_pages,
+	.put_pages = i915_ttm_put_pages,
+	.truncate = i915_ttm_truncate,
+	.shrink = i915_ttm_shrink,
+
+	.pwrite = i915_ttm_pwrite,
+	.pread = i915_ttm_pread,
+
+	.adjust_lru = i915_ttm_adjust_lru,
+	.delayed_free = i915_ttm_delayed_free,
+};
+
 void i915_ttm_bo_destroy(struct ttm_buffer_object *bo)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+
+	/*
+	 * This is for the case that an shmem object was turned into a
+	 * phys one and early released its memory region
+	 */
+	if (likely(IS_DGFX(i915) || i915_gem_object_has_struct_page(obj)))
+		i915_gem_object_release_memory_region(obj);
 
-	i915_gem_object_release_memory_region(obj);
 	mutex_destroy(&obj->ttm.get_io_page.lock);
 
 	if (obj->ttm.created) {
@@ -1170,6 +1388,19 @@ void i915_ttm_bo_destroy(struct ttm_buffer_object *bo)
 	}
 }
 
+/**
+ * intel_region_ttm_shmem_init - Initialize a memory region for TTM.
+ * @mem: The region to initialize.
+ *
+ * Return: 0 on success, negative error code on failure.
+ */
+static int intel_region_ttm_init_shmem(struct intel_memory_region *mem)
+{
+	i915_gemfs_init(mem->i915);
+
+	return 0; /* Don't error, we can simply fallback to the kernel mnt */
+}
+
 /**
  * __i915_gem_ttm_object_init - Initialize a ttm-backed i915 gem object
  * @mem: The initial memory region for the object.
@@ -1196,7 +1427,12 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 	int ret;
 
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
-	i915_gem_object_init(obj, &i915_gem_ttm_obj_ops, &lock_class, flags);
+
+	if (IS_DGFX(i915))
+		i915_gem_object_init(obj, &i915_gem_ttm_discrete_ops, &lock_class, flags);
+	else
+		i915_gem_object_init(obj, &i915_gem_ttm_obj_integrated_ops, &lock_class,
+				     flags);
 
 	obj->bo_offset = offset;
 
@@ -1206,8 +1442,8 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 
 	INIT_RADIX_TREE(&obj->ttm.get_io_page.radix, GFP_KERNEL | __GFP_NOWARN);
 	mutex_init(&obj->ttm.get_io_page.lock);
-	bo_type = (obj->flags & I915_BO_ALLOC_USER) ? ttm_bo_type_device :
-		ttm_bo_type_kernel;
+	bo_type = (obj->ops->mmap_offset && (obj->flags & I915_BO_ALLOC_USER)) ?
+		ttm_bo_type_device : ttm_bo_type_kernel;
 
 	obj->base.vma_node.driver_private = i915_gem_to_ttm(obj);
 
@@ -1248,10 +1484,55 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 }
 
 static const struct intel_memory_region_ops ttm_system_region_ops = {
+	.init = intel_region_ttm_init_shmem,
 	.init_object = __i915_gem_ttm_object_init,
 	.release = intel_region_ttm_fini,
 };
 
+/**
+ * i915_gem_ttm_get_filep - Retrieve filp for underlying shmem file in
+ * smem-placed objects. If the shmem file is not present because the page array
+ * for the object had not yet been allocated, creates it on the spot. It
+ * presumes that the ttm_tt structure that will hold the page array is already
+ * created, which is always the case for ttm shmem objects.
+ * @obj: Pointer to the gem object
+ *
+ * Return: file pointer for the object's backing shmem file,
+ * or an ERR_PTR() on error.
+ */
+struct file *
+i915_gem_ttm_get_filep(struct drm_i915_gem_object *obj)
+{
+	struct drm_device *dev = obj->base.dev;
+	struct ttm_buffer_object *bo;
+	struct i915_ttm_tt *i915_tt;
+
+	bo = i915_gem_to_ttm(obj);
+	if (!bo->ttm) {
+		drm_dbg(dev, "BO has no ttm, most likely not an shmem object\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	i915_tt = container_of(bo->ttm, typeof(*i915_tt), ttm);
+
+	if (!i915_tt->is_shmem) {
+		drm_dbg(dev, "BO isn't shmem-backed, cannot have filp\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	if (!i915_tt->filp) {
+		struct file *filp;
+
+		filp = ttm_create_shmem_file(to_i915(obj->base.dev), obj->base.size);
+		if (IS_ERR(filp))
+			return filp;
+
+		i915_tt->filp = filp;
+	}
+
+	return i915_tt->filp;
+}
+
 struct intel_memory_region *
 i915_gem_ttm_system_setup(struct drm_i915_private *i915,
 			  u16 type, u16 instance)
@@ -1269,3 +1550,17 @@ i915_gem_ttm_system_setup(struct drm_i915_private *i915,
 	intel_memory_region_set_name(mr, "system-ttm");
 	return mr;
 }
+
+bool i915_gem_object_is_shmem(struct drm_i915_gem_object *obj)
+{
+	struct intel_memory_region *mr = READ_ONCE(obj->mm.region);
+
+#ifdef CONFIG_LOCKDEP
+	if (i915_gem_object_migratable(obj) &&
+	    i915_gem_object_evictable(obj))
+		assert_object_held(obj);
+#endif
+
+	return mr && (mr->type == INTEL_MEMORY_SYSTEM &&
+		      obj->ops == &i915_gem_ttm_obj_integrated_ops);
+}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
index 73e371aa3850..f00f18db5a8b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
@@ -92,4 +92,7 @@ static inline bool i915_ttm_cpu_maps_iomem(struct ttm_resource *mem)
 	/* Once / if we support GGTT, this is also false for cached ttm_tts */
 	return mem->mem_type != I915_PL_SYSTEM;
 }
+
+struct file *i915_gem_ttm_get_filep(struct drm_i915_gem_object *obj);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 4c1de0b4a10f..93eb925c73b5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -46,10 +46,15 @@ static enum i915_cache_level
 i915_ttm_cache_level(struct drm_i915_private *i915, struct ttm_resource *res,
 		     struct ttm_tt *ttm)
 {
-	return ((HAS_LLC(i915) || HAS_SNOOP(i915)) &&
-		!i915_ttm_gtt_binds_lmem(res) &&
-		ttm->caching == ttm_cached) ? I915_CACHE_LLC :
-		I915_CACHE_NONE;
+	if (IS_DGFX(i915))
+		/* DG platforms have no LLC but can do cache snooping */
+		return (!i915_ttm_gtt_binds_lmem(res) &&
+			ttm->caching == ttm_cached) ?
+			I915_CACHE_LLC : I915_CACHE_NONE;
+	else
+		/* Cache snooping seems to be broken in some pre-LLC platforms */
+		return (HAS_LLC(i915) && ttm->caching == ttm_cached) ?
+			I915_CACHE_LLC : I915_CACHE_NONE;
 }
 
 static struct intel_memory_region *
diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
index 402f085f3a02..38e2737c6935 100644
--- a/drivers/gpu/drm/i915/gt/shmem_utils.c
+++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
@@ -10,6 +10,9 @@
 
 #include "gem/i915_gem_object.h"
 #include "gem/i915_gem_lmem.h"
+#include "gem/i915_gem_ttm.h"
+
+#include "i915_drv.h"
 #include "shmem_utils.h"
 
 struct file *shmem_create_from_data(const char *name, void *data, size_t len)
@@ -30,13 +33,44 @@ struct file *shmem_create_from_data(const char *name, void *data, size_t len)
 	return file;
 }
 
+static int shmem_flush_object(struct file *file, unsigned long num_pages)
+{
+	struct page *page;
+	unsigned long pfn;
+
+	for (pfn = 0; pfn < num_pages; pfn++) {
+		page = shmem_read_mapping_page_gfp(file->f_mapping, pfn,
+						   GFP_KERNEL);
+		if (IS_ERR(page))
+			return PTR_ERR(page);
+
+		set_page_dirty(page);
+		mark_page_accessed(page);
+		kunmap(page);
+		put_page(page);
+	}
+
+	return 0;
+}
+
 struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
 {
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct file *file;
 	void *ptr;
+	int err;
 
 	if (i915_gem_object_is_shmem(obj)) {
-		file = obj->base.filp;
+		file = i915_gem_ttm_get_filep(obj);
+		if (IS_ERR(file))
+			return file;
+
+		err = shmem_flush_object(file, obj->base.size >> PAGE_SHIFT);
+		if (err) {
+			drm_dbg(&i915->drm, "shmem_flush_object failed\n");
+			return ERR_PTR(err);
+		}
+
 		atomic_long_inc(&file->f_count);
 		return file;
 	}
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index e38d2db1c3e3..82b6684d7e60 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -309,12 +309,7 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 		instance = intel_region_map[i].instance;
 		switch (type) {
 		case INTEL_MEMORY_SYSTEM:
-			if (IS_DGFX(i915))
-				mem = i915_gem_ttm_system_setup(i915, type,
-								instance);
-			else
-				mem = i915_gem_shmem_setup(i915, type,
-							   instance);
+			mem = i915_gem_ttm_system_setup(i915, type, instance);
 			break;
 		case INTEL_MEMORY_STOLEN_LOCAL:
 			mem = i915_gem_stolen_lmem_setup(i915, type, instance);
-- 
2.36.1

