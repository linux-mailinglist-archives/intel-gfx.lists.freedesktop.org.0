Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BB62ECDA2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 11:17:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F1706E41A;
	Thu,  7 Jan 2021 10:17:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6131D6E41A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 10:17:06 +0000 (UTC)
IronPort-SDR: qePo8R3t7IN6WqF6dvQgKNH1pUe4z5YYZiNIfiAG9Pxrv+SnLNqd/pvj7ZzdtUX2ju9JB+vxLV
 NZUr9MJs66cg==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="177504697"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="177504697"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 02:17:00 -0800
IronPort-SDR: xnUUrFeun/LQ+gl3Y9xiDD0jalm4tNySTKMoWXrQ/JMXC3vJxSGo5JIPC7mDzj1V/UVIZSNG6z
 ibj8GxFkdp7Q==
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="379660718"
Received: from obenha-mobl2.ger.corp.intel.com (HELO [10.252.62.192])
 ([10.252.62.192])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 02:16:59 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210106123939.18435-1-chris@chris-wilson.co.uk>
 <20210106123939.18435-4-chris@chris-wilson.co.uk>
 <0ed63aeb-d58e-5ec6-2072-65d17be612dc@linux.intel.com>
 <160994932055.14894.15675793524963876311@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cf61d2c2-c0c0-5eca-94b5-33cbd8e4ab26@linux.intel.com>
Date: Thu, 7 Jan 2021 10:16:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <160994932055.14894.15675793524963876311@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gt: Remove timeslice
 suppression
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


On 06/01/2021 16:08, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-01-06 15:57:49)

[snip]

>>> @@ -1363,16 +1336,16 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>>>                        __unwind_incomplete_requests(engine);
>>>    
>>>                        last = NULL;
>>> -             } else if (need_timeslice(engine, last) &&
>>> -                        timeslice_expired(execlists, last)) {
>>> +             } else if (timeslice_expired(engine, last)) {
>>>                        ENGINE_TRACE(engine,
>>> -                                  "expired last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
>>> -                                  last->fence.context,
>>> -                                  last->fence.seqno,
>>> -                                  last->sched.attr.priority,
>>> +                                  "expired:%s last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
>>> +                                  yesno(timer_expired(&execlists->timer)),
>>> +                                  last->fence.context, last->fence.seqno,
>>> +                                  rq_prio(last),
>>>                                     execlists->queue_priority_hint,
>>>                                     yesno(timeslice_yield(execlists, last)));
>>>    
>>> +                     cancel_timer(&execlists->timer);
>>
>> What is this cancel for?
> 
> This branch is taken upon yielding the timeslice, but we may not submit
> a new pair of contexts, leaving the timer active (and marked as
> expired). Since the timer remains expired, we will continuously looped
> until a context switch, or some other preemption event.

Sorry I was looking at the cancel_timer in process_csb and ended up 
replying at the wrong spot. The situation there seems to be removing the 
single timeslice related call (set_timeslice) and adding a cancel_timer 
which is also not obvious to me what it is about.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
