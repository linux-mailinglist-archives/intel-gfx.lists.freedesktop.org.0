Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 505DD5235D1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 16:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E13410FB58;
	Wed, 11 May 2022 14:41:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 666DC10FB57
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 14:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652280115; x=1683816115;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=22BcvXZnvbkrESJyACzZVizXpPuFLJtS0oqPpzRgn4Y=;
 b=W7JJY9iUv+H7GTRQ/5J2Sxb45tssDRUkY6R1ujcice5tUZdyMinfLNwn
 kLGM8H/hntMIacv613WYs09/AwVSLyRuGNrYZe3xXmDBul7EM0CbY4bXn
 qJRK1ygfDZNKYhQHUmo7F3Y/T3MrWub6mMryzakmEy30orA4BOOCuZUmc
 qePnb/b3Fi8R5jZ7SvWBoVSBngOI3HItS8inD5LTmrmi88RoS8c2kZejb
 pdek7pQWcx1TEBAKkPJ9gB6i03T5msGSkdYIUgHM/DdgiDtjKrZBdLcFi
 Xu+WIXFrRchNQqk+F8JTAtUtEcemdgpS/yP1aS28aiNoRbaSUdqWJNx7g g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="269651983"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="269651983"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 07:41:54 -0700
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="566208381"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.49.120])
 ([10.252.49.120])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 07:41:53 -0700
Message-ID: <bbdafa06-e6e1-57ba-33d7-2c994408061c@linux.intel.com>
Date: Wed, 11 May 2022 16:41:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Matthew Auld <matthew.william.auld@gmail.com>,
 "Das, Nirmoy" <nirmoy.das@intel.com>
References: <20220511102509.19927-1-nirmoy.das@intel.com>
 <CAM0jSHNkp6M2Tp+8zuiGQQZp6nMhxyy1EPoKNbrnFpqJ2jpByg@mail.gmail.com>
 <2c1189f7-82a9-aa3c-1fa8-6f706a115c92@intel.com>
 <CAM0jSHMypU=cqPd9zqSvETCEBmYx=u4hzZDEz42bcbChSM7rGw@mail.gmail.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <CAM0jSHMypU=cqPd9zqSvETCEBmYx=u4hzZDEz42bcbChSM7rGw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: don't treat small BAR as an
 error with CSS
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/11/2022 4:14 PM, Matthew Auld wrote:
> On Wed, 11 May 2022 at 13:34, Das, Nirmoy <nirmoy.das@intel.com> wrote:
>>
>> On 5/11/2022 1:31 PM, Matthew Auld wrote:
>>> On Wed, 11 May 2022 at 11:25, Nirmoy Das <nirmoy.das@intel.com> wrote:
>>>> Determine lmem_size using ADDR_RANGE register so that module
>>>> load on platfrom with small bar with css  works.
>>>>
>>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>>> ---
>>>> I once reserved a dg2 machine with small bar and module load failed on
>>>> it. I can't find that machine anymore hence sending this as RFC.
>>> AFAIK we currently don't want to load the driver on such dg2
>>> configurations, until we first have all the uapi bits landed.
>>
>> Ok, sounds good.
>>
>>>    The last
>>> patch in that series then turns this on, or at least that's what I
>>> have locally.
>>>
>>>>    drivers/gpu/drm/i915/gt/intel_region_lmem.c | 11 ++++++++++-
>>>>    1 file changed, 10 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>>>> index f5111c0a0060..a55eecac104e 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>>>> @@ -100,10 +100,19 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>>>>           if (!IS_DGFX(i915))
>>>>                   return ERR_PTR(-ENODEV);
>>>>
>>>> +       if (IS_DG1(uncore->i915)) {
>>>> +               lmem_size = pci_resource_len(pdev, 2);
>>> We can drop this, since this is set below also.
>>>
>>>> +       } else {
>>>> +               resource_size_t lmem_range;
>>>> +
>>>> +               lmem_range = intel_gt_read_register(&i915->gt0, XEHPSDV_TILE0_ADDR_RANGE) & 0xFFFF;
>>>> +               lmem_size = lmem_range >> XEHPSDV_TILE_LMEM_RANGE_SHIFT;
>>>> +               lmem_size *= SZ_1G;
>>> We can move this under HAS_FLAT_CCS.
>>>
>>> I think we need another patch that then just gracefully returns
>>> -EINVAL if this is a small-bar configuration, along with maybe some
>>> helpful drm_err() or so, which can be removed once we properly support
>>> it?
>> I will resend with this suggestion.
>>
>>
>>>    Also it looks like we are returning ENODEV in some places here,
>>> which looks iffy.
>>
>> We do
>>
>>           io_start = pci_resource_start(pdev, 2);
>>           io_size = min(pci_resource_len(pdev, 2), lmem_size);
>>           if (!io_size)
>>                   return ERR_PTR(-ENODEV);
>>
>> Is this return looks iffy?
> Yeah, since it will only skips the lmem init, without erroring out
> during module load, which I guess leads to nasty errors laters. Also
> the lmem_size < flat_ccs_base check.


Yes, makes sense. Going to send patch to clean that up.


Thanks,

Nirmoy

>
>>
>> Thanks,
>>
>> Nirmoy
>>
>>>> +       }
>>>> +
>>>>           if (HAS_FLAT_CCS(i915)) {
>>>>                   u64 tile_stolen, flat_ccs_base;
>>>>
>>>> -               lmem_size = pci_resource_len(pdev, 2);
>>>>                   flat_ccs_base = intel_gt_read_register(gt, XEHPSDV_FLAT_CCS_BASE_ADDR);
>>>>                   flat_ccs_base = (flat_ccs_base >> XEHPSDV_CCS_BASE_SHIFT) * SZ_64K;
>>>>
>>>> --
>>>> 2.35.1
>>>>
