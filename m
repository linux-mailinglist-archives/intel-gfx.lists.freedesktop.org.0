Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAD82C2DA5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 18:02:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F9596E4BA;
	Tue, 24 Nov 2020 17:02:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0159E6E4BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 17:02:22 +0000 (UTC)
IronPort-SDR: g3P1Jwa7KgV2ol3eXt6jzApo/PUnYSyDvCmleDR56OHBmtteQbV38ZFKw0V8slRWeFskTti0HS
 whigjHpUkH9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="159747087"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="159747087"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 09:02:22 -0800
IronPort-SDR: qlbP7ZFC8QOM21AVlIs0VvZu5nOTrFpSYvb3cAlX96lZs+NYSO2f1iWFIG9NDFVH+MMldb8dpe
 7l9U3Xfv+ahQ==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="546903560"
Received: from ipilchin-mobl1.ger.corp.intel.com (HELO [10.254.159.60])
 ([10.254.159.60])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 09:02:21 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201124114219.29020-1-chris@chris-wilson.co.uk>
 <20201124114219.29020-5-chris@chris-wilson.co.uk>
 <f1089ea3-bfa6-1290-f0bd-5214a36e257a@linux.intel.com>
 <160623545286.28476.12142656128812295838@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5fff204d-e5e3-95dc-4946-10e900417a5f@linux.intel.com>
Date: Tue, 24 Nov 2020 17:02:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160623545286.28476.12142656128812295838@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/16] drm/i915/gt: Move the breadcrumb to
 the signaler if completed upon cancel
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


On 24/11/2020 16:30, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-11-24 16:19:15)
>>
>> On 24/11/2020 11:42, Chris Wilson wrote:
>>> If while we are cancelling the breadcrumb signaling, we find that the
>>> request is already completed, move it to the irq signaler and let it be
>>> signaled.
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 20 ++++++++++++++++----
>>>    1 file changed, 16 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>>> index a24cc1ff08a0..f5f6feed0fa6 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>>> @@ -363,6 +363,14 @@ void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
>>>        kfree(b);
>>>    }
>>>    
>>> +static void irq_signal_request(struct i915_request *rq,
>>> +                            struct intel_breadcrumbs *b)
>>> +{
>>> +     if (__signal_request(rq) &&
>>> +         llist_add(&rq->signal_node, &b->signaled_requests))
>>> +             irq_work_queue(&b->irq_work);
>>> +}
>>> +
>>>    static void insert_breadcrumb(struct i915_request *rq)
>>>    {
>>>        struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
>>> @@ -380,9 +388,7 @@ static void insert_breadcrumb(struct i915_request *rq)
>>>         * its signal completion.
>>>         */
>>>        if (__request_completed(rq)) {
>>> -             if (__signal_request(rq) &&
>>> -                 llist_add(&rq->signal_node, &b->signaled_requests))
>>> -                     irq_work_queue(&b->irq_work);
>>> +             irq_signal_request(rq, b);
>>>                return;
>>>        }
>>>    
>>> @@ -453,6 +459,7 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
>>>    
>>>    void i915_request_cancel_breadcrumb(struct i915_request *rq)
>>>    {
>>> +     struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
>>>        struct intel_context *ce = rq->context;
>>>        bool release;
>>>    
>>> @@ -461,11 +468,16 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
>>>    
>>>        spin_lock(&ce->signal_lock);
>>>        list_del_rcu(&rq->signal_link);
>>> -     release = remove_signaling_context(rq->engine->breadcrumbs, ce);
>>> +     release = remove_signaling_context(b, ce);
>>>        spin_unlock(&ce->signal_lock);
>>>        if (release)
>>>                intel_context_put(ce);
>>>    
>>> +     if (__request_completed(rq)) {
>>> +             irq_signal_request(rq, b);
>>> +             return;
>>
>> This is a bit unintuitive - irq_signal_request does things conditionally
>> based on the signaled flag, but here the return value is ignored and
>> reference kept regardless. Which makes me wonder how can the combo of
>> the two always dtrt. Because __request_completed is seqno based, which
>> can happen before setting the signaled flag. Like if retire races with
>> breadcrumbs. Am I missing something?
> 
> static void irq_signal_request()
> 
> Yes, the completion must happen before the signal bit is set, and there
> is race on who sets the signal bit.
> 
> So if, and only if, __signal_request() is the first to set the signal
> bit do we keep the reference to the request and enqueue it to execute the
> callbacks in the irq-worker.
> 
> If the request is completed, but someone else has already signaled the
> request, the reference is dropped.
> 
> static bool __signal_request(struct i915_request *rq)
> {
>          GEM_BUG_ON(test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags));
> 
>          if (!__dma_fence_signal(&rq->fence)) {
>                  i915_request_put(rq);
>                  return false;
>          }
> 
>          return true;
> }
> 
> I see your point that the reference handling is not obvious. Worth
> taking another pass over it to split the different paths into their
> different ways so the ownership is not hidden away.

It looks like I confused irq_signal_request and __signal_request. Former 
has no return value so what I wrote makes no sense. And then it is 
indeed fine what the patch does but I do think at least a good comment 
under the if (__request_completed) branch in cancel breadcrumb is needed.

If irq_signal_request could be made return the result from 
__dma_fence_signal and if other callers would be able to easily handle 
the change even better. (I mean moving the i915_request_put out of 
__signal_request.)

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
