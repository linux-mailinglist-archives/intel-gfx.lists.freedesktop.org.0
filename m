Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BFF21B489
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:00:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CE1C6EBFD;
	Fri, 10 Jul 2020 12:00:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21CB16EC1D
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:00:52 +0000 (UTC)
IronPort-SDR: t2LeBSqLbIY39fC/gq7LQU7OIlNj5pDdETZnHFyW1jemWqL2zFtT5mYkAUHe2bkypVvW8EA0PA
 nD8QjsFitiHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716700"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716700"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:51 -0700
IronPort-SDR: PHGytUyb9EDUqoS9WzyBWPqwpt9Glo4mWAjlbJRkHg2+CcJrBzvAyI3UkzrhNnGk7Nc5vcA9DV
 maP8TzX4CSDQ==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258039"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:48 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:39 +0100
Message-Id: <20200710115757.290984-43-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 42/60] drm/i915: PPGTT support
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All the top levels of the PPGTT now need to reside in LMEM, and for the
PTEs we get an LM bit, to signal whether the page resides in SMEM or
LMEM. For the scratch pages we opt for just keeping them SMEM.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c  |  2 +
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c  | 83 +++++++++++++++++++++------
 drivers/gpu/drm/i915/gt/intel_gtt.c   | 74 +++++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_gtt.h   | 10 +++-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c | 10 +++-
 drivers/gpu/drm/i915/i915_gem_gtt.c   |  2 +
 6 files changed, 155 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index cdc0b9c54305..9a605111c6c5 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -11,6 +11,8 @@
 #include "i915_vgpu.h"
 #include "intel_gt.h"
 
+#define kmap_atomic_px(px) kmap_atomic(px_base(px)->page)
+
 /* Write pde (index) from the page directory @pd to the page table @pt */
 static inline void gen6_write_pde(const struct gen6_ppgtt *ppgtt,
 				  const unsigned int pde,
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 699125928272..2b6ea31a8769 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -50,6 +50,21 @@ static u64 gen8_pte_encode(dma_addr_t addr,
 	return pte;
 }
 
+static u64 gen12_pte_encode(dma_addr_t addr,
+			    enum i915_cache_level level,
+			    u32 flags)
+{
+	gen8_pte_t pte = addr | _PAGE_PRESENT | _PAGE_RW;
+
+	if (unlikely(flags & PTE_READ_ONLY))
+		pte &= ~_PAGE_RW;
+
+	if (flags & PTE_LM)
+		pte |= GEN12_PPGTT_PTE_LM;
+
+	return pte;
+}
+
 static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)
 {
 	struct drm_i915_private *i915 = ppgtt->vm.i915;
@@ -187,11 +202,18 @@ static void __gen8_ppgtt_cleanup(struct i915_address_space *vm,
 static void gen8_ppgtt_cleanup(struct i915_address_space *vm)
 {
 	struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
+	struct drm_i915_private *i915 = vm->i915;
 
 	if (intel_vgpu_active(vm->i915))
 		gen8_ppgtt_notify_vgt(ppgtt, false);
 
 	__gen8_ppgtt_cleanup(vm, ppgtt->pd, gen8_pd_top_count(vm), vm->top);
+	if (HAS_LMEM(i915)) {
+		struct intel_memory_region *mem =
+			i915->mm.regions[INTEL_REGION_LMEM];
+
+		intel_memory_region_put(mem);
+	}
 	free_scratch(vm);
 }
 
@@ -237,11 +259,11 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
 			    atomic_read(&pt->used));
 			GEM_BUG_ON(!count || count >= atomic_read(&pt->used));
 
-			vaddr = kmap_atomic_px(pt);
+			vaddr = kmap_atomic_base(&pt->base);
 			memset64(vaddr + gen8_pd_index(start, 0),
 				 vm->scratch[0].encode,
 				 count);
-			kunmap_atomic(vaddr);
+			kunmap_atomic_base(&pt->base, vaddr);
 
 			atomic_sub(count, &pt->used);
 			start += count;
@@ -408,11 +430,13 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 		      u32 flags)
 {
 	struct i915_page_directory *pd;
-	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
+	struct i915_page_table *pt;
+	const gen8_pte_t pte_encode = ppgtt->vm.pte_encode(0, cache_level, flags);
 	gen8_pte_t *vaddr;
 
 	pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
-	vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
+	pt = i915_pt_entry(pd, gen8_pd_index(idx, 1));
+	vaddr = kmap_atomic_base(&pt->base);
 	do {
 		GEM_BUG_ON(iter->sg->length < I915_GTT_PAGE_SIZE);
 		write_pte(&vaddr[gen8_pd_index(idx, 0)],
@@ -439,11 +463,12 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 				pd = pdp->entry[gen8_pd_index(idx, 2)];
 			}
 
-			kunmap_atomic(vaddr);
-			vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
+			kunmap_atomic_base(&pt->base, vaddr);
+			pt = i915_pt_entry(pd, gen8_pd_index(idx, 1));
+			vaddr = kmap_atomic_base(&pt->base);
 		}
 	} while (1);
