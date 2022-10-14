Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6DB5FEBFF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 11:44:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5DA110E047;
	Fri, 14 Oct 2022 09:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAFA310E047
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 09:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665740655; x=1697276655;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=jQdXYbZQ4CBiGkJHbYtXA9cMo03cJ140l3BTApQENI4=;
 b=a9zn1TSXqr9qCf3Rp3QG3eLBcXBi6tNjLbFbc60ufejzoydwO+ManRHM
 ctWuHYv97IxB7eCHS+LAsO8m3d1PjJF/KV74aaYjnew1cI0JfyW1Z0sEm
 +8GJXuLVa/jYepIyJSsA4PYk3SvXysI8N4w54STbHAxbwHY6G7s60UzGr
 9PQR67Q8HQNtmesjigxDOXc54ACmDoXwjsFFiQmoD4upbj2q2bpZqg/PN
 y8B2kn/HLXtx+87SO6bP13bH9b0+QUhuADLEB2T4AT75O74sr9UV3Xxmt
 akMylnyw/tu2dMZ9Ut8YfS4CCNKPK7lqvf1NoOPMPek1NzE+eVjnGFb+s w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="369527595"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="369527595"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 02:44:15 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="732241445"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="732241445"
Received: from salamu-mobl1.ger.corp.intel.com (HELO [10.252.11.69])
 ([10.252.11.69])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 02:44:13 -0700
Message-ID: <d6b14cec-ef71-15ff-161b-de9c5e9e4d1c@intel.com>
Date: Fri, 14 Oct 2022 10:44:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.1
Content-Language: en-GB
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
 <43b8728b-4f05-3f32-d794-7b94ba65480c@intel.com>
 <Y0kkIzaDeMxpuawT@ashyti-mobl2.lan>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <Y0kkIzaDeMxpuawT@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, andrzej.hajda@intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 14/10/2022 09:56, Andi Shyti wrote:
> On Fri, Oct 14, 2022 at 09:39:52AM +0100, Matthew Auld wrote:
>> On 13/10/2022 18:56, Jonathan Cavitt wrote:
>>> i915_ttm_to_gem can return a NULL pointer, which is
>>> dereferenced in i915_ttm_access_memory without first
>>> checking if it is NULL.  Inspecting
>>> i915_ttm_io_mem_reserve, it appears the correct
>>> behavior in this case is to return -EINVAL.
>>
>> The GEM object has already been dereferenced before this point, if you look
>> at the caller (vm_access_ttm). The NULL obj thing is to identify "ttm ghost
>> objects", and I don't think a normal userpace object can suddenly become one
>> (access_memory comes from ptrace). AFAIK ghost objects are just for
>> temporarily hanging on to some memory/state, while the dma-resv is busy. In
>> the places where ttm is the one giving us the object, then it might be
>> possible to see these types of objects, since ttm could in theory pass one
>> in (like during eviction).
> 
> True that, but because from a code persepctive we can still receive
> NULL, I think the check is correct, perhaps we could:
> 
> 	if (unlikely(!obj))
> 		return -EINVAL;

Hmm, so that will dereference some pointer, and then later check if it 
is NULL here? Or do you mean to move this into vm_access()? If we are 
given a "ghost object" for ptrace this would likely mean we have a very 
nasty bug somewhere (unless I'm misunderstanding something), and so 
returning a normal user error here doesn't seem right to me (maybe this 
just hides the issue)? Letting it crash seems fine to me tbh. It also 
makes the code harder to understand IMO, because looking at this it now 
suggests that it is somehow possible to have a "ghost object" here. Also 
there are a fair few places calling i915_ttm_to_gem() which already 
don't check for NULL, since it should be impossible, like it should be here.

> 
> Andi
> 
>>> Fixes: 26b15eb0 ("drm/i915/ttm: implement access_memory")
>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>> Suggested-by: John C Harrison <John.C.Harrison@intel.com>
>>> CC: Matthew Auld <matthew.auld@intel.com>
>>> CC: Andrzej Hajda <andrzej.hajda@intel.com>
>>> CC: Nirmoy Das <nirmoy.das@intel.com>
>>> CC: Andi Shyti <andi.shyti@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 9 +++++++--
>>>    1 file changed, 7 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> index d63f30efd631..b569624f2ed9 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> @@ -704,11 +704,16 @@ static int i915_ttm_access_memory(struct ttm_buffer_object *bo,
>>>    				  int len, int write)
>>>    {
>>>    	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
>>> -	resource_size_t iomap = obj->mm.region->iomap.base -
>>> -		obj->mm.region->region.start;
>>> +	resource_size_t iomap;
>>>    	unsigned long page = offset >> PAGE_SHIFT;
>>>    	unsigned long bytes_left = len;
>>> +	if (!obj)
>>> +		return -EINVAL;
>>> +
>>> +	iomap = obj->mm.region->iomap.base -
>>> +		obj->mm.region->region.start;
>>> +
>>>    	/*
>>>    	 * TODO: For now just let it fail if the resource is non-mappable,
>>>    	 * otherwise we need to perform the memcpy from the gpu here, without
