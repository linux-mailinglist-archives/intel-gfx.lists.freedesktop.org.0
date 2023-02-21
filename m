Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C5F69E43D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 17:07:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93F2910E32F;
	Tue, 21 Feb 2023 16:07:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F3510E32F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 16:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676995664; x=1708531664;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=2ZOjfngTHLihTP53ImdE38nj4EjIlLGPhNx7/V9Cj4w=;
 b=BXVU7nQNwSbVvVAXR6uvCtKsfk231XrsQYNn4cP/XjD2NBHmPXY0xevQ
 wGtURxeLFVPHz1H48HYDXYmz+VrdVFGIutfWw7kX+FDeyy9T7GAyynjw2
 nud7cSxqUJALI2Wj27Iyf28yePV30af7h8MPn5fU7tlhkt7SHxU5nHuhD
 fP66lh72Lw/YkkU19FF/JogmmYZsL3xiDl55sQxG8Hs7kNO8Hq1/peTXU
 Ors64jpIQ94cvpDtajmoYzpiqMY8eFJxqUupUgPoz53cIYAMw8WkYcad5
 AvTzGxrDJW75uS3KCbwPSCUgMYoXO+FcD0o+HKixINu5m+EszRNJMJTHh w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="395156748"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="395156748"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 08:07:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="917237358"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="917237358"
Received: from tcollin2-mobl.ger.corp.intel.com (HELO [10.252.18.163])
 ([10.252.18.163])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 08:07:42 -0800
Message-ID: <777bfafc-7d98-9d20-a7bf-ecfe5a8fbddb@intel.com>
Date: Tue, 21 Feb 2023 16:07:40 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.7.1
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230217191813.1104342-1-jonathan.cavitt@intel.com>
 <0f4df8e9-1cb9-b1a4-284d-67fc75b74c2e@intel.com>
In-Reply-To: <0f4df8e9-1cb9-b1a4-284d-67fc75b74c2e@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21/02/2023 16:06, Matthew Auld wrote:
> On 17/02/2023 19:18, Jonathan Cavitt wrote:
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
>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Also make sure we use "drm/i915:" prefix for commit title.

> 
> Although it looks like the hugepage mock tests are failing with this. I 
> assume the mock device just uses some "max" gen version or so, which now 
> triggers this path. Any ideas for that?
> 
>> ---
>>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
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
