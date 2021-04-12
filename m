Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C906735BF9A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 11:10:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74EC76E3B7;
	Mon, 12 Apr 2021 09:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CCE86E3D2;
 Mon, 12 Apr 2021 09:09:50 +0000 (UTC)
IronPort-SDR: xqlQqQkAzKjngknaTxqEezgLdTvGc5PpdHL21VTXi5UQzxcWaKC3qTwfbbcAnrlXeuqmWcBpPr
 c1FE/VuuvnyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="193709762"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="193709762"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 02:09:50 -0700
IronPort-SDR: fSxXBe2kc1CGvxSLrdVAIDqpxsFIUs7v8W/7ZqRKQ6EI5DRIeBahXDmFG6yjBhLiDQaJl8ud8W
 0Qv0JJSQFmMA==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="423712804"
Received: from tarynrox-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.5.30])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 02:09:48 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 10:05:25 +0100
Message-Id: <20210412090526.30547-19-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210412090526.30547-1-matthew.auld@intel.com>
References: <20210412090526.30547-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/19] drm/i915/gtt: map the PD up front
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
Cc: dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to general our accessor for the page directories and tables from
using the simple kmap_atomic to support local memory, and this setup
must be done on acquisition of the backing storage prior to entering
fence execution contexts. Here we replace the kmap with the object
maping code that for simple single page shmemfs object will return a
plain kmap, that is then kept for the lifetime of the page directory.

