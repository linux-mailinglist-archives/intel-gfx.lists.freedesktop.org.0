Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FBD11BF4F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 22:35:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA0066EBFA;
	Wed, 11 Dec 2019 21:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3926289BA1
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 21:34:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19547400-1500050 for multiple; Wed, 11 Dec 2019 21:34:05 +0000
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191211212559.GA1730@intel.intel>
References: <20191210180111.3958558-1-chris@chris-wilson.co.uk>
 <20191211212559.GA1730@intel.intel>
Message-ID: <157610004579.27099.17645489831063212428@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Dec 2019 21:34:05 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Disable manual rc6 for
 Braswell/Baytrail
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

Quoting Andi Shyti (2019-12-11 21:25:59)
> Hi Chris,
> 
> > The initial investigated showed that while the PCU on Braswell/Baytrail
> > controlled RC6 itself. setting the software RC6 request made no
> > difference. Further testing reveals though that it causes a delay in the
> > PCU on enabling RC6.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/763
> > Fixes: 730eaeb52426 ("drm/i915/gt: Manual rc6 entry upon parking")
> > Testcase: igt/perf/rc6-disable
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Andi Shyti <andi.shyti@intel.com>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_rc6.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > index 4dc82196b285..8ec2b7725141 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > @@ -612,6 +612,9 @@ void intel_rc6_park(struct intel_rc6 *rc6)
> >               return;
> >       }
> >  
> > +     if (!(rc6->ctl_enable & GEN6_RC_CTL_RC6_ENABLE))
> > +             return;
> > +
> 
> Huh? I didn't think this could be necessary! Nice catch!

Bah, CI takes all the credit. Stupid, stupid PCU.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
