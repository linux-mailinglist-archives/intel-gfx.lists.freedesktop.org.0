Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B9C7520D4
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 14:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 235EB10E681;
	Thu, 13 Jul 2023 12:12:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FA6D10E681
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 12:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689250317; x=1720786317;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2gCxdjBNfnbyvt24Ps9QL98BWN0TIcYtXEHqRip93iI=;
 b=k4aG+HDGQGkZo/hoio3dWfeSaBeqbHjiPezV1HNyqD9efPf4LwR0z+cR
 7MbyCiGkP1bdJ9txdZ5EAt08UNgWVy40YbznrRn9FGSOPvXdAfIqNFSe4
 EmP4mtgdwfKhq2e2XoagdoxHbDPETIQdDhughuIH6er8hbK1xppTDvKrA
 DgaCy4lEZrbPrfWBFQRmBEGb3m+jekDJVWhKt/0nRrNhrcl1r5BNgp0M/
 prZ602RbEKp+sGiR2w17EPMZnPB6pPMNsUwcajOz+cFZJ9//WLX3pzA19
 MNFWNxv54vkKUtSSwRyakw7rOV90jHZCn+3cBfKd6gaPAhbF+O3hKK/E7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="350019225"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="350019225"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:11:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="835555982"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="835555982"
Received: from apaulaux-mobl.ger.corp.intel.com (HELO [10.213.206.56])
 ([10.213.206.56])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:11:55 -0700
