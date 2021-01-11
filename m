Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 928DA2F1A5A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 17:00:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE996E0F6;
	Mon, 11 Jan 2021 16:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 293096E0F6
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 16:00:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23560905-1500050 for multiple; Mon, 11 Jan 2021 16:00:22 +0000
MIME-Version: 1.0
In-Reply-To: <01604c77-a371-8afb-3497-e67ce592566f@linux.intel.com>
References: <20210111105735.21515-1-chris@chris-wilson.co.uk>
 <01604c77-a371-8afb-3497-e67ce592566f@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 11 Jan 2021 16:00:20 +0000
Message-ID: <161038082063.28181.5890811639315548021@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/gt: Disable arbitration around
 Braswell's pdp updates
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

Quoting Tvrtko Ursulin (2021-01-11 15:53:47)
> 
> On 11/01/2021 10:57, Chris Wilson wrote:
> > Braswell's pdp workaround is full of dragons, that may be being angered
> > when they are interrupted. Let's not take that risk and disable
> > arbitrartion during the update.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 11 ++++++++++-
> >   1 file changed, 10 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index 52c1fe62bdfe..10e9940cf3f5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -2539,6 +2539,14 @@ static int emit_pdps(struct i915_request *rq)
> >        * GPU hangs to forcewake errors and machine lockups!
> >        */
> >   
> > +     cs = intel_ring_begin(rq, 2);
> > +     if (IS_ERR(cs))
> > +             return PTR_ERR(cs);
> > +
> > +     *cs++ = MI_ARB_ON_OFF | MI_ARB_DISABLE;
> > +     *cs++ = MI_NOOP;
> > +     intel_ring_advance(rq, cs);
> > +
> >       /* Flush any residual operations from the context load */
> >       err = engine->emit_flush(rq, EMIT_FLUSH);
> >       if (err)
> > @@ -2564,7 +2572,8 @@ static int emit_pdps(struct i915_request *rq)
> >               *cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_LDW(base, i));
> >               *cs++ = lower_32_bits(pd_daddr);
> >       }
> > -     *cs++ = MI_NOOP;
> > +     *cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
> > +     intel_ring_advance(rq, cs);
> >   
> >       intel_ring_advance(rq, cs);
> >   
> > 
> 
> I had to remind myself that Gen8LP is indeed the only platform with 
> 32-bit ppgtt.
> 
> I presume you are fixing some sporadic CI failures here, anyway:

There's an odd one showing up in Braswell CI, but didn't occur locally
in several hours of running the selftest. Given the history of how
sensitive Braswell is to these PDP updates, I think this wild stab in
the dark is likely to hit something.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