-	kunmap_atomic(vaddr);
+	kunmap_atomic_base(&pt->base, vaddr);
 
 	return idx;
 }
@@ -453,7 +478,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 				   enum i915_cache_level cache_level,
 				   u32 flags)
 {
-	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
+	const gen8_pte_t pte_encode = vma->vm->pte_encode(0, cache_level, flags);
 	u64 start = vma->node.start;
 	dma_addr_t rem = iter->sg->length;
 
@@ -464,6 +489,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			gen8_pdp_for_page_address(vma->vm, start);
 		struct i915_page_directory * const pd =
 			i915_pd_entry(pdp, __gen8_pte_index(start, 2));
+		struct i915_page_dma *base;
 		gen8_pte_t encode = pte_encode;
 		unsigned int maybe_64K = -1;
 		unsigned int page_size;
@@ -478,7 +504,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			encode |= GEN8_PDE_PS_2M;
 			page_size = I915_GTT_PAGE_SIZE_2M;
 
-			vaddr = kmap_atomic_px(pd);
+			base = &pd->pt.base;
 		} else {
 			struct i915_page_table *pt =
 				i915_pt_entry(pd, __gen8_pte_index(start, 1));
@@ -493,9 +519,11 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			     rem >= (I915_PDES - index) * I915_GTT_PAGE_SIZE))
 				maybe_64K = __gen8_pte_index(start, 1);
 
-			vaddr = kmap_atomic_px(pt);
+			base = &pt->base;
 		}
 
+		vaddr = kmap_atomic_base(base);
+
 		do {
 			GEM_BUG_ON(iter->sg->length < page_size);
 			write_pte(&vaddr[index++], encode | iter->dma);
@@ -523,7 +551,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			}
 		} while (rem >= page_size && index < I915_PDES);
 
-		kunmap_atomic(vaddr);
+		kunmap_atomic_base(base, vaddr);
 
 		/*
 		 * Is it safe to mark the 2M block as 64K? -- Either we have
@@ -537,9 +565,9 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 		      !iter->sg && IS_ALIGNED(vma->node.start +
 					      vma->node.size,
 					      I915_GTT_PAGE_SIZE_2M)))) {
-			vaddr = kmap_atomic_px(pd);
+			vaddr = kmap_atomic_base(&pd->pt.base);
 			vaddr[maybe_64K] |= GEN8_PDE_IPS_64K;
-			kunmap_atomic(vaddr);
+			kunmap_atomic_base(&pd->pt.base, vaddr);
 			page_size = I915_GTT_PAGE_SIZE_64K;
 
 			/*
@@ -552,15 +580,17 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			 * selftests.
 			 */
 			if (I915_SELFTEST_ONLY(vma->vm->scrub_64K)) {
+				struct i915_page_table *pt =
+					i915_pt_entry(pd, maybe_64K);
 				u16 i;
 
 				encode = vma->vm->scratch[0].encode;
-				vaddr = kmap_atomic_px(i915_pt_entry(pd, maybe_64K));
+				vaddr = kmap_atomic_base(&pt->base);
 
 				for (i = 1; i < index; i += 16)
 					memset64(vaddr + i, encode, 15);
 
-				kunmap_atomic(vaddr);
+				kunmap_atomic_base(&pt->base, vaddr);
 			}
 		}
 
