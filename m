Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1631822392F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 12:24:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 881F76E044;
	Fri, 17 Jul 2020 10:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE5826E044
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 10:24:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21848000-1500050 for multiple; Fri, 17 Jul 2020 11:24:36 +0100
MIME-Version: 1.0
In-Reply-To: <875zam35o0.fsf@gaia.fi.intel.com>
References: <20200716203201.11977-1-chris@chris-wilson.co.uk>
 <20200716203201.11977-2-chris@chris-wilson.co.uk>
 <875zam35o0.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jul 2020 11:24:36 +0100
Message-ID: <159498147691.13677.14118716321763834482@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Wait for aux invalidation
 on Tigerlake
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

Quoting Mika Kuoppala (2020-07-17 09:30:07)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Add a SRM read back of the aux invalidation register after poking
> > hsdes: 1809175790, as failing to do so leads to writes going astray.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2169
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_lrc.c | 31 ++++++++++++++++++++++-------
> >  1 file changed, 24 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index e0280a672f1d..c9e46792b976 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -4757,14 +4757,21 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
> >       intel_engine_mask_t aux_inv = 0;
> >       u32 cmd, *cs;
> >  
> > +     cmd = 4;
> > +     if (mode & EMIT_INVALIDATE)
> > +             cmd += 2;
> >       if (mode & EMIT_INVALIDATE)
> >               aux_inv = request->engine->mask & ~BIT(BCS0);
> > +     if (aux_inv)
> > +             cmd += 2 * hweight8(aux_inv) + 6;
> >  
> > -     cs = intel_ring_begin(request,
> > -                           4 + (aux_inv ? 2 * hweight8(aux_inv) + 2 : 0));
> > +     cs = intel_ring_begin(request, cmd);
> >       if (IS_ERR(cs))
> >               return PTR_ERR(cs);
> >  
> > +     if (mode & EMIT_INVALIDATE)
> > +             *cs++ = preparser_disable(true);
> 
> This makes sense. Could be even separate patch.
> 
> On invalidate, care to try if the actual invalidate LRI
> with POSTED set (after disabling preparser) could also fix this?

I may have accidentally broke tgl1-gem and it needs some tlc ;)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
