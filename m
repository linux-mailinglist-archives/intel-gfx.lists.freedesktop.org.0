Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C378781B4C
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Aug 2023 00:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCBE810E0C2;
	Sat, 19 Aug 2023 22:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 084F710E0C2
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Aug 2023 22:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692485379; x=1724021379;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=suxydylH9U3b/3/92ZHtIuUMgpipnJRzz1/X3cxqOhU=;
 b=fIQI/kvkUK8wQSNkz+OAY6svOhQOpQoNHsrJd170zhUEKxPmp2z0gpvT
 bvIV8XxAdYdgxYfUIY+P2FkHo9xWiQOisgij0ulTYXqmoB+DMhPwe6tjc
 p+TeHvXHMi51jvnT/CPv+AueaiUbHL1YajIlk6TgPeTJuBAwMmDn5fiB/
 jXz8zBTj1tmPAMiwJ78ttK/JV1SOvOmDibVrmBVlyinjPhBvatVoqbGKv
 HL1VrefVv+u81rUD8z9qup7e1Ierj3WdrC3MYB3Ue092SJL+fP7+Vhl+Q
 3JTGGxHYoXNdD3fCP107NuxKOZr9TrmQA9HEVGoVi7e4DFSFZIrpOHGcQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10807"; a="353650277"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="353650277"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2023 15:49:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10807"; a="1066154916"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="1066154916"
Received: from jvanvlam-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.212.132])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2023 15:49:36 -0700
Date: Sun, 20 Aug 2023 00:49:34 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZOFG/ty+S8uL1guc@ashyti-mobl2.lan>
References: <20230818194249.1014022-1-andi.shyti@linux.intel.com>
 <20230818194249.1014022-3-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230818194249.1014022-3-andi.shyti@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Implement GGTT update method
 with blitter
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ops... sorry... too many patches sent... please, ignore!

Andi

