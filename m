Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B97C521B526
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:36:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044C06E086;
	Fri, 10 Jul 2020 12:35:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25EE16E086
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:35:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21777414-1500050 for multiple; Fri, 10 Jul 2020 13:35:55 +0100
MIME-Version: 1.0
In-Reply-To: <5b0e8dfd-43d2-a491-9134-e3b0e1a0ac5b@linux.intel.com>
References: <20200710120717.32484-1-chris@chris-wilson.co.uk>
 <20200710121609.6775-1-chris@chris-wilson.co.uk>
 <5b0e8dfd-43d2-a491-9134-e3b0e1a0ac5b@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 13:35:52 +0100
Message-ID: <159438455273.23667.12328392101350730435@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Be defensive in the face of
 false CS events
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

Quoting Tvrtko Ursulin (2020-07-10 13:30:09)
> 
> On 10/07/2020 13:16, Chris Wilson wrote:
> > If the HW throws a curve ball and reports either en event before it is
> > possible, or just a completely impossible event, we have to grin and
> > bear it. The first few events, we will likely not notice as we would be
> > expecting some event, but as soon as we stop expecting an event and yet
> > they still keep coming, then we enter into undefined state territory.
> > In which case, bail out, stop processing the events, and reset the
> > engine and our set of queued requests to recover.
> > 
> > The sporadic hangs and warnings will continue to plague CI, but at least
> > system stability should not be compromised.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2045
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_lrc.c | 8 ++++++--
> >   1 file changed, 6 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index fbcfeaed6441..c86324d2d2bb 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -2567,6 +2567,7 @@ static void process_csb(struct intel_engine_cs *engine)
> >       tail = READ_ONCE(*execlists->csb_write);
> >       if (unlikely(head == tail))
> >               return;
> > +     execlists->csb_head = tail;
> 
> This deserves a comment...
> 
> >   
> >       /*
> >        * Hopefully paired with a wmb() in HW!
> > @@ -2613,6 +2614,9 @@ static void process_csb(struct intel_engine_cs *engine)
> >               if (promote) {
> >                       struct i915_request * const *old = execlists->active;
> >   
> > +                     if (GEM_WARN_ON(!*execlists->pending))
> > +                             break;
> > +
> 
> ... but why not continue? You think nothing good can come out of trying 
> further and break simply expedites the hang? We have to be confident we 
> can cope with any random i915 state caused by skipping maybe valid entries.

We are already past the point of no return as the events coming from HW
do not correspond to our events; continuing on cannot recover, we will
already have made mistakes.
 
> Conclusion will define what kind of comment to put above. "Assume we 
> always consume all CSB entries, or things are really bad and we mark all 
> as invalid upon finding first bad entry"?

It's dead, Jim.

We escape out, reset the engine/GPU, consign the port tracking to the bin,
and reload with the next set of requests.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
