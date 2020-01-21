Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42374143EE9
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 15:07:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 435836ED0C;
	Tue, 21 Jan 2020 14:07:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 380D26ED0C
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 14:07:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19958956-1500050 for multiple; Tue, 21 Jan 2020 14:07:16 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200121100927.114886-1-chris@chris-wilson.co.uk>
 <20200121130411.267092-1-chris@chris-wilson.co.uk>
 <524735a8-dc0c-fdfc-941a-5cc3afaac40e@linux.intel.com>
In-Reply-To: <524735a8-dc0c-fdfc-941a-5cc3afaac40e@linux.intel.com>
Message-ID: <157961563444.4434.6318084724990340871@skylake-alporthouse-com>
Date: Tue, 21 Jan 2020 14:07:14 +0000
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/execlists: Reclaim the hanging
 virtual request
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

Quoting Tvrtko Ursulin (2020-01-21 13:55:29)
> 
> 
> On 21/01/2020 13:04, Chris Wilson wrote:
> > +             GEM_BUG_ON(!reset_in_progress(&engine->execlists));
> > +
> > +             /*
> > +              * An unsubmitted request along a virtual engine will
> > +              * remain on the active (this) engine until we are able
> > +              * to process the context switch away (and so mark the
> > +              * context as no longer in flight). That cannot have happened
> > +              * yet, otherwise we would not be hanging!
> > +              */
> > +             spin_lock_irqsave(&ve->base.active.lock, flags);
> > +             GEM_BUG_ON(intel_context_inflight(rq->context) != engine);
> > +             GEM_BUG_ON(ve->request != rq);
> > +             ve->request = NULL;
> > +             spin_unlock_irqrestore(&ve->base.active.lock, flags);
> > +
> > +             rq->engine = engine;
> 
> Lets see I understand this... tasklet has been disabled and ring paused. 
> But we find an uncompleted request in the ELSP context, with rq->engine 
> == virtual engine. Therefore this cannot be the first request on this 
> timeline but has to be later.

Not quite.

engine->execlists.active[] tracks the HW, it get's updated only upon
receiving HW acks (or we reset).

So if execlists_active()->engine == virtual, it can only mean that the
inflight _hanging_ request has already been unsubmitted by an earlier
preemption in execlists_dequeue(), but that preemption has not yet been
processed by the HW. (Hence the preemption-reset underway.)

Now while we coalesce the requests for a context into a single ELSP[]
slot, and only record the last request submitted for a context, we have
to walk back along that context's timeline to find the earliest
incomplete request and blame the hang upon it.

For a virtual engine, it's much simpler as there is only ever one
request in flight, but I don't think that has any impact here other
than that we only need to repair the single unsubmitted request that was
returned to the virtual engine.

> One which has been put on the runqueue but 
> not yet submitted to hw. (Because one at a time.) Or it has been 
> unsubmitted by __unwind_incomplete_request already. In the former case 
> why move it to the physical engine? Also in the latter actually, it 
> would overwrite rq->engine with the physical one.

Yes. For incomplete preemption event, the request is *still* on this
engine and has not been released (rq->context->inflight == engine, so it
cannot be submitted to any other engine, until after we acknowledge the
context has been saved and is no longer being accessed by HW.) It is
legal for us to process the hanging request along this engine; we have a
suboptimal decision to return the request to the same engine after the
reset, but since we have replaced the hanging payload, the request is a
mere signaling placeholder (and I do not think will overly burden the
system and negatively impact other virtual engines).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
