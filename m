Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BFD1B2910
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 16:09:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ECF26E05F;
	Tue, 21 Apr 2020 14:09:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E4D66E05F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 14:09:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20972357-1500050 for multiple; Tue, 21 Apr 2020 15:09:36 +0100
MIME-Version: 1.0
In-Reply-To: <874ktdlz13.fsf@gaia.fi.intel.com>
References: <20200421123733.12786-1-chris@chris-wilson.co.uk>
 <874ktdlz13.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158747817479.19285.12336379080879400080@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 21 Apr 2020 15:09:34 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Show the full scaling
 curve on failure
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

Quoting Mika Kuoppala (2020-04-21 15:00:08)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > If we detect that the RPS end points do not scale perfectly, take the
> > time to measure all the in between values as well. We are aborting the
> > test, so we might as well spend the available time gathering critical
> > debug information instead.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/selftest_rps.c | 36 ++++++++++++++++++++++++++
> >  1 file changed, 36 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > index e0a791eac752..f8c416ab8539 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > @@ -484,11 +484,29 @@ int live_rps_frequency_cs(void *arg)
> >               if (!scaled_within(max.freq * min.count,
> >                                  min.freq * max.count,
> >                                  2, 3)) {
> > +                     int f;
> > +
> >                       pr_err("%s: CS did not scale with frequency! scaled min:%llu, max:%llu\n",
> >                              engine->name,
> >                              max.freq * min.count,
> >                              min.freq * max.count);
> >                       show_pcu_config(rps);
> > +
> > +                     for (f = min.freq + 1; f <= rps->max_freq; f++) {
> > +                             int act = f;
> > +                             u64 count;
> > +
> > +                             count = measure_cs_frequency_at(rps, engine, &act);
> > +                             if (act < f)
> > +                                     break;
> > +
> 
> No gripes but in here I ponder would you like to break after the info.

It just means we've repeated ourselves. So meh, it could be useful it
could be noise. This is just extra info and interesting point is the
curve, so it's not really critical if we skip a repeated line. Or so I
believe.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
