Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B87E1484B3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 12:51:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA456E33F;
	Fri, 24 Jan 2020 11:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3CFB6E33F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 11:51:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19994208-1500050 
 for multiple; Fri, 24 Jan 2020 11:51:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 11:51:33 +0000
Message-Id: <20200124115133.53360-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4] drm/i915/gt: Poison GTT scratch pages
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

Using a clear page for scratch means that we have relatively benign
errors in case it is accidentally used, but that can be rather too
benign for debugging. If we poison the scratch, ideally it quickly
results in an obvious error.

v2: Set each page individually just in case we are using highmem for our
scratch page.
v3: Pick a new scratch register as MI_STORE_REGISTER_MEM does not work
with GPR0 on gen7, unbelievably.
v4: Haswell still considers 3DPRIM a privileged register!

Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Matthew Auld <matthew.william.auld@gmail.com>
---
 .../drm/i915/gem/selftests/i915_gem_context.c | 154 +++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  30 ++++
 2 files changed, 146 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 7fc46861a54d..130c4c522686 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1492,6 +1492,10 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 
 	GEM_BUG_ON(offset < I915_GTT_PAGE_SIZE);
 
+	err = check_scratch(ctx_vm(ctx), offset);
+	if (err)
+		return err;
+
 	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
@@ -1528,10 +1532,6 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 	if (err)
 		goto out_vm;
 
-	err = check_scratch(vm, offset);
-	if (err)
-		goto err_unpin;
-
 	rq = igt_request_alloc(ctx, engine);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
@@ -1575,64 +1575,95 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	struct drm_i915_private *i915 = ctx->i915;
 	struct drm_i915_gem_object *obj;
 	struct i915_address_space *vm;
-	const u32 RCS_GPR0 = 0x2600; /* not all engines have their own GPR! */
 	const u32 result = 0x100;
 	struct i915_request *rq;
 	struct i915_vma *vma;
+	unsigned int flags;
 	u32 *cmd;
 	int err;
 
 	GEM_BUG_ON(offset < I915_GTT_PAGE_SIZE);
 
+	err = check_scratch(ctx_vm(ctx), offset);
+	if (err)
+		return err;
+
 	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
-	cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
-	if (IS_ERR(cmd)) {
-		err = PTR_ERR(cmd);
-		goto out;
-	}
-
-	memset(cmd, POISON_INUSE, PAGE_SIZE);
 	if (INTEL_GEN(i915) >= 8) {
+		const u32 GPR0 = engine->mmio_base + 0x600;
+
+		vm = i915_gem_context_get_vm_rcu(ctx);
+		vma = i915_vma_instance(obj, vm, NULL);
+		if (IS_ERR(vma)) {
+			err = PTR_ERR(vma);
+			goto out_vm;
+		}
+
+		err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_OFFSET_FIXED);
+		if (err)
+			goto out_vm;
+
+		cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
+		if (IS_ERR(cmd)) {
+			err = PTR_ERR(cmd);
+			goto out;
+		}
+
+		memset(cmd, POISON_INUSE, PAGE_SIZE);
 		*cmd++ = MI_LOAD_REGISTER_MEM_GEN8;
-		*cmd++ = RCS_GPR0;
+		*cmd++ = GPR0;
 		*cmd++ = lower_32_bits(offset);
 		*cmd++ = upper_32_bits(offset);
 		*cmd++ = MI_STORE_REGISTER_MEM_GEN8;
-		*cmd++ = RCS_GPR0;
+		*cmd++ = GPR0;
 		*cmd++ = result;
 		*cmd++ = 0;
+		*cmd = MI_BATCH_BUFFER_END;
+
+		i915_gem_object_flush_map(obj);
+		i915_gem_object_unpin_map(obj);
+
+		flags = 0;
 	} else {
+		const u32 reg = engine->mmio_base + 0x420;
+
+		/* hsw: register access even to 3DPRIM! is protected */
+		vm = i915_vm_get(&engine->gt->ggtt->vm);
+		vma = i915_vma_instance(obj, vm, NULL);
+		if (IS_ERR(vma)) {
+			err = PTR_ERR(vma);
+			goto out_vm;
+		}
+
+		err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
+		if (err)
+			goto out_vm;
+
+		cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
+		if (IS_ERR(cmd)) {
+			err = PTR_ERR(cmd);
+			goto out;
+		}
+
+		memset(cmd, POISON_INUSE, PAGE_SIZE);
 		*cmd++ = MI_LOAD_REGISTER_MEM;
-		*cmd++ = RCS_GPR0;
+		*cmd++ = reg;
 		*cmd++ = offset;
-		*cmd++ = MI_STORE_REGISTER_MEM;
-		*cmd++ = RCS_GPR0;
-		*cmd++ = result;
-	}
-	*cmd = MI_BATCH_BUFFER_END;
-
-	i915_gem_object_flush_map(obj);
-	i915_gem_object_unpin_map(obj);
+		*cmd++ = MI_STORE_REGISTER_MEM | MI_USE_GGTT;
+		*cmd++ = reg;
+		*cmd++ = vma->node.start + result;
+		*cmd = MI_BATCH_BUFFER_END;
 
