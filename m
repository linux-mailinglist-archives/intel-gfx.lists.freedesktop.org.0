Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A93AE69B1B9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 18:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F74910E1D8;
	Fri, 17 Feb 2023 17:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8380110E1D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 17:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676654690; x=1708190690;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HNrUBb+3PdanR9jNmUHC7K1NidoXsLQjsbibdzpQGA4=;
 b=LxSP+hxLdIQztRWKFnqRJH0SIuvxZnpGMiBRO8eJzCFHtlADDqZaTiGE
 FbhkOqLH1E9JJRwBANV4itRN121vi41HS4q4E082kB9GN3Rf071IuZUP8
 zi/Y+bxzlTkDnDhuqJ97e7EtpNrIEu+royUdgXv2LBB4Lbc+kawfV2L2e
 kAzSyZl8eX9zI3QsZyvmBf62gUIRChkee09vhXJfkMYcTRGLO/q5l47gW
 WBmLYDmlD/7WE3B6NoLoAuRHCEh2R7CQius0DJse/BihPq1ZbmtgEKOB4
 5or0RVkOS+Yr+jaEMODjE3OzzsiGyq4qkFxeq4d3dl0iLyXLANTuqRUo/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="394515505"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="394515505"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 09:24:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="813441807"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="813441807"
Received: from dut-internal-9dd7.jf.intel.com ([10.24.14.53])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 09:24:49 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Feb 2023 09:20:19 -0800
Message-Id: <20230217172019.1101331-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Drop igt_cs_tlb
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
Cc: lucas.demarchi@intel.com, thomas.hellstrom@linux.intel.com,
 jonathan.cavitt@intel.com, matthew.auld@intel.com, daniel.vetter@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The gt_tlb live selftest has the same code coverage as the
igt_cs_tlb subtest of gtt.  However, igt_cs_tlb is hitting
an issue in that we are updating PTE in gt0->vm but
executing on the media tile without updating gt1->vm.
This issue is corrected in gt_tlb, and thus igt_cs_tlb
is obsolete and should be removed.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 356 ------------------
 1 file changed, 356 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 01e75160a84a..5361ce70d3f2 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1940,361 +1940,6 @@ int i915_gem_gtt_mock_selftests(void)
 	return err;
 }
 
