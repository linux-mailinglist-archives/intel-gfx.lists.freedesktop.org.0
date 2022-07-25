Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A1E58012A
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jul 2022 17:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84B67BFB53;
	Mon, 25 Jul 2022 15:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF973BFB45
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jul 2022 15:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658761792; x=1690297792;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=AAipgEEuQzbu64Fb+bfp7PldmT2OfYttrCFZ2vxqxA0=;
 b=YVvzIgpuCiPhnhZKzIxCttGstVN/D/93oGVH5C64gBs/RSp4ntDzuW3t
 rdrSqHdAPHAAXR9QVxX31Z5tOYaBdniUpLejS9zWmQCGuKsQdfIbLxGL6
 +Kt8d8a6EYhcDtovi7dcyu/aNqEiXLaer7QlQ6wup2LnrFnfK1SRaPbWr
 UKOkMnr2XCC/4kCO4ni9HL/HHtPO3e1a7phJXDvuAgSiXp4ARDxbgyadC
 rP22E7of6a7mC+akgkvoMegOdG2qMVguxefnbV9X/Fx4RHJKc3lKEejn4
 ehBHu8BjrdV7MoBCMiksEe4/9F45EFjtG1KG8Loia/S8OxlYfgIuODvIU g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="268112424"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="268112424"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 08:09:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="596702753"
Received: from shortalx-mobl.ger.corp.intel.com (HELO [10.213.217.114])
 ([10.213.217.114])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 08:09:51 -0700
Message-ID: <a6ba07ae-66ac-3906-a9dd-01fae9831577@intel.com>
Date: Mon, 25 Jul 2022 16:09:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220629174350.384910-1-matthew.auld@intel.com>
 <20220629174350.384910-12-matthew.auld@intel.com>
 <27075e36-bf21-063c-0d14-e512f032cf62@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <27075e36-bf21-063c-0d14-e512f032cf62@linux.intel.com>
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

Hi,

On 25/07/2022 15:55, Tvrtko Ursulin wrote:
> 
> Hi Matt,
> 
> On 29/06/2022 18:43, Matthew Auld wrote:
>> Falling back to memcpy/memset shouldn't be allowed if we know we have
>> CCS state to manage using the blitter. Otherwise we are potentially
>> leaving the aux CCS state in an unknown state, which smells like an info
>> leak.
>>
>> Fixes: 48760ffe923a ("drm/i915/gt: Clear compress metadata for 
>> Flat-ccs objects")
> 
> This is marking the patch for 5.19-rc, but it not apply since the code 
> seems a bit different. There is no i915_ttm_memcpy_allowed to start 
> with, which only comes in bfe53be268af ("drm/i915/ttm: handle blitter 
> failure on DG2"), which is for 5.20.
> 
> Do you think a version of this patch for 5.19 is needed and if so could 
> you, or someone in the know, cook one up today or tomorrow at the latest?

It needs almost everything in bfe53be268af to close all the holes, 
AFAIK. But then again this is only for DG2, which is still hidden behind 
the force_probe stuff (I think), so perhaps not strictly needed for 
5.19? What do you think?

> 
> Regards,
> 
> Tvrtko
> 
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Cc: Jordan Justen <jordan.l.justen@intel.com>
>> Cc: Kenneth Graunke <kenneth@whitecape.org>
>> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
>> Cc: Ramalingam C <ramalingam.c@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_object.c   | 26 ++++++++++++++++++++
>>   drivers/gpu/drm/i915/gem/i915_gem_object.h   |  2 ++
>>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 18 --------------
>>   drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c |  3 +++
>>   4 files changed, 31 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> index 642a5d59ce26..ccec4055fde3 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> @@ -717,6 +717,32 @@ bool i915_gem_object_placement_possible(struct 
>> drm_i915_gem_object *obj,
>>       return false;
>>   }
>> +/**
>> + * i915_gem_object_needs_ccs_pages - Check whether the object 
>> requires extra
>> + * pages when placed in system-memory, in order to save and later 
>> restore the
>> + * flat-CCS aux state when the object is moved between local-memory and
>> + * system-memory
>> + * @obj: Pointer to the object
>> + *
>> + * Return: True if the object needs extra ccs pages. False otherwise.
>> + */
>> +bool i915_gem_object_needs_ccs_pages(struct drm_i915_gem_object *obj)
>> +{
>> +    bool lmem_placement = false;
>> +    int i;
>> +
>> +    for (i = 0; i < obj->mm.n_placements; i++) {
>> +        /* Compression is not allowed for the objects with smem 
>> placement */
>> +        if (obj->mm.placements[i]->type == INTEL_MEMORY_SYSTEM)
>> +            return false;
>> +        if (!lmem_placement &&
>> +            obj->mm.placements[i]->type == INTEL_MEMORY_LOCAL)
>> +            lmem_placement = true;
>> +    }
>> +
>> +    return lmem_placement;
>> +}
>> +
>>   void i915_gem_init__objects(struct drm_i915_private *i915)
>>   {
>>       INIT_DELAYED_WORK(&i915->mm.free_work, __i915_gem_free_work);
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h 
>> b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> index 0bf3ee27a2a8..6f0a3ce35567 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> @@ -618,6 +618,8 @@ int i915_gem_object_wait_migration(struct 
>> drm_i915_gem_object *obj,
>>   bool i915_gem_object_placement_possible(struct drm_i915_gem_object 
>> *obj,
>>                       enum intel_memory_type type);
>> +bool i915_gem_object_needs_ccs_pages(struct drm_i915_gem_object *obj);
>> +
>>   int shmem_sg_alloc_table(struct drm_i915_private *i915, struct 
>> sg_table *st,
>>                size_t size, struct intel_memory_region *mr,
>>                struct address_space *mapping,
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> index 098409a33e10..7e1f8b83077f 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> @@ -266,24 +266,6 @@ static const struct i915_refct_sgt_ops 
>> tt_rsgt_ops = {
>>       .release = i915_ttm_tt_release
>>   };
>> -static inline bool
>> -i915_gem_object_needs_ccs_pages(struct drm_i915_gem_object *obj)
>> -{
>> -    bool lmem_placement = false;
>> -    int i;
>> -
>> -    for (i = 0; i < obj->mm.n_placements; i++) {
>> -        /* Compression is not allowed for the objects with smem 
>> placement */
>> -        if (obj->mm.placements[i]->type == INTEL_MEMORY_SYSTEM)
>> -            return false;
>> -        if (!lmem_placement &&
>> -            obj->mm.placements[i]->type == INTEL_MEMORY_LOCAL)
>> -            lmem_placement = true;
>> -    }
>> -
>> -    return lmem_placement;
>> -}
>> -
>>   static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
>>                        uint32_t page_flags)
>>   {
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>> index df14ac81c128..9a7e50534b84 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>> @@ -435,6 +435,9 @@ i915_ttm_memcpy_work_arm(struct 
>> i915_ttm_memcpy_work *work,
>>   static bool i915_ttm_memcpy_allowed(struct ttm_buffer_object *bo,
>>                       struct ttm_resource *dst_mem)
>>   {
>> +    if (i915_gem_object_needs_ccs_pages(i915_ttm_to_gem(bo)))
>> +        return false;
>> +
>>       if (!(i915_ttm_resource_mappable(bo->resource) &&
>>             i915_ttm_resource_mappable(dst_mem)))
>>           return false;
