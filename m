Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF5E12E4FC
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 11:32:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A2E26E038;
	Thu,  2 Jan 2020 10:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 422156E038
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 10:32:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19747491-1500050 
 for multiple; Thu, 02 Jan 2020 10:31:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jan 2020 10:31:44 +0000
Message-Id: <20200102103144.1320461-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Support discontiguous lmem object
 maps
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Create a vmap for discontinguous lmem objects to support
i915_gem_object_pin_map().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c      | 40 ----------
 drivers/gpu/drm/i915/gem/i915_gem_lmem.h      |  8 --
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 74 +++++++++++--------
 .../gpu/drm/i915/gem/selftests/huge_pages.c   | 41 +++++-----
 .../drm/i915/selftests/intel_memory_region.c  | 33 ++++-----
 5 files changed, 73 insertions(+), 123 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 520cc9cac471..70543c83df06 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -16,46 +16,6 @@ const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops = {
 	.release = i915_gem_object_release_memory_region,
 };
 
-/* XXX: Time to vfunc your life up? */
-void __iomem *
-i915_gem_object_lmem_io_map_page(struct drm_i915_gem_object *obj,
-				 unsigned long n)
-{
-	resource_size_t offset;
-
-	offset = i915_gem_object_get_dma_address(obj, n);
-	offset -= obj->mm.region->region.start;
-
-	return io_mapping_map_wc(&obj->mm.region->iomap, offset, PAGE_SIZE);
-}
-
-void __iomem *
-i915_gem_object_lmem_io_map_page_atomic(struct drm_i915_gem_object *obj,
-					unsigned long n)
-{
-	resource_size_t offset;
-
-	offset = i915_gem_object_get_dma_address(obj, n);
-	offset -= obj->mm.region->region.start;
-
-	return io_mapping_map_atomic_wc(&obj->mm.region->iomap, offset);
-}
-
-void __iomem *
-i915_gem_object_lmem_io_map(struct drm_i915_gem_object *obj,
-			    unsigned long n,
-			    unsigned long size)
-{
-	resource_size_t offset;
-
-	GEM_BUG_ON(!i915_gem_object_is_contiguous(obj));
-
-	offset = i915_gem_object_get_dma_address(obj, n);
-	offset -= obj->mm.region->region.start;
-
-	return io_mapping_map_wc(&obj->mm.region->iomap, offset, size);
-}
-
 bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
 {
 	return obj->ops == &i915_gem_lmem_obj_ops;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
index 7c176b8b7d2f..fc3f15580fe3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
@@ -14,14 +14,6 @@ struct intel_memory_region;
 
 extern const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops;
 
-void __iomem *i915_gem_object_lmem_io_map(struct drm_i915_gem_object *obj,
-					  unsigned long n, unsigned long size);
-void __iomem *i915_gem_object_lmem_io_map_page(struct drm_i915_gem_object *obj,
-					       unsigned long n);
-void __iomem *
-i915_gem_object_lmem_io_map_page_atomic(struct drm_i915_gem_object *obj,
-					unsigned long n);
-
 bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);
 
 struct drm_i915_gem_object *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 75197ca696a8..b4d242f7001c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -158,9 +158,7 @@ static void __i915_gem_object_reset_page_iter(struct drm_i915_gem_object *obj)
 
 static void unmap_object(struct drm_i915_gem_object *obj, void *ptr)
 {
-	if (i915_gem_object_is_lmem(obj))
-		io_mapping_unmap((void __force __iomem *)ptr);
-	else if (is_vmalloc_addr(ptr))
+	if (is_vmalloc_addr(ptr))
 		vunmap(ptr);
 	else
 		kunmap(kmap_to_page(ptr));
@@ -236,46 +234,44 @@ int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
 	return err;
 }
 
