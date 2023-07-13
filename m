Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E47A751C58
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 10:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00F1D10E0B5;
	Thu, 13 Jul 2023 08:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ACF410E0B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 08:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689238600; x=1720774600;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=TJvjpE7N8WyQp0qaUEvEqQrwgdUNWt8VM+Cqz2JO86w=;
 b=Ykjxg71KzPE2Yg50GkKNoQ5viTi/C/vy02NOyPzu8ueXtBDYZjRjUk5G
 1gw4MaWxaUSCERr0DxwXdimfBiT6ddYA/CZjHqWw4jfZhOFUjAeTPtWU7
 4PkSH/g7MoqjMB0z0UyOORDZPrxnj5cEfv9VteGEjoeOTqswwDmEHACTA
 4MPdudjdp0cuN18wddw3i2khDi1tIYc0mTsJFet4tBqZdki981R8YeekP
 yEo25dWgmvpXyraBnRqKutJa6ySr420zQsnb8Qi5XU6LJ5CFJtdQB7Fvp
 NJbjtGOzelvU3ZX+/ngqScDX8+XE5eRaJbmPYQrmLMs2yyj7hI2qgwz8j A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="365167058"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="365167058"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 01:56:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="725225405"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="725225405"
Received: from apaulaux-mobl.ger.corp.intel.com (HELO [10.213.206.56])
 ([10.213.206.56])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 01:56:35 -0700
Message-ID: <f63523f8-5230-1d30-92ad-9fedcfb0867a@linux.intel.com>
Date: Thu, 13 Jul 2023 09:56:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: John Harrison <john.c.harrison@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
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
Organization: Intel Corporation UK Plc
In-Reply-To: <81e65fb5-813c-da53-dd12-909f18739ef2@linux.intel.com>
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


