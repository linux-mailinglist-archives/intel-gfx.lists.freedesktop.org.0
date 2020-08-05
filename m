Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D7123CA85
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E202D6E59D;
	Wed,  5 Aug 2020 12:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5906E5A0
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 12:22:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22039486-1500050 
 for multiple; Wed, 05 Aug 2020 13:22:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 13:22:21 +0100
Message-Id: <20200805122231.23313-28-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/37] drm/i915/gtt: map the PD up front
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matthew Auld <matthew.auld@intel.com>

We need to general our accessor for the page directories and tables from
using the simple kmap_atomic to support local memory, and this setup
must be done on acquisition of the backing storage prior to entering
fence execution contexts. Here we replace the kmap with the object
maping code that for simple single page shmemfs object will return a
plain kmap, that is then kept for the lifetime of the page directory.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  3 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          | 11 +++---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 26 ++++++--------
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c           | 34 ++++++++-----------
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  9 ++---
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  7 ++--
 drivers/gpu/drm/i915/i915_vma.c               |  3 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  8 ++---
 9 files changed, 45 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 3a79b6facb02..d3ac2542a039 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1449,7 +1449,8 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 		if (err)
 			return eb_vm_work_cancel(work, err);
 
-		err = i915_vm_pin_pt_stash(work->vm, &work->stash);
+		/* We also need to prepare mappings to write the PD pages */
+		err = i915_vm_map_pt_stash(work->vm, &work->stash);
 		if (err)
 			return eb_vm_work_cancel(work, err);
 
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 1b4fa9ce6658..dd723d9832b9 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -105,9 +105,8 @@ static void gen6_ppgtt_clear_range(struct i915_address_space *vm,
 		 * entries back to scratch.
 		 */
 
-		vaddr = kmap_atomic_px(pt);
+		vaddr = px_vaddr(pt);
 		memset32(vaddr + pte, scratch_pte, count);
-		kunmap_atomic(vaddr);
 
 		pte = 0;
 	}
@@ -129,7 +128,7 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
 
 	GEM_BUG_ON(!pd->entry[act_pt]);
 
-	vaddr = kmap_atomic_px(i915_pt_entry(pd, act_pt));
+	vaddr = px_vaddr(i915_pt_entry(pd, act_pt));
 	do {
 		GEM_BUG_ON(iter.sg->length < I915_GTT_PAGE_SIZE);
 		vaddr[act_pte] = pte_encode | GEN6_PTE_ADDR_ENCODE(iter.dma);
@@ -145,12 +144,10 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
 		}
 
 		if (++act_pte == GEN6_PTES) {
-			kunmap_atomic(vaddr);
-			vaddr = kmap_atomic_px(i915_pt_entry(pd, ++act_pt));
+			vaddr = px_vaddr(i915_pt_entry(pd, ++act_pt));
 			act_pte = 0;
 		}
 	} while (1);
-	kunmap_atomic(vaddr);
 
 	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
 }
@@ -242,7 +239,7 @@ static int gen6_ppgtt_init_scratch(struct gen6_ppgtt *ppgtt)
 	if (IS_ERR(vm->scratch[1]))
 		return PTR_ERR(vm->scratch[1]);
 
-	ret = pin_pt_dma(vm, vm->scratch[1]);
+	ret = map_pt_dma(vm, vm->scratch[1]);
 	if (ret) {
 		i915_gem_object_put(vm->scratch[1]);
 		return ret;
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index eb64f474a78c..ca25e751a023 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -237,11 +237,10 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
 			    atomic_read(&pt->used));
 			GEM_BUG_ON(!count || count >= atomic_read(&pt->used));
 
-			vaddr = kmap_atomic_px(pt);
+			vaddr = px_vaddr(pt);
 			memset64(vaddr + gen8_pd_index(start, 0),
 				 vm->scratch[0]->encode,
 				 count);
-			kunmap_atomic(vaddr);
 
 			atomic_sub(count, &pt->used);
 			start += count;
@@ -370,7 +369,7 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 	gen8_pte_t *vaddr;
 
 	pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
