Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F67930BF6E
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 14:32:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A905F6E195;
	Tue,  2 Feb 2021 13:32:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E02A36E195
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 13:32:23 +0000 (UTC)
IronPort-SDR: RFJfO+WOHHCSGuOHlXKkP1PnUC/MRyFwxWjjrLR3/1XxMwR3JLqek1kWhsKx1UJHyq+R+5xTcH
 zb7GTCjx2nzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180075907"
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="180075907"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 05:32:23 -0800
IronPort-SDR: HsiNVRyeiXMut14H4SqzM3pWPWFKVC2QVCxgDPV8N9gEh+6JMHAvnXoIIXXjbmnA36ujmRlx4J
 qjKB6nNE7T6A==
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="432923913"
Received: from irisshal-mobl1.ger.corp.intel.com (HELO [10.214.210.18])
 ([10.214.210.18])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 05:32:21 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-17-chris@chris-wilson.co.uk>
 <77b97a4c-5bcb-5025-cf4a-f2f4b75a0f47@linux.intel.com>
 <161227238747.1150.1387305898508836921@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6bb1331b-1912-685c-b79f-70b7657b4288@linux.intel.com>
Date: Tue, 2 Feb 2021 13:32:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <161227238747.1150.1387305898508836921@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 17/57] drm/i915: Extract request suspension
 from the execlists
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


On 02/02/2021 13:26, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-02-02 13:15:52)
>>
>> On 01/02/2021 08:56, Chris Wilson wrote:
>>> +void __i915_sched_resume_request(struct intel_engine_cs *engine,
>>> +                              struct i915_request *rq)
>>> +{
>>> +     LIST_HEAD(list);
>>> +
>>> +     lockdep_assert_held(&engine->active.lock);
>>> +
>>> +     if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
>>> +             engine->execlists.queue_priority_hint = rq_prio(rq);
>>> +             tasklet_hi_schedule(&engine->execlists.tasklet);
>>> +     }
>>> +
>>> +     if (!i915_request_on_hold(rq))
>>> +             return;
>>> +
>>> +     ENGINE_TRACE(engine, "resuming request %llx:%lld\n",
>>> +                  rq->fence.context, rq->fence.seqno);
>>> +
>>> +     /*
>>> +      * Move this request back to the priority queue, and all of its
>>> +      * children and grandchildren that were suspended along with it.
>>> +      */
>>> +     do {
>>> +             struct i915_dependency *p;
>>> +
>>> +             RQ_TRACE(rq, "hold release\n");
>>> +
>>> +             GEM_BUG_ON(!i915_request_on_hold(rq));
>>> +             GEM_BUG_ON(!i915_sw_fence_signaled(&rq->submit));
>>> +
>>> +             i915_request_clear_hold(rq);
>>> +             list_del_init(&rq->sched.link);
>>> +
>>> +             queue_request(engine, rq);
>>> +
>>> +             /* Also release any children on this engine that are ready */
>>> +             for_each_waiter(p, rq) {
>>> +                     struct i915_request *w =
>>> +                             container_of(p->waiter, typeof(*w), sched);
>>> +
>>> +                     if (p->flags & I915_DEPENDENCY_WEAK)
>>> +                             continue;
>>> +
>>> +                     /* Propagate any change in error status */
>>> +                     if (rq->fence.error)
>>> +                             i915_request_set_error_once(w, rq->fence.error);
>>> +
>>> +                     if (w->engine != engine)
>>> +                             continue;
>>> +
>>> +                     /* We also treat the on-hold status as a visited bit */
>>> +                     if (!i915_request_on_hold(w))
>>> +                             continue;
>>> +
>>> +                     /* Check that no other parents are also on hold [BFS] */
>>> +                     if (hold_request(w))
>>> +                             continue;
>>
>> hold_request() appears deleted in the patch so possible rebase error.
> 
> The secret is we get to de-duplicate after having duplicated
> hold_request() in i915_scheduler in an earlier patch,
>    drm/i915: Extract request submission from execlists

Pfft ancient history long forgotten..

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
