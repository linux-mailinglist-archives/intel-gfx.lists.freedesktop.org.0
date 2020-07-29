Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D6E231EAD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 14:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4878889C3F;
	Wed, 29 Jul 2020 12:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F4D689C3F
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 12:40:45 +0000 (UTC)
IronPort-SDR: guFQ8GihYnL/L0jgmUocZHkwrqSsNlcQIc/Q+DKkxCieibB4kTI7k4pcOZmcOe4HBwx4yt09bt
 WaWO9BReYAkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="139418650"
X-IronPort-AV: E=Sophos;i="5.75,410,1589266800"; d="scan'208";a="139418650"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 05:40:44 -0700
IronPort-SDR: QOzJB/D+b46qPEcbl/ExJbauKnuoaZRhqlzeeCWA7NbAmfYJAQXTY6ZA/25NLntRoMPACmCWNQ
 rtjoC5DCkLTw==
X-IronPort-AV: E=Sophos;i="5.75,410,1589266800"; d="scan'208";a="490740877"
Received: from eziedan-mobl.ger.corp.intel.com (HELO [10.255.199.43])
 ([10.255.199.43])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 05:40:42 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-8-chris@chris-wilson.co.uk>
 <54de929a-9449-8ac2-a8bd-641a61d0525e@linux.intel.com>
 <159594649917.665.6631422765642650487@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3274fa3b-7c34-1925-2cd6-145c73acb63b@linux.intel.com>
Date: Wed, 29 Jul 2020 13:40:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159594649917.665.6631422765642650487@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/66] drm/i915: Make the stale cached
 active node available for any timeline
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


On 28/07/2020 15:28, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-07-17 14:04:58)
>>
>> On 15/07/2020 12:50, Chris Wilson wrote:
>>> Rather than require the next timeline after idling to match the MRU
>>> before idling, reset the index on the node and allow it to match the
>>> first request. However, this requires cmpxchg(u64) and so is not trivial
>>> on 32b, so for compatibility we just fallback to keeping the cached node
>>> pointing to the MRU timeline.
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> ---
>>>    drivers/gpu/drm/i915/i915_active.c | 21 +++++++++++++++++++--
>>>    1 file changed, 19 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
>>> index 0854b1552bc1..6737b5615c0c 100644
>>> --- a/drivers/gpu/drm/i915/i915_active.c
>>> +++ b/drivers/gpu/drm/i915/i915_active.c
>>> @@ -157,6 +157,10 @@ __active_retire(struct i915_active *ref)
>>>                rb_link_node(&ref->cache->node, NULL, &ref->tree.rb_node);
>>>                rb_insert_color(&ref->cache->node, &ref->tree);
>>>                GEM_BUG_ON(ref->tree.rb_node != &ref->cache->node);
>>> +
>>> +             /* Make the cached node available for reuse with any timeline */
>>> +             if (IS_ENABLED(CONFIG_64BIT))
>>> +                     ref->cache->timeline = 0; /* needs cmpxchg(u64) */
>>
>> Or when fence context wraps shock horror.
> 
> I more concerned about that we use timeline:0 as a special unordered
> timeline. It's reserved by use in the dma_fence_stub, and everything
> will start to break when the timelines wrap. The earliest causalities
> will be the kernel_context timelines which are also very special indices
> for the barriers.
> 
>>
>>>        }
>>>    
>>>        spin_unlock_irqrestore(&ref->tree_lock, flags);
>>> @@ -235,9 +239,22 @@ static struct active_node *__active_lookup(struct i915_active *ref, u64 idx)
>>>    {
>>>        struct active_node *it;
>>>    
>>> +     GEM_BUG_ON(idx == 0); /* 0 is the unordered timeline, rsvd for cache */
>>> +
>>>        it = READ_ONCE(ref->cache);
>>> -     if (it && it->timeline == idx)
>>> -             return it;
>>> +     if (it) {
>>> +             u64 cached = READ_ONCE(it->timeline);
>>> +
>>> +             if (cached == idx)
>>> +                     return it;
>>> +
>>> +#ifdef CONFIG_64BIT /* for cmpxchg(u64) */
>>> +             if (!cached && !cmpxchg(&it->timeline, 0, idx)) {
>>> +                     GEM_BUG_ON(i915_active_fence_isset(&it->base));
>>> +                     return it;
>>
>> cpmxchg suggests this needs to be atomic, however above the check for
>> equality comes from a separate read.
> 
> That's fine, and quite common to avoid cmpxchg if the current value
> already does not match the expected condition.

How? What is another thread is about to install its idx into 
it->timeline with cmpxchg and this thread does not see it because it 
just returned on the "cached == idx" condition.

> 
>> Since there is a lookup code path under the spinlock, perhaps the
>> unlocked lookup could just fail, and then locked lookup could re-assign
>> the timeline without the need for cmpxchg?
> 
> The unlocked/locked lookup are the same routine. You pointed that out
> :-p

Like I remember from ten days ago.. Anyway, I am pointing out it still 
doesn't smell right.

__active_lookup(...) -> lockless
{
...
	it = fetch_node(ref->tree.rb_node);
	while (it) {
		if (it->timeline < idx) {
			it = fetch_node(it->node.rb_right);
		} else if (it->timeline > idx) {
			it = fetch_node(it->node.rb_left);
		} else {
			WRITE_ONCE(ref->cache, it);
			break;
		}
	}
...
}

Then in active_instance, locked:

...
	parent = NULL;
	p = &ref->tree.rb_node;
	while (*p) {
		parent = *p;

		node = rb_entry(parent, struct active_node, node);
		if (node->timeline == idx) {
			kmem_cache_free(global.slab_cache, prealloc);
			goto out;
		}

		if (node->timeline < idx)
			p = &parent->rb_right;
		else
			p = &parent->rb_left;
			WRITE_ONCE(ref->cache, it);
			break;
		}
	}
...

Tree walk could be consolidated between the two.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
