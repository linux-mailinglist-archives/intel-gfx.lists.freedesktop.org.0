Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FBC1C939A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 17:05:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A966E9E4;
	Thu,  7 May 2020 15:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC2E06E9E4
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 15:05:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21139991-1500050 for multiple; Thu, 07 May 2020 16:05:27 +0100
MIME-Version: 1.0
In-Reply-To: <746f07e6-7e85-d11e-3e7a-2fe850891b01@linux.intel.com>
References: <20200507082124.1673-1-chris@chris-wilson.co.uk>
 <20200507082124.1673-2-chris@chris-wilson.co.uk>
 <746f07e6-7e85-d11e-3e7a-2fe850891b01@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158886392555.20858.15356860967210945301@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 07 May 2020 16:05:25 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gem: Treat submit-fence as
 weak dependency for new clients
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

Quoting Tvrtko Ursulin (2020-05-07 15:59:56)
> 
> On 07/05/2020 09:21, Chris Wilson wrote:
> > The submit-fence adds a weak dependency to the requests, and for the
> > purpose of our FQ_CODEL hinting we do not want to treat as a
> > restriction. This is primarily because clients may treat submit-fences
> > as a bidirectional bonding between a pair of co-ordinating requests.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 13 ++++++++++++-
> >   1 file changed, 12 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index 966523a8503f..e8bf0cf02fd7 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -2565,6 +2565,17 @@ static void retire_requests(struct intel_timeline *tl, struct i915_request *end)
> >                       break;
> >   }
> >   
> > +static bool new_client(struct i915_request *rq)
> > +{
> > +     struct i915_dependency *p;
> > +
> > +     list_for_each_entry(p, &rq->sched.signalers_list, signal_link)
> > +             if (!(p->flags & I915_DEPENDENCY_WEAK))
> > +                     return false;
> > +
> > +     return true;
> > +}
> > +
> >   static void eb_request_add(struct i915_execbuffer *eb)
> >   {
> >       struct i915_request *rq = eb->request;
> > @@ -2604,7 +2615,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
> >                * Allow interactive/synchronous clients to jump ahead of
> >                * the bulk clients. (FQ_CODEL)
> >                */
> > -             if (list_empty(&rq->sched.signalers_list))
> > +             if (new_client(rq))
> >                       attr.priority |= I915_PRIORITY_WAIT;
> >       } else {
> >               /* Serialise with context_close via the add_to_timeline */
> > 
> 
> Did absence of this have any functional effect? I hope not, but anyway:

Bah, I have a new test case where this WAIT bumping is still upsetting us.

I don't think I have any choice but to rip it out if we have timeslicing
enabled.

Would you prefer a complete remission of I915_PRIORITY_WAIT or keep it
under if (!intel_engine_has_timeslicing(rq->engine)) ?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
