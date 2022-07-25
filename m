Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07570580110
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jul 2022 16:56:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6304314B222;
	Mon, 25 Jul 2022 14:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2D1A10F7E9
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jul 2022 14:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658760949; x=1690296949;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=EzDLDl+pgLXd6kBrCEpSMHgl7LiE3dZkAAZV0pz8Jt4=;
 b=EtorzyKd6sFRNFz0mHN8/BW98W9Gc7RaenVWrY2AF7iv+jA6O0+fup6s
 Jom8DZYOxM1k0XGvQGIc0YZO4vp6gtFPpoDcITjyaVuFwmd4WmnnYCbxM
 HhZ5877KO/LRNU033fglXJE33JYpoNrW3NvFO9zjWL0M0I/x02HK8f3gB
 hlHSnWgXVcqSBsnIwtuydkyLOkqh/5hEAJMB2o0Qp/X2ZqzaSPezWrvz7
 RI5CpqGtXgEPvm1lFtF4LI1XCi3L1yeTr98aUZ46m2Kwhq34jFHjhEevP
 jltb1Pc92xo4lTgofkkow2ynE6s0l0hagiNQ0S2XpWc3295ru/Z3gAacb g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="374019956"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="374019956"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 07:55:48 -0700
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="575081200"
Received: from ngobrien-mobl1.ger.corp.intel.com (HELO [10.213.204.5])
 ([10.213.204.5])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 07:55:47 -0700
Message-ID: <27075e36-bf21-063c-0d14-e512f032cf62@linux.intel.com>
Date: Mon, 25 Jul 2022 15:55:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220629174350.384910-1-matthew.auld@intel.com>
 <20220629174350.384910-12-matthew.auld@intel.com>
X-Priority: 1 (Highest)
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220629174350.384910-12-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [CI v4 12/13] drm/i915/ttm: disallow CPU fallback
 mode for ccs pages
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


Hi Matt,

On 29/06/2022 18:43, Matthew Auld wrote:
> Falling back to memcpy/memset shouldn't be allowed if we know we have
> CCS state to manage using the blitter. Otherwise we are potentially
> leaving the aux CCS state in an unknown state, which smells like an info
> leak.
> 
> Fixes: 48760ffe923a ("drm/i915/gt: Clear compress metadata for Flat-ccs objects")

This is marking the patch for 5.19-rc, but it not apply since the code 
seems a bit different. There is no i915_ttm_memcpy_allowed to start 
with, which only comes in bfe53be268af ("drm/i915/ttm: handle blitter 
failure on DG2"), which is for 5.20.

Do you think a version of this patch for 5.19 is needed and if so could 
you, or someone in the know, cook one up today or tomorrow at the latest?

Regards,

Tvrtko

> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Jordan Justen <jordan.l.justen@intel.com>
> Cc: Kenneth Graunke <kenneth@whitecape.org>
> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_object.c   | 26 ++++++++++++++++++++
>   drivers/gpu/drm/i915/gem/i915_gem_object.h   |  2 ++
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 18 --------------
>   drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c |  3 +++
>   4 files changed, 31 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 642a5d59ce26..ccec4055fde3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -717,6 +717,32 @@ bool i915_gem_object_placement_possible(struct drm_i915_gem_object *obj,
>   	return false;
>   }
>   
> +/**
> + * i915_gem_object_needs_ccs_pages - Check whether the object requires extra
> + * pages when placed in system-memory, in order to save and later restore the
> + * flat-CCS aux state when the object is moved between local-memory and
> + * system-memory
> + * @obj: Pointer to the object
> + *
> + * Return: True if the object needs extra ccs pages. False otherwise.
> + */
> +bool i915_gem_object_needs_ccs_pages(struct drm_i915_gem_object *obj)
> +{
> +	bool lmem_placement = false;
> +	int i;
> +
> +	for (i = 0; i < obj->mm.n_placements; i++) {
> +		/* Compression is not allowed for the objects with smem placement */
> +		if (obj->mm.placements[i]->type == INTEL_MEMORY_SYSTEM)
> +			return false;
> +		if (!lmem_placement &&
> +		    obj->mm.placements[i]->type == INTEL_MEMORY_LOCAL)
> +			lmem_placement = true;
> +	}
> +
> +	return lmem_placement;
> +}
> +
>   void i915_gem_init__objects(struct drm_i915_private *i915)
>   {
>   	INIT_DELAYED_WORK(&i915->mm.free_work, __i915_gem_free_work);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 0bf3ee27a2a8..6f0a3ce35567 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -618,6 +618,8 @@ int i915_gem_object_wait_migration(struct drm_i915_gem_object *obj,
>   bool i915_gem_object_placement_possible(struct drm_i915_gem_object *obj,
>   					enum intel_memory_type type);
>   
> +bool i915_gem_object_needs_ccs_pages(struct drm_i915_gem_object *obj);
> +
>   int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
>   			 size_t size, struct intel_memory_region *mr,
>   			 struct address_space *mapping,
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 098409a33e10..7e1f8b83077f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -266,24 +266,6 @@ static const struct i915_refct_sgt_ops tt_rsgt_ops = {
>   	.release = i915_ttm_tt_release
>   };
>   
> -static inline bool
> -i915_gem_object_needs_ccs_pages(struct drm_i915_gem_object *obj)
> -{
> -	bool lmem_placement = false;
> -	int i;
> -
> -	for (i = 0; i < obj->mm.n_placements; i++) {
> -		/* Compression is not allowed for the objects with smem placement */
> -		if (obj->mm.placements[i]->type == INTEL_MEMORY_SYSTEM)
> -			return false;
> -		if (!lmem_placement &&
> -		    obj->mm.placements[i]->type == INTEL_MEMORY_LOCAL)
> -			lmem_placement = true;
> -	}
> -
> -	return lmem_placement;
> -}
> -
>   static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
>   					 uint32_t page_flags)
>   {
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> index df14ac81c128..9a7e50534b84 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> @@ -435,6 +435,9 @@ i915_ttm_memcpy_work_arm(struct i915_ttm_memcpy_work *work,
>   static bool i915_ttm_memcpy_allowed(struct ttm_buffer_object *bo,
>   				    struct ttm_resource *dst_mem)
>   {
> +	if (i915_gem_object_needs_ccs_pages(i915_ttm_to_gem(bo)))
> +		return false;
> +
>   	if (!(i915_ttm_resource_mappable(bo->resource) &&
>   	      i915_ttm_resource_mappable(dst_mem)))
>   		return false;
