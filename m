Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7D067B629
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 16:44:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9F3D10E114;
	Wed, 25 Jan 2023 15:44:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 141C410E114
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 15:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674661488; x=1706197488;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=nuga8DPgauydqJnlkoZgVJFzqStekg220ZFItcGOxGw=;
 b=f0b56PX1Iu0P0mWghrx+99Lpw4FFfO2sMez+RPfTZeBmudW7pkmxwzkM
 XlkP2Db3Bzg8EVrIJozHveyO8ia9OMddmOuCM984P5SnloaimzBPRZ3Yp
 I+/JoR3wvMLjFc1Wt5ILnjtGk5pNE/iLwVrl7ESe9ZYjcc+LqzjaeMBrQ
 Xj0thh/+QjUQ7DKpul51vWxHp1Q0l/vXrgfy8D99X9/+KY1iCcHgYuqYA
 EIlvSKTO1dFNRkMShXSp1szEr9KqwaTwPF9cKCRZqu7fGY9c+/Xu6logd
 VvDTirsOTWAHFmIbQALQXOHJYaR+0yW+I33GborJVbBl2FsDTAP6O1hRO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="326612631"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="326612631"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 07:44:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="694773182"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="694773182"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.0.174])
 ([10.213.0.174])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 07:44:45 -0800
Message-ID: <be3b337b-3ee2-5223-84aa-4ba81856f0f3@intel.com>
Date: Wed, 25 Jan 2023 16:44:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20230125154017.1118784-1-andrzej.hajda@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230125154017.1118784-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Add selftests for TLB
 invalidation
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ups,

Wrong version sent, please ignore it, will resend in hour correct version.

Regards
Andrzej

