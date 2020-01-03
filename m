Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EC112FE0B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 21:41:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09196E347;
	Fri,  3 Jan 2020 20:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B399C6E343
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 20:41:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19764664-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Jan 2020 20:41:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jan 2020 20:41:35 +0000
Message-Id: <20200103204137.2131004-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915/gem: Extend mmap support for lmem
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

From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>

Local memory objects are similar to our usual scatterlist, but instead
of using the struct page stored therein, we need to use the
sg->dma_address.

Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 21 ++++++++++-----
 drivers/gpu/drm/i915/i915_drv.h          |  6 ++---
 drivers/gpu/drm/i915/i915_mm.c           | 34 +++++++++++++++---------
 3 files changed, 39 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index ed0d9a2f0e7b..37efd95c086d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -217,6 +217,7 @@ static vm_fault_t i915_error_to_vmf_fault(int err)
 
 	case -ENOSPC: /* shmemfs allocation failure */
 	case -ENOMEM: /* our allocation failure */
+	case -ENXIO:
 		return VM_FAULT_OOM;
 
 	case 0:
@@ -237,11 +238,9 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
 	struct vm_area_struct *area = vmf->vma;
 	struct i915_mmap_offset *mmo = area->vm_private_data;
 	struct drm_i915_gem_object *obj = mmo->obj;
+	resource_size_t iomap;
 	int err;
 
-	if (unlikely(!i915_gem_object_has_struct_page(obj)))
-		return VM_FAULT_SIGBUS;
-
 	/* Sanity check that we allow writing into this object */
 	if (unlikely(i915_gem_object_is_readonly(obj) &&
 		     area->vm_flags & VM_WRITE))
@@ -251,10 +250,16 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
 	if (err)
 		goto out;
 
+	iomap = -1;
+	if (!i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_STRUCT_PAGE)) {
+		iomap = obj->mm.region->iomap.base;
+		iomap -= obj->mm.region->region.start;
+	}
+
 	/* PTEs are revoked in obj->ops->put_pages() */
-	err = remap_io_sg_page(area,
-			       area->vm_start, area->vm_end - area->vm_start,
-			       obj->mm.pages->sgl);
+	err = remap_io_sg(area,
+			  area->vm_start, area->vm_end - area->vm_start,
+			  obj->mm.pages->sgl, iomap);
 
 	if (area->vm_flags & VM_WRITE) {
 		GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
@@ -553,7 +558,9 @@ __assign_mmap_offset(struct drm_file *file,
 	}
 
 	if (mmap_type != I915_MMAP_TYPE_GTT &&
-	    !i915_gem_object_has_struct_page(obj)) {
+	    !i915_gem_object_type_has(obj,
+				      I915_GEM_OBJECT_HAS_STRUCT_PAGE |
+				      I915_GEM_OBJECT_HAS_IOMEM)) {
 		err = -ENODEV;
 		goto out;
 	}
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2ee9f57d165d..50181113dd2b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2027,9 +2027,9 @@ int i915_reg_read_ioctl(struct drm_device *dev, void *data,
 int remap_io_mapping(struct vm_area_struct *vma,
 		     unsigned long addr, unsigned long pfn, unsigned long size,
 		     struct io_mapping *iomap);
-int remap_io_sg_page(struct vm_area_struct *vma,
-		     unsigned long addr, unsigned long size,
-		     struct scatterlist *sgl);
+int remap_io_sg(struct vm_area_struct *vma,
+		unsigned long addr, unsigned long size,
+		struct scatterlist *sgl, resource_size_t iobase);
 
 static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 2998689e6d42..b6376b25ef63 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -35,6 +35,7 @@ struct remap_pfn {
 	pgprot_t prot;
 
 	struct sgt_iter sgt;
+	resource_size_t iobase;
 };
 
 static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
@@ -48,12 +49,17 @@ static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
 	return 0;
 }
 
-static inline unsigned long sgt_pfn(const struct sgt_iter *sgt)
+#define use_dma(io) ((io) != -1)
+
+static inline unsigned long sgt_pfn(const struct remap_pfn *r)
 {
-	return sgt->pfn + (sgt->curr >> PAGE_SHIFT);
+	if (use_dma(r->iobase))
+		return (r->sgt.dma + r->sgt.curr + r->iobase) >> PAGE_SHIFT;
+	else
+		return r->sgt.pfn + (r->sgt.curr >> PAGE_SHIFT);
 }
 
-static int remap_sg_page(pte_t *pte, unsigned long addr, void *data)
+static int remap_sg(pte_t *pte, unsigned long addr, void *data)
 {
 	struct remap_pfn *r = data;
 
@@ -62,12 +68,12 @@ static int remap_sg_page(pte_t *pte, unsigned long addr, void *data)
 
 	/* Special PTE are not associated with any struct page */
 	set_pte_at(r->mm, addr, pte,
-		   pte_mkspecial(pfn_pte(sgt_pfn(&r->sgt), r->prot)));
+		   pte_mkspecial(pfn_pte(sgt_pfn(r), r->prot)));
 	r->pfn++; /* track insertions in case we need to unwind later */
 
 	r->sgt.curr += PAGE_SIZE;
 	if (r->sgt.curr >= r->sgt.max)
-		r->sgt = __sgt_iter(__sg_next(r->sgt.sgp), false);
+		r->sgt = __sgt_iter(__sg_next(r->sgt.sgp), use_dma(r->iobase));
 
 	return 0;
 }
@@ -108,30 +114,34 @@ int remap_io_mapping(struct vm_area_struct *vma,
 }
 
 /**
- * remap_io_sg_page - remap an IO mapping to userspace
+ * remap_io_sg - remap an IO mapping to userspace
  * @vma: user vma to map to
  * @addr: target user address to start at
  * @size: size of map area
  * @sgl: Start sg entry
+ * @iobase: Use stored dma address offset by this address or pfn if -1
  *
  *  Note: this is only safe if the mm semaphore is held when called.
  */
-int remap_io_sg_page(struct vm_area_struct *vma,
-		     unsigned long addr, unsigned long size,
-		     struct scatterlist *sgl)
+int remap_io_sg(struct vm_area_struct *vma,
+		unsigned long addr, unsigned long size,
+		struct scatterlist *sgl, resource_size_t iobase)
 {
 	struct remap_pfn r = {
 		.mm = vma->vm_mm,
 		.prot = vma->vm_page_prot,
-		.sgt = __sgt_iter(sgl, false),
+		.sgt = __sgt_iter(sgl, use_dma(iobase)),
+		.iobase = iobase,
 	};
 	int err;
 
 	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
 	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
 
-	flush_cache_range(vma, addr, size);
-	err = apply_to_page_range(r.mm, addr, size, remap_sg_page, &r);
+	if (!use_dma(iobase))
+		flush_cache_range(vma, addr, size);
+
+	err = apply_to_page_range(r.mm, addr, size, remap_sg, &r);
 	if (unlikely(err)) {
 		zap_vma_ptes(vma, addr, r.pfn << PAGE_SHIFT);
 		return err;
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
