Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28227414CF4
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 17:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF946EC21;
	Wed, 22 Sep 2021 15:25:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F12416EC20;
 Wed, 22 Sep 2021 15:25:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="203113802"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="203113802"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 08:25:07 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="704060276"
Received: from bbrowne-mobl.ger.corp.intel.com (HELO [10.213.200.151])
 ([10.213.200.151])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 08:25:05 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Matthew Brost <matthew.brost@intel.com>, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, tvrtko.ursulin@intel.com,
 lucas.demarchi@intel.com
References: <20210922145739.17133-1-matthew.brost@intel.com>
 <f4a6320c-46ea-7a6d-6df8-3995b3497ef7@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <94ef2f48-5f84-bc4c-0e9f-b1481afd8132@linux.intel.com>
Date: Wed, 22 Sep 2021 16:25:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <f4a6320c-46ea-7a6d-6df8-3995b3497ef7@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Drop stealing of bits from
 i915_sw_fence function pointer
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/09/2021 16:21, Tvrtko Ursulin wrote:
> 
> On 22/09/2021 15:57, Matthew Brost wrote:
>> Rather than stealing bits from i915_sw_fence function pointer use
>> seperate fields for function pointer and flags. If using two different
>> fields, the 4 byte alignment for the i915_sw_fence function pointer can
>> also be dropped.
>>
>> v2:
>>   (CI)
>>    - Set new function field rather than flags in __i915_sw_fence_init
>>
>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |  2 +-
>>   drivers/gpu/drm/i915/i915_request.c           |  4 ++--
>>   drivers/gpu/drm/i915/i915_sw_fence.c          | 12 +++++------
>>   drivers/gpu/drm/i915/i915_sw_fence.h          | 21 +++++++++----------
>>   drivers/gpu/drm/i915/i915_sw_fence_work.c     |  2 +-
>>   .../gpu/drm/i915/selftests/i915_sw_fence.c    |  2 +-
>>   drivers/gpu/drm/i915/selftests/lib_sw_fence.c |  4 ++--
>>   8 files changed, 23 insertions(+), 26 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index a7ca38613f89..6d5bb55ffc82 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -10323,7 +10323,7 @@ static void intel_atomic_commit_work(struct 
>> work_struct *work)
>>       intel_atomic_commit_tail(state);
>>   }
>> -static int __i915_sw_fence_call
>> +static int
>>   intel_atomic_commit_ready(struct i915_sw_fence *fence,
>>                 enum i915_sw_fence_notify notify)
>>   {
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> index c2ab0e22db0a..df5fec5c3da8 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> @@ -800,7 +800,7 @@ static void free_engines_rcu(struct rcu_head *rcu)
>>       free_engines(engines);
>>   }
>> -static int __i915_sw_fence_call
>> +static int
>>   engines_notify(struct i915_sw_fence *fence, enum 
>> i915_sw_fence_notify state)
>>   {
>>       struct i915_gem_engines *engines =
>> diff --git a/drivers/gpu/drm/i915/i915_request.c 
>> b/drivers/gpu/drm/i915/i915_request.c
>> index ce446716d092..945d3025a0b6 100644
>> --- a/drivers/gpu/drm/i915/i915_request.c
>> +++ b/drivers/gpu/drm/i915/i915_request.c
>> @@ -719,7 +719,7 @@ void i915_request_cancel(struct i915_request *rq, 
>> int error)
>>       intel_context_cancel_request(rq->context, rq);
>>   }
>> -static int __i915_sw_fence_call
>> +static int
>>   submit_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify 
>> state)
>>   {
>>       struct i915_request *request =
>> @@ -755,7 +755,7 @@ submit_notify(struct i915_sw_fence *fence, enum 
>> i915_sw_fence_notify state)
>>       return NOTIFY_DONE;
>>   }
>> -static int __i915_sw_fence_call
>> +static int
>>   semaphore_notify(struct i915_sw_fence *fence, enum 
>> i915_sw_fence_notify state)
>>   {
>>       struct i915_request *rq = container_of(fence, typeof(*rq), 
>> semaphore);
>> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c 
>> b/drivers/gpu/drm/i915/i915_sw_fence.c
>> index c589a681da77..1c080dd1f718 100644
>> --- a/drivers/gpu/drm/i915/i915_sw_fence.c
>> +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
>> @@ -34,7 +34,7 @@ enum {
>>   static void *i915_sw_fence_debug_hint(void *addr)
>>   {
>> -    return (void *)(((struct i915_sw_fence *)addr)->flags & 
>> I915_SW_FENCE_MASK);
>> +    return (void *)(((struct i915_sw_fence *)addr)->fn);
>>   }
>>   #ifdef CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS
>> @@ -126,10 +126,7 @@ static inline void debug_fence_assert(struct 
>> i915_sw_fence *fence)
>>   static int __i915_sw_fence_notify(struct i915_sw_fence *fence,
>>                     enum i915_sw_fence_notify state)
>>   {
>> -    i915_sw_fence_notify_t fn;
>> -
>> -    fn = (i915_sw_fence_notify_t)(fence->flags & I915_SW_FENCE_MASK);
>> -    return fn(fence, state);
>> +    return fence->fn(fence, state);
>>   }
>>   #ifdef CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS
>> @@ -242,10 +239,11 @@ void __i915_sw_fence_init(struct i915_sw_fence 
>> *fence,
>>                 const char *name,
>>                 struct lock_class_key *key)
>>   {
>> -    BUG_ON(!fn || (unsigned long)fn & ~I915_SW_FENCE_MASK);
>> +    BUG_ON(!fn);
>>       __init_waitqueue_head(&fence->wait, name, key);
>> -    fence->flags = (unsigned long)fn;
>> +    fence->fn = fn;
>> +    fence->flags = 0;
>>       i915_sw_fence_reinit(fence);
>>   }
>> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.h 
>> b/drivers/gpu/drm/i915/i915_sw_fence.h
>> index 30a863353ee6..70ba1789aa89 100644
>> --- a/drivers/gpu/drm/i915/i915_sw_fence.h
>> +++ b/drivers/gpu/drm/i915/i915_sw_fence.h
>> @@ -17,26 +17,25 @@
>>   struct completion;
>>   struct dma_resv;
>> +struct i915_sw_fence;
>> +
>> +enum i915_sw_fence_notify {
>> +    FENCE_COMPLETE,
>> +    FENCE_FREE
>> +};
>> +
>> +typedef int (*i915_sw_fence_notify_t)(struct i915_sw_fence *,
>> +                      enum i915_sw_fence_notify state);
>>   struct i915_sw_fence {
>>       wait_queue_head_t wait;
>> +    i915_sw_fence_notify_t fn;
>>       unsigned long flags;
> 
> Looks good to me. I'd just make the flags narrower now that they can be, 
> and put them down..
> 
>>       atomic_t pending;
> 
> .. here as unsigned int and so we save 4 bytes, maybe.

No this won't work due test_and_set_bit needs a long, oh well.

> 
> In fact, unless CONFIG_DRM_I915_SW_FENCE_CHECK_DAG is on, which it won't 
> be on release builds, I don't think anything uses flags any more. So you 
> could even omit the flags in that case. Might be cumbersome so can leave 
> for later, but would sure be nice not to waste space if we can avoid it.
> 
> Also please double check if i915_sw_fence_reinit() will be fine and 
> won't bug on since fence->flags is always zero now I think.

But these two are worth checking out.

Regards,

Tvrtko

> 
> Regards,
> 
> Tvrtko
> 
>>       int error;
>>   };
>>   #define I915_SW_FENCE_CHECKED_BIT    0 /* used internally for DAG 
>> checking */
>> -#define I915_SW_FENCE_PRIVATE_BIT    1 /* available for use by owner */
>> -#define I915_SW_FENCE_MASK        (~3)
>> -
>> -enum i915_sw_fence_notify {
>> -    FENCE_COMPLETE,
>> -    FENCE_FREE
>> -};
>> -
>> -typedef int (*i915_sw_fence_notify_t)(struct i915_sw_fence *,
>> -                      enum i915_sw_fence_notify state);
>> -#define __i915_sw_fence_call __aligned(4)
>>   void __i915_sw_fence_init(struct i915_sw_fence *fence,
>>                 i915_sw_fence_notify_t fn,
>> diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.c 
>> b/drivers/gpu/drm/i915/i915_sw_fence_work.c
>> index 5b33ef23d54c..d2e56b387993 100644
>> --- a/drivers/gpu/drm/i915/i915_sw_fence_work.c
>> +++ b/drivers/gpu/drm/i915/i915_sw_fence_work.c
>> @@ -23,7 +23,7 @@ static void fence_work(struct work_struct *work)
>>       dma_fence_put(&f->dma);
>>   }
>> -static int __i915_sw_fence_call
>> +static int
>>   fence_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify 
>> state)
>>   {
>>       struct dma_fence_work *f = container_of(fence, typeof(*f), chain);
>> diff --git a/drivers/gpu/drm/i915/selftests/i915_sw_fence.c 
>> b/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
>> index cbf45d85cbff..daa985e5a19b 100644
>> --- a/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
>> +++ b/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
>> @@ -28,7 +28,7 @@
>>   #include "../i915_selftest.h"
>> -static int __i915_sw_fence_call
>> +static int
>>   fence_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify 
>> state)
>>   {
>>       switch (state) {
>> diff --git a/drivers/gpu/drm/i915/selftests/lib_sw_fence.c 
>> b/drivers/gpu/drm/i915/selftests/lib_sw_fence.c
>> index 080b90b63d16..eb59a41bdb79 100644
>> --- a/drivers/gpu/drm/i915/selftests/lib_sw_fence.c
>> +++ b/drivers/gpu/drm/i915/selftests/lib_sw_fence.c
>> @@ -26,7 +26,7 @@
>>   /* Small library of different fence types useful for writing tests */
>> -static int __i915_sw_fence_call
>> +static int
>>   nop_fence_notify(struct i915_sw_fence *fence, enum 
>> i915_sw_fence_notify state)
>>   {
>>       return NOTIFY_DONE;
>> @@ -89,7 +89,7 @@ struct heap_fence {
>>       };
>>   };
>> -static int __i915_sw_fence_call
>> +static int
>>   heap_fence_notify(struct i915_sw_fence *fence, enum 
>> i915_sw_fence_notify state)
>>   {
>>       struct heap_fence *h = container_of(fence, typeof(*h), fence);
>>
