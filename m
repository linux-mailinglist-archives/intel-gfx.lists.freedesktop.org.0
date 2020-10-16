Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31824290342
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 12:45:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150796EB9D;
	Fri, 16 Oct 2020 10:45:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 842636EABE
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 10:44:55 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 12:44:42 +0200
Message-Id: <20201016104444.1492028-60-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 59/61] drm/i915/selftests: Prepare gtt tests
 for obj->mm.lock removal
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

We need to lock the global gtt dma_resv, use i915_vm_lock_objects
to handle this correctly. Add ww handling for this where required.

Add the object lock around unpin/put pages, and use the unlocked
versions of pin_pages and pin_map where required.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 92 ++++++++++++++-----
 1 file changed, 67 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 2cfe99c79034..d07dd6780005 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -129,7 +129,7 @@ fake_dma_object(struct drm_i915_private *i915, u64 size)
 	obj->cache_level = I915_CACHE_NONE;
 
 	/* Preallocate the "backing storage" */
-	if (i915_gem_object_pin_pages(obj))
+	if (i915_gem_object_pin_pages_unlocked(obj))
 		goto err_obj;
 
 	i915_gem_object_unpin_pages(obj);
@@ -145,6 +145,7 @@ static int igt_ppgtt_alloc(void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
 	struct i915_ppgtt *ppgtt;
+	struct i915_gem_ww_ctx ww;
 	u64 size, last, limit;
 	int err = 0;
 
@@ -170,6 +171,12 @@ static int igt_ppgtt_alloc(void *arg)
 	limit = totalram_pages() << PAGE_SHIFT;
 	limit = min(ppgtt->vm.total, limit);
 
+	i915_gem_ww_ctx_init(&ww, false);
+retry:
+	err = i915_vm_lock_objects(&ppgtt->vm, &ww);
+	if (err)
+		goto err_ppgtt_cleanup;
+
 	/* Check we can allocate the entire range */
 	for (size = 4096; size <= limit; size <<= 2) {
 		struct i915_vm_pt_stash stash = {};
@@ -214,6 +221,13 @@ static int igt_ppgtt_alloc(void *arg)
 	}
 
 err_ppgtt_cleanup:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+
 	i915_vm_put(&ppgtt->vm);
 	return err;
 }
