Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3EE8185CC
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 11:58:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D4E710E0AE;
	Tue, 19 Dec 2023 10:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDEF310E471
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 10:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702983519; x=1734519519;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Zbzca7ICJqIK9DcqahLZGDH+Ae69UpnnS++iqUQV8Jc=;
 b=Pk/LVIYmy7H05xxdT1dTSaOKJZdCzGtlJdA14p+ceQUuFd5OvnpIAhbQ
 xWpvJ8YFAt6UFiD76xtTVDo3EqJtByTYnMb/KcUYOYsskua9GjxLN2AwU
 uFycy1uGFQBea6y6YaPHJuxH811CjQAr74u7nP5t0uACSlg4RC15idZfI
 U0IagKJPfT3/WOhbXbaks7SJLJDiE9hn9g89qt00/RAG7AYwNg8EOWmvv
 hGZtHsn/Uxh16NScsoEHVPN3bwXbUtag70N1i7dmE3Gp5xS5GPrGBHGng
 NGGspx0o/uavzgEZKPZo/CfhsTh4Leqw1ps30lLq7sYYfw5jQ9HAwBfk0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="481830655"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="481830655"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 02:58:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="779441433"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="779441433"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.26.238])
 ([10.213.26.238])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 02:58:38 -0800
Message-ID: <167fb691-d2e4-4716-ba77-eebd39f6efcf@intel.com>
Date: Tue, 19 Dec 2023 11:58:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/15] drm/i915: Fix MTL initial plane readout
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-10-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231215105929.29568-10-ville.syrjala@linux.intel.com>
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
> MTL stolen memory looks more like local memory, so use the
> (now fixed) lmem path when doing the initial plane readout.
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   .../drm/i915/display/intel_plane_initial.c    | 25 +++++++++++++------
>   1 file changed, 18 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index db594ccf0323..c72d4cacf631 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -59,7 +59,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>   		return NULL;
>   
>   	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> -	if (IS_DGFX(i915)) {
> +	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915)) {
>   		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
>   		gen8_pte_t pte;
>   
> @@ -73,11 +73,20 @@ initial_plane_vma(struct drm_i915_private *i915,
>   		}
>   
>   		phys_base = pte & GEN12_GGTT_PTE_ADDR_MASK;
> -		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> +
> +		if (IS_DGFX(i915))
> +			mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> +		else
> +			mem = i915->mm.stolen_region;
> +		if (!mem) {
> +			drm_dbg_kms(&i915->drm,
> +				    "Initial plane memory region not initialized\n");
> +			return NULL;
> +		}
>   
>   		/*
> -		 * We don't currently expect this to ever be placed in the
> -		 * stolen portion.
> +		 * On lmem we don't currently expect this to
> +		 * ever be placed in the stolen portion.
>   		 */
>   		if (phys_base < mem->region.start || phys_base > mem->region.end) {
>   			drm_err(&i915->drm,
> @@ -94,11 +103,13 @@ initial_plane_vma(struct drm_i915_private *i915,
>   	} else {
>   		phys_base = base;
>   		mem = i915->mm.stolen_region;
> +		if (!mem) {
> +			drm_dbg_kms(&i915->drm,
> +				    "Initial plane memory region not initialized\n");
> +			return NULL;
> +		}

Code duplication suggests, we could try to move this out ifs.
The extra check should be harmless in case of 1:1.

Regards
Andrzej

>   	}
>   
> -	if (!mem)
> -		return NULL;
> -
>   	size = round_up(plane_config->base + plane_config->size,
>   			mem->min_page_size);
>   	size -= base;

