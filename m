Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8152822C0AA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 10:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5E376E4DD;
	Fri, 24 Jul 2020 08:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 918BC6E946
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 08:29:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21915383-1500050 for multiple; Fri, 24 Jul 2020 09:29:18 +0100
MIME-Version: 1.0
In-Reply-To: <87wo2t1hwv.fsf@gaia.fi.intel.com>
References: <20200723174144.22195-2-chris@chris-wilson.co.uk>
 <20200723181001.22711-1-chris@chris-wilson.co.uk>
 <87wo2t1hwv.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 09:29:17 +0100
Message-ID: <159557935746.21069.16433346717591004164@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Stall around xcs invalidations
 on tgl
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

Quoting Mika Kuoppala (2020-07-24 08:38:56)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Whether this is an arbitrary stall or a vital ingredient, neverthess the
> > impact is noticeable. If we do not have the stall around the xcs
> > invalidation before a request, writes within that request sometimes go
> > astray.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2169
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_lrc.c | 18 ++++++++++++------
> >  1 file changed, 12 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 353b1717fe84..7d914527d236 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -4761,10 +4761,12 @@ static int gen12_emit_flush_render(struct i915_request *request,
> >  
> >  static int gen12_emit_flush(struct i915_request *request, u32 mode)
> >  {
> > +#define WA_CNT 16 /* Magic delay or size of some internal pipelined buffer? */
> 
> Odd, very odd indeed.
> 
> I looked at the selftest in question. For completeness, there should be
> READ_ONCE on where the hwsp is read, but that is just a makeup.
> 
> But how about forcing the write completion check on, on the actual
> write to the hwsp? It is enabled with bit 10.

Nope. Which is a relief, since I'd working on the assumption that the
delay needs to be before the write not after.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
