Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D01C2322D2
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 18:42:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B88888DA5;
	Wed, 29 Jul 2020 16:42:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 451176E57E
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 16:42:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21971538-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 17:42:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jul 2020 17:42:17 +0100
Message-Id: <20200729164219.5737-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915: Preallocate stashes for vma
 page-directories
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

We need to make the DMA allocations used for page directories to be
performed up front so that we can include those allocations in our
memory reservation pass. The downside is that we have to assume the
worst case, even before we know the final layout, and always allocate
enough page directories for this object, even when there will be overlap.
This unfortunately can be quite expensive, especially as we have to
clear/reset the page directories and DMA pages, but it should only be
required during early phases of a workload when new objects are being
discovered, or after memory/eviction pressure when we need to rebind.
Once we reach steady state, the objects should not be moved and we no
longer need to preallocating the pages tables.

It should be noted that the lifetime for the page directories DMA is
more or less decoupled from individual fences as they will be shared
across objects across timelines.

v2: Only allocate enough PD space for the PTE we may use, we do not need
to allocate PD that will be left as scratch.
v3: Store the shift unto the first PD level to encapsulate the different
PTE counts for gen6/gen8.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_client_blt.c    | 11 +--
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          | 40 ++++-----
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 78 +++++------------
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 60 ++++++--------
 drivers/gpu/drm/i915/gt/intel_gtt.h           | 46 ++++++----
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         | 83 ++++++++++++++++---
 drivers/gpu/drm/i915/i915_vma.c               | 27 +++---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 60 ++++++++------
 drivers/gpu/drm/i915/selftests/mock_gtt.c     | 22 ++---
 9 files changed, 237 insertions(+), 190 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
index 278664f831e7..947c8aa8e13e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
@@ -32,12 +32,13 @@ static void vma_clear_pages(struct i915_vma *vma)
 	vma->pages = NULL;
 }
 
-static int vma_bind(struct i915_address_space *vm,
-		    struct i915_vma *vma,
-		    enum i915_cache_level cache_level,
-		    u32 flags)
+static void vma_bind(struct i915_address_space *vm,
+		     struct i915_vm_pt_stash *stash,
+		     struct i915_vma *vma,
+		     enum i915_cache_level cache_level,
+		     u32 flags)
 {
-	return vm->vma_ops.bind_vma(vm, vma, cache_level, flags);
+	vm->vma_ops.bind_vma(vm, stash, vma, cache_level, flags);
 }
 
 static void vma_unbind(struct i915_address_space *vm, struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index cdc0b9c54305..4e6c1f7f48ef 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -177,16 +177,16 @@ static void gen6_flush_pd(struct gen6_ppgtt *ppgtt, u64 start, u64 end)
 	mutex_unlock(&ppgtt->flush);
 }
 
