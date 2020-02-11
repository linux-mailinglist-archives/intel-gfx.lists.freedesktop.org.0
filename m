Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8AA159168
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 15:04:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 362BC6EA82;
	Tue, 11 Feb 2020 14:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4407C6EA82
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 14:04:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20187712-1500050 for multiple; Tue, 11 Feb 2020 14:04:02 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200211125856.978559-1-chris@chris-wilson.co.uk>
 <87ftfh9qmj.fsf@gaia.fi.intel.com>
In-Reply-To: <87ftfh9qmj.fsf@gaia.fi.intel.com>
Message-ID: <158142984033.2303.6748269743545872735@skylake-alporthouse-com>
Date: Tue, 11 Feb 2020 14:04:00 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Poison rings after use
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

Quoting Mika Kuoppala (2020-02-11 13:53:56)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > On retiring the request, we should not re-use these elements in the ring
> > (at least not until we fill the ringbuffer and knowingly reuse the space).
> > Leave behind some poison to (hopefully) trap ourselves if we make a
> > mistake.
> >
> > Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_request.c | 26 +++++++++++++++++---------
> >  1 file changed, 17 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 0ecc2cf64216..9ee7bf0200b0 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -203,6 +203,19 @@ static void free_capture_list(struct i915_request *request)
> >       }
> >  }
> >  
> > +static void __i915_request_fill(struct i915_request *rq, u8 val)
> > +{
> > +     void *vaddr = rq->ring->vaddr;
> > +     u32 head;
> > +
> > +     head = rq->infix;
> > +     if (rq->postfix < head) {
> > +             memset(vaddr + head, val, rq->ring->size - head);
> > +             head = 0;
> > +     }
> > +     memset(vaddr + head, val, rq->postfix - head);
> > +}
> > +
> >  static void remove_from_engine(struct i915_request *rq)
> >  {
> >       struct intel_engine_cs *engine, *locked;
> > @@ -247,6 +260,9 @@ bool i915_request_retire(struct i915_request *rq)
> >        */
> >       GEM_BUG_ON(!list_is_first(&rq->link,
> >                                 &i915_request_timeline(rq)->requests));
> > +     if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> > +             /* Poison before we release our space in the ring */
> > +             __i915_request_fill(rq, POISON_FREE);
> 
> Would it be too detrimental for perf to check for POISON_FREE when
> we emit the requests?

intel_ring_begin() does memset32(cs, POISON_INUSE, bytes / sizeof(*cs))
already, with the expectation that the HW dies if we miss a dword.

We could check in intel_ring_begin() that it is previously POISON_FREE
(we'd need to poison at allocation as well).

For it to be practical, we would also need to dump more information at
the point of detection. Which feels like it wants to reuse the debug
info we dump for errors. A bit more work, and should look at what we can
reuse from slab-debug and friends.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
