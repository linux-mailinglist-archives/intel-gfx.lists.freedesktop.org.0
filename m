Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB99C8185BD
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 11:55:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 326E010E48F;
	Tue, 19 Dec 2023 10:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE09910E47D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 10:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702983329; x=1734519329;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=0R5gLp1PmBmrcKizpE3h6cq/9cROMYK8JEkXOyrezAU=;
 b=kw/99rt0Bwp8Y5W+be1X/Dqp7gQimQ1xXreuScygkcRBoDRUPN1uhIqq
 jIbxhv3e7jKoKGBstsMATr1/3wOsfPi2rnzrNEx4NffiD7gHVPunenk2A
 /Vkyuw1L/iTVWiiFsp37HVa7rJMH4DbNK/EISFQqvWxcz7k4PeK5Hj7Vr
 rN79oty1VgVz+RZac94jyHzqANtXkve5FxLP6hVbBrEL54KoxQyn/zGDs
 x0rmW2EQf6HtudF8bU8Rhkau3c1A7VfXQML3J8H34k7jpkmL366cqoIFo
 ZP+VgwQLy0XEUyo4iMTUBJ5YvgcLLeSI38ylsthvhBs5JB7utBRgwphRf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="386065742"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="386065742"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 02:55:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="899323107"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="899323107"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.26.238])
 ([10.213.26.238])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 02:55:28 -0800
Message-ID: <02a32166-b71a-4de1-baf2-c50c4f146eca@intel.com>
Date: Tue, 19 Dec 2023 11:55:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/15] drm/i915: s/phys_base/dma_addr/
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-11-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231215105929.29568-11-ville.syrjala@linux.intel.com>
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
> The address we read from the PTE is a dma address, not a physical
> address. Rename the variable to say so.
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej
> ---
>   .../gpu/drm/i915/display/intel_plane_initial.c    | 15 ++++++++-------
>   1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index c72d4cacf631..48b74319f45c 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -61,6 +61,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>   	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
>   	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915)) {
>   		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
> +		dma_addr_t dma_addr;
>   		gen8_pte_t pte;
>   
>   		gte += base / I915_GTT_PAGE_SIZE;
> @@ -72,7 +73,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>   			return NULL;
>   		}
>   
> -		phys_base = pte & GEN12_GGTT_PTE_ADDR_MASK;
> +		dma_addr = pte & GEN12_GGTT_PTE_ADDR_MASK;
>   
>   		if (IS_DGFX(i915))
>   			mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> @@ -88,18 +89,18 @@ initial_plane_vma(struct drm_i915_private *i915,
>   		 * On lmem we don't currently expect this to
>   		 * ever be placed in the stolen portion.
>   		 */
> -		if (phys_base < mem->region.start || phys_base > mem->region.end) {
> +		if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
>   			drm_err(&i915->drm,
> -				"Initial plane programming using invalid range, phys_base=%pa (%s [%pa-%pa])\n",
> -				&phys_base, mem->region.name, &mem->region.start, &mem->region.end);
> +				"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
> +				&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
>   			return NULL;
>   		}
>   
>   		drm_dbg(&i915->drm,
> -			"Using phys_base=%pa, based on initial plane programming\n",
> -			&phys_base);
> +			"Using dma_addr=%pa, based on initial plane programming\n",
> +			&dma_addr);
>   
> -		phys_base -= mem->region.start;
> +		phys_base = dma_addr - mem->region.start;
>   	} else {
>   		phys_base = base;
>   		mem = i915->mm.stolen_region;

