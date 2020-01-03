Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F24E12FD56
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 21:00:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20DB46E339;
	Fri,  3 Jan 2020 20:00:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C2EE89722
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 20:00:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 12:00:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,391,1571727600"; d="scan'208";a="232201170"
Received: from eyonkov-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.22.82])
 by orsmga002.jf.intel.com with ESMTP; 03 Jan 2020 12:00:30 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jan 2020 20:00:29 +0000
Message-Id: <20200103200030.334215-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200103200030.334215-1-matthew.auld@intel.com>
References: <20200103200030.334215-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gtt: refactor the storage
 assumptions around paging structures
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

We currently assume we have struct pages for the backing storage of our
paging structures, however in the future we may also want to support
allocating storage from non-page backed memory, while still being able
to map it into the kernel address space for CPU access.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_gem_gtt.c | 109 +++++++++++++++++++++-------
 drivers/gpu/drm/i915/i915_gem_gtt.h |   7 ++
 2 files changed, 88 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
index 1efe58ad0ce9..48b3b9e681c9 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
@@ -588,11 +588,20 @@ static void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	INIT_LIST_HEAD(&vm->bound_list);
 }
 
-static int __setup_page_dma(struct i915_address_space *vm,
-			    struct i915_page_dma *p,
-			    gfp_t gfp)
+static void *kmap_page_dma_system(const struct i915_page_dma *p)
+{
+	return kmap_atomic(p->page);
+}
+
+static void kunmap_page_dma_system(void *vaddr)
+{
+	kunmap_atomic(vaddr);
+}
+
+static int setup_page_dma_system(struct i915_address_space *vm,
+				 struct i915_page_dma *p)
 {
-	p->page = vm_alloc_page(vm, gfp | I915_GFP_ALLOW_FAIL);
+	p->page = vm_alloc_page(vm, __GFP_HIGHMEM | I915_GFP_ALLOW_FAIL);
 	if (unlikely(!p->page))
 		return -ENOMEM;
 
@@ -606,28 +615,54 @@ static int __setup_page_dma(struct i915_address_space *vm,
 		return -ENOMEM;
 	}
 
+	p->kmap = kmap_page_dma_system;
+	p->kunmap = kunmap_page_dma_system;
+
 	return 0;
 }
 
