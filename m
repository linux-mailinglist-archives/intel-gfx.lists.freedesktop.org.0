Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FB5285C16
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 11:50:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A46216E087;
	Wed,  7 Oct 2020 09:49:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CD3D6E087
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 09:49:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22644837-1500050 for multiple; Wed, 07 Oct 2020 10:49:55 +0100
MIME-Version: 1.0
In-Reply-To: <87r1qacr10.fsf@gaia.fi.intel.com>
References: <20201007090947.19950-1-chris@chris-wilson.co.uk>
 <87r1qacr10.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 07 Oct 2020 10:49:54 +0100
Message-ID: <160206419423.1580.246985501418024675@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Perform all asynchronous
 waits prior to marking payload start
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

Quoting Mika Kuoppala (2020-10-07 10:40:59)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > The initial breadcrumb marks the transition from context wait and setup
> > into the request payload. We use the marker to determine if the request
> > is merely waiting to begin, or is inside the payload and hung.
> > Forgetting to include a breadcrumb before the user payload would mean we
> > do not reset the guilty user request, and conversely if the initial
> > breadcrumb is too early we blame the user for a problem elsewhere.
> 
> Agreed.
> 
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_client_blt.c | 18 +++++++++---------
> >  1 file changed, 9 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> > index 272cf3ea68d5..44821d94544f 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> > @@ -202,12 +202,6 @@ static void clear_pages_worker(struct work_struct *work)
> >       if (unlikely(err))
> >               goto out_request;
> >  
> > -     if (w->ce->engine->emit_init_breadcrumb) {
> > -             err = w->ce->engine->emit_init_breadcrumb(rq);
> > -             if (unlikely(err))
> > -                     goto out_request;
> > -     }
> > -
> >       /*
> >        * w->dma is already exported via (vma|obj)->resv we need only
> >        * keep track of the GPU activity within this vma/request, and
> > @@ -217,9 +211,15 @@ static void clear_pages_worker(struct work_struct *work)
> >       if (err)
> >               goto out_request;
> >  
> > -     err = w->ce->engine->emit_bb_start(rq,
> > -                                        batch->node.start, batch->node.size,
> > -                                        0);
> 
> We don't have to do any extra steps to counter
> 
> __i915_vma_move_to_active(vma, rq);
> 
> in error path?

No. We always submit the request, and the request is always serialised
with the steps that have been setup before. So if we fail in adding
another serialisation step, we can safely abort and complete all the
steps prior to this point (by submitting the empty request), and
anything that subsequently wants to wait on those resources we have
already claimed will wait on this request (which in turn waits on the
previous resource holders and so forth, the lock chain is never broken).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
