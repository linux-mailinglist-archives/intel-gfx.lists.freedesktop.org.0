Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D969E2322D4
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 18:42:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65E4B6E58E;
	Wed, 29 Jul 2020 16:42:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A3286E57E
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 16:42:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21971540-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 17:42:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jul 2020 17:42:19 +0100
Message-Id: <20200729164219.5737-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200729164219.5737-1-chris@chris-wilson.co.uk>
References: <20200729164219.5737-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/gt: Shrink i915_page_directory's slab
 bucket
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

kmalloc uses power-of-two slab buckets for small allocations (up to a
few pages). Since i915_page_directory is a page of pointers, plus a
couple more, this is rounded up to 8K, and we waste nearly 50% of that
allocation. Long terms this leads to poor memory utilisation, bloating
the kernel footprint, but the problem is exacerbated by our conservative
preallocation scheme for binding VMA. As we are required to allocate all
levels for each vma just in case we need to insert them upon binding,
this leads to a large multiplication factor for a single page vma. By
halving the allocation we need for the page directory structure, we
halve the impact of that factor, bringing workloads that once fitted into
memory, hopefully back to fitting into memory.

We maintain the split between i915_page_directory and i915_page_table as
we only need half the allocation for the lowest, most populous, level.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c  | 11 +++++-----
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c  | 26 +++++++++++-----------
 drivers/gpu/drm/i915/gt/intel_gtt.h   | 10 +++++----
 drivers/gpu/drm/i915/gt/intel_ppgtt.c | 31 +++++++++++++++++++++------
 4 files changed, 50 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index fb702e1de739..7e5a86b774a7 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -261,7 +261,7 @@ static void gen6_ppgtt_free_pd(struct gen6_ppgtt *ppgtt)
 
 	gen6_for_all_pdes(pt, pd, pde)
 		if (pt)
-			free_px(&ppgtt->base.vm, pt);
+			free_pt(&ppgtt->base.vm, pt);
 }
 
 static void gen6_ppgtt_cleanup(struct i915_address_space *vm)
@@ -275,7 +275,8 @@ static void gen6_ppgtt_cleanup(struct i915_address_space *vm)
 
 	mutex_destroy(&ppgtt->flush);
 	mutex_destroy(&ppgtt->pin_mutex);
-	kfree(ppgtt->base.pd);
+
+	free_pd(&ppgtt->base.vm, ppgtt->base.pd);
 }
 
 static int pd_vma_set_pages(struct i915_vma *vma)
@@ -322,7 +323,7 @@ static void pd_vma_unbind(struct i915_address_space *vm, struct i915_vma *vma)
 		if (!pt || atomic_read(&pt->used))
 			continue;
 
-		free_px(&ppgtt->base.vm, pt);
+		free_pt(&ppgtt->base.vm, pt);
 		pd->entry[pde] = NULL;
 	}
 
@@ -447,7 +448,7 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 	ppgtt->base.vm.alloc_pt_dma = alloc_pt_dma;
 	ppgtt->base.vm.pte_encode = ggtt->vm.pte_encode;
 
-	ppgtt->base.pd = __alloc_pd(sizeof(*ppgtt->base.pd));
+	ppgtt->base.pd = __alloc_pd(I915_PDES);
 	if (!ppgtt->base.pd) {
 		err = -ENOMEM;
 		goto err_free;
@@ -468,7 +469,7 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 err_scratch:
 	free_scratch(&ppgtt->base.vm);
 err_pd:
-	kfree(ppgtt->base.pd);
+	free_pd(&ppgtt->base.vm, ppgtt->base.pd);
 err_free:
 	mutex_destroy(&ppgtt->pin_mutex);
 	kfree(ppgtt);
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index a40cb7ea8c66..eb64f474a78c 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -181,7 +181,7 @@ static void __gen8_ppgtt_cleanup(struct i915_address_space *vm,
 		} while (pde++, --count);
 	}
 
-	free_px(vm, pd);
+	free_px(vm, &pd->pt, lvl);
 }
 
 static void gen8_ppgtt_cleanup(struct i915_address_space *vm)
@@ -248,7 +248,7 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
 		}
 
 		if (release_pd_entry(pd, idx, pt, scratch))
-			free_px(vm, pt);
+			free_px(vm, pt, lvl);
 	} while (idx++, --len);
 
 	return start;
@@ -628,7 +628,7 @@ static int gen8_preallocate_top_level_pdp(struct i915_ppgtt *ppgtt)
 		err = pin_pt_dma(vm, pde->pt.base);
 		if (err) {
 			i915_gem_object_put(pde->pt.base);
-			kfree(pde);
+			free_pd(vm, pde);
 			return err;
 		}
 
@@ -648,28 +648,30 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
 	struct i915_page_directory *pd;
 	int err;
 
-	GEM_BUG_ON(count > ARRAY_SIZE(pd->entry));
+	GEM_BUG_ON(count > I915_PDES);
 
-	pd = __alloc_pd(offsetof(typeof(*pd), entry[count]));
+	pd = __alloc_pd(count);
 	if (unlikely(!pd))
 		return ERR_PTR(-ENOMEM);
 
 	pd->pt.base = vm->alloc_pt_dma(vm, I915_GTT_PAGE_SIZE_4K);
 	if (IS_ERR(pd->pt.base)) {
-		kfree(pd);
-		return ERR_PTR(-ENOMEM);
+		err = PTR_ERR(pd->pt.base);
+		pd->pt.base = NULL;
+		goto err_pd;
 	}
 
 	err = pin_pt_dma(vm, pd->pt.base);
