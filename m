Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E24263087C7
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 11:26:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4461C6EAC2;
	Fri, 29 Jan 2021 10:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 025086EAC2
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 10:26:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23734584-1500050 for multiple; Fri, 29 Jan 2021 10:26:18 +0000
MIME-Version: 1.0
In-Reply-To: <dd2ca70a-a940-e475-6968-b63d28c8fd66@linux.intel.com>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-20-chris@chris-wilson.co.uk>
 <7537d75b-3292-05aa-1ef2-b65aca4d3d73@linux.intel.com>
 <161185117340.2943.10174190803342821813@build.alporthouse.com>
 <dd2ca70a-a940-e475-6968-b63d28c8fd66@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 10:26:17 +0000
Message-ID: <161191597709.867.10401094679429655002@build.alporthouse.com>
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

Quoting Tvrtko Ursulin (2021-01-29 09:37:27)
> 
> On 28/01/2021 16:26, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2021-01-28 15:56:19)
> 
> >>> -static void assert_priolists(struct i915_sched_engine * const se)
> >>> -{
> >>> -     struct rb_node *rb;
> >>> -     long last_prio;
> >>> -
> >>> -     if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> >>> -             return;
> >>> -
> >>> -     GEM_BUG_ON(rb_first_cached(&se->queue) !=
> >>> -                rb_first(&se->queue.rb_root));
> >>> -
> >>> -     last_prio = INT_MAX;
> >>> -     for (rb = rb_first_cached(&se->queue); rb; rb = rb_next(rb)) {
> >>> -             const struct i915_priolist *p = to_priolist(rb);
> >>> -
> >>> -             GEM_BUG_ON(p->priority > last_prio);
> >>> -             last_prio = p->priority;
> >>> -     }
> >>> +     root->prng = next_pseudo_random32(root->prng);
> >>> +     return  __ffs(root->prng) / 2;
> >>
> >> Where is the relationship to I915_PRIOLIST_HEIGHT? Feels root->prng %
> >> I915_PRIOLIST_HEIGHT would be more obvious here unless I am terribly
> >> mistaken. Or at least put a comment saying why the hack.
> > 
> > HEIGHT is the maximum possible for our struct. skiplists only want to
> > increment the height of the tree one step at a time. So we choose a level
> > with decreasing probability, and then limit that to the maximum height of
> > the current tree + 1, clamped to HEIGHT.
> > 
> > You might notice that unlike traditional skiplists, this uses a
> > probability of 0.25 for each additional level. A neat trick discovered by
> > Con Kolivas (I haven't found it mentioned elsewhere) as the cost of the
> > extra level (using P=.5) is the same as the extra chain length with
> > P=.25. So you can scale to higher number of requests by packing more
> > requests into each level.
> > 
> > So that is split between randomly choosing a level and then working out
> > the height of the node.
> 
> Choosing levels with decreasing probability by the virtue of using ffs 
> on a random number? Or because (BITS_PER_TYPE(u32) / 2) is greater than 
> I915_PRIOLIST_HEIGHT?

        /*
         * Given a uniform distribution of random numbers over the u32, then
         * the probability each bit is unset is P=0.5. The probability of a
         * successive sequence of bits being unset is P(n) = 0.5^n [n > 0].
         *   P(level:1) = 0.5
         *   P(level:2) = 0.25
         *   P(level:3) = 0.125
         *   P(level:4) = 0.0625
         *   ...
         * So we can use ffs() on a good random number generator to pick our
         * level. We divide by two to reduce the probability of choosing a
         * level to .25, as the cost of descending a level is the same as
         * following an extra link in the chain at that level (so we can
         * pack more nodes into fewer levels without incurring extra cost,
         * and allow scaling to higher volumes of requests without expanding
         * the height of the skiplist).
         */

-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
