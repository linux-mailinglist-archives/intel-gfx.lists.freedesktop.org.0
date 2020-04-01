Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A439419B580
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 20:30:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 719496E97F;
	Wed,  1 Apr 2020 18:30:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12EEB6E97F
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 18:30:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20768754-1500050 for multiple; Wed, 01 Apr 2020 19:30:07 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHOwBHMTt7+P-9ROygohsGiGqp=-1N++0vnk0pFKTst0rA@mail.gmail.com>
References: <20200331213108.11340-1-chris@chris-wilson.co.uk>
 <20200331213108.11340-7-chris@chris-wilson.co.uk>
 <CAM0jSHOwBHMTt7+P-9ROygohsGiGqp=-1N++0vnk0pFKTst0rA@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <158576580723.5852.11322956821464826054@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 01 Apr 2020 19:30:07 +0100
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915/gem: Try allocating va from
 free space
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-04-01 19:20:56)
> On Tue, 31 Mar 2020 at 22:31, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > If the current node/entry location is occupied, and the object is not
> > pinned, try assigning it some free space. We cannot wait here, so if in
> > doubt, we unreserve and try to grab all at once.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 13 +++++++++++--
> >  1 file changed, 11 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index bc8aa9604787..d8c746108d85 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -446,8 +446,17 @@ eb_pin_vma(struct i915_execbuffer *eb,
> >         if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_GTT))
> >                 pin_flags |= PIN_GLOBAL;
> >
> > -       if (unlikely(i915_vma_pin(vma, 0, 0, pin_flags)))
> > -               return false;
> > +       if (unlikely(i915_vma_pin(vma, 0, 0, pin_flags))) {
> > +               if (entry->flags & EXEC_OBJECT_PINNED)
> > +                       return false;
> > +
> > +               pin_flags &= ~PIN_OFFSET_FIXED;
> > +               if (unlikely(i915_vma_pin(vma,
> > +                                         entry->pad_to_size,
> > +                                         entry->alignment,
> > +                                         pin_flags)))
> 
> Just curious, why not just apply the rest of the flags here(MAP, 48B,
> BIAS etc) which saves us from having to bind/unbind/bind if it's
> trivially misplaced?

That required actually doing some work to refactor the flag selection!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