v2: (Thomas) Rebase on dma_resv and obj->mm.lock removal.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/gem/selftests/i915_gem_context.c | 11 +----
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          | 11 ++---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 26 ++++------
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c           | 48 +++++++++----------
 drivers/gpu/drm/i915/gt/intel_gtt.h           | 11 +++--
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  7 ++-
 drivers/gpu/drm/i915/i915_vma.c               |  3 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 10 ++--
 drivers/gpu/drm/i915/selftests/i915_perf.c    |  3 +-
 10 files changed, 54 insertions(+), 78 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 5fef592390cb..ce70d0a3afb2 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1740,7 +1740,6 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 static int check_scratch_page(struct i915_gem_context *ctx, u32 *out)
 {
 	struct i915_address_space *vm;
-	struct page *page;
 	u32 *vaddr;
 	int err = 0;
 
@@ -1748,24 +1747,18 @@ static int check_scratch_page(struct i915_gem_context *ctx, u32 *out)
 	if (!vm)
 		return -ENODEV;
 
-	page = __px_page(vm->scratch[0]);
-	if (!page) {
+	if (!vm->scratch[0]) {
 		pr_err("No scratch page!\n");
 		return -EINVAL;
 	}
 
-	vaddr = kmap(page);
-	if (!vaddr) {
-		pr_err("No (mappable) scratch page!\n");
-		return -EINVAL;
-	}
+	vaddr = __px_vaddr(vm->scratch[0]);
 
 	memcpy(out, vaddr, sizeof(*out));
 	if (memchr_inv(vaddr, *out, PAGE_SIZE)) {
 		pr_err("Inconsistent initial state of scratch page!\n");
 		err = -EINVAL;
 	}
-	kunmap(page);
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index e08dff376339..21b1085769be 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -96,9 +96,8 @@ static void gen6_ppgtt_clear_range(struct i915_address_space *vm,
 		 * entries back to scratch.
 		 */
 
-		vaddr = kmap_atomic_px(pt);
+		vaddr = px_vaddr(pt);
 		memset32(vaddr + pte, scratch_pte, count);
-		kunmap_atomic(vaddr);
 
 		pte = 0;
 	}
@@ -120,7 +119,7 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
 
 	GEM_BUG_ON(!pd->entry[act_pt]);
 
-	vaddr = kmap_atomic_px(i915_pt_entry(pd, act_pt));
+	vaddr = px_vaddr(i915_pt_entry(pd, act_pt));
 	do {
 		GEM_BUG_ON(sg_dma_len(iter.sg) < I915_GTT_PAGE_SIZE);
 		vaddr[act_pte] = pte_encode | GEN6_PTE_ADDR_ENCODE(iter.dma);
@@ -136,12 +135,10 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
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
@@ -235,7 +232,7 @@ static int gen6_ppgtt_init_scratch(struct gen6_ppgtt *ppgtt)
 		goto err_scratch0;
 	}
 
-	ret = pin_pt_dma(vm, vm->scratch[1]);
+	ret = map_pt_dma(vm, vm->scratch[1]);
 	if (ret)
 		goto err_scratch1;
 
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 176c19633412..f83496836f0f 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -242,11 +242,10 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
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
@@ -375,7 +374,7 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 	gen8_pte_t *vaddr;
 
 	pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
-	vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
+	vaddr = px_vaddr(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
 	do {
 		GEM_BUG_ON(sg_dma_len(iter->sg) < I915_GTT_PAGE_SIZE);
 		vaddr[gen8_pd_index(idx, 0)] = pte_encode | iter->dma;
@@ -402,12 +401,10 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
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
@@ -442,7 +439,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			encode |= GEN8_PDE_PS_2M;
 			page_size = I915_GTT_PAGE_SIZE_2M;
 
-			vaddr = kmap_atomic_px(pd);
+			vaddr = px_vaddr(pd);
 		} else {
 			struct i915_page_table *pt =
 				i915_pt_entry(pd, __gen8_pte_index(start, 1));
@@ -457,7 +454,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 			     rem >= (I915_PDES - index) * I915_GTT_PAGE_SIZE))
 				maybe_64K = __gen8_pte_index(start, 1);
 
-			vaddr = kmap_atomic_px(pt);
+			vaddr = px_vaddr(pt);
 		}
 
 		do {
@@ -491,7 +488,6 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 		} while (rem >= page_size && index < I915_PDES);
 
 		clflush_cache_range(vaddr, PAGE_SIZE);
-		kunmap_atomic(vaddr);
 
 		/*
 		 * Is it safe to mark the 2M block as 64K? -- Either we have
@@ -505,9 +501,8 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 		      !iter->sg && IS_ALIGNED(vma->node.start +
 					      vma->node.size,
 					      I915_GTT_PAGE_SIZE_2M)))) {
-			vaddr = kmap_atomic_px(pd);
+			vaddr = px_vaddr(pd);
 			vaddr[maybe_64K] |= GEN8_PDE_IPS_64K;
-			kunmap_atomic(vaddr);
 			page_size = I915_GTT_PAGE_SIZE_64K;
 
 			/*
@@ -523,12 +518,11 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 				u16 i;
 
 				encode = vma->vm->scratch[0]->encode;
-				vaddr = kmap_atomic_px(i915_pt_entry(pd, maybe_64K));
+				vaddr = px_vaddr(i915_pt_entry(pd, maybe_64K));
 
 				for (i = 1; i < index; i += 16)
 					memset64(vaddr + i, encode, 15);
 
-				kunmap_atomic(vaddr);
 			}
 		}
 
@@ -602,7 +596,7 @@ static int gen8_init_scratch(struct i915_address_space *vm)
 		if (IS_ERR(obj))
 			goto free_scratch;
 
-		ret = pin_pt_dma(vm, obj);
+		ret = map_pt_dma(vm, obj);
 		if (ret) {
 			i915_gem_object_put(obj);
 			goto free_scratch;
@@ -639,7 +633,7 @@ static int gen8_preallocate_top_level_pdp(struct i915_ppgtt *ppgtt)
 		if (IS_ERR(pde))
 			return PTR_ERR(pde);
 
-		err = pin_pt_dma(vm, pde->pt.base);
+		err = map_pt_dma(vm, pde->pt.base);
 		if (err) {
 			i915_gem_object_put(pde->pt.base);
 			free_pd(vm, pde);
@@ -675,7 +669,7 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
 		goto err_pd;
 	}
 
-	err = pin_pt_dma(vm, pd->pt.base);
+	err = map_pt_dma(vm, pd->pt.base);
 	if (err)
 		goto err_pd;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 670c1271e7d5..d94628b9d89e 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -657,7 +657,7 @@ static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
 		goto err_ppgtt;
 
 	i915_gem_object_lock(ppgtt->vm.scratch[0], NULL);
-	err = i915_vm_pin_pt_stash(&ppgtt->vm, &stash);
+	err = i915_vm_map_pt_stash(&ppgtt->vm, &stash);
 	i915_gem_object_unlock(ppgtt->vm.scratch[0]);
 	if (err)
 		goto err_stash;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 941f8af016d6..d386b89e2758 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -25,27 +25,25 @@ struct drm_i915_gem_object *alloc_pt_dma(struct i915_address_space *vm, int sz)
 	return obj;
 }
 
-int pin_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
+int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
 {
-	int err;
+	void *vaddr;
 
-	i915_gem_object_lock(obj, NULL);
-	err = i915_gem_object_pin_pages(obj);
-	i915_gem_object_unlock(obj);
-	if (err)
-		return err;
+	vaddr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
+	if (IS_ERR(vaddr))
+		return PTR_ERR(vaddr);
 
 	i915_gem_object_make_unshrinkable(obj);
 	return 0;
 }
 
-int pin_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
+int map_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
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
@@ -155,6 +153,14 @@ void clear_pages(struct i915_vma *vma)
 	memset(&vma->page_sizes, 0, sizeof(vma->page_sizes));
 }
 
+void *__px_vaddr(struct drm_i915_gem_object *p)
+{
+	enum i915_map_type type;
+
+	GEM_BUG_ON(!i915_gem_object_has_pages(p));
+	return page_unpack_bits(p->mm.mapping, &type);
+}
+
 dma_addr_t __px_dma(struct drm_i915_gem_object *p)
 {
 	GEM_BUG_ON(!i915_gem_object_has_pages(p));
@@ -170,32 +176,22 @@ struct page *__px_page(struct drm_i915_gem_object *p)
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
@@ -225,7 +221,7 @@ int setup_scratch_page(struct i915_address_space *vm)
 		if (IS_ERR(obj))
 			goto skip;
 
-		if (pin_pt_dma(vm, obj))
+		if (map_pt_dma(vm, obj))
 			goto skip_obj;
 
 		/* We need a single contiguous page for our scratch */
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index e67e34e17913..40e486704558 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -180,6 +180,9 @@ struct page *__px_page(struct drm_i915_gem_object *p);
 dma_addr_t __px_dma(struct drm_i915_gem_object *p);
 #define px_dma(px) (__px_dma(px_base(px)))
 
+void *__px_vaddr(struct drm_i915_gem_object *p);
+#define px_vaddr(px) (__px_vaddr(px_base(px)))
+
 #define px_pt(px) \
 	__px_choose_expr(px, struct i915_page_table *, __x, \
 	__px_choose_expr(px, struct i915_page_directory *, &__x->pt, \
@@ -511,8 +514,6 @@ struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt);
 void i915_ggtt_suspend(struct i915_ggtt *gtt);
 void i915_ggtt_resume(struct i915_ggtt *ggtt);
 
-#define kmap_atomic_px(px) kmap_atomic(__px_page(px_base(px)))
-
 void
 fill_page_dma(struct drm_i915_gem_object *p, const u64 val, unsigned int count);
 
@@ -530,8 +531,8 @@ struct i915_page_table *alloc_pt(struct i915_address_space *vm);
 struct i915_page_directory *alloc_pd(struct i915_address_space *vm);
 struct i915_page_directory *__alloc_pd(int npde);
 
-int pin_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj);
-int pin_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object *obj);
+int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj);
+int map_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object *obj);
 
 void free_px(struct i915_address_space *vm,
 	     struct i915_page_table *pt, int lvl);
