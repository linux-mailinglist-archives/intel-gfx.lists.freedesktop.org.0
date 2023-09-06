Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00970793B50
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 13:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63BA610E612;
	Wed,  6 Sep 2023 11:31:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5856D10E5F7
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 11:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693999900; x=1725535900;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jUIWTAsHKFr1gTxxTl1GKTMn/Shh0yRByaWu7eC/9Jw=;
 b=fxYBBVLW8ZIRAGTCLhog64cUlBMHwrkl1rFaG7D/CtGHCmj0wPj5Mhh7
 oRLV/nW95EA4Dp1ZfZ6YpGTv0d9Aya0OVGgox5xoA3qpkuQHFBeUHwpTJ
 63dPnm/v8DCvvgQvLWMTtKu2FlBJK+J6dAkciUksYbQGFgLvFE6S5RFu7
 EZcs8IxuwK5NrAqBLYBC3ovfVCqrSF5HSFPUiDo6vJ9ABygsN+F0ce4jA
 HS73lhtpYixFOSi6hFSIYoNMkme3yZ8OoxvisbOR4uhBjKplp0u7WdyOo
 k1CqCxdfdsU5h9p84FWYoNVmyIwoFF8jIRGyXtY6C4Q8HqjP6cwc7MDJo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="357353615"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="357353615"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 04:31:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="865109473"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="865109473"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 04:31:37 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Sep 2023 13:31:20 +0200
Message-ID: <20230906113121.30472-5-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230906113121.30472-1-nirmoy.das@intel.com>
References: <20230906113121.30472-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Implement GGTT update method with
 MI_UPDATE_GTT
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 matthew.d.roper@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement GGTT update method with blitter command, MI_UPDATE_GTT
and install those handlers if a platform requires that.

v2: Make sure we hold the GT wakeref and Blitter engine wakeref before
we call mutex_lock/intel_context_enter below. When GT/engine are not
awake, the intel_context_enter calls into some runtime pm function which
can end up with kmalloc/fs_reclaim. But trigger fs_reclaim holding a
mutex lock is not allowed because shrinker can also try to hold the same
mutex lock. It is a circular lock. So hold the GT/blitter engine wakeref
before calling mutex_lock, to fix the circular lock.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Oak Zeng <oak.zeng@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 235 +++++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h  |   3 +
 2 files changed, 238 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index dd0ed941441a..b94de7cebfce 100644
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
@@ -252,6 +257,145 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
 	return pte;
 }
 
