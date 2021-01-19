Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 009672FB560
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 11:34:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9166E082;
	Tue, 19 Jan 2021 10:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE6C26E082
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 10:34:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23637188-1500050 for multiple; Tue, 19 Jan 2021 10:34:34 +0000
MIME-Version: 1.0
In-Reply-To: <87pn21gr5h.fsf@gaia.fi.intel.com>
References: <20210119094053.6919-1-chris@chris-wilson.co.uk>
 <87pn21gr5h.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 10:34:33 +0000
Message-ID: <161105247378.19402.6684577298292307177@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/gt: One more flush for
 Baytrail clear residuals
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

Quoting Mika Kuoppala (2021-01-19 10:25:14)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > CI reports that Baytail requires one more invalidate after CACHE_MODE
> > for it to be happy.
> >
> > Fixes: ace44e13e577 ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/gen7_renderclear.c | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> > index 39478712769f..8551e6de50e8 100644
> > --- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> > +++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> > @@ -353,19 +353,21 @@ static void gen7_emit_pipeline_flush(struct batch_chunk *batch)
> >  
> >  static void gen7_emit_pipeline_invalidate(struct batch_chunk *batch)
> >  {
> > -     u32 *cs = batch_alloc_items(batch, 0, 8);
> > +     u32 *cs = batch_alloc_items(batch, 0, 10);
> >  
> >       /* ivb: Stall before STATE_CACHE_INVALIDATE */
> > -     *cs++ = GFX_OP_PIPE_CONTROL(4);
> > +     *cs++ = GFX_OP_PIPE_CONTROL(5);
> >       *cs++ = PIPE_CONTROL_STALL_AT_SCOREBOARD |
> >               PIPE_CONTROL_CS_STALL;
> >       *cs++ = 0;
> >       *cs++ = 0;
> > +     *cs++ = 0;
> 
> dw[5] seems to be only for gen8+. Does it make a difference?

Pipe-control has always supported a qword-write, so a packet-length of 4
or 5 on gen4-7. As I recall the debate for gen8+ was whether
pipe-control still supported only a dword-write, and so we went with
always using the qword-length.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
