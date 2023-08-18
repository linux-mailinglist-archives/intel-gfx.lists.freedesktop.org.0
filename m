Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1AF7813A1
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 21:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD01B10E55E;
	Fri, 18 Aug 2023 19:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A62810E559
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 19:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692387786; x=1723923786;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c6EfoJ4RnxquPWtWbn2sBtkI0NwYwCP52kkjdU9xt8M=;
 b=OorqpVP/nUEmAvum4T8LCqOemMBl7MiKPVjgwma+O+DjDUy7+VUcMjOi
 /daXILO1jj+5JSpBb1E08BO8qC6Uw/ebKVofzNcFzezMpuH5Mo0SgrkoL
 EUO/KGCaa7i977MaHW/S5RB2IEYjXKDA3J+GEVzeAvonZOxq2C4nqZauW
 vgmXg6iyDbXOdIDSM/o9fJh8BEVJuIU7SsO9noz2BX11ID7lLL7Me8vzJ
 aVvy9yT5geaGjXUqvASgAoAgMDOze/ggx/UpB9kQM8B75uu2j46SAzQiC
 F/QJcXfK2wSqGiEjoMXprgCUWU1ErO3Qs5ZpzFKJ7ewqoA8SbsWIMS92d A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="375959574"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="375959574"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 12:43:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="728714064"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="728714064"
Received: from esavax-mobl.ger.corp.intel.com (HELO intel.com) ([10.249.41.4])
 by orsmga007-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2023 12:43:04 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Date: Fri, 18 Aug 2023 21:42:48 +0200
Message-Id: <20230818194249.1014022-3-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230818194249.1014022-1-andi.shyti@linux.intel.com>
References: <20230818194249.1014022-1-andi.shyti@linux.intel.com>
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Nirmoy Das <nirmoy.das@intel.com>

Implement GGTT update method with blitter command, MI_UPDATE_GTT
and install those handlers if a platform requires that.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 189 +++++++++++++++++++++++++++
 1 file changed, 189 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index dd0ed941441aa..715f24de2cfa6 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -15,12 +15,16 @@
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
@@ -252,6 +256,95 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
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
+	/*
+	 * If the GT is not awake already at this stage then fallback
+	 * to pci based GGTT update otherwise __intel_wakeref_get_first()
+	 * would conflict with fs_reclaim trying to allocate memory while
+	 * doing rpm_resume().
+	 */
+	wakeref = intel_gt_pm_get_if_awake(gt);
+	if (!wakeref)
+		return false;
+
+	ce = gt->engine[BCS0]->blitter_context;
+	if (!ce) {
+		drm_dbg(&ggtt->vm.i915->drm, "Failed to get blitter context\n");
+		goto err_print;
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
+	intel_gt_pm_put_async(gt);
+	return true;
+
+err_rq:
+	i915_request_put(rq);
+err_unlock:
+	mutex_unlock(&ce->timeline->mutex);
+err_print:
+	drm_warn_once(&ggtt->vm.i915->drm,
+		      "GGTT update failed with blitter\n");
+	intel_gt_pm_put(gt);
+	return false;
+}
+
 static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
 {
 	writeq(pte, addr);
@@ -272,6 +365,22 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
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
@@ -311,6 +420,52 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
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
@@ -332,6 +487,34 @@ static void gen8_ggtt_clear_range(struct i915_address_space *vm,
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
@@ -997,6 +1180,12 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
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
2.40.1

