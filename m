Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E79632FB566
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 11:39:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A5726E85F;
	Tue, 19 Jan 2021 10:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C50B6E84C
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 10:39:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23637261-1500050 for multiple; Tue, 19 Jan 2021 10:39:46 +0000
MIME-Version: 1.0
In-Reply-To: <87y2gpjjwy.fsf@gaia.fi.intel.com>
References: <20210119094053.6919-1-chris@chris-wilson.co.uk>
 <20210119094053.6919-3-chris@chris-wilson.co.uk>
 <87y2gpjjwy.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 10:39:45 +0000
Message-ID: <161105278514.19402.10766596756611532191@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/gt: Lift stop_ring() to
 reset_prepare
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

Quoting Mika Kuoppala (2021-01-19 10:33:17)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Push the sleeping stop_ring() out of the reset resume function to reset
> > prepare; we are not allowed to sleep in the former.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  .../gpu/drm/i915/gt/intel_ring_submission.c   | 97 +++++++------------
> >  1 file changed, 36 insertions(+), 61 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > index 8d0964d2d597..44159595d909 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > @@ -157,21 +157,6 @@ static void ring_setup_status_page(struct intel_engine_cs *engine)
> >       flush_cs_tlb(engine);
> >  }
> >  
> > -static bool stop_ring(struct intel_engine_cs *engine)
> > -{
> > -     intel_engine_stop_cs(engine);
> > -
> > -     ENGINE_WRITE(engine, RING_HEAD, ENGINE_READ(engine, RING_TAIL));
> > -
> > -     ENGINE_WRITE(engine, RING_HEAD, 0);
> > -     ENGINE_WRITE(engine, RING_TAIL, 0);
> > -
> > -     /* The ring must be empty before it is disabled */
> > -     ENGINE_WRITE(engine, RING_CTL, 0);
> > -
> > -     return (ENGINE_READ(engine, RING_HEAD) & HEAD_ADDR) == 0;
> > -}
> > -
> >  static struct i915_address_space *vm_alias(struct i915_address_space *vm)
> >  {
> >       if (i915_is_ggtt(vm))
> > @@ -213,31 +198,6 @@ static int xcs_resume(struct intel_engine_cs *engine)
> >  
> >       intel_uncore_forcewake_get(engine->uncore, FORCEWAKE_ALL);
> >  
> > -     /* WaClearRingBufHeadRegAtInit:ctg,elk */
> > -     if (!stop_ring(engine)) {
> > -             /* G45 ring initialization often fails to reset head to zero */
> > -             drm_dbg(&dev_priv->drm, "%s head not reset to zero "
> > -                     "ctl %08x head %08x tail %08x start %08x\n",
> > -                     engine->name,
> > -                     ENGINE_READ(engine, RING_CTL),
> > -                     ENGINE_READ(engine, RING_HEAD),
> > -                     ENGINE_READ(engine, RING_TAIL),
> > -                     ENGINE_READ(engine, RING_START));
> > -
> > -             if (!stop_ring(engine)) {
> > -                     drm_err(&dev_priv->drm,
> > -                             "failed to set %s head to zero "
> > -                             "ctl %08x head %08x tail %08x start %08x\n",
> > -                             engine->name,
> > -                             ENGINE_READ(engine, RING_CTL),
> > -                             ENGINE_READ(engine, RING_HEAD),
> > -                             ENGINE_READ(engine, RING_TAIL),
> > -                             ENGINE_READ(engine, RING_START));
> > -                     ret = -EIO;
> > -                     goto out;
> > -             }
> > -     }
> > -
> >       if (HWS_NEEDS_PHYSICAL(dev_priv))
> >               ring_setup_phys_status_page(engine);
> >       else
> > @@ -339,11 +299,21 @@ static void xcs_sanitize(struct intel_engine_cs *engine)
> >       clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
> >  }
> >  
> > +static bool stop_ring(struct intel_engine_cs *engine)
> > +{
> > +     ENGINE_WRITE_FW(engine, RING_HEAD, ENGINE_READ_FW(engine, RING_TAIL));
> > +
> 
> Not related to this patch but this makes me wondering if the actual
> disable should be at this point before zeroing as manipulating the
> head again might kick the hardware forward.

We move HEAD to TAIL, with the intent of kicking the HW to the end and
"emptying the ring".

If we move HEAD to 0 first, it will start executing random stuff. And by
the time we set TAIL to 0, HEAD will have moved on.

So I think this is correct: set HEAD to TAIL to empty the ring.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
