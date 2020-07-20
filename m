Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3D22262B2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 17:02:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C5D89F43;
	Mon, 20 Jul 2020 15:02:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91A6A89F06
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 15:02:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21874740-1500050 for multiple; Mon, 20 Jul 2020 16:02:01 +0100
MIME-Version: 1.0
In-Reply-To: <19078363-d740-4a17-45b5-aa84316b6a16@linux.intel.com>
References: <20200720092312.16975-1-chris@chris-wilson.co.uk>
 <20200720092312.16975-5-chris@chris-wilson.co.uk>
 <19078363-d740-4a17-45b5-aa84316b6a16@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jul 2020 16:02:00 +0100
Message-ID: <159525732054.15672.10561761760642698977@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915/gt: Distinguish the virtual
 breadcrumbs from the irq breadcrumbs
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

Quoting Tvrtko Ursulin (2020-07-20 12:23:35)
> 
> On 20/07/2020 10:23, Chris Wilson wrote:
> > -void intel_engine_init_breadcrumbs(struct intel_engine_cs *engine)
> > +struct intel_breadcrumbs *
> > +intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
> >   {
> > -     struct intel_breadcrumbs *b = &engine->breadcrumbs;
> > +     struct intel_breadcrumbs *b;
> > +
> > +     b = kzalloc(sizeof(*b), GFP_KERNEL);
> > +     if (!b)
> > +             return NULL;
> >   
> >       spin_lock_init(&b->irq_lock);
> >       INIT_LIST_HEAD(&b->signalers);
> >       INIT_LIST_HEAD(&b->signaled_requests);
> >   
> >       init_irq_work(&b->irq_work, signal_irq_work);
> > +
> > +     b->irq_engine = irq_engine;
> > +     if (!irq_engine)
> > +             b->irq_armed = true; /* fake HW, used for irq_work */
> 
> Disarm is checking for !b->irq_engine and arm asserts there must be when 
> arming. If instead arm would abort on !b->irq_engine would it all work 
> just as well without the need for this hack?

Yes, it is asymmetric. I thought keeping the asymmetry in place for the
conversion would be simpler, but didn't really make an attempt to make
irq_armed behave as one would expect.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
