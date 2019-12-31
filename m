Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F32812DBC3
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 21:04:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 062066E270;
	Tue, 31 Dec 2019 20:04:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A1446E270
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 20:04:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19737240-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 20:03:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Dec 2019 20:03:56 +0000
Message-Id: <20191231200356.409475-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Introduce remap_io_sg() to prefault
 discontiguous objects
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

Provide a way to set the PTE within apply_page_range for discontiguous
objects in addition to the existing method of just incrementing the pfn
for a page range.

Fixes: cc662126b413 ("drm/i915: Introduce DRM_I915_GEM_MMAP_OFFSET")
Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 29 ++++--------
 drivers/gpu/drm/i915/i915_drv.h          |  3 ++
 drivers/gpu/drm/i915/i915_mm.c           | 59 ++++++++++++++++++++++++
 3 files changed, 72 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 879fff8adc48..b4adde2b8354 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -236,42 +236,33 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
 	struct vm_area_struct *area = vmf->vma;
 	struct i915_mmap_offset *mmo = area->vm_private_data;
 	struct drm_i915_gem_object *obj = mmo->obj;
-	unsigned long i, size = area->vm_end - area->vm_start;
-	bool write = area->vm_flags & VM_WRITE;
-	vm_fault_t ret = VM_FAULT_SIGBUS;
 	int err;
 
 	if (!i915_gem_object_has_struct_page(obj))
-		return ret;
+		return VM_FAULT_SIGBUS;
 
 	/* Sanity check that we allow writing into this object */
-	if (i915_gem_object_is_readonly(obj) && write)
-		return ret;
+	if (i915_gem_object_is_readonly(obj) && area->vm_flags & VM_WRITE)
+		return VM_FAULT_SIGBUS;
 
 	err = i915_gem_object_pin_pages(obj);
 	if (err)
-		return i915_error_to_vmf_fault(err);
+		goto out;
 
 	/* PTEs are revoked in obj->ops->put_pages() */
-	for (i = 0; i < size >> PAGE_SHIFT; i++) {
-		struct page *page = i915_gem_object_get_page(obj, i);
-
-		ret = vmf_insert_pfn(area,
-				     (unsigned long)area->vm_start + i * PAGE_SIZE,
-				     page_to_pfn(page));
-		if (ret != VM_FAULT_NOPAGE)
-			break;
-	}
+	err = remap_io_sg_page(area,
+			       area->vm_start, area->vm_end - area->vm_start,
+			       obj->mm.pages->sgl);
 
-	if (write) {
+	if (area->vm_flags & VM_WRITE) {
 		GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
-		obj->cache_dirty = true; /* XXX flush after PAT update? */
 		obj->mm.dirty = true;
 	}
 
 	i915_gem_object_unpin_pages(obj);
 
-	return ret;
+out:
+	return i915_error_to_vmf_fault(err);
 }
 
 static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b7f122dccdca..c2348272e211 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2015,6 +2015,9 @@ int i915_reg_read_ioctl(struct drm_device *dev, void *data,
 int remap_io_mapping(struct vm_area_struct *vma,
 		     unsigned long addr, unsigned long pfn, unsigned long size,
 		     struct io_mapping *iomap);
+int remap_io_sg_page(struct vm_area_struct *vma,
+		     unsigned long addr, unsigned long size,
+		     struct scatterlist *sgl);
 
 static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 318562ce64c0..2998689e6d42 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -33,6 +33,8 @@ struct remap_pfn {
 	struct mm_struct *mm;
 	unsigned long pfn;
 	pgprot_t prot;
+
+	struct sgt_iter sgt;
 };
 
 static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
@@ -46,6 +48,30 @@ static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
 	return 0;
 }
 
+static inline unsigned long sgt_pfn(const struct sgt_iter *sgt)
+{
+	return sgt->pfn + (sgt->curr >> PAGE_SHIFT);
+}
+
+static int remap_sg_page(pte_t *pte, unsigned long addr, void *data)
+{
+	struct remap_pfn *r = data;
+
+	if (GEM_WARN_ON(!r->sgt.pfn))
+		return -EINVAL;
+
+	/* Special PTE are not associated with any struct page */
+	set_pte_at(r->mm, addr, pte,
+		   pte_mkspecial(pfn_pte(sgt_pfn(&r->sgt), r->prot)));
+	r->pfn++; /* track insertions in case we need to unwind later */
+
+	r->sgt.curr += PAGE_SIZE;
+	if (r->sgt.curr >= r->sgt.max)
+		r->sgt = __sgt_iter(__sg_next(r->sgt.sgp), false);
+
+	return 0;
+}
+
 /**
  * remap_io_mapping - remap an IO mapping to userspace
  * @vma: user vma to map to
@@ -80,3 +106,36 @@ int remap_io_mapping(struct vm_area_struct *vma,
 
 	return 0;
 }
+
+/**
+ * remap_io_sg_page - remap an IO mapping to userspace
+ * @vma: user vma to map to
+ * @addr: target user address to start at
+ * @size: size of map area
+ * @sgl: Start sg entry
+ *
+ *  Note: this is only safe if the mm semaphore is held when called.
+ */
+int remap_io_sg_page(struct vm_area_struct *vma,
+		     unsigned long addr, unsigned long size,
+		     struct scatterlist *sgl)
+{
+	struct remap_pfn r = {
+		.mm = vma->vm_mm,
+		.prot = vma->vm_page_prot,
+		.sgt = __sgt_iter(sgl, false),
+	};
+	int err;
+
+	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
+	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
+
+	flush_cache_range(vma, addr, size);
+	err = apply_to_page_range(r.mm, addr, size, remap_sg_page, &r);
+	if (unlikely(err)) {
+		zap_vma_ptes(vma, addr, r.pfn << PAGE_SHIFT);
+		return err;
+	}
+
+	return 0;
+}
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
