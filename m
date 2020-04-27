Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C404D1B99F8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 10:22:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0618D89B30;
	Mon, 27 Apr 2020 08:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B870B89B30
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 08:22:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21031897-1500050 for multiple; Mon, 27 Apr 2020 09:22:31 +0100
MIME-Version: 1.0
In-Reply-To: <20200426231556.GA13001@jack.zhora.eu>
References: <20200425175751.30358-1-chris@chris-wilson.co.uk>
 <20200425175751.30358-2-chris@chris-wilson.co.uk>
 <20200426231556.GA13001@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Message-ID: <158797574979.17035.11996365097483489691@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 27 Apr 2020 09:22:29 +0100
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/gt: Move rps.enabled/active to
 flags
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2020-04-27 00:15:56)
> Hi Chris,
> 
> >       intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
> >       if (IS_CHERRYVIEW(i915))
> > -             rps->enabled = chv_rps_enable(rps);
> > +             enabled = chv_rps_enable(rps);
> >       else if (IS_VALLEYVIEW(i915))
> > -             rps->enabled = vlv_rps_enable(rps);
> > +             enabled = vlv_rps_enable(rps);
> >       else if (INTEL_GEN(i915) >= 9)
> > -             rps->enabled = gen9_rps_enable(rps);
> > +             enabled = gen9_rps_enable(rps);
> >       else if (INTEL_GEN(i915) >= 8)
> > -             rps->enabled = gen8_rps_enable(rps);
> > +             enabled = gen8_rps_enable(rps);
> >       else if (INTEL_GEN(i915) >= 6)
> > -             rps->enabled = gen6_rps_enable(rps);
> > +             enabled = gen6_rps_enable(rps);
> >       else if (IS_IRONLAKE_M(i915))
> > -             rps->enabled = gen5_rps_enable(rps);
> > +             enabled = gen5_rps_enable(rps);
> >       intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
> > -     if (!rps->enabled)
> > +     if (!enabled || rps->max_freq <= rps->min_freq)
> 
> isn't this a bit out of context? I don't think the above
> functions have any effect on max_freq and min freq.

The question is whether or not we want to enable dynamic reclocking if
the range is 0. The answer to that, is definitely no -- just look at all
the selftests that do not work (because the frequency cannot be changed)!

An alternative would be to

if (rps->max_freq <= rpq->min_freq)
	/* leave disabled, no room for dynamic reclocking */
else if ...
else
	MISSING_CASE(INTEL_GEN(i915));
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
