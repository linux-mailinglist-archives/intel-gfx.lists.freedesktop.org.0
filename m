Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D1F68EDEA
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 12:29:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF8410E744;
	Wed,  8 Feb 2023 11:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4821210E744
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 11:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675855753; x=1707391753;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=jO2AemZEzD3iOZ4c6USSv2NZm/fpAQEDP5ni6nVurUI=;
 b=XKpbeLp5NU0igGbmTYwWY3Pu/3xGHce1hZFp4NypQTuOfPZYRIGQrhou
 TQeaF4xqg7ShN20Ah/+jXZh8Wdn3tDVQb4+Kih5WHJXbu1rwNIBy0Byvm
 KMmzI6hqOq6Zs6HGuA6neNCiXgv76VxLFcFHUPwcqvFsw1IRkAg0MYkXC
 O5wRnrCR1MUvKYh/77zjxLUyvBqNfnwX/EwFMtdUUeeCXFA+rVk25+rZE
 mxE7HVPOqmzu/Ky8LhlLz6VgYFiieSjhKJsH3KjrEq3YufabiDUZJoFIJ
 so21uTR3cFmSwyZPqtfB5wcWYP453sGM5zcQzj4o4k241IBJO4GXe9AQQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="317770106"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="317770106"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:29:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="996110418"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="996110418"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.9.50])
 ([10.213.9.50])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:29:10 -0800
Message-ID: <04109dcc-55a0-7955-390d-d1435bce426e@intel.com>
Date: Wed, 8 Feb 2023 12:29:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230208105130.3233420-1-andrzej.hajda@intel.com>
 <fc2c0f80-b85f-2f0e-28b4-c19832399458@intel.com>
 <305ca236-8922-1b1b-a62b-22b8b8b097a3@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <305ca236-8922-1b1b-a62b-22b8b8b097a3@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: add guard page to
 ggtt->error_capture
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 08.02.2023 12:17, Andrzej Hajda wrote:
>
>
> On 08.02.2023 12:03, Matthew Auld wrote:
>> On 08/02/2023 10:51, Andrzej Hajda wrote:
>>> Write-combining memory allows speculative reads by CPU.
>>> ggtt->error_capture is WC mapped to CPU, so CPU/MMU can try
>>> to prefetch memory beyond the error_capture, ie it tries
>>> to read memory pointed by next PTE in GGTT.
>>> If this PTE points to invalid address DMAR errors will occur.
>>> This behaviour was observed on ADL, RPL, DG2 platforms.
>>
>> Note that DG2 doesn't use this path for error capture, since it lacks 
>> mappable aperture. Do you know if CI sees any DMAR errors related to 
>> error capture on DG2/DG1?
>
> I have not tested personally but CI confirms it [1] (grep for DMAR:), 
> but only on bat-dg2-11.
> I am not sure why only this one, but my patch silences DMAR errors on it.
> [1]: 
> http://gfx-ci.igk.intel.com/tree/drm-tip/CI_DRM_12680/bat-dg2-11/dmesg0.txt

OK, bat-dg2-11 has DG2 and ADL-P :)

