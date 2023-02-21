Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2884969E632
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 18:46:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BE6210E0BC;
	Tue, 21 Feb 2023 17:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7933E10E2C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 17:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677001601; x=1708537601;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=cxiYC+FIY4dCTiecwTBdVL4YZVDR4nMB0sLMuu6uVRE=;
 b=VQxpzr4ff60OUoK/3508Ho7FszBc10WxgVajwyMLcXqfpjzzu7Y1HR6g
 2mMsUgFHUHUy2xsJOJ6RrEGnVvbptsVvogGyJ6o1uPAK6mdwsBMGOfgQU
 6ZhgSoOsXNEbFPw38p7no5GDOohNa9mZPCvJYBOCmo1Nvf1U+GUfxY0xn
 hum+pMRQnc7qX5yUZEsULi3LPphPzrjjunAtobjkBF8uuCHQqeJTtUEmj
 1jSYP2C8WNM7ILHteAD3krOlbdlx3MNHxr+K/2Tquk/tdS3V6NJVhXBXL
 d8/s4z7L6bgU0WstWwdEMqrpxXZDCWctQ/U/msobrINwGTzJkTqN9E1d0 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="418927804"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="418927804"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 09:46:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="621588843"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="621588843"
Received: from tcollin2-mobl.ger.corp.intel.com (HELO [10.252.18.163])
 ([10.252.18.163])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 09:46:23 -0800
Message-ID: <548e3921-8488-afc1-aeae-6ff526e16e51@intel.com>
Date: Tue, 21 Feb 2023 17:46:20 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.7.1
Content-Language: en-GB
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
References: <20230217191813.1104342-1-jonathan.cavitt@intel.com>
 <0f4df8e9-1cb9-b1a4-284d-67fc75b74c2e@intel.com>
 <CH0PR11MB5444727E7C9F280059073C1EE5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
 <b371944c-779d-cd9e-e9ba-6c7b8a6bc0bb@intel.com>
 <CH0PR11MB544409A98B8A5F6E8E087DF4E5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <CH0PR11MB544409A98B8A5F6E8E087DF4E5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
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

On 21/02/2023 17:14, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Auld, Matthew <matthew.auld@intel.com>
> Sent: Tuesday, February 21, 2023 8:33 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Cc: Dutt, Sudeep <sudeep.dutt@intel.com>; Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] gen8_ppgtt: Use correct huge page manager for MTL
>>
>> On 21/02/2023 16:28, Cavitt, Jonathan wrote:
>>> -----Original Message-----
>>> From: Auld, Matthew <matthew.auld@intel.com>
>>> Sent: Tuesday, February 21, 2023 8:06 AM
>>> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
>>> Cc: Dutt, Sudeep <sudeep.dutt@intel.com>; Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
>>> Subject: Re: [PATCH] gen8_ppgtt: Use correct huge page manager for MTL
>>>>
>>>> On 17/02/2023 19:18, Jonathan Cavitt wrote:
>>>>> MTL currently uses gen8_ppgtt_insert_huge when managing huge pages.  This is because
>>>>> MTL reports as not supporting 64K pages, or more accurately, the system that reports
>>>>> whether a platform has 64K pages reports false for MTL.  This is only half correct,
>>>>> as the 64K page support reporting system only cares about 64K page support for LMEM,
>>>>> which MTL doesn't have.
>>>>>
>>>>> MTL should be using xehpsdv_ppgtt_insert_huge.  However, simply changing over to
>>>>> using that manager doesn't resolve the issue because MTL is expecting the virtual
>>>>> address space for the page table to be flushed after initialization, so we must also
>>>>> add a flush statement there.
>>>>>
>>>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>>>>
>>>> Although it looks like the hugepage mock tests are failing with this. I
>>>> assume the mock device just uses some "max" gen version or so, which now
>>>> triggers this path. Any ideas for that?
>>>
>>> With this patch applied, multiple calls to the hugepages live selftest result in a kernel panic.
>>> If the mock tests are run immediately after the live ones, that would explain this behavior.
>>> I was informed when this was initially debugged that the error was a known IOMMU issue
>>> rather than some novel regression, though it's hard to tell if that was just hopeful optimism
>>> or not at this point.
>>
>> In the test results we now get:
>>
>> 6> [183.420316] i915: Running
>> i915_gem_huge_page_mock_selftests/igt_mock_exhaust_device_supported_pages
>> <6> [183.436978] i915: Running
>> i915_gem_huge_page_mock_selftests/igt_mock_memory_region_huge_pages
>> <6> [183.445777] i915: Running
>> i915_gem_huge_page_mock_selftests/igt_mock_ppgtt_misaligned_dma
>> <6> [183.904531] i915: Running
>> i915_gem_huge_page_mock_selftests/igt_mock_ppgtt_huge_fill
>> <3> [183.912658] gtt=69632, expected=4096, size=69632, single=yes
>> <3> [183.912784] i915/i915_gem_huge_page_mock_selftests:
>> igt_mock_ppgtt_huge_fill failed with error -22
> 
>                  if (expected_gtt & I915_GTT_PAGE_SIZE_4K)
>                          expected_gtt &= ~I915_GTT_PAGE_SIZE_64K;
> 
> I don't know why we're doing that to expected_gtt, but that seems to be the cause of the
> problem in this case.

I think it's due to the older huge page model, where 64K requires the 
entire page-table to all use 64K pages underneath (pde level hint), so 
if we see 4K in there somewhere then we don't expect to get back 64K 
GTT. But on newer HW we now have have pte level hint, so I think the 
above can just be removed with this patch, since that's what the mock 
device now uses.

> -Jonathan Cavitt
> 
>>
>> I didn't look any deeper than that though. Note that this a just a
>> mock/fake device. I don't think its IOMMU related.
>>
>>> -Jonathan Cavitt
>>>
>>>>
>>>>> ---
>>>>>     drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 3 ++-
>>>>>     1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>>>> index 4daaa6f55668..9c571185395f 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>>>> @@ -570,6 +570,7 @@ xehpsdv_ppgtt_insert_huge(struct i915_address_space *vm,
>>>>>     			}
>>>>>     		} while (rem >= page_size && index < max);
>>>>>     
>>>>> +		drm_clflush_virt_range(vaddr, PAGE_SIZE);
>>>>>     		vma_res->page_sizes_gtt |= page_size;
>>>>>     	} while (iter->sg && sg_dma_len(iter->sg));
>>>>>     }
>>>>> @@ -707,7 +708,7 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
>>>>>     	struct sgt_dma iter = sgt_dma(vma_res);
>>>>>     
>>>>>     	if (vma_res->bi.page_sizes.sg > I915_GTT_PAGE_SIZE) {
>>>>> -		if (HAS_64K_PAGES(vm->i915))
>>>>> +		if (GRAPHICS_VER_FULL(vm->i915) >= IP_VER(12, 50))
>>>>>     			xehpsdv_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
>>>>>     		else
>>>>>     			gen8_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
>>>>
>>
