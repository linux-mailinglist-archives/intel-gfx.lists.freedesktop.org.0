Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9ED1D7955
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 15:09:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 219B389EBB;
	Mon, 18 May 2020 13:09:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97FBE89EBB
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 13:09:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21229871-1500050 for multiple; Mon, 18 May 2020 14:09:05 +0100
MIME-Version: 1.0
In-Reply-To: <2bcbbf4a-42ad-ac61-89f0-a1fb25fb2c04@linux.intel.com>
References: <20200518081440.17948-6-chris@chris-wilson.co.uk>
 <20200518123325.26678-1-chris@chris-wilson.co.uk>
 <2bcbbf4a-42ad-ac61-89f0-a1fb25fb2c04@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158980734430.17769.7168882813683816716@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 18 May 2020 14:09:04 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Use virtual_engine during
 execlists_dequeue
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

Quoting Tvrtko Ursulin (2020-05-18 14:01:27)
> 
> On 18/05/2020 13:33, Chris Wilson wrote:
> > +static struct virtual_engine *
> > +first_virtual_engine(struct intel_engine_cs *engine)
> > +{
> > +     struct intel_engine_execlists *el = &engine->execlists;
> > +     struct rb_node *rb = rb_first_cached(&el->virtual);
> > +
> > +     while (rb) {
> > +             struct virtual_engine *ve =
> > +                     rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
> > +             struct i915_request *rq = READ_ONCE(ve->request);
> > +
> > +             if (!rq) { /* lazily cleanup after another engine handled rq */
> > +                     rb_erase_cached(rb, &el->virtual);
> > +                     RB_CLEAR_NODE(rb);
> > +                     rb = rb_first_cached(&el->virtual);
> > +                     continue;
> > +             }
> > +
> > +             if (!virtual_matches(ve, rq, engine)) {
> > +                     rb = rb_next(rb);
> > +                     continue;
> > +             }
> > +
> > +             return ve;
> > +     }
> > +
> > +     return NULL;
> > +}

> > -     while (rb) { /* XXX virtual is always taking precedence */
> > -             struct virtual_engine *ve =
> > -                     rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
> > +     while (ve) { /* XXX virtual is always taking precedence */
> >               struct i915_request *rq;
> >   
> >               spin_lock(&ve->base.active.lock);
> >   
> >               rq = ve->request;
> > -             if (unlikely(!rq)) { /* lost the race to a sibling */
> > -                     spin_unlock(&ve->base.active.lock);
> > -                     rb_erase_cached(rb, &execlists->virtual);
> > -                     RB_CLEAR_NODE(rb);
> > -                     rb = rb_first_cached(&execlists->virtual);
> > -                     continue;
> > -             }
> > +             if (unlikely(!rq)) /* lost the race to a sibling */
> > +                     goto unlock;
> 
> Doesn't this now rely on a later patch to clear the node?

This is cleared by first_virtual_engine

> >   
> >               GEM_BUG_ON(rq != ve->request);
> >               GEM_BUG_ON(rq->engine != &ve->base);
> >               GEM_BUG_ON(rq->context != &ve->context);
> >   
> > -             if (rq_prio(rq) >= queue_prio(execlists)) {
> > -                     if (!virtual_matches(ve, rq, engine)) {
> > -                             spin_unlock(&ve->base.active.lock);
> > -                             rb = rb_next(rb);
> > -                             continue;
> > -                     }
> > +             if (rq_prio(rq) < queue_prio(execlists)) {
> > +                     spin_unlock(&ve->base.active.lock);
> > +                     break;
> > +             }
> >   
> > -                     if (last && !can_merge_rq(last, rq)) {
> > -                             spin_unlock(&ve->base.active.lock);
> > -                             start_timeslice(engine, rq_prio(rq));
> > -                             return; /* leave this for another sibling */
> > -                     }
> > +             GEM_BUG_ON(!virtual_matches(ve, rq, engine));
> 
> This as well.

As first_virtual_engine skips non-matching nodes, it should only
unmatch during the unlocked phase since the lookup if it is claimed by
another engine. Then ve->request would be set to NULL and we the above
check fails.

So I think this patch stands by itself.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
