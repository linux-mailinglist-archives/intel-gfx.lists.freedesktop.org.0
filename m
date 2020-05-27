Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2F31E3AEB
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 09:50:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9128E6E2AF;
	Wed, 27 May 2020 07:50:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D82F66E2AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 07:50:07 +0000 (UTC)
IronPort-SDR: Vt7PSb4oshrQa9de/7FHG7spGh1CaroaYXnfitOd+/XoLwZpVRFYutE6xSB9JMeJUGjDrt90bW
 +FW1YFm4F9lg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 00:50:07 -0700
IronPort-SDR: FkbB/jBrunNjcJP/pHlZ7hGNUJ3uMGd1NY4lbhv3BmUZKHuZ4N7H+ipw/VehG+bVvajVyDEv/r
 A2M0ggI9dzKw==
X-IronPort-AV: E=Sophos;i="5.73,440,1583222400"; d="scan'208";a="291510381"
Received: from gkazakev-mobl1.ger.corp.intel.com (HELO [10.214.254.180])
 ([10.214.254.180])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 00:50:05 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200526090753.11329-1-chris@chris-wilson.co.uk>
 <20200526090753.11329-2-chris@chris-wilson.co.uk>
 <2f6be936-043d-23f7-873f-6c2228f2abe5@linux.intel.com>
 <159056303478.21924.12941497462148590096@build.alporthouse.com>
 <4447522d-704e-33b1-7d8a-fef095781200@linux.intel.com>
 <159056564189.24269.17952997651487673956@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9061a41f-6f2c-e5e6-bd33-8d91c4e058f7@linux.intel.com>
Date: Wed, 27 May 2020 08:50:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <159056564189.24269.17952997651487673956@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Do not schedule normal
 requests immediately along virtual
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/05/2020 08:47, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-05-27 08:32:05)
>>
>> On 27/05/2020 08:03, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2020-05-27 07:51:44)
>>>>
>>>> On 26/05/2020 10:07, Chris Wilson wrote:
>>>>> When we push a virtual request onto the HW, we update the rq->engine to
>>>>> point to the physical engine. A request that is then submitted by the
>>>>> user that waits upon the virtual engine, but along the physical engine
>>>>> in use, will then see that it is due to be submitted to the same engine
>>>>> and take a shortcut (and be queued without waiting for the completion
>>>>> fence). However, the virtual request may be preempted (either by higher
>>>>> priority users, or by timeslicing) and removed from the physical engine
>>>>> to be migrated over to one of its siblings. The dependent normal request
>>>>> however is oblivious to the removal of the virtual request and remains
>>>>> queued to execute on HW, believing that once it reaches the head of its
>>>>> queue all of its predecessors will have completed executing!
>>>>>
>>>>> v2: Beware restriction of signal->execution_mask prior to submission.
>>>>>
>>>>> Fixes: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")
>>>>> Testcase: igt/gem_exec_balancer/sliced
>>>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>> Cc: <stable@vger.kernel.org> # v5.3+
>>>>> ---
>>>>>     drivers/gpu/drm/i915/i915_request.c | 25 +++++++++++++++++++++----
>>>>>     1 file changed, 21 insertions(+), 4 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
>>>>> index 33bbad623e02..0b07ccc7e9bc 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_request.c
>>>>> +++ b/drivers/gpu/drm/i915/i915_request.c
>>>>> @@ -1237,6 +1237,25 @@ i915_request_await_execution(struct i915_request *rq,
>>>>>         return 0;
>>>>>     }
>>>>>     
>>>>> +static int
>>>>> +await_request_submit(struct i915_request *to, struct i915_request *from)
>>>>> +{
>>>>> +     /*
>>>>> +      * If we are waiting on a virtual engine, then it may be
>>>>> +      * constrained to execute on a single engine *prior* to submission.
>>>>> +      * When it is submitted, it will be first submitted to the virtual
>>>>> +      * engine and then passed to the physical engine. We cannot allow
>>>>> +      * the waiter to be submitted immediately to the physical engine
>>>>> +      * as it may then bypass the virtual request.
>>>>> +      */
>>>>> +     if (to->engine == READ_ONCE(from->engine))
>>>>> +             return i915_sw_fence_await_sw_fence_gfp(&to->submit,
>>>>> +                                                     &from->submit,
>>>>> +                                                     I915_FENCE_GFP);
>>>>> +     else
>>>>> +             return __i915_request_await_execution(to, from, NULL);
>>>>
>>>> If I am following correctly this branch will be the virtual <-> physical
>>>> or virtual <-> virtual dependency on the same physical engine. Why is
>>>> await_execution sufficient in this case? Is there something preventing
>>>> timeslicing between the two (not wanted right!) once from start
>>>> execution (not finishes).
>>>
>>> Timeslicing is only between independent requests. When we expire a
>>> request, we also expire all of its waiters along the same engine, so
>>> that the execution order remains intact.
>>
>> Via scheduler dependencies - they are enough?
> 
> Yes.

Okay, I really need to use this all more often rather than just review..

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