-	vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
+	vaddr = px_vaddr(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
 	do {
 		GEM_BUG_ON(iter->sg->length < I915_GTT_PAGE_SIZE);
 		vaddr[gen8_pd_index(idx, 0)] = pte_encode | iter->dma;
@@ -397,12 +396,10 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 			}
 
 			clflush_cache_range(vaddr, PAGE_SIZE);
-			kunmap_atomic(vaddr);
-			vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
+			vaddr = px_vaddr(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
 		}
 	} while (1);
 	clflush_cache_range(vaddr, PAGE_SIZE);
-	kunmap_atomic(vaddr);
 
 	return idx;
 }
@@ -437,7 +434,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			encode |= GEN8_PDE_PS_2M;
 			page_size = I915_GTT_PAGE_SIZE_2M;
 
-			vaddr = kmap_atomic_px(pd);
+			vaddr = px_vaddr(pd);
 		} else {
 			struct i915_page_table *pt =
 				i915_pt_entry(pd, __gen8_pte_index(start, 1));
@@ -452,7 +449,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			     rem >= (I915_PDES - index) * I915_GTT_PAGE_SIZE))
 				maybe_64K = __gen8_pte_index(start, 1);
 
-			vaddr = kmap_atomic_px(pt);
+			vaddr = px_vaddr(pt);
 		}
 
 		do {
@@ -483,7 +480,6 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 		} while (rem >= page_size && index < I915_PDES);
 
 		clflush_cache_range(vaddr, PAGE_SIZE);
