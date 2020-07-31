Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DBE234855
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 17:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0055D6EADC;
	Fri, 31 Jul 2020 15:21:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BEB66EADC
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 15:21:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21995050-1500050 for multiple; Fri, 31 Jul 2020 16:21:33 +0100
MIME-Version: 1.0
In-Reply-To: <159620835263.21624.6486195506614954052@build.alporthouse.com>
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
 <20200730093756.16737-17-chris@chris-wilson.co.uk>
 <5d2020bf-c981-9b8b-f825-d4c88795ed0e@linux.intel.com>
 <159620835263.21624.6486195506614954052@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 16:21:32 +0100
Message-ID: <159620889211.21624.16106830089209931432@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 16/21] drm/i915/gt: Track signaled
 breadcrumbs outside of the breadcrumb spinlock
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

Quoting Chris Wilson (2020-07-31 16:12:32)
> Quoting Tvrtko Ursulin (2020-07-31 16:06:55)
> > 
> > On 30/07/2020 10:37, Chris Wilson wrote:
> > > @@ -191,17 +188,19 @@ static void signal_irq_work(struct irq_work *work)
> > >   {
> > >       struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
> > >       const ktime_t timestamp = ktime_get();
> > > +     struct llist_node *signal, *sn;
> > >       struct intel_context *ce, *cn;
> > >       struct list_head *pos, *next;
> > > -     LIST_HEAD(signal);
> > > +
> > > +     signal = NULL;
> > > +     if (unlikely(!llist_empty(&b->signaled_requests)))
> > > +             signal = llist_del_all(&b->signaled_requests);
> > >   
> > >       spin_lock(&b->irq_lock);
> > >   
> > > -     if (list_empty(&b->signalers))
> > > +     if (!signal && list_empty(&b->signalers))
> > 
> > The only open from previous round was on this change. If I understood 
> > your previous reply correctly, checking this or not simply controls the 
> > disarm point and is not related to this patch. With the check added now 
> > we would disarm later, because even already signaled requests would keep 
> > it armed. I would prefer this was a separate patch if you could possibly 
> > be convinced.
> 
> I considered that since we add to the lockless list and then queue the
> irq work, that is a path that is not driven by the interrupt and so
> causing an issue with the idea of the interrupt shadow. Having a simple
> test I thought was a positive side-effect to filter out the early
> irq_work.

How about a compromise and I sell the patch with a comment:
        /*
         * Keep the irq armed until the interrupt after all listeners are gone.
         *
         * Enabling/disabling the interrupt is rather costly, roughly a couple
         * of hundred microseconds. If we are proactive and enable/disable
         * the interrupt around every request that wants a breadcrumb, we
         * quickly drown in the extra orders of magnitude of latency imposed
         * on request submission.
         *
         * So we try to be lazy, and keep the interrupts enabled until no
         * more listeners appear within a breadcrumb interrupt interval (that
         * is until a request completes that no one cares about). The
         * observation is that listeners come in batches, and will often
         * listen to a bunch of requests in succession.
         *
         * We also try to avoid raising too many interrupts, as they may
         * be generated by userspace batches and it is unfortunately rather
         * too easy to drown the CPU under a flood of GPU interrupts. Thus
         * whenever no one appears to be listening, we turn off the interrupts.
         * Fewer interrupts should conserve power -- at the very least, fewer
         * interrupt draw less ire from other users of the system and tools
         * like powertop.
	 */
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