On Fri, Aug 18, 2023 at 09:42:48PM +0200, Andi Shyti wrote:
> From: Nirmoy Das <nirmoy.das@intel.com>
> 
> Implement GGTT update method with blitter command, MI_UPDATE_GTT
> and install those handlers if a platform requires that.
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 189 +++++++++++++++++++++++++++
>  1 file changed, 189 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index dd0ed941441aa..715f24de2cfa6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -15,12 +15,16 @@
>  #include "display/intel_display.h"
>  #include "gem/i915_gem_lmem.h"
>  
> +#include "intel_context.h"
>  #include "intel_ggtt_gmch.h"
> +#include "intel_gpu_commands.h"
>  #include "intel_gt.h"
>  #include "intel_gt_regs.h"
>  #include "intel_pci_config.h"
> +#include "intel_ring.h"
>  #include "i915_drv.h"
>  #include "i915_pci.h"
> +#include "i915_request.h"
>  #include "i915_scatterlist.h"
>  #include "i915_utils.h"
>  #include "i915_vgpu.h"
> @@ -252,6 +256,95 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>  	return pte;
>  }
>  
> +static bool should_update_ggtt_with_blit(struct i915_ggtt *ggtt)
> +{
> +	struct intel_gt *gt = ggtt->vm.gt;
> +
> +	return intel_engine_blitter_context_ready(gt);
> +}
> +
> +static bool gen8_ggtt_blit_fixed_pte(struct i915_ggtt *ggtt, u32 offset,
> +				     u32 num_entries, const gen8_pte_t pte)
> +{
> +	struct intel_gt *gt = ggtt->vm.gt;
> +	struct i915_sched_attr attr = {};
> +	struct i915_request *rq;
> +	struct intel_context *ce;
> +	bool wakeref;
> +	u32 *cs;
> +
> +	if (!num_entries)
> +		return true;
> +	/*
> +	 * If the GT is not awake already at this stage then fallback
> +	 * to pci based GGTT update otherwise __intel_wakeref_get_first()
> +	 * would conflict with fs_reclaim trying to allocate memory while
> +	 * doing rpm_resume().
> +	 */
> +	wakeref = intel_gt_pm_get_if_awake(gt);
> +	if (!wakeref)
> +		return false;
> +
> +	ce = gt->engine[BCS0]->blitter_context;
> +	if (!ce) {
> +		drm_dbg(&ggtt->vm.i915->drm, "Failed to get blitter context\n");
> +		goto err_print;
> +	}
> +
> +	while (num_entries) {
> +		/* MI_UPDATE_GTT can update 512 entries in a single command */
> +		u32 n_ptes = min_t(u32, 512, num_entries);
> +
> +		mutex_lock(&ce->timeline->mutex);
> +		intel_context_enter(ce);
> +		rq = __i915_request_create(ce, GFP_NOWAIT | GFP_ATOMIC);
> +		intel_context_exit(ce);
> +		if (IS_ERR(rq)) {
> +			drm_dbg(&ggtt->vm.i915->drm,
> +				"Failed to get blitter request\n");
> +			goto err_unlock;
> +		}
> +
> +		cs = intel_ring_begin(rq, 2 * n_ptes + 2);
> +		if (IS_ERR(cs)) {
> +			drm_dbg(&ggtt->vm.i915->drm,
> +				"Failed to begin ring for GGTT blitter\n");
> +			goto err_rq;
> +		}
> +
> +		*cs++ = MI_UPDATE_GTT | (2 * n_ptes);
> +		*cs++ = offset << 12;
> +		memset64((u64 *)cs, pte, n_ptes);
> +		cs += n_ptes * 2;
> +		intel_ring_advance(rq, cs);
> +
> +		i915_request_get(rq);
> +		__i915_request_commit(rq);
> +		__i915_request_queue(rq, &attr);
> +
> +		mutex_unlock(&ce->timeline->mutex);
> +		/* This will break if the request is complete or after engine reset */
> +		i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
> +		i915_request_put(rq);
> +
> +		num_entries -= n_ptes;
> +	}
> +
> +	ggtt->invalidate(ggtt);
> +	intel_gt_pm_put_async(gt);
> +	return true;
> +
> +err_rq:
> +	i915_request_put(rq);
> +err_unlock:
> +	mutex_unlock(&ce->timeline->mutex);
> +err_print:
> +	drm_warn_once(&ggtt->vm.i915->drm,
> +		      "GGTT update failed with blitter\n");
> +	intel_gt_pm_put(gt);
> +	return false;
> +}
> +
>  static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
>  {
>  	writeq(pte, addr);
> @@ -272,6 +365,22 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
>  	ggtt->invalidate(ggtt);
>  }
>  
> +static void gen8_ggtt_insert_page_blit(struct i915_address_space *vm,
> +				       dma_addr_t addr, u64 offset,
> +				       unsigned int pat_index, u32 flags)
> +{
> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> +	gen8_pte_t pte;
> +
> +	pte = ggtt->vm.pte_encode(addr, pat_index, flags);
> +	if (should_update_ggtt_with_blit(i915_vm_to_ggtt(vm)) &&
> +	    gen8_ggtt_blit_fixed_pte(ggtt, offset, 1, pte))
> +		return;
> +
> +	gen8_ggtt_insert_page(vm, addr, offset, pat_index, flags);
> +	ggtt->invalidate(ggtt);
> +}
> +
>  static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>  				     struct i915_vma_resource *vma_res,
>  				     unsigned int pat_index,
> @@ -311,6 +420,52 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>  	ggtt->invalidate(ggtt);
>  }
>  
> +static void __gen8_ggtt_insert_entries_blit(struct i915_address_space *vm,
> +					    struct i915_vma_resource *vma_res,
> +					    unsigned int pat_index, u32 flags)
> +{
> +	gen8_pte_t pte_encode;
> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> +	struct sgt_iter iter;
> +	dma_addr_t addr;
> +	u64 start, end;
> +
> +	pte_encode = ggtt->vm.pte_encode(0, pat_index, flags);
> +	start = (vma_res->start - vma_res->guard) / I915_GTT_PAGE_SIZE;
> +	end = start + vma_res->guard / I915_GTT_PAGE_SIZE;
> +	if (!gen8_ggtt_blit_fixed_pte(ggtt, start, end - start, vm->scratch[0]->encode))
> +		goto err;
> +	start = end;
> +
> +	end += (vma_res->node_size + vma_res->guard) / I915_GTT_PAGE_SIZE;
> +	/* TODO: MI_UPDATE_GTT can update 511 entries in a single command. */
> +	for_each_sgt_daddr(addr, iter, vma_res->bi.pages) {
> +		if (!gen8_ggtt_blit_fixed_pte(ggtt, start++, 1, pte_encode | addr))
> +			goto err;
> +	}
> +
> +	if (!gen8_ggtt_blit_fixed_pte(ggtt, start, end - start, vm->scratch[0]->encode))
> +		goto err;
> +
> +	return;
> +
> +err:
> +	drm_dbg(&ggtt->vm.i915->drm, "falling back to gen8_ggtt_insert_entries\n");
> +	gen8_ggtt_insert_entries(vm, vma_res, pat_index, flags);
> +}
> +
> +static void gen8_ggtt_insert_entries_blit(struct i915_address_space *vm,
> +					  struct i915_vma_resource *vma_res,
> +					  unsigned int pat_index, u32 flags)
> +{
> +	if (!should_update_ggtt_with_blit(i915_vm_to_ggtt(vm))) {
> +		gen8_ggtt_insert_entries(vm, vma_res, pat_index, flags);
> +		return;
> +	}
> +
> +	__gen8_ggtt_insert_entries_blit(vm, vma_res, pat_index, flags);
> +}
> +
>  static void gen8_ggtt_clear_range(struct i915_address_space *vm,
>  				  u64 start, u64 length)
>  {
> @@ -332,6 +487,34 @@ static void gen8_ggtt_clear_range(struct i915_address_space *vm,
>  		gen8_set_pte(&gtt_base[i], scratch_pte);
>  }
>  
> +static void gen8_ggtt_scratch_range_blit(struct i915_address_space *vm,
> +					 u64 start, u64 length)
> +{
> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> +	unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
> +	unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
> +	const gen8_pte_t scratch_pte = vm->scratch[0]->encode;
> +	gen8_pte_t __iomem *gtt_base =
> +		(gen8_pte_t __iomem *)ggtt->gsm + first_entry;
> +	const int max_entries = ggtt_total_entries(ggtt) - first_entry;
> +	int i;
> +
> +	if (WARN(num_entries > max_entries,
> +		 "First entry = %d; Num entries = %d (max=%d)\n",
> +		 first_entry, num_entries, max_entries))
> +		num_entries = max_entries;
> +
> +	if (should_update_ggtt_with_blit(ggtt) &&
> +	    gen8_ggtt_blit_fixed_pte(ggtt, first_entry,
> +				     num_entries, scratch_pte))
> +		return;
> +
> +	for (i = 0; i < num_entries; i++)
> +		gen8_set_pte(&gtt_base[i], scratch_pte);
> +
> +	ggtt->invalidate(ggtt);
> +}
> +
>  static void gen6_ggtt_insert_page(struct i915_address_space *vm,
>  				  dma_addr_t addr,
>  				  u64 offset,
> @@ -997,6 +1180,12 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>  			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>  	}
>  
> +	if (i915_ggtt_require_blitter(i915)) {
> +		ggtt->vm.scratch_range = gen8_ggtt_scratch_range_blit;
> +		ggtt->vm.insert_page = gen8_ggtt_insert_page_blit;
> +		ggtt->vm.insert_entries = gen8_ggtt_insert_entries_blit;
> +	}
> +
>  	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
>  		ggtt->invalidate = guc_ggtt_invalidate;
>  	else
> -- 
> 2.40.1
