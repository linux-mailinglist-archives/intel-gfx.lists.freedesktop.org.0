Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D13D302E04
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 22:37:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87E1A89C69;
	Mon, 25 Jan 2021 21:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 813BB89C69
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 21:37:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23697671-1500050 for multiple; Mon, 25 Jan 2021 21:37:39 +0000
MIME-Version: 1.0
In-Reply-To: <9b91423b-ad4f-7381-824f-a47d6758ae4a@linux.intel.com>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-4-chris@chris-wilson.co.uk>
 <9b91423b-ad4f-7381-824f-a47d6758ae4a@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 21:37:41 +0000
Message-ID: <161161066105.29150.1732962919103079139@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 04/41] drm/i915: Teach the i915_dependency
 to use a double-lock
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-01-25 15:34:53)
> 
> On 25/01/2021 14:00, Chris Wilson wrote:
> > @@ -390,24 +410,27 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
> >   {
> >       bool ret = false;
> >   
> > -     spin_lock_irq(&schedule_lock);
> > +     /* The signal->lock is always the outer lock in this double-lock. */
> > +     spin_lock(&signal->lock);
> >   
> >       if (!node_signaled(signal)) {
> >               INIT_LIST_HEAD(&dep->dfs_link);
> >               dep->signaler = signal;
> > -             dep->waiter = node;
> > +             dep->waiter = node_get(node);
> >               dep->flags = flags;
> >   
> >               /* All set, now publish. Beware the lockless walkers. */
> > +             spin_lock_nested(&node->lock, SINGLE_DEPTH_NESTING);
> >               list_add_rcu(&dep->signal_link, &node->signalers_list);
> >               list_add_rcu(&dep->wait_link, &signal->waiters_list);
> > +             spin_unlock(&node->lock);
> >   
> >               /* Propagate the chains */
> >               node->flags |= signal->flags;
> >               ret = true;
> >       }
> >   
> > -     spin_unlock_irq(&schedule_lock);
> > +     spin_unlock(&signal->lock);
> 
> So we have to be sure another entry point cannot try to lock the same 
> nodes in reverse, that is with reversed roles. Situation where nodes are 
> simultaneously both each other waiters and signalers does indeed sound 
> impossible so I think this is fine.
> 
> Only if some entry point would lock something which is a waiter, and 
> then went to boost the priority of a signaler. That is still one with a 
> global lock. So the benefit of this patch is just to reduce contention 
> between adding and re-scheduling?

We remove the global schedule_lock in the next patch. This patch tackles
the "simpler" list management by noting that the chains can always be
taken in order of (signaler, waiter) so we have strict nesting for a
local double lock.

> And __i915_schedule does walk the list of signalers without holding this 
> new lock. What is the safety net there? RCU? Do we need 
> list_for_each_entry_rcu and explicit rcu_read_(un)lock in there then?

Yes, we are already supposedly RCU safe for the list of signalers, as
we've been depending on that for a while.

#define for_each_signaler(p__, rq__) \
        list_for_each_entry_rcu(p__, \
                                &(rq__)->sched.signalers_list, \
                                signal_link)

-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
