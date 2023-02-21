Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E6F69E4B2
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 17:33:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89B4510E33B;
	Tue, 21 Feb 2023 16:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFC0310E33B
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 16:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676997178; x=1708533178;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=vZSRnegWB62AUYyU7IaXtHtO/9lHuMwbE02aarrrZg8=;
 b=ZE/43e5qDPu9ZtKvpLG5cqDkmO3lIrJk76OvcWl0xovJccMfNy3asxBF
 fkx2AKcQREltUJkE+t0wKHk+CW0kkm9kv3R+EuBeh5BYnytHKwaQFKLDy
 JTKu9WesPajN/n8lLmxpspr7ZFitXLiNqZXBSDbLFCOMWagvkrSmJCbOK
 QvycX5USXh3vndY28yEmIedSFHGKzrgCMjaaYNCgWxEcNzZXo6sc0HUwJ
 E1Kwe8h6S7KCxh0N03I4rrMDXZNG3jjAQEWQyT+QpCnOr7eSbumS0hIDz
 edkLnK8NGkjQIgy6UXGaAPedBJzYOEAwVbmrnrsR+cT7Ajv7gD/Covu5R w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="320817230"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="320817230"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 08:32:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="649241867"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="649241867"
Received: from tcollin2-mobl.ger.corp.intel.com (HELO [10.252.18.163])
 ([10.252.18.163])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 08:32:56 -0800
Message-ID: <b371944c-779d-cd9e-e9ba-6c7b8a6bc0bb@intel.com>
Date: Tue, 21 Feb 2023 16:32:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.7.1
Content-Language: en-GB
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
References: <20230217191813.1104342-1-jonathan.cavitt@intel.com>
 <0f4df8e9-1cb9-b1a4-284d-67fc75b74c2e@intel.com>
 <CH0PR11MB5444727E7C9F280059073C1EE5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <CH0PR11MB5444727E7C9F280059073C1EE5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
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

On 21/02/2023 16:28, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Auld, Matthew <matthew.auld@intel.com>
> Sent: Tuesday, February 21, 2023 8:06 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Dutt, Sudeep <sudeep.dutt@intel.com>; Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> Subject: Re: [PATCH] gen8_ppgtt: Use correct huge page manager for MTL
>>
>> On 17/02/2023 19:18, Jonathan Cavitt wrote:
>>> MTL currently uses gen8_ppgtt_insert_huge when managing huge pages.  This is because
>>> MTL reports as not supporting 64K pages, or more accurately, the system that reports
>>> whether a platform has 64K pages reports false for MTL.  This is only half correct,
>>> as the 64K page support reporting system only cares about 64K page support for LMEM,
>>> which MTL doesn't have.
>>>
>>> MTL should be using xehpsdv_ppgtt_insert_huge.  However, simply changing over to
>>> using that manager doesn't resolve the issue because MTL is expecting the virtual
>>> address space for the page table to be flushed after initialization, so we must also
>>> add a flush statement there.
>>>
>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>>
>> Although it looks like the hugepage mock tests are failing with this. I
>> assume the mock device just uses some "max" gen version or so, which now
>> triggers this path. Any ideas for that?
> 
> With this patch applied, multiple calls to the hugepages live selftest result in a kernel panic.
> If the mock tests are run immediately after the live ones, that would explain this behavior.
> I was informed when this was initially debugged that the error was a known IOMMU issue
> rather than some novel regression, though it's hard to tell if that was just hopeful optimism
> or not at this point.

In the test results we now get:

6> [183.420316] i915: Running 
i915_gem_huge_page_mock_selftests/igt_mock_exhaust_device_supported_pages
<6> [183.436978] i915: Running 
i915_gem_huge_page_mock_selftests/igt_mock_memory_region_huge_pages
<6> [183.445777] i915: Running 
i915_gem_huge_page_mock_selftests/igt_mock_ppgtt_misaligned_dma
<6> [183.904531] i915: Running 
i915_gem_huge_page_mock_selftests/igt_mock_ppgtt_huge_fill
<3> [183.912658] gtt=69632, expected=4096, size=69632, single=yes
<3> [183.912784] i915/i915_gem_huge_page_mock_selftests: 
igt_mock_ppgtt_huge_fill failed with error -22

I didn't look any deeper than that though. Note that this a just a 
mock/fake device. I don't think its IOMMU related.

> -Jonathan Cavitt
> 
>>
>>> ---
>>>    drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 3 ++-
>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>> index 4daaa6f55668..9c571185395f 100644
>>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>> @@ -570,6 +570,7 @@ xehpsdv_ppgtt_insert_huge(struct i915_address_space *vm,
>>>    			}
>>>    		} while (rem >= page_size && index < max);
>>>    
>>> +		drm_clflush_virt_range(vaddr, PAGE_SIZE);
>>>    		vma_res->page_sizes_gtt |= page_size;
>>>    	} while (iter->sg && sg_dma_len(iter->sg));
>>>    }
>>> @@ -707,7 +708,7 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
>>>    	struct sgt_dma iter = sgt_dma(vma_res);
>>>    
>>>    	if (vma_res->bi.page_sizes.sg > I915_GTT_PAGE_SIZE) {
>>> -		if (HAS_64K_PAGES(vm->i915))
>>> +		if (GRAPHICS_VER_FULL(vm->i915) >= IP_VER(12, 50))
>>>    			xehpsdv_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
>>>    		else
>>>    			gen8_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
>>
