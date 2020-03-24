Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB66191663
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 17:28:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0574E6E4AD;
	Tue, 24 Mar 2020 16:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBDD06E4AD
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 16:28:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20677400-1500050 for multiple; Tue, 24 Mar 2020 16:28:32 +0000
MIME-Version: 1.0
In-Reply-To: <7b893a58-9b3c-97f8-10b9-36f4f2bea4ea@linux.intel.com>
References: <20200324120718.977-1-chris@chris-wilson.co.uk>
 <7b893a58-9b3c-97f8-10b9-36f4f2bea4ea@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158506731283.27678.16915846119892676540@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 24 Mar 2020 16:28:32 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Pull tasklet
 interrupt-bh local to direct submission
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

Quoting Tvrtko Ursulin (2020-03-24 16:04:47)
> 
> On 24/03/2020 12:07, Chris Wilson wrote:
> > We dropped calling process_csb prior to handling direct submission in
> > order to avoid the nesting of spinlocks and lift process_csb() and the
> > majority of the tasklet out of irq-off. However, we do want to avoid
> > ksoftirqd latency in the fast path, so try and pull the interrupt-bh
> > local to direct submission if we can acquire the tasklet's lock.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_lrc.c | 6 ++++++
> >   1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 210f60e14ef4..82dee2141b46 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -2891,6 +2891,12 @@ static void __submit_queue_imm(struct intel_engine_cs *engine)
> >       if (reset_in_progress(execlists))
> >               return; /* defer until we restart the engine following reset */
> >   
> > +     /* Hopefully we clear execlists->pending[] to let us through */
> > +     if (execlists->pending[0] && tasklet_trylock(&execlists->tasklet))
> 
> Does access to pending needs a READ_ONCE?

Yes, we are peeking outside of the tasklet.

>   {
> > +             process_csb(engine);
> > +             tasklet_unlock(&execlists->tasklet);
> > +     }
> > +
> >       __execlists_submission_tasklet(engine);
> >   }
> >   
> > 
> 
> __execlists_submission_tasklet does check with READ_ONCE.
> 
> I think locking is fine, given how normal flow is tasklet -> irqsave 
> engine lock, and here we have the reverse, but a trylock.

And inside process_csb() we don't take the active lock, so we just need
to serialise calls to process_csb(). We don't strictly rely on it as
it's just an optimisation for latency so we can trylock and not worry
about not making forward progress -- the tasklet *running* but waiting
on the execlists lock is sufficient to ensure that a dequeue will happen
after this point if we can't do it ourselves.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
