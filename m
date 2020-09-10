Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F4B2643FF
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 12:27:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 550E36E8F3;
	Thu, 10 Sep 2020 10:27:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 573056E8F3
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 10:27:13 +0000 (UTC)
IronPort-SDR: qhgRivpx06AiV1ffpxampZbO15Jz2JIIlcCswRdp2QInworoxVk3wZdBaNgxcTLwLZIrI7UpYt
 CUniiKPFkO5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="158542870"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="158542870"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 03:27:11 -0700
IronPort-SDR: b4IFZKGWuveej6MQ7EsROHH4rCwPAfTTTwfMtCB82SGJHwipk6V/yBq9qB3xjh5Z6hbC/F7Wk6
 Y7sMqi/HS0BQ==
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="480835827"
Received: from rstossel-mobl.ger.corp.intel.com (HELO [10.254.148.251])
 ([10.254.148.251])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 03:27:08 -0700
To: Logan Gunthorpe <logang@deltatee.com>, Intel-gfx@lists.freedesktop.org
References: <20200909124457.296845-1-tvrtko.ursulin@linux.intel.com>
 <0d89654d-bc36-52ca-9066-f4d5c6e2a508@deltatee.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6afea622-4b07-569a-2610-dbe37de58d37@linux.intel.com>
Date: Thu, 10 Sep 2020 11:27:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <0d89654d-bc36-52ca-9066-f4d5c6e2a508@deltatee.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DMA mapped scatterlist walks
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
Cc: Tom Murphy <murphyt7@tcd.ie>, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>, Lu Baolu <baolu.lu@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/09/2020 20:29, Logan Gunthorpe wrote:
> On 2020-09-09 6:44 a.m., Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> When walking DMA mapped scatterlists sg_dma_len has to be used since it
>> can be different (coalesced) from the backing store entry.
>>
>> This also means we have to end the walk when encountering a zero length
>> DMA entry and cannot rely on the normal sg list end marker.
>>
>> Both issues were there in theory for some time but were hidden by the fact
>> Intel IOMMU driver was never coalescing entries. As there are ongoing
>> efforts to change this we need to start handling it.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> References: 85d1225ec066 ("drm/i915: Introduce & use new lightweight SGL iterators")
>> References: b31144c0daa8 ("drm/i915: Micro-optimise gen6_ppgtt_insert_entries()")
>> Reported-by: Tom Murphy <murphyt7@tcd.ie>
>> Suggested-by: Tom Murphy <murphyt7@tcd.ie> # __sgt_iter
>> Suggested-by: Logan Gunthorpe <logang@deltatee.com> # __sgt_iter
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Lu Baolu <baolu.lu@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/gen6_ppgtt.c    |  6 +++---
>>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c    | 17 ++++++++++-------
>>   drivers/gpu/drm/i915/gt/intel_gtt.h     |  2 +-
>>   drivers/gpu/drm/i915/i915_scatterlist.h | 12 ++++++++----
>>   4 files changed, 22 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
>> index fd0d24d28763..c0d17f87b00f 100644
>> --- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
>> +++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
>> @@ -131,17 +131,17 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
>>   
>>   	vaddr = kmap_atomic_px(i915_pt_entry(pd, act_pt));
>>   	do {
>> -		GEM_BUG_ON(iter.sg->length < I915_GTT_PAGE_SIZE);
>> +		GEM_BUG_ON(sg_dma_len(iter.sg) < I915_GTT_PAGE_SIZE);
>>   		vaddr[act_pte] = pte_encode | GEN6_PTE_ADDR_ENCODE(iter.dma);
>>   
>>   		iter.dma += I915_GTT_PAGE_SIZE;
>>   		if (iter.dma == iter.max) {
>>   			iter.sg = __sg_next(iter.sg);
>> -			if (!iter.sg)
>> +			if (!iter.sg || sg_dma_len(iter.sg) == 0)
>>   				break;
>>   
>>   			iter.dma = sg_dma_address(iter.sg);
>> -			iter.max = iter.dma + iter.sg->length;
>> +			iter.max = iter.dma + sg_dma_len(iter.sg);
>>   		}
>>   
>>   		if (++act_pte == GEN6_PTES) {
>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> index eb64f474a78c..0361b3dfdc72 100644
>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> @@ -372,19 +372,19 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
>>   	pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
>>   	vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
>>   	do {
>> -		GEM_BUG_ON(iter->sg->length < I915_GTT_PAGE_SIZE);
>> +		GEM_BUG_ON(sg_dma_len(iter->sg) < I915_GTT_PAGE_SIZE);
>>   		vaddr[gen8_pd_index(idx, 0)] = pte_encode | iter->dma;
>>   
>>   		iter->dma += I915_GTT_PAGE_SIZE;
>>   		if (iter->dma >= iter->max) {
>>   			iter->sg = __sg_next(iter->sg);
>> -			if (!iter->sg) {
>> +			if (!iter->sg || sg_dma_len(iter->sg) == 0) {
>>   				idx = 0;
>>   				break;
>>   			}
>>   
>>   			iter->dma = sg_dma_address(iter->sg);
>> -			iter->max = iter->dma + iter->sg->length;
>> +			iter->max = iter->dma + sg_dma_len(iter->sg);
>>   		}
>>   
>>   		if (gen8_pd_index(++idx, 0) == 0) {
>> @@ -414,7 +414,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
>>   {
>>   	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
>>   	u64 start = vma->node.start;
>> -	dma_addr_t rem = iter->sg->length;
>> +	dma_addr_t rem = sg_dma_len(iter->sg);
> 
> Seems a little odd to me to be storing a length in a dma_addr_t. But
> besides that small nit, this all makes sense to me.
> 
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

I did not spot that, thanks. I'll improve that in v2 since I need to add 
a 2nd patch to completely prepare i915 for this.

Regards,

Tvrtko




_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