-	if (err) {
-		i915_gem_object_put(pd->pt.base);
-		kfree(pd);
-		return ERR_PTR(err);
-	}
+	if (err)
+		goto err_pd;
 
 	fill_page_dma(px_base(pd), vm->scratch[vm->top]->encode, count);
 	atomic_inc(px_used(pd)); /* mark as pinned */
 	return pd;
+
+err_pd:
+	free_pd(vm, pd);
+	return ERR_PTR(err);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 6abab2d37b6f..c13c650ced22 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -156,7 +156,7 @@ struct i915_page_table {
 struct i915_page_directory {
 	struct i915_page_table pt;
 	spinlock_t lock;
-	void *entry[512];
+	void **entry;
 };
 
 #define __px_choose_expr(x, type, expr, other) \
@@ -519,12 +519,14 @@ void free_scratch(struct i915_address_space *vm);
 struct drm_i915_gem_object *alloc_pt_dma(struct i915_address_space *vm, int sz);
 struct i915_page_table *alloc_pt(struct i915_address_space *vm);
 struct i915_page_directory *alloc_pd(struct i915_address_space *vm);
-struct i915_page_directory *__alloc_pd(size_t sz);
+struct i915_page_directory *__alloc_pd(int npde);
 
 int pin_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj);
 
-void free_pt(struct i915_address_space *vm, struct i915_page_table *pt);
-#define free_px(vm, px) free_pt(vm, px_pt(px))
+void free_px(struct i915_address_space *vm,
+	     struct i915_page_table *pt, int lvl);
+#define free_pt(vm, px) free_px(vm, px, 0)
+#define free_pd(vm, px) free_px(vm, px_pt(px), 1)
 
 void
 __set_pd_entry(struct i915_page_directory * const pd,
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index ede6369a9092..46d9aceda64c 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -28,14 +28,20 @@ struct i915_page_table *alloc_pt(struct i915_address_space *vm)
 	return pt;
 }
 
-struct i915_page_directory *__alloc_pd(size_t sz)
+struct i915_page_directory *__alloc_pd(int count)
 {
 	struct i915_page_directory *pd;
 
-	pd = kzalloc(sz, I915_GFP_ALLOW_FAIL);
+	pd = kzalloc(sizeof(*pd), I915_GFP_ALLOW_FAIL);
 	if (unlikely(!pd))
 		return NULL;
 
+	pd->entry = kcalloc(count, sizeof(*pd->entry), I915_GFP_ALLOW_FAIL);
+	if (unlikely(!pd->entry)) {
+		kfree(pd);
+		return NULL;
+	}
+
 	spin_lock_init(&pd->lock);
 	return pd;
 }
@@ -44,12 +50,13 @@ struct i915_page_directory *alloc_pd(struct i915_address_space *vm)
 {
 	struct i915_page_directory *pd;
 
-	pd = __alloc_pd(sizeof(*pd));
+	pd = __alloc_pd(I915_PDES);
 	if (unlikely(!pd))
 		return ERR_PTR(-ENOMEM);
 
 	pd->pt.base = vm->alloc_pt_dma(vm, I915_GTT_PAGE_SIZE_4K);
 	if (IS_ERR(pd->pt.base)) {
+		kfree(pd->entry);
 		kfree(pd);
 		return ERR_PTR(-ENOMEM);
 	}
@@ -57,9 +64,19 @@ struct i915_page_directory *alloc_pd(struct i915_address_space *vm)
 	return pd;
 }
 
-void free_pt(struct i915_address_space *vm, struct i915_page_table *pt)
+void free_px(struct i915_address_space *vm, struct i915_page_table *pt, int lvl)
 {
-	i915_gem_object_put(pt->base);
+	BUILD_BUG_ON(offsetof(struct i915_page_directory, pt));
+
+	if (lvl) {
+		struct i915_page_directory *pd =
+			container_of(pt, typeof(*pd), pt);
+		kfree(pd->entry);
+	}
+
+	if (pt->base)
+		i915_gem_object_put(pt->base);
+
 	kfree(pt);
 }
 
@@ -82,7 +99,7 @@ __set_pd_entry(struct i915_page_directory * const pd,
 	       u64 (*encode)(const dma_addr_t, const enum i915_cache_level))
 {
 	/* Each thread pre-pins the pd, and we may have a thread per pde. */
-	GEM_BUG_ON(atomic_read(px_used(pd)) > NALLOC * ARRAY_SIZE(pd->entry));
+	GEM_BUG_ON(atomic_read(px_used(pd)) > NALLOC * I915_PDES);
 
 	atomic_inc(px_used(pd));
 	pd->entry[idx] = to;
@@ -263,7 +280,7 @@ void i915_vm_free_pt_stash(struct i915_address_space *vm,
 	for (n = 0; n < ARRAY_SIZE(stash->pt); n++) {
 		while ((pt = stash->pt[n])) {
 			stash->pt[n] = pt->stash;
-			free_px(vm, pt);
+			free_px(vm, pt, n);
 		}
 	}
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
