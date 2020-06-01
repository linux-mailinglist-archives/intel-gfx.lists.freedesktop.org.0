Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6423A1EA760
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 17:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DC3189F73;
	Mon,  1 Jun 2020 15:54:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30AD989F73;
 Mon,  1 Jun 2020 15:54:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21362719-1500050 for multiple; Mon, 01 Jun 2020 16:54:05 +0100
MIME-Version: 1.0
In-Reply-To: <87sgfesuko.fsf@gaia.fi.intel.com>
References: <20200531191307.180023-1-chris@chris-wilson.co.uk>
 <87sgfesuko.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159102684249.29407.7177954715956460299@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 01 Jun 2020 16:54:02 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_exec_balancer:
 Disable pre-parser for rewritten batches
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-06-01 15:56:55)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > As we rewrite the batches on the fly to implement the non-preemptible
> > lock, we need to tell Tigerlake to read the batch afresh each time.
> > Amusingly, the disable is a part of an arb-check, so we have to be
> > careful not to include the arbitration point inside our unpreemptible
> > loop.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  tests/i915/gem_exec_balancer.c | 13 +++++++++----
> >  1 file changed, 9 insertions(+), 4 deletions(-)
> >
> > diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> > index 026f8347e..0e3b52900 100644
> > --- a/tests/i915/gem_exec_balancer.c
> > +++ b/tests/i915/gem_exec_balancer.c
> > @@ -1350,6 +1350,11 @@ static void __bonded_dual(int i915,
> >       *out = cycles;
> >  }
> >  
> > +static uint32_t preparser_disable(void)
> > +{
> > +     return 0x5 << 23 | 1 << 8 | 1; /* preparser masked disable */
> 
> there is MI_ARB_CHECK
> 
> > +}
> > +
> >  static uint32_t sync_from(int i915, uint32_t addr, uint32_t target)
> >  {
> >       uint32_t handle = gem_create(i915, 4096);
> > @@ -1363,14 +1368,14 @@ static uint32_t sync_from(int i915, uint32_t addr, uint32_t target)
> >       *cs++ = 0;
> >       *cs++ = 0;
> >  
> > -     *cs++ = MI_NOOP;
> > +     *cs++ = preparser_disable();
> >       *cs++ = MI_NOOP;
> >       *cs++ = MI_NOOP;
> >       *cs++ = MI_NOOP;
> >  
> >       /* wait for them to cancel us */
> >       *cs++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
> > -     *cs++ = addr + 16;
> > +     *cs++ = addr + 24;
> 
> I must be totally confused about the layout as I can't get
> the +8. You take one nop out and put one arb check in
> and everything moves with 8?

It's just skipping over the MI_ARB_CHECK, +4, aligned to the next qword
because some old habits die hard.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
