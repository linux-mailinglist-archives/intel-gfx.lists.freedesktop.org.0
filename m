Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6282750E85
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 18:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354A610E594;
	Wed, 12 Jul 2023 16:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2309910E594
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 16:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689179266; x=1720715266;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=GjdlBah29oHvsPeR+72lLbL/xe/ZJhU4kZRWD/AGaeo=;
 b=H/1Qk6MzVhilYNfNT/Nhiy+KMab68lUWxoJg1HK4irTPeyJYKH/8NuBT
 u11PBk8FTCSvJqO3ZOBj/3qFLOYBIL13oeh9dcedX7NlVlYWeHydFh3Tj
 rtRyXdMD7Je4MB0CwXb1QF2In6Wg4gHsmSNP7Ir4rdjh3+qPlL+XcX/Fh
 BbyOgevpR6dfq34yFFKl87w8xnOZp+fJTBAPuHb6271K0KKYuc7WWQIi/
 Ue59Q2XPeSSTWt75ifn37AdkjEMPWDUihpMv8lhx5/DkdAY8/HeDXy/am
 /vMnN/BUh8+ipubshOX5rqA2s42Bn1+idj2NROb4xyb6xG0ggPFIBCWAV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="431072410"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="431072410"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 09:27:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="791688056"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="791688056"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.16.24])
 ([10.213.16.24])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 09:27:41 -0700
Message-ID: <7db1b2b3-d496-1c70-a4bf-8ce08136fb10@intel.com>
Date: Wed, 12 Jul 2023 18:27:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
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
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <c1ebfb0f-f0d4-1204-750a-b169d4ddab54@linux.intel.com>
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

On 12.07.2023 14:35, Tvrtko Ursulin wrote:
> 
> On 12/07/2023 13:18, Andrzej Hajda wrote:
>> On 11.07.2023 17:27, Tvrtko Ursulin wrote:
>>>
>>> On 11/07/2023 14:58, Andrzej Hajda wrote:
>>>> On 11.07.2023 13:34, Andi Shyti wrote:
>>>>> Hi Andrzej,
>>>>>
>>>>>>           drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 
>>>>>> +++++++++++
>>>>>>           1 file changed, 11 insertions(+)
>>>>>>
>>>>>>          diff --git 
>>>>>> a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>          index a0e3ef1c65d246..2c877ea5eda6f0 100644
>>>>>>          --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>          +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>          @@ -3461,6 +3461,8 @@ static void guc_prio_fini(struct 
>>>>>> i915_request *rq, struct intel_context *ce)
>>>>>>           static void remove_from_context(struct i915_request *rq)
>>>>>>           {
>>>>>>                  struct intel_context *ce = 
>>>>>> request_to_scheduling_context(rq);
>>>>>>          +       struct intel_engine_cs *engine;
>>>>>>          +       intel_engine_mask_t tmp;
>>>>>>
>>>>>>                  GEM_BUG_ON(intel_context_is_child(ce));
>>>>>>
>>>>>>          @@ -3478,6 +3480,15 @@ static void 
>>>>>> remove_from_context(struct i915_request *rq)
>>>>>>
>>>>>>                  atomic_dec(&ce->guc_id.ref);
>>>>>>                  i915_request_notify_execute_cb_imm(rq);
>>>>>>          +
>>>>>>          +       /*
>>>>>>          +        * GuC virtual engine can disappear after this 
>>>>>> call, so let's assign
>>>>>>          +        * something valid, as driver expects this to be 
>>>>>> always valid pointer.
>>>>>>          +        */
>>>>>>          +       for_each_engine_masked(engine, rq->engine->gt, 
>>>>>> rq->execution_mask, tmp) {
>>>>>>          +               rq->engine = engine;
>>>>>>
>>>>>>      yes... here the context might lose the virtual engine... I 
>>>>>> wonder
>>>>>>      whether this is the rigth solution, though. Maybe we should set
>>>>>>      rq->engine = NULL; and check for NULL? Don't know.
>>>>>>
>>>>>>
>>>>>> Setting NULL causes occasional null page de-reference in
>>>>>>
>>>>>> i915_request_wait_timeout:
>>>>>>
>>>>>> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
>>>>>>
>>>>>> rq->engine after removing rq from context is (IMHO) used as a set 
>>>>>> of aliases
>>>>>> for gt and i915 (despite rq itself contains the alias to i915).
>>>>> without investigating further, but maybe that code is not even
>>>>> supposed to be executed, at this point, if the request's assigned
>>>>> virtual engine is removed.
>>>>
>>>> Real tests show it is executed and the function 
>>>> i915_request_wait_timeout is quite generic
>>>> I guess it is quite typical use-case, the only question is about 
>>>> timings - what happens earlier -
>>>> finalization of i915_request_wait_timeout or context removal.
>>>>
>>>> The other point rq->engine is accessed after context removal is 
>>>> i915_fence_release -
>>>> there is long comment there regarding virtual context and reuse 
>>>> retired rq.
>>>> Anyway calling there "intel_engine_is_virtual(rq->engine)" is risky 
>>>> without this patch and KASAN complains clearly about it:
>>>> http://gfx-ci.igk.intel.com/tree/drm-tip/kasan.html?testfilter=gem_exec_balancer
>>>
>>> Looks like a bug introduced in bcb9aa45d5a0 ("Revert "drm/i915: Hold 
>>> reference to intel_context over life of i915_request""), which was a 
>>> partial revert of 1e98d8c52ed5 ("drm/i915: Hold reference to 
>>> intel_context over life of i915_request").
>>>
>>> Ie. if 1e98d8c52ed5 recognised the problem with disappearing 
>>> rq->engine, then I am confused how bcb9aa45d5a0 left the rq->engine 
>>> dereference in there after removing the extra reference.
>>>
>>> Could it be that the intel_engine_is_virtual check simply needs to be 
>>> removed from i915_fence_release, restoring things to how they were 
>>> before 1e98d8c52ed5? Could you try it out?
>>
>>
>> I have already tried something similar [1] and KASAN bugs disappeared, 
>> or more precisely gem_exec_balance tests passed. But I have been 
>> warned by Nirmoy guc virtual engines can be created for only one real 
>> engine (ie. is_power_of_2(rq->execution_mask) is true but rq->engine 
>> points to virtual engine).
>>
>> [1]: https://patchwork.freedesktop.org/series/118879/
> 
> Ugh.. Try involving media umd folks to see if they need a single engine 
> virtual engine? Or we could always just not create it in the driver, I 
> mean just use the physical one.


In case there is single physical engine intel_engine_create_virtual 
falls back to intel_context_create (no virtual engine), but in case of 
parallel contexts there is special KMD flag FORCE_VIRTUAL which enforces 
virtual engine even for single physical engine. So it seems to be KMD 
concept.

Anyway is it worth investigating how to make 
"is_power_of_2(rq->execution_mask)" indication of dangling engine 
pointer? It will not help in 1st case:
mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)


Regards
Andrzej


> 
> Regards,
> 
> Tvrtko
> 
> 
> 

