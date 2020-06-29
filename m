Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1607720CDD4
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 12:13:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B38D1899A3;
	Mon, 29 Jun 2020 10:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 669978985A
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 10:13:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21647664-1500050 
 for multiple; Mon, 29 Jun 2020 11:12:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jun 2020 11:12:55 +0100
Message-Id: <20200629101256.13039-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200629101256.13039-1-chris@chris-wilson.co.uk>
References: <20200629101256.13039-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Preallocate stashes for vma
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to make the DMA allocations used for page directories to be
performed up front so that we can include those allocations in our
memory reservation pass. The downside is that we have to assume the
worst case, even before we know the final layout, and always allocate
enough page directories for this object, even when there will be overlap.

It should be noted that the lifetime for the page directories DMA is
more or less decoupled from individual fences as they will be shared
across objects across timelines.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_client_blt.c    | 17 ++--
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          | 39 ++++-----
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 76 +++++------------
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 54 ++++++------
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  2 +
 drivers/gpu/drm/i915/gt/intel_gtt.h           | 31 ++++---
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         | 82 ++++++++++++++++---
 drivers/gpu/drm/i915/i915_vma.c               | 13 +--
 drivers/gpu/drm/i915/i915_vma_types.h         |  2 +
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 59 +++++++------
 drivers/gpu/drm/i915/selftests/mock_gtt.c     | 20 ++---
 11 files changed, 218 insertions(+), 177 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
