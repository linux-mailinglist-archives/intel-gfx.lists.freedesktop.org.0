Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C765FEC60
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 12:13:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B36910E729;
	Fri, 14 Oct 2022 10:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49EFB10E72C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 10:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665742388; x=1697278388;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=FNCJQ8yR78cwQ55/aecGxH3Dreinl+9rU4X0bUm0Pf4=;
 b=KPAHOWQH68Ob/Vj2b04yBm262VxwuT2GvwvgwPUQl/OWOAlQRwOxG4ri
 cJlnLSOgFKHHxpKHDZPfSfsqsW1toCeT91JuIiwfAjc1r2xXuEdeqsIuv
 rkLTKKsipZugM09aT5s2Owjzxt7sNPylS7AnMDTgDC0iNnWjr2paRFU3M
 g1kB7K1dGO7oOmj9Y77bRz7zCwe+++h9qCSRCGpLfsy8qBP9bc0yvkRwN
 4MYkuHpx+yhq6V0RbvnLL8dKT9iv3kdCmQMDdimNZvdTouPLOHAe9IYrA
 WZH+2mZyVoYVJ3Ep+b2OlB2S3nnPBUAnvzBX6OGWZwcc/RKYcQjpITtUC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="285069883"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="285069883"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 03:13:07 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="622491900"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="622491900"
Received: from salamu-mobl1.ger.corp.intel.com (HELO [10.252.11.69])
 ([10.252.11.69])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 03:13:05 -0700
Message-ID: <30962664-a23f-f07c-1ffc-c9ff0bc9b0b6@intel.com>
Date: Fri, 14 Oct 2022 11:13:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.1
Content-Language: en-GB
To: "Das, Nirmoy" <nirmoy.das@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
 <43b8728b-4f05-3f32-d794-7b94ba65480c@intel.com>
 <fd2b6520-fc22-638f-4e40-415eba3091fc@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <fd2b6520-fc22-638f-4e40-415eba3091fc@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: Fix access_memory null
 pointer exception
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
Cc: andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 14/10/2022 10:27, Das, Nirmoy wrote:
> Hi Matt
> 
> On 10/14/2022 10:39 AM, Matthew Auld wrote:
>> On 13/10/2022 18:56, Jonathan Cavitt wrote:
>>> i915_ttm_to_gem can return a NULL pointer, which is
>>> dereferenced in i915_ttm_access_memory without first
>>> checking if it is NULL.  Inspecting
>>> i915_ttm_io_mem_reserve, it appears the correct
>>> behavior in this case is to return -EINVAL.
>>
>> The GEM object has already been dereferenced before this point, if you 
>> look at the caller (vm_access_ttm). The NULL obj thing is to identify 
>> "ttm ghost objects", and I don't think a normal userpace object can 
>> suddenly become one (access_memory comes from ptrace). AFAIK ghost 
>> objects are just for temporarily hanging on to some memory/state, 
>> while the dma-resv is busy. In the places where ttm is the one giving 
>> us the object, then it might be possible to see these types of 
>> objects, since ttm could in theory pass one in (like during eviction).
> 
> 
> Yes, we should not hit this.  Thanks for the nice "ttm ghost objects" 
> reminder :)
> 
> 
> I think we can still have this check to avoid code analysis tool 
> warnings, what do you think ?

IMHO I think it just makes it harder to understand the code, since 
conceptually it should be impossible, given how "ghost objects" actually 
work. Adding such a check gives the impression that it is somehow now 
possible to be given one here (like with eviction etc). AFAIK just 
letting it crash is fine, instead of littering the code with NULL checks 
for stuff that is never meant to be NULL and would be a driver bug. Also 
there are a bunch of other places not checking that i915_ttm_to_gem() 
returns NULL, so why just here? Did the code analysis tool find 
something? Also why doesn't it complain about vm_access_ttm(), which is 
the one actually calling access_memory() and is itself also doing 
i915_ttm_to_gem() and also not checking for NULL?

> 
> 
> Thanks,
> 
> Nirmoy
> 
>>
>>>
>>> Fixes: 26b15eb0 ("drm/i915/ttm: implement access_memory")
>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>> Suggested-by: John C Harrison <John.C.Harrison@intel.com>
>>> CC: Matthew Auld <matthew.auld@intel.com>
>>> CC: Andrzej Hajda <andrzej.hajda@intel.com>
>>> CC: Nirmoy Das <nirmoy.das@intel.com>
>>> CC: Andi Shyti <andi.shyti@linux.intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 9 +++++++--
>>>   1 file changed, 7 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c 
>>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> index d63f30efd631..b569624f2ed9 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> @@ -704,11 +704,16 @@ static int i915_ttm_access_memory(struct 
>>> ttm_buffer_object *bo,
>>>                     int len, int write)
>>>   {
>>>       struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
>>> -    resource_size_t iomap = obj->mm.region->iomap.base -
>>> -        obj->mm.region->region.start;
>>> +    resource_size_t iomap;
>>>       unsigned long page = offset >> PAGE_SHIFT;
>>>       unsigned long bytes_left = len;
>>>   +    if (!obj)
>>> +        return -EINVAL;
>>> +
>>> +    iomap = obj->mm.region->iomap.base -
>>> +        obj->mm.region->region.start;
>>> +
>>>       /*
>>>        * TODO: For now just let it fail if the resource is non-mappable,
>>>        * otherwise we need to perform the memcpy from the gpu here, 
>>> without
