Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2A123ED4A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 14:27:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE8BA89C3F;
	Fri,  7 Aug 2020 12:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB8189C3F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 12:27:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22060883-1500050 for multiple; Fri, 07 Aug 2020 13:27:06 +0100
MIME-Version: 1.0
In-Reply-To: <eccd39b4-bfff-47e1-478e-f94e3a0b7406@linux.intel.com>
References: <20200807083256.32761-1-chris@chris-wilson.co.uk>
 <20200807083256.32761-6-chris@chris-wilson.co.uk>
 <eccd39b4-bfff-47e1-478e-f94e3a0b7406@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 07 Aug 2020 13:27:04 +0100
Message-ID: <159680322489.9674.13734094312211609090@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/gt: Split the breadcrumb
 spinlock between global and contexts
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

Quoting Tvrtko Ursulin (2020-08-07 12:54:48)
> 
> On 07/08/2020 09:32, Chris Wilson wrote:
> > As we funnel more and more contexts into the breadcrumbs on an engine,
> > the hold time of b->irq_lock grows. As we may then contend with the
> > b->irq_lock during request submission, this increases the burden upon
> > the engine->active.lock and so directly impacts both our execution
> > latency and client latency. If we split the b->irq_lock by introducing a
> > per-context spinlock to manage the signalers within a context, we then
> > only need the b->irq_lock for enabling/disabling the interrupt and can
> > avoid taking the lock for walking the list of contexts within the signal
> > worker. Even with the current setup, this greatly reduces the number of
> > times we have to take and fight for b->irq_lock.
> > 
> > Furthermore, this closes the race between enabling the signaling context
> > while it is in the process of being signaled and removed:
> 
> Where is this race present? Hope not in the patch preceding this one?!

No, unfortunately this patch was fixing a bug as a part of the previous
series so it wasn't detected by CI until after the first pair were merged
(even though that pair were run separately just in case).

So what's happening is that as we remove the request from ce->signals,
we add a request to ce->signals ... on a different engine.

We took b->irq_lock for rq1->engine[vcs0] and then rq2->engine[vcs1].
Since we are holding the b->irq_lock on the active engine for each
request...

Ouch.

> > -     list_for_each_entry_safe(ce, cn, &b->signalers, signal_link) {
> > -             GEM_BUG_ON(list_empty(&ce->signals));
> > +             if (!spin_trylock(&ce->signal_lock))
> 
> Trylock makes me think the solution is not completely elegant even 
> before I figured it all out. So going back to the first question - can 
> you fix the race in scope of the current locking scheme to start with?

The trylock is just because we can have signal_irq_worker running on
multiple cpus simultaneously. It's nothing to do with the locking
requirements, just skipping over a wait before doing no work.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
