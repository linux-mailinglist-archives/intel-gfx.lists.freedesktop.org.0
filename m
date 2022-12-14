Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C71964D26A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 23:37:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB41D10E1FF;
	Wed, 14 Dec 2022 22:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8988310E1FF;
 Wed, 14 Dec 2022 22:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671057449; x=1702593449;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=b1BaMc7WZJnDo3vWqrJndmNlcCop99uCyzXAu+ZEUp4=;
 b=LcQNKNDumnle0+czpoHcC1FMfEe9fYWdXBoIY3zV1lFUs2Rq8ONCmEEW
 14LLgfpXcKswi3eTLQlK/6jGUbbc3KUC6d/Px/+gLZfHVCugO/1SUUtQ8
 RCQALheTGylEODr0QSzA16yaWUNjTEeMm/RoLWfB5sBU11PKCKGfuYfRL
 mHJjKrVkyZjy1IcTt9YS/0s0e0j+P151/KyMEw2E1watzRU24kspapGXs
 mgjLlEjGancgvv81BHI+I8KXDLTOPH/m8R7I/og1yj4dvmJAeTNtZysjZ
 RSA+2Ubz1C5LFJR9/83iPeySng9UBRwAZ7VCoVFgjkO+4JiCCk7A7DZdZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="345608851"
X-IronPort-AV: E=Sophos;i="5.96,245,1665471600"; d="scan'208";a="345608851"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 14:37:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="681638842"
X-IronPort-AV: E=Sophos;i="5.96,245,1665471600"; d="scan'208";a="681638842"
Received: from brauta-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.42.152])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 14:37:26 -0800
Date: Wed, 14 Dec 2022 23:37:19 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Message-ID: <Y5pQH+KGujkSJTvT@ashyti-mobl2.lan>
References: <20221212161338.1007659-1-andi.shyti@linux.intel.com>
 <Y5dc7vhfh6yixFRo@intel.com> <Y5e0gh2u8uTlwQL6@ashyti-mobl2.lan>
 <51402d0d8cfdc319d0786ec03c5ada4d82757cf0.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <51402d0d8cfdc319d0786ec03c5ada4d82757cf0.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Reset twice
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo,

On Tue, Dec 13, 2022 at 01:18:48PM +0000, Vivi, Rodrigo wrote:
> On Tue, 2022-12-13 at 00:08 +0100, Andi Shyti wrote:
> > Hi Rodrigo,
> > 
> > On Mon, Dec 12, 2022 at 11:55:10AM -0500, Rodrigo Vivi wrote:
> > > On Mon, Dec 12, 2022 at 05:13:38PM +0100, Andi Shyti wrote:
> > > > From: Chris Wilson <chris@chris-wilson.co.uk>
> > > > 
> > > > After applying an engine reset, on some platforms like
> > > > Jasperlake, we
> > > > occasionally detect that the engine state is not cleared until
> > > > shortly
> > > > after the resume. As we try to resume the engine with volatile
> > > > internal
> > > > state, the first request fails with a spurious CS event (it looks
> > > > like
> > > > it reports a lite-restore to the hung context, instead of the
> > > > expected
> > > > idle->active context switch).
> > > > 
> > > > Signed-off-by: Chris Wilson <hris@chris-wilson.co.uk>
> > > 
> > > There's a typo in the signature email I'm afraid...
> > 
> > oh yes, I forgot the 'C' :)
> 
> you forgot?
> who signed it off?

Chris, but as I was copy/pasting SoB's I might have
unintentionally removed the 'c'.

> > > Other than that, have we checked the possibility of using the
> > > driver-initiated-flr bit
> > > instead of this second loop? That should be the right way to
> > > guarantee everything is
> > > cleared on gen11+...
> > 
> > maybe I am misinterpreting it, but is FLR the same as resetting
> > hardware domains individually?
> 
> No, it is bigger than that... almost the PCI FLR with some exceptions:
> 
> https://lists.freedesktop.org/archives/intel-gfx/2022-December/313956.html

yes, exactly... I would use FLR feedback if I was performing an
FLR reset. But here I'm not doing that, here I'm simply gating
off some power domains. It happens that those power domains turn
on and off engines making them reset.

