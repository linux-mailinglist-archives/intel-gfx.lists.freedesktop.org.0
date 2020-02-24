Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E810B16B1C1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 22:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D0C6E982;
	Mon, 24 Feb 2020 21:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A16D6E982
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 21:10:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20337394-1500050 for multiple; Mon, 24 Feb 2020 21:10:36 +0000
MIME-Version: 1.0
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Souza,
 Jose" <jose.souza@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <4a1fc6a341c803943cd79c9a1961bd37ec5e5cb8.camel@intel.com>
References: <20200222002824.17103-1-lucas.demarchi@intel.com>
 <4a1fc6a341c803943cd79c9a1961bd37ec5e5cb8.camel@intel.com>
Message-ID: <158257863477.26598.16478479176829373309@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 24 Feb 2020 21:10:34 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1608008084
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
Cc: "michel.thierry@intel.com" <michel.thierry@intel.com>,
 "ramlingam.c@intel.com" <ramlingam.c@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Souza, Jose (2020-02-22 00:36:53)
> + CCing people involved in the patch fixed.
> 
> On Fri, 2020-02-21 at 16:28 -0800, Lucas De Marchi wrote:
> > Wa_1608008084 is an additional WA that applies to writes on FF_MODE2
> > register. We can't read it back either from CPU or GPU. Since the
> > other
> > bits should be 0, recommendation to handle Wa_1604555607 is to
> > actually
> > just write the timer value.
> > 
> > Do a write only and don't try to read it, neither before or after
> > the WA is applied.
> > 
> > Fixes: ff690b2111ba ("drm/i915/tgl: Implement Wa_1604555607")
> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 22 ++++++++++---------
> > --
> >  1 file changed, 10 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 887e0dc701f7..0d76e1d6ec87 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -580,24 +580,22 @@ static void icl_ctx_workarounds_init(struct
> > intel_engine_cs *engine,
> >  static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
> >                                    struct i915_wa_list *wal)
> >  {
> > -     u32 val;
> > -
> >       /* Wa_1409142259:tgl */
> >       WA_SET_BIT_MASKED(GEN11_COMMON_SLICE_CHICKEN3,
> >                         GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
> >  
> > -     /* Wa_1604555607:tgl */
> > -     val = intel_uncore_read(engine->uncore, FF_MODE2);
> > -     val &= ~FF_MODE2_TDS_TIMER_MASK;
> > -     val |= FF_MODE2_TDS_TIMER_128;
> >       /*
> > -      * FIXME: FF_MODE2 register is not readable till TGL B0. We can
> > -      * enable verification of WA from the later steppings, which
> > enables
> > -      * the read of FF_MODE2.
> > +      * Wa_1604555607:gen12
> > +      * FF_MODE2 register is not readable till TGL B0, either by CPU
> > or GPU.
> 
> The line above could be removed as the comments above explain it
> better, also BSpec don't say that it will be fixed in B0.

The HW guys on discovering the bug promised it would be fixed for B0.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
