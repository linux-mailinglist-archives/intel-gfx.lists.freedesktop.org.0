Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F20A223ECF6
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 13:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 666736E0CD;
	Fri,  7 Aug 2020 11:54:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F0E6E0CD
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 11:54:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22060465-1500050 for multiple; Fri, 07 Aug 2020 12:54:15 +0100
MIME-Version: 1.0
In-Reply-To: <8dc16013-5104-b328-0ddb-15d4cc14b027@linux.intel.com>
References: <20200807083256.32761-1-chris@chris-wilson.co.uk>
 <20200807083256.32761-4-chris@chris-wilson.co.uk>
 <8dc16013-5104-b328-0ddb-15d4cc14b027@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 07 Aug 2020 12:54:14 +0100
Message-ID: <159680125470.9674.10674412226026393934@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/gt: Track signaled breadcrumbs
 outside of the breadcrumb spinlock
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

Quoting Tvrtko Ursulin (2020-08-07 12:26:41)
> 
> On 07/08/2020 09:32, Chris Wilson wrote:
> >   static void signal_irq_work(struct irq_work *work)
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
> > @@ -242,7 +248,9 @@ static void signal_irq_work(struct irq_work *work)
> >                        * spinlock as the callback chain may end up adding
> >                        * more signalers to the same context or engine.
> >                        */
> > -                     __signal_request(rq, &signal);
> > +                     clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> > +                     if (__signal_request(rq))
> > +                             signal = __llist_add(&rq->signal_node, signal);
> 
> Presumably here you count on no possible races, allowing for a more 
> optimized, custom, __llist_add. It needs a comment at minimum, or even 
> better just use llist_add.

It's a purely local singly linked list here. We own the
request->signal_node as that is locked by the b->irq_lock and the
clear_bit, and signal is a local variable.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