@@ -275,7 +289,7 @@ static int lowlevel_hole(struct i915_address_space *vm,
 
 		GEM_BUG_ON(obj->base.size != BIT_ULL(size));
 
-		if (i915_gem_object_pin_pages(obj)) {
+		if (i915_gem_object_pin_pages_unlocked(obj)) {
 			i915_gem_object_put(obj);
 			kfree(order);
 			break;
@@ -296,20 +310,36 @@ static int lowlevel_hole(struct i915_address_space *vm,
 
 			if (vm->allocate_va_range) {
 				struct i915_vm_pt_stash stash = {};
+				struct i915_gem_ww_ctx ww;
+				int err;
+
+				i915_gem_ww_ctx_init(&ww, false);
+retry:
+				err = i915_vm_lock_objects(vm, &ww);
+				if (err)
+					goto alloc_vm_end;
 
+				err = -ENOMEM;
 				if (i915_vm_alloc_pt_stash(vm, &stash,
 							   BIT_ULL(size)))
-					break;
-
-				if (i915_vm_pin_pt_stash(vm, &stash)) {
-					i915_vm_free_pt_stash(vm, &stash);
-					break;
-				}
+					goto alloc_vm_end;
 
-				vm->allocate_va_range(vm, &stash,
-						      addr, BIT_ULL(size));
+				err = i915_vm_pin_pt_stash(vm, &stash);
+				if (!err)
+					vm->allocate_va_range(vm, &stash,
+							      addr, BIT_ULL(size));
 
 				i915_vm_free_pt_stash(vm, &stash);
+alloc_vm_end:
+				if (err == -EDEADLK) {
+					err = i915_gem_ww_ctx_backoff(&ww);
+					if (!err)
+						goto retry;
+				}
+				i915_gem_ww_ctx_fini(&ww);
+
+				if (err)
+					break;
 			}
 
 			mock_vma->pages = obj->mm.pages;
@@ -1165,7 +1195,7 @@ static int igt_ggtt_page(void *arg)
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
-	err = i915_gem_object_pin_pages(obj);
+	err = i915_gem_object_pin_pages_unlocked(obj);
 	if (err)
 		goto out_free;
 
@@ -1332,7 +1362,7 @@ static int igt_gtt_reserve(void *arg)
 			goto out;
 		}
 
-		err = i915_gem_object_pin_pages(obj);
+		err = i915_gem_object_pin_pages_unlocked(obj);
 		if (err) {
 			i915_gem_object_put(obj);
 			goto out;
@@ -1384,7 +1414,7 @@ static int igt_gtt_reserve(void *arg)
 			goto out;
 		}
 
-		err = i915_gem_object_pin_pages(obj);
+		err = i915_gem_object_pin_pages_unlocked(obj);
 		if (err) {
 			i915_gem_object_put(obj);
 			goto out;
@@ -1548,7 +1578,7 @@ static int igt_gtt_insert(void *arg)
 			goto out;
 		}
 
-		err = i915_gem_object_pin_pages(obj);
+		err = i915_gem_object_pin_pages_unlocked(obj);
 		if (err) {
 			i915_gem_object_put(obj);
 			goto out;
@@ -1657,7 +1687,7 @@ static int igt_gtt_insert(void *arg)
 			goto out;
 		}
 
-		err = i915_gem_object_pin_pages(obj);
+		err = i915_gem_object_pin_pages_unlocked(obj);
 		if (err) {
 			i915_gem_object_put(obj);
 			goto out;
@@ -1828,7 +1858,7 @@ static int igt_cs_tlb(void *arg)
 		goto out_vm;
 	}
 
-	batch = i915_gem_object_pin_map(bbe, I915_MAP_WC);
+	batch = i915_gem_object_pin_map_unlocked(bbe, I915_MAP_WC);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
 		goto out_put_bbe;
@@ -1844,7 +1874,7 @@ static int igt_cs_tlb(void *arg)
 	}
 
 	/* Track the execution of each request by writing into different slot */
-	batch = i915_gem_object_pin_map(act, I915_MAP_WC);
+	batch = i915_gem_object_pin_map_unlocked(act, I915_MAP_WC);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
 		goto out_put_act;
@@ -1891,7 +1921,7 @@ static int igt_cs_tlb(void *arg)
 		goto out_put_out;
 	GEM_BUG_ON(vma->node.start != vm->total - PAGE_SIZE);
 
-	result = i915_gem_object_pin_map(out, I915_MAP_WB);
+	result = i915_gem_object_pin_map_unlocked(out, I915_MAP_WB);
 	if (IS_ERR(result)) {
 		err = PTR_ERR(result);
 		goto out_put_out;
@@ -1907,6 +1937,7 @@ static int igt_cs_tlb(void *arg)
 		while (!__igt_timeout(end_time, NULL)) {
 			struct i915_vm_pt_stash stash = {};
 			struct i915_request *rq;
+			struct i915_gem_ww_ctx ww;
 			u64 offset;
 
 			offset = igt_random_offset(&prng,
@@ -1925,19 +1956,30 @@ static int igt_cs_tlb(void *arg)
 			if (err)
 				goto end;
 
+			i915_gem_ww_ctx_init(&ww, false);
+retry:
+			err = i915_vm_lock_objects(vm, &ww);
+			if (err)
+				goto end_ww;
+
 			err = i915_vm_alloc_pt_stash(vm, &stash, chunk_size);
 			if (err)
-				goto end;
+				goto end_ww;
 
 			err = i915_vm_pin_pt_stash(vm, &stash);
-			if (err) {
-				i915_vm_free_pt_stash(vm, &stash);
-				goto end;
-			}
-
-			vm->allocate_va_range(vm, &stash, offset, chunk_size);
+			if (!err)
+				vm->allocate_va_range(vm, &stash, offset, chunk_size);
 
 			i915_vm_free_pt_stash(vm, &stash);
+end_ww:
+			if (err == -EDEADLK) {
+				err = i915_gem_ww_ctx_backoff(&ww);
+				if (!err)
+					goto retry;
+			}
+			i915_gem_ww_ctx_fini(&ww);
+			if (err)
+				goto end;
 
 			/* Prime the TLB with the dummy pages */
 			for (i = 0; i < count; i++) {
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