@@ -595,6 +625,7 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
 
 static int gen8_init_scratch(struct i915_address_space *vm)
 {
+	u32 pte_flags = vm->has_read_only;
 	int ret;
 	int i;
 
@@ -617,9 +648,12 @@ static int gen8_init_scratch(struct i915_address_space *vm)
 	if (ret)
 		return ret;
 
+	if (vm->scratch[0].base.block_lm)
+		pte_flags |= PTE_LM;
+
 	vm->scratch[0].encode =
-		gen8_pte_encode(px_dma(&vm->scratch[0]),
-				I915_CACHE_LLC, vm->has_read_only);
+		vm->pte_encode(px_dma(&vm->scratch[0]),
+			       I915_CACHE_LLC, pte_flags);
 
 	for (i = 1; i <= vm->top; i++) {
 		if (unlikely(setup_page_dma(vm, px_base(&vm->scratch[i]))))
@@ -694,6 +728,7 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
  */
 struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
 {
+	struct drm_i915_private *i915 = gt->i915;
 	struct i915_ppgtt *ppgtt;
 	int err;
 
@@ -721,6 +756,11 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
 	if (IS_CHERRYVIEW(gt->i915) || IS_BROXTON(gt->i915))
 		ppgtt->vm.pt_kmap_wc = true;
 
+	if (INTEL_GEN(gt->i915) >= 12)
+		ppgtt->vm.pte_encode = gen12_pte_encode;
+	else
+		ppgtt->vm.pte_encode = gen8_pte_encode;
+
 	err = gen8_init_scratch(&ppgtt->vm);
 	if (err)
 		goto err_free;
@@ -737,13 +777,18 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
 			goto err_free_pd;
 	}
 
+	/* Paging structures are allocated in LMEM */
+	if (HAS_LMEM(i915)) {
+		struct intel_memory_region *mem =
+			i915->mm.regions[INTEL_REGION_LMEM];
+
+		intel_memory_region_get(mem);
+	}
 	ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
 	ppgtt->vm.insert_entries = gen8_ppgtt_insert;
 	ppgtt->vm.allocate_va_range = gen8_ppgtt_alloc;
 	ppgtt->vm.clear_range = gen8_ppgtt_clear;
 
-	ppgtt->vm.pte_encode = gen8_pte_encode;
-
 	if (intel_vgpu_active(gt->i915))
 		gen8_ppgtt_notify_vgt(ppgtt, true);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 2a72cce63fd9..37816936f4a8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -264,10 +264,58 @@ void clear_pages(struct i915_vma *vma)
 	memset(&vma->page_sizes, 0, sizeof(vma->page_sizes));
 }
 
+static struct i915_buddy_block *vm_alloc_lm(struct drm_i915_private *i915)
+{
+	struct intel_memory_region *mem = i915->mm.regions[INTEL_REGION_LMEM];
+
+	return __intel_memory_region_get_block_buddy(mem,
+						     mem->mm.chunk_size,
+						     I915_ALLOC_CONTIGUOUS);
+}
+
+static void vm_free_lm(struct i915_buddy_block *block)
+{
+	__intel_memory_region_put_block_buddy(block);
+}
+
+static inline dma_addr_t vm_daddr_lm(struct i915_buddy_block *block)
+{
+	struct intel_memory_region *mem = block->private;
+
+	return mem->region.start + i915_buddy_block_offset(block);
+}
+
+static inline void __iomem *vm_kmap_lm(struct i915_buddy_block *block)
+{
+	struct intel_memory_region *mem = block->private;
+
+	return io_mapping_map_atomic_wc(&mem->iomap,
+					i915_buddy_block_offset(block));
+}
+
+static inline void vm_kunmap_lm(void *vaddr)
+{
+	io_mapping_unmap_atomic(vaddr);
+}
+
 static int __setup_page_dma(struct i915_address_space *vm,
 			    struct i915_page_dma *p,
 			    gfp_t gfp)
 {
+	struct drm_i915_private *i915 = vm->i915;
+
+	if (HAS_LMEM(i915)) {
+		struct i915_buddy_block *block_lm;
+
+		block_lm = vm_alloc_lm(i915);
+		if (IS_ERR(block_lm))
+			return PTR_ERR(block_lm);
+
+		p->block_lm = block_lm;
+		p->daddr = vm_daddr_lm(block_lm);
+		return 0;
+	}
+
 	p->page = vm_alloc_page(vm, gfp | I915_GFP_ALLOW_FAIL);
 	if (unlikely(!p->page))
 		return -ENOMEM;
@@ -292,14 +340,34 @@ int setup_page_dma(struct i915_address_space *vm, struct i915_page_dma *p)
 
 void cleanup_page_dma(struct i915_address_space *vm, struct i915_page_dma *p)
 {
-	dma_unmap_page(vm->dma, p->daddr, PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
-	vm_free_page(vm, p->page);
+	if (p->block_lm) {
+		vm_free_lm(p->block_lm);
+	} else {
+		dma_unmap_page(vm->dma, p->daddr, PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
+		vm_free_page(vm, p->page);
+	}
+}
+
+void *kmap_page_dma(const struct i915_page_dma *p)
+{
+	if (p->block_lm)
+		return vm_kmap_lm(p->block_lm);
+	else
+		return kmap_atomic(p->page);
+}
+
+void kunmap_page_dma(const struct i915_page_dma *p, void *vaddr)
+{
+	if (p->block_lm)
+		vm_kunmap_lm(vaddr);
+	else
+		kunmap_atomic(vaddr);
 }
 
 void
 fill_page_dma(const struct i915_page_dma *p, const u64 val, unsigned int count)
 {
-	kunmap_atomic(memset64(kmap_atomic(p->page), val, count));
+	kunmap_atomic_base(p, memset64(kmap_atomic_base(p), val, count));
 }
 
 static void poison_scratch_page(struct page *page, unsigned long size)
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index f2b75078e05f..2f4096ce06dc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -85,6 +85,8 @@ typedef u64 gen8_pte_t;
 #define BYT_PTE_SNOOPED_BY_CPU_CACHES	REG_BIT(2)
 #define BYT_PTE_WRITEABLE		REG_BIT(1)
 
+#define GEN12_PPGTT_PTE_LM (1 << 11)
+
 /*
  * Cacheability Control is a 4-bit value. The low three bits are stored in bits
  * 3:1 of the PTE, while the fourth bit is stored in bit 11 of the PTE.
@@ -140,6 +142,7 @@ struct i915_fence_reg;
 	__for_each_sgt_daddr(__dp, __iter, __sgt, I915_GTT_PAGE_SIZE)
 
 struct i915_page_dma {
+	struct i915_buddy_block *block_lm;
 	struct page *page;
 	union {
 		dma_addr_t daddr;
@@ -280,6 +283,7 @@ struct i915_address_space {
 			  enum i915_cache_level level,
 			  u32 flags); /* Create a valid PTE */
 #define PTE_READ_ONLY	BIT(0)
+#define PTE_LM          BIT(1)
 
 	int (*allocate_va_range)(struct i915_address_space *vm,
 				 u64 start, u64 length);
@@ -520,7 +524,11 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt);
 int setup_page_dma(struct i915_address_space *vm, struct i915_page_dma *p);
 void cleanup_page_dma(struct i915_address_space *vm, struct i915_page_dma *p);
 
-#define kmap_atomic_px(px) kmap_atomic(px_base(px)->page)
+void *kmap_page_dma(const struct i915_page_dma *p);
+void kunmap_page_dma(const struct i915_page_dma *p, void *vaddr);
+
+#define kmap_atomic_base(base) kmap_page_dma(base)
+#define kunmap_atomic_base(base, vaddr) kunmap_page_dma(base, vaddr)
 
 void
 fill_page_dma(const struct i915_page_dma *p, const u64 val, unsigned int count);
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index f0862e924d11..e79c93b662c5 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -7,6 +7,8 @@
 
 #include "i915_trace.h"
 #include "intel_gtt.h"
+#include "gem/i915_gem_lmem.h"
+#include "gem/i915_gem_region.h"
 #include "gen6_ppgtt.h"
 #include "gen8_ppgtt.h"
 
@@ -14,7 +16,7 @@ struct i915_page_table *alloc_pt(struct i915_address_space *vm)
 {
 	struct i915_page_table *pt;
 
-	pt = kmalloc(sizeof(*pt), I915_GFP_ALLOW_FAIL);
+	pt = kzalloc(sizeof(*pt), I915_GFP_ALLOW_FAIL);
 	if (unlikely(!pt))
 		return ERR_PTR(-ENOMEM);
 
@@ -66,10 +68,10 @@ write_dma_entry(struct i915_page_dma * const pdma,
 		const unsigned short idx,
 		const u64 encoded_entry)
 {
-	u64 * const vaddr = kmap_atomic(pdma->page);
+	u64 * const vaddr = kmap_atomic_base(pdma);
 
 	vaddr[idx] = encoded_entry;
-	kunmap_atomic(vaddr);
+	kunmap_atomic_base(pdma, vaddr);
 }
 
 void
@@ -175,6 +177,8 @@ int ppgtt_bind_vma(struct i915_address_space *vm,
 	pte_flags = 0;
 	if (i915_gem_object_is_readonly(vma->obj))
 		pte_flags |= PTE_READ_ONLY;
+	if (i915_gem_object_is_lmem(vma->obj))
+		pte_flags |= PTE_LM;
 
 	vm->insert_entries(vm, vma, cache_level, pte_flags);
 	wmb();
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
index c5ee1567f3d1..038793178b3f 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
@@ -16,6 +16,8 @@
 #include <asm/smp.h>
 
 #include "display/intel_frontbuffer.h"
+#include "gem/i915_gem_lmem.h"
+#include "gem/i915_gem_region.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_requests.h"
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
