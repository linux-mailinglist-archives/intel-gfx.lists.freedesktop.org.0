Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1E41260BB
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 12:21:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 695ED6E0C4;
	Thu, 19 Dec 2019 11:21:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCF816E0C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 11:21:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 03:21:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="248276537"
Received: from klipka-mobl.ger.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.229])
 by fmsmga002.fm.intel.com with ESMTP; 19 Dec 2019 03:21:35 -0800
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 13:21:20 +0200
Message-Id: <20191219112122.4892-1-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: allow prefaulting discontiguous
 objects in remap_io_mapping()
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

Provide a way to set the PTE of the physical address of kernel memory in
addition to just incrementing the pfn for a page range.

Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c |  1 +
 drivers/gpu/drm/i915/i915_drv.h          |  4 +++-
 drivers/gpu/drm/i915/i915_mm.c           | 17 ++++++++++++++---
 3 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 879fff8adc48..aa5d6623d86c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -360,6 +360,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 			       area->vm_start + (vma->ggtt_view.partial.offset << PAGE_SHIFT),
 			       (ggtt->gmadr.start + vma->node.start) >> PAGE_SHIFT,
 			       min_t(u64, vma->size, area->vm_end - area->vm_start),
+			       NULL,
 			       &ggtt->iomap);
 	if (ret)
 		goto err_fence;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0781b6326b8c..5ee0fe4d492b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2015,9 +2015,11 @@ int i915_reg_read_ioctl(struct drm_device *dev, void *data,
 	intel_de_wait_for_register((dev_priv_), (reg_), (mask_), 0, (timeout_))
 
 /* i915_mm.c */
+typedef unsigned long (*io_pfn_t)(struct drm_i915_gem_object *obj,
+				  unsigned long n);
 int remap_io_mapping(struct vm_area_struct *vma,
 		     unsigned long addr, unsigned long pfn, unsigned long size,
-		     struct io_mapping *iomap);
+		     io_pfn_t fn, struct io_mapping *iomap);
 
 static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 318562ce64c0..86a73444bed4 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -32,7 +32,11 @@
 struct remap_pfn {
 	struct mm_struct *mm;
 	unsigned long pfn;
+	unsigned long start_pfn;
 	pgprot_t prot;
+
+	io_pfn_t fn;
+	struct drm_i915_gem_object *obj;
 };
 
 static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
@@ -41,7 +45,10 @@ static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
 
 	/* Special PTE are not associated with any struct page */
 	set_pte_at(r->mm, addr, pte, pte_mkspecial(pfn_pte(r->pfn, r->prot)));
-	r->pfn++;
+	if (r->fn)
+		r->pfn = r->fn(r->obj, r->start_pfn++);
+	else
+		r->pfn++;
 
 	return 0;
 }
@@ -52,15 +59,17 @@ static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
  * @addr: target user address to start at
  * @pfn: physical address of kernel memory
  * @size: size of map area
+ * @fn: if provided, the function translates each increment of @pfn to io pfn
  * @iomap: the source io_mapping
  *
  *  Note: this is only safe if the mm semaphore is held when called.
  */
 int remap_io_mapping(struct vm_area_struct *vma,
 		     unsigned long addr, unsigned long pfn, unsigned long size,
-		     struct io_mapping *iomap)
+		     io_pfn_t fn, struct io_mapping *iomap)
 {
-	struct remap_pfn r;
+	struct remap_pfn r = { 0 };
+	struct i915_mmap_offset *priv = vma->vm_private_data;
 	int err;
 
 #define EXPECTED_FLAGS (VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP)
@@ -69,6 +78,8 @@ int remap_io_mapping(struct vm_area_struct *vma,
 	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
 	r.mm = vma->vm_mm;
 	r.pfn = pfn;
+	r.fn = fn;
+	r.obj = priv->obj;
 	r.prot = __pgprot((pgprot_val(iomap->prot) & _PAGE_CACHE_MASK) |
 			  (pgprot_val(vma->vm_page_prot) & ~_PAGE_CACHE_MASK));
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
