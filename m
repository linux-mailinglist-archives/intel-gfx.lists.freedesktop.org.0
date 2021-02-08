Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC77313922
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 17:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5764E6E93D;
	Mon,  8 Feb 2021 16:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA4576E93D
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 16:19:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23813078-1500050 for multiple; Mon, 08 Feb 2021 16:19:18 +0000
MIME-Version: 1.0
In-Reply-To: <9a15139e-14e0-f7cd-0afe-08e7dd7aac2c@linux.intel.com>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-9-chris@chris-wilson.co.uk>
 <9a15139e-14e0-f7cd-0afe-08e7dd7aac2c@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 08 Feb 2021 16:19:18 +0000
Message-ID: <161280115888.9448.15201223948689283252@build.alporthouse.com>
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

Quoting Tvrtko Ursulin (2021-02-08 15:23:17)
> 
> On 08/02/2021 10:52, Chris Wilson wrote:
> >   static struct list_head *
> >   lookup_priolist(struct i915_sched *se, int prio)
> >   {
> > -     struct i915_priolist *p;
> > -     struct rb_node **parent, *rb;
> > -     bool first = true;
> > +     struct i915_priolist *update[I915_PRIOLIST_HEIGHT];
> > +     struct i915_priolist_root *const root = &se->queue;
> > +     struct i915_priolist *pl, *tmp;
> > +     int lvl;
> >   
> >       lockdep_assert_held(&se->lock);
> > -     assert_priolists(se);
> > -
> >       if (unlikely(se->no_priolist))
> >               prio = I915_PRIORITY_NORMAL;
> >   
> > +     for_each_priolist(pl, root) { /* recycle any empty elements before us */
> > +             if (pl->priority <= prio || !list_empty(&pl->requests))
> > +                     break;
> 
> This less part of the less-or-equal condition keeps confusing me as a 
> break criteria. If premise is cleaning up, why break on first smaller 
> prio? Would the idea be to prune all empty lists up to, not including, 
> the lookup prio?

Just parcelling up the work. If we tidy up all the unused nodes before
us, we insert ourselves at the head of the tree, and all the cheap
checks to see if this is the first request, or to find the first
request are happy.

It's not expected to find anything unused with the tweaks to tidy up
empty elements as we move between i915_priolist.requests, but it seems
sensible to keep as then it should be just checking the first
i915_priolist and breaking out.

> > -void __i915_priolist_free(struct i915_priolist *p)
> > +static void __remove_priolist(struct i915_sched *se, struct list_head *plist)
> >   {
> > -     kmem_cache_free(global.slab_priorities, p);
> > +     struct i915_priolist_root *root = &se->queue;
> > +     struct i915_priolist *pl, *tmp;
> > +     struct i915_priolist *old =
> > +             container_of(plist, struct i915_priolist, requests);
> > +     int prio = old->priority;
> > +     int lvl;
> > +
> > +     lockdep_assert_held(&se->lock);
> > +     GEM_BUG_ON(!list_empty(plist));
> > +
> > +     pl = &root->sentinel;
> > +     lvl = pl->level;
> > +     GEM_BUG_ON(lvl < 0);
> > +
> > +     if (prio != I915_PRIORITY_NORMAL)
> > +             pl_push(old, &pl->requests);
> > +
> > +     do {
> > +             while (tmp = pl->next[lvl], tmp->priority > prio)
> > +                     pl = tmp;
> > +             if (lvl <= old->level) {
> > +                     pl->next[lvl] = old->next[lvl];
> > +                     if (pl == &root->sentinel && old->next[lvl] == pl) {
> > +                             GEM_BUG_ON(pl->level != lvl);
> > +                             pl->level--;
> > +                     }
> > +             }
> > +     } while (--lvl >= 0);
> > +     GEM_BUG_ON(tmp != old);
> > +}

> > +struct i915_priolist *__i915_sched_dequeue_next(struct i915_sched *se)
> > +{
> > +     struct i915_priolist * const s = &se->queue.sentinel;
> > +     struct i915_priolist *pl = s->next[0];
> > +     int lvl;
> > +
> > +     GEM_BUG_ON(!list_empty(&pl->requests));
> > +     GEM_BUG_ON(pl == s);
> > +
> > +     /* Keep pl->next[0] valid for for_each_priolist iteration */
> > +     if (pl->priority != I915_PRIORITY_NORMAL)
> > +             pl_push(pl, &s->requests);
> > +
> > +     lvl = pl->level;
> > +     GEM_BUG_ON(lvl < 0);
> > +     do {
> > +             s->next[lvl] = pl->next[lvl];
> > +             if (pl->next[lvl] == s) {
> > +                     GEM_BUG_ON(s->level != lvl);
> > +                     s->level--;
> > +             }
> > +     } while (--lvl >= 0);
> > +
> > +     return pl->next[0];
> >   }
> 
> If both __i915_sched_dequeue_next and __remove_priolist are removing an 
> empty list from the hieararchy, why can't they shared some code?

The __remove_priolist does the general search and remove, whereas
dequeue_next is trying to keep O(1) remove-from-head. dequeue_next is
meant to be called many, many more times than __remove_priolist.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