FLR doesn't have anything to do here, also because if you want to
reset a single engine you go through this function, instead of
resetting the whole GPU with whatever is annexed.

This patch is not fixing the "reset" concept of i915, but it's
fixing a missing feedback that happens in one single platform
when trying to gate on/off a domain.

Maybe I am completely off track, but I don't see connection with
FLR here.

(besides FLR might not be present in all the platforms)

Thanks a lot for your inputs,
Andi

> > How am I supposed to use driver_initiated_flr() in this context?
> 
> Some drivers are not even using this gt reset anymore and going
> directly with the driver-initiated FLR in case that guc reset failed.
> 
> I believe we can still keep the gt reset in our case as we currently
> have, but instead of keep retrying it until it succeeds we probably
> should go to the next level and do the driver initiated FLR when the GT
> reset failed.
> 
> > 
> > Thanks,
> > Andi
> > 
> > > > Cc: stable@vger.kernel.org
> > > > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > > > Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/gt/intel_reset.c | 34
> > > > ++++++++++++++++++++++-----
> > > >  1 file changed, 28 insertions(+), 6 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c
> > > > b/drivers/gpu/drm/i915/gt/intel_reset.c
> > > > index ffde89c5835a4..88dfc0c5316ff 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> > > > @@ -268,6 +268,7 @@ static int ilk_do_reset(struct intel_gt *gt,
> > > > intel_engine_mask_t engine_mask,
> > > >  static int gen6_hw_domain_reset(struct intel_gt *gt, u32
> > > > hw_domain_mask)
> > > >  {
> > > >         struct intel_uncore *uncore = gt->uncore;
> > > > +       int loops = 2;
> > > >         int err;
> > > >  
> > > >         /*
> > > > @@ -275,18 +276,39 @@ static int gen6_hw_domain_reset(struct
> > > > intel_gt *gt, u32 hw_domain_mask)
> > > >          * for fifo space for the write or forcewake the chip for
> > > >          * the read
> > > >          */
> > > > -       intel_uncore_write_fw(uncore, GEN6_GDRST,
> > > > hw_domain_mask);
> > > > +       do {
> > > > +               intel_uncore_write_fw(uncore, GEN6_GDRST,
> > > > hw_domain_mask);
> > > >  
> > > > -       /* Wait for the device to ack the reset requests */
> > > > -       err = __intel_wait_for_register_fw(uncore,
> > > > -                                          GEN6_GDRST,
> > > > hw_domain_mask, 0,
> > > > -                                          500, 0,
> > > > -                                          NULL);
> > > > +               /*
> > > > +                * Wait for the device to ack the reset requests.
> > > > +                *
> > > > +                * On some platforms, e.g. Jasperlake, we see see
> > > > that the
> > > > +                * engine register state is not cleared until
> > > > shortly after
> > > > +                * GDRST reports completion, causing a failure as
> > > > we try
> > > > +                * to immediately resume while the internal state
> > > > is still
> > > > +                * in flux. If we immediately repeat the reset,
> > > > the second
> > > > +                * reset appears to serialise with the first, and
> > > > since
> > > > +                * it is a no-op, the registers should retain
> > > > their reset
> > > > +                * value. However, there is still a concern that
> > > > upon
> > > > +                * leaving the second reset, the internal engine
> > > > state
> > > > +                * is still in flux and not ready for resuming.
> > > > +                */
> > > > +               err = __intel_wait_for_register_fw(uncore,
> > > > GEN6_GDRST,
> > > > +                                                 
> > > > hw_domain_mask, 0,
> > > > +                                                  2000, 0,
> > > > +                                                  NULL);
> > > > +       } while (err == 0 && --loops);
> > > >         if (err)
> > > >                 GT_TRACE(gt,
> > > >                          "Wait for 0x%08x engines reset
> > > > failed\n",
> > > >                          hw_domain_mask);
> > > >  
> > > > +       /*
> > > > +        * As we have observed that the engine state is still
> > > > volatile
> > > > +        * after GDRST is acked, impose a small delay to let
> > > > everything settle.
> > > > +        */
> > > > +       udelay(50);
> > > > +
> > > >         return err;
> > > >  }
> > > >  
> > > > -- 
> > > > 2.38.1
> > > > 
> 
