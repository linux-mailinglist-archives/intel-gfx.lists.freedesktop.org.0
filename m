Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A6B14434F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 18:33:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 307A86EDF9;
	Tue, 21 Jan 2020 17:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EC696EDF9
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 17:33:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 09:33:32 -0800
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; d="scan'208";a="228922397"
Received: from wmszyfel-mobl2.ger.corp.intel.com (HELO [10.252.10.247])
 ([10.252.10.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 21 Jan 2020 09:33:31 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200120175704.36340-1-chris@chris-wilson.co.uk>
 <1a812a72-7b17-f5b5-da41-dbeadae5b014@linux.intel.com>
 <157955205055.2218.11312513798739510262@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <134f369b-c123-6466-8053-dbe792b6b081@linux.intel.com>
Date: Tue, 21 Jan 2020 17:33:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157955205055.2218.11312513798739510262@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark the removal of the
 i915_request from the sched.link
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 20/01/2020 20:27, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-01-20 19:47:08)
>>
>> On 20/01/2020 17:57, Chris Wilson wrote:
>>> Keep the rq->fence.flags consistent with the status of the
>>> rq->sched.link, and clear the associated bits when decoupling the link
>>> on retirement (as we may wish to inspect those flags independent of
>>> other state).
>>>
>>> Fixes: 32ff621fd744 ("drm/i915/gt: Allow temporary suspension of inflight requests")
>>> References: https://gitlab.freedesktop.org/drm/intel/issues/997
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/i915_request.c | 2 ++
>>>    1 file changed, 2 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
>>> index 9ed0d3bc7249..78a5f5d3c070 100644
>>> --- a/drivers/gpu/drm/i915/i915_request.c
>>> +++ b/drivers/gpu/drm/i915/i915_request.c
>>> @@ -221,6 +221,8 @@ static void remove_from_engine(struct i915_request *rq)
>>>                locked = engine;
>>>        }
>>>        list_del_init(&rq->sched.link);
>>> +     clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
>>
>> This one I think can not be set in retirement. Or there is a path?
> 
> No, I don't think there's one for pqueue, it was just being consistent.
>>
>> [comes back after writing the comment below]
>>
>> Race between completion to hold puts the request on hold, then request
>> completes just as it is un-held? It needs retire to happen at the right
>> time, driven by ...? Is this it?
> 
> Yeah, but the clear one I was thinking about is
> 
> static bool hold_request(const struct i915_request *rq)
> {
>          struct i915_dependency *p;
> 
>          /*
>           * If one of our ancestors is on hold, we must also be on hold,
>           * otherwise we will bypass it and execute before it.
>           */
>          list_for_each_entry(p, &rq->sched.signalers_list, signal_link) {
>                  const struct i915_request *s =
>                          container_of(p->signaler, typeof(*s), sched);
> 
>                  if (s->engine != rq->engine)
>                          continue;
> 
>                  if (i915_request_on_hold(s))
>                          return true;
>          }
> 
>          return false;
> }
> 
> where we check the rq->fence.flags which holds stale information.

i915_request_on_hold? Why would that hold stale information?
 
>>
>>> +     clear_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags);
>>
>> This one I think indeed can race with completion.
> 
> Clear both for consistency, caught out once, may be caught out again on
> the other.

From the bug we have this:

<0>[   61.788268] gem_exec-2120    3.... 56070451us : i915_sched_node_reinit: i915_sched_node_reinit:400 GEM_BUG_ON(!list_empty(&node->link))
...
2>[   61.793703] kernel BUG at drivers/gpu/drm/i915/i915_scheduler.c:400!
<4>[   61.793736] invalid opcode: 0000 [#1] PREEMPT SMP PTI
<4>[   61.793744] CPU: 0 PID: 2120 Comm: gem_exec_fence Tainted: G     U  W         5.5.0-rc6-CI-CI_DRM_7762+ #1
<4>[   61.793755] Hardware name:  /NUC7i5BNB, BIOS BNKBL357.86A.0054.2017.1025.1822 10/25/2017
<4>[   61.793822] RIP: 0010:i915_sched_node_reinit+0x14a/0x150 [i915]
<4>[   61.793831] Code: 00 48 c7 c2 10 27 79 a0 48 c7 c7 1f c2 69 a0 e8 0c 37 b0 e0 bf 01 00 00 00 e8 22 09 b0 e0 31 f6 bf 09 00 00 00 e8 86 48 a1 e0 <0f> 0b 0f 1f 40 00 48 8d 47 10 48 89 3f 48 89 7f 08 48 89 47 10 48
<4>[   61.793850] RSP: 0018:ffffc900020d3a58 EFLAGS: 00010296
<4>[   61.793857] RAX: ffff888261bed140 RBX: ffff88825c429140 RCX: 0000000000000006
<4>[   61.793865] RDX: 00000000000018dd RSI: 0000000000000000 RDI: 0000000000000009
<4>[   61.793873] RBP: ffff888272f58440 R08: 0000000000000000 R09: 0000000000000000
<4>[   61.793881] R10: 0000000000000000 R11: 0000000000000000 R12: ffff88825c4292e8
<4>[   61.793889] R13: 0000000000000000 R14: ffffc900020d3dc0 R15: ffff888256a50068
<4>[   61.793898] FS:  00007f321ab41e40(0000) GS:ffff888276c00000(0000) knlGS:0000000000000000
<4>[   61.793907] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[   61.793914] CR2: 00007f275c1470f8 CR3: 0000000260a28002 CR4: 00000000003606f0
<4>[   61.793922] Call Trace:
<4>[   61.793979]  __i915_request_create+0x1c6/0x5a0 [i915]
<4>[   61.794034]  i915_request_create+0x86/0x1c0 [i915]
<4>[   61.794085]  i915_gem_do_execbuffer+0xbf2/0x2500 [i915]

This would mean in use request returned to the RCU slab cache, right? Do we expect to keep any rq.fence->flags across rq recycling? Perhaps we need dma_fence_reinit or something with the asserts similar to what you added in:

commit 67a3acaab7167157fb827595019eaf55df244824
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Fri Nov 22 09:49:24 2019 +0000

    drm/i915: Use a ctor for TYPESAFE_BY_RCU i915_request

And I reviewed, although of course the substance mostly evaporated from my head by now.

Question seems to be how an on list request could have been returned to the slab. Does hold needs to have a reference if it races with parallel retire?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
