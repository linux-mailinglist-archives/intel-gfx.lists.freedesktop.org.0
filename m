Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB821A7FF4
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 16:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCBE76E1BB;
	Tue, 14 Apr 2020 14:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C4E6E1BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 14:39:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20896467-1500050 for multiple; Tue, 14 Apr 2020 15:39:18 +0100
MIME-Version: 1.0
In-Reply-To: <87d08anpjv.fsf@gaia.fi.intel.com>
References: <20200414122000.19353-1-mika.kuoppala@linux.intel.com>
 <87d08anpjv.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158687515680.24667.17077993294325702170@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 14 Apr 2020 15:39:16 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix indirect context size
 calculation
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

Quoting Mika Kuoppala (2020-04-14 14:51:32)
> Mika Kuoppala <mika.kuoppala@linux.intel.com> writes:
> 
> > Hardware needs cacheline count for indirect context size.
> > Count of zero means that the feature is disabled.
> > If we only divide size with cacheline bytes, we get
> > one cacheline short of execution.
> >
> > Divide by rounding up to a cacheline size so that
> > hardware executes everything intended.
> >
> > Bspec: 11739
> > Fixes: 17ee950df38b ("drm/i915/gen8: Add infrastructure to initialize WA batch buffers")
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_lrc.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 6fbad5e2343f..acbb36ad17ff 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -4739,7 +4739,8 @@ static void init_wa_bb_reg_state(u32 * const regs,
> >  
> >               regs[pos_bb_per_ctx + 2] =
> >                       (ggtt_offset + wa_ctx->indirect_ctx.offset) |
> > -                     (wa_ctx->indirect_ctx.size / CACHELINE_BYTES);
> > +                     DIV_ROUND_UP(wa_ctx->indirect_ctx.size,
> > +                                  CACHELINE_BYTES);
> 
> The aligment to cacheline is checked on the emitting phase.

My headache is screwing with my latency. I see I am superfluous and
should just call it a day.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
