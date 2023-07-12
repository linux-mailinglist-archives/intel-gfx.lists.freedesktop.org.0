Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDF3750871
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 14:35:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CEAE10E501;
	Wed, 12 Jul 2023 12:35:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9490C10E501
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 12:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689165343; x=1720701343;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=jT8JlmUksO7b3moJrWsest0mR7G5qwAdgmjn+UEIx0w=;
 b=FCUvGwXK1srJCV5TXcsXy5Fe1a9jWJFejfasWixkDNESLS1KkkTX98XW
 j+xTzkAflDnVDNhyoLRe8duT7XHVUehirwtavF8f7O9NzDhcQ44HfoxWP
 3pTbKGJJ9zhvvp2KovEsaiGM2ceul1mHXVsW3ef/EAjFw7UIF7/2620FJ
 lF6xDRaBNU9HRXdejd/fR+eDLrGs9gnV58CK/fEPUuQOo12ZbrXxfciCw
 3CI3sXgTiUGtmrg8veCcWCJdqJ1QbNQ41pT7/BK7ZMtjQvb7DlmwgTRm/
 DOqn3KvnAxDoklzFBzvMatpv4OKSM2qLiqC5bVyRl4XbRSLoGX4MyET9s g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="364911525"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="364911525"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 05:35:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="715565250"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="715565250"
Received: from eamonnob-mobl1.ger.corp.intel.com (HELO [10.213.237.202])
 ([10.213.237.202])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 05:35:40 -0700
Message-ID: <c1ebfb0f-f0d4-1204-750a-b169d4ddab54@linux.intel.com>
Date: Wed, 12 Jul 2023 13:35:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20230705160848.988464-1-andrzej.hajda@intel.com>
 <20230706151611.1024576-1-andrzej.hajda@intel.com>
 <ZK0sbz+h0r/PwYn2@ashyti-mobl2.lan>
 <a9e34d7a-b22d-779c-67cb-88c69dc7ca6b@intel.com>
 <ZK0+NXmKnEzeUtTI@ashyti-mobl2.lan>
 <118e74c0-c1ce-fc6e-39f4-5518ace5d71e@intel.com>
 <6f981dd3-715a-6b7e-6c5d-d51610cddc88@linux.intel.com>
 <daeb0906-1b39-ebda-618f-dbce88f751bc@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <daeb0906-1b39-ebda-618f-dbce88f751bc@intel.com>
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


On 12/07/2023 13:18, Andrzej Hajda wrote:
> On 11.07.2023 17:27, Tvrtko Ursulin wrote:
>>
>> On 11/07/2023 14:58, Andrzej Hajda wrote:
>>> On 11.07.2023 13:34, Andi Shyti wrote:
>>>> Hi Andrzej,
>>>>
>>>>>           drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 
>>>>> +++++++++++
>>>>>           1 file changed, 11 insertions(+)
>>>>>
>>>>>          diff --git 
>>>>> a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>          index a0e3ef1c65d246..2c877ea5eda6f0 100644
>>>>>          --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>          +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>          @@ -3461,6 +3461,8 @@ static void guc_prio_fini(struct 
>>>>> i915_request *rq, struct intel_context *ce)
>>>>>           static void remove_from_context(struct i915_request *rq)
>>>>>           {
>>>>>                  struct intel_context *ce = 
>>>>> request_to_scheduling_context(rq);
>>>>>          +       struct intel_engine_cs *engine;
>>>>>          +       intel_engine_mask_t tmp;
>>>>>
>>>>>                  GEM_BUG_ON(intel_context_is_child(ce));
>>>>>
>>>>>          @@ -3478,6 +3480,15 @@ static void 
>>>>> remove_from_context(struct i915_request *rq)
>>>>>
>>>>>                  atomic_dec(&ce->guc_id.ref);
>>>>>                  i915_request_notify_execute_cb_imm(rq);
>>>>>          +
>>>>>          +       /*
>>>>>          +        * GuC virtual engine can disappear after this 
>>>>> call, so let's assign
>>>>>          +        * something valid, as driver expects this to be 
>>>>> always valid pointer.
>>>>>          +        */
>>>>>          +       for_each_engine_masked(engine, rq->engine->gt, 
>>>>> rq->execution_mask, tmp) {
>>>>>          +               rq->engine = engine;
>>>>>
>>>>>      yes... here the context might lose the virtual engine... I wonder
>>>>>      whether this is the rigth solution, though. Maybe we should set
>>>>>      rq->engine = NULL; and check for NULL? Don't know.
>>>>>
>>>>>
>>>>> Setting NULL causes occasional null page de-reference in
>>>>>
>>>>> i915_request_wait_timeout:
>>>>>
>>>>> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
>>>>>
>>>>> rq->engine after removing rq from context is (IMHO) used as a set 
>>>>> of aliases
>>>>> for gt and i915 (despite rq itself contains the alias to i915).
>>>> without investigating further, but maybe that code is not even
>>>> supposed to be executed, at this point, if the request's assigned
>>>> virtual engine is removed.
>>>
>>> Real tests show it is executed and the function 
>>> i915_request_wait_timeout is quite generic
>>> I guess it is quite typical use-case, the only question is about 
>>> timings - what happens earlier -
>>> finalization of i915_request_wait_timeout or context removal.
>>>
>>> The other point rq->engine is accessed after context removal is 
>>> i915_fence_release -
>>> there is long comment there regarding virtual context and reuse 
>>> retired rq.
>>> Anyway calling there "intel_engine_is_virtual(rq->engine)" is risky 
>>> without this patch and KASAN complains clearly about it:
>>> http://gfx-ci.igk.intel.com/tree/drm-tip/kasan.html?testfilter=gem_exec_balancer
>>
>> Looks like a bug introduced in bcb9aa45d5a0 ("Revert "drm/i915: Hold 
>> reference to intel_context over life of i915_request""), which was a 
>> partial revert of 1e98d8c52ed5 ("drm/i915: Hold reference to 
>> intel_context over life of i915_request").
>>
>> Ie. if 1e98d8c52ed5 recognised the problem with disappearing 
>> rq->engine, then I am confused how bcb9aa45d5a0 left the rq->engine 
>> dereference in there after removing the extra reference.
>>
>> Could it be that the intel_engine_is_virtual check simply needs to be 
>> removed from i915_fence_release, restoring things to how they were 
>> before 1e98d8c52ed5? Could you try it out?
> 
> 
> I have already tried something similar [1] and KASAN bugs disappeared, 
> or more precisely gem_exec_balance tests passed. But I have been warned 
> by Nirmoy guc virtual engines can be created for only one real engine 
> (ie. is_power_of_2(rq->execution_mask) is true but rq->engine points to 
> virtual engine).
> 
> [1]: https://patchwork.freedesktop.org/series/118879/

Ugh.. Try involving media umd folks to see if they need a single engine 
virtual engine? Or we could always just not create it in the driver, I 
mean just use the physical one.

Regards,

Tvrtko



