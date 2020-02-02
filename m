Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E11F914FDD7
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2020 16:39:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554F46EACD;
	Sun,  2 Feb 2020 15:39:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E8706EACD
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Feb 2020 15:39:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20091345-1500050 
 for multiple; Sun, 02 Feb 2020 15:39:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  2 Feb 2020 15:39:34 +0000
Message-Id: <20200202153934.3899472-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Wean off drm_pci_alloc/drm_pci_free
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm_pci_alloc and drm_pci_free are just very thin wrappers around
dma_alloc_coherent, with a note that we should be removing them.
Furthermore since

commit de09d31dd38a50fdce106c15abd68432eebbd014
Author: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
Date:   Fri Jan 15 16:51:42 2016 -0800

    page-flags: define PG_reserved behavior on compound pages

    As far as I can see there's no users of PG_reserved on compound pages.
    Let's use PF_NO_COMPOUND here.

drm_pci_alloc has been declared broken since it mixes GFP_COMP and
SetPageReserved. Avoid this conflict by weaning ourselves off using the
abstraction and using the dma functions directly.

Reported-by: Taketo Kabe
Closes: https://gitlab.freedesktop.org/drm/intel/issues/1027
Fixes: de09d31dd38a ("page-flags: define PG_reserved behavior on compound pages")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: <stable@vger.kernel.org> # v4.5+
---
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 -
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      | 98 ++++++++++---------
 drivers/gpu/drm/i915/i915_gem.c               |  8 +-
 4 files changed, 55 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b0af37fb6d4a..1f584263aa97 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11234,7 +11234,7 @@ static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
 	u32 base;
 
 	if (INTEL_INFO(dev_priv)->display.cursor_needs_physical)
-		base = obj->phys_handle->busaddr;
+		base = sg_dma_address(obj->mm.pages->sgl);
 	else
 		base = intel_plane_ggtt_offset(plane_state);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index f64ad77e6b1e..c2174da35bb0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -285,9 +285,6 @@ struct drm_i915_gem_object {
 
 		void *gvt_info;
 	};
