Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F44129145
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 05:15:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3626E129;
	Mon, 23 Dec 2019 04:15:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EBA189BA5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 04:15:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Dec 2019 20:15:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,346,1571727600"; d="scan'208";a="222932455"
Received: from krchrist-mobl1.ger.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.228])
 by fmsmga001.fm.intel.com with ESMTP; 22 Dec 2019 20:15:29 -0800
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 06:15:10 +0200
Message-Id: <20191223041512.3582-1-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Introduce remap_io_sg() to
 prefault discontiguous objects
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

Provide a way to set the PTE within apply_page_range for discontiguous
objects in addition to the existing method of just incrementing the pfn
for a page range.

Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_drv.h |  3 ++
 drivers/gpu/drm/i915/i915_mm.c  | 67 +++++++++++++++++++++++++++++++++
 2 files changed, 70 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 95db8017f138..71a20387f931 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2015,6 +2015,9 @@ int i915_reg_read_ioctl(struct drm_device *dev, void *data,
 int remap_io_mapping(struct vm_area_struct *vma,
 		     unsigned long addr, unsigned long pfn, unsigned long size,
 		     struct io_mapping *iomap);
+int remap_io_sg(struct vm_area_struct *vma,
+		unsigned long addr, resource_size_t io_start, struct scatterlist *sgl,
+		unsigned long size, struct io_mapping *iomap);
 
 static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 318562ce64c0..4ae9ef470ad2 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -32,7 +32,13 @@
 struct remap_pfn {
 	struct mm_struct *mm;
 	unsigned long pfn;
+	unsigned long start_pfn;
+	unsigned long size;
 	pgprot_t prot;
+
+	resource_size_t io_start;
+	struct sg_dma_page_iter sgiter;
+	struct scatterlist *sgl;
 };
 
 static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
@@ -46,6 +52,31 @@ static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
 	return 0;
 }
 
+static int remap_io(pte_t *pte, unsigned long addr, void *data)
+{
+	struct remap_pfn *r = data;
+	struct sg_dma_page_iter *sgiter = &r->sgiter;
+	if (!r->pfn)
+		__sg_page_iter_start(&sgiter->base, r->sgl,
+				     r->size >> PAGE_SHIFT, 0);
+
+	if (__sg_page_iter_dma_next(sgiter)) {
+		dma_addr_t addr = sg_page_iter_dma_address(sgiter);
+		unsigned long pfn = (r->io_start + addr) >> PAGE_SHIFT;
+
+		if (!r->pfn)
+			r->start_pfn = pfn;
+		r->pfn = pfn;
+		/* Special PTE are not associated with any struct page */
+		set_pte_at(r->mm, addr, pte, pte_mkspecial(pfn_pte(r->pfn, r->prot)));
+
+		return 0;
+	}
+
+	GEM_WARN_ON("invalid range");
+	return -EINVAL;
+}
+
 /**
  * remap_io_mapping - remap an IO mapping to userspace
  * @vma: user vma to map to
@@ -80,3 +111,39 @@ int remap_io_mapping(struct vm_area_struct *vma,
 
 	return 0;
 }
+
+/**
+ * remap_io_sg - remap an IO mapping to userspace
+ * @vma: user vma to map to
+ * @addr: target user address to start at
+ * @io_start: IO start
+ * @sgl: Start sg entry
+ * @size: size of map area
+ * @iomap: the source io_mapping
+ *
+ *  Note: this is only safe if the mm semaphore is held when called.
+ */
+int remap_io_sg(struct vm_area_struct *vma,
+		unsigned long addr, resource_size_t io_start, struct scatterlist *sgl,
+		unsigned long size, struct io_mapping *iomap)
+{
+	struct remap_pfn r = { 0 };
+	int err;
+	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
+
+	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
+	r.mm = vma->vm_mm;
+	r.size = size;
+	r.io_start = io_start;
+	r.sgl = sgl;
+	r.prot = __pgprot((pgprot_val(iomap->prot) & _PAGE_CACHE_MASK) |
+			  (pgprot_val(vma->vm_page_prot) & ~_PAGE_CACHE_MASK));
+
+	err = apply_to_page_range(r.mm, addr, size, remap_io, &r);
+	if (unlikely(err)) {
+		zap_vma_ptes(vma, addr, (r.pfn - r.start_pfn) << PAGE_SHIFT);
+		return err;
+	}
+
+	return 0;
+}
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
