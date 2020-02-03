Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF751504BF
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 11:59:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FCCC6EBC5;
	Mon,  3 Feb 2020 10:59:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C253C6EBC2
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 10:59:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20098083-1500050 for multiple; Mon, 03 Feb 2020 10:58:52 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <9ed6606c-650f-3a32-5c85-c0b244ac1ea7@linux.intel.com>
References: <20200203094152.4150550-1-chris@chris-wilson.co.uk>
 <20200203094152.4150550-2-chris@chris-wilson.co.uk>
 <9ed6606c-650f-3a32-5c85-c0b244ac1ea7@linux.intel.com>
Message-ID: <158072752973.20090.2756546612205856039@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 03 Feb 2020 10:58:49 +0000
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Initialise basic fence before
 acquiring seqno
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-02-03 10:55:52)
> 
> On 03/02/2020 09:41, Chris Wilson wrote:
> > Inside the intel_timeline_get_seqno(), we currently track the retirement
> > of the old cachelines by listening to the new request. This requires
> > that the new request is ready to be used and so requires a minimum bit
> > of initialisation prior to getting the new seqno.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > ---
> >   drivers/gpu/drm/i915/i915_request.c | 21 ++++++++++++++-------
> >   1 file changed, 14 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 78a5f5d3c070..f56b046a32de 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -595,6 +595,8 @@ static void __i915_request_ctor(void *arg)
> >       i915_sw_fence_init(&rq->submit, submit_notify);
> >       i915_sw_fence_init(&rq->semaphore, semaphore_notify);
> >   
> > +     dma_fence_init(&rq->fence, &i915_fence_ops, &rq->lock, 0, 0);
> > +
> >       rq->file_priv = NULL;
> >       rq->capture_list = NULL;
> >   
> > @@ -653,25 +655,30 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
> >               }
> >       }
> >   
> > -     ret = intel_timeline_get_seqno(tl, rq, &seqno);
> > -     if (ret)
> > -             goto err_free;
> > -
> >       rq->i915 = ce->engine->i915;
> >       rq->context = ce;
> >       rq->engine = ce->engine;
> >       rq->ring = ce->ring;
> >       rq->execution_mask = ce->engine->mask;
> >   
> > +     kref_init(&rq->fence.refcount);
> > +     rq->fence.flags = 0;
> > +     rq->fence.error = 0;
> > +     INIT_LIST_HEAD(&rq->fence.cb_list);
> 
> One of these fields the previous user leaves in a non-empty state?

Yes, we don't reset cb_list after signaling, error and flags hold
residuals, but refcount is known to be 0!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
