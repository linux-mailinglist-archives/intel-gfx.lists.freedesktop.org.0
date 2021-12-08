Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B5246D461
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 14:26:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3CF6EA68;
	Wed,  8 Dec 2021 13:26:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF9CB6EA68;
 Wed,  8 Dec 2021 13:26:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="261904436"
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="261904436"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 05:26:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="479897213"
Received: from sbogar-mobl2.ger.corp.intel.com (HELO [10.249.254.43])
 ([10.249.254.43])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 05:26:13 -0800
Message-ID: <72c6c08a-9580-c7ab-17e6-2e7707eef51c@linux.intel.com>
Date: Wed, 8 Dec 2021 14:26:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
References: <20211207165156.31244-1-ramalingam.c@intel.com>
 <20211207165156.31244-4-ramalingam.c@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211207165156.31244-4-ramalingam.c@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/gtt/xehpsdv: move scratch page
 to system memory
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
Cc: Hellstrom Thomas <thomas.hellstrom@intel.com>, Andi <andi.shyti@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Chris_intel_ID <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/7/21 17:51, Ramalingam C wrote:
> From: Matthew Auld <matthew.auld@intel.com>
>
> On some platforms the hw has dropped support for 4K GTT pages when
> dealing with LMEM, and due to the design of 64K GTT pages in the hw, we
> can only mark the *entire* page-table as operating in 64K GTT mode,
> since the enable bit is still on the pde, and not the pte. And since we
> we
we we
> still need to allow 4K GTT pages for SMEM objects, we can't have a
> "normal" 4K page-table with scratch pointing to LMEM, since that's
> undefined from the hw pov. The simplest solution is to just move the 64K
> scratch page to SMEM on such platforms and call it a day, since that
> should work for all configurations.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>

LGTM.

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>


> ---
>   drivers/gpu/drm/i915/gt/gen6_ppgtt.c      |  1 +
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c      | 23 +++++++++++++++++++++--
>   drivers/gpu/drm/i915/gt/intel_ggtt.c      |  3 +++
>   drivers/gpu/drm/i915/gt/intel_gtt.c       |  2 +-
>   drivers/gpu/drm/i915/gt/intel_gtt.h       |  2 ++
>   drivers/gpu/drm/i915/selftests/mock_gtt.c |  2 ++
>   6 files changed, 30 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> index 4a166d25fe60..c0d149f04949 100644
> --- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> @@ -454,6 +454,7 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
>   	ppgtt->base.vm.cleanup = gen6_ppgtt_cleanup;
>   
>   	ppgtt->base.vm.alloc_pt_dma = alloc_pt_dma;
> +	ppgtt->base.vm.alloc_scratch_dma = alloc_pt_dma;
>   	ppgtt->base.vm.pte_encode = ggtt->vm.pte_encode;
>   
>   	err = gen6_ppgtt_init_scratch(ppgtt);
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index 95c02096a61b..b012c50f7ce7 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -776,10 +776,29 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
>   	 */
>   	ppgtt->vm.has_read_only = !IS_GRAPHICS_VER(gt->i915, 11, 12);
>   
> -	if (HAS_LMEM(gt->i915))
> +	if (HAS_LMEM(gt->i915)) {
>   		ppgtt->vm.alloc_pt_dma = alloc_pt_lmem;
> -	else
> +
> +		/*
> +		 * On some platforms the hw has dropped support for 4K GTT pages
> +		 * when dealing with LMEM, and due to the design of 64K GTT
> +		 * pages in the hw, we can only mark the *entire* page-table as
> +		 * operating in 64K GTT mode, since the enable bit is still on
> +		 * the pde, and not the pte. And since we still need to allow
> +		 * 4K GTT pages for SMEM objects, we can't have a "normal" 4K
> +		 * page-table with scratch pointing to LMEM, since that's
> +		 * undefined from the hw pov. The simplest solution is to just
> +		 * move the 64K scratch page to SMEM on such platforms and call
> +		 * it a day, since that should work for all configurations.
> +		 */
> +		if (HAS_64K_PAGES(gt->i915))
> +			ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
> +		else
> +			ppgtt->vm.alloc_scratch_dma = alloc_pt_lmem;
> +	} else {
>   		ppgtt->vm.alloc_pt_dma = alloc_pt_dma;
> +		ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
> +	}
>   
>   	err = gen8_init_scratch(&ppgtt->vm);
>   	if (err)
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index cbc6d2b1fd9e..d85a1050f4a8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -941,6 +941,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>   		size = gen8_get_total_gtt_size(snb_gmch_ctl);
>   
>   	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
> +	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>   	ggtt->vm.lmem_pt_obj_flags = I915_BO_ALLOC_PM_EARLY;
>   
>   	ggtt->vm.total = (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
> @@ -1094,6 +1095,7 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
>   	ggtt->vm.total = (size / sizeof(gen6_pte_t)) * I915_GTT_PAGE_SIZE;
>   
>   	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
> +	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>   
>   	ggtt->vm.clear_range = nop_clear_range;
>   	if (!HAS_FULL_PPGTT(i915) || intel_scanout_needs_vtd_wa(i915))
> @@ -1146,6 +1148,7 @@ static int i915_gmch_probe(struct i915_ggtt *ggtt)
>   		(struct resource)DEFINE_RES_MEM(gmadr_base, ggtt->mappable_end);
>   
>   	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
> +	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>   
>   	if (needs_idle_maps(i915)) {
>   		drm_notice(&i915->drm,
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 0dd254cb1f69..1428e2b9075a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -301,7 +301,7 @@ int setup_scratch_page(struct i915_address_space *vm)
>   	do {
>   		struct drm_i915_gem_object *obj;
>   
> -		obj = vm->alloc_pt_dma(vm, size);
> +		obj = vm->alloc_scratch_dma(vm, size);
>   		if (IS_ERR(obj))
>   			goto skip;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 51afe66d00f2..15b98321e89a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -268,6 +268,8 @@ struct i915_address_space {
>   
>   	struct drm_i915_gem_object *
>   		(*alloc_pt_dma)(struct i915_address_space *vm, int sz);
> +	struct drm_i915_gem_object *
> +		(*alloc_scratch_dma)(struct i915_address_space *vm, int sz);
>   
>   	u64 (*pte_encode)(dma_addr_t addr,
>   			  enum i915_cache_level level,
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
> index cc047ec594f9..32ca8962d0ab 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
> @@ -78,6 +78,7 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
>   	i915_address_space_init(&ppgtt->vm, VM_CLASS_PPGTT);
>   
>   	ppgtt->vm.alloc_pt_dma = alloc_pt_dma;
> +	ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
>   
>   	ppgtt->vm.clear_range = mock_clear_range;
>   	ppgtt->vm.insert_page = mock_insert_page;
> @@ -118,6 +119,7 @@ void mock_init_ggtt(struct drm_i915_private *i915, struct i915_ggtt *ggtt)
>   	ggtt->vm.total = 4096 * PAGE_SIZE;
>   
>   	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
> +	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>   
>   	ggtt->vm.clear_range = mock_clear_range;
>   	ggtt->vm.insert_page = mock_insert_page;
