Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7162E12DC4B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 00:37:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99C586E283;
	Tue, 31 Dec 2019 23:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E440C89FEC
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 23:37:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19737842-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 23:36:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Dec 2019 23:36:56 +0000
Message-Id: <20191231233657.523408-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/gem: Extend mmap support for lmem
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
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 16 +++++++++-------
 drivers/gpu/drm/i915/i915_drv.h          |  6 +++---
 drivers/gpu/drm/i915/i915_mm.c           | 23 ++++++++++++++---------
 3 files changed, 26 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 905527ce2999..4caf7d750c34 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -216,6 +216,7 @@ static vm_fault_t i915_error_to_vmf_fault(int err)
 
 	case -ENOSPC: /* shmemfs allocation failure */
 	case -ENOMEM: /* our allocation failure */
+	case -ENXIO:
 		return VM_FAULT_OOM;
 
 	case 0:
@@ -236,11 +237,10 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
 	struct vm_area_struct *area = vmf->vma;
 	struct i915_mmap_offset *mmo = area->vm_private_data;
 	struct drm_i915_gem_object *obj = mmo->obj;
+	bool use_dma =
+		!i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_STRUCT_PAGE);
 	int err;
 
-	if (unlikely(!i915_gem_object_has_struct_page(obj)))
-		return VM_FAULT_SIGBUS;
-
 	/* Sanity check that we allow writing into this object */
 	if (unlikely(i915_gem_object_is_readonly(obj) &&
 		     area->vm_flags & VM_WRITE))
@@ -251,9 +251,9 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
 		goto out;
 
 	/* PTEs are revoked in obj->ops->put_pages() */
-	err = remap_io_sg_page(area,
-			       area->vm_start, area->vm_end - area->vm_start,
-			       obj->mm.pages->sgl);
+	err = remap_io_sg(area,
+			  area->vm_start, area->vm_end - area->vm_start,
+			  obj->mm.pages->sgl, use_dma);
 
 	if (area->vm_flags & VM_WRITE) {
 		GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
@@ -552,7 +552,9 @@ __assign_mmap_offset(struct drm_file *file,
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
index c2348272e211..5361a3a2a659 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2015,9 +2015,9 @@ int i915_reg_read_ioctl(struct drm_device *dev, void *data,
 int remap_io_mapping(struct vm_area_struct *vma,
 		     unsigned long addr, unsigned long pfn, unsigned long size,
 		     struct io_mapping *iomap);
-int remap_io_sg_page(struct vm_area_struct *vma,
-		     unsigned long addr, unsigned long size,
-		     struct scatterlist *sgl);
+int remap_io_sg(struct vm_area_struct *vma,
+		unsigned long addr, unsigned long size,
+		struct scatterlist *sgl, bool use_dma);
 
 static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 2998689e6d42..cb891914ae21 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -35,6 +35,7 @@ struct remap_pfn {
 	pgprot_t prot;
 
 	struct sgt_iter sgt;
+	bool use_dma;
 };
 
 static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
@@ -53,7 +54,7 @@ static inline unsigned long sgt_pfn(const struct sgt_iter *sgt)
 	return sgt->pfn + (sgt->curr >> PAGE_SHIFT);
 }
 
-static int remap_sg_page(pte_t *pte, unsigned long addr, void *data)
+static int remap_sg(pte_t *pte, unsigned long addr, void *data)
 {
 	struct remap_pfn *r = data;
 
@@ -67,7 +68,7 @@ static int remap_sg_page(pte_t *pte, unsigned long addr, void *data)
 
 	r->sgt.curr += PAGE_SIZE;
 	if (r->sgt.curr >= r->sgt.max)
-		r->sgt = __sgt_iter(__sg_next(r->sgt.sgp), false);
+		r->sgt = __sgt_iter(__sg_next(r->sgt.sgp), r->use_dma);
 
 	return 0;
 }
@@ -108,30 +109,34 @@ int remap_io_mapping(struct vm_area_struct *vma,
 }
 
 /**
- * remap_io_sg_page - remap an IO mapping to userspace
+ * remap_io_sg- remap an IO mapping to userspace
  * @vma: user vma to map to
  * @addr: target user address to start at
  * @size: size of map area
  * @sgl: Start sg entry
+ * @use_dma: Use stored dma address or pfn
  *
  *  Note: this is only safe if the mm semaphore is held when called.
  */
-int remap_io_sg_page(struct vm_area_struct *vma,
-		     unsigned long addr, unsigned long size,
-		     struct scatterlist *sgl)
+int remap_io_sg(struct vm_area_struct *vma,
+		unsigned long addr, unsigned long size,
+		struct scatterlist *sgl, bool use_dma)
 {
 	struct remap_pfn r = {
 		.mm = vma->vm_mm,
 		.prot = vma->vm_page_prot,
-		.sgt = __sgt_iter(sgl, false),
+		.sgt = __sgt_iter(sgl, use_dma),
+		.use_dma = use_dma,
 	};
 	int err;
 
 	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
 	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
 
-	flush_cache_range(vma, addr, size);
-	err = apply_to_page_range(r.mm, addr, size, remap_sg_page, &r);
+	if (!use_dma)
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
