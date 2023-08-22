Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6CE78455C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 17:22:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48B4910E390;
	Tue, 22 Aug 2023 15:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C64B10E391
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 15:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692717736; x=1724253736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gi9pOz1u+IsEqk4o/Fw6NUmXyoAH/GAkqArdV1HYKjg=;
 b=YFT0HL98T+vfKOX0Em5QLulh06cHvx769WnPw5+mpeNzSVXvvxwNV41p
 pEMUzxNBj5vo/ypf4uyTRLTM8UXkh1XnRzsZ62+2PlNNIW8pu63ZC/97w
 1T98gecwOJ1JzobQZqCp4b1GZmzOdPHmqxip8JHpOxvZOuf4BMpVyP/+b
 YMfCzF1xprlkjILZQ05dQCeuY7gj9Xvf4gkcT4JbpmbpCUoMS4fJM5OVn
 OyUZVvHwVHfhE/hpgnuqNOz3YJivof3ykqDJ0I26zGuaJCHui8UCgXb6o
 YdQ0LBRm05Kqk/KB0IqLEthoUwU0R4y7K1yhN0rVtwyCSevw3hJAFratf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="372798533"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="372798533"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 08:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="713196500"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="713196500"
Received: from szeng-desk.jf.intel.com ([10.165.21.149])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 08:22:15 -0700
From: Oak Zeng <oak.zeng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 11:28:58 -0400
Message-Id: <20230822152859.1586761-2-oak.zeng@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20230822152859.1586761-1-oak.zeng@intel.com>
References: <20230822152859.1586761-1-oak.zeng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Implement GGTT update method with
 blitter
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Nirmoy Das <nirmoy.das@intel.com>

Implement GGTT update method with blitter command, MI_UPDATE_GTT
and install those handlers if a platform requires that.

v2: Make sure we hold the GT wakeref and Blitter engine wakeref before
we call mutex_lock/intel_context_enter below. When GT/engine are not
awake, the intel_context_enter calls into some runtime pm function which
can end up with kmalloc/fs_reclaim. But trigger fs_reclaim holding a
mutex lock is not allowed because shrinker can also try to hold the same
mutex lock. It is a circular lock. So hold the GT/blitter engine wakeref
before calling mutex_lock, to fix the circular lock. (Oak)

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Oak Zeng <oak.zeng@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 198 +++++++++++++++++++++++++++
 1 file changed, 198 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index dd0ed941441a..d445cb015257 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -15,18 +15,23 @@
 #include "display/intel_display.h"
 #include "gem/i915_gem_lmem.h"
 
+#include "intel_context.h"
 #include "intel_ggtt_gmch.h"
+#include "intel_gpu_commands.h"
 #include "intel_gt.h"
 #include "intel_gt_regs.h"
 #include "intel_pci_config.h"
+#include "intel_ring.h"
 #include "i915_drv.h"
 #include "i915_pci.h"
+#include "i915_request.h"
 #include "i915_scatterlist.h"
 #include "i915_utils.h"
 #include "i915_vgpu.h"
 
 #include "intel_gtt.h"
 #include "gen8_ppgtt.h"
+#include "intel_engine_pm.h"
 
 static void i915_ggtt_color_adjust(const struct drm_mm_node *node,
 				   unsigned long color,
@@ -252,6 +257,103 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
 	return pte;
 }
 
