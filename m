Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BDC4A4329
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 12:20:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A948A10E2FD;
	Mon, 31 Jan 2022 11:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2887F10E2FD;
 Mon, 31 Jan 2022 11:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643628002; x=1675164002;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kZxmhKBFiayMDpwuQsw1kd+N+12nVcj2LtcRfCcgqZA=;
 b=hJ808EQw8wXS3cj/8vowujG7lyC/EQL5/uqms8KZgbb5rAS5k4BjzW7/
 drS7Er6/zTLgEmjaPa+pm00WJg/nV4wwCbkt9FgVUdiY898orcyzdg675
 HrraYs1wEfw2mqMPbjghguB9bmnNhPfKQMG8fCDg5bK9M/RTWUOocZJaw
 GQBmYMJn13ssciYuZIOEiKeVPcW+1RdFDgcjUlWIU7enI6aXMlbyPiTgz
 CIbdN9en0txFhBffYXTLfgFPOvxeqeXbbzP8QGZdswjaAbyzfuDPmoltZ
 qJBTJySHmDEEv6yaRAUYWHcrAP3psE8opveHTzu9Te6Dm4tNnjU5tqgTm Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10243"; a="310751556"
X-IronPort-AV: E=Sophos;i="5.88,330,1635231600"; d="scan'208";a="310751556"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 03:20:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,330,1635231600"; d="scan'208";a="537140866"
Received: from jsarha-mobl.ger.corp.intel.com (HELO [10.249.254.108])
 ([10.249.254.108])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 03:19:58 -0800
Message-ID: <326070cc-2e8c-0196-940e-7beb0704cd4f@linux.intel.com>
Date: Mon, 31 Jan 2022 12:19:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Robert Beckett <bob.beckett@collabora.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
References: <20220125193530.3272386-1-bob.beckett@collabora.com>
 <20220125193530.3272386-4-bob.beckett@collabora.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220125193530.3272386-4-bob.beckett@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v5 3/5] drm/i915: support 64K GTT pages for
 discrete cards
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/25/22 20:35, Robert Beckett wrote:
> From: Matthew Auld <matthew.auld@intel.com>
>
> discrete cards optimise 64K GTT pages for local-memory, since everything
> should be allocated at 64K granularity. We say goodbye to sparse
> entries, and instead get a compact 256B page-table for 64K pages,
> which should be more cache friendly. 4K pages for local-memory
> are no longer supported by the HW.
>
> v4: don't return uninitialized err in igt_ppgtt_compact
> Reported-by: kernel test robot <lkp@intel.com>

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>


