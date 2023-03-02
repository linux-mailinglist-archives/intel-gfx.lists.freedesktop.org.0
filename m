Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8366A8098
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 12:01:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EDB410E275;
	Thu,  2 Mar 2023 11:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E18610E14F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 11:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677754858; x=1709290858;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=T8mOp+Kr2gEIUgmcAH1/CnnQcc5azTxS4fa+3qlsMyk=;
 b=m6WJYTRGMCBjo7CNY22FvK1mJur+X3PBeFs+PXCkg9fgN7alwgVizPQ7
 HFUmr2mETmJnQf0WtXU12I0nweQdvhDZ07hhjabwTi+lS+yzyj2hmJz1S
 RjYbSrVjhv+D8+HT5EiVGDdvY5EEM32vnklce9RX3KrpAvgarUwPYTCl5
 i6M8YU1opD/L50ae3pCZ7zov+6S/IMQnPglvHSjQ04uUv0WXhH8n9s4lk
 6decezeR8JdKgYnTdp2QTWlZoNAaZ3agV4FjyKrbvywqSwArVpuFsYBe3
 PIqWoPU7sqbASzdPobom/m/yfdrCD6ZRC9V6ckU0bBVvKfcisWcIDjSx/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="362280603"
X-IronPort-AV: E=Sophos;i="5.98,227,1673942400"; d="scan'208";a="362280603"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 03:00:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="1004066606"
X-IronPort-AV: E=Sophos;i="5.98,227,1673942400"; d="scan'208";a="1004066606"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.8.166])
 ([10.213.8.166])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 03:00:56 -0800
Message-ID: <3d44e317-1491-d610-109c-0b14dd252aba@intel.com>
Date: Thu, 2 Mar 2023 12:00:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230208105130.3233420-1-andrzej.hajda@intel.com>
 <947b8217-7d3e-974f-8690-7cfdfcbeb516@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <947b8217-7d3e-974f-8690-7cfdfcbeb516@linux.intel.com>
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
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 02.03.2023 11:43, Tvrtko Ursulin wrote:
>
> On 08/02/2023 10:51, Andrzej Hajda wrote:
>> Write-combining memory allows speculative reads by CPU.
>> ggtt->error_capture is WC mapped to CPU, so CPU/MMU can try
>> to prefetch memory beyond the error_capture, ie it tries
>> to read memory pointed by next PTE in GGTT.
>> If this PTE points to invalid address DMAR errors will occur.
>> This behaviour was observed on ADL, RPL, DG2 platforms.
>> To avoid it, guard scratch page should be added after error_capture.
>> The patch fixes the most annoying issue with error capture but
>> since WC reads are used also in other places there is a risk similar
>> problem can affect them as well.
>>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>
> Research tells the explanation is plausible so:
>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>

Thanks for looking at it.

> On patch details below.
>
> What about "simiar risk in other places" - are there any plans to 
> asses the potential impact elsewhere?

Yes, merging this patch is the 1st step, as error_capture is responsible 
for most (maybe even all) regular
DMAR read errors. After removing this noise it will be much easier to 
spot other DMAR read errors.
There are also multiple regular DMAR write errors (less frequent, but 
still), which I hope to debug if time permits.

Regards
Andrzej

