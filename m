Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B332E307AAE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:26:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17EBA6E98B;
	Thu, 28 Jan 2021 16:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29CFC6E98B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:26:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23728205-1500050 for multiple; Thu, 28 Jan 2021 16:26:15 +0000
MIME-Version: 1.0
In-Reply-To: <7537d75b-3292-05aa-1ef2-b65aca4d3d73@linux.intel.com>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-20-chris@chris-wilson.co.uk>
 <7537d75b-3292-05aa-1ef2-b65aca4d3d73@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 16:26:13 +0000
Message-ID: <161185117340.2943.10174190803342821813@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 20/41] drm/i915: Replace priolist rbtree
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
Cc: thomas.hellstrom@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-01-28 15:56:19)
> On 25/01/2021 14:01, Chris Wilson wrote:
> > diff --git a/drivers/gpu/drm/i915/i915_priolist_types.h b/drivers/gpu/drm/i915/i915_priolist_types.h
> > index bc2fa84f98a8..1200c3df6a4a 100644
> > --- a/drivers/gpu/drm/i915/i915_priolist_types.h
> > +++ b/drivers/gpu/drm/i915/i915_priolist_types.h
> > @@ -38,10 +38,36 @@ enum {
> >   #define I915_PRIORITY_UNPREEMPTABLE INT_MAX
> >   #define I915_PRIORITY_BARRIER (I915_PRIORITY_UNPREEMPTABLE - 1)
> >   
> > +#ifdef CONFIG_64BIT
> > +#define I915_PRIOLIST_HEIGHT 12
> > +#else
> > +#define I915_PRIOLIST_HEIGHT 11
> > +#endif
> 
> I did not get this. On one hand I could think pointers are larger on 
> 64-bit so go for fewer levels, if size was a concern. But on the other 
> hand 32-bit is less important these days, definitely much less as a 
> performance platform. So going for less memory use => worse performance 
> on a less important platform, which typically could be more memory 
> constrained? Not sure I see it as that important either way to be 
> distinctive but a comment would satisfy me.

Just aligned to the cacheline. The struct is 128B on 64b and 64B on 32b.
On 64B, we will scale to around 16 million requests in flight and 4
million on 32b. Which should be enough.

If we shrunk 64b to a 64B node, we would only scale to 256 requests
which limit we definitely will exceed.

> >   struct i915_priolist {
> >       struct list_head requests;
> 
> What would be on this list? Request can only be on one at a time, so I 
> was thinking these nodes would have pointers to list of that priority, 
> rather than lists themselves. Assuming there can be multiple nodes of 
> the same priority in the 2d hierarcy. Possibly I don't understand the 
> layout.

A request is only on one list (queue, active, hold). But we may still
have more than one request at the same deadline, though that will likely
be limited to priority-inheritance and timeslice deferrals.

Since we would need pointer to the request, we could only reclaim a
single pointer here, which is not enough to warrant reducing the overall
node size. And while there is at least one user of request->sched.link,
the list maintenance will still be incurred. Using request->sched.link
remains a convenient interface.

> 
> > -     struct rb_node node;
> >       int priority;
> > +
> > +     int level;
> > +     struct i915_priolist *next[I915_PRIOLIST_HEIGHT];
> 
> Does every node need maximum height or you could allocated depending on 
> current height?

Every slab allocation here is a power of 2, so there are only a few
different options that are worthwhile (on 64b the only other choice is
[4], unless you want to go larger to [28]). It did not feel like enough
benefit to justify the extra code.

> > -static void assert_priolists(struct i915_sched_engine * const se)
> > -{
> > -     struct rb_node *rb;
> > -     long last_prio;
> > -
> > -     if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> > -             return;
> > -
> > -     GEM_BUG_ON(rb_first_cached(&se->queue) !=
> > -                rb_first(&se->queue.rb_root));
> > -
> > -     last_prio = INT_MAX;
> > -     for (rb = rb_first_cached(&se->queue); rb; rb = rb_next(rb)) {
> > -             const struct i915_priolist *p = to_priolist(rb);
> > -
> > -             GEM_BUG_ON(p->priority > last_prio);
> > -             last_prio = p->priority;
> > -     }
> > +     root->prng = next_pseudo_random32(root->prng);
> > +     return  __ffs(root->prng) / 2;
> 
> Where is the relationship to I915_PRIOLIST_HEIGHT? Feels root->prng % 
> I915_PRIOLIST_HEIGHT would be more obvious here unless I am terribly 
> mistaken. Or at least put a comment saying why the hack.

HEIGHT is the maximum possible for our struct. skiplists only want to
increment the height of the tree one step at a time. So we choose a level
with decreasing probability, and then limit that to the maximum height of
the current tree + 1, clamped to HEIGHT.

You might notice that unlike traditional skiplists, this uses a
probability of 0.25 for each additional level. A neat trick discovered by
Con Kolivas (I haven't found it mentioned elsewhere) as the cost of the
extra level (using P=.5) is the same as the extra chain length with
P=.25. So you can scale to higher number of requests by packing more
requests into each level.

So that is split between randomly choosing a level and then working out
the height of the node.

> >   static struct list_head *
> >   lookup_priolist(struct intel_engine_cs *engine, int prio)
> >   {
> > +     struct i915_priolist *update[I915_PRIOLIST_HEIGHT];
> >       struct i915_sched_engine * const se = &engine->active;
> > -     struct i915_priolist *p;
> > -     struct rb_node **parent, *rb;
> > -     bool first = true;
> > -
> > -     lockdep_assert_held(&engine->active.lock);
> > -     assert_priolists(se);
> > +     struct i915_priolist_root *root = &se->queue;
> > +     struct i915_priolist *pl, *tmp;
> > +     int lvl;
> >   
> > +     lockdep_assert_held(&se->lock);
> >       if (unlikely(se->no_priolist))
> >               prio = I915_PRIORITY_NORMAL;
> >   
> > +     for_each_priolist(pl, root) { /* recycle any empty elements before us */
> > +             if (pl->priority >= prio || !list_empty(&pl->requests))
> > +                     break;
> > +
> > +             i915_priolist_advance(root, pl);
> > +     }
> > +
> >   find_priolist:
> > -     /* most positive priority is scheduled first, equal priorities fifo */
> > -     rb = NULL;
> > -     parent = &se->queue.rb_root.rb_node;
> > -     while (*parent) {
> > -             rb = *parent;
> > -             p = to_priolist(rb);
> > -             if (prio > p->priority) {
> > -                     parent = &rb->rb_left;
> > -             } else if (prio < p->priority) {
> > -                     parent = &rb->rb_right;
> > -                     first = false;
> > -             } else {
> > -                     return &p->requests;
> > -             }
> > +     pl = &root->sentinel;
> > +     lvl = pl->level;
> > +     while (lvl >= 0) {
> > +             while (tmp = pl->next[lvl], tmp->priority >= prio)
> > +                     pl = tmp;
> > +             if (pl->priority == prio)
> > +                     goto out;
> > +             update[lvl--] = pl;
> >       }
> >   
> >       if (prio == I915_PRIORITY_NORMAL) {
> > -             p = &se->default_priolist;
> > +             pl = &se->default_priolist;
> > +     } else if (!pl_empty(&root->sentinel.requests)) {
> > +             pl = pl_pop(&root->sentinel.requests);
> >       } else {
> > -             p = kmem_cache_alloc(global.slab_priorities, GFP_ATOMIC);
> > +             pl = kmem_cache_alloc(global.slab_priorities, GFP_ATOMIC);
> >               /* Convert an allocation failure to a priority bump */
> > -             if (unlikely(!p)) {
> > +             if (unlikely(!pl)) {
> >                       prio = I915_PRIORITY_NORMAL; /* recurses just once */
> >   
> > -                     /* To maintain ordering with all rendering, after an
> > +                     /*
> > +                      * To maintain ordering with all rendering, after an
> >                        * allocation failure we have to disable all scheduling.
> >                        * Requests will then be executed in fifo, and schedule
> >                        * will ensure that dependencies are emitted in fifo.
> > @@ -260,18 +304,103 @@ lookup_priolist(struct intel_engine_cs *engine, int prio)
> >               }
> >       }
> >   
> > -     p->priority = prio;
> > -     INIT_LIST_HEAD(&p->requests);
> > +     pl->priority = prio;
> > +     INIT_LIST_HEAD(&pl->requests);
> >   
> > -     rb_link_node(&p->node, rb, parent);
> > -     rb_insert_color_cached(&p->node, &se->queue, first);
> > +     lvl = random_level(root);
> > +     if (lvl > root->sentinel.level) {
> > +             if (root->sentinel.level < I915_PRIOLIST_HEIGHT - 1) {
> > +                     lvl = ++root->sentinel.level;
> 
> root->sentinel.level is maximum currently populated height? So if 
> random_level said insert at 4 but there are currently only 2 levels, 
> height will grow by one only?

Yes. The idea is keep the number of next[] as small as possible for the
number of nodes in the tree. (Since the height of the tree is the
constant overhead in list traversal.)

> > +                     update[lvl] = &root->sentinel;
> > +             } else {
> > +                     lvl = I915_PRIOLIST_HEIGHT - 1;
> 
> But if maximum level already has been reached then this branch does not 
> set anything to update[],

at the next level.

> relying on the while loop earlier in the 
> function has populated it? How should I think of the update array?

The update[] is the array of nodes just before the position we need to
insert. So update[] needs only be the height of the tree at that time,
and if we decide to grow the tree, update[height] will be the root node,
as we will be the first in that level.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