>
> Regards
> Andrzej
>
>
>>
>>> To avoid it, guard scratch page should be added after error_capture.
>>> The patch fixes the most annoying issue with error capture but
>>> since WC reads are used also in other places there is a risk similar
>>> problem can affect them as well.
>>>
>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>> ---
>>> This patch tries to diminish plague of DMAR read errors present
>>> in CI for ADL*, RPL*, DG2 platforms, see for example [1] (grep DMAR).
>>> CI is usually tolerant for these errors, so the scale of the problem
>>> is not really visible.
>>> To show it I have counted lines containing DMAR read errors in dmesgs
>>> produced by CI for all three versions of the patch, but in contrast 
>>> to v2
>>> I have grepped only for lines containing "PTE Read access".
>>> Below stats for kernel w/o patch vs patched one.
>>> v1: 210 vs 0
>>> v2: 201 vs 0
>>> v3: 214 vs 0
>>> Apparently the patch fixes all common PTE read errors.
>>>
>>> In previous version there were different numbers due to less exact 
>>> grepping,
>>> "grep DMAR" catched write errors and "DMAR: DRHD: handling fault 
>>> status reg"
>>> lines, anyway the actual number of errors is much bigger - DMAR errors
>>> are rate-limited.
>>>
>>> [1]: 
>>> http://gfx-ci.igk.intel.com/tree/drm-tip/CI_DRM_12678/bat-adln-1/dmesg0.txt
>>>
>>> Changelog:
>>> v2:
>>>      - modified commit message (I hope the diagnosis is correct),
>>>      - added bug checks to ensure scratch is initialized on gen3 
>>> platforms.
>>>        CI produces strange stacktrace for it suggesting scratch[0] 
>>> is NULL,
>>>        to be removed after resolving the issue with gen3 platforms.
>>> v3:
>>>      - removed bug checks, replaced with gen check.
>>> v4:
>>>      - change code for scratch page insertion to support all platforms,
>>>      - add info in commit message there could be more similar issues
>>>
>>> Regards
>>> Andrzej
>>> ---
>>>   drivers/gpu/drm/i915/gt/intel_ggtt.c | 31 
>>> ++++++++++++++++++++++++----
>>>   1 file changed, 27 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c 
>>> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> index 842e69c7b21e49..6566d2066f1f8b 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> @@ -503,6 +503,21 @@ static void cleanup_init_ggtt(struct i915_ggtt 
>>> *ggtt)
>>>       mutex_destroy(&ggtt->error_mutex);
>>>   }
>>>   +static void
>>> +ggtt_insert_scratch_pages(struct i915_ggtt *ggtt, u64 offset, u64 
>>> length)
>>> +{
>>> +    struct i915_address_space *vm = &ggtt->vm;
>>> +
>>> +    if (GRAPHICS_VER(ggtt->vm.i915) < 8)
>>> +        return vm->clear_range(vm, offset, length);
>>> +    /* clear_range since gen8 is nop */
>>> +    while (length > 0) {
>>> +        vm->insert_page(vm, px_dma(vm->scratch[0]), offset, 
>>> I915_CACHE_NONE, 0);
>>> +        offset += I915_GTT_PAGE_SIZE;
>>> +        length -= I915_GTT_PAGE_SIZE;
>>> +    }
>>> +}
>>> +
>>>   static int init_ggtt(struct i915_ggtt *ggtt)
>>>   {
>>>       /*
>>> @@ -551,8 +566,12 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>>>            * paths, and we trust that 0 will remain reserved. However,
>>>            * the only likely reason for failure to insert is a driver
>>>            * bug, which we expect to cause other failures...
>>> +         *
>>> +         * Since CPU can perform speculative reads on error capture
>>> +         * (write-combining allows it) add scratch page after error
>>> +         * capture to avoid DMAR errors.
>>>            */
>>> -        ggtt->error_capture.size = I915_GTT_PAGE_SIZE;
>>> +        ggtt->error_capture.size = 2 * I915_GTT_PAGE_SIZE;
>>>           ggtt->error_capture.color = I915_COLOR_UNEVICTABLE;
>>>           if (drm_mm_reserve_node(&ggtt->vm.mm, &ggtt->error_capture))
>>>               drm_mm_insert_node_in_range(&ggtt->vm.mm,
>>> @@ -562,11 +581,15 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>>>                               0, ggtt->mappable_end,
>>>                               DRM_MM_INSERT_LOW);
>>>       }
>>> -    if (drm_mm_node_allocated(&ggtt->error_capture))
>>> +    if (drm_mm_node_allocated(&ggtt->error_capture)) {
>>> +        u64 start = ggtt->error_capture.start;
>>> +        u64 size = ggtt->error_capture.size;
>>> +
>>> +        ggtt_insert_scratch_pages(ggtt, start, size);
>>>           drm_dbg(&ggtt->vm.i915->drm,
>>>               "Reserved GGTT:[%llx, %llx] for use by error capture\n",
>>> -            ggtt->error_capture.start,
>>> -            ggtt->error_capture.start + ggtt->error_capture.size);
>>> +            start, start + size);
>>> +    }
>>>         /*
>>>        * The upper portion of the GuC address space has a sizeable hole
>