On 13/07/2023 08:39, Tvrtko Ursulin wrote:
> 
> On 12/07/2023 19:54, John Harrison wrote:
>> On 7/12/2023 09:27, Andrzej Hajda wrote:
>>> On 12.07.2023 14:35, Tvrtko Ursulin wrote:
>>>> On 12/07/2023 13:18, Andrzej Hajda wrote:
>>>>> On 11.07.2023 17:27, Tvrtko Ursulin wrote:
>>>>>> On 11/07/2023 14:58, Andrzej Hajda wrote:
>>>>>>> On 11.07.2023 13:34, Andi Shyti wrote:
>>>>>>>> Hi Andrzej,
>>>>>>>>
>>>>>>>>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 +++++++++++
>>>>>>>>>           1 file changed, 11 insertions(+)
>>>>>>>>>
>>>>>>>>>          diff --git 
>>>>>>>>> a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>          index a0e3ef1c65d246..2c877ea5eda6f0 100644
>>>>>>>>>          --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>          +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>>>>          @@ -3461,6 +3461,8 @@ static void guc_prio_fini(struct 
>>>>>>>>> i915_request *rq, struct intel_context *ce)
>>>>>>>>>           static void remove_from_context(struct i915_request *rq)
>>>>>>>>>           {
>>>>>>>>>                  struct intel_context *ce = 
>>>>>>>>> request_to_scheduling_context(rq);
>>>>>>>>>          +       struct intel_engine_cs *engine;
>>>>>>>>>          +       intel_engine_mask_t tmp;
>>>>>>>>>
>>>>>>>>> GEM_BUG_ON(intel_context_is_child(ce));
>>>>>>>>>
>>>>>>>>>          @@ -3478,6 +3480,15 @@ static void 
>>>>>>>>> remove_from_context(struct i915_request *rq)
>>>>>>>>>
>>>>>>>>>                  atomic_dec(&ce->guc_id.ref);
>>>>>>>>> i915_request_notify_execute_cb_imm(rq);
>>>>>>>>>          +
>>>>>>>>>          +       /*
>>>>>>>>>          +        * GuC virtual engine can disappear after this 
>>>>>>>>> call, so let's assign
>>>>>>>>>          +        * something valid, as driver expects this to 
>>>>>>>>> be always valid pointer.
>>>>>>>>>          +        */
>>>>>>>>>          +       for_each_engine_masked(engine, rq->engine->gt, 
>>>>>>>>> rq->execution_mask, tmp) {
>>>>>>>>>          +               rq->engine = engine;
>>>>>>>>>
>>>>>>>>>      yes... here the context might lose the virtual engine... I 
>>>>>>>>> wonder
>>>>>>>>>      whether this is the rigth solution, though. Maybe we 
>>>>>>>>> should set
>>>>>>>>>      rq->engine = NULL; and check for NULL? Don't know.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> Setting NULL causes occasional null page de-reference in
>>>>>>>>>
>>>>>>>>> i915_request_wait_timeout:
>>>>>>>>>
>>>>>>>>> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
>>>>>>>>>
>>>>>>>>> rq->engine after removing rq from context is (IMHO) used as a 
>>>>>>>>> set of aliases
>>>>>>>>> for gt and i915 (despite rq itself contains the alias to i915).
>>>>>>>> without investigating further, but maybe that code is not even
>>>>>>>> supposed to be executed, at this point, if the request's assigned
>>>>>>>> virtual engine is removed.
>>>>>>>
>>>>>>> Real tests show it is executed and the function 
>>>>>>> i915_request_wait_timeout is quite generic
>>>>>>> I guess it is quite typical use-case, the only question is about 
>>>>>>> timings - what happens earlier -
>>>>>>> finalization of i915_request_wait_timeout or context removal.
>>>>>>>
>>>>>>> The other point rq->engine is accessed after context removal is 
>>>>>>> i915_fence_release -
>>>>>>> there is long comment there regarding virtual context and reuse 
>>>>>>> retired rq.
>>>>>>> Anyway calling there "intel_engine_is_virtual(rq->engine)" is 
>>>>>>> risky without this patch and KASAN complains clearly about it:
>>>>>>> http://gfx-ci.igk.intel.com/tree/drm-tip/kasan.html?testfilter=gem_exec_balancer
>>>>>>
>>>>>> Looks like a bug introduced in bcb9aa45d5a0 ("Revert "drm/i915: 
>>>>>> Hold reference to intel_context over life of i915_request""), 
>>>>>> which was a partial revert of 1e98d8c52ed5 ("drm/i915: Hold 
>>>>>> reference to intel_context over life of i915_request").
>>>>>>
>>>>>> Ie. if 1e98d8c52ed5 recognised the problem with disappearing 
>>>>>> rq->engine, then I am confused how bcb9aa45d5a0 left the 
>>>>>> rq->engine dereference in there after removing the extra reference.
>>>>>>
>>>>>> Could it be that the intel_engine_is_virtual check simply needs to 
>>>>>> be removed from i915_fence_release, restoring things to how they 
>>>>>> were before 1e98d8c52ed5? Could you try it out?
>>>>>
>>>>>
>>>>> I have already tried something similar [1] and KASAN bugs 
>>>>> disappeared, or more precisely gem_exec_balance tests passed. But I 
>>>>> have been warned by Nirmoy guc virtual engines can be created for 
>>>>> only one real engine (ie. is_power_of_2(rq->execution_mask) is true 
>>>>> but rq->engine points to virtual engine).
>>>>>
>>>>> [1]: https://patchwork.freedesktop.org/series/118879/
>>>>
>>>> Ugh.. Try involving media umd folks to see if they need a single 
>>>> engine virtual engine? Or we could always just not create it in the 
>>>> driver, I mean just use the physical one.
>>>
>>>
>>> In case there is single physical engine intel_engine_create_virtual 
>>> falls back to intel_context_create (no virtual engine), but in case 
>>> of parallel contexts there is special KMD flag FORCE_VIRTUAL which 
>>> enforces virtual engine even for single physical engine. So it seems 
>>> to be KMD concept.
>>>
>>> Anyway is it worth investigating how to make 
>>> "is_power_of_2(rq->execution_mask)" indication of dangling engine 
>>> pointer? It will not help in 1st case:
>>> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
>>>
>>>
>> There seems to be a fundamental problem here. Object 1 (rq) is holding 
>> a pointer to a reference counted and transient object 2 (engine) but 
>> without taking a reference count for itself. That is a Bad Thing(tm). 
>> I'm not following the description in the revert patch as to why rq 
>> can't ref count the context/engine. Is there actually a recursive 
>> counting problem? Or is it just a lifetime issue caused by requests 
>> hanging around indefinitely because they are locked by a user process?
>>
>> Either way, jumping through convoluted hoops to ensure the code does 
>> not attempt to dereference a dangling pointer seems like the wrong 
>> fix. Removing the engine pointer when the request is completed and no 
>> longer dependent upon an engine (but before the engine can possibly be 
>> destroyed) seems like a much better solution. And then making the 
>> request handling code check for and cope with a null engine pointer. 
>> It sounds like the only problem there is the above mutex, but there is 
>> an alternate route to that? Although why a completed request would 
>> need access to a GT reset mutex seems confusing. If the request is 
>> done, then what connection does it still have to the GT?
> 
> Agreed in principle but the question is how invasive would it be to 
> change the rules.
> 
> With the latest info that the issue is really just the GuC _parallel_ 
> engine setup, and looking at the code, I wonder if we couldn't just flag 
> the rq->flags with "kernel context request". The code in 
> i915_fence_release claims the rq pool is only relevant for those so it 
> sounds it would be safe to skip everything else based on that new flag.
> 
> For the mutex_release path, presumable the bad deref is only _after_ the 
> wait, right? (Only once the request has been retired.)
> 
> In which case caching the gt pointer at the start of 
> i915_request_wait_timeout would be sufficient.

Or not, think here I confused rq reference with (lack of) rq->engine reference. If I have then there is plenty of rq->engine dereferences in just the i915_request_wait_timeout call stack. So neither caching the gt or NULL rq->engine don't think would fly.

Going back to this patch, this comment:

+	/*
+	 * GuC virtual engine can disappear after this call, so let's assign
+	 * something valid, as driver expects this to be always valid pointer.
+	 */

Is it that only GuC virtual engine can disappear after this call, or any virtual engine really? If the former why only with GuC?

Regards,

Tvrtko
  
> That should be a few lines fixup overall and then the idea of allowing 
> rq->engine to be reset to NULL can be explored more leisurely.
> 
> Regards,
> 
> Tvrtko
