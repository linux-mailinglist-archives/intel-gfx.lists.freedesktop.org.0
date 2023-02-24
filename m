Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3FB6A200B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 17:51:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24F4D10E1E6;
	Fri, 24 Feb 2023 16:51:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94B1F10E1E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 16:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677257509; x=1708793509;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=z+bH56YzfOFIJrM/ayW1sQy6/031vvcVADC1/5YXofE=;
 b=RXaAgj1V0Zf4GZs4SROVmo8ff46Pm4DfVsHw/O5h4qc2Um2qoDfH53yk
 jhP1weIEYus1YV2YIq3TYaKPHQuzTSJAWQ/Vd8fS7v+WySTfeb4aVQggX
 ZSCRFsx/9e3K2d5f1IUCCv2wfF9VVtIWJxlGRVSSC4iuiNL8h4M5FkVuZ
 fC/Ii89zO4jEFtE9N7G9AynbAB4rOAbweBSj4dyQUmMovkwhkEmT+jafq
 I5mRt21Q1iNOFTXvMyx7FIKTy/p1bRIW1a7jdNz7U7CN4dta2T33Oe3Mu
 gw0ukLvbx/xTxtunohuEumTdnwqqLlwrv4vXWuKECfhbMUw3fk1vrc/vK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="317281955"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="317281955"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 08:51:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="796792478"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="796792478"
Received: from akilally-mobl1.amr.corp.intel.com (HELO [10.252.10.71])
 ([10.252.10.71])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 08:51:36 -0800
Message-ID: <2b72f229-0562-7db8-c868-23c769a0c978@intel.com>
Date: Fri, 24 Feb 2023 16:51:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-GB
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
References: <20230222152641.1491307-1-jonathan.cavitt@intel.com>
 <76d0d9cd-5672-2e57-ca56-5dafdce1c2c6@intel.com>
 <73d57d14-ea0c-309a-43ea-4c0512662bbf@intel.com>
 <CH0PR11MB5444F2115D15E84B0EAEA27CE5A89@CH0PR11MB5444.namprd11.prod.outlook.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <CH0PR11MB5444F2115D15E84B0EAEA27CE5A89@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use correct huge page manager for
 MTL
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
Cc: "thomas.hellstrom@linux.intel.com" <thomas.hellstrom@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Vetter,
 Daniel" <daniel.vetter@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24/02/2023 16:13, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Auld, Matthew <matthew.auld@intel.com>
> Sent: Friday, February 24, 2023 7:51 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Dutt, Sudeep <sudeep.dutt@intel.com>; thomas.hellstrom@linux.intel.com; maarten.lankhorst@linux.intel.com; Vetter, Daniel <daniel.vetter@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>; chris.p.wilson@linux.intel.com
> Subject: Re: [PATCH] drm/i915: Use correct huge page manager for MTL
>>
>> On 22/02/2023 15:56, Matthew Auld wrote:
>>> On 22/02/2023 15:26, Jonathan Cavitt wrote:
>>>> MTL currently uses gen8_ppgtt_insert_huge when managing huge pages.
>>>> This is because
>>>> MTL reports as not supporting 64K pages, or more accurately, the
>>>> system that reports
>>>> whether a platform has 64K pages reports false for MTL.  This is only
>>>> half correct,
>>>> as the 64K page support reporting system only cares about 64K page
>>>> support for LMEM,
>>>> which MTL doesn't have.
>>>>
>>>> MTL should be using xehpsdv_ppgtt_insert_huge.  However, simply
>>>> changing over to
>>>> using that manager doesn't resolve the issue because MTL is expecting
>>>> the virtual
>>>> address space for the page table to be flushed after initialization,
>>>> so we must also
>>>> add a flush statement there.
>>>>
>>>> The changes made to the huge page manager selection indirectly
>>>> impacted some of the
>>>> mock hugepage selftests.  Due to the use of pte level hints, rather
>>>> than pde level
>>>> hints, we now expect 64K page sizes to be properly reported by the
>>>> GTT, so we should
>>>> remove the check that asserts otherwise.
>>>>
>>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>>
>>> Hopefully CI will be happy now,
>>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>>
>> Looks it passes now, but then fails on the next subtest:
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v1/shard-apl7/igt@i915_selftest@mock@hugepages.html
>>
>> Maybe it's not too outrageous to just move igt_mock_ppgtt_64K() to the
>> live test section and skip running it with graphics ver >= (12, 50).
>> IIUC that subtest is mostly only interesting with the old model anyway.
>> I guess that test is much too HW specific to be considered good mock
>> test. And maybe we should do the same for igt_mock_ppgtt_huge_fill().
>> But there we can just make the expected_gtt &= ~I915_GTT_PAGE_SIZE_64K
>> conditional on graphics ver < (12, 50). Also maybe split this into two
>> patches. Thoughts?
> 
> 
> IMO, no matter how important it is to get this patch upstreamed, introducing regressions to "fix later"
> with this patch is just going to erode the trust of the upstream Linux team more than it's already been.
> So, frustratingly, I think we need to do what's necessary to get this resolved in the same patch.

