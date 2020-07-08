Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2BB218F7F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 20:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E531B6E908;
	Wed,  8 Jul 2020 18:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 703E36E908
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 18:09:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21757001-1500050 for multiple; Wed, 08 Jul 2020 19:09:00 +0100
MIME-Version: 1.0
In-Reply-To: <846580f3-4dd4-ed0e-b461-010d7b0ae6be@linux.intel.com>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-4-chris@chris-wilson.co.uk>
 <846580f3-4dd4-ed0e-b461-010d7b0ae6be@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 08 Jul 2020 19:08:58 +0100
Message-ID: <159423173830.30287.17971074477427255070@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 03/20] drm/i915/gem: Don't drop the timeline
 lock during execbuf
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

Quoting Tvrtko Ursulin (2020-07-08 17:54:51)
> 
> On 06/07/2020 07:19, Chris Wilson wrote:
> > @@ -662,18 +692,22 @@ static int eb_reserve(struct i915_execbuffer *eb)
> >        * room for the earlier objects *unless* we need to defragment.
> >        */
> >   
> > -     if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
> > -             return -EINTR;
> > -
> >       pass = 0;
> >       do {
> > +             int err = 0;
> > +
> > +             if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
> > +                     return -EINTR;
> 
> Recently you explained to me why we still use struct mutex here so 
> maybe, while moving the code, document that in a comment.

Part of the work here is to eliminate the need for the struct_mutex,
that will be replaced by not dropping the vm->mutex while binding
multiple vma.

It's the interaction with the waits to flush other vm users when under
pressure that are the most annoying. This area is not straightforward,
and at least deserves some comments so that the thinking behind it can
be fixed.

> > +static struct i915_request *
> > +nested_request_create(struct intel_context *ce)
> > +{
> > +     struct i915_request *rq;
> > +
> > +     /* XXX This only works once; replace with shared timeline */
> 
> Once as in attempt to use the same local intel_context from another eb 
> would upset lockdep? It's not a problem I think.

"Once" as in this is the only time we can do this nested locking between
engines of the same context in the whole driver, or else lockdep would
have been right to complain. [i.e. if we ever do the reserve nesting, we
are screwed.]

Fwiw, I have posted patches that will eliminate the need for a nested
timeline here :)

> > +     mutex_lock_nested(&ce->timeline->mutex, SINGLE_DEPTH_NESTING);
> > +     intel_context_enter(ce);


> >   static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
> >   {
> >       struct intel_timeline *tl;
> > @@ -2087,9 +2174,7 @@ static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
> >       intel_context_enter(ce);
> >       rq = eb_throttle(ce);
> >   
> > -     intel_context_timeline_unlock(tl);
> > -
> > -     if (rq) {
> > +     while (rq) {
> >               bool nonblock = eb->file->filp->f_flags & O_NONBLOCK;
> >               long timeout;
> >   
> > @@ -2097,23 +2182,34 @@ static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
> >               if (nonblock)
> >                       timeout = 0;
> >   
> > +             mutex_unlock(&tl->mutex);
> 
> "Don't drop the timeline lock during execbuf"? Is the "during execbuf" 
> actually a smaller subset

We are before execbuf in my book :)

This is throttle the hog before we start, and reserve enough space in
the ring (we make sure there's a page, or thereabouts) to build a batch
without interruption.
 
> > +
> >               timeout = i915_request_wait(rq,
> >                                           I915_WAIT_INTERRUPTIBLE,
> >                                           timeout);
> >               i915_request_put(rq);
> >   
> > +             mutex_lock(&tl->mutex);
> > +
> >               if (timeout < 0) {
> >                       err = nonblock ? -EWOULDBLOCK : timeout;
> >                       goto err_exit;
> >               }
> > +
> > +             retire_requests(tl, NULL);
> > +             rq = eb_throttle(ce);
> 
> Alternative to avoid two call sites to eb_throttle of
> 
>    while (rq = eb_throttle(ce)) {
> 
> Or checkpatch does not like it?

Ta, that loop was annoying me, and I couldn't quite put my finger on
what.

checkpatch.pl --strict is quiet. Appears it only hates if (x = y).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