+static void cleanup_page_dma_system(struct i915_address_space *vm,
+				    struct i915_page_dma *p)
+{
+	dma_unmap_page(vm->dma, p->daddr, PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
+	vm_free_page(vm, p->page);
+}
+
+static int __setup_page_dma(struct i915_address_space *vm,
+			    struct i915_page_dma *p)
+{
+	return vm->setup_page_dma(vm, p);
+}
+
 static int setup_page_dma(struct i915_address_space *vm,
 			  struct i915_page_dma *p)
 {
-	return __setup_page_dma(vm, p, __GFP_HIGHMEM);
+	return __setup_page_dma(vm, p);
 }
 
 static void cleanup_page_dma(struct i915_address_space *vm,
 			     struct i915_page_dma *p)
 {
-	dma_unmap_page(vm->dma, p->daddr, PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
-	vm_free_page(vm, p->page);
+	vm->cleanup_page_dma(vm, p);
 }
 
-#define kmap_atomic_px(px) kmap_atomic(px_base(px)->page)
+static void kunmap_page_dma(const struct i915_page_dma *p, void *vaddr)
+{
+	p->kunmap(vaddr);
+}
+
+static void *kmap_page_dma(const struct i915_page_dma *p)
+{
+	return p->kmap(p);
+}
+
+#define kmap_atomic_px(px) kmap_page_dma(px_base(px))
+#define kunmap_atomic_px(px, vaddr) kunmap_page_dma(px_base(px), vaddr)
 
 static void
 fill_page_dma(const struct i915_page_dma *p, const u64 val, unsigned int count)
 {
-	kunmap_atomic(memset64(kmap_atomic(p->page), val, count));
+	kunmap_page_dma(p, memset64(kmap_page_dma(p), val, count));
 }
 
 #define fill_px(px, v) fill_page_dma(px_base(px), (v), PAGE_SIZE / sizeof(u64))
@@ -728,7 +763,7 @@ static struct i915_page_table *alloc_pt(struct i915_address_space *vm)
 {
 	struct i915_page_table *pt;
 
-	pt = kmalloc(sizeof(*pt), I915_GFP_ALLOW_FAIL);
+	pt = kzalloc(sizeof(*pt), I915_GFP_ALLOW_FAIL);
 	if (unlikely(!pt))
 		return ERR_PTR(-ENOMEM);
 
@@ -782,10 +817,10 @@ write_dma_entry(struct i915_page_dma * const pdma,
 		const unsigned short idx,
 		const u64 encoded_entry)
 {
-	u64 * const vaddr = kmap_atomic(pdma->page);
+	u64 * const vaddr = kmap_page_dma(pdma);
 
 	vaddr[idx] = encoded_entry;
-	kunmap_atomic(vaddr);
+	kunmap_page_dma(pdma, vaddr);
 }
 
 static inline void
@@ -1017,7 +1052,7 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
 			memset64(vaddr + gen8_pd_index(start, 0),
 				 vm->scratch[0].encode,
 				 count);
-			kunmap_atomic(vaddr);
+			kunmap_atomic_px(pt, vaddr);
 
 			atomic_sub(count, &pt->used);
 			start += count;
@@ -1184,10 +1219,12 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 {
 	struct i915_page_directory *pd;
 	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
+	struct i915_page_table *pt;
 	gen8_pte_t *vaddr;
 
 	pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
-	vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
+	pt = i915_pt_entry(pd, gen8_pd_index(idx, 1));
+	vaddr = kmap_atomic_px(pt);
 	do {
 		vaddr[gen8_pd_index(idx, 0)] = pte_encode | iter->dma;
 
@@ -1212,11 +1249,12 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 				pd = pdp->entry[gen8_pd_index(idx, 2)];
 			}
 
-			kunmap_atomic(vaddr);
-			vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
+			kunmap_atomic_px(pt, vaddr);
+			pt = i915_pt_entry(pd, gen8_pd_index(idx, 1));
+			vaddr = kmap_atomic_px(pt);
 		}
 	} while (1);
-	kunmap_atomic(vaddr);
+	kunmap_atomic_px(pt, vaddr);
 
 	return idx;
 }
@@ -1237,6 +1275,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			gen8_pdp_for_page_address(vma->vm, start);
 		struct i915_page_directory * const pd =
 			i915_pd_entry(pdp, __gen8_pte_index(start, 2));
+		struct i915_page_table *base;
 		gen8_pte_t encode = pte_encode;
 		unsigned int maybe_64K = -1;
 		unsigned int page_size;
@@ -1251,7 +1290,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			encode |= GEN8_PDE_PS_2M;
 			page_size = I915_GTT_PAGE_SIZE_2M;
 
-			vaddr = kmap_atomic_px(pd);
+			base = &pd->pt;
 		} else {
 			struct i915_page_table *pt =
 				i915_pt_entry(pd, __gen8_pte_index(start, 1));
@@ -1266,9 +1305,11 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			     rem >= (I915_PDES - index) * I915_GTT_PAGE_SIZE))
 				maybe_64K = __gen8_pte_index(start, 1);
 
-			vaddr = kmap_atomic_px(pt);
+			base = pt;
 		}
 
+		vaddr = kmap_atomic_px(base);
+
 		do {
 			GEM_BUG_ON(iter->sg->length < page_size);
 			vaddr[index++] = encode | iter->dma;
@@ -1296,7 +1337,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			}
 		} while (rem >= page_size && index < I915_PDES);
 
-		kunmap_atomic(vaddr);
+		kunmap_atomic_px(base, vaddr);
 
 		/*
 		 * Is it safe to mark the 2M block as 64K? -- Either we have
@@ -1312,7 +1353,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 					      I915_GTT_PAGE_SIZE_2M)))) {
 			vaddr = kmap_atomic_px(pd);
 			vaddr[maybe_64K] |= GEN8_PDE_IPS_64K;
-			kunmap_atomic(vaddr);
+			kunmap_atomic_px(pd, vaddr);
 			page_size = I915_GTT_PAGE_SIZE_64K;
 
 			/*
@@ -1325,15 +1366,17 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			 * selftests.
 			 */
 			if (I915_SELFTEST_ONLY(vma->vm->scrub_64K)) {
+				struct i915_page_table *pt =
+						i915_pt_entry(pd, maybe_64K);
 				u16 i;
 
 				encode = vma->vm->scratch[0].encode;
-				vaddr = kmap_atomic_px(i915_pt_entry(pd, maybe_64K));
+				vaddr = kmap_atomic_px(pt);
 
 				for (i = 1; i < index; i += 16)
 					memset64(vaddr + i, encode, 15);
 
-				kunmap_atomic(vaddr);
+				kunmap_atomic_px(pt, vaddr);
 			}
 		}
 