+static bool should_update_ggtt_with_blit(struct i915_ggtt *ggtt)
+{
+	struct intel_gt *gt = ggtt->vm.gt;
+
+	return intel_engine_blitter_context_ready(gt);
+}
+
+static bool gen8_ggtt_blit_fixed_pte(struct i915_ggtt *ggtt, u32 offset,
+				     u32 num_entries, const gen8_pte_t pte)
+{
+	struct intel_gt *gt = ggtt->vm.gt;
+	struct i915_sched_attr attr = {};
+	struct i915_request *rq;
+	struct intel_context *ce;
+	bool wakeref;
+	u32 *cs;
+
+	if (!num_entries)
+		return true;
+
+	ce = gt->engine[BCS0]->blitter_context;
+	if (!ce) {
+		drm_dbg(&ggtt->vm.i915->drm, "Failed to get blitter context\n");
+		return false;
+	}
+
+	/*
+	 * If the GT is not awake already at this stage then fallback
+	 * to pci based GGTT update otherwise __intel_wakeref_get_first()
+	 * would conflict with fs_reclaim trying to allocate memory while
+	 * doing rpm_resume().
+	 */
+	wakeref = intel_gt_pm_get_if_awake(gt);
+	if (!wakeref) {
+		drm_dbg(&ggtt->vm.i915->drm, "GT is not awake, fallback to CPU GGTT update\n");
+		return false;
+	}
+
+	if (!intel_engine_pm_get_if_awake(gt->engine[BCS0])) {
+		drm_dbg(&ggtt->vm.i915->drm, "Blitter engine is not awake, fallback to CPU GGTT update\n");
+		goto err_gt_pm_put;
+	}
+
+	while (num_entries) {
+		/* MI_UPDATE_GTT can update 512 entries in a single command */
+		u32 n_ptes = min_t(u32, 512, num_entries);
+
+		mutex_lock(&ce->timeline->mutex);
+		intel_context_enter(ce);
+		rq = __i915_request_create(ce, GFP_NOWAIT | GFP_ATOMIC);
+		intel_context_exit(ce);
+		if (IS_ERR(rq)) {
+			drm_dbg(&ggtt->vm.i915->drm,
+				"Failed to get blitter request\n");
+			goto err_unlock;
+		}
+
+		cs = intel_ring_begin(rq, 2 * n_ptes + 2);
+		if (IS_ERR(cs)) {
+			drm_dbg(&ggtt->vm.i915->drm,
+				"Failed to begin ring for GGTT blitter\n");
+			goto err_rq;
+		}
+
+		*cs++ = MI_UPDATE_GTT | (2 * n_ptes);
+		*cs++ = offset << 12;
+		memset64((u64 *)cs, pte, n_ptes);
+		cs += n_ptes * 2;
+		intel_ring_advance(rq, cs);
+
+		i915_request_get(rq);
+		__i915_request_commit(rq);
+		__i915_request_queue(rq, &attr);
+
+		mutex_unlock(&ce->timeline->mutex);
+		/* This will break if the request is complete or after engine reset */
+		i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
+		i915_request_put(rq);
+
+		num_entries -= n_ptes;
+	}
+
+	ggtt->invalidate(ggtt);
+	intel_engine_pm_put(gt->engine[BCS0]);
+	intel_gt_pm_put(gt);
+	return true;
+
+err_rq:
+	i915_request_put(rq);
+err_unlock:
+	mutex_unlock(&ce->timeline->mutex);
+	intel_engine_pm_put(gt->engine[BCS0]);
+err_gt_pm_put:
+	intel_gt_pm_put(gt);
+	return false;
+}
+
 static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
 {
 	writeq(pte, addr);
@@ -272,6 +374,22 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
 	ggtt->invalidate(ggtt);
 }
 
+static void gen8_ggtt_insert_page_blit(struct i915_address_space *vm,
+				       dma_addr_t addr, u64 offset,
+				       unsigned int pat_index, u32 flags)
+{
+	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+	gen8_pte_t pte;
+
+	pte = ggtt->vm.pte_encode(addr, pat_index, flags);
+	if (should_update_ggtt_with_blit(i915_vm_to_ggtt(vm)) &&
+	    gen8_ggtt_blit_fixed_pte(ggtt, offset, 1, pte))
+		return;
+
+	gen8_ggtt_insert_page(vm, addr, offset, pat_index, flags);
+	ggtt->invalidate(ggtt);
+}
+
 static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 				     struct i915_vma_resource *vma_res,
 				     unsigned int pat_index,
@@ -311,6 +429,52 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 	ggtt->invalidate(ggtt);
 }
 
