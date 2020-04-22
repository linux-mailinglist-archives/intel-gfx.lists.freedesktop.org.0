Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D12F51B4D03
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 21:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98F1D6E265;
	Wed, 22 Apr 2020 19:06:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 185B26E378
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 19:06:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20988662-1500050 
 for multiple; Wed, 22 Apr 2020 20:05:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 20:05:58 +0100
Message-Id: <20200422190558.30509-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Only close vma we open
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

The history of i915_vma_close() is confusing, as is its use. As the
lifetime of the i915_vma is currently bounded by the object it is
attached to, we needed a means of identify when a vma was no longer in
use by userspace (via the user's fd). This is further complicated by
that only ppgtt vma should be closed at the user's behest, as the ggtt
were always shared.

Now that we attach the vma to a lut on the user's context, the open
count does indicate how many unique and open context/vm are referencing
this vma from the user. As such, we can and should just use the
open_count to track when the vma is still in use by userspace.

It's a poor man's replacement for reference counting.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1193
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  4 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  4 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   | 83 +++++--------------
 .../drm/i915/gem/selftests/i915_gem_context.c |  1 -
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  4 +-
 drivers/gpu/drm/i915/gvt/scheduler.c          |  5 +-
 drivers/gpu/drm/i915/i915_vma.c               | 28 +++++--
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 32 +++----
 9 files changed, 56 insertions(+), 107 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 11d9135cf21a..900ea8b7fc8f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -130,9 +130,7 @@ static void lut_close(struct i915_gem_context *ctx)
 		if (&lut->obj_link != &obj->lut_list) {
 			i915_lut_handle_free(lut);
 			radix_tree_iter_delete(&ctx->handles_vma, &iter, slot);
-			if (atomic_dec_and_test(&vma->open_count) &&
-			    !i915_vma_is_ggtt(vma))
-				i915_vma_close(vma);
+			i915_vma_close(vma);
 			i915_gem_object_put(obj);
 		}
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 517898aa634c..964f73f062c1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -830,7 +830,7 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
 	return 0;
 
 err:
-	atomic_dec(&vma->open_count);
+	i915_vma_close(vma);
 	i915_vma_put(vma);
 	i915_lut_handle_free(lut);
 	return err;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 3f01cdd1a39b..9d1d0131f7c2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -135,9 +135,7 @@ void i915_gem_close_object(struct drm_gem_object *gem, struct drm_file *file)
 		if (vma) {
 			GEM_BUG_ON(vma->obj != obj);
 			GEM_BUG_ON(!atomic_read(&vma->open_count));
-			if (atomic_dec_and_test(&vma->open_count) &&
-			    !i915_vma_is_ggtt(vma))
-				i915_vma_close(vma);
+			i915_vma_close(vma);
 		}
 		mutex_unlock(&ctx->mutex);
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index d4f94ca9ae0d..c9988b6d5c88 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -421,7 +421,7 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
 
 			err = i915_vma_pin(vma, 0, 0, PIN_USER);
 			if (err)
-				goto out_close;
+				goto out_put;
 
 			err = igt_check_page_sizes(vma);
 
@@ -432,8 +432,6 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
 			}
 
 			i915_vma_unpin(vma);
-			i915_vma_close(vma);
-
 			i915_gem_object_put(obj);
 
 			if (err)
@@ -443,8 +441,6 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
 
 	goto out_device;
 
-out_close:
-	i915_vma_close(vma);
 out_put:
 	i915_gem_object_put(obj);
 out_device:
@@ -492,7 +488,7 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 
 			err = i915_vma_pin(vma, 0, 0, PIN_USER);
 			if (err)
-				goto out_close;
+				goto out_put;
 
 			err = igt_check_page_sizes(vma);
 			if (err)
@@ -515,8 +511,6 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 			}
 
 			i915_vma_unpin(vma);
-			i915_vma_close(vma);
-
 			__i915_gem_object_put_pages(obj);
 			i915_gem_object_put(obj);
 		}
@@ -526,8 +520,6 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 
 out_unpin:
 	i915_vma_unpin(vma);
