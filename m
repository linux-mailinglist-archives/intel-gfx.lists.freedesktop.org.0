Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8F16A1EF0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 16:50:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB2C10EC7F;
	Fri, 24 Feb 2023 15:50:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC4A510EC7F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677253854; x=1708789854;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=fW80zMGkFgdRe1VZJ4DAlJEokZAUjj4se1uO01sO7g4=;
 b=X+yPFSmovIkTp5Qq1N8Kxylnludw6ynKt4bmrAzjnxVvgZ54nrkl0mDE
 K5+t6BEKlb0gnwOiee0MpFls6gmiT9++U2QxCZFWFh7tqrpxO3iUVhTrb
 EphaTjC+zMTjAXJNyrbIezIN5hG5EvrUsZ6UrBjq/4+XTtBE7lk83rFY0
 Ut5qDb6lwv+ARTxdqaOrdeOpKWDLMOozRU+dlDL5OEYeBanWwkr08Bia/
 iIUIFHe6F3wCGNeo62yH9zlgEoZvrcEyPbWvrNvCVYsL/ioIFJTzppsbH
 WUzEkasJOIo7GqFa17vkMVOxhLOhj9GYoW/tpJLx2vyFMHGnv5QRlhN+u w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="335739348"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="335739348"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 07:50:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="674967429"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="674967429"
Received: from akilally-mobl1.amr.corp.intel.com (HELO [10.252.10.71])
 ([10.252.10.71])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 07:50:51 -0800
Message-ID: <73d57d14-ea0c-309a-43ea-4c0512662bbf@intel.com>
Date: Fri, 24 Feb 2023 15:50:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
From: Matthew Auld <matthew.auld@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230222152641.1491307-1-jonathan.cavitt@intel.com>
 <76d0d9cd-5672-2e57-ca56-5dafdce1c2c6@intel.com>
Content-Language: en-GB
In-Reply-To: <76d0d9cd-5672-2e57-ca56-5dafdce1c2c6@intel.com>
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 daniel.vetter@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 22/02/2023 15:56, Matthew Auld wrote:
> On 22/02/2023 15:26, Jonathan Cavitt wrote:
>> MTL currently uses gen8_ppgtt_insert_huge when managing huge pages.  
>> This is because
>> MTL reports as not supporting 64K pages, or more accurately, the 
>> system that reports
>> whether a platform has 64K pages reports false for MTL.  This is only 
>> half correct,
>> as the 64K page support reporting system only cares about 64K page 
>> support for LMEM,
>> which MTL doesn't have.
>>
>> MTL should be using xehpsdv_ppgtt_insert_huge.  However, simply 
>> changing over to
>> using that manager doesn't resolve the issue because MTL is expecting 
>> the virtual
>> address space for the page table to be flushed after initialization, 
>> so we must also
>> add a flush statement there.
>>
>> The changes made to the huge page manager selection indirectly 
>> impacted some of the
>> mock hugepage selftests.  Due to the use of pte level hints, rather 
>> than pde level
>> hints, we now expect 64K page sizes to be properly reported by the 
>> GTT, so we should
>> remove the check that asserts otherwise.
>>
>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> 
> Hopefully CI will be happy now,
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Looks it passes now, but then fails on the next subtest:
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114259v1/shard-apl7/igt@i915_selftest@mock@hugepages.html

Maybe it's not too outrageous to just move igt_mock_ppgtt_64K() to the 
live test section and skip running it with graphics ver >= (12, 50). 
IIUC that subtest is mostly only interesting with the old model anyway. 
I guess that test is much too HW specific to be considered good mock 
test. And maybe we should do the same for igt_mock_ppgtt_huge_fill(). 
But there we can just make the expected_gtt &= ~I915_GTT_PAGE_SIZE_64K 
conditional on graphics ver < (12, 50). Also maybe split this into two 
patches. Thoughts?

> 
>> ---
>>   drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 3 ---
>>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c            | 3 ++-
>>   2 files changed, 2 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c 
>> b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>> index defece0bcb81..1659ada4ce33 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>> @@ -784,9 +784,6 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
>>           GEM_BUG_ON(!expected_gtt);
>>           GEM_BUG_ON(size);
>> -        if (expected_gtt & I915_GTT_PAGE_SIZE_4K)
>> -            expected_gtt &= ~I915_GTT_PAGE_SIZE_64K;
>> -
>>           i915_vma_unpin(vma);
>>           if (vma->page_sizes.sg & I915_GTT_PAGE_SIZE_64K) {
>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c 
>> b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> index 4daaa6f55668..9c571185395f 100644
>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> @@ -570,6 +570,7 @@ xehpsdv_ppgtt_insert_huge(struct 
>> i915_address_space *vm,
>>               }
>>           } while (rem >= page_size && index < max);
>> +        drm_clflush_virt_range(vaddr, PAGE_SIZE);
>>           vma_res->page_sizes_gtt |= page_size;
>>       } while (iter->sg && sg_dma_len(iter->sg));
>>   }
>> @@ -707,7 +708,7 @@ static void gen8_ppgtt_insert(struct 
>> i915_address_space *vm,
>>       struct sgt_dma iter = sgt_dma(vma_res);
>>       if (vma_res->bi.page_sizes.sg > I915_GTT_PAGE_SIZE) {
>> -        if (HAS_64K_PAGES(vm->i915))
>> +        if (GRAPHICS_VER_FULL(vm->i915) >= IP_VER(12, 50))
>>               xehpsdv_ppgtt_insert_huge(vm, vma_res, &iter, 
>> cache_level, flags);
>>           else
>>               gen8_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, 
>> flags);
