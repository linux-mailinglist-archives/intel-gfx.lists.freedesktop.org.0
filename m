Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA353154C3D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 20:27:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D0336E1F2;
	Thu,  6 Feb 2020 19:27:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A1E6E1F2
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 19:27:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20141181-1500050 for multiple; Thu, 06 Feb 2020 19:27:26 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200206014439.2137800-1-chris@chris-wilson.co.uk>
 <87a75vad33.fsf@gaia.fi.intel.com>
In-Reply-To: <87a75vad33.fsf@gaia.fi.intel.com>
Message-ID: <158101724430.7306.14060592749138163791@skylake-alporthouse-com>
Date: Thu, 06 Feb 2020 19:27:24 +0000
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Tweak gen7 xcs flushing
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

Quoting Mika Kuoppala (2020-02-06 16:35:12)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Don't immediately write the seqno into the breadcrumb slot, but wait
> > until we've attempted to flush the writes; that is we need to ensure the
> > memory is coherent prior to updating the breadcrumb so that any
> > observers who see the new seqno can proceed.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  .../gpu/drm/i915/gt/intel_ring_submission.c   | 24 ++++++++++++-------
> >  1 file changed, 16 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > index 9537d4912225..42168d7cf5b5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > @@ -446,31 +446,39 @@ static u32 *gen6_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
> >       return cs;
> >  }
> >  
> > -#define GEN7_XCS_WA 32
> > -static u32 *gen7_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
> > +#define GEN7_XCS_WA 8
> > +static u32 *
> > +__gen7_xcs_emit_breadcrumb(struct i915_request *rq, u32 addr, u32 *cs)
> >  {
> >       int i;
> >  
> > -     GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
> > -     GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
> > -
> >       *cs++ = MI_FLUSH_DW | MI_INVALIDATE_TLB |
> >               MI_FLUSH_DW_OP_STOREDW | MI_FLUSH_DW_STORE_INDEX;
> > -     *cs++ = I915_GEM_HWS_SEQNO_ADDR | MI_FLUSH_DW_USE_GTT;
> > +     *cs++ = addr | MI_FLUSH_DW_USE_GTT;
> >       *cs++ = rq->fence.seqno;
> >  
> >       for (i = 0; i < GEN7_XCS_WA; i++) {
> >               *cs++ = MI_STORE_DWORD_INDEX;
> > -             *cs++ = I915_GEM_HWS_SEQNO_ADDR;
> > +             *cs++ = addr;
> >               *cs++ = rq->fence.seqno;
> >       }
> >  
> > +     return cs;
> > +}
> > +
> > +static u32 *gen7_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
> > +{
> > +     GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
> > +     GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
> > +
> > +     cs = __gen7_xcs_emit_breadcrumb(rq,  I915_GEM_HWS_SEQNO_ADDR + 4, cs);
> 
> One fake for the above before the real thing?

That's what I did later. Doesn't seem to make much difference either
way, but confirmation bias says at least 1 fake is better.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