>
>> ---
>> This patch tries to diminish plague of DMAR read errors present
>> in CI for ADL*, RPL*, DG2 platforms, see for example [1] (grep DMAR).
>> CI is usually tolerant for these errors, so the scale of the problem
>> is not really visible.
>> To show it I have counted lines containing DMAR read errors in dmesgs
>> produced by CI for all three versions of the patch, but in contrast 
>> to v2
>> I have grepped only for lines containing "PTE Read access".
>> Below stats for kernel w/o patch vs patched one.
>> v1: 210 vs 0
>> v2: 201 vs 0
>> v3: 214 vs 0
>> Apparently the patch fixes all common PTE read errors.
>>
>> In previous version there were different numbers due to less exact 
>> grepping,
>> "grep DMAR" catched write errors and "DMAR: DRHD: handling fault 
>> status reg"
>> lines, anyway the actual number of errors is much bigger - DMAR errors
>> are rate-limited.
>>
>> [1]: 
>> http://gfx-ci.igk.intel.com/tree/drm-tip/CI_DRM_12678/bat-adln-1/dmesg0.txt
>>
>> Changelog:
>> v2:
>>      - modified commit message (I hope the diagnosis is correct),
>>      - added bug checks to ensure scratch is initialized on gen3 
>> platforms.
>>        CI produces strange stacktrace for it suggesting scratch[0] is 
>> NULL,
>>        to be removed after resolving the issue with gen3 platforms.
>> v3:
>>      - removed bug checks, replaced with gen check.
>> v4:
>>      - change code for scratch page insertion to support all platforms,
>>      - add info in commit message there could be more similar issues
>>
>> Regards
>> Andrzej
>> ---
>>   drivers/gpu/drm/i915/gt/intel_ggtt.c | 31 ++++++++++++++++++++++++----
>>   1 file changed, 27 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c 
>> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 842e69c7b21e49..6566d2066f1f8b 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -503,6 +503,21 @@ static void cleanup_init_ggtt(struct i915_ggtt 
>> *ggtt)
>>       mutex_destroy(&ggtt->error_mutex);
>>   }
>>   +static void
>> +ggtt_insert_scratch_pages(struct i915_ggtt *ggtt, u64 offset, u64 
>> length)
>> +{
>> +    struct i915_address_space *vm = &ggtt->vm;
>> +
>> +    if (GRAPHICS_VER(ggtt->vm.i915) < 8)
>> +        return vm->clear_range(vm, offset, length);
>> +    /* clear_range since gen8 is nop */
>
> It would also work to simply drop the <gen8 case and just do the loop 
> below, right? If so would that be clearer?
>
>> +    while (length > 0) {
>
> Maybe add a GEM_BUG_ON if length is not aligned? Granted it may be a 
> huge stretch of imagination..
>
> Regards,
>
> Tvrtko
>
>> +        vm->insert_page(vm, px_dma(vm->scratch[0]), offset, 
>> I915_CACHE_NONE, 0);
>> +        offset += I915_GTT_PAGE_SIZE;
>> +        length -= I915_GTT_PAGE_SIZE;
>> +    }
>> +}
>> +
>>   static int init_ggtt(struct i915_ggtt *ggtt)
>>   {
>>       /*
>> @@ -551,8 +566,12 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>>            * paths, and we trust that 0 will remain reserved. However,
>>            * the only likely reason for failure to insert is a driver
>>            * bug, which we expect to cause other failures...
>> +         *
>> +         * Since CPU can perform speculative reads on error capture
>> +         * (write-combining allows it) add scratch page after error
>> +         * capture to avoid DMAR errors.
>>            */
>> -        ggtt->error_capture.size = I915_GTT_PAGE_SIZE;
>> +        ggtt->error_capture.size = 2 * I915_GTT_PAGE_SIZE;
>>           ggtt->error_capture.color = I915_COLOR_UNEVICTABLE;
>>           if (drm_mm_reserve_node(&ggtt->vm.mm, &ggtt->error_capture))
>>               drm_mm_insert_node_in_range(&ggtt->vm.mm,
>> @@ -562,11 +581,15 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>>                               0, ggtt->mappable_end,
>>                               DRM_MM_INSERT_LOW);
>>       }
>> -    if (drm_mm_node_allocated(&ggtt->error_capture))
>> +    if (drm_mm_node_allocated(&ggtt->error_capture)) {
>> +        u64 start = ggtt->error_capture.start;
>> +        u64 size = ggtt->error_capture.size;
>> +
>> +        ggtt_insert_scratch_pages(ggtt, start, size);
>>           drm_dbg(&ggtt->vm.i915->drm,
>>               "Reserved GGTT:[%llx, %llx] for use by error capture\n",
>> -            ggtt->error_capture.start,
>> -            ggtt->error_capture.start + ggtt->error_capture.size);
>> +            start, start + size);
>> +    }
>>         /*
>>        * The upper portion of the GuC address space has a sizeable hole

