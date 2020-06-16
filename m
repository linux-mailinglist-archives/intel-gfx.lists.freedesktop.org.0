Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 356041FC10B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 23:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EBCB6E99E;
	Tue, 16 Jun 2020 21:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F32C16E99E
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 21:34:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21518406-1500050 for multiple; Tue, 16 Jun 2020 22:34:53 +0100
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB379930B74EC336F26E655B0FA99D0@BYAPR11MB3799.namprd11.prod.outlook.com>
References: <20200616190136.19905-1-chris@chris-wilson.co.uk>
 <BYAPR11MB379930B74EC336F26E655B0FA99D0@BYAPR11MB3799.namprd11.prod.outlook.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <159234329283.19488.13313421164867153363@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 16 Jun 2020 22:34:52 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Decouple completed requests on
 unwind
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

Quoting Abodunrin, Akeem G (2020-06-16 22:31:45)
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chris
> > Wilson
> > Sent: Tuesday, June 16, 2020 12:02 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Subject: [Intel-gfx] [PATCH] drm/i915/gt: Decouple completed requests on
> > unwind
> > 
> > Since the introduction of preempt-to-busy, requests can complete in the
> > background, even while they are not on the engine->active.requests list.
> > As such, the engine->active.request list itself is not in strict retirement order,
> > and we have to scan the entire list while unwinding to not miss any.
> > However, if the request is completed we currently leave it on the list [until
> > retirement], but we could just as simply remove it and stop treating it as
> > active. We would only have to then traverse it once while unwinding in quick
> > succession.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_lrc.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index e866b8d721ed..4eb397b0e14d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -1114,8 +1114,10 @@ __unwind_incomplete_requests(struct
> > intel_engine_cs *engine)
> >       list_for_each_entry_safe_reverse(rq, rn,
> >                                        &engine->active.requests,
> >                                        sched.link) {
> > -             if (i915_request_completed(rq))
> > -                     continue; /* XXX */
> > +             if (i915_request_completed(rq)) {
> > +                     list_del_init(&rq->sched.link);
> 
> Albeit this seems like a valid approach to resolve inconsistence in the list of requests that are active or retired, but we can't just delete completed requests from the list until full retirement is done - otherwise we stand the risk of out-of-the-order list, and could lead to inconsistence (which is the original problem you intend to resolve). Have you thought about locking mechanism?

The list is always in execution [context] order. Within a context it is
in retirement order. It is irrelevant whether it is removed here or in
remove_from_engine().
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
