Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5161F75DA
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 11:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F4406E890;
	Fri, 12 Jun 2020 09:23:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AC4F6E890
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 09:23:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21473108-1500050 for multiple; Fri, 12 Jun 2020 10:23:32 +0100
MIME-Version: 1.0
In-Reply-To: <87eeqk8x2o.fsf@gaia.fi.intel.com>
References: <20200611160529.9558-1-chris@chris-wilson.co.uk>
 <87eeqk8x2o.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <159195381083.1506.15524005315925573285@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 12 Jun 2020 10:23:30 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Flush gen3 relocs harder, again
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

Quoting Mika Kuoppala (2020-06-12 10:14:55)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > gen3 does not fully flush MI stores to memory on MI_FLUSH, such that a
> > subsequent read from e.g. the sampler can bypass the store and read the
> > stale value from memory. This is a serious issue when we are using MI
> > stores to rewrite the batches for relocation, as it means that the batch
> > is reading from random user/kernel memory. While it is particularly
> > sensitive [and detectable] for relocations, reading stale data at any
> > time is a worry.
> >
> > Having started with a small number of delaying stores and doubling until
> > no more incoherency was seen over a few hours (with and without
> > background memory pressure), 32 was the magic number.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2018
> > References: a889580c087a ("drm/i915: Flush GPU relocs harder for gen3")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > ---
> > So gen3 requires a delay after to flush the previous stores, gen5 is
> > assuming it requires a delay between the seqno and the
> > MI_USER_INTERRUPT. Here I've made gen5 reuse the gen3 approach, but I
> > need to verify that it still holds.
> > ---
> >  drivers/gpu/drm/i915/gt/gen2_engine_cs.c | 39 +++++++++---------------
> >  1 file changed, 15 insertions(+), 24 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> > index 3fb0dc1fb910..342c476ec872 100644
> > --- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> > @@ -142,19 +142,26 @@ int gen4_emit_flush_vcs(struct i915_request *rq, u32 mode)
> >       return 0;
> >  }
> >  
> > -u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs)
> > +static u32 *__gen2_emit_breadcrumb(struct i915_request *rq, u32 *cs, int count)
> >  {
> >       GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
> >       GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
> >  
> >       *cs++ = MI_FLUSH;
> > +     *cs++ = MI_NOOP;
> > +
> > +     while (count--) {
> > +             *cs++ = MI_STORE_DWORD_INDEX;
> > +             *cs++ = I915_GEM_HWS_SCRATCH * sizeof(u32);
> > +             *cs++ = rq->fence.seqno;
> > +             *cs++ = MI_FLUSH | MI_NO_WRITE_FLUSH;
> 
> Why would you avoid write flush here?

It's a flush of the render caches; all I'm using it for here is a delay.
As evidenced, MI_FLUSH does not flush the stores by itself.

32 is an awful lot of papering. I should note that for gen5 not only did
we have the delay in the breadcrumb but also in the invalidation. Maybe
that would help for gen3
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
