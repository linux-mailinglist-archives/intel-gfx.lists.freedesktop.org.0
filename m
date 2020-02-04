Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71253151763
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 10:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1A06EDFC;
	Tue,  4 Feb 2020 09:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E85FC6EDFC
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 09:09:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20108687-1500050 for multiple; Tue, 04 Feb 2020 09:09:50 +0000
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200204090636.GA1670@intel.intel>
References: <20200203202110.670209-1-chris@chris-wilson.co.uk>
 <20200204090636.GA1670@intel.intel>
Message-ID: <158080738803.27392.10698748710924477408@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 04 Feb 2020 09:09:48 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix rc6 on Ivybridge
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

Quoting Andi Shyti (2020-02-04 09:06:36)
> Hi Chris,
> 
> > The current rc6 threshold is larger than the evaluation interval on
> > Ivybridge; it never enters rc6. Remove the special casing so it behaves
> > like the other gen6/gen7, and we see rc6 residencies before we manually
> > park the system.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/1114
> > Testcase: igt/i915_pm_rc6_residency/rc6-idle #ivb
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Andi Shyti <andi.shyti@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_rc6.c | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > index 01a99fdbb3c4..682f598f7042 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > @@ -226,10 +226,7 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
> >  
> >       set(uncore, GEN6_RC_SLEEP, 0);
> >       set(uncore, GEN6_RC1e_THRESHOLD, 1000);
> > -     if (IS_IVYBRIDGE(i915))
> > -             set(uncore, GEN6_RC6_THRESHOLD, 125000);
> > -     else
> > -             set(uncore, GEN6_RC6_THRESHOLD, 50000);
> > +     set(uncore, GEN6_RC6_THRESHOLD, 50000);
> 
> why was is set like this in a first place?

No one knows.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
