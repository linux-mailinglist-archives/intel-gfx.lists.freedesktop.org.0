Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2E85B19C0
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 12:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 102E510EA8E;
	Thu,  8 Sep 2022 10:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0AE910EA90
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 10:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662632156; x=1694168156;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=6Zy+jxGCmxvAltvpRDTNxgZUG8m6YMkUkCRR+QjspSA=;
 b=eF2MbJ6HUULO8NIA7E+JRzox4IAM2zmixXScf8nlC84Z9kBQU3nh64Fp
 RjHut+kOV/9RgijwgCtuMcizK88yoy8vtrZ6IQdLLhO7HrMpFQqtbO4M3
 Gx/Ue9Nao+7oEA8S3dlhEzfa5x6HBJWD1S8XQXOKVVxQ7fMCZDXh+GD95
 iLuEhq9alM+whn81OHdM49wNT7oqfyxp+liAyXNQJbSwKuWdF2OPH7ZmC
 FYrS493zt8Wd9KN6bRkR0JNNikPQ6XrNj/49WKZVLb7b7mDDAnJtIE4iV
 z8eX9qwehVwPe2Ei6i2Me6vfm2IJK0W0Sd0iF8mEK8bQCSEzaIKCjpfem g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="277518070"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="277518070"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 03:15:54 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="676625276"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.222.34])
 ([10.251.222.34])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 03:15:52 -0700
Message-ID: <0b069343-58ec-f48b-a33c-d42d9479c1dc@linux.intel.com>
Date: Thu, 8 Sep 2022 12:15:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>, 
 intel-gfx@lists.freedesktop.org
References: <20220907172641.12555-1-nirmoy.das@intel.com>
 <99f197d9-0b00-8b7d-011f-cb6318a99c66@intel.com>
 <00e1d912-c3ba-71d9-af94-b03e57053a23@linux.intel.com>
 <52670f86-b4e8-199f-fc56-1a595330e347@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <52670f86-b4e8-199f-fc56-1a595330e347@intel.com>
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


On 9/8/2022 12:13 PM, Matthew Auld wrote:
> On 08/09/2022 10:46, Das, Nirmoy wrote:
>>
>> On 9/8/2022 11:40 AM, Matthew Auld wrote:
>>> On 07/09/2022 18:26, Nirmoy Das wrote:
>>>> Fix regression introduced by commit:
>>>> "drm/i915: Individualize fences before adding to dma_resv obj"
>>>> which sets obj->read_domains to 0 for both read and write paths.
>>>> Also set obj->write_domain to 0 on read path which was removed by
>>>> the commit.
>>>>
>>>> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6639
>>>> Fixes: 842d9346b2fd ("drm/i915: Individualize fences before adding 
>>>> to dma_resv obj")
>>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>>> Cc: <stable@vger.kernel.org> # v5.16+
>>>> Cc: Matthew Auld <matthew.auld@intel.com>
>>>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>>>
>>> Should I go ahead and push this?
>>
>>
>> Yes,  please go ahead. Lots people are effected because of this 
>> regression.
>
> Pushed with:
> Fixes: 420a07b841d0 ("drm/i915: Individualize fences before adding to 
> dma_resv obj")
>
> Otherwise dim complains it seems.


Thanks, Matt!


Nirmoy

>
>>
>>
>> Nirmoy
>>
>>>
>>>> ---
>>>>   drivers/gpu/drm/i915/i915_vma.c | 3 ++-
>>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_vma.c 
>>>> b/drivers/gpu/drm/i915/i915_vma.c
>>>> index 260371716490..373582cfd8f3 100644
>>>> --- a/drivers/gpu/drm/i915/i915_vma.c
>>>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>>>> @@ -1882,12 +1882,13 @@ int _i915_vma_move_to_active(struct 
>>>> i915_vma *vma,
>>>>           enum dma_resv_usage usage;
>>>>           int idx;
>>>>   -        obj->read_domains = 0;
>>>>           if (flags & EXEC_OBJECT_WRITE) {
>>>>               usage = DMA_RESV_USAGE_WRITE;
>>>>               obj->write_domain = I915_GEM_DOMAIN_RENDER;
>>>> +            obj->read_domains = 0;
>>>>           } else {
>>>>               usage = DMA_RESV_USAGE_READ;
>>>> +            obj->write_domain = 0;
>>>>           }
>>>>             dma_fence_array_for_each(curr, idx, fence)
