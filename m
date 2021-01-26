Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2CF303BD4
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 12:40:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF6B6E075;
	Tue, 26 Jan 2021 11:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15E016E075
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 11:40:30 +0000 (UTC)
IronPort-SDR: iW+p0gkNr9AHNAifxCRZWtHxWL2n+rNZqDwN6TJB+XDWv8thztzX58cw7S6BuiGUu6moh2zzkN
 gZ36MihM+ahg==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="159064563"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="159064563"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 03:40:29 -0800
IronPort-SDR: McIY3o5qplcWd6jUzB073RsWyto+PJAS0wCXWXD5wcnQ4cltqHSONxeQnu//MSIzvTcnzy7Fiw
 kpgViltgJysg==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="361953178"
Received: from jackedwa-mobl.ger.corp.intel.com (HELO [10.214.230.137])
 ([10.214.230.137])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 03:40:27 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-5-chris@chris-wilson.co.uk>
 <8201dfc1-9490-d0d9-f661-d7bb4e752723@linux.intel.com>
 <161166063330.29150.16248716198298940868@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fed21604-64d0-d08f-7797-1d3a785d4abf@linux.intel.com>
Date: Tue, 26 Jan 2021 11:40:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <161166063330.29150.16248716198298940868@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/41] drm/i915: Restructure priority
 inheritance
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
Cc: thomas.hellstrom@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/01/2021 11:30, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-01-26 11:12:53)
>>
>>
>> On 25/01/2021 14:01, Chris Wilson wrote:
>>> +static void ipi_schedule(struct work_struct *wrk)
>>> +{
>>> +     struct i915_sched_ipi *ipi = container_of(wrk, typeof(*ipi), work);
>>> +     struct i915_request *rq = xchg(&ipi->list, NULL);
>>> +
>>> +     do {
>>> +             struct i915_request *rn = xchg(&rq->sched.ipi_link, NULL);
>>> +             int prio;
>>> +
>>> +             prio = ipi_get_prio(rq);
>>> +
>>> +             /*
>>> +              * For cross-engine scheduling to work we rely on one of two
>>> +              * things:
>>> +              *
>>> +              * a) The requests are using dma-fence fences and so will not
>>> +              * be scheduled until the previous engine is completed, and
>>> +              * so we cannot cross back onto the original engine and end up
>>> +              * queuing an earlier request after the first (due to the
>>> +              * interrupted DFS).
>>> +              *
>>> +              * b) The requests are using semaphores and so may be already
>>> +              * be in flight, in which case if we cross back onto the same
>>> +              * engine, we will already have put the interrupted DFS into
>>> +              * the priolist, and the continuation will now be queued
>>> +              * afterwards [out-of-order]. However, since we are using
>>> +              * semaphores in this case, we also perform yield on semaphore
>>> +              * waits and so will reorder the requests back into the correct
>>> +              * sequence. This occurrence (of promoting a request chain
>>> +              * that crosses the engines using semaphores back unto itself)
>>> +              * should be unlikely enough that it probably does not matter...
>>> +              */
>>> +             local_bh_disable();
>>> +             i915_request_set_priority(rq, prio);
>>> +             local_bh_enable();
>>
>> Is it that important and wouldn't the priority order restore eventually
>> due timeslicing?
> 
> There would be a window in which we executed userspace code
> out-of-order. That's enough to scare me! However, for our PI dependency
> chains it should not matter as the only time we do submit out-of-order,
> we are stuck on _our_ semaphore that cannot be resolved until the
> requests are back in-order.

Out of order how? Within a single timeline?! I though only with 
incomplete view of priority inheritance, which in my mind could only 
cause deadlocks (if no timeslicing). But really really out of order?

> I've tried to trick this into causing problems with the
> i915_selftest/igt_schedule_cycle and gem_exec_schedule/noreorder.
> Fortunately for my sanity, neither test have caught any problems.
> 
> This is the handwaving part of removing the global lock.
> 
>>> +     /*
>>> +      * If we are setting the priority before being submitted, see if we
>>> +      * can quickly adjust our own priority in-situ and avoid taking
>>> +      * the contended engine->active.lock. If we need priority inheritance,
>>> +      * take the slow route.
>>> +      */
>>> +     if (rq_prio(rq) == I915_PRIORITY_INVALID) {
>>> +             struct i915_dependency *p;
>>> +
>>> +             rcu_read_lock();
>>> +             for_each_signaler(p, rq) {
>>> +                     struct i915_request *s =
>>> +                             container_of(p->signaler, typeof(*s), sched);
>>> +
>>> +                     if (rq_prio(s) >= prio)
>>> +                             continue;
>>> +
>>> +                     if (__i915_request_is_complete(s))
>>> +                             continue;
>>> +
>>> +                     break;
>>> +             }
>>> +             rcu_read_unlock();
>>
>> Exit this loop with a first lower priority incomplete signaler. What
>> does the block below then do? Feels like it needs a comment.
> 
> I thought I had sufficiently explained that in the comment above.
> 
> /* Update priority in place if no PI required */
>>> +             if (&p->signal_link == &rq->sched.signalers_list &&
>>> +                 cmpxchg(&rq->sched.attr.priority,
>>> +                         I915_PRIORITY_INVALID,
>>> +                         prio) == I915_PRIORITY_INVALID)
>>> +                     return;
> 
> It could do a few more tricks to change the priority in-place a second
> time, but I did not think that would be frequent enough to matter.
> Whereas we always adjust the priority from INVALID once before
> submission, and avoiding taking the lock then does make a difference to
> the profiles.

To start with, if p is NULL or un-initialized (can be, no?) then 
relationship of &p->signal_link to &rq->sched.signalers_list escapes me.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
