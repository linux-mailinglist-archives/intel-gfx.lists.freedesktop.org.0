Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E28118BEE
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 16:04:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4116E096;
	Tue, 10 Dec 2019 15:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 075156E096
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 15:04:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 07:04:14 -0800
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="207304733"
Received: from jmcrann-mobl1.ger.corp.intel.com (HELO [10.252.9.248])
 ([10.252.9.248])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 10 Dec 2019 07:04:13 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191204211703.4073569-1-chris@chris-wilson.co.uk>
 <96a8b2f2-c93c-07b9-285d-5503b5aad128@linux.intel.com>
 <157598316862.15362.4737947399484296954@skylake-alporthouse-com>
 <9f260ea1-cbdb-dcec-5d9d-3c0fe5bcb8b9@linux.intel.com>
 <157598814877.15362.9225366099148093860@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3d5a5b98-574b-bb03-bf3b-2254efcad170@linux.intel.com>
Date: Tue, 10 Dec 2019 15:04:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157598814877.15362.9225366099148093860@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Copy across scheduler
 behaviour flags across submit fences
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


On 10/12/2019 14:29, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2019-12-10 14:12:31)
>>
>> On 10/12/2019 13:06, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2019-12-10 12:41:36)
>>>>
>>>> On 04/12/2019 21:17, Chris Wilson wrote:
>>>>> +static int
>>>>> +__i915_request_await_execution(struct i915_request *to,
>>>>> +                            struct i915_request *from,
>>>>> +                            void (*hook)(struct i915_request *rq,
>>>>> +                                         struct dma_fence *signal))
>>>>> +{
>>>>> +     int err;
>>>>> +
>>>>> +     /* Submit both requests at the same time */
>>>>> +     err = __await_execution(to, from, hook, I915_FENCE_GFP);
>>>>> +     if (err)
>>>>> +             return err;
>>>>> +
>>>>> +     if (!to->engine->schedule)
>>>>> +             return 0;
>>>>
>>>> Hm is this about scheduler or preemption?
>>>
>>> It's about dependency tracking, and the lack of it.
>>>    
>>>>> +
>>>>> +     /* Squash repeated depenendices to the same timelines */
>>>>
>>>> typo in dependencies
>>>>
>>>>> +     if (intel_timeline_sync_has_start(i915_request_timeline(to),
>>>>> +                                       &from->fence))
>>>>> +             return 0;
>>>>> +
>>>>> +     /* Ensure both start together [after all semaphores in signal] */
>>>>> +     if (intel_engine_has_semaphores(to->engine))
>>>>> +             err =__emit_semaphore_wait(to, from, from->fence.seqno - 1);
>>>>
>>>> So the only thing preventing B' getting onto the same engine as A, as
>>>> soon as B enters a different engine, is the priority order?
>>>
>>> No. Now B' has a dependency on A, so B' is always after A.
>>
>> Yes, true.
>>
>>>> And if I am reading this correctly, change relative to current state is
>>>> to let B' in, but spin on a semaphore, where currently we let it execute
>>>> the actual payload.
>>>>
>>>> It's possible that we do need this if we said we would guarantee bonded
>>>> request would not execute before it's master. Have we made this
>>>> guarantee when discussing the uAPI? We must had..
>>>
>>> We did not make that guarantee as the assumption was that all fences for
>>> B would be passed to B'. However, the since fence slot for IN/SUBMIT
>>
>> I think we must have made a guarantee B' won't start executing before B.
>> That is kind of the central point. Only thing we did not do is
>> guarantee/made effort to start B' together with B. But guarantee got
>> defeated by ELSP and later timeslicing/preemption.
> 
> According to the implementation, we did not ;)
> 
> I agree that the stronger coordination makes more sense for the API, and
> the inheritance of dependencies I think is crucial for exported fences.
>   
>> Previously, miss was if B was in ELSP[1] B' could be put in ELSP[0]
>> (different engines). Which is wrong. And with timeslicing/preemption
>> even more so.
> 
> It wasn't actually an oversight :) My understanding was that B' payload
> would not start before B payload via user semaphores, so I wrote it off
> as a bad bubble.
> 
> The oversight, imo, is that we shouldn't rely on userspace for this and
> with the current implementation it is easy to lose PI.
>   
>> So having await_started or semaphore looks correct in that respect. And
>> scheduler deps cover the A in chain. So I think it's good with this patch.
> 
> Agreed.

For correctness you don't think if !scheduler early return should happen 
after the semaphore and await_start insertion? I know that where we have 
ELSP we have scheduler so maybe it is moot point.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