>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   .../gpu/drm/i915/gem/selftests/huge_pages.c   |  60 ++++++++++
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 108 +++++++++++++++++-
>   drivers/gpu/drm/i915/gt/intel_gtt.h           |   3 +
>   drivers/gpu/drm/i915/gt/intel_ppgtt.c         |   1 +
>   4 files changed, 169 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index f36191ebf964..a7d9bdb85d70 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -1478,6 +1478,65 @@ static int igt_ppgtt_sanity_check(void *arg)
>   	return err;
>   }
>   
> +static int igt_ppgtt_compact(void *arg)
> +{
> +	struct drm_i915_private *i915 = arg;
> +	struct drm_i915_gem_object *obj;
> +	int err;
> +
> +	/*
> +	 * Simple test to catch issues with compact 64K pages -- since the pt is
> +	 * compacted to 256B that gives us 32 entries per pt, however since the
> +	 * backing page for the pt is 4K, any extra entries we might incorrectly
> +	 * write out should be ignored by the HW. If ever hit such a case this
> +	 * test should catch it since some of our writes would land in scratch.
> +	 */
> +
> +	if (!HAS_64K_PAGES(i915)) {
> +		pr_info("device lacks compact 64K page support, skipping\n");
> +		return 0;
> +	}
> +
> +	if (!HAS_LMEM(i915)) {
> +		pr_info("device lacks LMEM support, skipping\n");
> +		return 0;
> +	}
> +
> +	/* We want the range to cover multiple page-table boundaries. */
> +	obj = i915_gem_object_create_lmem(i915, SZ_4M, 0);
> +	if (IS_ERR(obj))
> +		return PTR_ERR(obj);
> +
> +	err = i915_gem_object_pin_pages_unlocked(obj);
> +	if (err)
> +		goto out_put;
> +
> +	if (obj->mm.page_sizes.phys < I915_GTT_PAGE_SIZE_64K) {
> +		pr_info("LMEM compact unable to allocate huge-page(s)\n");
> +		goto out_unpin;
> +	}
> +
> +	/*
> +	 * Disable 2M GTT pages by forcing the page-size to 64K for the GTT
> +	 * insertion.
> +	 */
> +	obj->mm.page_sizes.sg = I915_GTT_PAGE_SIZE_64K;
> +
> +	err = igt_write_huge(i915, obj);
> +	if (err)
> +		pr_err("LMEM compact write-huge failed\n");
> +
> +out_unpin:
> +	i915_gem_object_unpin_pages(obj);
> +out_put:
> +	i915_gem_object_put(obj);
> +
> +	if (err == -ENOMEM)
> +		err = 0;
> +
> +	return err;
> +}
> +
>   static int igt_tmpfs_fallback(void *arg)
>   {
>   	struct drm_i915_private *i915 = arg;
> @@ -1735,6 +1794,7 @@ int i915_gem_huge_page_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(igt_tmpfs_fallback),
>   		SUBTEST(igt_ppgtt_smoke_huge),
>   		SUBTEST(igt_ppgtt_sanity_check),
> +		SUBTEST(igt_ppgtt_compact),
>   	};
>   
>   	if (!HAS_PPGTT(i915)) {
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index c43e724afa9f..62471730266c 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -233,6 +233,8 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
>   						   start, end, lvl);
>   		} else {
>   			unsigned int count;
> +			unsigned int pte = gen8_pd_index(start, 0);
> +			unsigned int num_ptes;
>   			u64 *vaddr;
>   
>   			count = gen8_pt_count(start, end);
> @@ -242,10 +244,18 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
>   			    atomic_read(&pt->used));
>   			GEM_BUG_ON(!count || count >= atomic_read(&pt->used));
>   
> +			num_ptes = count;
> +			if (pt->is_compact) {
> +				GEM_BUG_ON(num_ptes % 16);
> +				GEM_BUG_ON(pte % 16);
> +				num_ptes /= 16;
> +				pte /= 16;
> +			}
> +
>   			vaddr = px_vaddr(pt);
> -			memset64(vaddr + gen8_pd_index(start, 0),
> +			memset64(vaddr + pte,
>   				 vm->scratch[0]->encode,
> -				 count);
> +				 num_ptes);
>   
>   			atomic_sub(count, &pt->used);
>   			start += count;
> @@ -453,6 +463,95 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
>   	return idx;
>   }
>   
> +static void
> +xehpsdv_ppgtt_insert_huge(struct i915_address_space *vm,
> +			  struct i915_vma_resource *vma_res,
> +			  struct sgt_dma *iter,
> +			  enum i915_cache_level cache_level,
> +			  u32 flags)
> +{
> +	const gen8_pte_t pte_encode = vm->pte_encode(0, cache_level, flags);
> +	unsigned int rem = sg_dma_len(iter->sg);
> +	u64 start = vma_res->start;
> +
> +	GEM_BUG_ON(!i915_vm_is_4lvl(vm));
> +
> +	do {
> +		struct i915_page_directory * const pdp =
> +			gen8_pdp_for_page_address(vm, start);
> +		struct i915_page_directory * const pd =
> +			i915_pd_entry(pdp, __gen8_pte_index(start, 2));
> +		struct i915_page_table *pt =
> +			i915_pt_entry(pd, __gen8_pte_index(start, 1));
> +		gen8_pte_t encode = pte_encode;
> +		unsigned int page_size;
> +		gen8_pte_t *vaddr;
> +		u16 index, max;
> +
> +		max = I915_PDES;
> +
> +		if (vma_res->bi.page_sizes.sg & I915_GTT_PAGE_SIZE_2M &&
> +		    IS_ALIGNED(iter->dma, I915_GTT_PAGE_SIZE_2M) &&
> +		    rem >= I915_GTT_PAGE_SIZE_2M &&
> +		    !__gen8_pte_index(start, 0)) {
> +			index = __gen8_pte_index(start, 1);
> +			encode |= GEN8_PDE_PS_2M;
> +			page_size = I915_GTT_PAGE_SIZE_2M;
> +
> +			vaddr = px_vaddr(pd);
> +		} else {
> +			if (encode & GEN12_PPGTT_PTE_LM) {
> +				GEM_BUG_ON(__gen8_pte_index(start, 0) % 16);
> +				GEM_BUG_ON(rem < I915_GTT_PAGE_SIZE_64K);
> +				GEM_BUG_ON(!IS_ALIGNED(iter->dma,
> +						       I915_GTT_PAGE_SIZE_64K));
> +
> +				index = __gen8_pte_index(start, 0) / 16;
> +				page_size = I915_GTT_PAGE_SIZE_64K;
> +
> +				max /= 16;
> +
> +				vaddr = px_vaddr(pd);
> +				vaddr[__gen8_pte_index(start, 1)] |= GEN12_PDE_64K;
> +
> +				pt->is_compact = true;
> +			} else {
> +				GEM_BUG_ON(pt->is_compact);
> +				index =  __gen8_pte_index(start, 0);
> +				page_size = I915_GTT_PAGE_SIZE;
> +			}
> +
> +			vaddr = px_vaddr(pt);
> +		}
> +
> +		do {
> +			GEM_BUG_ON(rem < page_size);
> +			vaddr[index++] = encode | iter->dma;
> +
> +			start += page_size;
> +			iter->dma += page_size;
> +			rem -= page_size;
> +			if (iter->dma >= iter->max) {
> +				iter->sg = __sg_next(iter->sg);
> +				if (!iter->sg)
> +					break;
> +
> +				rem = sg_dma_len(iter->sg);
> +				if (!rem)
> +					break;
> +
> +				iter->dma = sg_dma_address(iter->sg);
> +				iter->max = iter->dma + rem;
> +
> +				if (unlikely(!IS_ALIGNED(iter->dma, page_size)))
> +					break;
> +			}
> +		} while (rem >= page_size && index < max);
> +
> +		vma_res->page_sizes_gtt |= page_size;
> +	} while (iter->sg && sg_dma_len(iter->sg));
> +}
> +
>   static void gen8_ppgtt_insert_huge(struct i915_address_space *vm,
>   				   struct i915_vma_resource *vma_res,
>   				   struct sgt_dma *iter,
> @@ -586,7 +685,10 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
>   	struct sgt_dma iter = sgt_dma(vma_res);
>   
>   	if (vma_res->bi.page_sizes.sg > I915_GTT_PAGE_SIZE) {
> -		gen8_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
> +		if (HAS_64K_PAGES(vm->i915))
> +			xehpsdv_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
> +		else
> +			gen8_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
>   	} else  {
>   		u64 idx = vma_res->start >> GEN8_PTE_SHIFT;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index ba9f040f8606..e6ce0be6d484 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -92,6 +92,8 @@ typedef u64 gen8_pte_t;
>   
>   #define GEN12_GGTT_PTE_LM	BIT_ULL(1)
>   
> +#define GEN12_PDE_64K BIT(6)
> +
>   /*
>    * Cacheability Control is a 4-bit value. The low three bits are stored in bits
>    * 3:1 of the PTE, while the fourth bit is stored in bit 11 of the PTE.
> @@ -160,6 +162,7 @@ struct i915_page_table {
>   		atomic_t used;
>   		struct i915_page_table *stash;
>   	};
> +	bool is_compact;
>   };
>   
>   struct i915_page_directory {
> diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> index 48e6e2f87700..043652dc6892 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> @@ -26,6 +26,7 @@ struct i915_page_table *alloc_pt(struct i915_address_space *vm)
>   		return ERR_PTR(-ENOMEM);
>   	}
>   
> +	pt->is_compact = false;
>   	atomic_set(&pt->used, 0);
>   	return pt;
>   }
