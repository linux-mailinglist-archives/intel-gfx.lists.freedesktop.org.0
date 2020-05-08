Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C564C1CB431
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 17:58:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E4C6EB2D;
	Fri,  8 May 2020 15:58:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E0F36EB2D
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 15:58:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21153384-1500050 for multiple; Fri, 08 May 2020 16:58:28 +0100
MIME-Version: 1.0
In-Reply-To: <87blmy4e9t.fsf@gaia.fi.intel.com>
References: <20200508092933.738-1-chris@chris-wilson.co.uk>
 <20200508092933.738-4-chris@chris-wilson.co.uk>
 <87blmy4e9t.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158895350540.30605.6858581872635477697@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 08 May 2020 16:58:25 +0100
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915: Tidy awaiting on dma-fences
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

Quoting Mika Kuoppala (2020-05-08 16:50:22)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Just tidy up the return handling for completed dma-fences. While it may
> > return errors for invalid fence, we already know that we have a good
> > fence and the only error will be an already signaled fence.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/i915_sw_fence.c | 10 ++++------
> >  1 file changed, 4 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
> > index 7daf81f55c90..295b9829e2da 100644
> > --- a/drivers/gpu/drm/i915/i915_sw_fence.c
> > +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
> > @@ -546,13 +546,11 @@ int __i915_sw_fence_await_dma_fence(struct i915_sw_fence *fence,
> >       cb->fence = fence;
> >       i915_sw_fence_await(fence);
> >  
> > -     ret = dma_fence_add_callback(dma, &cb->base, __dma_i915_sw_fence_wake);
> > -     if (ret == 0) {
> > -             ret = 1;
> > -     } else {
> > +     ret = 1;
> > +     if (dma_fence_add_callback(dma, &cb->base, __dma_i915_sw_fence_wake)) {
> > +             /* fence already signaled */
> 
> This seems to hold water now. Perhaps for eternity.
> 
> But how about if (dma_fence_add_callback() == -ENOENT) ret = 0; else
> GEM_BUG_ON()?

Because that's just ugly. If we do not install the callback, we need to
signal the callback. The only question is whether or not an error there
is moot -- we either have the fence, or we would have exploded. The
fence callback will be propagating errors along the fence.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
