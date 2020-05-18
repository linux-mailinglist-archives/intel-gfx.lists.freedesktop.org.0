Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB5C1D75B7
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 12:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AF4B89DFC;
	Mon, 18 May 2020 10:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7144089FA7
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 10:57:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21228363-1500050 for multiple; Mon, 18 May 2020 11:57:42 +0100
MIME-Version: 1.0
In-Reply-To: <6339737f-1f48-34f9-f075-74fc1c72f65f@linux.intel.com>
References: <20200518081440.17948-1-chris@chris-wilson.co.uk>
 <20200518081440.17948-6-chris@chris-wilson.co.uk>
 <6339737f-1f48-34f9-f075-74fc1c72f65f@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158979946209.17769.4780392433008098425@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 18 May 2020 11:57:42 +0100
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/gt: Use virtual_engine during
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

Quoting Tvrtko Ursulin (2020-05-18 11:51:40)
> 
> On 18/05/2020 09:14, Chris Wilson wrote:
> > @@ -2125,9 +2128,10 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >        * find itself trying to jump back into a context it has just
> >        * completed and barf.
> >        */
> > -
> >       if ((last = *active)) {
> > -             if (need_preempt(engine, last, rb)) {
> > +             ve = first_virtual_engine(engine);
> 
> If you left this outside the if..
> 
> > @@ -2212,9 +2216,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >               }
> >       }
> >   
> > -     while (rb) { /* XXX virtual is always taking precedence */
> > -             struct virtual_engine *ve =
> > -                     rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
> > +     /* XXX virtual is always taking precedence */
> > +     while ((ve = first_virtual_engine(engine))) {
> 
> ... then here you wouldn't have to do a re-lookup of the same node, right?

But since we loop inside here, we need to recheck either at the continue
or here.

So:
	ve = first_virtual_engine();
	...
	if (ve) do {
	} while (ve = first_virtual_engine());

is kind of what we want, so a

	while (ve) {
	next_virtual_engine:
		ve = first_virtual_engine()
	}

instead of continues?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
