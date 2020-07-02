Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EEE211EEF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 10:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DED96EABA;
	Thu,  2 Jul 2020 08:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1253C6EAA6
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 08:32:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21685231-1500050 
 for multiple; Thu, 02 Jul 2020 09:32:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 09:32:09 +0100
Message-Id: <20200702083225.20044-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200702083225.20044-1-chris@chris-wilson.co.uk>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/23] drm/i915: Switch to object allocations
 for page directories
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The GEM object is grossly overweight for the practicality of tracking
large numbers of individual pages, yet it is currently our only
abstraction for tracking DMA allocations. Since those allocations need
to be reserved upfront before an operation, and that we need to break
away from simple system memory, we need to ditch using plain struct page
wrappers.

In the process, we drop the WC mapping as we ended up clflushing
everything anyway due to various issues across a wider range of
platforms. Though in a future step, we need to drop the kmap_atomic
approach which suggests we need to pre-map all the pages and keep them
mapped.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   1 +
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |   2 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |   2 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  46 ++-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.h          |   1 +
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  64 ++--
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  31 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c           | 291 +++---------------
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  92 ++----
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  25 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  16 +-
 drivers/gpu/drm/i915/gvt/scheduler.c          |  17 +-
 drivers/gpu/drm/i915/i915_drv.c               |   1 +
 drivers/gpu/drm/i915/i915_drv.h               |   5 -
 drivers/gpu/drm/i915/selftests/mock_gtt.c     |   2 +
 15 files changed, 183 insertions(+), 413 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 5335f799b548..d0847d7896f9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -282,6 +282,7 @@ struct drm_i915_gem_object {
 		} userptr;
 
 		unsigned long scratch;
