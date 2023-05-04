Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D19EC6F7858
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 23:51:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A72D410E1D4;
	Thu,  4 May 2023 21:51:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B30710E1D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 21:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683237070; x=1714773070;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=CruGTFSI3BeXs86Lo4xjrSOYaOchf3Qq8SYEdHMwtJA=;
 b=ZCH3rWe/kVD1rfBS6gU8TxhLGDFTU1tER79klejTyaQ7YCxjUhhWpCWB
 RZNLUYX0WEy6beyg7EZdwwxEZ1c6WJ4XgbyZhq27DsUayDLa8hbOgYP6R
 1C9PfyquBQHyTp4bfPPx8u6+uzaZZTFJNwEglkFij/xEuYfZywZQeh8hM
 45MlbcHU+p53zciESouW9gMuMDF9OwukNzQYB0i6TtogzxfGKmx6B/Nfb
 +TMAl3dWyva7U2b/qTUI2Pz3kcO69H+XSiDrUn6HLhjocD8RDiQgTm2kC
 FF4ngZ+/E54aLE14DFrKha+PmMWeuhwK3SRgpmMQLSXXAn1JFfnYVuV7Q g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="352092474"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="352092474"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 14:51:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="1027139905"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="1027139905"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost) ([10.252.60.74])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 14:51:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
In-Reply-To: <ZFPHAOmVp3NO6ef1@rdvivi-mobl4>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1683041799.git.jani.nikula@intel.com>
 <89ab5cf179566c429383cc57db746038f75cba0d.1683041799.git.jani.nikula@intel.com>
 <ZFJsFsBPp/HS8I0k@rdvivi-mobl4> <87a5ykzb2u.fsf@intel.com>
 <ZFPHAOmVp3NO6ef1@rdvivi-mobl4>
Date: Fri, 05 May 2023 00:51:04 +0300
Message-ID: <877ctnzrxz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 05/24] drm/i915/vma: fix struct
 i915_vma_bindinfo kernel-doc
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 04 May 2023, Rodrigo Vivi <rodrigo.vivi@kernel.org> wrote:
> On Thu, May 04, 2023 at 12:43:05PM +0300, Jani Nikula wrote:
>> On Wed, 03 May 2023, Rodrigo Vivi <rodrigo.vivi@kernel.org> wrote:
>> > On Tue, May 02, 2023 at 06:37:22PM +0300, Jani Nikula wrote:
>> >> You can't document both a sub-struct type and a struct member at the
>> >> same time. Separate them.
>> >
>> > another way would be to kill the 'i915_vma_bindinfo' name entirely and
>> > document only as '@bi:' and then move the individual documentations near
>> > their definitions.
>> 
>> I don't think that will work, because AFAIK kernel-doc does not descend
>> into struct members recursively.
>
> It does:
>
> 'In-line member documentation comments' definition of:
> Documentation/doc-guide/kernel-doc.rst

Regardless of what that says, I can't make it work. :(

$ scripts/kernel-doc -function i915_vma_resource drivers/gpu/drm/i915/i915_vma_resource.h

only documents ``bi`` but not the sub-struct. Regardless of whether I
refer to the members as @bi.pages: or @pages: etc.

Let me know if and how you can make it work.

BR,
Jani.

