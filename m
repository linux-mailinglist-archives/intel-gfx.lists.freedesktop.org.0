Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DC269F1D9
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 10:36:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E701610E434;
	Wed, 22 Feb 2023 09:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9C510E434
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 09:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677058560; x=1708594560;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kZkQHFYb5WP0AkIqhfK6YhV0ZTfLzZIYOkY6Qnq1Ft8=;
 b=LOuExEFGtBiv4oj8cCMXAePK4CI/UFFg3ensqlKm7H8oRsQmQxVcH5g7
 eqHZEG3bSFHa5xz3pAd5agmE63zTiPXahIZU4lAXWYgCkjJZrQ1lURcYy
 WkwJ7VzgEhMhQ9UIim1gw43Iv9MhCp/Vdsd5xSronQ2uIQ/m13P+qV/+9
 9OnQcExoM70XTWmNZxjtc7SzJvk8+ka/9YtANLvwLATFoKAKPn5Q+FWzl
 JGPEFxucyxiEciGooiJPj0VONlDjxPugsBZRPP5/5GzXrikA8WCnUnUKk
 ujZmtkAPyd3UUr9J1a4po2bxaLdDl2kSgD6bmRuRa/thJI+OrBjhFfxvj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="331547727"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="331547727"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 01:35:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="704390450"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="704390450"
Received: from sineadmc-mobl2.ger.corp.intel.com (HELO [10.252.9.91])
 ([10.252.9.91])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 01:35:58 -0800
Message-ID: <5b3a6d1d-06cb-4de2-951a-80a88c2f3f5e@intel.com>
Date: Wed, 22 Feb 2023 09:35:55 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.7.1
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
References: <20230217191813.1104342-1-jonathan.cavitt@intel.com>
 <0f4df8e9-1cb9-b1a4-284d-67fc75b74c2e@intel.com>
 <CH0PR11MB5444727E7C9F280059073C1EE5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
 <b371944c-779d-cd9e-e9ba-6c7b8a6bc0bb@intel.com>
 <CH0PR11MB544409A98B8A5F6E8E087DF4E5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
 <548e3921-8488-afc1-aeae-6ff526e16e51@intel.com>
 <CH0PR11MB5444566E57C1FBA29F57DB5AE5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <CH0PR11MB5444566E57C1FBA29F57DB5AE5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] gen8_ppgtt: Use correct huge page manager
 for MTL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21/02/2023 18:34, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Auld, Matthew <matthew.auld@intel.com>
