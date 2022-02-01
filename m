Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6B94A5929
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 10:26:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A88D10ED7A;
	Tue,  1 Feb 2022 09:26:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F9010ED7A
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 09:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643707558; x=1675243558;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=FD9kDPPCy9WrCt4NbnzEJwGOe9cUkMgW2dOpOLOxIw0=;
 b=mR8DVCokSbqHza0QjstPYXd4QiyF26H29AkuIryeWkFPbMilRpVBXTsf
 olcvHJXXjo159Kpsvv6GR4wMtWRsNnEjWXLuF9mF3xMuNbNqWprEdfhPG
 t1VsrjjbpeCiJW8I2B5A/+YMxqfCiIfSkXK22vTJy+gbnVLe6uOysDr+X
 Tyq91+adf2gr7u9yC22jXGQRP9RRgtYzuP1MKp79ugDyIL/tB1tUanRYC
 HD9yNDGniuG3F5as1TZHEfIK5erPK8JQG28QiRHr9ShCACM6MNlv5dpML
 vfzTh+hVUjb4MruVDNT44S/JyCtDaqMdXJx7g/66Mr+aTGbHHtsxCkAij A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="247870481"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="247870481"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 01:25:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="698344532"
Received: from bconlan-mobl1.ger.corp.intel.com (HELO [10.213.212.46])
 ([10.213.212.46])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 01:25:55 -0800
Message-ID: <95cef15f-3464-aaff-c1cc-96e00b13f48c@linux.intel.com>
Date: Tue, 1 Feb 2022 09:25:53 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Michael Cheng <michael.cheng@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220128221020.188253-1-michael.cheng@intel.com>
 <20220128221020.188253-5-michael.cheng@intel.com>
 <d1f41d2d-6b99-6d7d-d7ee-df789da077df@linux.intel.com>
 <cbf63d18-9443-d4ee-62b4-784079bdf28a@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <cbf63d18-9443-d4ee-62b4-784079bdf28a@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/: Re-work clflush_write32
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
Cc: lucas.demarchi@intel.com, matthew.auld@intel.com, mika.kuoppala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 31/01/2022 17:02, Michael Cheng wrote:
> Hey Tvrtko,
> 
> Are you saying when adding drm_clflush_virt_range(addr, sizeof(addr), 
> this function forces an x86 code path only? If that is the case, 
> drm_clflush_virt_range(addr, sizeof(addr) currently has ifdefs that 
> seperate out x86 and powerpc, so we can add an ifdef for arm in the near 
> future when needed.

No, I was noticing that the change you are making in this patch, while 
it indeed fixes a build failure, it is a code path which does not get 
executed on Arm at all.

So what effectively happens is a single assembly instruction gets 
replaced with a function call on all integrated GPUs up to and including 
Tigerlake.

That was the slightly annoying part I was referring to and asking 
whether it was discussed before.

Sadly I don't think there is a super nice solution apart from 
duplicating drm_clflush_virt_range as for example i915_clflush_range and 
having it static inline. That would allow the integrated GPU code path 
to remain of the same performance profile, while solving the Arm 
problem. However it would be code duplication so might be frowned upon.

I'd be tempted to go that route but it is something which needs a bit of 
discussion if that hasn't happened already.

Regards,

Tvrtko

> On 2022-01-31 6:55 a.m., Tvrtko Ursulin wrote:
>> On 28/01/2022 22:10, Michael Cheng wrote:
>>> Use drm_clflush_virt_range instead of clflushopt and remove the memory
>>> barrier, since drm_clflush_virt_range takes care of that.
>>>
>>> Signed-off-by: Michael Cheng <michael.cheng@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 8 +++-----
>>>   1 file changed, 3 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c 
>>> b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> index 498b458fd784..0854276ff7ba 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> @@ -1332,10 +1332,8 @@ static void *reloc_vaddr(struct i915_vma *vma,
>>>   static void clflush_write32(u32 *addr, u32 value, unsigned int 
>>> flushes)
>>>   {
>>>       if (unlikely(flushes & (CLFLUSH_BEFORE | CLFLUSH_AFTER))) {
>>> -        if (flushes & CLFLUSH_BEFORE) {
>>> -            clflushopt(addr);
>>> -            mb();
>>> -        }
>>> +        if (flushes & CLFLUSH_BEFORE)
>>> +            drm_clflush_virt_range(addr, sizeof(addr));
>>>             *addr = value;
>>>   @@ -1347,7 +1345,7 @@ static void clflush_write32(u32 *addr, u32 
>>> value, unsigned int flushes)
>>>            * to ensure ordering of clflush wrt to the system.
>>>            */
>>>           if (flushes & CLFLUSH_AFTER)
>>> -            clflushopt(addr);
>>> +            drm_clflush_virt_range(addr, sizeof(addr));
>>>       } else
>>>           *addr = value;
>>>   }
>>
>> Slightly annoying thing here (maybe in some other patches from the 
>> series as well) is that the change adds a function call to x86 only 
>> code path, because relocations are not supported on discrete as per:
>>
>> static in
>> eb_validate_vma(...)
>>         /* Relocations are disallowed for all platforms after TGL-LP. 
>> This
>>          * also covers all platforms with local memory.
>>          */
>>
>>         if (entry->relocation_count &&
>>             GRAPHICS_VER(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
>>                 return -EINVAL;
>>
>> How acceptable would be, for the whole series, to introduce a static 
>> inline i915 cluflush wrapper and so be able to avoid functions calls 
>> on x86? Is this something that has been discussed and discounted already?
>>
>> Regards,
>>
>> Tvrtko
>>
>> P.S. Hmm I am now reminded of my really old per platform build 
>> patches. With them you would be able to compile out large portions of 
>> the driver when building for ARM. Probably like a 3rd if my memory 
>> serves me right.
