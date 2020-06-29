Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E632420CDD1
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 12:13:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 008D689862;
	Mon, 29 Jun 2020 10:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E22089861
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 10:13:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21647662-1500050 
 for multiple; Mon, 29 Jun 2020 11:12:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jun 2020 11:12:54 +0100
Message-Id: <20200629101256.13039-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200629101256.13039-1-chris@chris-wilson.co.uk>
References: <20200629101256.13039-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Export ppgtt_bind_vma
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

Reuse the ppgtt_bind_vma() for aliasing_ppgtt_bind_vma() so we can
reduce some code near-duplication. The catch is that we need to then
pass along the i915_address_space and not rely on vma->vm, as they
differ with the aliasing-ppgtt.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_client_blt.c    |  9 ++--
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  7 +--
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 49 +++++++------------
 drivers/gpu/drm/i915/gt/intel_gtt.h           | 13 ++++-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         | 19 ++++---
 drivers/gpu/drm/i915/i915_vma.c               |  8 +--
 drivers/gpu/drm/i915/i915_vma_types.h         |  1 -
 drivers/gpu/drm/i915/selftests/mock_gtt.c     | 12 +++--
 8 files changed, 58 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
index d3a86a4d5c04..278664f831e7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
@@ -32,16 +32,17 @@ static void vma_clear_pages(struct i915_vma *vma)
 	vma->pages = NULL;
 }
 