-
-	/** for phys allocated objects */
-	struct drm_dma_handle *phys_handle;
 };
 
 static inline struct drm_i915_gem_object *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index b1b7c1b3038a..b07bb40edd5a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -22,88 +22,87 @@
 static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
 {
 	struct address_space *mapping = obj->base.filp->f_mapping;
-	struct drm_dma_handle *phys;
-	struct sg_table *st;
 	struct scatterlist *sg;
-	char *vaddr;
+	struct sg_table *st;
+	dma_addr_t dma;
+	void *vaddr;
+	void *dst;
 	int i;
-	int err;
 
 	if (WARN_ON(i915_gem_object_needs_bit17_swizzle(obj)))
 		return -EINVAL;
 
-	/* Always aligning to the object size, allows a single allocation
+	/*
+	 * Always aligning to the object size, allows a single allocation
 	 * to handle all possible callers, and given typical object sizes,
 	 * the alignment of the buddy allocation will naturally match.
 	 */
-	phys = drm_pci_alloc(obj->base.dev,
-			     roundup_pow_of_two(obj->base.size),
-			     roundup_pow_of_two(obj->base.size));
-	if (!phys)
+	vaddr = dma_alloc_coherent(&obj->base.dev->pdev->dev,
+				   roundup_pow_of_two(obj->base.size),
+				   &dma, GFP_KERNEL);
+	if (!vaddr)
 		return -ENOMEM;
 
-	vaddr = phys->vaddr;
+	st = kmalloc(sizeof(*st), GFP_KERNEL);
+	if (!st)
+		goto err_pci;
+
+	if (sg_alloc_table(st, 1, GFP_KERNEL))
+		goto err_st;
+
+	sg = st->sgl;
+	sg->offset = 0;
+	sg->length = obj->base.size;
+
+	sg_assign_page(sg, (struct page *)vaddr);
+	sg_dma_address(sg) = dma;
+	sg_dma_len(sg) = obj->base.size;
+
+	dst = vaddr;
 	for (i = 0; i < obj->base.size / PAGE_SIZE; i++) {
 		struct page *page;
-		char *src;
+		void *src;
 
 		page = shmem_read_mapping_page(mapping, i);
-		if (IS_ERR(page)) {
-			err = PTR_ERR(page);
-			goto err_phys;
-		}
+		if (IS_ERR(page))
+			goto err_st;
 
 		src = kmap_atomic(page);
-		memcpy(vaddr, src, PAGE_SIZE);
-		drm_clflush_virt_range(vaddr, PAGE_SIZE);
+		memcpy(dst, src, PAGE_SIZE);
+		drm_clflush_virt_range(dst, PAGE_SIZE);
 		kunmap_atomic(src);
 
 		put_page(page);
-		vaddr += PAGE_SIZE;
+		dst += PAGE_SIZE;
 	}
 
 	intel_gt_chipset_flush(&to_i915(obj->base.dev)->gt);
 
-	st = kmalloc(sizeof(*st), GFP_KERNEL);
-	if (!st) {
-		err = -ENOMEM;
-		goto err_phys;
-	}
-
-	if (sg_alloc_table(st, 1, GFP_KERNEL)) {
-		kfree(st);
-		err = -ENOMEM;
-		goto err_phys;
-	}
-
-	sg = st->sgl;
-	sg->offset = 0;
-	sg->length = obj->base.size;
-
-	sg_dma_address(sg) = phys->busaddr;
-	sg_dma_len(sg) = obj->base.size;
-
-	obj->phys_handle = phys;
-
 	__i915_gem_object_set_pages(obj, st, sg->length);
 
 	return 0;
 
-err_phys:
-	drm_pci_free(obj->base.dev, phys);
-
-	return err;
+err_st:
+	kfree(st);
+err_pci:
+	dma_free_coherent(&obj->base.dev->pdev->dev,
+			  roundup_pow_of_two(obj->base.size),
+			  vaddr, dma);
+	return -ENOMEM;
 }
 
 static void
 i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
 			       struct sg_table *pages)
 {
+	dma_addr_t dma = sg_dma_address(pages->sgl);
+	void *vaddr = sg_page(pages->sgl);
+
 	__i915_gem_object_release_shmem(obj, pages, false);
 
 	if (obj->mm.dirty) {
 		struct address_space *mapping = obj->base.filp->f_mapping;
-		char *vaddr = obj->phys_handle->vaddr;
+		void *src = vaddr;
 		int i;
 
 		for (i = 0; i < obj->base.size / PAGE_SIZE; i++) {
@@ -115,15 +114,16 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
 				continue;
 
 			dst = kmap_atomic(page);
-			drm_clflush_virt_range(vaddr, PAGE_SIZE);
-			memcpy(dst, vaddr, PAGE_SIZE);
+			drm_clflush_virt_range(src, PAGE_SIZE);
+			memcpy(dst, src, PAGE_SIZE);
 			kunmap_atomic(dst);
 
 			set_page_dirty(page);
 			if (obj->mm.madv == I915_MADV_WILLNEED)
 				mark_page_accessed(page);
 			put_page(page);
-			vaddr += PAGE_SIZE;
+
+			src += PAGE_SIZE;
 		}
 		obj->mm.dirty = false;
 	}
@@ -131,7 +131,9 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
 	sg_free_table(pages);
 	kfree(pages);
 
-	drm_pci_free(obj->base.dev, obj->phys_handle);
+	dma_free_coherent(&obj->base.dev->pdev->dev,
+			  roundup_pow_of_two(obj->base.size),
+			  vaddr, dma);
 }
 
 static void phys_release(struct drm_i915_gem_object *obj)
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 7245e056ce77..a712e60b016a 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -180,7 +180,7 @@ i915_gem_phys_pwrite(struct drm_i915_gem_object *obj,
 		     struct drm_i915_gem_pwrite *args,
 		     struct drm_file *file)
 {
-	void *vaddr = obj->phys_handle->vaddr + args->offset;
+	void *vaddr = sg_page(obj->mm.pages->sgl) + args->offset;
 	char __user *user_data = u64_to_user_ptr(args->data_ptr);
 
 	/*
@@ -844,10 +844,10 @@ i915_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 		ret = i915_gem_gtt_pwrite_fast(obj, args);
 
 	if (ret == -EFAULT || ret == -ENOSPC) {
-		if (obj->phys_handle)
-			ret = i915_gem_phys_pwrite(obj, args, file);
-		else
+		if (i915_gem_object_has_struct_page(obj))
 			ret = i915_gem_shmem_pwrite(obj, args);
+		else
+			ret = i915_gem_phys_pwrite(obj, args, file);
 	}
 
 	i915_gem_object_unpin_pages(obj);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