On 25.01.2023 16:40, Andrzej Hajda wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
>
> Check that we invalidate the TLB cache, the updated physical addresses
> are immediately visible to the HW, and there is no retention of the old
> physical address for concurrent HW access.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> [ahajda: adjust to upstream driver, v2]
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
> v2:
>      - addressed comments (Tvrtko),
>      - changed pin/sample address calculation,
>      - removed checks for platforms older than 8,
>      - use low ints in MI_DO_COMPARE to be more clear,
>      - continue test if physical addresses have the same uppper 32 bits,
>      - consolidate two calls to pte_tlbinv into one
> ---
>   drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   1 +
>   drivers/gpu/drm/i915/gt/intel_gt.c            |   4 +
>   drivers/gpu/drm/i915/gt/selftest_tlb.c        | 402 ++++++++++++++++++
>   .../drm/i915/selftests/i915_live_selftests.h  |   1 +
>   4 files changed, 408 insertions(+)
>   create mode 100644 drivers/gpu/drm/i915/gt/selftest_tlb.c
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 2af1ae3831df98..e10507fa71ce63 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -394,6 +394,7 @@
>   #define MI_LOAD_URB_MEM         MI_INSTR(0x2C, 0)
>   #define MI_STORE_URB_MEM        MI_INSTR(0x2D, 0)
>   #define MI_CONDITIONAL_BATCH_BUFFER_END MI_INSTR(0x36, 0)
> +#define  MI_DO_COMPARE		REG_BIT(21)
>   
>   #define STATE_BASE_ADDRESS \
>   	((0x3 << 29) | (0x0 << 27) | (0x1 << 24) | (0x1 << 16))
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index f0dbfc434e0773..001a7ec5b86182 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -1205,3 +1205,7 @@ void intel_gt_invalidate_tlb(struct intel_gt *gt, u32 seqno)
>   		mutex_unlock(&gt->tlb.invalidate_lock);
>   	}
>   }
> +
> +#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> +#include "selftest_tlb.c"
> +#endif
> diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> new file mode 100644
> index 00000000000000..5fd20fd0879c0e
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> @@ -0,0 +1,402 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#include "i915_selftest.h"
> +
> +#include "gem/i915_gem_internal.h"
> +#include "gem/i915_gem_region.h"
> +
> +#include "gen8_engine_cs.h"
> +#include "i915_gem_ww.h"
> +#include "intel_engine_regs.h"
> +#include "intel_gpu_commands.h"
> +#include "intel_context.h"
> +#include "intel_gt.h"
> +#include "intel_ring.h"
> +
> +#include "selftests/igt_flush_test.h"
> +#include "selftests/i915_random.h"
> +
> +static void clear_dw(struct i915_vma *vma, u64 addr, u32 val)
> +{
> +	GEM_BUG_ON(addr < i915_vma_offset(vma));
> +	GEM_BUG_ON(addr >= i915_vma_offset(vma) + i915_vma_size(vma));
> +	memset32(page_mask_bits(vma->obj->mm.mapping) +
> +		 (addr - i915_vma_offset(vma)), val, 1);
> +}
> +
> +static int
> +pte_tlbinv(struct intel_context *ce,
> +	   struct i915_vma *va,
> +	   struct i915_vma *vb,
> +	   u64 align,
> +	   void (*tlbinv)(struct i915_address_space *vm, u64 addr, u64 length),
> +	   u64 length,
> +	   struct rnd_state *prng)
> +{
> +	const int use_64b = GRAPHICS_VER(ce->vm->i915) >= 8;
> +	struct drm_i915_gem_object *batch;
> +	struct i915_request *rq;
> +	struct i915_vma *vma;
> +	int retries;
> +	u64 addr;
> +	int err;
> +	u32 *cs;
> +
> +	batch = i915_gem_object_create_internal(ce->vm->i915, 4096);
> +	if (IS_ERR(batch))
> +		return PTR_ERR(batch);
> +
> +	vma = i915_vma_instance(batch, ce->vm, NULL);
> +	if (IS_ERR(vma)) {
> +		err = PTR_ERR(vma);
> +		goto out;
> +	}
> +
> +	err = i915_vma_pin(vma, 0, 0, PIN_USER);
> +	if (err)
> +		goto out;
> +
> +	retries = 5;
> +	do {
> +		addr = igt_random_offset(prng,
> +					 i915_vma_offset(vma),
> +					 /* upper limit for MI_BB_START */
> +					 min(ce->vm->total, BIT_ULL(48)),
> +					 va->size, 4);
> +
> +		err = i915_vma_pin(va,  0, 0, (addr & -align) | PIN_OFFSET_FIXED | PIN_USER);
> +	} while (err == -ENOSPC && --retries);
> +	if (err) {
> +		err = 0;
> +		goto out;
> +	}
> +	GEM_BUG_ON(i915_vma_offset(va) != (addr & -align));
> +	vb->node = va->node; /* overwrites the _same_ PTE  */
> +
> +	if (align == SZ_64K) {
> +		u64 end = addr + va->size;
> +
> +		/*
> +		 * SZ_64K pages on dg1 require that the whole PT be marked
> +		 * containing 64KiB entries. So we make sure that our vma
> +		 * covers the whole PT, despite being randomly aligned to 64KiB
> +		 * and restrict our sampling to the 2MiB PT within where
> +		 * we know that we will be using 64KiB pages.
> +		 */
> +		addr = round_up(addr & -align, SZ_2M);
> +		addr |=	igt_random_offset(prng, 0, end - addr, 4, 4);
> +	}
> +
> +	if (addr - i915_vma_offset(va) >= i915_vma_size(va))
> +		addr = igt_random_offset(prng,
> +					 i915_vma_offset(va),
> +					 i915_vma_offset(va) + i915_vma_size(va),
> +					 4, 4);
> +
> +	pr_info("%s(%s): Sampling %llx, with alignment %llx, using PTE size %x (phys %x, sg %x), invalidate:%llx+%llx\n",
> +		ce->engine->name, va->obj->mm.region->name ?: "smem",
> +		addr, align, va->resource->page_sizes_gtt, va->page_sizes.phys, va->page_sizes.sg,
> +		addr & -length, length);
> +
> +	cs = i915_gem_object_pin_map_unlocked(batch, I915_MAP_WC);
> +	*cs++ = MI_NOOP; /* for later termination */
> +
> +	/* Sample the target to see if we spot an incorrect page */
> +	*cs++ = MI_CONDITIONAL_BATCH_BUFFER_END | MI_DO_COMPARE | (1 + use_64b);
> +	*cs++ = -2; /* break if *addr < -1 */
> +	*cs++ = lower_32_bits(addr);
> +	*cs++ = upper_32_bits(addr);
> +	clear_dw(va, addr, -1);
> +	clear_dw(vb, addr, 0);
> +
> +	/* Keep sampling until we get bored */
> +	*cs++ = MI_BATCH_BUFFER_START | BIT(8) | use_64b;
> +	*cs++ = lower_32_bits(i915_vma_offset(vma));
> +	*cs++ = upper_32_bits(i915_vma_offset(vma));
> +
> +	i915_gem_object_flush_map(batch);
> +
> +	rq = i915_request_create(ce);
> +	if (IS_ERR(rq)) {
> +		err = PTR_ERR(rq);
> +		goto out_va;
> +	}
> +
> +	err = rq->engine->emit_bb_start(rq, i915_vma_offset(vma), 0, 0);
> +	if (err) {
> +		i915_request_add(rq);
> +		goto out_va;
> +	}
> +
> +	i915_request_get(rq);
> +	i915_request_add(rq);
> +
> +	/* Short sleep to sanitycheck the batch is spinning before we begin */
> +	msleep(10);
> +	if (va == vb) {
> +		if (!i915_request_completed(rq)) {
> +			pr_err("Semaphore sanitycheck failed\n");
> +			err = -EIO;
> +		}
> +	} else if (!i915_request_completed(rq)) {
> +		unsigned int pte_flags = 0;
> +
> +		/* Flip the PTE between A and B */
> +		if (i915_gem_object_is_lmem(vb->obj))
> +			pte_flags |= PTE_LM;
> +		ce->vm->insert_entries(ce->vm, vb->resource, 0, pte_flags);
> +
> +		/* Flush the PTE update to concurrent HW */
> +		tlbinv(ce->vm, addr & -length, length);
> +
> +		if (wait_for(i915_request_completed(rq), HZ / 2)) {
> +			pr_err("%s: Request did not complete; the COND_BBE did not read the updated PTE\n",
> +			       ce->engine->name);
> +			err = -EINVAL;
> +		}
> +	} else {
> +		pr_err("Spinner sanitycheck failed\n");
> +		err = -EIO;
> +	}
> +	i915_request_put(rq);
> +
> +	cs = page_mask_bits(batch->mm.mapping);
> +	*cs = MI_BATCH_BUFFER_END;
> +	wmb();
> +
> +out_va:
> +	if (vb != va)
> +		memset(&vb->node, 0, sizeof(vb->node));
> +	i915_vma_unpin(va);
> +	if (i915_vma_unbind(va))
> +		err = -EIO;
> +out:
> +	i915_gem_object_put(batch);
> +	return err;
> +}
> +
> +static struct drm_i915_gem_object *create_lmem(struct intel_gt *gt)
> +{
> +	return i915_gem_object_create_lmem(gt->i915, SZ_1G, I915_BO_ALLOC_CONTIGUOUS);
> +}
> +
> +static struct drm_i915_gem_object *create_smem(struct intel_gt *gt)
> +{
> +	/*
> +	 * SZ_64K pages require covering the whole 2M PT (gen8 to tgl/dg1).
> +	 * While that does not require the whole 2M block to be contiguous
> +	 * it is easier to make it so, since we need that for SZ_2M pagees.
> +	 * Since we randomly offset the start of the vma, we need a 4M object
> +	 * so that there is a 2M range within it is suitable for SZ_64K PTE.
> +	 */
> +	return i915_gem_object_create_internal(gt->i915, SZ_4M);
> +}
> +
> +static int
> +mem_tlbinv(struct intel_gt *gt,
> +	   struct drm_i915_gem_object *(*create_fn)(struct intel_gt *),
> +	   void (*tlbinv)(struct i915_address_space *vm, u64 addr, u64 length))
> +{
> +	struct intel_engine_cs *engine;
> +	struct drm_i915_gem_object *A, *B;
> +	struct i915_ppgtt *ppgtt;
> +	struct i915_vma *va, *vb;
> +	enum intel_engine_id id;
> +	I915_RND_STATE(prng);
> +	LIST_HEAD(discard);
> +	void *vaddr;
> +	int err;
> +
> +	if (GRAPHICS_VER(gt->i915) < 6) /* MI_CONDITIONAL_BB_END & bcs */
> +		return 0;
> +
> +	/*
> +	 * Check that the TLB invalidate is able to revoke an active
> +	 * page. We load a page into a spinning COND_BBE loop and then
> +	 * remap that page to a new physical address. The old address, and
> +	 * so the loop keeps spinning, is retained in the TLB cache until
> +	 * we issue an invalidate.
> +	 */
> +
> +	A = create_fn(gt);
> +	if (IS_ERR(A))
> +		return PTR_ERR(A);
> +
> +	vaddr = i915_gem_object_pin_map_unlocked(A, I915_MAP_WC);
> +	if (IS_ERR(vaddr)) {
> +		err = PTR_ERR(vaddr);
> +		goto out_a;
> +	}
> +
> +	/* Allocate a second physical address significantly different from A */
> +	do {
> +		B = create_fn(gt);
> +		if (IS_ERR(B)) {
> +			err = PTR_ERR(B);
> +			goto out_a;
> +		}
> +
> +		err = i915_gem_object_pin_pages_unlocked(B);
> +		if (err)
> +			goto out_b;
> +
> +		if (upper_32_bits(i915_gem_object_get_dma_address(A, 0)) !=
> +		    upper_32_bits(i915_gem_object_get_dma_address(B, 0)))
> +			break;
> +
> +		list_add(&B->st_link, &discard);
> +	} while (1);
> +
> +	vaddr = i915_gem_object_pin_map_unlocked(B, I915_MAP_WC);
> +	if (IS_ERR(vaddr)) {
> +		err = PTR_ERR(vaddr);
> +		goto out_b;
> +	}
> +
> +	GEM_BUG_ON(A->base.size != B->base.size);
> +	if ((A->mm.page_sizes.phys | B->mm.page_sizes.phys) & (A->base.size - 1))
> +		pr_warn("Failed to allocate contiguous pages for size %zx\n",
> +			A->base.size);
> +
> +	ppgtt = i915_ppgtt_create(gt, 0);
> +	if (IS_ERR(ppgtt)) {
> +		err = PTR_ERR(ppgtt);
> +		goto out_b;
> +	}
> +
> +	va = i915_vma_instance(A, &ppgtt->vm, NULL);
> +	if (IS_ERR(va)) {
> +		err = PTR_ERR(va);
> +		goto out_vm;
> +	}
> +
> +	vb = i915_vma_instance(B, &ppgtt->vm, NULL);
> +	if (IS_ERR(vb)) {
> +		err = PTR_ERR(vb);
> +		goto out_vm;
> +	}
> +	/* manual prep as we overwrite va's GTT range with vb later */
> +	vb->pages = vb->obj->mm.pages;
> +	vb->page_sizes = vb->obj->mm.page_sizes;
> +
> +	err = 0;
> +	for_each_engine(engine, gt, id) {
> +		struct i915_gem_ww_ctx ww;
> +		struct intel_context *ce;
> +		int bit;
> +
> +		ce = intel_context_create(engine);
> +		if (IS_ERR(ce)) {
> +			err = PTR_ERR(ce);
> +			break;
> +		}
> +
> +		i915_vm_put(ce->vm);
> +		ce->vm = i915_vm_get(&ppgtt->vm);
> +
> +		for_i915_gem_ww(&ww, err, true)
> +			err = intel_context_pin_ww(ce, &ww);
> +		if (err == 0) {
> +			for_each_set_bit(bit,
> +					 (unsigned long *)&RUNTIME_INFO(gt->i915)->page_sizes,
> +					 BITS_PER_TYPE(RUNTIME_INFO(gt->i915)->page_sizes)) {
> +				int len;
> +
> +				/* sanitycheck the semaphore wake up */
> +				err = pte_tlbinv(ce, va, va,
> +						 BIT_ULL(bit),
> +						 NULL, SZ_4K,
> +						 &prng);
> +				if (err)
> +					goto err_unpin;
> +
> +				for (len = 2; len <= RUNTIME_INFO(gt->i915)->ppgtt_size; len *= 2) {
> +					err = pte_tlbinv(ce, va, vb,
> +							BIT_ULL(bit),
> +							tlbinv,
> +							BIT_ULL(len),
> +							&prng);
> +					if (err)
> +						goto err_unpin;
> +				}
> +
> +				if (len != RUNTIME_INFO(gt->i915)->ppgtt_size) {
> +					len = RUNTIME_INFO(gt->i915)->ppgtt_size;
> +					err = pte_tlbinv(ce, va, vb,
> +							BIT_ULL(bit),
> +							tlbinv,
> +							BIT_ULL(len),
> +							&prng);
> +					if (err)
> +						goto err_unpin;
> +				}
> +			}
> +err_unpin:
> +			intel_context_unpin(ce);
> +		}
> +
> +		intel_context_put(ce);
> +		if (err)
> +			break;
> +	}
> +
> +	if (igt_flush_test(gt->i915))
> +		err = -EIO;
> +
> +out_vm:
> +	i915_vm_put(&ppgtt->vm);
> +out_b:
> +	i915_gem_object_put(B);
> +out_a:
> +	i915_gem_object_put(A);
> +	list_for_each_entry_safe(A, B, &discard, st_link)
> +		i915_gem_object_put(A);
> +	return err;
> +}
> +
> +static void tlbinv_full(struct i915_address_space *vm, u64 addr, u64 length)
> +{
> +	intel_gt_invalidate_tlb(vm->gt, intel_gt_tlb_seqno(vm->gt) | 1);
> +}
> +
> +static int invalidate_full(void *arg)
> +{
> +	struct intel_gt *gt = arg;
> +	int err;
> +
> +	if (GRAPHICS_VER(gt->i915) < 8)
> +		return 0; /* TLB invalidate not implemented */
> +
> +	err = mem_tlbinv(gt, create_smem, tlbinv_full);
> +	if (err == 0)
> +		err = mem_tlbinv(gt, create_lmem, tlbinv_full);
> +	if (err == -ENODEV || err == -ENXIO)
> +		err = 0;
> +
> +	return err;
> +}
> +
> +int intel_tlb_live_selftests(struct drm_i915_private *i915)
> +{
> +	static const struct i915_subtest tests[] = {
> +		SUBTEST(invalidate_full),
> +	};
> +	struct intel_gt *gt;
> +	unsigned int i;
> +
> +	for_each_gt(gt, i915, i) {
> +		int err;
> +
> +		if (intel_gt_is_wedged(gt))
> +			continue;
> +
> +		err = intel_gt_live_subtests(tests, gt);
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/selftests/i915_live_selftests.h b/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
> index aaf8a380e5c789..5aee6c9a8295ce 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
> +++ b/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
> @@ -25,6 +25,7 @@ selftest(gt_lrc, intel_lrc_live_selftests)
>   selftest(gt_mocs, intel_mocs_live_selftests)
>   selftest(gt_pm, intel_gt_pm_live_selftests)
>   selftest(gt_heartbeat, intel_heartbeat_live_selftests)
> +selftest(gt_tlb, intel_tlb_live_selftests)
>   selftest(requests, i915_request_live_selftests)
>   selftest(migrate, intel_migrate_live_selftests)
>   selftest(active, i915_active_live_selftests)

