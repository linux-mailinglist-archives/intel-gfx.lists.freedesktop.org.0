Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A6E2227DA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 17:53:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91FAB6E2DF;
	Thu, 16 Jul 2020 15:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E034899BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 15:53:13 +0000 (UTC)
IronPort-SDR: DaGY+W1rf3uZu3wjJBZ8tJgMYyKRFw7G293TTjc3LfTBAUIt+GZfYORBQnDpbJUi45QNdYBSI+
 zYva+5y5km4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="167544721"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="167544721"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 08:53:13 -0700
IronPort-SDR: uadUcr96VfDnMs0HN5eZ8sm9pUyP3/vAFhIGsmdL00rVtvO7ZZTcyLmAFUa8lN+988KhdRRHAP
 ZUoGUagARlhA==
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="460519226"
Received: from unknown (HELO [10.249.34.86]) ([10.249.34.86])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 08:53:11 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-28-chris@chris-wilson.co.uk>
 <4c92b001-fa38-1720-cd66-15038617342d@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <69739483-8392-1a89-f028-766d994e1281@linux.intel.com>
Date: Thu, 16 Jul 2020 16:53:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <4c92b001-fa38-1720-cd66-15038617342d@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 28/66] drm/i915/gem: Replace
 i915_gem_object.mm.mutex with reservation_ww_class
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/07/2020 16:43, Maarten Lankhorst wrote:
> Op 15-07-2020 om 13:51 schreef Chris Wilson:
>> Our goal is to pull all memory reservations (next iteration
>> obj->ops->get_pages()) under a ww_mutex, and to align those reservations
>> with other drivers, i.e. control all such allocations with the
>> reservation_ww_class. Currently, this is under the purview of the
>> obj->mm.mutex, and while obj->mm remains an embedded struct we can
>> "simply" switch to using the reservation_ww_class obj->base.resv->lock
>>
>> The major consequence is the impact on the shrinker paths as the
>> reservation_ww_class is used to wrap allocations, and a ww_mutex does
>> not support subclassing so we cannot do our usual trick of knowing that
>> we never recurse inside the shrinker and instead have to finish the
>> reclaim with a trylock. This may result in us failing to release the
>> pages after having released the vma. This will have to do until a better
>> idea comes along.
>>
>> However, this step only converts the mutex over and continues to treat
>> everything as a single allocation and pinning the pages. With the
>> ww_mutex in place we can remove the temporary pinning, as we can then
>> reserve all storage en masse.
>>
>> One last thing to do: kill the implict page pinning for active vma.
>> This will require us to invalidate the vma->pages when the backing store
>> is removed (and we expect that while the vma is active, we mark the
>> backing store as active so that it cannot be removed while the HW is
>> busy.)
>>
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

[snip]

>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
>> index dc8f052a0ffe..4e928103a38f 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
>> @@ -47,10 +47,7 @@ static bool unsafe_drop_pages(struct drm_i915_gem_object *obj,
>>   	if (!(shrink & I915_SHRINK_BOUND))
>>   		flags = I915_GEM_OBJECT_UNBIND_TEST;
>>   
>> -	if (i915_gem_object_unbind(obj, flags) == 0)
>> -		__i915_gem_object_put_pages(obj);
>> -
>> -	return !i915_gem_object_has_pages(obj);
>> +	return i915_gem_object_unbind(obj, flags) == 0;
>>   }
>>   
>>   static void try_to_writeback(struct drm_i915_gem_object *obj,
>> @@ -199,14 +196,14 @@ i915_gem_shrink(struct drm_i915_private *i915,
>>   
>>   			spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
>>   
>> -			if (unsafe_drop_pages(obj, shrink)) {
>> -				/* May arrive from get_pages on another bo */
>> -				mutex_lock(&obj->mm.lock);
>> +			if (unsafe_drop_pages(obj, shrink) &&
>> +			    i915_gem_object_trylock(obj)) {

> Why trylock? Because of the nesting? In that case, still use ww ctx if provided please

By "if provided" you mean for code paths where we are calling the 
shrinker ourselves, as opposed to reclaim, like shmem_get_pages?

That indeed sounds like the right thing to do, since all the get_pages 
from execbuf are in the reservation phase, collecting a list of GEM 
objects to lock, the ones to shrink sound like should be on that list.

>> +				__i915_gem_object_put_pages(obj);
>>   				if (!i915_gem_object_has_pages(obj)) {
>>   					try_to_writeback(obj, shrink);
>>   					count += obj->base.size >> PAGE_SHIFT;
>>   				}
>> -				mutex_unlock(&obj->mm.lock);
>> +				i915_gem_object_unlock(obj);
>>   			}
>>   
>>   			scanned += obj->base.size >> PAGE_SHIFT;
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
>> index ff72ee2fd9cd..ac12e1c20e66 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
>> @@ -265,7 +265,6 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
>>   	 * pages to prevent them being swapped out and causing corruption
>>   	 * due to the change in swizzling.
>>   	 */
>> -	mutex_lock(&obj->mm.lock);
>>   	if (i915_gem_object_has_pages(obj) &&
>>   	    obj->mm.madv == I915_MADV_WILLNEED &&
>>   	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
>> @@ -280,7 +279,6 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
>>   			obj->mm.quirked = true;
>>   		}
>>   	}
>> -	mutex_unlock(&obj->mm.lock);
>>   
>>   	spin_lock(&obj->vma.lock);
>>   	for_each_ggtt_vma(vma, obj) {
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>> index e946032b13e4..80907c00c6fd 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>> @@ -129,8 +129,15 @@ userptr_mn_invalidate_range_start(struct mmu_notifier *_mn,
>>   		ret = i915_gem_object_unbind(obj,
>>   					     I915_GEM_OBJECT_UNBIND_ACTIVE |
>>   					     I915_GEM_OBJECT_UNBIND_BARRIER);
>> -		if (ret == 0)
>> -			ret = __i915_gem_object_put_pages(obj);
>> +		if (ret == 0) {
>> +			/* ww_mutex and mmu_notifier is fs_reclaim tainted */
>> +			if (i915_gem_object_trylock(obj)) {
>> +				ret = __i915_gem_object_put_pages(obj);
>> +				i915_gem_object_unlock(obj);
>> +			} else {
>> +				ret = -EAGAIN;
>> +			}
>> +		}
> 
> I'm not sure upstream will agree with this kind of API:
> 
> 1. It will deadlock when RT tasks are used.

It will or it can? Which part? It will break out of the loop if trylock 
fails.

> 
> 2. You start throwing -EAGAIN because you don't have the correct ordering of locking, this needs fixing first.

Is it about correct ordering of locks or something else? If memory 
allocation is allowed under dma_resv.lock, then the opposite order 
cannot be taken in any case.

I've had a brief look at the amdgpu solution and maybe I misunderstood 
something, but it looks like a BKL approach with the device level 
notifier_lock. Their userptr notifier blocks on that one, not on 
dma_resv lock, but that also means their command submission 
(amdgpu_cs_submit) blocks on the same lock while obtaining backing store.

So it looks like a big hammer approach not directly related to the story 
of dma_resv locking. Maybe we could do the same big hammer approach, 
although I am not sure how it is deadlock free.

What happens for instance if someone submits an userptr batch which gets 
unmapped while amdgpu_cs_submit is holding the notifier_lock?

If you understand amdgpu better please share some insights. I certainly 
only looked at it briefly today so may be wrong.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