@@ -1510,6 +1553,9 @@ static struct i915_ppgtt *gen8_ppgtt_create(struct drm_i915_private *i915)
 	if (IS_CHERRYVIEW(i915) || IS_BROXTON(i915))
 		ppgtt->vm.pt_kmap_wc = true;
 
+	ppgtt->vm.setup_page_dma = setup_page_dma_system;
+	ppgtt->vm.cleanup_page_dma = cleanup_page_dma_system;
+
 	err = gen8_init_scratch(&ppgtt->vm);
 	if (err)
 		goto err_free;
@@ -1644,7 +1690,7 @@ static void gen6_ppgtt_clear_range(struct i915_address_space *vm,
 
 		vaddr = kmap_atomic_px(pt);
 		memset32(vaddr + pte, scratch_pte, count);
-		kunmap_atomic(vaddr);
+		kunmap_atomic_px(pt, vaddr);
 
 		pte = 0;
 	}
@@ -1662,11 +1708,13 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
 	unsigned act_pte = first_entry % GEN6_PTES;
 	const u32 pte_encode = vm->pte_encode(0, cache_level, flags);
 	struct sgt_dma iter = sgt_dma(vma);
+	struct i915_page_table *pt;
 	gen6_pte_t *vaddr;
 
 	GEM_BUG_ON(pd->entry[act_pt] == &vm->scratch[1]);
 
-	vaddr = kmap_atomic_px(i915_pt_entry(pd, act_pt));
+	pt = i915_pt_entry(pd, act_pt);
+	vaddr = kmap_atomic_px(pt);
 	do {
 		vaddr[act_pte] = pte_encode | GEN6_PTE_ADDR_ENCODE(iter.dma);
 
@@ -1681,12 +1729,14 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
 		}
 
 		if (++act_pte == GEN6_PTES) {
-			kunmap_atomic(vaddr);
-			vaddr = kmap_atomic_px(i915_pt_entry(pd, ++act_pt));
+			kunmap_atomic_px(pt, vaddr);
+
+			pt = i915_pt_entry(pd, ++act_pt);
+			vaddr = kmap_atomic_px(pt);
 			act_pte = 0;
 		}
 	} while (1);
-	kunmap_atomic(vaddr);
+	kunmap_atomic_px(pt, vaddr);
 
 	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
 }
@@ -1990,6 +2040,9 @@ static struct i915_ppgtt *gen6_ppgtt_create(struct drm_i915_private *i915)
 
 	ppgtt->base.vm.pte_encode = ggtt->vm.pte_encode;
 
+	ppgtt->base.vm.setup_page_dma = setup_page_dma_system;
+	ppgtt->base.vm.cleanup_page_dma = cleanup_page_dma_system;
+
 	ppgtt->base.pd = __alloc_pd(sizeof(*ppgtt->base.pd));
 	if (!ppgtt->base.pd) {
 		err = -ENOMEM;
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.h b/drivers/gpu/drm/i915/i915_gem_gtt.h
index 31a4a96ddd0d..42ba96dffc3f 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.h
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.h
@@ -226,6 +226,9 @@ struct i915_page_dma {
 		 */
 		u32 ggtt_offset;
 	};
+
+	void *(*kmap)(const struct i915_page_dma *p);
+	void (*kunmap)(void *vaddr);
 };
 
 struct i915_page_scratch {
@@ -345,6 +348,10 @@ struct i915_address_space {
 			  u32 flags); /* Create a valid PTE */
 #define PTE_READ_ONLY	(1<<0)
 
+	int (*setup_page_dma)(struct i915_address_space *vm,
+			      struct i915_page_dma *p);
+	void (*cleanup_page_dma)(struct i915_address_space *vm,
+				 struct i915_page_dma *p);
 	int (*allocate_va_range)(struct i915_address_space *vm,
 				 u64 start, u64 length);
 	void (*clear_range)(struct i915_address_space *vm,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
