Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F97722373D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 10:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 939A16ED57;
	Fri, 17 Jul 2020 08:37:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B86D6ED57
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 08:37:55 +0000 (UTC)
IronPort-SDR: 5MUPgeMi9J4wXkXw2iJ7c89CiQN5Q7f4h4iZkGGLVSR3lLpEjAdSKEbaMyY8mIpKCKkVVJ/IKc
 UtJXo5pN7gQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="211096231"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="211096231"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 01:37:54 -0700
IronPort-SDR: wgn7WqpI3P66emljp/szib1mtXfwZWugXHVMTBj3SfJHmibTKzeOyMNdKp9VPqOIxIOntce1kU
 33Jba3TjkpQw==
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="430779577"
Received: from gpanagop-mobl.ger.corp.intel.com (HELO [10.249.33.238])
 ([10.249.33.238])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 01:37:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200716113357.7644-4-chris@chris-wilson.co.uk>
 <20200716172845.31427-1-chris@chris-wilson.co.uk>
 <9f617a7c-8b62-fa67-07dc-0a9f8c0d2a88@linux.intel.com>
 <159497425828.27598.4204263809628931202@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0debaba5-b70e-913f-21a8-2e01cbf0ae29@linux.intel.com>
Date: Fri, 17 Jul 2020 09:37:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159497425828.27598.4204263809628931202@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Replace
 intel_engine_transfer_stale_breadcrumbs
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


On 17/07/2020 09:24, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-07-17 09:13:21)
>>
>> On 16/07/2020 18:28, Chris Wilson wrote:
>>> @@ -341,8 +325,10 @@ static void insert_breadcrumb(struct i915_request *rq,
>>>                        break;
>>>        }
>>>        list_add(&rq->signal_link, pos);
>>> -     if (pos == &ce->signals) /* catch transitions from empty list */
>>> +     if (pos == &ce->signals) { /* catch transitions from empty list */
>>>                list_move_tail(&ce->signal_link, &b->signalers);
>>> +             irq_work_queue(&b->irq_work); /* check after enabling irq */
>>> +     }
>>>        GEM_BUG_ON(!check_signal_order(ce, rq));
>>>    
>>>        set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
>>> @@ -401,7 +387,7 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
>>>    
>>>        spin_unlock(&b->irq_lock);
>>>    
>>> -     return !__request_completed(rq);
>>> +     return true;
>>
>> Maybe my in head diff apply is failing me, but I think there isn't a
>> "return false" path left so could be made a return void function.
> 
> There is no return false path anymore (since we always queue the worker
> which should run immediately after dma_fence_enable_signaling if
> necessary, that seemed to be more sensible than conditionally using the
> worker, I also looked at splitting enable_breadcrumb and
> activate_breadcrumb, but the two paths are more similar than not), I
> kept it bool so that it matched i915_fence_enable_signaling.

It's a bit questionable, in this case it would probably be better to 
have explicit "return true" in i915_fence_enable_signaling. But it is a 
minor point anyway and bugfix trumps it.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
