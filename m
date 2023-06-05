Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 168CB7221B6
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 11:07:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A34610E1B0;
	Mon,  5 Jun 2023 09:06:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01C2910E1B0
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 09:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685956016; x=1717492016;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=yhs3S2nEr+ocESY0IQYkJ6QH92+NZ8wnw8Rh2X5ViDo=;
 b=ToJM+Dyi1PUsOFJnGRl3OcldmudLyxHpsjMiRxasPgALMpuXGSo3Rgqr
 VesLeIZ59sDJlx6/omvYzXhrswCJ98QGZ4tr/2wus+SwzfMuFzYManx3v
 R1Yf9ZcjfEGo5ACw12rZj5OWN8lCtNzjo7mCywx+PL8Qw9MeCZ+FWsgO7
 ISS86IHeUTpg+5xDSrUnsNmYJSQF+474ss4RIqRJDAuGhcMq7jrn9tufg
 d6DwZIFIUBJrq2y+Q531cnMtT+wndANMG0P8DmsofJrQG3hWPq9I4ltzW
 gE45Rbc3P6VSPhEKvlFNZGOuXwMBNbatqP1XHa45ngqJseh25rr5NM8b/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="345912135"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="345912135"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:06:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="658999841"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="658999841"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.8.206])
 ([10.213.8.206])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:06:53 -0700
Message-ID: <f308a7e7-011d-bc32-a9c5-877911bd0e30@intel.com>
Date: Mon, 5 Jun 2023 11:06:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.2
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20230601144450.792228-1-andrzej.hajda@intel.com>
 <ZHmxXYT0ZcRlpJXI@ashyti-mobl2.lan>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <ZHmxXYT0ZcRlpJXI@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: limit lmem allocation size to
 succeed on SmallBars
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 02.06.2023 11:07, Andi Shyti wrote:
> Hi Andrzej,
> 
> On Thu, Jun 01, 2023 at 04:44:50PM +0200, Andrzej Hajda wrote:
>> In case system is short on mappable memory (256MB on SmallBar) allocation
>> of two 1GB buffers will fail.
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8300
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/selftest_tlb.c | 11 +++++++++--
>>   1 file changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
>> index 4493c8518e91b2..3bd6b540257b46 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
>> @@ -190,11 +190,18 @@ pte_tlbinv(struct intel_context *ce,
>>   
>>   static struct drm_i915_gem_object *create_lmem(struct intel_gt *gt)
>>   {
>> +	struct intel_memory_region *mr = gt->i915->mm.regions[INTEL_REGION_LMEM_0];
>> +	resource_size_t size = SZ_1G;
>> +
>>   	/*
>>   	 * Allocation of largest possible page size allows to test all types
>> -	 * of pages.
>> +	 * of pages. To succeed with both allocations, especially in case of Small
>> +	 * BAR, try to allocate no more than quarter of mappable memory.
>>   	 */
>> -	return i915_gem_object_create_lmem(gt->i915, SZ_1G, I915_BO_ALLOC_CONTIGUOUS);
>> +	if (mr && size > mr->io_size / 4)
>> +		size = mr->io_size / 4;
>> +
>> +	return i915_gem_object_create_lmem(gt->i915, size, I915_BO_ALLOC_CONTIGUOUS);
> 
> makes sense to me.
> 
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thx, patch merged.

Regards
Andrzej


> 
> Thanks,
> Andi