Message-ID: <dffa8faf-7ee4-9f0e-2ce0-aea266724104@linux.intel.com>
Date: Thu, 13 Jul 2023 13:11:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 John Harrison <john.c.harrison@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20230705160848.988464-1-andrzej.hajda@intel.com>
 <20230706151611.1024576-1-andrzej.hajda@intel.com>
 <ZK0sbz+h0r/PwYn2@ashyti-mobl2.lan>
 <a9e34d7a-b22d-779c-67cb-88c69dc7ca6b@intel.com>
 <ZK0+NXmKnEzeUtTI@ashyti-mobl2.lan>
 <118e74c0-c1ce-fc6e-39f4-5518ace5d71e@intel.com>
 <6f981dd3-715a-6b7e-6c5d-d51610cddc88@linux.intel.com>
 <daeb0906-1b39-ebda-618f-dbce88f751bc@intel.com>
 <c1ebfb0f-f0d4-1204-750a-b169d4ddab54@linux.intel.com>
 <7db1b2b3-d496-1c70-a4bf-8ce08136fb10@intel.com>
 <b1e2ccdb-e79b-d584-031c-5d71e2f524f5@intel.com>
 <81e65fb5-813c-da53-dd12-909f18739ef2@linux.intel.com>
 <16fbe1d1-a9ee-6d80-9155-94643d760470@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <16fbe1d1-a9ee-6d80-9155-94643d760470@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: update request engine
 before removing virtual GuC engine
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/07/2023 12:09, Andrzej Hajda wrote:
> Hi,
> 
> On 13.07.2023 09:39, Tvrtko Ursulin wrote:
>>
>> On 12/07/2023 19:54, John Harrison wrote:
>>> On 7/12/2023 09:27, Andrzej Hajda wrote:
>>>> On 12.07.2023 14:35, Tvrtko Ursulin wrote:
>>>>> On 12/07/2023 13:18, Andrzej Hajda wrote:
>>>>>> On 11.07.2023 17:27, Tvrtko Ursulin wrote:
>>>>>>> On 11/07/2023 14:58, Andrzej Hajda wrote:
>>>>>>>> On 11.07.2023 13:34, Andi Shyti wrote:
>>>>>>>>> Hi Andrzej,
>>>>>>>>>
>>>>>>>>>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 
>>>>>>>>>> +++++++++++
>>>>>>>>>>           1 file changed, 11 insertions(+)
>>>>>>>>>>
>>>>>>>>>>          diff --git 
>>>>>>>>>> a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>>          index a0e3ef1c65d246..2c877ea5eda6f0 100644
>>>>>>>>>>          --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>>          +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>>          @@ -3461,6 +3461,8 @@ static void 
>>>>>>>>>> guc_prio_fini(struct i915_request *rq, struct intel_context *ce)
>>>>>>>>>>           static void remove_from_context(struct i915_request 
>>>>>>>>>> *rq)
>>>>>>>>>>           {
>>>>>>>>>>                  struct intel_context *ce = 
>>>>>>>>>> request_to_scheduling_context(rq);
>>>>>>>>>>          +       struct intel_engine_cs *engine;
>>>>>>>>>>          +       intel_engine_mask_t tmp;
>>>>>>>>>>
>>>>>>>>>> GEM_BUG_ON(intel_context_is_child(ce));
>>>>>>>>>>
>>>>>>>>>>          @@ -3478,6 +3480,15 @@ static void 
>>>>>>>>>> remove_from_context(struct i915_request *rq)
>>>>>>>>>>
>>>>>>>>>> atomic_dec(&ce->guc_id.ref);
>>>>>>>>>> i915_request_notify_execute_cb_imm(rq);
>>>>>>>>>>          +
>>>>>>>>>>          +       /*
>>>>>>>>>>          +        * GuC virtual engine can disappear after 
>>>>>>>>>> this call, so let's assign
>>>>>>>>>>          +        * something valid, as driver expects this to 
>>>>>>>>>> be always valid pointer.
>>>>>>>>>>          +        */
>>>>>>>>>>          +       for_each_engine_masked(engine, 
>>>>>>>>>> rq->engine->gt, rq->execution_mask, tmp) {
>>>>>>>>>>          +               rq->engine = engine;
>>>>>>>>>>
>>>>>>>>>>      yes... here the context might lose the virtual engine... 
>>>>>>>>>> I wonder
>>>>>>>>>>      whether this is the rigth solution, though. Maybe we 
>>>>>>>>>> should set
>>>>>>>>>>      rq->engine = NULL; and check for NULL? Don't know.
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Setting NULL causes occasional null page de-reference in
>>>>>>>>>>
>>>>>>>>>> i915_request_wait_timeout:
>>>>>>>>>>
>>>>>>>>>> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
>>>>>>>>>>
>>>>>>>>>> rq->engine after removing rq from context is (IMHO) used as a 
>>>>>>>>>> set of aliases
>>>>>>>>>> for gt and i915 (despite rq itself contains the alias to i915).
>>>>>>>>> without investigating further, but maybe that code is not even
>>>>>>>>> supposed to be executed, at this point, if the request's assigned
>>>>>>>>> virtual engine is removed.
>>>>>>>>
>>>>>>>> Real tests show it is executed and the function 
>>>>>>>> i915_request_wait_timeout is quite generic
>>>>>>>> I guess it is quite typical use-case, the only question is about 
>>>>>>>> timings - what happens earlier -
>>>>>>>> finalization of i915_request_wait_timeout or context removal.
>>>>>>>>
>>>>>>>> The other point rq->engine is accessed after context removal is 
>>>>>>>> i915_fence_release -
>>>>>>>> there is long comment there regarding virtual context and reuse 
>>>>>>>> retired rq.
>>>>>>>> Anyway calling there "intel_engine_is_virtual(rq->engine)" is 
>>>>>>>> risky without this patch and KASAN complains clearly about it:
>>>>>>>> http://gfx-ci.igk.intel.com/tree/drm-tip/kasan.html?testfilter=gem_exec_balancer
>>>>>>>
>>>>>>> Looks like a bug introduced in bcb9aa45d5a0 ("Revert "drm/i915: 
>>>>>>> Hold reference to intel_context over life of i915_request""), 
>>>>>>> which was a partial revert of 1e98d8c52ed5 ("drm/i915: Hold 
>>>>>>> reference to intel_context over life of i915_request").
>>>>>>>
>>>>>>> Ie. if 1e98d8c52ed5 recognised the problem with disappearing 
>>>>>>> rq->engine, then I am confused how bcb9aa45d5a0 left the 
>>>>>>> rq->engine dereference in there after removing the extra reference.
>>>>>>>
>>>>>>> Could it be that the intel_engine_is_virtual check simply needs 
>>>>>>> to be removed from i915_fence_release, restoring things to how 
>>>>>>> they were before 1e98d8c52ed5? Could you try it out?
>>>>>>
>>>>>>
>>>>>> I have already tried something similar [1] and KASAN bugs 
>>>>>> disappeared, or more precisely gem_exec_balance tests passed. But 
>>>>>> I have been warned by Nirmoy guc virtual engines can be created 
>>>>>> for only one real engine (ie. is_power_of_2(rq->execution_mask) is 
>>>>>> true but rq->engine points to virtual engine).
>>>>>>
>>>>>> [1]: https://patchwork.freedesktop.org/series/118879/
>>>>>
>>>>> Ugh.. Try involving media umd folks to see if they need a single 
>>>>> engine virtual engine? Or we could always just not create it in the 
>>>>> driver, I mean just use the physical one.
>>>>
>>>>
>>>> In case there is single physical engine intel_engine_create_virtual 
>>>> falls back to intel_context_create (no virtual engine), but in case 
>>>> of parallel contexts there is special KMD flag FORCE_VIRTUAL which 
>>>> enforces virtual engine even for single physical engine. So it seems 
>>>> to be KMD concept.
>>>>
>>>> Anyway is it worth investigating how to make 
>>>> "is_power_of_2(rq->execution_mask)" indication of dangling engine 
>>>> pointer? It will not help in 1st case:
>>>> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
>>>>
>>>>
>>> There seems to be a fundamental problem here. Object 1 (rq) is 
>>> holding a pointer to a reference counted and transient object 2 
>>> (engine) but without taking a reference count for itself. That is a 
>>> Bad Thing(tm).
> 
> Engine is not ref counted (at least directly), hardware engines seems to 
> be even persistent across whole life of i915.
> I guess before introduction of virtual engines the assumption about 
> validity of rq->engine was correct and developers used it to access 
> rq->engine->gt, rq->engine->i915, etc
> So the problems described here are probably leftovers of this change.
> After virtual engines were introduced 
> "is_power_of_2(rq->execution_mask)" was used to detect rq->engine is 
> virtual.
> And after adding parallel engines it does not seem to be valid check 
> anymore.
> 
>>> I'm not following the description in the revert patch as to why rq 
>>> can't ref count the context/engine. Is there actually a recursive 
>>> counting problem? Or is it just a lifetime issue caused by requests 
>>> hanging around indefinitely because they are locked by a user process?
>>>
>>> Either way, jumping through convoluted hoops to ensure the code does 
>>> not attempt to dereference a dangling pointer seems like the wrong 
>>> fix. Removing the engine pointer when the request is completed and no 
>>> longer dependent upon an engine (but before the engine can possibly 
>>> be destroyed) seems like a much better solution. And then making the 
>>> request handling code check for and cope with a null engine pointer. 
>>> It sounds like the only problem there is the above mutex, but there 
>>> is an alternate route to that? Although why a completed request would 
>>> need access to a GT reset mutex seems confusing. If the request is 
>>> done, then what connection does it still have to the GT?
>>
>> Agreed in principle but the question is how invasive would it be to 
>> change the rules.
>>
>> With the latest info that the issue is really just the GuC _parallel_ 
>> engine setup, and looking at the code, I wonder if we couldn't just 
>> flag the rq->flags with "kernel context request". The code in 
>> i915_fence_release claims the rq pool is only relevant for those so it 
>> sounds it would be safe to skip everything else based on that new flag.
>>
>> For the mutex_release path, presumable the bad deref is only _after_ 
>> the wait, right? (Only once the request has been retired.)
>>
>> In which case caching the gt pointer at the start of 
>> i915_request_wait_timeout would be sufficient.
>>
>> That should be a few lines fixup overall and then the idea of allowing 
>> rq->engine to be reset to NULL can be explored more leisurely.
> 
> I guess:
> - setting engine to NULL in remove_from_context,
> - caching gt pointer,
> - checking for null pointer in i915_fence_release
> 
> should be enough to solve current issue. However I am not sure if there 
> are no more dragons hidden in other execution paths. I will try inspect 
> the code.

What you have in this patch, cheat by replacing the engine, *might* work for the short term *if* you can make sure all parallel readers will see the updated rq->engine pointer in time, before the old one gets freed.

For the longer term solution - maybe making the engine reference counted?

Or if setting rq->engine to NULL then evaluating the paths which derefence it. AFAIR these request retirement races have been generally tricky/annoying.

For instance under the i915_request_wait_timeout chain.

1)
__i915_spin_request - could be racy if request gets retired between i915_request_wait_timeout/dma_fence_is_signaled check and __i915_spin_request dereferencing rq->engine.props?

2)
intel_rps_boost - claims to be safe by serialising via i915_request_retire/I915_FENCE_FLAG_BOOST but is it? What prevents retire tearing down the engine between:

	if (!test_and_set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags)) {

---> HERE - if whole retirement happens here <----

		struct intel_rps *rps = &READ_ONCE(rq->engine)->gt->rps;

3)
__intel_engine_flush_submission - could be racy to? What if the whole process of consuming the request by the backend and retirement happens between these two lines:

	if (i915_request_is_ready(rq))

---> HERE <---
		__intel_engine_flush_submission(rq->engine, false);

Then "is ready" can be true, but by the 2nd line request retired and rq->engine freed/NULL already.

Lets hope I am just making unwarranted panic by being to away from this area of the driver for a while. :) But if I am not, then it could be that rq->engine is just overall too problematic and perhaps we should have a look into making it reference counted by the request.

> Btw there is rq->i915 but code only uses "rq->engine->i915" which way 
> shall we go? remove former or latter?

Simpler/shorter option should be better.

Regards,

Tvrtko