-static int gen6_alloc_va_range(struct i915_address_space *vm,
-			       u64 start, u64 length)
+static void gen6_alloc_va_range(struct i915_address_space *vm,
+				struct i915_vm_pt_stash *stash,
+				u64 start, u64 length)
 {
 	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(i915_vm_to_ppgtt(vm));
 	struct i915_page_directory * const pd = ppgtt->base.pd;
-	struct i915_page_table *pt, *alloc = NULL;
+	struct i915_page_table *pt;
 	bool flush = false;
 	u64 from = start;
 	unsigned int pde;
-	int ret = 0;
 
 	spin_lock(&pd->lock);
 	gen6_for_each_pde(pt, pd, start, length, pde) {
@@ -195,21 +195,17 @@ static int gen6_alloc_va_range(struct i915_address_space *vm,
 		if (px_base(pt) == px_base(&vm->scratch[1])) {
 			spin_unlock(&pd->lock);
 
-			pt = fetch_and_zero(&alloc);
-			if (!pt)
-				pt = alloc_pt(vm);
-			if (IS_ERR(pt)) {
-				ret = PTR_ERR(pt);
-				goto unwind_out;
-			}
+			pt = stash->pt[0];
+			GEM_BUG_ON(!pt);
 
 			fill32_px(pt, vm->scratch[0].encode);
 
 			spin_lock(&pd->lock);
 			if (pd->entry[pde] == &vm->scratch[1]) {
+				stash->pt[0] = pt->stash;
+				atomic_set(&pt->used, 0);
 				pd->entry[pde] = pt;
 			} else {
-				alloc = pt;
 				pt = pd->entry[pde];
 			}
 
@@ -226,15 +222,6 @@ static int gen6_alloc_va_range(struct i915_address_space *vm,
 		with_intel_runtime_pm(&vm->i915->runtime_pm, wakeref)
 			gen6_flush_pd(ppgtt, from, start);
 	}
-
-	goto out;
-
-unwind_out:
-	gen6_ppgtt_clear_range(vm, from, start - from);
-out:
-	if (alloc)
-		free_px(vm, alloc);
-	return ret;
 }
 
 static int gen6_ppgtt_init_scratch(struct gen6_ppgtt *ppgtt)
@@ -302,10 +289,11 @@ static void pd_vma_clear_pages(struct i915_vma *vma)
 	vma->pages = NULL;
 }
 
-static int pd_vma_bind(struct i915_address_space *vm,
-		       struct i915_vma *vma,
-		       enum i915_cache_level cache_level,
-		       u32 unused)
+static void pd_vma_bind(struct i915_address_space *vm,
+			struct i915_vm_pt_stash *stash,
+			struct i915_vma *vma,
+			enum i915_cache_level cache_level,
+			u32 unused)
 {
 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
 	struct gen6_ppgtt *ppgtt = vma->private;
@@ -315,7 +303,6 @@ static int pd_vma_bind(struct i915_address_space *vm,
 	ppgtt->pd_addr = (gen6_pte_t __iomem *)ggtt->gsm + ggtt_offset;
 
 	gen6_flush_pd(ppgtt, 0, ppgtt->base.vm.total);
-	return 0;
 }
 
 static void pd_vma_unbind(struct i915_address_space *vm, struct i915_vma *vma)
@@ -448,6 +435,7 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 	mutex_init(&ppgtt->pin_mutex);
 
 	ppgtt_init(&ppgtt->base, gt);
+	ppgtt->base.vm.pd_shift = ilog2(SZ_4K * SZ_4K / sizeof(gen6_pte_t));
 	ppgtt->base.vm.top = 1;
 
 	ppgtt->base.vm.bind_async_flags = I915_VMA_LOCAL_BIND;
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 699125928272..08cb65bfb313 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -269,14 +269,12 @@ static void gen8_ppgtt_clear(struct i915_address_space *vm,
 			   start, start + length, vm->top);
 }
 
-static int __gen8_ppgtt_alloc(struct i915_address_space * const vm,
-			      struct i915_page_directory * const pd,
-			      u64 * const start, const u64 end, int lvl)
+static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
+			       struct i915_vm_pt_stash *stash,
+			       struct i915_page_directory * const pd,
+			       u64 * const start, const u64 end, int lvl)
 {
-	const struct i915_page_scratch * const scratch = &vm->scratch[lvl];
-	struct i915_page_table *alloc = NULL;
 	unsigned int idx, len;
-	int ret = 0;
 
 	GEM_BUG_ON(end > vm->total >> GEN8_PTE_SHIFT);
 
@@ -297,49 +295,30 @@ static int __gen8_ppgtt_alloc(struct i915_address_space * const vm,
 			DBG("%s(%p):{ lvl:%d, idx:%d } allocating new tree\n",
 			    __func__, vm, lvl + 1, idx);
 
-			pt = fetch_and_zero(&alloc);
-			if (lvl) {
-				if (!pt) {
-					pt = &alloc_pd(vm)->pt;
-					if (IS_ERR(pt)) {
-						ret = PTR_ERR(pt);
-						goto out;
-					}
-				}
+			pt = stash->pt[!!lvl];
+			GEM_BUG_ON(!pt);
 
+			if (lvl ||
+			    gen8_pt_count(*start, end) < I915_PDES ||
+			    intel_vgpu_active(vm->i915))
 				fill_px(pt, vm->scratch[lvl].encode);
-			} else {
-				if (!pt) {
-					pt = alloc_pt(vm);
-					if (IS_ERR(pt)) {
-						ret = PTR_ERR(pt);
-						goto out;
-					}
-				}
-
-				if (intel_vgpu_active(vm->i915) ||
-				    gen8_pt_count(*start, end) < I915_PDES)
-					fill_px(pt, vm->scratch[lvl].encode);
-			}
 
 			spin_lock(&pd->lock);
-			if (likely(!pd->entry[idx]))
+			if (likely(!pd->entry[idx])) {
+				stash->pt[!!lvl] = pt->stash;
+				atomic_set(&pt->used, 0);
 				set_pd_entry(pd, idx, pt);
-			else
-				alloc = pt, pt = pd->entry[idx];
+			} else {
+				pt = pd->entry[idx];
+			}
 		}
 
 		if (lvl) {
 			atomic_inc(&pt->used);
 			spin_unlock(&pd->lock);
 
-			ret = __gen8_ppgtt_alloc(vm, as_pd(pt),
-						 start, end, lvl);
-			if (unlikely(ret)) {
-				if (release_pd_entry(pd, idx, pt, scratch))
-					free_px(vm, pt);
-				goto out;
-			}
+			__gen8_ppgtt_alloc(vm, stash,
+					   as_pd(pt), start, end, lvl);
 
 			spin_lock(&pd->lock);
 			atomic_dec(&pt->used);
@@ -359,18 +338,12 @@ static int __gen8_ppgtt_alloc(struct i915_address_space * const vm,
 		}
 	} while (idx++, --len);
 	spin_unlock(&pd->lock);
-out:
-	if (alloc)
-		free_px(vm, alloc);
-	return ret;
 }
 
-static int gen8_ppgtt_alloc(struct i915_address_space *vm,
-			    u64 start, u64 length)
+static void gen8_ppgtt_alloc(struct i915_address_space *vm,
+			     struct i915_vm_pt_stash *stash,
+			     u64 start, u64 length)
 {
-	u64 from;
-	int err;
-
 	GEM_BUG_ON(!IS_ALIGNED(start, BIT_ULL(GEN8_PTE_SHIFT)));
 	GEM_BUG_ON(!IS_ALIGNED(length, BIT_ULL(GEN8_PTE_SHIFT)));
 	GEM_BUG_ON(range_overflows(start, length, vm->total));
@@ -378,15 +351,9 @@ static int gen8_ppgtt_alloc(struct i915_address_space *vm,
 	start >>= GEN8_PTE_SHIFT;
 	length >>= GEN8_PTE_SHIFT;
 	GEM_BUG_ON(length == 0);
-	from = start;
-
-	err = __gen8_ppgtt_alloc(vm, i915_vm_to_ppgtt(vm)->pd,
-				 &start, start + length, vm->top);
-	if (unlikely(err && from != start))
-		__gen8_ppgtt_clear(vm, i915_vm_to_ppgtt(vm)->pd,
-				   from, start, vm->top);
 
-	return err;
+	__gen8_ppgtt_alloc(vm, stash, i915_vm_to_ppgtt(vm)->pd,
+			   &start, start + length, vm->top);
 }
 
 static __always_inline void
@@ -703,6 +670,7 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
 
 	ppgtt_init(ppgtt, gt);
 	ppgtt->vm.top = i915_vm_is_4lvl(&ppgtt->vm) ? 3 : 2;
+	ppgtt->vm.pd_shift = ilog2(SZ_4K * SZ_4K / sizeof(gen8_pte_t));
 
 	/*
 	 * From bdw, there is hw support for read-only pages in the PPGTT.
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 62979ea591f0..5a33056ab976 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -436,16 +436,17 @@ static void i915_ggtt_clear_range(struct i915_address_space *vm,
 	intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
 }
 
-static int ggtt_bind_vma(struct i915_address_space *vm,
-			 struct i915_vma *vma,
-			 enum i915_cache_level cache_level,
-			 u32 flags)
+static void ggtt_bind_vma(struct i915_address_space *vm,
+			  struct i915_vm_pt_stash *stash,
+			  struct i915_vma *vma,
+			  enum i915_cache_level cache_level,
+			  u32 flags)
 {
 	struct drm_i915_gem_object *obj = vma->obj;
 	u32 pte_flags;
 
 	if (i915_vma_is_bound(vma, ~flags & I915_VMA_BIND_MASK))
-		return 0;
+		return;
 
 	/* Applicable to VLV (gen8+ do not support RO in the GGTT) */
 	pte_flags = 0;
@@ -454,8 +455,6 @@ static int ggtt_bind_vma(struct i915_address_space *vm,
 
 	vm->insert_entries(vm, vma, cache_level, pte_flags);
 	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
-
-	return 0;
 }
 
 static void ggtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
@@ -568,31 +567,25 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 	return ret;
 }
 
-static int aliasing_gtt_bind_vma(struct i915_address_space *vm,
-				 struct i915_vma *vma,
-				 enum i915_cache_level cache_level,
-				 u32 flags)
+static void aliasing_gtt_bind_vma(struct i915_address_space *vm,
+				  struct i915_vm_pt_stash *stash,
+				  struct i915_vma *vma,
+				  enum i915_cache_level cache_level,
+				  u32 flags)
 {
 	u32 pte_flags;
-	int ret;
 
 	/* Currently applicable only to VLV */
 	pte_flags = 0;
 	if (i915_gem_object_is_readonly(vma->obj))
 		pte_flags |= PTE_READ_ONLY;
 
-	if (flags & I915_VMA_LOCAL_BIND) {
-		struct i915_ppgtt *alias = i915_vm_to_ggtt(vm)->alias;
-
-		ret = ppgtt_bind_vma(&alias->vm, vma, cache_level, flags);
-		if (ret)
-			return ret;
-	}
+	if (flags & I915_VMA_LOCAL_BIND)
+		ppgtt_bind_vma(&i915_vm_to_ggtt(vm)->alias->vm,
+			       stash, vma, cache_level, flags);
 
 	if (flags & I915_VMA_GLOBAL_BIND)
 		vm->insert_entries(vm, vma, cache_level, pte_flags);
-
-	return 0;
 }
 
 static void aliasing_gtt_unbind_vma(struct i915_address_space *vm,
@@ -607,6 +600,7 @@ static void aliasing_gtt_unbind_vma(struct i915_address_space *vm,
 
 static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
 {
+	struct i915_vm_pt_stash stash = {};
 	struct i915_ppgtt *ppgtt;
 	int err;
 
@@ -619,15 +613,17 @@ static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
 		goto err_ppgtt;
 	}
 
+	err = i915_vm_alloc_pt_stash(&ppgtt->vm, &stash, ggtt->vm.total);
+	if (err)
+		goto err_ppgtt;
+
 	/*
 	 * Note we only pre-allocate as far as the end of the global
 	 * GTT. On 48b / 4-level page-tables, the difference is very,
 	 * very significant! We have to preallocate as GVT/vgpu does
 	 * not like the page directory disappearing.
 	 */
-	err = ppgtt->vm.allocate_va_range(&ppgtt->vm, 0, ggtt->vm.total);
-	if (err)
-		goto err_ppgtt;
+	ppgtt->vm.allocate_va_range(&ppgtt->vm, &stash, 0, ggtt->vm.total);
 
 	ggtt->alias = ppgtt;
 	ggtt->vm.bind_async_flags |= ppgtt->vm.bind_async_flags;
@@ -638,6 +634,7 @@ static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
 	GEM_BUG_ON(ggtt->vm.vma_ops.unbind_vma != ggtt_unbind_vma);
 	ggtt->vm.vma_ops.unbind_vma = aliasing_gtt_unbind_vma;
 
+	i915_vm_free_pt_stash(&ppgtt->vm, &stash);
 	return 0;
 
 err_ppgtt:
@@ -1165,11 +1162,6 @@ void i915_ggtt_disable_guc(struct i915_ggtt *ggtt)
 	ggtt->invalidate(ggtt);
 }
 
-static unsigned int clear_bind(struct i915_vma *vma)
-{
-	return atomic_fetch_and(~I915_VMA_BIND_MASK, &vma->flags);
-}
-
 void i915_ggtt_resume(struct i915_ggtt *ggtt)
 {
 	struct i915_vma *vma;
@@ -1187,11 +1179,13 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
 	/* clflush objects bound into the GGTT and rebind them. */
 	list_for_each_entry(vma, &ggtt->vm.bound_list, vm_link) {
 		struct drm_i915_gem_object *obj = vma->obj;
-		unsigned int was_bound = clear_bind(vma);
+		unsigned int was_bound =
+			atomic_read(&vma->flags) & I915_VMA_BIND_MASK;
 
-		WARN_ON(i915_vma_bind(vma,
-				      obj ? obj->cache_level : 0,
-				      was_bound, NULL));
+		GEM_BUG_ON(!was_bound);
+		vma->ops->bind_vma(&ggtt->vm, NULL, vma,
+				   obj ? obj->cache_level : 0,
+				   was_bound);
 		if (obj) { /* only used during resume => exclusive access */
 			flush |= fetch_and_zero(&obj->write_domain);
 			obj->read_domains |= I915_GEM_DOMAIN_GTT;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index f2b75078e05f..0d9f29aea6b4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -159,7 +159,10 @@ struct i915_page_scratch {
 
 struct i915_page_table {
 	struct i915_page_dma base;
-	atomic_t used;
+	union {
+		atomic_t used;
+		struct i915_page_table *stash;
+	};
 };
 
 struct i915_page_directory {
@@ -196,12 +199,18 @@ struct drm_i915_gem_object;
 struct i915_vma;
 struct intel_gt;
 
+struct i915_vm_pt_stash {
+	/* preallocated chains of page tables/directories */
+	struct i915_page_table *pt[2];
+};
+
 struct i915_vma_ops {
 	/* Map an object into an address space with the given cache flags. */
-	int (*bind_vma)(struct i915_address_space *vm,
-			struct i915_vma *vma,
-			enum i915_cache_level cache_level,
-			u32 flags);
+	void (*bind_vma)(struct i915_address_space *vm,
+			 struct i915_vm_pt_stash *stash,
+			 struct i915_vma *vma,
+			 enum i915_cache_level cache_level,
+			 u32 flags);
 	/*
 	 * Unmap an object from an address space. This usually consists of
 	 * setting the valid PTE entries to a reserved scratch page.
@@ -257,9 +266,6 @@ struct i915_address_space {
 #define VM_CLASS_PPGTT 1
 
 	struct i915_page_scratch scratch[4];
-	unsigned int scratch_order;
-	unsigned int top;
-
 	/**
 	 * List of vma currently bound.
 	 */
@@ -276,13 +282,18 @@ struct i915_address_space {
 	/* Some systems support read-only mappings for GGTT and/or PPGTT */
 	bool has_read_only:1;
 
+	u8 top;
+	u8 pd_shift;
+	u8 scratch_order;
+
 	u64 (*pte_encode)(dma_addr_t addr,
 			  enum i915_cache_level level,
 			  u32 flags); /* Create a valid PTE */
 #define PTE_READ_ONLY	BIT(0)
 
-	int (*allocate_va_range)(struct i915_address_space *vm,
-				 u64 start, u64 length);
+	void (*allocate_va_range)(struct i915_address_space *vm,
+				  struct i915_vm_pt_stash *stash,
+				  u64 start, u64 length);
 	void (*clear_range)(struct i915_address_space *vm,
 			    u64 start, u64 length);
 	void (*insert_page)(struct i915_address_space *vm,
@@ -568,10 +579,11 @@ int ggtt_set_pages(struct i915_vma *vma);
 int ppgtt_set_pages(struct i915_vma *vma);
 void clear_pages(struct i915_vma *vma);
 
-int ppgtt_bind_vma(struct i915_address_space *vm,
-		   struct i915_vma *vma,
-		   enum i915_cache_level cache_level,
-		   u32 flags);
+void ppgtt_bind_vma(struct i915_address_space *vm,
+		    struct i915_vm_pt_stash *stash,
+		    struct i915_vma *vma,
+		    enum i915_cache_level cache_level,
+		    u32 flags);
 void ppgtt_unbind_vma(struct i915_address_space *vm,
 		      struct i915_vma *vma);
 
@@ -579,6 +591,12 @@ void gtt_write_workarounds(struct intel_gt *gt);
 
 void setup_private_pat(struct intel_uncore *uncore);
 
+int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
+			   struct i915_vm_pt_stash *stash,
+			   u64 size);
+void i915_vm_free_pt_stash(struct i915_address_space *vm,
+			   struct i915_vm_pt_stash *stash);
+
 static inline struct sgt_dma {
 	struct scatterlist *sg;
 	dma_addr_t dma, max;
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index f0862e924d11..09056544bc29 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -155,19 +155,16 @@ struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt)
 	return ppgtt;
 }
 
-int ppgtt_bind_vma(struct i915_address_space *vm,
-		   struct i915_vma *vma,
-		   enum i915_cache_level cache_level,
-		   u32 flags)
+void ppgtt_bind_vma(struct i915_address_space *vm,
+		    struct i915_vm_pt_stash *stash,
+		    struct i915_vma *vma,
+		    enum i915_cache_level cache_level,
+		    u32 flags)
 {
 	u32 pte_flags;
-	int err;
 
 	if (!test_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
-		err = vm->allocate_va_range(vm, vma->node.start, vma->size);
-		if (err)
-			return err;
-
+		vm->allocate_va_range(vm, stash, vma->node.start, vma->size);
 		set_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma));
 	}
 
@@ -178,8 +175,6 @@ int ppgtt_bind_vma(struct i915_address_space *vm,
 
 	vm->insert_entries(vm, vma, cache_level, pte_flags);
 	wmb();
-
-	return 0;
 }
 
 void ppgtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
@@ -188,12 +183,76 @@ void ppgtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
 		vm->clear_range(vm, vma->node.start, vma->size);
 }
 
+static unsigned long pd_count(u64 size, int shift)
+{
+	/* Beware later misalignment */
+	return (size + 2 * (BIT_ULL(shift) - 1)) >> shift;
+}
+
+int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
+			   struct i915_vm_pt_stash *stash,
+			   u64 size)
+{
+	unsigned long count;
+	int shift, n;
+
+	shift = vm->pd_shift;
+	if (!shift)
+		return 0;
+
+	count = pd_count(size, shift);
+	while (count--) {
+		struct i915_page_table *pt;
+
+		pt = alloc_pt(vm);
+		if (IS_ERR(pt)) {
+			i915_vm_free_pt_stash(vm, stash);
+			return PTR_ERR(pt);
+		}
+
+		pt->stash = stash->pt[0];
+		stash->pt[0] = pt;
+	}
+
+	for (n = 1; n < vm->top; n++) {
+		shift += ilog2(I915_PDES); /* Each PD holds 512 entries */
+		count = pd_count(size, shift);
+		while (count--) {
+			struct i915_page_directory *pd;
+
+			pd = alloc_pd(vm);
+			if (IS_ERR(pd)) {
+				i915_vm_free_pt_stash(vm, stash);
+				return PTR_ERR(pd);
+			}
+
+			pd->pt.stash = stash->pt[1];
+			stash->pt[1] = &pd->pt;
+		}
+	}
+
+	return 0;
+}
+
+void i915_vm_free_pt_stash(struct i915_address_space *vm,
+			   struct i915_vm_pt_stash *stash)
+{
+	struct i915_page_table *pt;
+	int n;
+
+	for (n = 0; n < ARRAY_SIZE(stash->pt); n++) {
+		while ((pt = stash->pt[n])) {
+			stash->pt[n] = pt->stash;
+			free_px(vm, pt);
+		}
+	}
+}
+
 int ppgtt_set_pages(struct i915_vma *vma)
 {
 	GEM_BUG_ON(vma->pages);
 
 	vma->pages = vma->obj->mm.pages;
-
 	vma->page_sizes = vma->obj->mm.page_sizes;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index bc64f773dcdb..70a6f55730f3 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -291,6 +291,8 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
 
 struct i915_vma_work {
 	struct dma_fence_work base;
+	struct i915_address_space *vm;
+	struct i915_vm_pt_stash stash;
 	struct i915_vma *vma;
 	struct drm_i915_gem_object *pinned;
 	struct i915_sw_dma_fence_cb cb;
@@ -302,13 +304,10 @@ static int __vma_bind(struct dma_fence_work *work)
 {
 	struct i915_vma_work *vw = container_of(work, typeof(*vw), base);
 	struct i915_vma *vma = vw->vma;
-	int err;
-
-	err = vma->ops->bind_vma(vma->vm, vma, vw->cache_level, vw->flags);
-	if (err)
-		atomic_or(I915_VMA_ERROR, &vma->flags);
 
-	return err;
+	vma->ops->bind_vma(vw->vm, &vw->stash,
+			   vma, vw->cache_level, vw->flags);
+	return 0;
 }
 
 static void __vma_release(struct dma_fence_work *work)
@@ -317,6 +316,9 @@ static void __vma_release(struct dma_fence_work *work)
 
 	if (vw->pinned)
 		__i915_gem_object_unpin_pages(vw->pinned);
+
+	i915_vm_free_pt_stash(vw->vm, &vw->stash);
+	i915_vm_put(vw->vm);
 }
 
 static const struct dma_fence_work_ops bind_ops = {
@@ -376,7 +378,6 @@ int i915_vma_bind(struct i915_vma *vma,
 {
 	u32 bind_flags;
 	u32 vma_flags;
-	int ret;
 
 	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
 	GEM_BUG_ON(vma->size > vma->node.size);
@@ -433,9 +434,7 @@ int i915_vma_bind(struct i915_vma *vma,
 			work->pinned = vma->obj;
 		}
 	} else {
-		ret = vma->ops->bind_vma(vma->vm, vma, cache_level, bind_flags);
-		if (ret)
-			return ret;
+		vma->ops->bind_vma(vma->vm, NULL, vma, cache_level, bind_flags);
 	}
 
 	atomic_or(bind_flags, &vma->flags);
@@ -879,6 +878,14 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 			err = -ENOMEM;
 			goto err_pages;
 		}
+
+		work->vm = i915_vm_get(vma->vm);
+
+		/* Allocate enough page directories to used PTE */
+		if (vma->vm->allocate_va_range)
+			i915_vm_alloc_pt_stash(vma->vm,
+					       &work->stash,
+					       vma->size);
 	}
 
 	if (flags & PIN_GLOBAL)
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 0016ffc7d914..9b8fc990e9ef 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -172,35 +172,33 @@ static int igt_ppgtt_alloc(void *arg)
 
 	/* Check we can allocate the entire range */
 	for (size = 4096; size <= limit; size <<= 2) {
-		err = ppgtt->vm.allocate_va_range(&ppgtt->vm, 0, size);
-		if (err) {
-			if (err == -ENOMEM) {
-				pr_info("[1] Ran out of memory for va_range [0 + %llx] [bit %d]\n",
-					size, ilog2(size));
-				err = 0; /* virtual space too large! */
-			}
+		struct i915_vm_pt_stash stash = {};
+
+		err = i915_vm_alloc_pt_stash(&ppgtt->vm, &stash, size);
+		if (err)
 			goto err_ppgtt_cleanup;
-		}
 
+		ppgtt->vm.allocate_va_range(&ppgtt->vm, &stash, 0, size);
 		cond_resched();
 
 		ppgtt->vm.clear_range(&ppgtt->vm, 0, size);
+
+		i915_vm_free_pt_stash(&ppgtt->vm, &stash);
 	}
 
 	/* Check we can incrementally allocate the entire range */
 	for (last = 0, size = 4096; size <= limit; last = size, size <<= 2) {
-		err = ppgtt->vm.allocate_va_range(&ppgtt->vm,
-						  last, size - last);
-		if (err) {
-			if (err == -ENOMEM) {
-				pr_info("[2] Ran out of memory for va_range [%llx + %llx] [bit %d]\n",
-					last, size - last, ilog2(size));
-				err = 0; /* virtual space too large! */
-			}
+		struct i915_vm_pt_stash stash = {};
+
+		err = i915_vm_alloc_pt_stash(&ppgtt->vm, &stash, size - last);
+		if (err)
 			goto err_ppgtt_cleanup;
-		}
 
+		ppgtt->vm.allocate_va_range(&ppgtt->vm, &stash,
+					    last, size - last);
 		cond_resched();
+
+		i915_vm_free_pt_stash(&ppgtt->vm, &stash);
 	}
 
 err_ppgtt_cleanup:
@@ -284,9 +282,18 @@ static int lowlevel_hole(struct i915_address_space *vm,
 				break;
 			}
 
-			if (vm->allocate_va_range &&
-			    vm->allocate_va_range(vm, addr, BIT_ULL(size)))
-				break;
+			if (vm->allocate_va_range) {
+				struct i915_vm_pt_stash stash = {};
+
+				if (i915_vm_alloc_pt_stash(vm, &stash,
+							   BIT_ULL(size)))
+					break;
+
+				vm->allocate_va_range(vm, &stash,
+						      addr, BIT_ULL(size));
+
+				i915_vm_free_pt_stash(vm, &stash);
+			}
 
 			mock_vma->pages = obj->mm.pages;
 			mock_vma->node.size = BIT_ULL(size);
@@ -1881,6 +1888,7 @@ static int igt_cs_tlb(void *arg)
 			continue;
 
 		while (!__igt_timeout(end_time, NULL)) {
+			struct i915_vm_pt_stash stash = {};
 			struct i915_request *rq;
 			u64 offset;
 
@@ -1888,10 +1896,6 @@ static int igt_cs_tlb(void *arg)
 						   0, vm->total - PAGE_SIZE,
 						   chunk_size, PAGE_SIZE);
 
-			err = vm->allocate_va_range(vm, offset, chunk_size);
-			if (err)
-				goto end;
-
 			memset32(result, STACK_MAGIC, PAGE_SIZE / sizeof(u32));
 
 			vma = i915_vma_instance(bbe, vm, NULL);
@@ -1904,6 +1908,14 @@ static int igt_cs_tlb(void *arg)
 			if (err)
 				goto end;
 
+			err = i915_vm_alloc_pt_stash(vm, &stash, chunk_size);
+			if (err)
+				goto end;
+
+			vm->allocate_va_range(vm, &stash, offset, chunk_size);
+
+			i915_vm_free_pt_stash(vm, &stash);
+
 			/* Prime the TLB with the dummy pages */
 			for (i = 0; i < count; i++) {
 				vma->node.start = offset + i * PAGE_SIZE;
diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
index b173086411ef..5e4fb0fba34b 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
@@ -38,14 +38,14 @@ static void mock_insert_entries(struct i915_address_space *vm,
 {
 }
 
-static int mock_bind_ppgtt(struct i915_address_space *vm,
-			   struct i915_vma *vma,
-			   enum i915_cache_level cache_level,
-			   u32 flags)
+static void mock_bind_ppgtt(struct i915_address_space *vm,
+			    struct i915_vm_pt_stash *stash,
+			    struct i915_vma *vma,
+			    enum i915_cache_level cache_level,
+			    u32 flags)
 {
 	GEM_BUG_ON(flags & I915_VMA_GLOBAL_BIND);
 	set_bit(I915_VMA_LOCAL_BIND_BIT, __i915_vma_flags(vma));
-	return 0;
 }
 
 static void mock_unbind_ppgtt(struct i915_address_space *vm,
@@ -74,6 +74,7 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
 	ppgtt->vm.i915 = i915;
 	ppgtt->vm.total = round_down(U64_MAX, PAGE_SIZE);
 	ppgtt->vm.file = ERR_PTR(-ENODEV);
+	ppgtt->vm.dma = &i915->drm.pdev->dev;
 
 	i915_address_space_init(&ppgtt->vm, VM_CLASS_PPGTT);
 
@@ -90,13 +91,12 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
 	return ppgtt;
 }
 
-static int mock_bind_ggtt(struct i915_address_space *vm,
-			  struct i915_vma *vma,
-			  enum i915_cache_level cache_level,
-			  u32 flags)
+static void mock_bind_ggtt(struct i915_address_space *vm,
+			   struct i915_vm_pt_stash *stash,
+			   struct i915_vma *vma,
+			   enum i915_cache_level cache_level,
+			   u32 flags)
 {
-	atomic_or(I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND, &vma->flags);
-	return 0;
 }
 
 static void mock_unbind_ggtt(struct i915_address_space *vm,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