+static void __gen8_ggtt_insert_entries_blit(struct i915_address_space *vm,
+					    struct i915_vma_resource *vma_res,
+					    unsigned int pat_index, u32 flags)
+{
+	gen8_pte_t pte_encode;
+	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+	struct sgt_iter iter;
+	dma_addr_t addr;
+	u64 start, end;
+
+	pte_encode = ggtt->vm.pte_encode(0, pat_index, flags);
+	start = (vma_res->start - vma_res->guard) / I915_GTT_PAGE_SIZE;
+	end = start + vma_res->guard / I915_GTT_PAGE_SIZE;
+	if (!gen8_ggtt_blit_fixed_pte(ggtt, start, end - start, vm->scratch[0]->encode))
+		goto err;
+	start = end;
+
+	end += (vma_res->node_size + vma_res->guard) / I915_GTT_PAGE_SIZE;
+	/* TODO: MI_UPDATE_GTT can update 511 entries in a single command. */
+	for_each_sgt_daddr(addr, iter, vma_res->bi.pages) {
+		if (!gen8_ggtt_blit_fixed_pte(ggtt, start++, 1, pte_encode | addr))
+			goto err;
+	}
+
+	if (!gen8_ggtt_blit_fixed_pte(ggtt, start, end - start, vm->scratch[0]->encode))
+		goto err;
+
+	return;
+
+err:
+	drm_dbg(&ggtt->vm.i915->drm, "falling back to gen8_ggtt_insert_entries\n");
+	gen8_ggtt_insert_entries(vm, vma_res, pat_index, flags);
+}
+
+static void gen8_ggtt_insert_entries_blit(struct i915_address_space *vm,
+					  struct i915_vma_resource *vma_res,
+					  unsigned int pat_index, u32 flags)
+{
+	if (!should_update_ggtt_with_blit(i915_vm_to_ggtt(vm))) {
+		gen8_ggtt_insert_entries(vm, vma_res, pat_index, flags);
+		return;
+	}
+
+	__gen8_ggtt_insert_entries_blit(vm, vma_res, pat_index, flags);
+}
+
 static void gen8_ggtt_clear_range(struct i915_address_space *vm,
 				  u64 start, u64 length)
 {
@@ -332,6 +496,34 @@ static void gen8_ggtt_clear_range(struct i915_address_space *vm,
 		gen8_set_pte(&gtt_base[i], scratch_pte);
 }
 
+static void gen8_ggtt_scratch_range_blit(struct i915_address_space *vm,
+					 u64 start, u64 length)
+{
+	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+	unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
+	unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
+	const gen8_pte_t scratch_pte = vm->scratch[0]->encode;
+	gen8_pte_t __iomem *gtt_base =
+		(gen8_pte_t __iomem *)ggtt->gsm + first_entry;
+	const int max_entries = ggtt_total_entries(ggtt) - first_entry;
+	int i;
+
+	if (WARN(num_entries > max_entries,
+		 "First entry = %d; Num entries = %d (max=%d)\n",
+		 first_entry, num_entries, max_entries))
+		num_entries = max_entries;
+
+	if (should_update_ggtt_with_blit(ggtt) &&
+	    gen8_ggtt_blit_fixed_pte(ggtt, first_entry,
+				     num_entries, scratch_pte))
+		return;
+
+	for (i = 0; i < num_entries; i++)
+		gen8_set_pte(&gtt_base[i], scratch_pte);
+
+	ggtt->invalidate(ggtt);
+}
+
 static void gen6_ggtt_insert_page(struct i915_address_space *vm,
 				  dma_addr_t addr,
 				  u64 offset,
@@ -997,6 +1189,12 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
 	}
 
+	if (i915_ggtt_require_blitter(i915)) {
+		ggtt->vm.scratch_range = gen8_ggtt_scratch_range_blit;
+		ggtt->vm.insert_page = gen8_ggtt_insert_page_blit;
+		ggtt->vm.insert_entries = gen8_ggtt_insert_entries_blit;
+	}
+
 	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
 		ggtt->invalidate = guc_ggtt_invalidate;
 	else
-- 
2.26.3