-		kunmap_atomic(vaddr);
 
 		/*
 		 * Is it safe to mark the 2M block as 64K? -- Either we have
@@ -497,9 +493,8 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 		      !iter->sg && IS_ALIGNED(vma->node.start +
 					      vma->node.size,
 					      I915_GTT_PAGE_SIZE_2M)))) {
-			vaddr = kmap_atomic_px(pd);
+			vaddr = px_vaddr(pd);
 			vaddr[maybe_64K] |= GEN8_PDE_IPS_64K;
-			kunmap_atomic(vaddr);
 			page_size = I915_GTT_PAGE_SIZE_64K;
 
 			/*
@@ -515,12 +510,11 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 				u16 i;
 
 				encode = vma->vm->scratch[0]->encode;
-				vaddr = kmap_atomic_px(i915_pt_entry(pd, maybe_64K));
+				vaddr = px_vaddr(i915_pt_entry(pd, maybe_64K));
 
 				for (i = 1; i < index; i += 16)
 					memset64(vaddr + i, encode, 15);
 
-				kunmap_atomic(vaddr);
 			}
 		}
 
@@ -589,7 +583,7 @@ static int gen8_init_scratch(struct i915_address_space *vm)
 		if (IS_ERR(obj))
 			goto free_scratch;
 
-		ret = pin_pt_dma(vm, obj);
+		ret = map_pt_dma(vm, obj);
 		if (ret) {
 			i915_gem_object_put(obj);
 			goto free_scratch;
@@ -625,7 +619,7 @@ static int gen8_preallocate_top_level_pdp(struct i915_ppgtt *ppgtt)
 		if (IS_ERR(pde))
 			return PTR_ERR(pde);
 
-		err = pin_pt_dma(vm, pde->pt.base);
+		err = map_pt_dma(vm, pde->pt.base);
 		if (err) {
 			i915_gem_object_put(pde->pt.base);
 			free_pd(vm, pde);
@@ -661,7 +655,7 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
 		goto err_pd;
 	}
 
-	err = pin_pt_dma(vm, pd->pt.base);
+	err = map_pt_dma(vm, pd->pt.base);
 	if (err)
 		goto err_pd;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 33a3f627ddb1..2bf514a5a2ca 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -615,7 +615,7 @@ static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
 	if (err)
 		goto err_ppgtt;
 
-	err = i915_vm_pin_pt_stash(&ppgtt->vm, &stash);
+	err = i915_vm_map_pt_stash(&ppgtt->vm, &stash);
 	if (err)
 		goto err_stash;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 1e541bc942a0..1a7efbad8f74 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -19,13 +19,13 @@ struct drm_i915_gem_object *alloc_pt_dma(struct i915_address_space *vm, int sz)
 	return i915_gem_object_create_internal(vm->i915, sz);
 }
 
-int pin_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
+int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
 {
-	int err;
+	void *vaddr;
 
-	err = i915_gem_object_pin_pages(obj);
-	if (err)
-		return err;
+	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	if (IS_ERR(vaddr))
+		return PTR_ERR(vaddr);
 
 	i915_gem_object_make_unshrinkable(obj);
 	return 0;
@@ -123,6 +123,12 @@ void clear_pages(struct i915_vma *vma)
 	memset(&vma->page_sizes, 0, sizeof(vma->page_sizes));
 }
 
+void *__px_vaddr(struct drm_i915_gem_object *p)
+{
+	GEM_BUG_ON(!i915_gem_object_has_pages(p));
+	return __i915_gem_object_mapping(p);
+}
+
 dma_addr_t __px_dma(struct drm_i915_gem_object *p)
 {
 	GEM_BUG_ON(!i915_gem_object_has_pages(p));
@@ -138,32 +144,22 @@ struct page *__px_page(struct drm_i915_gem_object *p)
 void
 fill_page_dma(struct drm_i915_gem_object *p, const u64 val, unsigned int count)
 {
-	struct page *page = __px_page(p);
-	void *vaddr;
+	void *vaddr = __px_vaddr(p);
 
-	vaddr = kmap(page);
 	memset64(vaddr, val, count);
 	clflush_cache_range(vaddr, PAGE_SIZE);
-	kunmap(page);
 }
 
 static void poison_scratch_page(struct drm_i915_gem_object *scratch)
 {
-	struct sgt_iter sgt;
-	struct page *page;
+	void *vaddr = __px_vaddr(scratch);
 	u8 val;
 
 	val = 0;
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
 		val = POISON_FREE;
 
-	for_each_sgt_page(page, sgt, scratch->mm.pages) {
-		void *vaddr;
-
-		vaddr = kmap(page);
-		memset(vaddr, val, PAGE_SIZE);
-		kunmap(page);
-	}
+	memset(vaddr, val, scratch->base.size);
 }
 
 int setup_scratch_page(struct i915_address_space *vm)
@@ -193,7 +189,7 @@ int setup_scratch_page(struct i915_address_space *vm)
 		if (IS_ERR(obj))
 			goto skip;
 
-		if (pin_pt_dma(vm, obj))
+		if (map_pt_dma(vm, obj))
 			goto skip_obj;
 
 		/* We need a single contiguous page for our scratch */
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 7e956dd1a969..c659dbd6cda2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -176,6 +176,9 @@ struct page *__px_page(struct drm_i915_gem_object *p);
 dma_addr_t __px_dma(struct drm_i915_gem_object *p);
 #define px_dma(px) (__px_dma(px_base(px)))
 
+void *__px_vaddr(struct drm_i915_gem_object *p);
+#define px_vaddr(px) (__px_vaddr(px_base(px)))
+
 #define px_pt(px) \
 	__px_choose_expr(px, struct i915_page_table *, __x, \
 	__px_choose_expr(px, struct i915_page_directory *, &__x->pt, \
@@ -504,8 +507,6 @@ struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt);
 void i915_ggtt_suspend(struct i915_ggtt *gtt);
 void i915_ggtt_resume(struct i915_ggtt *ggtt);
 
-#define kmap_atomic_px(px) kmap_atomic(__px_page(px_base(px)))
-
 void
 fill_page_dma(struct drm_i915_gem_object *p, const u64 val, unsigned int count);
 
@@ -523,7 +524,7 @@ struct i915_page_table *alloc_pt(struct i915_address_space *vm);
 struct i915_page_directory *alloc_pd(struct i915_address_space *vm);
 struct i915_page_directory *__alloc_pd(int npde);
 
-int pin_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj);
+int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj);
 
 void free_px(struct i915_address_space *vm,
 	     struct i915_page_table *pt, int lvl);