index 278664f831e7..eb1f433b7730 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
@@ -19,6 +19,11 @@ struct i915_sleeve {
 static int vma_set_pages(struct i915_vma *vma)
 {
 	struct i915_sleeve *sleeve = vma->private;
+	int err;
+
+	err = i915_vma_alloc_pt_stash(vma->vm, vma);
+	if (err)
+		return err;
 
 	vma->pages = sleeve->pages;
 	vma->page_sizes = sleeve->page_sizes;
@@ -30,14 +35,16 @@ static void vma_clear_pages(struct i915_vma *vma)
 {
 	GEM_BUG_ON(!vma->pages);
 	vma->pages = NULL;
+
+	i915_vma_free_pt_stash(vma->vm, vma);
 }
 
-static int vma_bind(struct i915_address_space *vm,
-		    struct i915_vma *vma,
-		    enum i915_cache_level cache_level,
-		    u32 flags)
+static void vma_bind(struct i915_address_space *vm,
+		     struct i915_vma *vma,
+		     enum i915_cache_level cache_level,
+		     u32 flags)
 {
-	return vm->vma_ops.bind_vma(vm, vma, cache_level, flags);
+	vm->vma_ops.bind_vma(vm, vma, cache_level, flags);
 }
 
 static void vma_unbind(struct i915_address_space *vm, struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 05497b50103f..dfde5fd452f1 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -177,16 +177,16 @@ static void gen6_flush_pd(struct gen6_ppgtt *ppgtt, u64 start, u64 end)
 	mutex_unlock(&ppgtt->flush);
 }
 
-static int gen6_alloc_va_range(struct i915_address_space *vm,
-			       u64 start, u64 length)
+static void gen6_alloc_va_range(struct i915_address_space *vm,
+				struct i915_vma *vma,
+				u64 start, u64 length)
 {
 	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(i915_vm_to_ppgtt(vm));
 	struct i915_page_directory * const pd = ppgtt->base.pd;
-	struct i915_page_table *pt, *alloc = NULL;
+	struct i915_page_table *pt;
 	intel_wakeref_t wakeref;
 	u64 from = start;
 	unsigned int pde;
-	int ret = 0;
 
 	wakeref = intel_runtime_pm_get(&vm->i915->runtime_pm);
 
@@ -197,21 +197,17 @@ static int gen6_alloc_va_range(struct i915_address_space *vm,
 		if (px_base(pt) == px_base(&vm->scratch[1])) {
 			spin_unlock(&pd->lock);
 
-			pt = fetch_and_zero(&alloc);
-			if (!pt)
-				pt = alloc_pt(vm);
-			if (IS_ERR(pt)) {
-				ret = PTR_ERR(pt);
-				goto unwind_out;
-			}
+			pt = vma->pt_stash[0];
+			GEM_BUG_ON(!pt);
 
 			fill32_px(pt, vm->scratch[0].encode);
 
 			spin_lock(&pd->lock);
 			if (pd->entry[pde] == &vm->scratch[1]) {
+				vma->pt_stash[0] = pt->stash;
+				atomic_set(&pt->used, 0);
 				pd->entry[pde] = pt;
 			} else {
-				alloc = pt;
 				pt = pd->entry[pde];
 			}
 		}
@@ -223,15 +219,9 @@ static int gen6_alloc_va_range(struct i915_address_space *vm,
 	if (i915_vma_is_bound(ppgtt->vma, I915_VMA_GLOBAL_BIND))
 		gen6_flush_pd(ppgtt, from, start);
 
-	goto out;
-
-unwind_out:
-	gen6_ppgtt_clear_range(vm, from, start - from);
-out:
-	if (alloc)
-		free_px(vm, alloc);
 	intel_runtime_pm_put(&vm->i915->runtime_pm, wakeref);
-	return ret;
+
+	i915_vma_free_pt_stash(vm, vma);
 }
 
 static int gen6_ppgtt_init_scratch(struct gen6_ppgtt *ppgtt)
@@ -299,10 +289,10 @@ static void pd_vma_clear_pages(struct i915_vma *vma)
 	vma->pages = NULL;
 }
 
-static int pd_vma_bind(struct i915_address_space *vm,
-		       struct i915_vma *vma,
-		       enum i915_cache_level cache_level,
-		       u32 unused)
+static void pd_vma_bind(struct i915_address_space *vm,
+			struct i915_vma *vma,
+			enum i915_cache_level cache_level,
+			u32 unused)
 {
 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
 	struct gen6_ppgtt *ppgtt = vma->private;
@@ -312,7 +302,6 @@ static int pd_vma_bind(struct i915_address_space *vm,
 	ppgtt->pd_addr = (gen6_pte_t __iomem *)ggtt->gsm + ggtt_offset;
 
 	gen6_flush_pd(ppgtt, 0, ppgtt->base.vm.total);
-	return 0;
 }
 
 static void pd_vma_unbind(struct i915_address_space *vm, struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 699125928272..58f5fd05f1e5 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -269,14 +269,12 @@ static void gen8_ppgtt_clear(struct i915_address_space *vm,
 			   start, start + length, vm->top);
 }
 
-static int __gen8_ppgtt_alloc(struct i915_address_space * const vm,
-			      struct i915_page_directory * const pd,
-			      u64 * const start, const u64 end, int lvl)
+static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
+			       struct i915_vma *vma,
+			       struct i915_page_directory * const pd,
+			       u64 * const start, const u64 end, int lvl)
 {
-	const struct i915_page_scratch * const scratch = &vm->scratch[lvl];
-	struct i915_page_table *alloc = NULL;
 	unsigned int idx, len;
-	int ret = 0;
 
 	GEM_BUG_ON(end > vm->total >> GEN8_PTE_SHIFT);
 
@@ -297,49 +295,29 @@ static int __gen8_ppgtt_alloc(struct i915_address_space * const vm,
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
+			pt = vma->pt_stash[!!lvl];
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
+				vma->pt_stash[!!lvl] = pt->stash;
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
+			__gen8_ppgtt_alloc(vm, vma, as_pd(pt), start, end, lvl);
 
 			spin_lock(&pd->lock);
 			atomic_dec(&pt->used);
@@ -359,18 +337,12 @@ static int __gen8_ppgtt_alloc(struct i915_address_space * const vm,
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
+			     struct i915_vma *vma,
+			     u64 start, u64 length)
 {
-	u64 from;
-	int err;
-
 	GEM_BUG_ON(!IS_ALIGNED(start, BIT_ULL(GEN8_PTE_SHIFT)));
 	GEM_BUG_ON(!IS_ALIGNED(length, BIT_ULL(GEN8_PTE_SHIFT)));
 	GEM_BUG_ON(range_overflows(start, length, vm->total));
@@ -378,15 +350,11 @@ static int gen8_ppgtt_alloc(struct i915_address_space *vm,
 	start >>= GEN8_PTE_SHIFT;
 	length >>= GEN8_PTE_SHIFT;
 	GEM_BUG_ON(length == 0);
-	from = start;
 
-	err = __gen8_ppgtt_alloc(vm, i915_vm_to_ppgtt(vm)->pd,
-				 &start, start + length, vm->top);
-	if (unlikely(err && from != start))
-		__gen8_ppgtt_clear(vm, i915_vm_to_ppgtt(vm)->pd,
-				   from, start, vm->top);
+	__gen8_ppgtt_alloc(vm, vma, i915_vm_to_ppgtt(vm)->pd,
+			   &start, start + length, vm->top);
 
-	return err;
+	i915_vma_free_pt_stash(vm, vma);
 }
 
 static __always_inline void
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 62979ea591f0..e87568838034 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -436,16 +436,16 @@ static void i915_ggtt_clear_range(struct i915_address_space *vm,
 	intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
 }
 
-static int ggtt_bind_vma(struct i915_address_space *vm,
-			 struct i915_vma *vma,
-			 enum i915_cache_level cache_level,
-			 u32 flags)
+static void ggtt_bind_vma(struct i915_address_space *vm,
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
@@ -454,8 +454,6 @@ static int ggtt_bind_vma(struct i915_address_space *vm,
 
 	vm->insert_entries(vm, vma, cache_level, pte_flags);
 	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
-
-	return 0;
 }
 
 static void ggtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
@@ -568,31 +566,24 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 	return ret;
 }
 
-static int aliasing_gtt_bind_vma(struct i915_address_space *vm,
-				 struct i915_vma *vma,
-				 enum i915_cache_level cache_level,
-				 u32 flags)
+static void aliasing_gtt_bind_vma(struct i915_address_space *vm,
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
+			       vma, cache_level, flags);
 
 	if (flags & I915_VMA_GLOBAL_BIND)
 		vm->insert_entries(vm, vma, cache_level, pte_flags);
-
-	return 0;
 }
 
 static void aliasing_gtt_unbind_vma(struct i915_address_space *vm,
@@ -608,6 +599,7 @@ static void aliasing_gtt_unbind_vma(struct i915_address_space *vm,
 static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
 {
 	struct i915_ppgtt *ppgtt;
+	struct i915_vma *stash;
 	int err;
 
 	ppgtt = i915_ppgtt_create(ggtt->vm.gt);
@@ -619,15 +611,24 @@ static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
 		goto err_ppgtt;
 	}
 
+	stash = i915_vma_alloc();
+	if (IS_ERR(stash)) {
+		err = PTR_ERR(stash);
+		goto err_ppgtt;
+	}
+
+	stash->size = ggtt->vm.total;
+	err = i915_vma_alloc_pt_stash(&ppgtt->vm, stash);
+	if (err)
+		goto err_vma;
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
+	ppgtt->vm.allocate_va_range(&ppgtt->vm, stash, 0, ggtt->vm.total);
 
 	ggtt->alias = ppgtt;
 	ggtt->vm.bind_async_flags |= ppgtt->vm.bind_async_flags;
@@ -638,8 +639,13 @@ static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
 	GEM_BUG_ON(ggtt->vm.vma_ops.unbind_vma != ggtt_unbind_vma);
 	ggtt->vm.vma_ops.unbind_vma = aliasing_gtt_unbind_vma;
 
+	i915_vma_free(stash);
+
 	return 0;
 
+err_vma:
+	i915_vma_free_pt_stash(&ppgtt->vm, stash);
+	i915_vma_free(stash);
 err_ppgtt:
 	i915_vm_put(&ppgtt->vm);
 	return err;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 2a72cce63fd9..0e3827868e50 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -255,6 +255,8 @@ void clear_pages(struct i915_vma *vma)
 {
 	GEM_BUG_ON(!vma->pages);
 
+	i915_vma_free_pt_stash(vma->vm, vma);
+
 	if (vma->pages != vma->obj->mm.pages) {
 		sg_free_table(vma->pages);
 		kfree(vma->pages);
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index f2b75078e05f..9a80d15b2879 100644
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
@@ -198,10 +201,10 @@ struct intel_gt;
 
 struct i915_vma_ops {
 	/* Map an object into an address space with the given cache flags. */
-	int (*bind_vma)(struct i915_address_space *vm,
-			struct i915_vma *vma,
-			enum i915_cache_level cache_level,
-			u32 flags);
+	void (*bind_vma)(struct i915_address_space *vm,
+			 struct i915_vma *vma,
+			 enum i915_cache_level cache_level,
+			 u32 flags);
 	/*
 	 * Unmap an object from an address space. This usually consists of
 	 * setting the valid PTE entries to a reserved scratch page.
@@ -281,8 +284,9 @@ struct i915_address_space {
 			  u32 flags); /* Create a valid PTE */
 #define PTE_READ_ONLY	BIT(0)
 
-	int (*allocate_va_range)(struct i915_address_space *vm,
-				 u64 start, u64 length);
+	void (*allocate_va_range)(struct i915_address_space *vm,
+				  struct i915_vma *vma,
+				  u64 start, u64 length);
 	void (*clear_range)(struct i915_address_space *vm,
 			    u64 start, u64 length);
 	void (*insert_page)(struct i915_address_space *vm,
@@ -568,10 +572,10 @@ int ggtt_set_pages(struct i915_vma *vma);
 int ppgtt_set_pages(struct i915_vma *vma);
 void clear_pages(struct i915_vma *vma);
 
-int ppgtt_bind_vma(struct i915_address_space *vm,
-		   struct i915_vma *vma,
-		   enum i915_cache_level cache_level,
-		   u32 flags);
+void ppgtt_bind_vma(struct i915_address_space *vm,
+		    struct i915_vma *vma,
+		    enum i915_cache_level cache_level,
+		    u32 flags);
 void ppgtt_unbind_vma(struct i915_address_space *vm,
 		      struct i915_vma *vma);
 
@@ -579,6 +583,11 @@ void gtt_write_workarounds(struct intel_gt *gt);
 
 void setup_private_pat(struct intel_uncore *uncore);
 
+int i915_vma_alloc_pt_stash(struct i915_address_space *vm,
+			    struct i915_vma *vma);
+void i915_vma_free_pt_stash(struct i915_address_space *vm,
+			    struct i915_vma *vma);
+
 static inline struct sgt_dma {
 	struct scatterlist *sg;
 	dma_addr_t dma, max;
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index f0862e924d11..e017351b8d03 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -155,18 +155,16 @@ struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt)
 	return ppgtt;
 }
 
-int ppgtt_bind_vma(struct i915_address_space *vm,
-		   struct i915_vma *vma,
-		   enum i915_cache_level cache_level,
-		   u32 flags)
+void ppgtt_bind_vma(struct i915_address_space *vm,
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
+		vm->allocate_va_range(vm, vma,
+				      vma->node.start, vma->size);
 
 		set_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma));
 	}
@@ -178,8 +176,6 @@ int ppgtt_bind_vma(struct i915_address_space *vm,
 
 	vm->insert_entries(vm, vma, cache_level, pte_flags);
 	wmb();
-
-	return 0;
 }
 
 void ppgtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
@@ -188,12 +184,76 @@ void ppgtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
 		vm->clear_range(vm, vma->node.start, vma->size);
 }
 
+static unsigned long pd_count(u64 size, int shift)
+{
+	size = (size + BIT_ULL(shift) - 1) >> shift;
+	return size + 1; /* beware later misalignment */
+}
+
+int i915_vma_alloc_pt_stash(struct i915_address_space *vm, struct i915_vma *vma)
+{
+	unsigned long count;
+	int shift = 21;
+	int n;
+
+	count = pd_count(vma->size, shift);
+	while (count--) {
+		struct i915_page_table *pt;
+
+		pt = alloc_pt(vm);
+		if (IS_ERR(pt)) {
+			i915_vma_free_pt_stash(vm, vma);
+			return PTR_ERR(pt);
+		}
+
+		pt->stash = vma->pt_stash[0];
+		vma->pt_stash[0] = pt;
+	}
+
+	for (n = 1; n <= vm->top; n++) {
+		shift += 9;
+		count = pd_count(vma->size, shift);
+		while (count--) {
+			struct i915_page_directory *pd;
+
+			pd = alloc_pd(vm);
+			if (IS_ERR(pd)) {
+				i915_vma_free_pt_stash(vm, vma);
+				return PTR_ERR(pd);
+			}
+
+			pd->pt.stash = vma->pt_stash[1];
+			vma->pt_stash[1] = &pd->pt;
+		}
+	}
+
+	return 0;
+}
+
+void i915_vma_free_pt_stash(struct i915_address_space *vm, struct i915_vma *vma)
+{
+	struct i915_page_table *pt;
+	int n;
+
+	for (n = 0; n < ARRAY_SIZE(vma->pt_stash); n++) {
+		while ((pt = vma->pt_stash[n])) {
+			vma->pt_stash[n] = pt->stash;
+			free_px(vm, pt);
+		}
+	}
+}
+
 int ppgtt_set_pages(struct i915_vma *vma)
 {
+	int err;
+
 	GEM_BUG_ON(vma->pages);
 
-	vma->pages = vma->obj->mm.pages;
+	err = i915_vma_alloc_pt_stash(vma->vm, vma);
+	if(err)
+		return err;
 
+	vma->pages = vma->obj->mm.pages;
 	vma->page_sizes = vma->obj->mm.page_sizes;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 9c85c4f6e995..adaf1e95af02 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -305,13 +305,9 @@ static int __vma_bind(struct dma_fence_work *work)
 {
 	struct i915_vma_work *vw = container_of(work, typeof(*vw), base);
 	struct i915_vma *vma = vw->vma;
-	int err;
-
-	err = vma->ops->bind_vma(vma->vm, vma, vw->cache_level, vw->flags);
-	if (err)
-		atomic_or(I915_VMA_ERROR, &vma->flags);
 
-	return err;
+	vma->ops->bind_vma(vma->vm, vma, vw->cache_level, vw->flags);
+	return 0;
 }
 
 static void __vma_release(struct dma_fence_work *work)
@@ -379,7 +375,6 @@ int i915_vma_bind(struct i915_vma *vma,
 {
 	u32 bind_flags;
 	u32 vma_flags;
-	int ret;
 
 	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
 	GEM_BUG_ON(vma->size > vma->node.size);
@@ -436,9 +431,7 @@ int i915_vma_bind(struct i915_vma *vma,
 			work->pinned = vma->obj;
 		}
 	} else {
-		ret = vma->ops->bind_vma(vma->vm, vma, cache_level, bind_flags);
-		if (ret)
-			return ret;
+		vma->ops->bind_vma(vma->vm, vma, cache_level, bind_flags);
 	}
 
 	atomic_or(bind_flags, &vma->flags);
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 9e9082dc8f4b..6d7755858156 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -256,6 +256,8 @@ struct i915_vma {
 	atomic_t pages_count; /* number of active binds to the pages */
 	struct mutex pages_mutex; /* protect acquire/release of backing pages */
 
+	void *pt_stash[2]; /* preallocated stash of page tables/directories */
+
 	/**
 	 * Support different GGTT views into the same object.
 	 * This means there can be multiple VMA mappings per object and per VM.
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 0016ffc7d914..4bd18b901c5e 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -146,6 +146,7 @@ static int igt_ppgtt_alloc(void *arg)
 	struct drm_i915_private *dev_priv = arg;
 	struct i915_ppgtt *ppgtt;
 	u64 size, last, limit;
+	struct i915_vma *vma;
 	int err = 0;
 
 	/* Allocate a ppggt and try to fill the entire range */
@@ -160,6 +161,12 @@ static int igt_ppgtt_alloc(void *arg)
 	if (!ppgtt->vm.allocate_va_range)
 		goto err_ppgtt_cleanup;
 
+	vma = i915_vma_alloc();
+	if (!vma) {
+		err = -ENOMEM;
+		goto err_ppgtt_cleanup;
+	}
+
 	/*
 	 * While we only allocate the page tables here and so we could
 	 * address a much larger GTT than we could actually fit into
@@ -172,16 +179,12 @@ static int igt_ppgtt_alloc(void *arg)
 
 	/* Check we can allocate the entire range */
 	for (size = 4096; size <= limit; size <<= 2) {
-		err = ppgtt->vm.allocate_va_range(&ppgtt->vm, 0, size);
-		if (err) {
-			if (err == -ENOMEM) {
-				pr_info("[1] Ran out of memory for va_range [0 + %llx] [bit %d]\n",
-					size, ilog2(size));
-				err = 0; /* virtual space too large! */
-			}
-			goto err_ppgtt_cleanup;
-		}
+		vma->size = size;
+		err = i915_vma_alloc_pt_stash(&ppgtt->vm, vma);
+		if (err)
+			goto err_vma;
 
+		ppgtt->vm.allocate_va_range(&ppgtt->vm, vma, 0, size);
 		cond_resched();
 
 		ppgtt->vm.clear_range(&ppgtt->vm, 0, size);
@@ -189,20 +192,18 @@ static int igt_ppgtt_alloc(void *arg)
 
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
-			goto err_ppgtt_cleanup;
-		}
+		vma->size = size - last;
+		err = i915_vma_alloc_pt_stash(&ppgtt->vm, vma);
+		if (err)
+			goto err_vma;
 
+		ppgtt->vm.allocate_va_range(&ppgtt->vm, vma, last, size - last);
 		cond_resched();
 	}
 
+err_vma:
+	i915_vma_free_pt_stash(&ppgtt->vm, vma);
+	i915_vma_free(vma);
 err_ppgtt_cleanup:
 	i915_vm_put(&ppgtt->vm);
 	return err;
@@ -284,9 +285,15 @@ static int lowlevel_hole(struct i915_address_space *vm,
 				break;
 			}
 
-			if (vm->allocate_va_range &&
-			    vm->allocate_va_range(vm, addr, BIT_ULL(size)))
-				break;
+			mock_vma->size = BIT_ULL(size);
+
+			if (vm->allocate_va_range) {
+				if (i915_vma_alloc_pt_stash(vm, mock_vma))
+					break;
+
+				vm->allocate_va_range(vm, mock_vma,
+						      addr, BIT_ULL(size));
+			}
 
 			mock_vma->pages = obj->mm.pages;
 			mock_vma->node.size = BIT_ULL(size);
@@ -316,6 +323,7 @@ static int lowlevel_hole(struct i915_address_space *vm,
 		cleanup_freed_objects(vm->i915);
 	}
 
+	i915_vma_free_pt_stash(vm, mock_vma);
 	kfree(mock_vma);
 	return 0;
 }
@@ -1888,10 +1896,6 @@ static int igt_cs_tlb(void *arg)
 						   0, vm->total - PAGE_SIZE,
 						   chunk_size, PAGE_SIZE);
 
-			err = vm->allocate_va_range(vm, offset, chunk_size);
-			if (err)
-				goto end;
-
 			memset32(result, STACK_MAGIC, PAGE_SIZE / sizeof(u32));
 
 			vma = i915_vma_instance(bbe, vm, NULL);
@@ -1900,10 +1904,13 @@ static int igt_cs_tlb(void *arg)
 				goto end;
 			}
 
+			vma->size = chunk_size;
 			err = vma->ops->set_pages(vma);
 			if (err)
 				goto end;
 
+			vm->allocate_va_range(vm, vma, offset, chunk_size);
+
 			/* Prime the TLB with the dummy pages */
 			for (i = 0; i < count; i++) {
 				vma->node.start = offset + i * PAGE_SIZE;
diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
index b173086411ef..779ddcba101c 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
@@ -38,14 +38,13 @@ static void mock_insert_entries(struct i915_address_space *vm,
 {
 }
 
-static int mock_bind_ppgtt(struct i915_address_space *vm,
-			   struct i915_vma *vma,
-			   enum i915_cache_level cache_level,
-			   u32 flags)
+static void mock_bind_ppgtt(struct i915_address_space *vm,
+			    struct i915_vma *vma,
+			    enum i915_cache_level cache_level,
+			    u32 flags)
 {
 	GEM_BUG_ON(flags & I915_VMA_GLOBAL_BIND);
 	set_bit(I915_VMA_LOCAL_BIND_BIT, __i915_vma_flags(vma));
-	return 0;
 }
 
 static void mock_unbind_ppgtt(struct i915_address_space *vm,
@@ -74,6 +73,7 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
 	ppgtt->vm.i915 = i915;
 	ppgtt->vm.total = round_down(U64_MAX, PAGE_SIZE);
 	ppgtt->vm.file = ERR_PTR(-ENODEV);
+	ppgtt->vm.dma = &i915->drm.pdev->dev;
 
 	i915_address_space_init(&ppgtt->vm, VM_CLASS_PPGTT);
 
@@ -90,13 +90,11 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
 	return ppgtt;
 }
 
-static int mock_bind_ggtt(struct i915_address_space *vm,
-			  struct i915_vma *vma,
-			  enum i915_cache_level cache_level,
-			  u32 flags)
+static void mock_bind_ggtt(struct i915_address_space *vm,
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
