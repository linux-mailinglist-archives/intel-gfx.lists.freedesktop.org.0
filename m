Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C2C1D62E2
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2020 19:07:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88BB589491;
	Sat, 16 May 2020 17:07:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E88386E22A
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 May 2020 17:07:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21216026-1500050 
 for multiple; Sat, 16 May 2020 18:07:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 16 May 2020 18:07:34 +0100
Message-Id: <20200516170735.9406-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Remove PIN_UPDATE for i915_vma_pin
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

As we no longer use PIN_UPDATE (since commit 7d0aa0db4375 ("drm/i915/gem:
Unbind all current vma on changing cache-level")) we can remove
PIN_UPDATE itself. The benefit is just in simplifing the vma bind.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/selftests/huge_pages.c   | 142 ------------------
 drivers/gpu/drm/i915/i915_gem_gtt.h           |   1 -
 drivers/gpu/drm/i915/i915_vma.c               |   9 +-
 3 files changed, 3 insertions(+), 149 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index c9988b6d5c88..a0ed2fab0ff3 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1409,147 +1409,6 @@ static int igt_ppgtt_sanity_check(void *arg)
 	return err;
 }
 
-static int igt_ppgtt_pin_update(void *arg)
-{
-	struct i915_gem_context *ctx = arg;
-	struct drm_i915_private *dev_priv = ctx->i915;
-	unsigned long supported = INTEL_INFO(dev_priv)->page_sizes;
-	struct drm_i915_gem_object *obj;
-	struct i915_gem_engines_iter it;
-	struct i915_address_space *vm;
-	struct intel_context *ce;
-	struct i915_vma *vma;
-	unsigned int flags = PIN_USER | PIN_OFFSET_FIXED;
-	unsigned int n;
-	int first, last;
-	int err = 0;
-
-	/*
-	 * Make sure there's no funny business when doing a PIN_UPDATE -- in the
-	 * past we had a subtle issue with being able to incorrectly do multiple
-	 * alloc va ranges on the same object when doing a PIN_UPDATE, which
-	 * resulted in some pretty nasty bugs, though only when using
-	 * huge-gtt-pages.
-	 */
-
-	vm = i915_gem_context_get_vm_rcu(ctx);
-	if (!i915_vm_is_4lvl(vm)) {
-		pr_info("48b PPGTT not supported, skipping\n");
-		goto out_vm;
-	}
-
-	first = ilog2(I915_GTT_PAGE_SIZE_64K);
-	last = ilog2(I915_GTT_PAGE_SIZE_2M);
-
-	for_each_set_bit_from(first, &supported, last + 1) {
-		unsigned int page_size = BIT(first);
-
-		obj = i915_gem_object_create_internal(dev_priv, page_size);
-		if (IS_ERR(obj)) {
-			err = PTR_ERR(obj);
-			goto out_vm;
-		}
-
-		vma = i915_vma_instance(obj, vm, NULL);
-		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto out_put;
-		}
-
-		err = i915_vma_pin(vma, SZ_2M, 0, flags);
-		if (err)
-			goto out_put;
-
-		if (vma->page_sizes.sg < page_size) {
-			pr_info("Unable to allocate page-size %x, finishing test early\n",
-				page_size);
-			goto out_unpin;
-		}
-
-		err = igt_check_page_sizes(vma);
-		if (err)
-			goto out_unpin;
-
-		if (vma->page_sizes.gtt != page_size) {
-			dma_addr_t addr = i915_gem_object_get_dma_address(obj, 0);
-
-			/*
-			 * The only valid reason for this to ever fail would be
-			 * if the dma-mapper screwed us over when we did the
-			 * dma_map_sg(), since it has the final say over the dma
-			 * address.
-			 */
-			if (IS_ALIGNED(addr, page_size)) {
-				pr_err("page_sizes.gtt=%u, expected=%u\n",
-				       vma->page_sizes.gtt, page_size);
-				err = -EINVAL;
-			} else {
-				pr_info("dma address misaligned, finishing test early\n");
-			}
-
-			goto out_unpin;
-		}
-
-		err = i915_vma_bind(vma, I915_CACHE_NONE, PIN_UPDATE, NULL);
-		if (err)
-			goto out_unpin;
-
-		i915_vma_unpin(vma);
-		i915_gem_object_put(obj);
-	}
-
-	obj = i915_gem_object_create_internal(dev_priv, PAGE_SIZE);
-	if (IS_ERR(obj)) {
-		err = PTR_ERR(obj);
-		goto out_vm;
-	}
-
-	vma = i915_vma_instance(obj, vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto out_put;
-	}
-
-	err = i915_vma_pin(vma, 0, 0, flags);
-	if (err)
-		goto out_put;
-
-	/*
-	 * Make sure we don't end up with something like where the pde is still
-	 * pointing to the 2M page, and the pt we just filled-in is dangling --
-	 * we can check this by writing to the first page where it would then
-	 * land in the now stale 2M page.
-	 */
-
-	n = 0;
-	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
-		if (!intel_engine_can_store_dword(ce->engine))
-			continue;
-
-		err = gpu_write(ce, vma, n++, 0xdeadbeaf);
-		if (err)
-			break;
-	}
-	i915_gem_context_unlock_engines(ctx);
-	if (err)
-		goto out_unpin;
-
-	while (n--) {
-		err = cpu_check(obj, n, 0xdeadbeaf);
-		if (err)
-			goto out_unpin;
-	}
-
-out_unpin:
-	i915_vma_unpin(vma);
-out_put:
-	i915_gem_object_put(obj);
-out_vm:
-	i915_vm_put(vm);
-
-	return err;
-}
-
 static int igt_tmpfs_fallback(void *arg)
 {
 	struct i915_gem_context *ctx = arg;
@@ -1760,7 +1619,6 @@ int i915_gem_huge_page_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(igt_shrink_thp),
-		SUBTEST(igt_ppgtt_pin_update),
 		SUBTEST(igt_tmpfs_fallback),
 		SUBTEST(igt_ppgtt_smoke_huge),
 		SUBTEST(igt_ppgtt_sanity_check),
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.h b/drivers/gpu/drm/i915/i915_gem_gtt.h
index f6226df9f972..c9b0ee5e1d23 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.h
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.h
@@ -42,7 +42,6 @@ int i915_gem_gtt_insert(struct i915_address_space *vm,
 #define PIN_OFFSET_BIAS		BIT_ULL(6)
 #define PIN_OFFSET_FIXED	BIT_ULL(7)
 
-#define PIN_UPDATE		BIT_ULL(9)
 #define PIN_GLOBAL		BIT_ULL(10) /* I915_VMA_GLOBAL_BIND */
 #define PIN_USER		BIT_ULL(11) /* I915_VMA_LOCAL_BIND */
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index fc14ebf9a0b7..22198b758459 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -397,17 +397,15 @@ int i915_vma_bind(struct i915_vma *vma,
 
 	vma_flags = atomic_read(&vma->flags);
 	vma_flags &= I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
-	if (flags & PIN_UPDATE)
-		bind_flags |= vma_flags;
-	else
-		bind_flags &= ~vma_flags;
+
+	bind_flags &= ~vma_flags;
 	if (bind_flags == 0)
 		return 0;
 
 	GEM_BUG_ON(!vma->pages);
 
 	trace_i915_vma_bind(vma, bind_flags);
-	if (work && (bind_flags & ~vma_flags) & vma->vm->bind_async_flags) {
+	if (work && bind_flags & vma->vm->bind_async_flags) {
 		struct dma_fence *prev;
 
 		work->vma = vma;
@@ -868,7 +866,6 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	BUILD_BUG_ON(PIN_GLOBAL != I915_VMA_GLOBAL_BIND);
 	BUILD_BUG_ON(PIN_USER != I915_VMA_LOCAL_BIND);
 
-	GEM_BUG_ON(flags & PIN_UPDATE);
 	GEM_BUG_ON(!(flags & (PIN_USER | PIN_GLOBAL)));
 
 	/* First try and grab the pin without rebinding the vma */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