+		u64 encode;
 
 		void *gvt_info;
 	};
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 8291ede6902c..9fb06fcc8f8f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -393,7 +393,7 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
 	 */
 
 	for (i = 1; i < BIT(ARRAY_SIZE(page_sizes)); i++) {
-		unsigned int combination = 0;
+		unsigned int combination = SZ_4K;
 
 		for (j = 0; j < ARRAY_SIZE(page_sizes); j++) {
 			if (i & BIT(j))
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index b81978890641..1308198543d8 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1745,7 +1745,7 @@ static int check_scratch_page(struct i915_gem_context *ctx, u32 *out)
 	if (!vm)
 		return -ENODEV;
 
-	page = vm->scratch[0].base.page;
+	page = __px_page(vm->scratch[0]);
 	if (!page) {
 		pr_err("No scratch page!\n");
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 35e2b698f9ed..226e404c706d 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -16,8 +16,10 @@ static inline void gen6_write_pde(const struct gen6_ppgtt *ppgtt,
 				  const unsigned int pde,
 				  const struct i915_page_table *pt)
 {
+	dma_addr_t addr = pt ? px_dma(pt) : px_dma(ppgtt->base.vm.scratch[1]);
+
 	/* Caller needs to make sure the write completes if necessary */
-	iowrite32(GEN6_PDE_ADDR_ENCODE(px_dma(pt)) | GEN6_PDE_VALID,
+	iowrite32(GEN6_PDE_ADDR_ENCODE(addr) | GEN6_PDE_VALID,
 		  ppgtt->pd_addr + pde);
 }
 
@@ -79,7 +81,7 @@ static void gen6_ppgtt_clear_range(struct i915_address_space *vm,
 {
 	struct gen6_ppgtt * const ppgtt = to_gen6_ppgtt(i915_vm_to_ppgtt(vm));
 	const unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
-	const gen6_pte_t scratch_pte = vm->scratch[0].encode;
+	const gen6_pte_t scratch_pte = vm->scratch[0]->encode;
 	unsigned int pde = first_entry / GEN6_PTES;
 	unsigned int pte = first_entry % GEN6_PTES;
 	unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
@@ -90,8 +92,6 @@ static void gen6_ppgtt_clear_range(struct i915_address_space *vm,
 		const unsigned int count = min(num_entries, GEN6_PTES - pte);
 		gen6_pte_t *vaddr;
 
-		GEM_BUG_ON(px_base(pt) == px_base(&vm->scratch[1]));
-
 		num_entries -= count;
 
 		GEM_BUG_ON(count > atomic_read(&pt->used));
@@ -127,7 +127,7 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
 	struct sgt_dma iter = sgt_dma(vma);
 	gen6_pte_t *vaddr;
 
-	GEM_BUG_ON(pd->entry[act_pt] == &vm->scratch[1]);
+	GEM_BUG_ON(!pd->entry[act_pt]);
 
 	vaddr = kmap_atomic_px(i915_pt_entry(pd, act_pt));
 	do {
@@ -194,16 +194,16 @@ static void gen6_alloc_va_range(struct i915_address_space *vm,
 	gen6_for_each_pde(pt, pd, start, length, pde) {
 		const unsigned int count = gen6_pte_count(start, length);
 
-		if (px_base(pt) == px_base(&vm->scratch[1])) {
+		if (!pt) {
 			spin_unlock(&pd->lock);
 
 			pt = stash->pt[0];
 			GEM_BUG_ON(!pt);
 
-			fill32_px(pt, vm->scratch[0].encode);
+			fill32_px(pt, vm->scratch[0]->encode);
 
 			spin_lock(&pd->lock);
-			if (pd->entry[pde] == &vm->scratch[1]) {
+			if (!pd->entry[pde]) {
 				stash->pt[0] = pt->stash;
 				atomic_set(&pt->used, 0);
 				pd->entry[pde] = pt;
@@ -225,24 +225,21 @@ static void gen6_alloc_va_range(struct i915_address_space *vm,
 static int gen6_ppgtt_init_scratch(struct gen6_ppgtt *ppgtt)
 {
 	struct i915_address_space * const vm = &ppgtt->base.vm;
-	struct i915_page_directory * const pd = ppgtt->base.pd;
 	int ret;
 
-	ret = setup_scratch_page(vm, __GFP_HIGHMEM);
+	ret = setup_scratch_page(vm);
 	if (ret)
 		return ret;
 
-	vm->scratch[0].encode =
-		vm->pte_encode(px_dma(&vm->scratch[0]),
+	vm->scratch[0]->encode =
+		vm->pte_encode(px_dma(vm->scratch[0]),
 			       I915_CACHE_NONE, PTE_READ_ONLY);
 
-	if (unlikely(setup_page_dma(vm, px_base(&vm->scratch[1])))) {
-		cleanup_scratch_page(vm);
-		return -ENOMEM;
-	}
+	vm->scratch[1] = vm->alloc_pt_dma(vm, I915_GTT_PAGE_SIZE_4K);
+	if (IS_ERR(vm->scratch[1]))
+		return PTR_ERR(vm->scratch[1]);
 
-	fill32_px(&vm->scratch[1], vm->scratch[0].encode);
-	memset_p(pd->entry, &vm->scratch[1], I915_PDES);
+	fill32_px(vm->scratch[1], vm->scratch[0]->encode);
 
 	return 0;
 }
@@ -250,13 +247,11 @@ static int gen6_ppgtt_init_scratch(struct gen6_ppgtt *ppgtt)
 static void gen6_ppgtt_free_pd(struct gen6_ppgtt *ppgtt)
 {
 	struct i915_page_directory * const pd = ppgtt->base.pd;
-	struct i915_page_dma * const scratch =
-		px_base(&ppgtt->base.vm.scratch[1]);
 	struct i915_page_table *pt;
 	u32 pde;
 
 	gen6_for_all_pdes(pt, pd, pde)
-		if (px_base(pt) != scratch)
+		if (pt)
 			free_px(&ppgtt->base.vm, pt);
 }
 
@@ -297,7 +292,7 @@ static void pd_vma_bind(struct i915_address_space *vm,
 	struct gen6_ppgtt *ppgtt = vma->private;
 	u32 ggtt_offset = i915_ggtt_offset(vma) / I915_GTT_PAGE_SIZE;
 
-	px_base(ppgtt->base.pd)->ggtt_offset = ggtt_offset * sizeof(gen6_pte_t);
+	ppgtt->pp_dir = ggtt_offset * sizeof(gen6_pte_t) << 10;
 	ppgtt->pd_addr = (gen6_pte_t __iomem *)ggtt->gsm + ggtt_offset;
 
 	gen6_flush_pd(ppgtt, 0, ppgtt->base.vm.total);
@@ -307,8 +302,6 @@ static void pd_vma_unbind(struct i915_address_space *vm, struct i915_vma *vma)
 {
 	struct gen6_ppgtt *ppgtt = vma->private;
 	struct i915_page_directory * const pd = ppgtt->base.pd;
-	struct i915_page_dma * const scratch =
-		px_base(&ppgtt->base.vm.scratch[1]);
 	struct i915_page_table *pt;
 	unsigned int pde;
 
@@ -317,11 +310,11 @@ static void pd_vma_unbind(struct i915_address_space *vm, struct i915_vma *vma)
 
 	/* Free all no longer used page tables */
 	gen6_for_all_pdes(pt, ppgtt->base.pd, pde) {
-		if (px_base(pt) == scratch || atomic_read(&pt->used))
+		if (!pt || atomic_read(&pt->used))
 			continue;
 
 		free_px(&ppgtt->base.vm, pt);
-		pd->entry[pde] = scratch;
+		pd->entry[pde] = NULL;
 	}
 
 	ppgtt->scan_for_unused_pt = false;
@@ -441,6 +434,7 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 	ppgtt->base.vm.insert_entries = gen6_ppgtt_insert_entries;
 	ppgtt->base.vm.cleanup = gen6_ppgtt_cleanup;
 
+	ppgtt->base.vm.alloc_pt_dma = alloc_pt_dma;
 	ppgtt->base.vm.pte_encode = ggtt->vm.pte_encode;
 
 	ppgtt->base.pd = __alloc_pd(sizeof(*ppgtt->base.pd));
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
index 72e481806c96..7249672e5802 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
@@ -14,6 +14,7 @@ struct gen6_ppgtt {
 	struct mutex flush;
 	struct i915_vma *vma;
 	gen6_pte_t __iomem *pd_addr;
+	u32 pp_dir;
 
 	atomic_t pin_count;
 	struct mutex pin_mutex;
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index e6f2acd445dd..d3f27beaac03 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -199,7 +199,7 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
 			      struct i915_page_directory * const pd,
 			      u64 start, const u64 end, int lvl)
 {
-	const struct i915_page_scratch * const scratch = &vm->scratch[lvl];
+	const struct drm_i915_gem_object * const scratch = vm->scratch[lvl];
 	unsigned int idx, len;
 
 	GEM_BUG_ON(end > vm->total >> GEN8_PTE_SHIFT);
@@ -239,7 +239,7 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
 
 			vaddr = kmap_atomic_px(pt);
 			memset64(vaddr + gen8_pd_index(start, 0),
-				 vm->scratch[0].encode,
+				 vm->scratch[0]->encode,
 				 count);
 			kunmap_atomic(vaddr);
 
@@ -301,7 +301,7 @@ static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
 			if (lvl ||
 			    gen8_pt_count(*start, end) < I915_PDES ||
 			    intel_vgpu_active(vm->i915))
-				fill_px(pt, vm->scratch[lvl].encode);
+				fill_px(pt, vm->scratch[lvl]->encode);
 
 			spin_lock(&pd->lock);
 			if (likely(!pd->entry[idx])) {
@@ -356,16 +356,6 @@ static void gen8_ppgtt_alloc(struct i915_address_space *vm,
 			   &start, start + length, vm->top);
 }
 
-static __always_inline void
-write_pte(gen8_pte_t *pte, const gen8_pte_t val)
-{
-	/* Magic delays? Or can we refine these to flush all in one pass? */
-	*pte = val;
-	wmb(); /* cpu to cache */
-	clflush(pte); /* cache to memory */
-	wmb(); /* visible to all */
-}
-
 static __always_inline u64
 gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 		      struct i915_page_directory *pdp,
@@ -382,8 +372,7 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 	vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
 	do {
 		GEM_BUG_ON(iter->sg->length < I915_GTT_PAGE_SIZE);
-		write_pte(&vaddr[gen8_pd_index(idx, 0)],
-			  pte_encode | iter->dma);
+		vaddr[gen8_pd_index(idx, 0)] = pte_encode | iter->dma;
 
 		iter->dma += I915_GTT_PAGE_SIZE;
 		if (iter->dma >= iter->max) {
@@ -406,10 +395,12 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 				pd = pdp->entry[gen8_pd_index(idx, 2)];
 			}
 
+			clflush_cache_range(vaddr, PAGE_SIZE);
 			kunmap_atomic(vaddr);
 			vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
 		}
 	} while (1);
+	clflush_cache_range(vaddr, PAGE_SIZE);
 	kunmap_atomic(vaddr);
 
 	return idx;
@@ -465,7 +456,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 
 		do {
 			GEM_BUG_ON(iter->sg->length < page_size);
-			write_pte(&vaddr[index++], encode | iter->dma);
+			vaddr[index++] = encode | iter->dma;
 
 			start += page_size;
 			iter->dma += page_size;
@@ -490,6 +481,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			}
 		} while (rem >= page_size && index < I915_PDES);
 
+		clflush_cache_range(vaddr, PAGE_SIZE);
 		kunmap_atomic(vaddr);
 
 		/*
@@ -521,7 +513,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			if (I915_SELFTEST_ONLY(vma->vm->scrub_64K)) {
 				u16 i;
 
-				encode = vma->vm->scratch[0].encode;
+				encode = vma->vm->scratch[0]->encode;
 				vaddr = kmap_atomic_px(i915_pt_entry(pd, maybe_64K));
 
 				for (i = 1; i < index; i += 16)
@@ -575,27 +567,31 @@ static int gen8_init_scratch(struct i915_address_space *vm)
 		GEM_BUG_ON(!clone->has_read_only);
 
 		vm->scratch_order = clone->scratch_order;
-		memcpy(vm->scratch, clone->scratch, sizeof(vm->scratch));
-		px_dma(&vm->scratch[0]) = 0; /* no xfer of ownership */
+		for (i = 0; i <= vm->top; i++)
+			vm->scratch[i] = i915_gem_object_get(clone->scratch[i]);
+
 		return 0;
 	}
 
-	ret = setup_scratch_page(vm, __GFP_HIGHMEM);
+	ret = setup_scratch_page(vm);
 	if (ret)
 		return ret;
 
-	vm->scratch[0].encode =
-		gen8_pte_encode(px_dma(&vm->scratch[0]),
+	vm->scratch[0]->encode =
+		gen8_pte_encode(px_dma(vm->scratch[0]),
 				I915_CACHE_LLC, vm->has_read_only);
 
 	for (i = 1; i <= vm->top; i++) {
-		if (unlikely(setup_page_dma(vm, px_base(&vm->scratch[i]))))
+		struct drm_i915_gem_object *obj;
+
+		obj = vm->alloc_pt_dma(vm, I915_GTT_PAGE_SIZE_4K);
+		if (IS_ERR(obj))
 			goto free_scratch;
 
-		fill_px(&vm->scratch[i], vm->scratch[i - 1].encode);
-		vm->scratch[i].encode =
-			gen8_pde_encode(px_dma(&vm->scratch[i]),
-					I915_CACHE_LLC);
+		fill_px(obj, vm->scratch[i - 1]->encode);
+		obj->encode = gen8_pde_encode(px_dma(obj), I915_CACHE_LLC);
+
+		vm->scratch[i] = obj;
 	}
 
 	return 0;
@@ -621,7 +617,7 @@ static int gen8_preallocate_top_level_pdp(struct i915_ppgtt *ppgtt)
 		if (IS_ERR(pde))
 			return PTR_ERR(pde);
 
-		fill_px(pde, vm->scratch[1].encode);
+		fill_px(pde, vm->scratch[1]->encode);
 		set_pd_entry(pd, idx, pde);
 		atomic_inc(px_used(pde)); /* keep pinned */
 	}
@@ -642,12 +638,13 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
 	if (unlikely(!pd))
 		return ERR_PTR(-ENOMEM);
 
-	if (unlikely(setup_page_dma(vm, px_base(pd)))) {
+	pd->pt.base = vm->alloc_pt_dma(vm, I915_GTT_PAGE_SIZE_4K);
+	if (IS_ERR(pd->pt.base)) {
 		kfree(pd);
 		return ERR_PTR(-ENOMEM);
 	}
 
-	fill_page_dma(px_base(pd), vm->scratch[vm->top].encode, count);
+	fill_page_dma(px_base(pd), vm->scratch[vm->top]->encode, count);
 	atomic_inc(px_used(pd)); /* mark as pinned */
 	return pd;
 }
@@ -681,12 +678,7 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
 	 */
 	ppgtt->vm.has_read_only = !IS_GEN_RANGE(gt->i915, 11, 12);
 
-	/*
-	 * There are only few exceptions for gen >=6. chv and bxt.
-	 * And we are not sure about the latter so play safe for now.
-	 */
-	if (IS_CHERRYVIEW(gt->i915) || IS_BROXTON(gt->i915))
-		ppgtt->vm.pt_kmap_wc = true;
+	ppgtt->vm.alloc_pt_dma = alloc_pt_dma;
 
 	err = gen8_init_scratch(&ppgtt->vm);
 	if (err)
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 791e4070ef31..9db27a2e5f36 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -78,8 +78,6 @@ int i915_ggtt_init_hw(struct drm_i915_private *i915)
 {
 	int ret;
 
-	stash_init(&i915->mm.wc_stash);
-
 	/*
 	 * Note that we use page colouring to enforce a guard page at the
 	 * end of the address space. This is required as the CS may prefetch
@@ -232,7 +230,7 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 
 	/* Fill the allocated but "unused" space beyond the end of the buffer */
 	while (gte < end)
-		gen8_set_pte(gte++, vm->scratch[0].encode);
+		gen8_set_pte(gte++, vm->scratch[0]->encode);
 
 	/*
 	 * We want to flush the TLBs only after we're certain all the PTE
@@ -283,7 +281,7 @@ static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
 
 	/* Fill the allocated but "unused" space beyond the end of the buffer */
 	while (gte < end)
-		iowrite32(vm->scratch[0].encode, gte++);
+		iowrite32(vm->scratch[0]->encode, gte++);
 
 	/*
 	 * We want to flush the TLBs only after we're certain all the PTE
@@ -303,7 +301,7 @@ static void gen8_ggtt_clear_range(struct i915_address_space *vm,
 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
 	unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
 	unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
-	const gen8_pte_t scratch_pte = vm->scratch[0].encode;
+	const gen8_pte_t scratch_pte = vm->scratch[0]->encode;
 	gen8_pte_t __iomem *gtt_base =
 		(gen8_pte_t __iomem *)ggtt->gsm + first_entry;
 	const int max_entries = ggtt_total_entries(ggtt) - first_entry;
@@ -401,7 +399,7 @@ static void gen6_ggtt_clear_range(struct i915_address_space *vm,
 		 first_entry, num_entries, max_entries))
 		num_entries = max_entries;
 
-	scratch_pte = vm->scratch[0].encode;
+	scratch_pte = vm->scratch[0]->encode;
 	for (i = 0; i < num_entries; i++)
 		iowrite32(scratch_pte, &gtt_base[i]);
 }
@@ -712,18 +710,11 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
 void i915_ggtt_driver_release(struct drm_i915_private *i915)
 {
 	struct i915_ggtt *ggtt = &i915->ggtt;
-	struct pagevec *pvec;
 
 	fini_aliasing_ppgtt(ggtt);
 
 	intel_ggtt_fini_fences(ggtt);
 	ggtt_cleanup_hw(ggtt);
-
-	pvec = &i915->mm.wc_stash.pvec;
-	if (pvec->nr) {
-		set_pages_array_wb(pvec->pages, pvec->nr);
-		__pagevec_release(pvec);
-	}
 }
 
 static unsigned int gen6_get_total_gtt_size(u16 snb_gmch_ctl)
@@ -786,7 +777,7 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 		return -ENOMEM;
 	}
 
-	ret = setup_scratch_page(&ggtt->vm, GFP_DMA32);
+	ret = setup_scratch_page(&ggtt->vm);
 	if (ret) {
 		drm_err(&i915->drm, "Scratch setup failed\n");
 		/* iounmap will also get called at remove, but meh */
@@ -794,8 +785,8 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 		return ret;
 	}
 
-	ggtt->vm.scratch[0].encode =
-		ggtt->vm.pte_encode(px_dma(&ggtt->vm.scratch[0]),
+	ggtt->vm.scratch[0]->encode =
+		ggtt->vm.pte_encode(px_dma(ggtt->vm.scratch[0]),
 				    I915_CACHE_NONE, 0);
 
 	return 0;
@@ -821,7 +812,7 @@ static void gen6_gmch_remove(struct i915_address_space *vm)
 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
 
 	iounmap(ggtt->gsm);
-	cleanup_scratch_page(vm);
+	free_scratch(vm);
 }
 
 static struct resource pci_resource(struct pci_dev *pdev, int bar)
@@ -849,6 +840,8 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	else
 		size = gen8_get_total_gtt_size(snb_gmch_ctl);
 
+	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
+
 	ggtt->vm.total = (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
 	ggtt->vm.cleanup = gen6_gmch_remove;
 	ggtt->vm.insert_page = gen8_ggtt_insert_page;
@@ -997,6 +990,8 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 	size = gen6_get_total_gtt_size(snb_gmch_ctl);
 	ggtt->vm.total = (size / sizeof(gen6_pte_t)) * I915_GTT_PAGE_SIZE;
 
+	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
+
 	ggtt->vm.clear_range = nop_clear_range;
 	if (!HAS_FULL_PPGTT(i915) || intel_scanout_needs_vtd_wa(i915))
 		ggtt->vm.clear_range = gen6_ggtt_clear_range;
@@ -1047,6 +1042,8 @@ static int i915_gmch_probe(struct i915_ggtt *ggtt)
 	ggtt->gmadr =
 		(struct resource)DEFINE_RES_MEM(gmadr_base, ggtt->mappable_end);
 
+	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
+
 	ggtt->do_idle_maps = needs_idle_maps(i915);
 	ggtt->vm.insert_page = i915_ggtt_insert_page;
 	ggtt->vm.insert_entries = i915_ggtt_insert_entries;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 2a72cce63fd9..e0cc90942848 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -11,160 +11,24 @@
 #include "intel_gt.h"
 #include "intel_gtt.h"
 
-void stash_init(struct pagestash *stash)
+struct drm_i915_gem_object *alloc_pt_dma(struct i915_address_space *vm, int sz)
 {
-	pagevec_init(&stash->pvec);
-	spin_lock_init(&stash->lock);
-}
-
-static struct page *stash_pop_page(struct pagestash *stash)
-{
-	struct page *page = NULL;
-
-	spin_lock(&stash->lock);
-	if (likely(stash->pvec.nr))
-		page = stash->pvec.pages[--stash->pvec.nr];
-	spin_unlock(&stash->lock);
-
-	return page;
-}
-
-static void stash_push_pagevec(struct pagestash *stash, struct pagevec *pvec)
-{
-	unsigned int nr;
-
-	spin_lock_nested(&stash->lock, SINGLE_DEPTH_NESTING);
-
-	nr = min_t(typeof(nr), pvec->nr, pagevec_space(&stash->pvec));
-	memcpy(stash->pvec.pages + stash->pvec.nr,
-	       pvec->pages + pvec->nr - nr,
-	       sizeof(pvec->pages[0]) * nr);
-	stash->pvec.nr += nr;
-
-	spin_unlock(&stash->lock);
-
-	pvec->nr -= nr;
-}
-
-static struct page *vm_alloc_page(struct i915_address_space *vm, gfp_t gfp)
-{
-	struct pagevec stack;
-	struct page *page;
-
-	if (I915_SELFTEST_ONLY(should_fail(&vm->fault_attr, 1)))
-		i915_gem_shrink_all(vm->i915);
-
-	page = stash_pop_page(&vm->free_pages);
-	if (page)
-		return page;
-
-	if (!vm->pt_kmap_wc)
-		return alloc_page(gfp);
-
-	/* Look in our global stash of WC pages... */
-	page = stash_pop_page(&vm->i915->mm.wc_stash);
-	if (page)
-		return page;
+	struct drm_i915_gem_object *obj;
+	int err;
 
-	/*
-	 * Otherwise batch allocate pages to amortize cost of set_pages_wc.
-	 *
-	 * We have to be careful as page allocation may trigger the shrinker
-	 * (via direct reclaim) which will fill up the WC stash underneath us.
-	 * So we add our WB pages into a temporary pvec on the stack and merge
-	 * them into the WC stash after all the allocations are complete.
-	 */
-	pagevec_init(&stack);
-	do {
-		struct page *page;
-
-		page = alloc_page(gfp);
-		if (unlikely(!page))
-			break;
-
-		stack.pages[stack.nr++] = page;
-	} while (pagevec_space(&stack));
-
-	if (stack.nr && !set_pages_array_wc(stack.pages, stack.nr)) {
-		page = stack.pages[--stack.nr];
-
-		/* Merge spare WC pages to the global stash */
-		if (stack.nr)
-			stash_push_pagevec(&vm->i915->mm.wc_stash, &stack);
-
-		/* Push any surplus WC pages onto the local VM stash */
-		if (stack.nr)
-			stash_push_pagevec(&vm->free_pages, &stack);
-	}
-
-	/* Return unwanted leftovers */
-	if (unlikely(stack.nr)) {
-		WARN_ON_ONCE(set_pages_array_wb(stack.pages, stack.nr));
-		__pagevec_release(&stack);
-	}
-
-	return page;
-}
-
-static void vm_free_pages_release(struct i915_address_space *vm,
-				  bool immediate)
-{
-	struct pagevec *pvec = &vm->free_pages.pvec;
-	struct pagevec stack;
-
-	lockdep_assert_held(&vm->free_pages.lock);
-	GEM_BUG_ON(!pagevec_count(pvec));
-
-	if (vm->pt_kmap_wc) {
-		/*
-		 * When we use WC, first fill up the global stash and then
-		 * only if full immediately free the overflow.
-		 */
-		stash_push_pagevec(&vm->i915->mm.wc_stash, pvec);
+	obj = i915_gem_object_create_internal(vm->i915, sz);
+	if (IS_ERR(obj))
+		return obj;
 
-		/*
-		 * As we have made some room in the VM's free_pages,
-		 * we can wait for it to fill again. Unless we are
-		 * inside i915_address_space_fini() and must
-		 * immediately release the pages!
-		 */
-		if (pvec->nr <= (immediate ? 0 : PAGEVEC_SIZE - 1))
-			return;
-
-		/*
-		 * We have to drop the lock to allow ourselves to sleep,
-		 * so take a copy of the pvec and clear the stash for
-		 * others to use it as we sleep.
-		 */
-		stack = *pvec;
-		pagevec_reinit(pvec);
-		spin_unlock(&vm->free_pages.lock);
-
-		pvec = &stack;
-		set_pages_array_wb(pvec->pages, pvec->nr);
-
-		spin_lock(&vm->free_pages.lock);
+	err = i915_gem_object_pin_pages(obj);
+	if (err) {
+		i915_gem_object_put(obj);
+		return ERR_PTR(err);
 	}
 
-	__pagevec_release(pvec);
-}
+	i915_gem_object_make_unshrinkable(obj);
 
-static void vm_free_page(struct i915_address_space *vm, struct page *page)
-{
-	/*
-	 * On !llc, we need to change the pages back to WB. We only do so
-	 * in bulk, so we rarely need to change the page attributes here,
-	 * but doing so requires a stop_machine() from deep inside arch/x86/mm.
-	 * To make detection of the possible sleep more likely, use an
-	 * unconditional might_sleep() for everybody.
-	 */
-	might_sleep();
-	spin_lock(&vm->free_pages.lock);
-	while (!pagevec_space(&vm->free_pages.pvec))
-		vm_free_pages_release(vm, false);
-	GEM_BUG_ON(pagevec_count(&vm->free_pages.pvec) >= PAGEVEC_SIZE);
-	pagevec_add(&vm->free_pages.pvec, page);
-	spin_unlock(&vm->free_pages.lock);
+	return obj;
 }
 
 void __i915_vm_close(struct i915_address_space *vm)
@@ -194,14 +58,7 @@ void __i915_vm_close(struct i915_address_space *vm)
 
 void i915_address_space_fini(struct i915_address_space *vm)
 {
-	spin_lock(&vm->free_pages.lock);
-	if (pagevec_count(&vm->free_pages.pvec))
-		vm_free_pages_release(vm, true);
-	GEM_BUG_ON(pagevec_count(&vm->free_pages.pvec));
-	spin_unlock(&vm->free_pages.lock);
-
 	drm_mm_takedown(&vm->mm);
-
 	mutex_destroy(&vm->mutex);
 }
 
@@ -246,8 +103,6 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	drm_mm_init(&vm->mm, 0, vm->total);
 	vm->mm.head_node.color = I915_COLOR_UNEVICTABLE;
 
-	stash_init(&vm->free_pages);
-
 	INIT_LIST_HEAD(&vm->bound_list);
 }
 
@@ -264,64 +119,47 @@ void clear_pages(struct i915_vma *vma)
 	memset(&vma->page_sizes, 0, sizeof(vma->page_sizes));
 }
 
-static int __setup_page_dma(struct i915_address_space *vm,
-			    struct i915_page_dma *p,
-			    gfp_t gfp)
-{
-	p->page = vm_alloc_page(vm, gfp | I915_GFP_ALLOW_FAIL);
-	if (unlikely(!p->page))
-		return -ENOMEM;
-
-	p->daddr = dma_map_page_attrs(vm->dma,
-				      p->page, 0, PAGE_SIZE,
-				      PCI_DMA_BIDIRECTIONAL,
-				      DMA_ATTR_SKIP_CPU_SYNC |
-				      DMA_ATTR_NO_WARN);
-	if (unlikely(dma_mapping_error(vm->dma, p->daddr))) {
-		vm_free_page(vm, p->page);
-		return -ENOMEM;
-	}
-
-	return 0;
-}
-
-int setup_page_dma(struct i915_address_space *vm, struct i915_page_dma *p)
+dma_addr_t __px_dma(struct drm_i915_gem_object *p)
 {
-	return __setup_page_dma(vm, p, __GFP_HIGHMEM);
+	GEM_BUG_ON(!i915_gem_object_has_pages(p));
+	return sg_dma_address(p->mm.pages->sgl);
 }
 
-void cleanup_page_dma(struct i915_address_space *vm, struct i915_page_dma *p)
+struct page *__px_page(struct drm_i915_gem_object *p)
 {
-	dma_unmap_page(vm->dma, p->daddr, PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
-	vm_free_page(vm, p->page);
+	GEM_BUG_ON(!i915_gem_object_has_pages(p));
+	return sg_page(p->mm.pages->sgl);
 }
 
 void
-fill_page_dma(const struct i915_page_dma *p, const u64 val, unsigned int count)
+fill_page_dma(struct drm_i915_gem_object *p, const u64 val, unsigned int count)
 {
-	kunmap_atomic(memset64(kmap_atomic(p->page), val, count));
+	struct page *page = __px_page(p);
+	void *vaddr;
+
+	vaddr = kmap(page);
+	memset64(vaddr, val, count);
+	kunmap(page);
 }
 
-static void poison_scratch_page(struct page *page, unsigned long size)
+static void poison_scratch_page(struct drm_i915_gem_object *scratch)
 {
+	struct sgt_iter sgt;
+	struct page *page;
+
 	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
 		return;
 
-	GEM_BUG_ON(!IS_ALIGNED(size, PAGE_SIZE));
-
-	do {
+	for_each_sgt_page(page, sgt, scratch->mm.pages) {
 		void *vaddr;
 
 		vaddr = kmap(page);
 		memset(vaddr, POISON_FREE, PAGE_SIZE);
 		kunmap(page);
-
-		page = pfn_to_page(page_to_pfn(page) + 1);
-		size -= PAGE_SIZE;
-	} while (size);
+	}
 }
 
-int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
+int setup_scratch_page(struct i915_address_space *vm)
 {
 	unsigned long size;
 
@@ -338,21 +176,19 @@ int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
 	 */
 	size = I915_GTT_PAGE_SIZE_4K;
 	if (i915_vm_is_4lvl(vm) &&
-	    HAS_PAGE_SIZES(vm->i915, I915_GTT_PAGE_SIZE_64K)) {
+	    HAS_PAGE_SIZES(vm->i915, I915_GTT_PAGE_SIZE_64K))
 		size = I915_GTT_PAGE_SIZE_64K;
-		gfp |= __GFP_NOWARN;
-	}
-	gfp |= __GFP_ZERO | __GFP_RETRY_MAYFAIL;
 
 	do {
-		unsigned int order = get_order(size);
-		struct page *page;
-		dma_addr_t addr;
+		struct drm_i915_gem_object *obj;
 
-		page = alloc_pages(gfp, order);
-		if (unlikely(!page))
+		obj = vm->alloc_pt_dma(vm, size);
+		if (IS_ERR(obj))
 			goto skip;
 
+		if (obj->mm.page_sizes.sg < size)
+			goto skip_obj;
+
 		/*
 		 * Use a non-zero scratch page for debugging.
 		 *
@@ -362,61 +198,28 @@ int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
 		 * should it ever be accidentally used, the effect should be
 		 * fairly benign.
 		 */
-		poison_scratch_page(page, size);
-
-		addr = dma_map_page_attrs(vm->dma,
-					  page, 0, size,
-					  PCI_DMA_BIDIRECTIONAL,
-					  DMA_ATTR_SKIP_CPU_SYNC |
-					  DMA_ATTR_NO_WARN);
-		if (unlikely(dma_mapping_error(vm->dma, addr)))
-			goto free_page;
-
-		if (unlikely(!IS_ALIGNED(addr, size)))
-			goto unmap_page;
-
-		vm->scratch[0].base.page = page;
-		vm->scratch[0].base.daddr = addr;
-		vm->scratch_order = order;
+		poison_scratch_page(obj);
+
+		vm->scratch[0] = obj;
+		vm->scratch_order = get_order(size);
 		return 0;
 
-unmap_page:
-		dma_unmap_page(vm->dma, addr, size, PCI_DMA_BIDIRECTIONAL);
-free_page:
-		__free_pages(page, order);
+skip_obj:
+		i915_gem_object_put(obj);
 skip:
 		if (size == I915_GTT_PAGE_SIZE_4K)
 			return -ENOMEM;
 
 		size = I915_GTT_PAGE_SIZE_4K;
-		gfp &= ~__GFP_NOWARN;
 	} while (1);
 }
 
-void cleanup_scratch_page(struct i915_address_space *vm)
-{
-	struct i915_page_dma *p = px_base(&vm->scratch[0]);
-	unsigned int order = vm->scratch_order;
-
-	dma_unmap_page(vm->dma, p->daddr, BIT(order) << PAGE_SHIFT,
-		       PCI_DMA_BIDIRECTIONAL);
-	__free_pages(p->page, order);
-}
-
 void free_scratch(struct i915_address_space *vm)
 {
 	int i;
 
-	if (!px_dma(&vm->scratch[0])) /* set to 0 on clones */
-		return;
-
-	for (i = 1; i <= vm->top; i++) {
-		if (!px_dma(&vm->scratch[i]))
-			break;
-		cleanup_page_dma(vm, px_base(&vm->scratch[i]));
-	}
-
-	cleanup_scratch_page(vm);
+	for (i = 0; i <= vm->top; i++)
+		i915_gem_object_put(vm->scratch[i]);
 }
 
 void gtt_write_workarounds(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 8bd462d2fcd9..57b31b36285f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -134,31 +134,19 @@ typedef u64 gen8_pte_t;
 #define GEN8_PDE_IPS_64K BIT(11)
 #define GEN8_PDE_PS_2M   BIT(7)
 
+enum i915_cache_level;
+
+struct drm_i915_file_private;
+struct drm_i915_gem_object;
 struct i915_fence_reg;
+struct i915_vma;
+struct intel_gt;
 
 #define for_each_sgt_daddr(__dp, __iter, __sgt) \
 	__for_each_sgt_daddr(__dp, __iter, __sgt, I915_GTT_PAGE_SIZE)
 
-struct i915_page_dma {
-	struct page *page;
-	union {
-		dma_addr_t daddr;
-
-		/*
-		 * For gen6/gen7 only. This is the offset in the GGTT
-		 * where the page directory entries for PPGTT begin
-		 */
-		u32 ggtt_offset;
-	};
-};
-
-struct i915_page_scratch {
-	struct i915_page_dma base;
-	u64 encode;
-};
-
 struct i915_page_table {
-	struct i915_page_dma base;
+	struct drm_i915_gem_object *base;
 	union {
 		atomic_t used;
 		struct i915_page_table *stash;
@@ -179,12 +167,14 @@ struct i915_page_directory {
 	other)
 
 #define px_base(px) \
-	__px_choose_expr(px, struct i915_page_dma *, __x, \
-	__px_choose_expr(px, struct i915_page_scratch *, &__x->base, \
-	__px_choose_expr(px, struct i915_page_table *, &__x->base, \
-	__px_choose_expr(px, struct i915_page_directory *, &__x->pt.base, \
-	(void)0))))
-#define px_dma(px) (px_base(px)->daddr)
+	__px_choose_expr(px, struct drm_i915_gem_object *, __x, \
+	__px_choose_expr(px, struct i915_page_table *, __x->base, \
+	__px_choose_expr(px, struct i915_page_directory *, __x->pt.base, \
+	(void)0)))
+
+struct page *__px_page(struct drm_i915_gem_object *p);
+dma_addr_t __px_dma(struct drm_i915_gem_object *p);
+#define px_dma(px) (__px_dma(px_base(px)))
 
 #define px_pt(px) \
 	__px_choose_expr(px, struct i915_page_table *, __x, \
@@ -192,13 +182,6 @@ struct i915_page_directory {
 	(void)0))
 #define px_used(px) (&px_pt(px)->used)
 
-enum i915_cache_level;
-
-struct drm_i915_file_private;
-struct drm_i915_gem_object;
-struct i915_vma;
-struct intel_gt;
-
 struct i915_vm_pt_stash {
 	/* preallocated chains of page tables/directories */
 	struct i915_page_table *pt[2];
@@ -222,13 +205,6 @@ struct i915_vma_ops {
 	void (*clear_pages)(struct i915_vma *vma);
 };
 
-struct pagestash {
-	spinlock_t lock;
-	struct pagevec pvec;
-};
-
-void stash_init(struct pagestash *stash);
-
 struct i915_address_space {
 	struct kref ref;
 	struct rcu_work rcu;
@@ -265,7 +241,7 @@ struct i915_address_space {
 #define VM_CLASS_GGTT 0
 #define VM_CLASS_PPGTT 1
 
-	struct i915_page_scratch scratch[4];
+	struct drm_i915_gem_object *scratch[4];
 	unsigned int scratch_order;
 	unsigned int top;
 
@@ -274,17 +250,15 @@ struct i915_address_space {
 	 */
 	struct list_head bound_list;
 
-	struct pagestash free_pages;
-
 	/* Global GTT */
 	bool is_ggtt:1;
 
-	/* Some systems require uncached updates of the page directories */
-	bool pt_kmap_wc:1;
-
 	/* Some systems support read-only mappings for GGTT and/or PPGTT */
 	bool has_read_only:1;
 
+	struct drm_i915_gem_object *
+		(*alloc_pt_dma)(struct i915_address_space *vm, int sz);
+
 	u64 (*pte_encode)(dma_addr_t addr,
 			  enum i915_cache_level level,
 			  u32 flags); /* Create a valid PTE */
@@ -500,9 +474,9 @@ i915_pd_entry(const struct i915_page_directory * const pdp,
 static inline dma_addr_t
 i915_page_dir_dma_addr(const struct i915_ppgtt *ppgtt, const unsigned int n)
 {
-	struct i915_page_dma *pt = ppgtt->pd->entry[n];
+	struct i915_page_table *pt = ppgtt->pd->entry[n];
 
-	return px_dma(pt ?: px_base(&ppgtt->vm.scratch[ppgtt->vm.top]));
+	return __px_dma(pt ? px_base(pt) : ppgtt->vm.scratch[ppgtt->vm.top]);
 }
 
 void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt);
@@ -527,13 +501,10 @@ struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt);
 void i915_ggtt_suspend(struct i915_ggtt *gtt);
 void i915_ggtt_resume(struct i915_ggtt *ggtt);
 
-int setup_page_dma(struct i915_address_space *vm, struct i915_page_dma *p);
-void cleanup_page_dma(struct i915_address_space *vm, struct i915_page_dma *p);
-
-#define kmap_atomic_px(px) kmap_atomic(px_base(px)->page)
+#define kmap_atomic_px(px) kmap_atomic(__px_page(px_base(px)))
 
 void
-fill_page_dma(const struct i915_page_dma *p, const u64 val, unsigned int count);
+fill_page_dma(struct drm_i915_gem_object *p, const u64 val, unsigned int count);
 
 #define fill_px(px, v) fill_page_dma(px_base(px), (v), PAGE_SIZE / sizeof(u64))
 #define fill32_px(px, v) do {						\
@@ -541,37 +512,36 @@ fill_page_dma(const struct i915_page_dma *p, const u64 val, unsigned int count);
 	fill_px((px), v__ << 32 | v__);					\
 } while (0)
 
-int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp);
-void cleanup_scratch_page(struct i915_address_space *vm);
+int setup_scratch_page(struct i915_address_space *vm);
 void free_scratch(struct i915_address_space *vm);
 
+struct drm_i915_gem_object *alloc_pt_dma(struct i915_address_space *vm, int sz);
 struct i915_page_table *alloc_pt(struct i915_address_space *vm);
 struct i915_page_directory *alloc_pd(struct i915_address_space *vm);
 struct i915_page_directory *__alloc_pd(size_t sz);
 
-void free_pd(struct i915_address_space *vm, struct i915_page_dma *pd);
-
-#define free_px(vm, px) free_pd(vm, px_base(px))
+void free_pt(struct i915_address_space *vm, struct i915_page_table *pt);
+#define free_px(vm, px) free_pt(vm, px_pt(px))
 
 void
 __set_pd_entry(struct i915_page_directory * const pd,
 	       const unsigned short idx,
-	       struct i915_page_dma * const to,
+	       struct i915_page_table *pt,
 	       u64 (*encode)(const dma_addr_t, const enum i915_cache_level));
 
 #define set_pd_entry(pd, idx, to) \
-	__set_pd_entry((pd), (idx), px_base(to), gen8_pde_encode)
+	__set_pd_entry((pd), (idx), px_pt(to), gen8_pde_encode)
 
 void
 clear_pd_entry(struct i915_page_directory * const pd,
 	       const unsigned short idx,
-	       const struct i915_page_scratch * const scratch);
+	       const struct drm_i915_gem_object * const scratch);
 
 bool
 release_pd_entry(struct i915_page_directory * const pd,
 		 const unsigned short idx,
 		 struct i915_page_table * const pt,
-		 const struct i915_page_scratch * const scratch);
+		 const struct drm_i915_gem_object * const scratch);
 void gen6_ggtt_invalidate(struct i915_ggtt *ggtt);
 
 int ggtt_set_pages(struct i915_vma *vma);
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index 9633fd2d294d..94bd969ebffd 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -18,7 +18,8 @@ struct i915_page_table *alloc_pt(struct i915_address_space *vm)
 	if (unlikely(!pt))
 		return ERR_PTR(-ENOMEM);
 
-	if (unlikely(setup_page_dma(vm, &pt->base))) {
+	pt->base = vm->alloc_pt_dma(vm, I915_GTT_PAGE_SIZE_4K);
+	if (IS_ERR(pt->base)) {
 		kfree(pt);
 		return ERR_PTR(-ENOMEM);
 	}
@@ -47,7 +48,8 @@ struct i915_page_directory *alloc_pd(struct i915_address_space *vm)
 	if (unlikely(!pd))
 		return ERR_PTR(-ENOMEM);
 
-	if (unlikely(setup_page_dma(vm, px_base(pd)))) {
+	pd->pt.base = vm->alloc_pt_dma(vm, I915_GTT_PAGE_SIZE_4K);
+	if (IS_ERR(pd->pt.base)) {
 		kfree(pd);
 		return ERR_PTR(-ENOMEM);
 	}
@@ -55,27 +57,28 @@ struct i915_page_directory *alloc_pd(struct i915_address_space *vm)
 	return pd;
 }
 
-void free_pd(struct i915_address_space *vm, struct i915_page_dma *pd)
+void free_pt(struct i915_address_space *vm, struct i915_page_table *pt)
 {
-	cleanup_page_dma(vm, pd);
-	kfree(pd);
+	i915_gem_object_put(pt->base);
+	kfree(pt);
 }
 
 static inline void
-write_dma_entry(struct i915_page_dma * const pdma,
+write_dma_entry(struct drm_i915_gem_object * const pdma,
 		const unsigned short idx,
 		const u64 encoded_entry)
 {
-	u64 * const vaddr = kmap_atomic(pdma->page);
+	u64 * const vaddr = kmap_atomic(__px_page(pdma));
 
 	vaddr[idx] = encoded_entry;
+	clflush_cache_range(&vaddr[idx], sizeof(u64));
 	kunmap_atomic(vaddr);
 }
 
 void
 __set_pd_entry(struct i915_page_directory * const pd,
 	       const unsigned short idx,
-	       struct i915_page_dma * const to,
+	       struct i915_page_table * const to,
 	       u64 (*encode)(const dma_addr_t, const enum i915_cache_level))
 {
 	/* Each thread pre-pins the pd, and we may have a thread per pde. */
@@ -83,13 +86,13 @@ __set_pd_entry(struct i915_page_directory * const pd,
 
 	atomic_inc(px_used(pd));
 	pd->entry[idx] = to;
-	write_dma_entry(px_base(pd), idx, encode(to->daddr, I915_CACHE_LLC));
+	write_dma_entry(px_base(pd), idx, encode(px_dma(to), I915_CACHE_LLC));
 }
 
 void
 clear_pd_entry(struct i915_page_directory * const pd,
 	       const unsigned short idx,
-	       const struct i915_page_scratch * const scratch)
+	       const struct drm_i915_gem_object * const scratch)
 {
 	GEM_BUG_ON(atomic_read(px_used(pd)) == 0);
 
@@ -102,7 +105,7 @@ bool
 release_pd_entry(struct i915_page_directory * const pd,
 		 const unsigned short idx,
 		 struct i915_page_table * const pt,
-		 const struct i915_page_scratch * const scratch)
+		 const struct drm_i915_gem_object * const scratch)
 {
 	bool free = false;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 68a08486fc87..f1f27b7fc746 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -201,16 +201,18 @@ static struct i915_address_space *vm_alias(struct i915_address_space *vm)
 	return vm;
 }
 
+static u32 pp_dir(struct i915_address_space *vm)
+{
+	return to_gen6_ppgtt(i915_vm_to_ppgtt(vm))->pp_dir;
+}
+
 static void set_pp_dir(struct intel_engine_cs *engine)
 {
 	struct i915_address_space *vm = vm_alias(engine->gt->vm);
 
 	if (vm) {
-		struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
-
 		ENGINE_WRITE(engine, RING_PP_DIR_DCLV, PP_DIR_DCLV_2G);
-		ENGINE_WRITE(engine, RING_PP_DIR_BASE,
-			     px_base(ppgtt->pd)->ggtt_offset << 10);
+		ENGINE_WRITE(engine, RING_PP_DIR_BASE, pp_dir(vm));
 	}
 }
 
@@ -608,7 +610,7 @@ static const struct intel_context_ops ring_context_ops = {
 };
 
 static int load_pd_dir(struct i915_request *rq,
-		       const struct i915_ppgtt *ppgtt,
+		       struct i915_address_space *vm,
 		       u32 valid)
 {
 	const struct intel_engine_cs * const engine = rq->engine;
@@ -624,7 +626,7 @@ static int load_pd_dir(struct i915_request *rq,
 
 	*cs++ = MI_LOAD_REGISTER_IMM(1);
 	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_BASE(engine->mmio_base));
-	*cs++ = px_base(ppgtt->pd)->ggtt_offset << 10;
+	*cs++ = pp_dir(vm);
 
 	/* Stall until the page table load is complete? */
 	*cs++ = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
@@ -826,7 +828,7 @@ static int switch_mm(struct i915_request *rq, struct i915_address_space *vm)
 	 * post-sync op, this extra pass appears vital before a
 	 * mm switch!
 	 */
-	ret = load_pd_dir(rq, i915_vm_to_ppgtt(vm), PP_DIR_DCLV_2G);
+	ret = load_pd_dir(rq, vm, PP_DIR_DCLV_2G);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 3c3b9842bbbd..1570eb8aa978 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -403,6 +403,14 @@ static void release_shadow_wa_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 	wa_ctx->indirect_ctx.shadow_va = NULL;
 }
 
+static void set_dma_address(struct i915_page_directory *pd, dma_addr_t addr)
+{
+	struct scatterlist *sg = pd->pt.base->mm.pages->sgl;
+
+	/* This is not a good idea */
+	sg->dma_address = addr;
+}
+
 static void set_context_ppgtt_from_shadow(struct intel_vgpu_workload *workload,
 					  struct intel_context *ce)
 {
@@ -411,7 +419,7 @@ static void set_context_ppgtt_from_shadow(struct intel_vgpu_workload *workload,
 	int i = 0;
 
 	if (mm->ppgtt_mm.root_entry_type == GTT_TYPE_PPGTT_ROOT_L4_ENTRY) {
-		px_dma(ppgtt->pd) = mm->ppgtt_mm.shadow_pdps[0];
+		set_dma_address(ppgtt->pd, mm->ppgtt_mm.shadow_pdps[0]);
 	} else {
 		for (i = 0; i < GVT_RING_CTX_NR_PDPS; i++) {
 			struct i915_page_directory * const pd =
@@ -421,7 +429,8 @@ static void set_context_ppgtt_from_shadow(struct intel_vgpu_workload *workload,
 			   shadow ppgtt. */
 			if (!pd)
 				break;
-			px_dma(pd) = mm->ppgtt_mm.shadow_pdps[i];
+
+			set_dma_address(pd, mm->ppgtt_mm.shadow_pdps[i]);
 		}
 	}
 }
@@ -1240,13 +1249,13 @@ i915_context_ppgtt_root_restore(struct intel_vgpu_submission *s,
 	int i;
 
 	if (i915_vm_is_4lvl(&ppgtt->vm)) {
-		px_dma(ppgtt->pd) = s->i915_context_pml4;
+		set_dma_address(ppgtt->pd, s->i915_context_pml4);
 	} else {
 		for (i = 0; i < GEN8_3LVL_PDPES; i++) {
 			struct i915_page_directory * const pd =
 				i915_pd_entry(ppgtt->pd, i);
 
-			px_dma(pd) = s->i915_context_pdps[i];
+			set_dma_address(pd, s->i915_context_pdps[i]);
 		}
 	}
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 67102dc26fce..ea281d7b0630 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1080,6 +1080,7 @@ static void i915_driver_release(struct drm_device *dev)
 
 	intel_memory_regions_driver_release(dev_priv);
 	i915_ggtt_driver_release(dev_priv);
+	i915_gem_drain_freed_objects(dev_priv);
 
 	i915_driver_mmio_release(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6e9072ab30a1..100c2029798f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -590,11 +590,6 @@ struct i915_gem_mm {
 	 */
 	atomic_t free_count;
 
-	/**
-	 * Small stash of WC pages
-	 */
-	struct pagestash wc_stash;
-
 	/**
 	 * tmpfs instance used for shmem backed objects
 	 */
diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
index 5e4fb0fba34b..63a29211652e 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
@@ -78,6 +78,8 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
 
 	i915_address_space_init(&ppgtt->vm, VM_CLASS_PPGTT);
 
+	ppgtt->vm.alloc_pt_dma = alloc_pt_dma;
+
 	ppgtt->vm.clear_range = mock_clear_range;
 	ppgtt->vm.insert_page = mock_insert_page;
 	ppgtt->vm.insert_entries = mock_insert_entries;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
