Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EF3234839
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 17:12:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63816E93E;
	Fri, 31 Jul 2020 15:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD8E6E93E
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 15:12:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21994956-1500050 for multiple; Fri, 31 Jul 2020 16:12:33 +0100
MIME-Version: 1.0
In-Reply-To: <5d2020bf-c981-9b8b-f825-d4c88795ed0e@linux.intel.com>
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
 <20200730093756.16737-17-chris@chris-wilson.co.uk>
 <5d2020bf-c981-9b8b-f825-d4c88795ed0e@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 16:12:32 +0100
Message-ID: <159620835263.21624.6486195506614954052@build.alporthouse.com>
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

Quoting Tvrtko Ursulin (2020-07-31 16:06:55)
> 
> On 30/07/2020 10:37, Chris Wilson wrote:
> > @@ -191,17 +188,19 @@ static void signal_irq_work(struct irq_work *work)
> >   {
> >       struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
> >       const ktime_t timestamp = ktime_get();
> > +     struct llist_node *signal, *sn;
> >       struct intel_context *ce, *cn;
> >       struct list_head *pos, *next;
> > -     LIST_HEAD(signal);
> > +
> > +     signal = NULL;
> > +     if (unlikely(!llist_empty(&b->signaled_requests)))
> > +             signal = llist_del_all(&b->signaled_requests);
> >   
> >       spin_lock(&b->irq_lock);
> >   
> > -     if (list_empty(&b->signalers))
> > +     if (!signal && list_empty(&b->signalers))
> 
> The only open from previous round was on this change. If I understood 
> your previous reply correctly, checking this or not simply controls the 
> disarm point and is not related to this patch. With the check added now 
> we would disarm later, because even already signaled requests would keep 
> it armed. I would prefer this was a separate patch if you could possibly 
> be convinced.

I considered that since we add to the lockless list and then queue the
irq work, that is a path that is not driven by the interrupt and so
causing an issue with the idea of the interrupt shadow. Having a simple
test I thought was a positive side-effect to filter out the early
irq_work.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