@@ -578,7 +579,7 @@ void setup_private_pat(struct intel_uncore *uncore);
 int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
 			   struct i915_vm_pt_stash *stash,
 			   u64 size);
-int i915_vm_pin_pt_stash(struct i915_address_space *vm,
+int i915_vm_map_pt_stash(struct i915_address_space *vm,
 			 struct i915_vm_pt_stash *stash);
 void i915_vm_free_pt_stash(struct i915_address_space *vm,
 			   struct i915_vm_pt_stash *stash);
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index 014ae8ac4480..4e3d80c2295c 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -87,11 +87,10 @@ write_dma_entry(struct drm_i915_gem_object * const pdma,
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
@@ -258,7 +257,7 @@ int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
 	return 0;
 }
 
-int i915_vm_pin_pt_stash(struct i915_address_space *vm,
+int i915_vm_map_pt_stash(struct i915_address_space *vm,
 			 struct i915_vm_pt_stash *stash)
 {
 	struct i915_page_table *pt;
@@ -266,7 +265,7 @@ int i915_vm_pin_pt_stash(struct i915_address_space *vm,
 
 	for (n = 0; n < ARRAY_SIZE(stash->pt); n++) {
 		for (pt = stash->pt[n]; pt; pt = pt->stash) {
-			err = pin_pt_dma_locked(vm, pt->base);
+			err = map_pt_dma_locked(vm, pt->base);
 			if (err)
 				return err;
 		}
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index e24d33aecac4..c68a743fac2a 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -912,8 +912,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 			if (err)
 				goto err_fence;
 
-			err = i915_vm_pin_pt_stash(vma->vm,
-						   &work->stash);
+			err = i915_vm_map_pt_stash(vma->vm, &work->stash);
 			if (err)
 				goto err_fence;
 		}
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 2e4f06eaacc1..e060e455e9f6 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -186,7 +186,7 @@ static int igt_ppgtt_alloc(void *arg)
 		if (err)
 			goto err_ppgtt_cleanup;
 
-		err = i915_vm_pin_pt_stash(&ppgtt->vm, &stash);
+		err = i915_vm_map_pt_stash(&ppgtt->vm, &stash);
 		if (err) {
 			i915_vm_free_pt_stash(&ppgtt->vm, &stash);
 			goto err_ppgtt_cleanup;
@@ -208,7 +208,7 @@ static int igt_ppgtt_alloc(void *arg)
 		if (err)
 			goto err_ppgtt_cleanup;
 
-		err = i915_vm_pin_pt_stash(&ppgtt->vm, &stash);
+		err = i915_vm_map_pt_stash(&ppgtt->vm, &stash);
 		if (err) {
 			i915_vm_free_pt_stash(&ppgtt->vm, &stash);
 			goto err_ppgtt_cleanup;
@@ -325,11 +325,10 @@ static int lowlevel_hole(struct i915_address_space *vm,
 							   BIT_ULL(size)))
 					goto alloc_vm_end;
 
-				err = i915_vm_pin_pt_stash(vm, &stash);
+				err = i915_vm_map_pt_stash(vm, &stash);
 				if (!err)
 					vm->allocate_va_range(vm, &stash,
 							      addr, BIT_ULL(size));
-
 				i915_vm_free_pt_stash(vm, &stash);
 alloc_vm_end:
 				if (err == -EDEADLK) {
@@ -1967,10 +1966,9 @@ static int igt_cs_tlb(void *arg)
 			if (err)
 				goto end_ww;
 
-			err = i915_vm_pin_pt_stash(vm, &stash);
+			err = i915_vm_map_pt_stash(vm, &stash);
 			if (!err)
 				vm->allocate_va_range(vm, &stash, offset, chunk_size);
-
 			i915_vm_free_pt_stash(vm, &stash);
 end_ww:
 			if (err == -EDEADLK) {
diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
index e9d86dab8677..bfb0290967a1 100644
--- a/drivers/gpu/drm/i915/selftests/i915_perf.c
+++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
@@ -307,7 +307,7 @@ static int live_noa_gpr(void *arg)
 	}
 
 	/* Poison the ce->vm so we detect writes not to the GGTT gt->scratch */
-	scratch = kmap(__px_page(ce->vm->scratch[0]));
+	scratch = __px_vaddr(ce->vm->scratch[0]);
 	memset(scratch, POISON_FREE, PAGE_SIZE);
 
 	rq = intel_context_create_request(ce);
@@ -405,7 +405,6 @@ static int live_noa_gpr(void *arg)
 out_rq:
 	i915_request_put(rq);
 out_ce:
-	kunmap(__px_page(ce->vm->scratch[0]));
 	intel_context_put(ce);
 out:
 	stream_destroy(stream);
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
