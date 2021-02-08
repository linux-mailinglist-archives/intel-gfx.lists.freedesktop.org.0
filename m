Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F8A313661
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 16:10:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F146E8FD;
	Mon,  8 Feb 2021 15:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE7B66E8FD
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 15:10:20 +0000 (UTC)
IronPort-SDR: RCxZblFxyR3cVBCpQhDK8D7N/kaRZV3tm8679e4kEW/SHwRvNBoUiyysxRJdUCTypVcJ7C7h0Q
 nmS+GzCSXtfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="178216215"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="178216215"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 07:10:20 -0800
IronPort-SDR: 0Z6L7vNm1HEE1ekKOFKgLOPBC/nsMr2sKR3fKJ7yRg2lsvb5u+FanonfN8J956Y92n0MNK+x+j
 mnEKSsu83+tw==
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="395415805"
Received: from dlauner-mobl.ger.corp.intel.com (HELO [10.214.195.182])
 ([10.214.195.182])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 07:10:18 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-9-chris@chris-wilson.co.uk>
 <cf5be530-1425-17b4-9710-0732e0269180@linux.intel.com>
 <161278837896.9448.6851136817080350809@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1404aea0-15e2-b4f4-d306-d31a67b948ea@linux.intel.com>
Date: Mon, 8 Feb 2021 15:10:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <161278837896.9448.6851136817080350809@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/31] drm/i915: Replace priolist rbtree
 with a skiplist
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


On 08/02/2021 12:46, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-02-08 12:29:14)
>>
>> On 08/02/2021 10:52, Chris Wilson wrote:
>>> +static void remove_from_priolist(struct i915_sched *se,
>>> +                              struct i915_request *rq,
>>> +                              struct list_head *list,
>>> +                              bool tail)
>>> +{
>>> +     struct list_head *prev = rq->sched.link.prev;
>>
>> This depends on rq being at the head of it's list?
> 
> Not depends. We are testing if the list is singular, that is by removing
> this request from the i915_priolist.requests that list becomes empty,
> and so the i915_priolist can be removed from the skiplist.

Ah so obvious now, thanks.

> 
>>> +
>>> +     GEM_BUG_ON(!i915_request_in_priority_queue(rq));
>>> +
>>> +     __list_del_entry(&rq->sched.link);
>>> +     if (tail)
>>> +             list_add_tail(&rq->sched.link, list);
>>> +     else
>>> +             list_add(&rq->sched.link, list);
>>
>> So it is more move than remove(_from_priolist) ?
> 
> Yes, we can quite happily just keep the list_move(), except we then end
> up with lots of empty levels. At first I thought the walk through those
> (during dequeue) would be cheaper than removing. The max lock holdtime
> strongly favours the removal as we move requests around (which will
> happen in dribs-and-drabs) over doing a bulk remove at dequeue.

Give it a name to reflect it is a move like move_to_priolist?

> 
>>> +     /* If we just removed the last element in the old plist, delete it */
>>> +     if (list_empty(prev))
>>> +             __remove_priolist(se, prev);
>>> +}
>>> +
>>> +struct i915_priolist *__i915_sched_dequeue_next(struct i915_sched *se)
>>> +{
>>> +     struct i915_priolist * const s = &se->queue.sentinel;
>>> +     struct i915_priolist *pl = s->next[0];
>>> +     int lvl;
>>> +
>>> +     GEM_BUG_ON(!list_empty(&pl->requests));
>>
>> Lost as to why pl->requests has to be empty at this point. Considering:
>>
>> +#define i915_sched_dequeue(se, pl, rq, rn) \
>> +       for ((pl) = (se)->queue.sentinel.next[0]; \
>> +            (pl) != &(se)->queue.sentinel; \
>> +            (pl) = __i915_sched_dequeue_next(se)) \
>> +               priolist_for_each_request_safe(rq, rn, pl)
>> +
>>
>> I also don't understand what it would de-queue. Whole priolist woth of
>> requests at a time? But it can't be empty to dequeue something. And who
>> puts any unconsumed requests back on somewhere in this case.
> 
> It's a double for-loop. I think the flattening of the logic is worth it.
> 
> During dequeue, we always move the very first request onto the next list
> (i.e. i915_sched.active). Then when we have finished with all the
> requests in one priority level, we move onto the next i915_priolist
> (calling __i915_sched_dequeue_next).
> 
> So in __i915_sched_dequeue_next, we are always dealing with an empty
> i915_priolist and want to advance the start of the skiplist to the next.

Ah yes, __i915_sched_dequeue_next is only if there isn't a "goto done" 
from within the inner loop (priolist_for_each_request_safe). Well it's a 
bit fragile if someone does a break one day. But I guess bug on will be 
hit then so it's okay.

Right, I have some more questions for which I'll start a new sub-thread.

Regards,

Tvrtko

> 
> I was thinking that in order to hide the double for-loop, we could
> handle the non-empty i915_priolist case causing it to break out of the
> outer loop. So we could get rid of the goto done.
> -Chris
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