> Sent: Tuesday, February 21, 2023 9:46 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Cc: Dutt, Sudeep <sudeep.dutt@intel.com>; Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] gen8_ppgtt: Use correct huge page manager for MTL
>>
>> On 21/02/2023 17:14, Cavitt, Jonathan wrote:
>>> -----Original Message-----
>>> From: Auld, Matthew <matthew.auld@intel.com>
>>> Sent: Tuesday, February 21, 2023 8:33 AM
>>> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
>>> Cc: Dutt, Sudeep <sudeep.dutt@intel.com>; Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>; intel-gfx@lists.freedesktop.org
>>> Subject: Re: [PATCH] gen8_ppgtt: Use correct huge page manager for MTL
>>>>
>>>> On 21/02/2023 16:28, Cavitt, Jonathan wrote:
>>>>> -----Original Message-----
>>>>> From: Auld, Matthew <matthew.auld@intel.com>
>>>>> Sent: Tuesday, February 21, 2023 8:06 AM
>>>>> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
>>>>> Cc: Dutt, Sudeep <sudeep.dutt@intel.com>; Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
>>>>> Subject: Re: [PATCH] gen8_ppgtt: Use correct huge page manager for MTL
>>>>>>
>>>>>> On 17/02/2023 19:18, Jonathan Cavitt wrote:
>>>>>>> MTL currently uses gen8_ppgtt_insert_huge when managing huge pages.  This is because
>>>>>>> MTL reports as not supporting 64K pages, or more accurately, the system that reports
>>>>>>> whether a platform has 64K pages reports false for MTL.  This is only half correct,
>>>>>>> as the 64K page support reporting system only cares about 64K page support for LMEM,
>>>>>>> which MTL doesn't have.
>>>>>>>
>>>>>>> MTL should be using xehpsdv_ppgtt_insert_huge.  However, simply changing over to
>>>>>>> using that manager doesn't resolve the issue because MTL is expecting the virtual
>>>>>>> address space for the page table to be flushed after initialization, so we must also
>>>>>>> add a flush statement there.
>>>>>>>
>>>>>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>>>>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>>>>>>
>>>>>> Although it looks like the hugepage mock tests are failing with this. I
>>>>>> assume the mock device just uses some "max" gen version or so, which now
>>>>>> triggers this path. Any ideas for that?
>>>>>
>>>>> With this patch applied, multiple calls to the hugepages live selftest result in a kernel panic.
>>>>> If the mock tests are run immediately after the live ones, that would explain this behavior.
>>>>> I was informed when this was initially debugged that the error was a known IOMMU issue
>>>>> rather than some novel regression, though it's hard to tell if that was just hopeful optimism
>>>>> or not at this point.
>>>>
>>>> In the test results we now get:
>>>>
>>>> 6> [183.420316] i915: Running
>>>> i915_gem_huge_page_mock_selftests/igt_mock_exhaust_device_supported_pages
>>>> <6> [183.436978] i915: Running
>>>> i915_gem_huge_page_mock_selftests/igt_mock_memory_region_huge_pages
>>>> <6> [183.445777] i915: Running
>>>> i915_gem_huge_page_mock_selftests/igt_mock_ppgtt_misaligned_dma
>>>> <6> [183.904531] i915: Running
>>>> i915_gem_huge_page_mock_selftests/igt_mock_ppgtt_huge_fill
>>>> <3> [183.912658] gtt=69632, expected=4096, size=69632, single=yes
>>>> <3> [183.912784] i915/i915_gem_huge_page_mock_selftests:
>>>> igt_mock_ppgtt_huge_fill failed with error -22
>>>
>>>                   if (expected_gtt & I915_GTT_PAGE_SIZE_4K)
>>>                           expected_gtt &= ~I915_GTT_PAGE_SIZE_64K;
>>>
>>> I don't know why we're doing that to expected_gtt, but that seems to be the cause of the
>>> problem in this case.
>>
>> I think it's due to the older huge page model, where 64K requires the
>> entire page-table to all use 64K pages underneath (pde level hint), so
>> if we see 4K in there somewhere then we don't expect to get back 64K
>> GTT. But on newer HW we now have have pte level hint, so I think the
>> above can just be removed with this patch, since that's what the mock
>> device now uses.
> 
> Seems right.  I guess that would be... what?  Is it:
> A. Platform specific?  I.E. we need s generation check in the selftest to proceed, such as the following:
> 
>                   if (expected_gtt & I915_GTT_PAGE_SIZE_4K && GRAPHICS_VER(i915) >= 12)
> 
> B. Systems specific?  I.E. we have a special check for this functionality such as:
> 
>                   if (expected_gtt & I915_GTT_PAGE_SIZE_4K && has_pte_level_hint(i915))
> 
> C. The new norm.  I.E. we can just remove this line from the test and everything will work out fine.

The mock device will always use the max graphics version:

RUNTIME_INFO(i915)->graphics.ip.ver = -1;

So I think option C.

> 
> -Jonathan Cavitt
> 
>>
>>> -Jonathan Cavitt
>>>
>>>>
>>>> I didn't look any deeper than that though. Note that this a just a
>>>> mock/fake device. I don't think its IOMMU related.
>>>>
>>>>> -Jonathan Cavitt
>>>>>
>>>>>>
>>>>>>> ---
>>>>>>>      drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 3 ++-
>>>>>>>      1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>>>>>> index 4daaa6f55668..9c571185395f 100644
>>>>>>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>>>>>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>>>>>> @@ -570,6 +570,7 @@ xehpsdv_ppgtt_insert_huge(struct i915_address_space *vm,
>>>>>>>      			}
>>>>>>>      		} while (rem >= page_size && index < max);
>>>>>>>      
>>>>>>> +		drm_clflush_virt_range(vaddr, PAGE_SIZE);
>>>>>>>      		vma_res->page_sizes_gtt |= page_size;
>>>>>>>      	} while (iter->sg && sg_dma_len(iter->sg));
>>>>>>>      }
>>>>>>> @@ -707,7 +708,7 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
>>>>>>>      	struct sgt_dma iter = sgt_dma(vma_res);
>>>>>>>      
>>>>>>>      	if (vma_res->bi.page_sizes.sg > I915_GTT_PAGE_SIZE) {
>>>>>>> -		if (HAS_64K_PAGES(vm->i915))
>>>>>>> +		if (GRAPHICS_VER_FULL(vm->i915) >= IP_VER(12, 50))
>>>>>>>      			xehpsdv_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
>>>>>>>      		else
>>>>>>>      			gen8_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
>>>>>>
>>>>
>>
