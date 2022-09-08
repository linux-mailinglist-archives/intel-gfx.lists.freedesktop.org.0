Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 576D35B19B5
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 12:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9FAF10E9A8;
	Thu,  8 Sep 2022 10:13:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0830E10E9A8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 10:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662632012; x=1694168012;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=JzRs0jTm42XqLhHOzR171byF5/7wgrUuFaGxn8svxQM=;
 b=A5FpaIExJEUQh5XjFPU3ygJLcDFJ9czYghMQt5DnGtWARdtINsYKS2FG
 0jhw3UvaEyKKn/AUi/NseAIwfmG/45HNM8kV6EfqaWm1nLZwrxlpdH0M7
 Cf83b7ypt2da3aQR7hVe9KlBDD+aRiGdVxtu0Sov8putqzsNYqnxvJ9Z+
 fxd7rg7Ne6e/DH2Ldtwls2PglwXsxaPAkhpkLzl4I5xF4KwBmg4KjxFyr
 lknAxNljhwJx+BIkWgIWJXR7wU78c5RpdGUBM9kJXI5m/Ur7pDHy71/au
 P98v81jLp52BI8Ni35Yi5vko/QtvHZMBOfbnDO+lK1F8o5MKyh4z0Qjpa Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="294713644"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="294713644"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 03:13:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="943285832"
Received: from donalmur-mobl.ger.corp.intel.com (HELO [10.252.31.184])
 ([10.252.31.184])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 03:13:30 -0700
Message-ID: <52670f86-b4e8-199f-fc56-1a595330e347@intel.com>
Date: Thu, 8 Sep 2022 11:13:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
Content-Language: en-GB
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220907172641.12555-1-nirmoy.das@intel.com>
 <99f197d9-0b00-8b7d-011f-cb6318a99c66@intel.com>
 <00e1d912-c3ba-71d9-af94-b03e57053a23@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <00e1d912-c3ba-71d9-af94-b03e57053a23@linux.intel.com>
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

On 08/09/2022 10:46, Das, Nirmoy wrote:
> 
> On 9/8/2022 11:40 AM, Matthew Auld wrote:
>> On 07/09/2022 18:26, Nirmoy Das wrote:
>>> Fix regression introduced by commit:
>>> "drm/i915: Individualize fences before adding to dma_resv obj"
>>> which sets obj->read_domains to 0 for both read and write paths.
>>> Also set obj->write_domain to 0 on read path which was removed by
>>> the commit.
>>>
>>> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6639
>>> Fixes: 842d9346b2fd ("drm/i915: Individualize fences before adding to 
>>> dma_resv obj")
>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>> Cc: <stable@vger.kernel.org> # v5.16+
>>> Cc: Matthew Auld <matthew.auld@intel.com>
>>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>>
>> Should I go ahead and push this?
> 
> 
> Yes,  please go ahead. Lots people are effected because of this regression.

Pushed with:
Fixes: 420a07b841d0 ("drm/i915: Individualize fences before adding to 
dma_resv obj")

Otherwise dim complains it seems.

> 
> 
> Nirmoy
> 
>>
>>> ---
>>>   drivers/gpu/drm/i915/i915_vma.c | 3 ++-
>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_vma.c 
>>> b/drivers/gpu/drm/i915/i915_vma.c
>>> index 260371716490..373582cfd8f3 100644
>>> --- a/drivers/gpu/drm/i915/i915_vma.c
>>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>>> @@ -1882,12 +1882,13 @@ int _i915_vma_move_to_active(struct i915_vma 
>>> *vma,
>>>           enum dma_resv_usage usage;
>>>           int idx;
>>>   -        obj->read_domains = 0;
>>>           if (flags & EXEC_OBJECT_WRITE) {
>>>               usage = DMA_RESV_USAGE_WRITE;
>>>               obj->write_domain = I915_GEM_DOMAIN_RENDER;
>>> +            obj->read_domains = 0;
>>>           } else {
>>>               usage = DMA_RESV_USAGE_READ;
>>> +            obj->write_domain = 0;
>>>           }
>>>             dma_fence_array_for_each(curr, idx, fence)