-	intel_gt_chipset_flush(engine->gt);
+		i915_gem_object_flush_map(obj);
+		i915_gem_object_unpin_map(obj);
 
-	vm = i915_gem_context_get_vm_rcu(ctx);
-	vma = i915_vma_instance(obj, vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto out_vm;
+		flags = I915_DISPATCH_SECURE;
 	}
 
-	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_OFFSET_FIXED);
-	if (err)
-		goto out_vm;
-
-	err = check_scratch(vm, offset);
-	if (err)
-		goto err_unpin;
+	intel_gt_chipset_flush(engine->gt);
 
 	rq = igt_request_alloc(ctx, engine);
 	if (IS_ERR(rq)) {
@@ -1640,7 +1671,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 		goto err_unpin;
 	}
 
-	err = engine->emit_bb_start(rq, vma->node.start, vma->node.size, 0);
+	err = engine->emit_bb_start(rq, vma->node.start, vma->node.size, flags);
 	if (err)
 		goto err_request;
 
@@ -1686,6 +1717,39 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	return err;
 }
 
+static int check_scratch_page(struct i915_gem_context *ctx, u32 *out)
+{
+	struct i915_address_space *vm;
+	struct page *page;
+	u32 *vaddr;
+	int err = 0;
+
+	vm = ctx_vm(ctx);
+	if (!vm)
+		return -ENODEV;
+
+	page = vm->scratch[0].base.page;
+	if (!page) {
+		pr_err("No scratch page!\n");
+		return -EINVAL;
+	}
+
+	vaddr = kmap(page);
+	if (!vaddr) {
+		pr_err("No (mappable) scratch page!\n");
+		return -EINVAL;
+	}
+
+	memcpy(out, vaddr, sizeof(*out));
+	if (memchr_inv(vaddr, *out, PAGE_SIZE)) {
+		pr_err("Inconsistent initial state of scratch page!\n");
+		err = -EINVAL;
+	}
+	kunmap(page);
+
+	return err;
+}
+
 static int igt_vm_isolation(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
@@ -1696,6 +1760,7 @@ static int igt_vm_isolation(void *arg)
 	I915_RND_STATE(prng);
 	struct file *file;
 	u64 vm_total;
+	u32 expected;
 	int err;
 
 	if (INTEL_GEN(i915) < 7)
@@ -1730,6 +1795,15 @@ static int igt_vm_isolation(void *arg)
 	if (ctx_vm(ctx_a) == ctx_vm(ctx_b))
 		goto out_file;
 
+	/* Read the initial state of the scratch page */
+	err = check_scratch_page(ctx_a, &expected);
+	if (err)
+		goto out_file;
+
+	err = check_scratch_page(ctx_b, &expected);
+	if (err)
+		goto out_file;
+
 	vm_total = ctx_vm(ctx_a)->total;
 	GEM_BUG_ON(ctx_vm(ctx_b)->total != vm_total);
 	vm_total -= I915_GTT_PAGE_SIZE;
@@ -1743,6 +1817,10 @@ static int igt_vm_isolation(void *arg)
 		if (!intel_engine_can_store_dword(engine))
 			continue;
 
+		/* Not all engines have their own GPR! */
+		if (INTEL_GEN(i915) < 8 && engine->class != RENDER_CLASS)
+			continue;
+
 		while (!__igt_timeout(end_time, NULL)) {
 			u32 value = 0xc5c5c5c5;
 			u64 offset;
@@ -1760,7 +1838,7 @@ static int igt_vm_isolation(void *arg)
 			if (err)
 				goto out_file;
 
-			if (value) {
+			if (value != expected) {
 				pr_err("%s: Read %08x from scratch (offset 0x%08x_%08x), after %lu reads!\n",
 				       engine->name, value,
 				       upper_32_bits(offset),
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 45d8e0019a8e..bb9a6e638175 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -299,6 +299,25 @@ fill_page_dma(const struct i915_page_dma *p, const u64 val, unsigned int count)
 	kunmap_atomic(memset64(kmap_atomic(p->page), val, count));
 }
 
+static void poison_scratch_page(struct page *page, unsigned long size)
+{
+	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		return;
+
+	GEM_BUG_ON(!IS_ALIGNED(size, PAGE_SIZE));
+
+	do {
+		void *vaddr;
+
+		vaddr = kmap(page);
+		memset(vaddr, POISON_FREE, PAGE_SIZE);
+		kunmap(page);
+
+		page = pfn_to_page(page_to_pfn(page) + 1);
+		size -= PAGE_SIZE;
+	} while (size);
+}
+
 int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
 {
 	unsigned long size;
@@ -331,6 +350,17 @@ int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
 		if (unlikely(!page))
 			goto skip;
 
+		/*
+		 * Use a non-zero scratch page for debugging.
+		 *
+		 * We want a value that should be reasonably obvious
+		 * to spot in the error state, while also causing a GPU hang
+		 * if executed. We prefer using a clear page in production, so
+		 * should it ever be accidentally used, the effect should be
+		 * fairly benign.
+		 */
+		poison_scratch_page(page, size);
+
 		addr = dma_map_page_attrs(vm->dma,
 					  page, 0, size,
 					  PCI_DMA_BIDIRECTIONAL,
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