@@ -570,7 +571,7 @@ void setup_private_pat(struct intel_uncore *uncore);
 int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
 			   struct i915_vm_pt_stash *stash,
 			   u64 size);
-int i915_vm_pin_pt_stash(struct i915_address_space *vm,
+int i915_vm_map_pt_stash(struct i915_address_space *vm,
 			 struct i915_vm_pt_stash *stash);
 void i915_vm_free_pt_stash(struct i915_address_space *vm,
 			   struct i915_vm_pt_stash *stash);
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index 46d9aceda64c..11e7288464c0 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -85,11 +85,10 @@ write_dma_entry(struct drm_i915_gem_object * const pdma,
 		const unsigned short idx,
 		const u64 encoded_entry)
 {
-	u64 * const vaddr = kmap_atomic(__px_page(pdma));
+	u64 * const vaddr = __px_vaddr(pdma);
 
 	vaddr[idx] = encoded_entry;
 	clflush_cache_range(&vaddr[idx], sizeof(u64));
-	kunmap_atomic(vaddr);
 }
 
 void
@@ -254,7 +253,7 @@ int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
 	return 0;
 }
 
-int i915_vm_pin_pt_stash(struct i915_address_space *vm,
+int i915_vm_map_pt_stash(struct i915_address_space *vm,
 			 struct i915_vm_pt_stash *stash)
 {
 	struct i915_page_table *pt;
@@ -262,7 +261,7 @@ int i915_vm_pin_pt_stash(struct i915_address_space *vm,
 
 	for (n = 0; n < ARRAY_SIZE(stash->pt); n++) {
 		for (pt = stash->pt[n]; pt; pt = pt->stash) {
-			err = pin_pt_dma(vm, pt->base);
+			err = map_pt_dma(vm, pt->base);
 			if (err)
 				return err;
 		}
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 899d83b567e7..d6f5a3381821 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -885,8 +885,7 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 					       &work->stash,
 					       vma->size);
 
-			err = i915_vm_pin_pt_stash(vma->vm,
-						   &work->stash);
+			err = i915_vm_map_pt_stash(vma->vm, &work->stash);
 			if (err)
 				goto err_fence;
 		}
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index af8205a2bd8f..9fe29a5aaad6 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -178,7 +178,7 @@ static int igt_ppgtt_alloc(void *arg)
 		if (err)
 			goto err_ppgtt_cleanup;
 
-		err = i915_vm_pin_pt_stash(&ppgtt->vm, &stash);
+		err = i915_vm_map_pt_stash(&ppgtt->vm, &stash);
 		if (err) {
 			i915_vm_free_pt_stash(&ppgtt->vm, &stash);
 			goto err_ppgtt_cleanup;
@@ -200,7 +200,7 @@ static int igt_ppgtt_alloc(void *arg)
 		if (err)
 			goto err_ppgtt_cleanup;
 
-		err = i915_vm_pin_pt_stash(&ppgtt->vm, &stash);
+		err = i915_vm_map_pt_stash(&ppgtt->vm, &stash);
 		if (err) {
 			i915_vm_free_pt_stash(&ppgtt->vm, &stash);
 			goto err_ppgtt_cleanup;
@@ -301,7 +301,7 @@ static int lowlevel_hole(struct i915_address_space *vm,
 							   BIT_ULL(size)))
 					break;
 
-				if (i915_vm_pin_pt_stash(vm, &stash)) {
+				if (i915_vm_map_pt_stash(vm, &stash)) {
 					i915_vm_free_pt_stash(vm, &stash);
 					break;
 				}
@@ -1929,7 +1929,7 @@ static int igt_cs_tlb(void *arg)
 			if (err)
 				goto end;
 
-			err = i915_vm_pin_pt_stash(vm, &stash);
+			err = i915_vm_map_pt_stash(vm, &stash);
 			if (err) {
 				i915_vm_free_pt_stash(vm, &stash);
 				goto end;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