+static bool should_update_ggtt_with_bind(struct i915_ggtt *ggtt)
+{
+	struct intel_gt *gt = ggtt->vm.gt;
+
+	return intel_gt_is_bind_context_ready(gt);
+}
+
+static struct intel_context *gen8_ggtt_bind_get_ce(struct i915_ggtt *ggtt)
+{
+	struct intel_context *ce;
+	struct intel_gt *gt = ggtt->vm.gt;
+
+	if (intel_gt_is_wedged(gt))
+		return NULL;
+
+	ce = gt->engine[BCS0]->bind_context;
+	GEM_BUG_ON(!ce);
+
+	/*
+	 * If the GT is not awake already at this stage then fallback
+	 * to pci based GGTT update otherwise __intel_wakeref_get_first()
+	 * would conflict with fs_reclaim trying to allocate memory while
+	 * doing rpm_resume().
+	 */
+	if (!intel_gt_pm_get_if_awake(gt))
+		return NULL;
+
+	intel_engine_pm_get(ce->engine);
+
+	return ce;
+}
+
+static void gen8_ggtt_bind_put_ce(struct intel_context *ce)
+{
+	intel_engine_pm_put(ce->engine);
+	intel_gt_pm_put(ce->engine->gt);
+}
+
+static bool gen8_ggtt_bind_ptes(struct i915_ggtt *ggtt, u32 offset,
+				struct sg_table *pages, u32 num_entries,
+				const gen8_pte_t pte)
+{
+	struct i915_sched_attr attr = {};
+	struct intel_gt *gt = ggtt->vm.gt;
+	const gen8_pte_t scratch_pte = ggtt->vm.scratch[0]->encode;
+	struct sgt_iter iter;
+	struct i915_request *rq;
+	struct intel_context *ce;
+	u32 *cs;
+
+	if (!num_entries)
+		return true;
+
+	ce = gen8_ggtt_bind_get_ce(ggtt);
+	if (!ce)
+		return false;
+
+	if (pages)
+		iter = __sgt_iter(pages->sgl, true);
+
+	while (num_entries) {
+		int count = 0;
+		dma_addr_t addr;
+		/*
+		 * MI_UPDATE_GTT can update 512 entries in a single command but
+		 * that end up with engine reset, 511 works.
+		 */
+		u32 n_ptes = min_t(u32, 511, num_entries);
+
+		if (mutex_lock_interruptible(&ce->timeline->mutex))
+			goto put_ce;
+
+		intel_context_enter(ce);
+		rq = __i915_request_create(ce, GFP_NOWAIT | GFP_ATOMIC);
+		intel_context_exit(ce);
+		if (IS_ERR(rq)) {
+			GT_TRACE(gt, "Failed to get bind request\n");
+			mutex_unlock(&ce->timeline->mutex);
+			goto put_ce;
+		}
+
+		cs = intel_ring_begin(rq, 2 * n_ptes + 2);
+		if (IS_ERR(cs)) {
+			GT_TRACE(gt, "Failed to ring space for GGTT bind\n");
+			i915_request_set_error_once(rq, PTR_ERR(cs));
+			/* once a request is created, it must be queued */
+			goto queue_err_rq;
+		}
+
+		*cs++ = MI_UPDATE_GTT | (2 * n_ptes);
+		*cs++ = offset << 12;
+
+		if (pages) {
+			for_each_sgt_daddr_next(addr, iter) {
+				if (count == n_ptes)
+					break;
+				*cs++ = lower_32_bits(pte | addr);
+				*cs++ = upper_32_bits(pte | addr);
+				count++;
+			}
+			/* fill remaining with scratch pte, if any */
+			if (count < n_ptes) {
+				memset64((u64 *)cs, scratch_pte,
+					 n_ptes - count);
+				cs += (n_ptes - count) * 2;
+			}
+		} else {
+			memset64((u64 *)cs, pte, n_ptes);
+			cs += n_ptes * 2;
+		}
+
+		intel_ring_advance(rq, cs);
+queue_err_rq:
+		i915_request_get(rq);
+		__i915_request_commit(rq);
+		__i915_request_queue(rq, &attr);
+
+		mutex_unlock(&ce->timeline->mutex);
+		/* This will break if the request is complete or after engine reset */
+		i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
+		if (rq->fence.error)
+			goto err_rq;
+
+		i915_request_put(rq);
+
+		num_entries -= n_ptes;
+		offset += n_ptes;
+	}
+
+	gen8_ggtt_bind_put_ce(ce);
+	return true;
+
+err_rq:
+	i915_request_put(rq);
+put_ce:
+	gen8_ggtt_bind_put_ce(ce);
+	return false;
+}
+
 static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
 {
 	writeq(pte, addr);
@@ -272,6 +416,21 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
 	ggtt->invalidate(ggtt);
 }
 
+static void gen8_ggtt_insert_page_bind(struct i915_address_space *vm,
+				       dma_addr_t addr, u64 offset,
+				       unsigned int pat_index, u32 flags)
+{
+	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+	gen8_pte_t pte;
+
+	pte = ggtt->vm.pte_encode(addr, pat_index, flags);
+	if (should_update_ggtt_with_bind(i915_vm_to_ggtt(vm)) &&
+	    gen8_ggtt_bind_ptes(ggtt, offset, NULL, 1, pte))
+		return ggtt->invalidate(ggtt);
+
+	gen8_ggtt_insert_page(vm, addr, offset, pat_index, flags);
+}
+
 static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 				     struct i915_vma_resource *vma_res,
 				     unsigned int pat_index,
@@ -311,6 +470,50 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 	ggtt->invalidate(ggtt);
 }
 