-static int context_sync(struct intel_context *ce)
-{
-	struct i915_request *rq;
-	long timeout;
-
-	rq = intel_context_create_request(ce);
-	if (IS_ERR(rq))
-		return PTR_ERR(rq);
-
-	i915_request_get(rq);
-	i915_request_add(rq);
-
-	timeout = i915_request_wait(rq, 0, HZ / 5);
-	i915_request_put(rq);
-
-	return timeout < 0 ? -EIO : 0;
-}
-
-static struct i915_request *
-submit_batch(struct intel_context *ce, u64 addr)
-{
-	struct i915_request *rq;
-	int err;
-
-	rq = intel_context_create_request(ce);
-	if (IS_ERR(rq))
-		return rq;
-
-	err = 0;
-	if (rq->engine->emit_init_breadcrumb) /* detect a hang */
-		err = rq->engine->emit_init_breadcrumb(rq);
-	if (err == 0)
-		err = rq->engine->emit_bb_start(rq, addr, 0, 0);
-
-	if (err == 0)
-		i915_request_get(rq);
-	i915_request_add(rq);
-
-	return err ? ERR_PTR(err) : rq;
-}
-
-static u32 *spinner(u32 *batch, int i)
-{
-	return batch + i * 64 / sizeof(*batch) + 4;
-}
-
-static void end_spin(u32 *batch, int i)
-{
-	*spinner(batch, i) = MI_BATCH_BUFFER_END;
-	wmb();
-}
-
-static int igt_cs_tlb(void *arg)
-{
-	const unsigned int count = PAGE_SIZE / 64;
-	const unsigned int chunk_size = count * PAGE_SIZE;
-	struct drm_i915_private *i915 = arg;
-	struct drm_i915_gem_object *bbe, *act, *out;
-	struct i915_gem_engines_iter it;
-	struct i915_address_space *vm;
-	struct i915_gem_context *ctx;
-	struct intel_context *ce;
-	struct i915_vma *vma;
-	I915_RND_STATE(prng);
-	struct file *file;
-	unsigned int i;
-	u32 *result;
-	u32 *batch;
-	int err = 0;
-
-	/*
-	 * Our mission here is to fool the hardware to execute something
-	 * from scratch as it has not seen the batch move (due to missing
-	 * the TLB invalidate).
-	 */
-
-	file = mock_file(i915);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
-	ctx = live_context(i915, file);
-	if (IS_ERR(ctx)) {
-		err = PTR_ERR(ctx);
-		goto out_unlock;
-	}
-
-	vm = i915_gem_context_get_eb_vm(ctx);
-	if (i915_is_ggtt(vm))
-		goto out_vm;
-
-	/* Create two pages; dummy we prefill the TLB, and intended */
-	bbe = i915_gem_object_create_internal(i915, PAGE_SIZE);
-	if (IS_ERR(bbe)) {
-		err = PTR_ERR(bbe);
-		goto out_vm;
-	}
-
-	batch = i915_gem_object_pin_map_unlocked(bbe, I915_MAP_WC);
-	if (IS_ERR(batch)) {
-		err = PTR_ERR(batch);
-		goto out_put_bbe;
-	}
-	memset32(batch, MI_BATCH_BUFFER_END, PAGE_SIZE / sizeof(u32));
-	i915_gem_object_flush_map(bbe);
-	i915_gem_object_unpin_map(bbe);
-
-	act = i915_gem_object_create_internal(i915, PAGE_SIZE);
-	if (IS_ERR(act)) {
-		err = PTR_ERR(act);
-		goto out_put_bbe;
-	}
-
-	/* Track the execution of each request by writing into different slot */
-	batch = i915_gem_object_pin_map_unlocked(act, I915_MAP_WC);
-	if (IS_ERR(batch)) {
-		err = PTR_ERR(batch);
-		goto out_put_act;
-	}
-	for (i = 0; i < count; i++) {
-		u32 *cs = batch + i * 64 / sizeof(*cs);
-		u64 addr = (vm->total - PAGE_SIZE) + i * sizeof(u32);
-
-		GEM_BUG_ON(GRAPHICS_VER(i915) < 6);
-		cs[0] = MI_STORE_DWORD_IMM_GEN4;
-		if (GRAPHICS_VER(i915) >= 8) {
-			cs[1] = lower_32_bits(addr);
-			cs[2] = upper_32_bits(addr);
-			cs[3] = i;
-			cs[4] = MI_NOOP;
-			cs[5] = MI_BATCH_BUFFER_START_GEN8;
-		} else {
-			cs[1] = 0;
-			cs[2] = lower_32_bits(addr);
-			cs[3] = i;
-			cs[4] = MI_NOOP;
-			cs[5] = MI_BATCH_BUFFER_START;
-		}
-	}
-
-	out = i915_gem_object_create_internal(i915, PAGE_SIZE);
-	if (IS_ERR(out)) {
-		err = PTR_ERR(out);
-		goto out_put_batch;
-	}
-	i915_gem_object_set_cache_coherency(out, I915_CACHING_CACHED);
-
-	vma = i915_vma_instance(out, vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto out_put_out;
-	}
-
-	err = i915_vma_pin(vma, 0, 0,
-			   PIN_USER |
-			   PIN_OFFSET_FIXED |
-			   (vm->total - PAGE_SIZE));
-	if (err)
-		goto out_put_out;
-	GEM_BUG_ON(vma->node.start != vm->total - PAGE_SIZE);
-
-	result = i915_gem_object_pin_map_unlocked(out, I915_MAP_WB);
-	if (IS_ERR(result)) {
-		err = PTR_ERR(result);
-		goto out_put_out;
-	}
-
-	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
-		IGT_TIMEOUT(end_time);
-		unsigned long pass = 0;
-
-		if (!intel_engine_can_store_dword(ce->engine))
-			continue;
-
-		while (!__igt_timeout(end_time, NULL)) {
-			struct i915_vm_pt_stash stash = {};
-			struct i915_request *rq;
-			struct i915_gem_ww_ctx ww;
-			struct i915_vma_resource *vma_res;
-			u64 offset;
-
-			offset = igt_random_offset(&prng,
-						   0, vm->total - PAGE_SIZE,
-						   chunk_size, PAGE_SIZE);
-
-			memset32(result, STACK_MAGIC, PAGE_SIZE / sizeof(u32));
-
-			vma = i915_vma_instance(bbe, vm, NULL);
-			if (IS_ERR(vma)) {
-				err = PTR_ERR(vma);
-				goto end;
-			}
-
-			i915_gem_object_lock(bbe, NULL);
-			err = i915_vma_get_pages(vma);
-			i915_gem_object_unlock(bbe);
-			if (err)
-				goto end;
-
-			vma_res = i915_vma_resource_alloc();
-			if (IS_ERR(vma_res)) {
-				i915_vma_put_pages(vma);
-				err = PTR_ERR(vma_res);
-				goto end;
-			}
-
-			i915_gem_ww_ctx_init(&ww, false);
-retry:
-			err = i915_vm_lock_objects(vm, &ww);
-			if (err)
-				goto end_ww;
-
-			err = i915_vm_alloc_pt_stash(vm, &stash, chunk_size);
-			if (err)
-				goto end_ww;
-
-			err = i915_vm_map_pt_stash(vm, &stash);
-			if (!err)
-				vm->allocate_va_range(vm, &stash, offset, chunk_size);
-			i915_vm_free_pt_stash(vm, &stash);
-end_ww:
-			if (err == -EDEADLK) {
-				err = i915_gem_ww_ctx_backoff(&ww);
-				if (!err)
-					goto retry;
-			}
-			i915_gem_ww_ctx_fini(&ww);
-			if (err) {
-				kfree(vma_res);
-				goto end;
-			}
-
-			i915_vma_resource_init_from_vma(vma_res, vma);
-			/* Prime the TLB with the dummy pages */
-			for (i = 0; i < count; i++) {
-				vma_res->start = offset + i * PAGE_SIZE;
-				vm->insert_entries(vm, vma_res, I915_CACHE_NONE,
-						   0);
-
-				rq = submit_batch(ce, vma_res->start);
-				if (IS_ERR(rq)) {
-					err = PTR_ERR(rq);
-					i915_vma_resource_fini(vma_res);
-					kfree(vma_res);
-					goto end;
-				}
-				i915_request_put(rq);
-			}
-			i915_vma_resource_fini(vma_res);
-			i915_vma_put_pages(vma);
-
-			err = context_sync(ce);
-			if (err) {
-				pr_err("%s: dummy setup timed out\n",
-				       ce->engine->name);
-				kfree(vma_res);
-				goto end;
-			}
-
-			vma = i915_vma_instance(act, vm, NULL);
-			if (IS_ERR(vma)) {
-				kfree(vma_res);
-				err = PTR_ERR(vma);
-				goto end;
-			}
-
-			i915_gem_object_lock(act, NULL);
-			err = i915_vma_get_pages(vma);
-			i915_gem_object_unlock(act);
-			if (err) {
-				kfree(vma_res);
-				goto end;
-			}
-
-			i915_vma_resource_init_from_vma(vma_res, vma);
-			/* Replace the TLB with target batches */
-			for (i = 0; i < count; i++) {
-				struct i915_request *rq;
-				u32 *cs = batch + i * 64 / sizeof(*cs);
-				u64 addr;
-
-				vma_res->start = offset + i * PAGE_SIZE;
-				vm->insert_entries(vm, vma_res, I915_CACHE_NONE, 0);
-
-				addr = vma_res->start + i * 64;
-				cs[4] = MI_NOOP;
-				cs[6] = lower_32_bits(addr);
-				cs[7] = upper_32_bits(addr);
-				wmb();
-
-				rq = submit_batch(ce, addr);
-				if (IS_ERR(rq)) {
-					err = PTR_ERR(rq);
-					i915_vma_resource_fini(vma_res);
-					kfree(vma_res);
-					goto end;
-				}
-
-				/* Wait until the context chain has started */
-				if (i == 0) {
-					while (READ_ONCE(result[i]) &&
-					       !i915_request_completed(rq))
-						cond_resched();
-				} else {
-					end_spin(batch, i - 1);
-				}
-
-				i915_request_put(rq);
-			}
-			end_spin(batch, count - 1);
-
-			i915_vma_resource_fini(vma_res);
-			kfree(vma_res);
-			i915_vma_put_pages(vma);
-
-			err = context_sync(ce);
-			if (err) {
-				pr_err("%s: writes timed out\n",
-				       ce->engine->name);
-				goto end;
-			}
-
-			for (i = 0; i < count; i++) {
-				if (result[i] != i) {
-					pr_err("%s: Write lost on pass %lu, at offset %llx, index %d, found %x, expected %x\n",
-					       ce->engine->name, pass,
-					       offset, i, result[i], i);
-					err = -EINVAL;
-					goto end;
-				}
-			}
-
-			vm->clear_range(vm, offset, chunk_size);
-			pass++;
-		}
-	}
-end:
-	if (igt_flush_test(i915))
-		err = -EIO;
-	i915_gem_context_unlock_engines(ctx);
-	i915_gem_object_unpin_map(out);
-out_put_out:
-	i915_gem_object_put(out);
-out_put_batch:
-	i915_gem_object_unpin_map(act);
-out_put_act:
-	i915_gem_object_put(act);
-out_put_bbe:
-	i915_gem_object_put(bbe);
-out_vm:
-	i915_vm_put(vm);
-out_unlock:
-	fput(file);
-	return err;
-}
-
 int i915_gem_gtt_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
@@ -2314,7 +1959,6 @@ int i915_gem_gtt_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_ggtt_fill),
 		SUBTEST(igt_ggtt_page),
 		SUBTEST(igt_ggtt_misaligned_pin),
-		SUBTEST(igt_cs_tlb),
 	};
 
 	GEM_BUG_ON(offset_in_page(to_gt(i915)->ggtt->vm.total));
-- 
2.25.1

