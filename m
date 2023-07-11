Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C659A74F360
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 17:27:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 951DA10E3B5;
	Tue, 11 Jul 2023 15:27:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DC6410E3B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 15:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689089236; x=1720625236;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=H+mIeWjeBKHOsJEk4lMiwcX8xcNnONT8sea7ewd58q4=;
 b=mXYf1Xn/1grAUvaZCmdWdvWTcHOgnQmwyTvvPkG+6pt3T3adzXcNpj5O
 VyWhl8BWLZxtBHc7JMWqApKT5iaTzvkVmlNd2Q0CTdXFQJleSBYz8S60z
 3+hwKJOi/Zl9qWJoRgBJGgCi8MfxZujXDtmhdn0hNWMCqVA6sgUg2LswT
 heHMCkhc0S1rB+DQgvwmODepTbvDypNuYetnXQrF0WAUFVzxhUUl1d1sM
 Jw5G0T+tKi8eAmzPngkrNmU7w41CMTRO4v/NNU4VViN1KLGHTNIQr8Qzw
 BqU5P+SDD4oid53FIhkcDcoCiVyp5yAB10laUDTA+ZjoAU1J4Jr5tyy7C g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="354512323"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="354512323"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 08:27:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="1051833225"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="1051833225"
Received: from rayhaanf-mobl.ger.corp.intel.com (HELO [10.213.205.242])
 ([10.213.205.242])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 08:27:13 -0700
Message-ID: <6f981dd3-715a-6b7e-6c5d-d51610cddc88@linux.intel.com>
Date: Tue, 11 Jul 2023 16:27:11 +0100
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
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <118e74c0-c1ce-fc6e-39f4-5518ace5d71e@intel.com>
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


On 11/07/2023 14:58, Andrzej Hajda wrote:
> On 11.07.2023 13:34, Andi Shyti wrote:
>> Hi Andrzej,
>>
>>>           drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 
>>> +++++++++++
>>>           1 file changed, 11 insertions(+)
>>>
>>>          diff --git 
>>> a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>          index a0e3ef1c65d246..2c877ea5eda6f0 100644
>>>          --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>          +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>          @@ -3461,6 +3461,8 @@ static void guc_prio_fini(struct 
>>> i915_request *rq, struct intel_context *ce)
>>>           static void remove_from_context(struct i915_request *rq)
>>>           {
>>>                  struct intel_context *ce = 
>>> request_to_scheduling_context(rq);
>>>          +       struct intel_engine_cs *engine;
>>>          +       intel_engine_mask_t tmp;
>>>
>>>                  GEM_BUG_ON(intel_context_is_child(ce));
>>>
>>>          @@ -3478,6 +3480,15 @@ static void 
>>> remove_from_context(struct i915_request *rq)
>>>
>>>                  atomic_dec(&ce->guc_id.ref);
>>>                  i915_request_notify_execute_cb_imm(rq);
>>>          +
>>>          +       /*
>>>          +        * GuC virtual engine can disappear after this call, 
>>> so let's assign
>>>          +        * something valid, as driver expects this to be 
>>> always valid pointer.
>>>          +        */
>>>          +       for_each_engine_masked(engine, rq->engine->gt, 
>>> rq->execution_mask, tmp) {
>>>          +               rq->engine = engine;
>>>
>>>      yes... here the context might lose the virtual engine... I wonder
>>>      whether this is the rigth solution, though. Maybe we should set
>>>      rq->engine = NULL; and check for NULL? Don't know.
>>>
>>>
>>> Setting NULL causes occasional null page de-reference in
>>>
>>> i915_request_wait_timeout:
>>>
>>> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
>>>
>>> rq->engine after removing rq from context is (IMHO) used as a set of 
>>> aliases
>>> for gt and i915 (despite rq itself contains the alias to i915).
>> without investigating further, but maybe that code is not even
>> supposed to be executed, at this point, if the request's assigned
>> virtual engine is removed.
> 
> Real tests show it is executed and the function 
> i915_request_wait_timeout is quite generic
> I guess it is quite typical use-case, the only question is about timings 
> - what happens earlier -
> finalization of i915_request_wait_timeout or context removal.
> 
> The other point rq->engine is accessed after context removal is 
> i915_fence_release -
> there is long comment there regarding virtual context and reuse retired rq.
> Anyway calling there "intel_engine_is_virtual(rq->engine)" is risky 
> without this patch and KASAN complains clearly about it:
> http://gfx-ci.igk.intel.com/tree/drm-tip/kasan.html?testfilter=gem_exec_balancer

Looks like a bug introduced in bcb9aa45d5a0 ("Revert "drm/i915: Hold 
reference to intel_context over life of i915_request""), which was a 
partial revert of 1e98d8c52ed5 ("drm/i915: Hold reference to 
intel_context over life of i915_request").

Ie. if 1e98d8c52ed5 recognised the problem with disappearing rq->engine, 
then I am confused how bcb9aa45d5a0 left the rq->engine dereference in 
there after removing the extra reference.

Could it be that the intel_engine_is_virtual check simply needs to be 
removed from i915_fence_release, restoring things to how they were 
before 1e98d8c52ed5? Could you try it out?

Regards,

Tvrtko