-static int vma_bind(struct i915_vma *vma,
+static int vma_bind(struct i915_address_space *vm,
+		    struct i915_vma *vma,
 		    enum i915_cache_level cache_level,
 		    u32 flags)
 {
-	return vma->vm->vma_ops.bind_vma(vma, cache_level, flags);
+	return vm->vma_ops.bind_vma(vm, vma, cache_level, flags);
 }
 
-static void vma_unbind(struct i915_vma *vma)
+static void vma_unbind(struct i915_address_space *vm, struct i915_vma *vma)
 {
-	vma->vm->vma_ops.unbind_vma(vma);
+	vm->vma_ops.unbind_vma(vm, vma);
 }
 
 static const struct i915_vma_ops proxy_vma_ops = {
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index f4fec7eb4064..05497b50103f 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -299,11 +299,12 @@ static void pd_vma_clear_pages(struct i915_vma *vma)
 	vma->pages = NULL;
 }
 
-static int pd_vma_bind(struct i915_vma *vma,
+static int pd_vma_bind(struct i915_address_space *vm,
+		       struct i915_vma *vma,
 		       enum i915_cache_level cache_level,
 		       u32 unused)
 {
-	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vma->vm);
+	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
 	struct gen6_ppgtt *ppgtt = vma->private;
 	u32 ggtt_offset = i915_ggtt_offset(vma) / I915_GTT_PAGE_SIZE;
 
@@ -314,7 +315,7 @@ static int pd_vma_bind(struct i915_vma *vma,
 	return 0;
 }
 
-static void pd_vma_unbind(struct i915_vma *vma)
+static void pd_vma_unbind(struct i915_address_space *vm, struct i915_vma *vma)
 {
 	struct gen6_ppgtt *ppgtt = vma->private;
 	struct i915_page_directory * const pd = ppgtt->base.pd;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 323c328d444a..62979ea591f0 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -436,7 +436,8 @@ static void i915_ggtt_clear_range(struct i915_address_space *vm,
 	intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
 }
 
-static int ggtt_bind_vma(struct i915_vma *vma,
+static int ggtt_bind_vma(struct i915_address_space *vm,
+			 struct i915_vma *vma,
 			 enum i915_cache_level cache_level,
 			 u32 flags)
 {
@@ -451,15 +452,15 @@ static int ggtt_bind_vma(struct i915_vma *vma,
 	if (i915_gem_object_is_readonly(obj))
 		pte_flags |= PTE_READ_ONLY;
 
-	vma->vm->insert_entries(vma->vm, vma, cache_level, pte_flags);
+	vm->insert_entries(vm, vma, cache_level, pte_flags);
 	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
 
 	return 0;
 }
 
-static void ggtt_unbind_vma(struct i915_vma *vma)
+static void ggtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
 {
-	vma->vm->clear_range(vma->vm, vma->node.start, vma->size);
+	vm->clear_range(vm, vma->node.start, vma->size);
 }
 
 static int ggtt_reserve_guc_top(struct i915_ggtt *ggtt)
@@ -567,7 +568,8 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 	return ret;
 }
 
-static int aliasing_gtt_bind_vma(struct i915_vma *vma,
+static int aliasing_gtt_bind_vma(struct i915_address_space *vm,
+				 struct i915_vma *vma,
 				 enum i915_cache_level cache_level,
 				 u32 flags)
 {
@@ -580,44 +582,27 @@ static int aliasing_gtt_bind_vma(struct i915_vma *vma,
 		pte_flags |= PTE_READ_ONLY;
 
 	if (flags & I915_VMA_LOCAL_BIND) {
-		struct i915_ppgtt *alias = i915_vm_to_ggtt(vma->vm)->alias;
+		struct i915_ppgtt *alias = i915_vm_to_ggtt(vm)->alias;
 
-		if (flags & I915_VMA_ALLOC) {
-			ret = alias->vm.allocate_va_range(&alias->vm,
-							  vma->node.start,
-							  vma->size);
-			if (ret)
-				return ret;
-
-			set_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma));
-		}
-
-		GEM_BUG_ON(!test_bit(I915_VMA_ALLOC_BIT,
-				     __i915_vma_flags(vma)));
-		alias->vm.insert_entries(&alias->vm, vma,
-					 cache_level, pte_flags);
+		ret = ppgtt_bind_vma(&alias->vm, vma, cache_level, flags);
+		if (ret)
+			return ret;
 	}
 
 	if (flags & I915_VMA_GLOBAL_BIND)
-		vma->vm->insert_entries(vma->vm, vma, cache_level, pte_flags);
+		vm->insert_entries(vm, vma, cache_level, pte_flags);
 
 	return 0;
 }
 
-static void aliasing_gtt_unbind_vma(struct i915_vma *vma)
+static void aliasing_gtt_unbind_vma(struct i915_address_space *vm,
+				    struct i915_vma *vma)
 {
-	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND)) {
-		struct i915_address_space *vm = vma->vm;
-
+	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
 		vm->clear_range(vm, vma->node.start, vma->size);
-	}
-
-	if (test_and_clear_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
-		struct i915_address_space *vm =
-			&i915_vm_to_ggtt(vma->vm)->alias->vm;
 
-		vm->clear_range(vm, vma->node.start, vma->size);
-	}
+	if (i915_vma_is_bound(vma, I915_VMA_LOCAL_BIND))
+		ppgtt_unbind_vma(&i915_vm_to_ggtt(vm)->alias->vm, vma);
 }
 
 static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index d93ebdf3fa0e..f2b75078e05f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -198,14 +198,16 @@ struct intel_gt;
 
 struct i915_vma_ops {
 	/* Map an object into an address space with the given cache flags. */
-	int (*bind_vma)(struct i915_vma *vma,
+	int (*bind_vma)(struct i915_address_space *vm,
+			struct i915_vma *vma,
 			enum i915_cache_level cache_level,
 			u32 flags);
 	/*
 	 * Unmap an object from an address space. This usually consists of
 	 * setting the valid PTE entries to a reserved scratch page.
 	 */
-	void (*unbind_vma)(struct i915_vma *vma);
+	void (*unbind_vma)(struct i915_address_space *vm,
+			   struct i915_vma *vma);
 
 	int (*set_pages)(struct i915_vma *vma);
 	void (*clear_pages)(struct i915_vma *vma);
@@ -566,6 +568,13 @@ int ggtt_set_pages(struct i915_vma *vma);
 int ppgtt_set_pages(struct i915_vma *vma);
 void clear_pages(struct i915_vma *vma);
 
+int ppgtt_bind_vma(struct i915_address_space *vm,
+		   struct i915_vma *vma,
+		   enum i915_cache_level cache_level,
+		   u32 flags);
+void ppgtt_unbind_vma(struct i915_address_space *vm,
+		      struct i915_vma *vma);
+
 void gtt_write_workarounds(struct intel_gt *gt);
 
 void setup_private_pat(struct intel_uncore *uncore);
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index f86f7e68ce5e..f0862e924d11 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -155,16 +155,16 @@ struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt)
 	return ppgtt;
 }
 
-static int ppgtt_bind_vma(struct i915_vma *vma,
-			  enum i915_cache_level cache_level,
-			  u32 flags)
+int ppgtt_bind_vma(struct i915_address_space *vm,
+		   struct i915_vma *vma,
+		   enum i915_cache_level cache_level,
+		   u32 flags)
 {
 	u32 pte_flags;
 	int err;
 
-	if (flags & I915_VMA_ALLOC) {
-		err = vma->vm->allocate_va_range(vma->vm,
-						 vma->node.start, vma->size);
+	if (!test_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
+		err = vm->allocate_va_range(vm, vma->node.start, vma->size);
 		if (err)
 			return err;
 
@@ -176,17 +176,16 @@ static int ppgtt_bind_vma(struct i915_vma *vma,
 	if (i915_gem_object_is_readonly(vma->obj))
 		pte_flags |= PTE_READ_ONLY;
 
-	GEM_BUG_ON(!test_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma)));
-	vma->vm->insert_entries(vma->vm, vma, cache_level, pte_flags);
+	vm->insert_entries(vm, vma, cache_level, pte_flags);
 	wmb();
 
 	return 0;
 }
 
-static void ppgtt_unbind_vma(struct i915_vma *vma)
+void ppgtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
 {
 	if (test_and_clear_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma)))
-		vma->vm->clear_range(vma->vm, vma->node.start, vma->size);
+		vm->clear_range(vm, vma->node.start, vma->size);
 }
 
 int ppgtt_set_pages(struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 1f63c4a1f055..9c85c4f6e995 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -307,7 +307,7 @@ static int __vma_bind(struct dma_fence_work *work)
 	struct i915_vma *vma = vw->vma;
 	int err;
 
-	err = vma->ops->bind_vma(vma, vw->cache_level, vw->flags);
+	err = vma->ops->bind_vma(vma->vm, vma, vw->cache_level, vw->flags);
 	if (err)
 		atomic_or(I915_VMA_ERROR, &vma->flags);
 
@@ -410,7 +410,7 @@ int i915_vma_bind(struct i915_vma *vma,
 
 		work->vma = vma;
 		work->cache_level = cache_level;
-		work->flags = bind_flags | I915_VMA_ALLOC;
+		work->flags = bind_flags;
 
 		/*
 		 * Note we only want to chain up to the migration fence on
@@ -436,7 +436,7 @@ int i915_vma_bind(struct i915_vma *vma,
 			work->pinned = vma->obj;
 		}
 	} else {
-		ret = vma->ops->bind_vma(vma, cache_level, bind_flags);
+		ret = vma->ops->bind_vma(vma->vm, vma, cache_level, bind_flags);
 		if (ret)
 			return ret;
 	}
@@ -1264,7 +1264,7 @@ void __i915_vma_evict(struct i915_vma *vma)
 
 	if (likely(atomic_read(&vma->vm->open))) {
 		trace_i915_vma_unbind(vma);
-		vma->ops->unbind_vma(vma);
+		vma->ops->unbind_vma(vma->vm, vma);
 	}
 	atomic_and(~(I915_VMA_BIND_MASK | I915_VMA_ERROR | I915_VMA_GGTT_WRITE),
 		   &vma->flags);
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 63831cdb7402..9e9082dc8f4b 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -235,7 +235,6 @@ struct i915_vma {
 #define I915_VMA_BIND_MASK (I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND)
 
 #define I915_VMA_ALLOC_BIT	12
-#define I915_VMA_ALLOC		((int)BIT(I915_VMA_ALLOC_BIT))
 
 #define I915_VMA_ERROR_BIT	13
 #define I915_VMA_ERROR		((int)BIT(I915_VMA_ERROR_BIT))
diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
index edc5e3dda8ca..b173086411ef 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
@@ -38,7 +38,8 @@ static void mock_insert_entries(struct i915_address_space *vm,
 {
 }
 
-static int mock_bind_ppgtt(struct i915_vma *vma,
+static int mock_bind_ppgtt(struct i915_address_space *vm,
+			   struct i915_vma *vma,
 			   enum i915_cache_level cache_level,
 			   u32 flags)
 {
@@ -47,7 +48,8 @@ static int mock_bind_ppgtt(struct i915_vma *vma,
 	return 0;
 }
 
-static void mock_unbind_ppgtt(struct i915_vma *vma)
+static void mock_unbind_ppgtt(struct i915_address_space *vm,
+			      struct i915_vma *vma)
 {
 }
 
@@ -88,7 +90,8 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
 	return ppgtt;
 }
 
-static int mock_bind_ggtt(struct i915_vma *vma,
+static int mock_bind_ggtt(struct i915_address_space *vm,
+			  struct i915_vma *vma,
 			  enum i915_cache_level cache_level,
 			  u32 flags)
 {
@@ -96,7 +99,8 @@ static int mock_bind_ggtt(struct i915_vma *vma,
 	return 0;
 }
 
-static void mock_unbind_ggtt(struct i915_vma *vma)
+static void mock_unbind_ggtt(struct i915_address_space *vm,
+			     struct i915_vma *vma)
 {
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