Not sure I follow. With "split this into two patches", I just meant one 
patch to convert the troublesome mock tests into live tests 
(igt_mock_ppgtt_64K + igt_mock_ppgtt_huge_fill). Those shouldn't be mock 
tests any more, since the mock device can't really cover two different 
HW models (this is already an existing issue since supporting ATS/DG2), 
and likely means those tests are just too HW specific, and so live test 
would be much more suitable (perhaps with slightly different test 
expectations depending on the graphics ver). This can be considered a 
prep patch (could even be merged without the MTL stuff), and should be 
standalone. But how much (in any) of igt_mock_ppgtt_64K() we care about 
for ver >= (12, 50) I'm not so sure...

In another patch (as part of the same patch series) we then add the MTL 
stuff.

> 
> Thankfully, this probably won't be too difficult: igt_mock_ppgtt_64K is the last mock test, and we just
> need to mark every object .gtt with I915_GTT_PAGE_SIZE_64K when .size & SZ_64K is not zero.  We
> can do this in one of two ways:
> 
> 1. Mark it in the object (I.E. adding it directly to .gtt).  This makes the most sense, but is the most difficult.
> 2. Mark it separately (I.E. expected_gtt |= object[i].size & SZ_64K ? I915_GTT_PAGE_SIZE_64K : 0).
>      This is the easiest, but is very likely to be rejected.
> 
> We probably have to do fix #1, and a direct fix here probably won't repair the issue 100% (There might be
> some other objects in the test that aren't correctly formatted).  However, if we take this one step at a time,
> we'll eventually get this patch upstream-ready.
> -Jonathan Cavitt
> 
>>
>>>
>>>> ---
>>>>    drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 3 ---
>>>>    drivers/gpu/drm/i915/gt/gen8_ppgtt.c            | 3 ++-
>>>>    2 files changed, 2 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>>>> b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>>>> index defece0bcb81..1659ada4ce33 100644
>>>> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>>>> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>>>> @@ -784,9 +784,6 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
>>>>            GEM_BUG_ON(!expected_gtt);
>>>>            GEM_BUG_ON(size);
>>>> -        if (expected_gtt & I915_GTT_PAGE_SIZE_4K)
>>>> -            expected_gtt &= ~I915_GTT_PAGE_SIZE_64K;
>>>> -
>>>>            i915_vma_unpin(vma);
>>>>            if (vma->page_sizes.sg & I915_GTT_PAGE_SIZE_64K) {
>>>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>>> b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>>> index 4daaa6f55668..9c571185395f 100644
>>>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>>> @@ -570,6 +570,7 @@ xehpsdv_ppgtt_insert_huge(struct
>>>> i915_address_space *vm,
>>>>                }
>>>>            } while (rem >= page_size && index < max);
>>>> +        drm_clflush_virt_range(vaddr, PAGE_SIZE);
>>>>            vma_res->page_sizes_gtt |= page_size;
>>>>        } while (iter->sg && sg_dma_len(iter->sg));
>>>>    }
>>>> @@ -707,7 +708,7 @@ static void gen8_ppgtt_insert(struct
>>>> i915_address_space *vm,
>>>>        struct sgt_dma iter = sgt_dma(vma_res);
>>>>        if (vma_res->bi.page_sizes.sg > I915_GTT_PAGE_SIZE) {
>>>> -        if (HAS_64K_PAGES(vm->i915))
>>>> +        if (GRAPHICS_VER_FULL(vm->i915) >= IP_VER(12, 50))
>>>>                xehpsdv_ppgtt_insert_huge(vm, vma_res, &iter,
>>>> cache_level, flags);
>>>>            else
>>>>                gen8_ppgtt_insert_huge(vm, vma_res, &iter, cache_level,
>>>> flags);
>>