>
>> 
>> You can either declare and document the sub-structs as separate types
>> (the patch at hand), or you can document sub-struct members directly
>> from the embedding struct as shown below. I don't think the latter is
>> very nice.
>
> what I had in mind was something more like:
>
>         /**
> -        * struct i915_vma_bindinfo - Information needed for async bind
> -        * only but that can be dropped after the bind has taken place.
> -        * Consider making this a separate argument to the bind_vma
> -        * op, coalescing with other arguments like vm, stash, cache_level
> -        * and flags
> -        * @pages: The pages sg-table.
> -        * @page_sizes: Page sizes of the pages.
> -        * @pages_rsgt: Refcounted sg-table when delayed object destruction
> -        * is supported. May be NULL.
> -        * @readonly: Whether the vma should be bound read-only.
> -        * @lmem: Whether the vma points to lmem.
> +        * @bi: Information needed for async bind only but that can be dropped
> +        *      after the bind has taken place.
> +        *      Consider making this a separate argument to the bind_vma
> +        *      op, coalescing with other arguments like vm, stash, cache_level
> +        *      and flags
>          */
> -       struct i915_vma_bindinfo {
> +       struct {
> +               /** @pages: The pages sg-table. */
>                 struct sg_table *pages;
> +               /** @page_sizes: Page sizes of the pages. */
>                 struct i915_page_sizes page_sizes;
> +               /**
> +                * @pages_rsgt: Refcounted sg-table when delayed object
> +                *              destruction is supported. May be NULL.
> +                */
>                 struct i915_refct_sgt *pages_rsgt;
> +               /** @readonly: Whether the vma should be bound read-only. */
>                 bool readonly:1;
> +               /** @lmem: Whether the vma points to lmem. */
>                 bool lmem:1;
>         } bi;
>
>
> But let's not block the progress of the much needed fixes. It's your call:
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
>> 
>> BR,
>> Jani.
>> 
>> 
>> index 2053c037dbfb..ee767cc4de43 100644
>> --- a/drivers/gpu/drm/i915/i915_vma_resource.h
>> +++ b/drivers/gpu/drm/i915/i915_vma_resource.h
>> @@ -48,6 +48,12 @@ struct i915_page_sizes {
>>   * @rb: Rb node for the vm's pending unbind interval tree.
>>   * @__subtree_last: Interval tree private member.
>>   * @wakeref: wakeref.
>> + * @bi.pages: The pages sg-table.
>> + * @bi.page_sizes: Page sizes of the pages.
>> + * @bi.pages_rsgt: Refcounted sg-table when delayed object destruction
>> + * is supported. May be NULL.
>> + * @bi.readonly: Whether the vma should be bound read-only.
>> + * @bi.lmem: Whether the vma points to lmem.
>>   * @vm: non-refcounted pointer to the vm. This is for internal use only and
>>   * this member is cleared after vm_resource unbind.
>>   * @mr: The memory region of the object pointed to by the vma.
>> @@ -89,17 +95,11 @@ struct i915_vma_resource {
>>         intel_wakeref_t wakeref;
>>  
>>         /**
>> -        * struct i915_vma_bindinfo - Information needed for async bind
>> -        * only but that can be dropped after the bind has taken place.
>> -        * Consider making this a separate argument to the bind_vma
>> -        * op, coalescing with other arguments like vm, stash, cache_level
>> -        * and flags
>> -        * @pages: The pages sg-table.
>> -        * @page_sizes: Page sizes of the pages.
>> -        * @pages_rsgt: Refcounted sg-table when delayed object destruction
>> -        * is supported. May be NULL.
>> -        * @readonly: Whether the vma should be bound read-only.
>> -        * @lmem: Whether the vma points to lmem.
>> +        * @bi: Information needed for async bind only but that can be dropped
>> +        * after the bind has taken place.
>> +        *
>> +        * Consider making this a separate argument to the bind_vma op,
>> +        * coalescing with other arguments like vm, stash, cache_level and flags
>>          */
>>         struct i915_vma_bindinfo {
>>                 struct sg_table *pages;
>> 
>> 
>> >
>> >> 
>> >> drivers/gpu/drm/i915/i915_vma_resource.h:91: warning: Incorrect use of kernel-doc format:          * struct i915_vma_bindinfo - Information needed for async bind
>> >> drivers/gpu/drm/i915/i915_vma_resource.h:129: warning: Function parameter or member 'bi' not described in 'i915_vma_resource'
>> >> 
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/i915_vma_resource.h | 45 ++++++++++++++----------
>> >>  1 file changed, 27 insertions(+), 18 deletions(-)
>> >> 
>> >> diff --git a/drivers/gpu/drm/i915/i915_vma_resource.h b/drivers/gpu/drm/i915/i915_vma_resource.h
>> >> index 2053c037dbfb..ca2b0f7f59bc 100644
>> >> --- a/drivers/gpu/drm/i915/i915_vma_resource.h
>> >> +++ b/drivers/gpu/drm/i915/i915_vma_resource.h
>> >> @@ -33,6 +33,27 @@ struct i915_page_sizes {
>> >>  	unsigned int sg;
>> >>  };
>> >>  
>> >> +/**
>> >> + * struct i915_vma_bindinfo - Information needed for async bind
>> >> + * only but that can be dropped after the bind has taken place.
>> >> + * Consider making this a separate argument to the bind_vma
>> >> + * op, coalescing with other arguments like vm, stash, cache_level
>> >> + * and flags
>> >> + * @pages: The pages sg-table.
>> >> + * @page_sizes: Page sizes of the pages.
>> >> + * @pages_rsgt: Refcounted sg-table when delayed object destruction
>> >> + * is supported. May be NULL.
>> >> + * @readonly: Whether the vma should be bound read-only.
>> >> + * @lmem: Whether the vma points to lmem.
>> >> + */
>> >> +struct i915_vma_bindinfo {
>> >> +	struct sg_table *pages;
>> >> +	struct i915_page_sizes page_sizes;
>> >> +	struct i915_refct_sgt *pages_rsgt;
>> >> +	bool readonly:1;
>> >> +	bool lmem:1;
>> >
>> > btw, I believe we should move all the individual docs near to its
>> > declarations. easier to forget updating the documentation when updating
>> > fields here.
>> >
>> >> +};
>> >> +
>> >>  /**
>> >>   * struct i915_vma_resource - Snapshotted unbind information.
>> >>   * @unbind_fence: Fence to mark unbinding complete. Note that this fence
>> >> @@ -89,25 +110,13 @@ struct i915_vma_resource {
>> >>  	intel_wakeref_t wakeref;
>> >>  
>> >>  	/**
>> >> -	 * struct i915_vma_bindinfo - Information needed for async bind
>> >> -	 * only but that can be dropped after the bind has taken place.
>> >> -	 * Consider making this a separate argument to the bind_vma
>> >> -	 * op, coalescing with other arguments like vm, stash, cache_level
>> >> -	 * and flags
>> >> -	 * @pages: The pages sg-table.
>> >> -	 * @page_sizes: Page sizes of the pages.
>> >> -	 * @pages_rsgt: Refcounted sg-table when delayed object destruction
>> >> -	 * is supported. May be NULL.
>> >> -	 * @readonly: Whether the vma should be bound read-only.
>> >> -	 * @lmem: Whether the vma points to lmem.
>> >> +	 * @bi: Information needed for async bind only but that can be dropped
>> >> +	 * after the bind has taken place.
>> >> +	 *
>> >> +	 * Consider making this a separate argument to the bind_vma op,
>> >> +	 * coalescing with other arguments like vm, stash, cache_level and flags
>> >>  	 */
>> >> -	struct i915_vma_bindinfo {
>> >> -		struct sg_table *pages;
>> >> -		struct i915_page_sizes page_sizes;
>> >> -		struct i915_refct_sgt *pages_rsgt;
>> >> -		bool readonly:1;
>> >> -		bool lmem:1;
>> >> -	} bi;
>> >> +	struct i915_vma_bindinfo bi;
>> >>  
>> >>  #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
>> >>  	struct intel_memory_region *mr;
>> >> -- 
>> >> 2.39.2
>> >> 
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
