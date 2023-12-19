Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 658B08185BC
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 11:55:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71D5B10E481;
	Tue, 19 Dec 2023 10:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB24710E49B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 10:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702983304; x=1734519304;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=2hDB+WbsAy0iWpSc9QClzhWexl45uRyulyhnTXdHbZs=;
 b=lMNwB9lDu9r5sQQlBwV5fA6eLiTcNJ7F6rfAM29k9yEMfkfxyeCHAFDn
 /DCcUbiRZfiv2fAyLhjEhTN3nJHZpqZfF32a+U9v6sr4IUPQW8PxWPyuL
 0/65oh1l1okOzb/a/gHXbX6FSya8I6zqmQNB5r7+aWh7p2cqKa8/wK3SF
 uyz/yG0c0gmrDUK8ggd6x+Jw9KBriW8YaOD37w2z9ihkwBlnpr29xaAxO
 ejzqbj6Z2YfvraQ49ZPhGo6z3JFGKN1t2rJ5MBfSLWxkm9u/PLsnYG6yy
 JmcgiG2zeFF3ZXvWiJKQaNN7LAdhTna5jJBzre7kZlNBV1cl2VnxbLPxi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="386065684"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="386065684"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 02:55:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="899323069"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="899323069"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.26.238])
 ([10.213.26.238])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 02:55:03 -0800
Message-ID: <3c8692ea-ca7a-4a1b-8cdc-6128538a3375@intel.com>
Date: Tue, 19 Dec 2023 11:55:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/15] drm/i915: Split the smem and lmem plane readout
 apart
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-12-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231215105929.29568-12-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 15.12.2023 11:59, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Declutter initial_plane_vma() a bit by pulling the lmem and smem
> readout paths into their own functions.
> 
> TODO: the smem path should still be fixed to get and validate
>        the dma address from the pte as well
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

I am not sure about this split, split suggests the paths significantly 
differs, but they differ just by 2 things:
- mem region,
- assumption about 1:1 mapping for older platforms.

Btw I was wondering if wouldn't be good to abstract out pte retrieval, 
as the pattern "ggtt->gsm + offset / I915_GTT_PAGE_SIZE" is present in 
multiple places and depends on hw gen, but maybe it is another patch.

No strong feelings.
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej


Regards
Andrzej




> ---
>   .../drm/i915/display/intel_display_types.h    |   2 +
>   .../drm/i915/display/intel_plane_initial.c    | 145 +++++++++++-------
>   2 files changed, 95 insertions(+), 52 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 341d80c2b9de..d2b0cc754667 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -782,6 +782,8 @@ struct intel_plane_state {
>   
>   struct intel_initial_plane_config {
>   	struct intel_framebuffer *fb;
> +	struct intel_memory_region *mem;
> +	resource_size_t phys_base;
>   	struct i915_vma *vma;
>   	unsigned int tiling;
>   	int size;
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index 48b74319f45c..78bff6181ceb 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -44,6 +44,93 @@ intel_reuse_initial_plane_obj(struct drm_i915_private *i915,
>   	return false;
>   }
>   
> +static bool
> +initial_plane_phys_lmem(struct drm_i915_private *i915,
> +			struct intel_initial_plane_config *plane_config)
> +{
> +	gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
> +	struct intel_memory_region *mem;
> +	dma_addr_t dma_addr;
> +	gen8_pte_t pte;
> +	u32 base;
> +
> +	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> +
> +	gte += base / I915_GTT_PAGE_SIZE;
> +
> +	pte = ioread64(gte);
> +	if (!(pte & GEN12_GGTT_PTE_LM)) {
> +		drm_err(&i915->drm,
> +			"Initial plane programming missing PTE_LM bit\n");
> +		return false;
> +	}
> +
> +	dma_addr = pte & GEN12_GGTT_PTE_ADDR_MASK;
> +
> +	if (IS_DGFX(i915))
> +		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> +	else
> +		mem = i915->mm.stolen_region;
> +	if (!mem) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Initial plane memory region not initialized\n");
> +		return false;
> +	}
> +
> +	/*
> +	 * On lmem we don't currently expect this to
> +	 * ever be placed in the stolen portion.
> +	 */
> +	if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
> +		drm_err(&i915->drm,
> +			"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
> +			&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
> +		return false;
> +	}
> +
> +	drm_dbg(&i915->drm,
> +		"Using dma_addr=%pa, based on initial plane programming\n",
> +		&dma_addr);
> +
> +	plane_config->phys_base = dma_addr - mem->region.start;
> +	plane_config->mem = mem;
> +
> +	return true;
> +}
> +
> +static bool
> +initial_plane_phys_smem(struct drm_i915_private *i915,
> +			struct intel_initial_plane_config *plane_config)
> +{
> +	struct intel_memory_region *mem;
> +	u32 base;
> +
> +	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> +
> +	mem = i915->mm.stolen_region;
> +	if (!mem) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Initial plane memory region not initialized\n");
> +		return false;
> +	}
> +
> +	/* FIXME get and validate the dma_addr from the PTE */
> +	plane_config->phys_base = base;
> +	plane_config->mem = mem;
> +
> +	return true;
> +}
> +
> +static bool
> +initial_plane_phys(struct drm_i915_private *i915,
> +		   struct intel_initial_plane_config *plane_config)
> +{
> +	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915))
> +		return initial_plane_phys_lmem(i915, plane_config);
> +	else
> +		return initial_plane_phys_smem(i915, plane_config);
> +}
> +
>   static struct i915_vma *
>   initial_plane_vma(struct drm_i915_private *i915,
>   		  struct intel_initial_plane_config *plane_config)
> @@ -58,59 +145,13 @@ initial_plane_vma(struct drm_i915_private *i915,
>   	if (plane_config->size == 0)
>   		return NULL;
>   
> +	if (!initial_plane_phys(i915, plane_config))
> +		return NULL;
> +
> +	phys_base = plane_config->phys_base;
> +	mem = plane_config->mem;
> +
>   	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> -	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915)) {
> -		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
> -		dma_addr_t dma_addr;
> -		gen8_pte_t pte;
> -
> -		gte += base / I915_GTT_PAGE_SIZE;
> -
> -		pte = ioread64(gte);
> -		if (!(pte & GEN12_GGTT_PTE_LM)) {
> -			drm_err(&i915->drm,
> -				"Initial plane programming missing PTE_LM bit\n");
> -			return NULL;
> -		}
> -
> -		dma_addr = pte & GEN12_GGTT_PTE_ADDR_MASK;
> -
> -		if (IS_DGFX(i915))
> -			mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> -		else
> -			mem = i915->mm.stolen_region;
> -		if (!mem) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Initial plane memory region not initialized\n");
> -			return NULL;
> -		}
> -
> -		/*
> -		 * On lmem we don't currently expect this to
> -		 * ever be placed in the stolen portion.
> -		 */
> -		if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
> -			drm_err(&i915->drm,
> -				"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
> -				&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
> -			return NULL;
> -		}
> -
> -		drm_dbg(&i915->drm,
> -			"Using dma_addr=%pa, based on initial plane programming\n",
> -			&dma_addr);
> -
> -		phys_base = dma_addr - mem->region.start;
> -	} else {
> -		phys_base = base;
> -		mem = i915->mm.stolen_region;
> -		if (!mem) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Initial plane memory region not initialized\n");
> -			return NULL;
> -		}
> -	}
> -
>   	size = round_up(plane_config->base + plane_config->size,
>   			mem->min_page_size);
>   	size -= base;