+static bool __gen8_ggtt_insert_entries_bind(struct i915_address_space *vm,
+					    struct i915_vma_resource *vma_res,
+					    unsigned int pat_index, u32 flags)
+{
+	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+	gen8_pte_t scratch_pte = vm->scratch[0]->encode;
+	gen8_pte_t pte_encode;
+	u64 start, end;
+
+	pte_encode = ggtt->vm.pte_encode(0, pat_index, flags);
+	start = (vma_res->start - vma_res->guard) / I915_GTT_PAGE_SIZE;
+	end = start + vma_res->guard / I915_GTT_PAGE_SIZE;
+	if (!gen8_ggtt_bind_ptes(ggtt, start, NULL, end - start, scratch_pte))
+		goto err;
+
+	start = end;
+	end += (vma_res->node_size + vma_res->guard) / I915_GTT_PAGE_SIZE;
+	if (!gen8_ggtt_bind_ptes(ggtt, start, vma_res->bi.pages,
+	      vma_res->node_size / I915_GTT_PAGE_SIZE, pte_encode))
+		goto err;
+
+	start += vma_res->node_size / I915_GTT_PAGE_SIZE;
+	if (!gen8_ggtt_bind_ptes(ggtt, start, NULL, end - start, scratch_pte))
+		goto err;
+
+	return true;
+
+err:
+	return false;
+}
+
+static void gen8_ggtt_insert_entries_bind(struct i915_address_space *vm,
+					  struct i915_vma_resource *vma_res,
+					  unsigned int pat_index, u32 flags)
+{
+	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+
+	if (should_update_ggtt_with_bind(i915_vm_to_ggtt(vm)) &&
+	    __gen8_ggtt_insert_entries_bind(vm, vma_res, pat_index, flags))
+		return ggtt->invalidate(ggtt);
+
+	gen8_ggtt_insert_entries(vm, vma_res, pat_index, flags);
+}
+
 static void gen8_ggtt_clear_range(struct i915_address_space *vm,
 				  u64 start, u64 length)
 {
@@ -332,6 +535,27 @@ static void gen8_ggtt_clear_range(struct i915_address_space *vm,
 		gen8_set_pte(&gtt_base[i], scratch_pte);
 }
 
+static void gen8_ggtt_scratch_range_bind(struct i915_address_space *vm,
+					 u64 start, u64 length)
+{
+	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+	unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
+	unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
+	const gen8_pte_t scratch_pte = vm->scratch[0]->encode;
+	const int max_entries = ggtt_total_entries(ggtt) - first_entry;
+
+	if (WARN(num_entries > max_entries,
+		 "First entry = %d; Num entries = %d (max=%d)\n",
+		 first_entry, num_entries, max_entries))
+		num_entries = max_entries;
+
+	if (should_update_ggtt_with_bind(ggtt) && gen8_ggtt_bind_ptes(ggtt, first_entry,
+	     NULL, num_entries, scratch_pte))
+		return ggtt->invalidate(ggtt);
+
+	gen8_ggtt_clear_range(vm, start, length);
+}
+
 static void gen6_ggtt_insert_page(struct i915_address_space *vm,
 				  dma_addr_t addr,
 				  u64 offset,
@@ -997,6 +1221,17 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
 	}
 
+	if (i915_ggtt_require_binder(i915)) {
+		ggtt->vm.scratch_range = gen8_ggtt_scratch_range_bind;
+		ggtt->vm.insert_page = gen8_ggtt_insert_page_bind;
+		ggtt->vm.insert_entries = gen8_ggtt_insert_entries_bind;
+		/*
+		 * On GPU is hung, we might bind VMAs for error capture.
+		 * Fallback to CPU GGTT updates in that case.
+		 */
+		ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
+	}
+
 	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
 		ggtt->invalidate = guc_ggtt_invalidate;
 	else
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index bb7e8d48a060..49835a86afd7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -171,6 +171,9 @@ struct intel_gt;
 #define for_each_sgt_daddr(__dp, __iter, __sgt) \
 	__for_each_sgt_daddr(__dp, __iter, __sgt, I915_GTT_PAGE_SIZE)
 
+#define for_each_sgt_daddr_next(__dp, __iter) \
+	__for_each_daddr_next(__dp, __iter, I915_GTT_PAGE_SIZE)
+
 struct i915_page_table {
 	struct drm_i915_gem_object *base;
 	union {
-- 
2.41.0

