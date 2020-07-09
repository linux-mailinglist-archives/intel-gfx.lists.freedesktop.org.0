Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F37C6219E94
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 13:01:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3356F6EA40;
	Thu,  9 Jul 2020 11:01:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4765F6EA40
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 11:01:35 +0000 (UTC)
IronPort-SDR: HBEOh1Qu67g1x6OVoEXEoXd2+as0veoyeYIkEza21ZGoKCv+MM1XQOQP6LpGmILQzcAhhC4Urs
 pPcNmXaU8bOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="149461458"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="149461458"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 04:01:34 -0700
IronPort-SDR: jgAkReKaJL1KNjMLUgDuz9UiVRxh9WLW+AWuhwqO5vU7/dsW/zCHDRjLFBq2fr3RIOuQIF6sHZ
 Ea9vL0fqwaIg==
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="457868885"
Received: from unknown (HELO [10.251.164.218]) ([10.251.164.218])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 04:01:33 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-10-chris@chris-wilson.co.uk>
 <427a43a2-c434-6239-5101-87209472def9@linux.intel.com>
 <159421217807.17526.6465016562541726599@build.alporthouse.com>
 <dfc69bdb-eb8c-9746-eabb-434a263357de@linux.intel.com>
 <159422257929.17526.13795947568657610354@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <71aaf1cf-9d3a-6681-c9b0-fc25144b86b0@linux.intel.com>
Date: Thu, 9 Jul 2020 12:01:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159422257929.17526.13795947568657610354@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/20] drm/i915/gem: Assign context id for
 async work
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


On 08/07/2020 16:36, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-07-08 15:24:20)
>>
>> On 08/07/2020 13:42, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2020-07-08 13:26:24)
>>>>
>>>> On 06/07/2020 07:19, Chris Wilson wrote:
>>>>> Allocate a few dma fence context id that we can use to associate async work
>>>>> [for the CPU] launched on behalf of this context. For extra fun, we allow
>>>>> a configurable concurrency width.
>>>>>
>>>>> A current example would be that we spawn an unbound worker for every
>>>>> userptr get_pages. In the future, we wish to charge this work to the
>>>>> context that initiated the async work and to impose concurrency limits
>>>>> based on the context.
>>>>>
>>>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>>>> ---
>>>>>     drivers/gpu/drm/i915/gem/i915_gem_context.c       | 4 ++++
>>>>>     drivers/gpu/drm/i915/gem/i915_gem_context.h       | 6 ++++++
>>>>>     drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 6 ++++++
>>>>>     3 files changed, 16 insertions(+)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>>>>> index 41784df51e58..bd68746327b3 100644
>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>>>>> @@ -714,6 +714,10 @@ __create_context(struct drm_i915_private *i915)
>>>>>         ctx->sched.priority = I915_USER_PRIORITY(I915_PRIORITY_NORMAL);
>>>>>         mutex_init(&ctx->mutex);
>>>>>     
>>>>> +     ctx->async.width = rounddown_pow_of_two(num_online_cpus());
>>>>> +     ctx->async.context = dma_fence_context_alloc(ctx->async.width);
>>>>> +     ctx->async.width--;
>>>>
>>>> Hey I had a tri-core CPU back in the day.. :) Really, I can only assume
>>>> you are oding some tricks with masks which maybe only work with power of
>>>> 2 num cpus? Hard to say.. please explain in a comment.
>>>
>>> Just a pot mask, that fits in the currently available set of CPUs.
>>>    
>>>> I don't even understand what the context will be for yet and why it
>>>> needs a separate context id.
>>>
>>> The longer term view is that I want to pull the various async tasks we
>>> use into a CPU scheduling kthread[s], that shares the same priority
>>> inheritance of tasks. The issue at the moment is that as we use the
>>> system_wq, that imposes an implicit FIFO ordering on our tasks upsetting
>>> our context priorities. This is a step towards that to start looking at
>>> how we might limit concurrency in various stages by using a bunch of
>>> timelines for each stage, and queuing our work along each timeline before
>>> submitting to an unbound system_wq. [The immediate goal is to limit how
>>> much of the CPU one client can hog by submitting deferred work that would
>>> run in parallel, with a view to making that configurable per-context.]
>>
>> You are thinking of connecting the GEM context priority with task
>> priority? Or create the async kthreads with the same task priority as
>> the task who owns the GEM context has? Will that be too many kthreads? I
>> suppose they would be created and destroyed on demand so maybe not.
> 
> I'm thinking of having dedicated kthread task runners. Maybe adjusting
> between midRT-prio and normal-prio depending on workload. The essence is
> to simply replace the FIFO workqueue with our own priolists. (Running
> the first task in the queue, hopefully each task is short enough so that
> we really don't have to start thinking about making the tasks
> preemptible.]
> 
> Then world domination.
> 
> But first something that works with/like kthread_worker.
> 
>>>>>         spin_lock_init(&ctx->stale.lock);
>>>>>         INIT_LIST_HEAD(&ctx->stale.engines);
>>>>>     
>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
>>>>> index 3702b2fb27ab..e104ff0ae740 100644
>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
>>>>> @@ -134,6 +134,12 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
>>>>>     int i915_gem_context_reset_stats_ioctl(struct drm_device *dev, void *data,
>>>>>                                        struct drm_file *file);
>>>>>     
>>>>> +static inline u64 i915_gem_context_async_id(struct i915_gem_context *ctx)
>>>>> +{
>>>>> +     return (ctx->async.context +
>>>>> +             (atomic_fetch_inc(&ctx->async.cur) & ctx->async.width));
>>>>> +}
>>>>> +
>>>>>     static inline struct i915_gem_context *
>>>>>     i915_gem_context_get(struct i915_gem_context *ctx)
>>>>>     {
>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
>>>>> index ae14ca24a11f..52561f98000f 100644
>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
>>>>> @@ -85,6 +85,12 @@ struct i915_gem_context {
>>>>>     
>>>>>         struct intel_timeline *timeline;
>>>>>     
>>>>> +     struct {
>>>>> +             u64 context;
>>>>> +             atomic_t cur;
>>>>
>>>> What is cur? In which patch it gets used? (Can't see it.)
>>>
>>> See i915_gem_context_async_id() above.
>>
>> Yeah found it later.
>>
>> So in the patch where you use it, could you explain the significance of
>> number of fence contexts vs the number of CPUs. What logic drives the
>> choice of CPU concurrency per GEM context?
> 
> Logic? Pick a number out of a hat.
> 
>> And what is the effective behaviour you get with N contexts - emit N
>> concurrent operations and for N + 1 block in execbuf?
> 
> Each context defines a timeline. A task is not ready to run until the
> task before it in its timeline is completed. So we don't block in
> execbuf, the scheduler waits until the request is ready before putting
> it into the HW queues -- i.e. the number chain of fences with everything
> that entails about ensuring it runs to completion [whether successfully
> or not, if not we then rely on the error propagation to limit the damage
> and report it back to the user if they kept a fence around to inspect].

Okay but what is the benefit of N contexts in this series, before the 
work is actually spread over ctx async width CPUs? Is there any? If not 
I would prefer this patch is delayed until the time some actual 
parallelism is ready to be added.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
