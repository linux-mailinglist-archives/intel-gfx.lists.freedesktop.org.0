Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA031BAB6A
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 19:36:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E6089690;
	Mon, 27 Apr 2020 17:36:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C30A16E11C
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 17:36:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21038314-1500050 for multiple; Mon, 27 Apr 2020 18:36:13 +0100
MIME-Version: 1.0
In-Reply-To: <875zdkltxv.fsf@gaia.fi.intel.com>
References: <20200427170513.24019-1-chris@chris-wilson.co.uk>
 <875zdkltxv.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158800897227.17035.17598656242212150710@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 27 Apr 2020 18:36:12 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Avoid reusing the
 same logical CC_ID
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-04-27 18:28:12)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Fixes: 2935ed5339c4 ("drm/i915: Remove logical HW ID")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: <stable@vger.kernel.org> # v5.5+
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 +--
> >  drivers/gpu/drm/i915/gt/intel_lrc.c          | 23 ++++++++++++++------
> >  drivers/gpu/drm/i915/i915_perf.c             |  3 +--
> >  drivers/gpu/drm/i915/selftests/i915_vma.c    |  2 +-
> >  4 files changed, 19 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > index bf395227c99f..a9fc3fbbe482 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -304,8 +304,7 @@ struct intel_engine_cs {
> >       u32 context_size;
> >       u32 mmio_base;
> >  
> > -     unsigned int context_tag;
> > -#define NUM_CONTEXT_TAG roundup_pow_of_two(2 * EXECLIST_MAX_PORTS)
> > +     unsigned long context_tag;
> >  
> >       struct rb_node uabi_node;
> >  
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 93a1b73ad96b..d68a04f2a9d5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -1404,13 +1404,16 @@ __execlists_schedule_in(struct i915_request *rq)
> >       ce->lrc_desc &= ~GENMASK_ULL(47, 37);
> >       if (ce->tag) {
> >               /* Use a fixed tag for OA and friends */
> > +             GEM_BUG_ON(ce->tag <= BITS_PER_TYPE(engine->context_tag));
> >               ce->lrc_desc |= (u64)ce->tag << 32;
> 
> I see danger here to completely trash the upper part our our lrc_desc.
> Is the ce->tag validated or should we add more enforcement in here?

It's a single special case atm.

It's a problem for tomorrow, but it'll probably mean a small ida if we
have multiple users who must dictate the CCID. Pita.

> 
> >       } else {
> >               /* We don't need a strict matching tag, just different values */
> > -             ce->lrc_desc |=
> > -                     (u64)(++engine->context_tag % NUM_CONTEXT_TAG) <<
> > -                     GEN11_SW_CTX_ID_SHIFT;
> > -             BUILD_BUG_ON(NUM_CONTEXT_TAG > GEN12_MAX_CONTEXT_HW_ID);
> > +             unsigned int tag = ffs(engine->context_tag);
> > +
> > +             clear_bit(tag - 1, &engine->context_tag);
> > +             ce->lrc_desc |= (u64)tag << GEN11_SW_CTX_ID_SHIFT;
> > +
> > +             BUILD_BUG_ON(BITS_PER_TYPE(engine->context_tag) > GEN12_MAX_CONTEXT_HW_ID);
> >       }
> >  
> >       __intel_gt_pm_get(engine->gt);
> > @@ -1452,7 +1455,8 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
> >  
> >  static inline void
> >  __execlists_schedule_out(struct i915_request *rq,
> > -                      struct intel_engine_cs * const engine)
> > +                      struct intel_engine_cs * const engine,
> > +                      int tag)
> >  {
> >       struct intel_context * const ce = rq->context;
> >  
> > @@ -1470,6 +1474,9 @@ __execlists_schedule_out(struct i915_request *rq,
> >           i915_request_completed(rq))
> >               intel_engine_add_retire(engine, ce->timeline);
> >  
> > +     if (tag <= BITS_PER_TYPE(engine->context_tag))
> > +             set_bit(tag - 1, &engine->context_tag);
> > +
> >       intel_context_update_runtime(ce);
> >       intel_engine_context_out(engine);
> >       execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
> > @@ -1495,15 +1502,17 @@ execlists_schedule_out(struct i915_request *rq)
> >  {
> >       struct intel_context * const ce = rq->context;
> >       struct intel_engine_cs *cur, *old;
> > +     int tag;
> >  
> >       trace_i915_request_out(rq);
> >  
> > +     tag = upper_32_bits(rq->context->lrc_desc);
> 
> There is more in the upper part than just a tag (sw field).
> So we need to only set/get a particular masked field.

We control the contents, though. Oops, but what I did forget was the
shift.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
