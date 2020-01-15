Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D602413C954
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 17:29:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75AF489D6C;
	Wed, 15 Jan 2020 16:29:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9B9E89D6C
 for <Intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 16:29:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 08:29:43 -0800
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="213760210"
Received: from mdanino-mobl1.ger.corp.intel.com (HELO [10.252.23.174])
 ([10.252.23.174])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Jan 2020 08:29:34 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200115152437.13207-1-tvrtko.ursulin@linux.intel.com>
 <b2917343-c654-2300-9716-7747d8b88be8@linux.intel.com>
 <157910253984.14122.1935242870824479556@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b97339bd-d06a-3ac9-b09c-811d6d72226a@linux.intel.com>
Date: Wed, 15 Jan 2020 16:29:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157910253984.14122.1935242870824479556@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Align engine->uabi_class/instance
 with i915_drm.h
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


On 15/01/2020 15:35, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-01-15 15:28:19)
>>
>> On 15/01/2020 15:24, Tvrtko Ursulin wrote:
>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>
>>> In our ABI we have defined I915_ENGINE_CLASS_INVALID_NONE and
>>> I915_ENGINE_CLASS_INVALID_VIRTUAL as negative values which creates
>>> implicit coupling with type widths used in, also ABI, struct
>>> i915_engine_class_instance.
>>>
>>> When for instance we export engine->uabi_class
>>> I915_ENGINE_CLASS_INVALID_VIRTUAL from our our tracepoints, because the
>>> type of the former is u8 in contrast to u16 defined in the ABI, 254 will
>>> be returned instead of 65534 which userspace would legitimately expect.
>>>
>>> Therefore we need to align the type used to store engine ABI class and
>>> instance.
>>>
>>> I did not find any other user visible inconsistency apart from the
>>> tracepoints so I think importance of the fix is low.
>>
>> Alternatives:
>>
>> 1.
>> Embed struct i915_engine_class_instance in struct intel_engine_cs, but
>> downside is more churn.
> 
> Could do. It would seem to make sense.
>   
>> 2.
>> Only tweak the tracepoints to cast back and forth, but is it possible to
>> cast from unsigned to signed and get a negative number?
>>
>> 3.
>> Do nothing, does anyone cares?
> 
> It actually changes the value reported by GET_ENGINES for a virtual
> engine, right?
> 
> engine->uabi_instance is u8, so u16 ci.engine_instance =
> engine->uabi_instance is zero extended, not sign extended.
> 
> And we did say that is expected to be (u16)-2 already.
> 
> So cc:stable

You are correct, yep, was thinking about engine query where it doesn't 
apply but forgot about get_engines where it does.

>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
>>> ---
>>>    drivers/gpu/drm/i915/gem/i915_gem_busy.c     | 12 ++++++------
>>>    drivers/gpu/drm/i915/gt/intel_engine_types.h |  4 ++--
>>>    2 files changed, 8 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_busy.c b/drivers/gpu/drm/i915/gem/i915_gem_busy.c
>>> index 3d4f5775a4ba..25235ef630c1 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_busy.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_busy.c
>>> @@ -9,16 +9,16 @@
>>>    #include "i915_gem_ioctls.h"
>>>    #include "i915_gem_object.h"
>>>    
>>> -static __always_inline u32 __busy_read_flag(u8 id)
>>> +static __always_inline u32 __busy_read_flag(u16 id)
>>>    {
>>> -     if (id == (u8)I915_ENGINE_CLASS_INVALID)
>>> +     if (id == (u16)I915_ENGINE_CLASS_INVALID)
>>>                return 0xffff0000u;
>>>    
>>>        GEM_BUG_ON(id >= 16);
>>>        return 0x10000u << id;
>>>    }
>>>    
>>> -static __always_inline u32 __busy_write_id(u8 id)
>>> +static __always_inline u32 __busy_write_id(u16 id)
>>>    {
>>>        /*
>>>         * The uABI guarantees an active writer is also amongst the read
>>> @@ -29,14 +29,14 @@ static __always_inline u32 __busy_write_id(u8 id)
>>>         * last_read - hence we always set both read and write busy for
>>>         * last_write.
>>>         */
>>> -     if (id == (u8)I915_ENGINE_CLASS_INVALID)
>>> +     if (id == (u16)I915_ENGINE_CLASS_INVALID)
>>>                return 0xffffffffu;
>>>    
>>>        return (id + 1) | __busy_read_flag(id);
>>>    }
>>>    
>>>    static __always_inline unsigned int
>>> -__busy_set_if_active(const struct dma_fence *fence, u32 (*flag)(u8 id))
>>> +__busy_set_if_active(const struct dma_fence *fence, u32 (*flag)(u16 id))
>>>    {
>>>        const struct i915_request *rq;
>>>    
>>> @@ -57,7 +57,7 @@ __busy_set_if_active(const struct dma_fence *fence, u32 (*flag)(u8 id))
>>>                return 0;
>>>    
>>>        /* Beware type-expansion follies! */
>>> -     BUILD_BUG_ON(!typecheck(u8, rq->engine->uabi_class));
>>> +     BUILD_BUG_ON(!typecheck(u16, rq->engine->uabi_class));
>>>        return flag(rq->engine->uabi_class);
>>>    }
>>>    
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>> index 00287515e7af..350da59e605b 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>> @@ -278,8 +278,8 @@ struct intel_engine_cs {
>>>        u8 class;
>>>        u8 instance;
>>>    
>>> -     u8 uabi_class;
>>> -     u8 uabi_instance;
>>> +     u16 uabi_class;
>>> +     u16 uabi_instance;
> 
> Bah, doesn't this leave us with a u16 hole!

I don't see anything to fill it with. Could expand class and instance to 
u16 as well and see if it has any negative effect on code size. But in a 
separate patch.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