-out_close:
-	i915_vma_close(vma);
 out_put:
 	i915_gem_object_put(obj);
 out_region:
@@ -587,10 +579,8 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 		}
 
 		err = i915_vma_pin(vma, 0, 0, flags);
-		if (err) {
-			i915_vma_close(vma);
+		if (err)
 			goto out_unpin;
-		}
 
 
 		err = igt_check_page_sizes(vma);
@@ -603,10 +593,8 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 
 		i915_vma_unpin(vma);
 
-		if (err) {
-			i915_vma_close(vma);
+		if (err)
 			goto out_unpin;
-		}
 
 		/*
 		 * Try all the other valid offsets until the next
@@ -615,16 +603,12 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 		 */
 		for (offset = 4096; offset < page_size; offset += 4096) {
 			err = i915_vma_unbind(vma);
-			if (err) {
-				i915_vma_close(vma);
+			if (err)
 				goto out_unpin;
-			}
 
 			err = i915_vma_pin(vma, 0, 0, flags | offset);
-			if (err) {
-				i915_vma_close(vma);
+			if (err)
 				goto out_unpin;
-			}
 
 			err = igt_check_page_sizes(vma);
 
@@ -636,10 +620,8 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 
 			i915_vma_unpin(vma);
 
-			if (err) {
-				i915_vma_close(vma);
+			if (err)
 				goto out_unpin;
-			}
 
 			if (igt_timeout(end_time,
 					"%s timed out at offset %x with page-size %x\n",
@@ -647,8 +629,6 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 				break;
 		}
 
-		i915_vma_close(vma);
-
 		i915_gem_object_unpin_pages(obj);
 		__i915_gem_object_put_pages(obj);
 		i915_gem_object_put(obj);
@@ -670,12 +650,6 @@ static void close_object_list(struct list_head *objects,
 	struct drm_i915_gem_object *obj, *on;
 
 	list_for_each_entry_safe(obj, on, objects, st_link) {
-		struct i915_vma *vma;
-
-		vma = i915_vma_instance(obj, &ppgtt->vm, NULL);
-		if (!IS_ERR(vma))
-			i915_vma_close(vma);
-
 		list_del(&obj->st_link);
 		i915_gem_object_unpin_pages(obj);
 		__i915_gem_object_put_pages(obj);
@@ -912,7 +886,7 @@ static int igt_mock_ppgtt_64K(void *arg)
 
 			err = i915_vma_pin(vma, 0, 0, flags);
 			if (err)
-				goto out_vma_close;
+				goto out_object_unpin;
 
 			err = igt_check_page_sizes(vma);
 			if (err)
@@ -945,8 +919,6 @@ static int igt_mock_ppgtt_64K(void *arg)
 			}
 
 			i915_vma_unpin(vma);
-			i915_vma_close(vma);
-
 			i915_gem_object_unpin_pages(obj);
 			__i915_gem_object_put_pages(obj);
 			i915_gem_object_put(obj);
@@ -957,8 +929,6 @@ static int igt_mock_ppgtt_64K(void *arg)
 
 out_vma_unpin:
 	i915_vma_unpin(vma);
-out_vma_close:
-	i915_vma_close(vma);
 out_object_unpin:
 	i915_gem_object_unpin_pages(obj);
 out_object_put:
@@ -1070,7 +1040,7 @@ static int __igt_write_huge(struct intel_context *ce,
 
 	err = i915_vma_unbind(vma);
 	if (err)
-		goto out_vma_close;
+		return err;
 
 	err = i915_vma_pin(vma, size, 0, flags | offset);
 	if (err) {
@@ -1081,7 +1051,7 @@ static int __igt_write_huge(struct intel_context *ce,
 		if (err == -ENOSPC && i915_is_ggtt(ce->vm))
 			err = 0;
 
-		goto out_vma_close;
+		return err;
 	}
 
 	err = igt_check_page_sizes(vma);
@@ -1102,8 +1072,6 @@ static int __igt_write_huge(struct intel_context *ce,
 
 out_vma_unpin:
 	i915_vma_unpin(vma);
-out_vma_close:
-	__i915_vma_put(vma);
 	return err;
 }
 
@@ -1490,7 +1458,7 @@ static int igt_ppgtt_pin_update(void *arg)
 
 		err = i915_vma_pin(vma, SZ_2M, 0, flags);
 		if (err)
-			goto out_close;
+			goto out_put;
 
 		if (vma->page_sizes.sg < page_size) {
 			pr_info("Unable to allocate page-size %x, finishing test early\n",
@@ -1527,8 +1495,6 @@ static int igt_ppgtt_pin_update(void *arg)
 			goto out_unpin;
 
 		i915_vma_unpin(vma);
-		i915_vma_close(vma);
-
 		i915_gem_object_put(obj);
 	}
 
@@ -1546,7 +1512,7 @@ static int igt_ppgtt_pin_update(void *arg)
 
 	err = i915_vma_pin(vma, 0, 0, flags);
 	if (err)
-		goto out_close;
+		goto out_put;
 
 	/*
 	 * Make sure we don't end up with something like where the pde is still
@@ -1576,8 +1542,6 @@ static int igt_ppgtt_pin_update(void *arg)
 
 out_unpin:
 	i915_vma_unpin(vma);
-out_close:
-	i915_vma_close(vma);
 out_put:
 	i915_gem_object_put(obj);
 out_vm:
@@ -1629,13 +1593,11 @@ static int igt_tmpfs_fallback(void *arg)
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err)
-		goto out_close;
+		goto out_put;
 
 	err = igt_check_page_sizes(vma);
 
 	i915_vma_unpin(vma);
-out_close:
-	i915_vma_close(vma);
 out_put:
 	i915_gem_object_put(obj);
 out_restore:
@@ -1682,7 +1644,7 @@ static int igt_shrink_thp(void *arg)
 
 	err = i915_vma_pin(vma, 0, 0, flags);
 	if (err)
-		goto out_close;
+		goto out_put;
 
 	if (obj->mm.page_sizes.phys < I915_GTT_PAGE_SIZE_2M) {
 		pr_info("failed to allocate THP, finishing test early\n");
@@ -1706,7 +1668,7 @@ static int igt_shrink_thp(void *arg)
 	i915_gem_context_unlock_engines(ctx);
 	i915_vma_unpin(vma);
 	if (err)
-		goto out_close;
+		goto out_put;
 
 	/*
 	 * Now that the pages are *unpinned* shrink-all should invoke
@@ -1716,18 +1678,18 @@ static int igt_shrink_thp(void *arg)
 	if (i915_gem_object_has_pages(obj)) {
 		pr_err("shrink-all didn't truncate the pages\n");
 		err = -EINVAL;
-		goto out_close;
+		goto out_put;
 	}
 
 	if (obj->mm.page_sizes.sg || obj->mm.page_sizes.phys) {
 		pr_err("residual page-size bits left\n");
 		err = -EINVAL;
-		goto out_close;
+		goto out_put;
 	}
 
 	err = i915_vma_pin(vma, 0, 0, flags);
 	if (err)
-		goto out_close;
+		goto out_put;
 
 	while (n--) {
 		err = cpu_check(obj, n, 0xdeadbeaf);
@@ -1737,8 +1699,6 @@ static int igt_shrink_thp(void *arg)
 
 out_unpin:
 	i915_vma_unpin(vma);
-out_close:
-	i915_vma_close(vma);
 out_put:
 	i915_gem_object_put(obj);
 out_vm:
@@ -1777,21 +1737,20 @@ int i915_gem_huge_page_mock_selftests(void)
 	if (!i915_vm_is_4lvl(&ppgtt->vm)) {
 		pr_err("failed to create 48b PPGTT\n");
 		err = -EINVAL;
-		goto out_close;
+		goto out_put;
 	}
 
 	/* If we were ever hit this then it's time to mock the 64K scratch */
 	if (!i915_vm_has_scratch_64K(&ppgtt->vm)) {
 		pr_err("PPGTT missing 64K scratch page\n");
 		err = -EINVAL;
-		goto out_close;
+		goto out_put;
 	}
 
 	err = i915_subtests(tests, ppgtt);
 
-out_close:
+out_put:
 	i915_vm_put(&ppgtt->vm);
-
 out_unlock:
 	drm_dev_put(&dev_priv->drm);
 	return err;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index f4f933240b39..87d264fe54b2 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1687,7 +1687,6 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 		goto skip_request;
 
 	i915_vma_unpin(vma);
-	i915_vma_close(vma);
 
 	i915_request_add(rq);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 26e78db33675..708cb7808865 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -194,7 +194,7 @@ int intel_renderstate_init(struct intel_renderstate *so,
 
 	err = i915_vma_pin(so->vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
 	if (err)
-		goto err_vma;
+		goto err_obj;
 
 	err = render_state_setup(so, engine->i915);
 	if (err)
@@ -204,8 +204,6 @@ int intel_renderstate_init(struct intel_renderstate *so,
 
 err_unpin:
 	i915_vma_unpin(so->vma);
-err_vma:
-	i915_vma_close(so->vma);
 err_obj:
 	i915_gem_object_put(obj);
 	so->vma = NULL;
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index cb11c3184085..2f5c59111821 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -595,10 +595,9 @@ static void release_shadow_batch_buffer(struct intel_vgpu_workload *workload)
 			if (bb->va && !IS_ERR(bb->va))
 				i915_gem_object_unpin_map(bb->obj);
 
-			if (bb->vma && !IS_ERR(bb->vma)) {
+			if (bb->vma && !IS_ERR(bb->vma))
 				i915_vma_unpin(bb->vma);
-				i915_vma_close(bb->vma);
-			}
+
 			i915_gem_object_put(bb->obj);
 		}
 		list_del(&bb->list);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 20fe5a134d92..fc14ebf9a0b7 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -522,7 +522,6 @@ void i915_vma_unpin_and_release(struct i915_vma **p_vma, unsigned int flags)
 	GEM_BUG_ON(!obj);
 
 	i915_vma_unpin(vma);
-	i915_vma_close(vma);
 
 	if (flags & I915_VMA_RELEASE_MAP)
 		i915_gem_object_unpin_map(obj);
@@ -1023,13 +1022,8 @@ int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags)
 	} while (1);
 }
 
-void i915_vma_close(struct i915_vma *vma)
+static void __vma_close(struct i915_vma *vma, struct intel_gt *gt)
 {
-	struct intel_gt *gt = vma->vm->gt;
-	unsigned long flags;
-
-	GEM_BUG_ON(i915_vma_is_closed(vma));
-
 	/*
 	 * We defer actually closing, unbinding and destroying the VMA until
 	 * the next idle point, or if the object is freed in the meantime. By
@@ -1042,9 +1036,25 @@ void i915_vma_close(struct i915_vma *vma)
 	 * causing us to rebind the VMA once more. This ends up being a lot
 	 * of wasted work for the steady state.
 	 */
-	spin_lock_irqsave(&gt->closed_lock, flags);
+	GEM_BUG_ON(i915_vma_is_closed(vma));
 	list_add(&vma->closed_link, &gt->closed_vma);
-	spin_unlock_irqrestore(&gt->closed_lock, flags);
+}
+
+void i915_vma_close(struct i915_vma *vma)
+{
+	struct intel_gt *gt = vma->vm->gt;
+	unsigned long flags;
+
+	if (i915_vma_is_ggtt(vma))
+		return;
+
+	GEM_BUG_ON(!atomic_read(&vma->open_count));
+	if (atomic_dec_and_lock_irqsave(&vma->open_count,
+					&gt->closed_lock,
+					flags)) {
+		__vma_close(vma, gt);
+		spin_unlock_irqrestore(&gt->closed_lock, flags);
+	}
 }
 
 static void __i915_vma_remove_closed(struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 5d2a02fcf595..2e471500a646 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -331,9 +331,6 @@ static void close_object_list(struct list_head *objects,
 		vma = i915_vma_instance(obj, vm, NULL);
 		if (!IS_ERR(vma))
 			ignored = i915_vma_unbind(vma);
-		/* Only ppgtt vma may be closed before the object is freed */
-		if (!IS_ERR(vma) && !i915_vma_is_ggtt(vma))
-			i915_vma_close(vma);
 
 		list_del(&obj->st_link);
 		i915_gem_object_put(obj);
@@ -591,7 +588,7 @@ static int walk_hole(struct i915_address_space *vm,
 				pr_err("%s bind failed at %llx + %llx [hole %llx- %llx] with err=%d\n",
 				       __func__, addr, vma->size,
 				       hole_start, hole_end, err);
-				goto err_close;
+				goto err_put;
 			}
 			i915_vma_unpin(vma);
 
@@ -600,14 +597,14 @@ static int walk_hole(struct i915_address_space *vm,
 				pr_err("%s incorrect at %llx + %llx\n",
 				       __func__, addr, vma->size);
 				err = -EINVAL;
-				goto err_close;
+				goto err_put;
 			}
 
 			err = i915_vma_unbind(vma);
 			if (err) {
 				pr_err("%s unbind failed at %llx + %llx  with err=%d\n",
 				       __func__, addr, vma->size, err);
-				goto err_close;
+				goto err_put;
 			}
 
 			GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
@@ -616,13 +613,10 @@ static int walk_hole(struct i915_address_space *vm,
 					"%s timed out at %llx\n",
 					__func__, addr)) {
 				err = -EINTR;
-				goto err_close;
+				goto err_put;
 			}
 		}
 
-err_close:
-		if (!i915_vma_is_ggtt(vma))
-			i915_vma_close(vma);
 err_put:
 		i915_gem_object_put(obj);
 		if (err)
@@ -675,7 +669,7 @@ static int pot_hole(struct i915_address_space *vm,
 				       addr,
 				       hole_start, hole_end,
 				       err);
-				goto err;
+				goto err_obj;
 			}
 
 			if (!drm_mm_node_allocated(&vma->node) ||
@@ -685,7 +679,7 @@ static int pot_hole(struct i915_address_space *vm,
 				i915_vma_unpin(vma);
 				err = i915_vma_unbind(vma);
 				err = -EINVAL;
-				goto err;
+				goto err_obj;
 			}
 
 			i915_vma_unpin(vma);
@@ -697,13 +691,10 @@ static int pot_hole(struct i915_address_space *vm,
 				"%s timed out after %d/%d\n",
 				__func__, pot, fls64(hole_end - 1) - 1)) {
 			err = -EINTR;
-			goto err;
+			goto err_obj;
 		}
 	}
 
-err:
-	if (!i915_vma_is_ggtt(vma))
-		i915_vma_close(vma);
 err_obj:
 	i915_gem_object_put(obj);
 	return err;
@@ -778,7 +769,7 @@ static int drunk_hole(struct i915_address_space *vm,
 				       addr, BIT_ULL(size),
 				       hole_start, hole_end,
 				       err);
-				goto err;
+				goto err_obj;
 			}
 
 			if (!drm_mm_node_allocated(&vma->node) ||
@@ -788,7 +779,7 @@ static int drunk_hole(struct i915_address_space *vm,
 				i915_vma_unpin(vma);
 				err = i915_vma_unbind(vma);
 				err = -EINVAL;
-				goto err;
+				goto err_obj;
 			}
 
 			i915_vma_unpin(vma);
@@ -799,13 +790,10 @@ static int drunk_hole(struct i915_address_space *vm,
 					"%s timed out after %d/%d\n",
 					__func__, n, count)) {
 				err = -EINTR;
-				goto err;
+				goto err_obj;
 			}
 		}
 
-err:
-		if (!i915_vma_is_ggtt(vma))
-			i915_vma_close(vma);
 err_obj:
 		i915_gem_object_put(obj);
 		kfree(order);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