+static inline pte_t iomap_pte(resource_size_t base,
+			      dma_addr_t offset,
+			      pgprot_t prot)
+{
+	return pte_mkspecial(pfn_pte((base + offset) >> PAGE_SHIFT, prot));
+}
+
 /* The 'mapping' part of i915_gem_object_pin_map() below */
 static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
 				 enum i915_map_type type)
 {
-	unsigned long n_pages = obj->base.size >> PAGE_SHIFT;
+	unsigned long n_pte = obj->base.size >> PAGE_SHIFT;
 	struct sg_table *sgt = obj->mm.pages;
-	struct sgt_iter sgt_iter;
-	struct page *page;
-	struct page *stack_pages[32];
-	struct page **pages = stack_pages;
-	unsigned long i = 0;
+	pte_t *stack_ptes[32];
+	pte_t **ptes = stack_ptes;
+	struct vm_struct *area;
 	pgprot_t pgprot;
-	void *addr;
-
-	if (i915_gem_object_is_lmem(obj)) {
-		void __iomem *io;
-
-		if (type != I915_MAP_WC)
-			return NULL;
 
-		io = i915_gem_object_lmem_io_map(obj, 0, obj->base.size);
-		return (void __force *)io;
-	}
+	if (!i915_gem_object_has_struct_page(obj) && type != I915_MAP_WC)
+		return NULL;
 
 	/* A single page can always be kmapped */
-	if (n_pages == 1 && type == I915_MAP_WB)
+	if (n_pte == 1 && type == I915_MAP_WB)
 		return kmap(sg_page(sgt->sgl));
 
-	if (n_pages > ARRAY_SIZE(stack_pages)) {
+	if (n_pte > ARRAY_SIZE(stack_ptes)) {
 		/* Too big for stack -- allocate temporary array instead */
-		pages = kvmalloc_array(n_pages, sizeof(*pages), GFP_KERNEL);
-		if (!pages)
+		ptes = kvmalloc_array(n_pte, sizeof(*ptes), GFP_KERNEL);
+		if (!ptes)
 			return NULL;
 	}
 
-	for_each_sgt_page(page, sgt_iter, sgt)
-		pages[i++] = page;
-
-	/* Check that we have the expected number of pages */
-	GEM_BUG_ON(i != n_pages);
+	area = alloc_vm_area(obj->base.size, ptes);
+	if (!area) {
+		if (ptes != stack_ptes)
+			kvfree(ptes);
+		return NULL;
+	}
 
 	switch (type) {
 	default:
@@ -288,12 +284,26 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
 		pgprot = pgprot_writecombine(PAGE_KERNEL_IO);
 		break;
 	}
-	addr = vmap(pages, n_pages, 0, pgprot);
 
-	if (pages != stack_pages)
-		kvfree(pages);
+	if (i915_gem_object_has_struct_page(obj)) {
+		struct sgt_iter iter;
+		struct page *page;
+
+		for_each_sgt_page(page, iter, sgt)
+			**ptes++ = mk_pte(page, pgprot);
+	} else {
+		const resource_size_t iomap = obj->mm.region->iomap.base;
+		struct sgt_iter iter;
+		dma_addr_t addr;
+
+		for_each_sgt_daddr(addr, iter, sgt)
+			**ptes++ = iomap_pte(iomap, addr, pgprot);
+	}
+
+	if (ptes != stack_ptes)
+		kvfree(ptes);
 
-	return addr;
+	return area->addr;
 }
 
 /* get, pin, and map the pages of the object into kernel space */
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 2479395c1873..249a4d24d678 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1017,38 +1017,33 @@ __cpu_check_shmem(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 	return err;
 }
 
-static int __cpu_check_lmem(struct drm_i915_gem_object *obj, u32 dword, u32 val)
+static int __cpu_check_vmap(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 {
-	unsigned long n;
+	unsigned long n = obj->base.size >> PAGE_SHIFT;
+	u32 *ptr;
 	int err;
 
-	i915_gem_object_lock(obj);
-	err = i915_gem_object_set_to_wc_domain(obj, false);
-	i915_gem_object_unlock(obj);
-	if (err)
-		return err;
-
-	err = i915_gem_object_pin_pages(obj);
+	err = i915_gem_object_wait(obj, 0, MAX_SCHEDULE_TIMEOUT);
 	if (err)
 		return err;
 
-	for (n = 0; n < obj->base.size >> PAGE_SHIFT; ++n) {
-		u32 __iomem *base;
-		u32 read_val;
-
-		base = i915_gem_object_lmem_io_map_page_atomic(obj, n);
+	ptr = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	if (IS_ERR(ptr))
+		return PTR_ERR(ptr);
 
-		read_val = ioread32(base + dword);
-		io_mapping_unmap_atomic(base);
-		if (read_val != val) {
-			pr_err("n=%lu base[%u]=%u, val=%u\n",
-			       n, dword, read_val, val);
+	ptr += dword;
+	while (n--) {
+		if (*ptr != val) {
+			pr_err("base[%u]=%08x, val=%08x\n",
+			       dword, *ptr, val);
 			err = -EINVAL;
 			break;
 		}
+
+		ptr += PAGE_SIZE / sizeof(*ptr);
 	}
 
-	i915_gem_object_unpin_pages(obj);
+	i915_gem_object_unpin_map(obj);
 	return err;
 }
 
@@ -1056,10 +1051,8 @@ static int cpu_check(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 {
 	if (i915_gem_object_has_struct_page(obj))
 		return __cpu_check_shmem(obj, dword, val);
-	else if (i915_gem_object_is_lmem(obj))
-		return __cpu_check_lmem(obj, dword, val);
-
-	return -ENODEV;
+	else
+		return __cpu_check_vmap(obj, dword, val);
 }
 
 static int __igt_write_huge(struct intel_context *ce,
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 04d0aa7b349e..3ef3620e0da5 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -270,36 +270,31 @@ static int igt_gpu_write_dw(struct intel_context *ce,
 
 static int igt_cpu_check(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 {
-	unsigned long n;
+	unsigned long n = obj->base.size >> PAGE_SHIFT;
+	u32 *ptr;
 	int err;
 
-	i915_gem_object_lock(obj);
-	err = i915_gem_object_set_to_wc_domain(obj, false);
-	i915_gem_object_unlock(obj);
-	if (err)
-		return err;
-
-	err = i915_gem_object_pin_pages(obj);
+	err = i915_gem_object_wait(obj, 0, MAX_SCHEDULE_TIMEOUT);
 	if (err)
 		return err;
 
-	for (n = 0; n < obj->base.size >> PAGE_SHIFT; ++n) {
-		u32 __iomem *base;
-		u32 read_val;
-
-		base = i915_gem_object_lmem_io_map_page_atomic(obj, n);
+	ptr = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	if (IS_ERR(ptr))
+		return PTR_ERR(ptr);
 
-		read_val = ioread32(base + dword);
-		io_mapping_unmap_atomic(base);
-		if (read_val != val) {
-			pr_err("n=%lu base[%u]=%u, val=%u\n",
-			       n, dword, read_val, val);
+	ptr += dword;
+	while (n--) {
+		if (*ptr != val) {
+			pr_err("base[%u]=%08x, val=%08x\n",
+			       dword, *ptr, val);
 			err = -EINVAL;
 			break;
 		}
+
+		ptr += PAGE_SIZE / sizeof(*ptr);
 	}
 
-	i915_gem_object_unpin_pages(obj);
+	i915_gem_object_unpin_map(obj);
 	return err;
 }
 
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
