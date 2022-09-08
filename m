Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 528185B1923
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 11:46:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3CBE10E9EE;
	Thu,  8 Sep 2022 09:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A14810E9EE
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 09:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662630384; x=1694166384;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KX+aqeoTvsjGH2eb7imzK1GrMokb9TdTV4FVPQ2Wed8=;
 b=ZnkCNV3AYzUYpWhmjQ33i/0ZS04iSSwN43DszDQBsWWDl2ibSATJZtqr
 lUcNy3LpMpel/HtFtGPnv/j47kpDw8VahyqIJTYBO4ZwmW6hHmSAiF7s1
 6BQjm838LaX3m0dklulGtZC0LWLy2CnLkIqBYx7qHuDnQmUOPR2oG5dc9
 UdDpPvZ9uw0CPJ8ipO5PXR9AQdf/K5e7bumPHhOUQ2qGfv6An+Eehf4fb
 jub2orbSAflpT3IgJTEp54fWuZr94ubkFW5940u0I/P2jOEACb0JA4ICs
 5T8yGL2jts6mKn8YmXKY5erR8X9Rj4ryLak77JWOZJb/R511BDDQvlY4y A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="284144635"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="284144635"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 02:46:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="676614310"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.222.34])
 ([10.251.222.34])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 02:46:21 -0700
Message-ID: <00e1d912-c3ba-71d9-af94-b03e57053a23@linux.intel.com>
Date: Thu, 8 Sep 2022 11:46:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
To: Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>, 
 intel-gfx@lists.freedesktop.org
References: <20220907172641.12555-1-nirmoy.das@intel.com>
 <99f197d9-0b00-8b7d-011f-cb6318a99c66@intel.com>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <99f197d9-0b00-8b7d-011f-cb6318a99c66@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Set correct domains values at
 _i915_vma_move_to_active
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
Cc: chris.p.wilson@intel.com, andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/8/2022 11:40 AM, Matthew Auld wrote:
> On 07/09/2022 18:26, Nirmoy Das wrote:
>> Fix regression introduced by commit:
>> "drm/i915: Individualize fences before adding to dma_resv obj"
>> which sets obj->read_domains to 0 for both read and write paths.
>> Also set obj->write_domain to 0 on read path which was removed by
>> the commit.
>>
>> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6639
>> Fixes: 842d9346b2fd ("drm/i915: Individualize fences before adding to 
>> dma_resv obj")
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Cc: <stable@vger.kernel.org> # v5.16+
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>
> Should I go ahead and push this?


Yes,  please go ahead. Lots people are effected because of this regression.


Nirmoy

>
>> ---
>>   drivers/gpu/drm/i915/i915_vma.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_vma.c 
>> b/drivers/gpu/drm/i915/i915_vma.c
>> index 260371716490..373582cfd8f3 100644
>> --- a/drivers/gpu/drm/i915/i915_vma.c
>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>> @@ -1882,12 +1882,13 @@ int _i915_vma_move_to_active(struct i915_vma 
>> *vma,
>>           enum dma_resv_usage usage;
>>           int idx;
>>   -        obj->read_domains = 0;
>>           if (flags & EXEC_OBJECT_WRITE) {
>>               usage = DMA_RESV_USAGE_WRITE;
>>               obj->write_domain = I915_GEM_DOMAIN_RENDER;
>> +            obj->read_domains = 0;
>>           } else {
>>               usage = DMA_RESV_USAGE_READ;
>> +            obj->write_domain = 0;
>>           }
>>             dma_fence_array_for_each(curr, idx, fence)
