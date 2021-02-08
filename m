Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE563132B0
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 13:46:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F1F6E8C3;
	Mon,  8 Feb 2021 12:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAF346E8C3
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 12:46:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23810686-1500050 for multiple; Mon, 08 Feb 2021 12:46:19 +0000
MIME-Version: 1.0
In-Reply-To: <cf5be530-1425-17b4-9710-0732e0269180@linux.intel.com>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-9-chris@chris-wilson.co.uk>
 <cf5be530-1425-17b4-9710-0732e0269180@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 08 Feb 2021 12:46:18 +0000
Message-ID: <161278837896.9448.6851136817080350809@build.alporthouse.com>
User-Agent: alot/0.9
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-02-08 12:29:14)
> 
> On 08/02/2021 10:52, Chris Wilson wrote:
> > +static void remove_from_priolist(struct i915_sched *se,
> > +                              struct i915_request *rq,
> > +                              struct list_head *list,
> > +                              bool tail)
> > +{
> > +     struct list_head *prev = rq->sched.link.prev;
> 
> This depends on rq being at the head of it's list?

Not depends. We are testing if the list is singular, that is by removing
this request from the i915_priolist.requests that list becomes empty,
and so the i915_priolist can be removed from the skiplist.

> > +
> > +     GEM_BUG_ON(!i915_request_in_priority_queue(rq));
> > +
> > +     __list_del_entry(&rq->sched.link);
> > +     if (tail)
> > +             list_add_tail(&rq->sched.link, list);
> > +     else
> > +             list_add(&rq->sched.link, list);
> 
> So it is more move than remove(_from_priolist) ?

Yes, we can quite happily just keep the list_move(), except we then end
up with lots of empty levels. At first I thought the walk through those
(during dequeue) would be cheaper than removing. The max lock holdtime
strongly favours the removal as we move requests around (which will
happen in dribs-and-drabs) over doing a bulk remove at dequeue.

> > +     /* If we just removed the last element in the old plist, delete it */
> > +     if (list_empty(prev))
> > +             __remove_priolist(se, prev);
> > +}
> > +
> > +struct i915_priolist *__i915_sched_dequeue_next(struct i915_sched *se)
> > +{
> > +     struct i915_priolist * const s = &se->queue.sentinel;
> > +     struct i915_priolist *pl = s->next[0];
> > +     int lvl;
> > +
> > +     GEM_BUG_ON(!list_empty(&pl->requests));
> 
> Lost as to why pl->requests has to be empty at this point. Considering:
> 
> +#define i915_sched_dequeue(se, pl, rq, rn) \
> +       for ((pl) = (se)->queue.sentinel.next[0]; \
> +            (pl) != &(se)->queue.sentinel; \
> +            (pl) = __i915_sched_dequeue_next(se)) \
> +               priolist_for_each_request_safe(rq, rn, pl)
> +
> 
> I also don't understand what it would de-queue. Whole priolist woth of 
> requests at a time? But it can't be empty to dequeue something. And who 
> puts any unconsumed requests back on somewhere in this case.

It's a double for-loop. I think the flattening of the logic is worth it.

During dequeue, we always move the very first request onto the next list
(i.e. i915_sched.active). Then when we have finished with all the
requests in one priority level, we move onto the next i915_priolist
(calling __i915_sched_dequeue_next).

So in __i915_sched_dequeue_next, we are always dealing with an empty
i915_priolist and want to advance the start of the skiplist to the next.

I was thinking that in order to hide the double for-loop, we could
handle the non-empty i915_priolist case causing it to break out of the
outer loop. So we could get rid of the goto done.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
