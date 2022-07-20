Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5166657BEB3
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 21:38:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 741EA1137B8;
	Wed, 20 Jul 2022 19:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C67F2113704
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jul 2022 19:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658345922; x=1689881922;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Twi5zagBL6Fd6uP+zC2dkR21P2Md+T19d7sUFFVijlQ=;
 b=VGMn9yeKtYqxQ5jSKe67Irtz2IOv3Kl8Dk6Fn9DJZvdsjCGh9nmOQTaT
 2P3yD9eQWXg6dVS0mxJpl2bR1OZDpOqu5E1lEMREw5g0w1mvv36Ol9mW0
 KIm1FKsSPYZ3365bSGxJwiVNvqBynjVrTzUSJBMjEAphuMwnMr1NAKcvY
 MsXJTG0NgFNNn1nqyqX/ODz2hyb7xreTDUtTBn+KbRw2TH+iu3gDFYwPf
 OfKSM7lhGueXtE9zqNIIzRW7GDrNMnwIFPtKlS0hoxEjwnH7dIzTR+6xp
 2STr/hxXAE3RAgf4jJLvtAR1qpSABx/tC37fdUtG1l3UoX2tj2enyo7mj A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="267266719"
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="267266719"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 12:38:42 -0700
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="687642570"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 12:38:42 -0700
Date: Wed, 20 Jul 2022 12:38:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <YthZweoR8eNWwY+s@mdroper-desk1.amr.corp.intel.com>
References: <20220718183424.149988-1-anusha.srivatsa@intel.com>
 <YtWsW+q+soTMtHgi@mdroper-desk1.amr.corp.intel.com>
 <8d4c0c06-f6bb-0bd0-46ab-0535deabeabe@linux.intel.com>
 <MWHPR1101MB217308D0E3656912D7EEEF00F88E9@MWHPR1101MB2173.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MWHPR1101MB217308D0E3656912D7EEEF00F88E9@MWHPR1101MB2173.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct
 instead of gt for gen11_gu_misc_irq_handler()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 20, 2022 at 10:03:42AM -0700, Srivatsa, Anusha wrote:
> 
> 
> > -----Original Message-----
> > From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Sent: Wednesday, July 20, 2022 2:38 AM
> > To: Roper, Matthew D <matthew.d.roper@intel.com>; Srivatsa, Anusha
> > <anusha.srivatsa@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct
> > instead of gt for gen11_gu_misc_irq_handler()
> >
> >
> > On 18/07/2022 19:54, Matt Roper wrote:
> > > On Mon, Jul 18, 2022 at 11:34:24AM -0700, Anusha Srivatsa wrote:
> > >> gen11_gu_misc_irq_handler() does not do anything tile specific.
> > >>
> > >> Cc: Matt Roper <matthew.d.roper@intel.com>
> > >> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > >
> > > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > >
> > >> ---
> > >>   drivers/gpu/drm/i915/i915_irq.c | 8 ++++----
> > >>   1 file changed, 4 insertions(+), 4 deletions(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/i915_irq.c
> > >> b/drivers/gpu/drm/i915/i915_irq.c index 73cebc6aa650..c304af777d58
> > >> 100644
> > >> --- a/drivers/gpu/drm/i915/i915_irq.c
> > >> +++ b/drivers/gpu/drm/i915/i915_irq.c
> > >> @@ -2669,10 +2669,10 @@ gen11_gu_misc_irq_ack(struct intel_gt *gt,
> > const u32 master_ctl)
> > >>   }
> > >>
> > >>   static void
> > >> -gen11_gu_misc_irq_handler(struct intel_gt *gt, const u32 iir)
> > >> +gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32
> > >> +iir)
> > >>   {
> > >>    if (iir & GEN11_GU_MISC_GSE)
> > >> -          intel_opregion_asle_intr(gt->i915);
> > >> +          intel_opregion_asle_intr(i915);
> > >>   }
> > >>
> > >>   static inline u32 gen11_master_intr_disable(void __iomem * const
> > >> regs) @@ -2740,7 +2740,7 @@ static irqreturn_t gen11_irq_handler(int
> > >> irq, void *arg)
> > >>
> >
> > Maybe this is correct but it leaves this, round about here:
> >
> >       gu_misc_iir = gen11_gu_misc_irq_ack(gt, master_ctl);
> >
> > So _if_ these registers are truly not per GT, or don't live in the GT block,
> > change this one as well?
> Tvrtko,
> gen11_gu_misc_irq_ack() does not fall in the same category. We do
> operations where we grab register per gt and do some writes that are
> not gt agnostic.

I don't understand what you're saying here.  The ack and the handler
functions go hand in hand; they should either both be GT-centric or both
be device centric.

Since the MMIO space is duplicated for each tile, it's always _possible_
to read and process an interrupt register for each tile.  The question
is whether this is a type of interrupt where it can only be delivered on
tile0 (similar to display, if we had a multi-tile platform that
supported display) or can each tile raise its own interrupt
independently, requiring that we both ack and handle those interrupts in
a per-tile manner?

Right now the only kind of interrupt we handle on GU_MISC is the "GSE"
bit which is apparently related to panel backlight (display), so it
wouldn't make sense to handle that in a per-GT manner (and we really
shouldn't be receiving the interrupt at all on any of our multi-tile
platforms right now).  So it sounds to me like our ack routine should
also be switched over to drm_i915_private.


Matt

> 
> Anusha
> > Regards,
> >
> > Tvrtko
> >
> > >>    gen11_master_intr_enable(regs);
> > >>
> > >> -  gen11_gu_misc_irq_handler(gt, gu_misc_iir);
> > >> +  gen11_gu_misc_irq_handler(i915, gu_misc_iir);
> > >>
> > >>    pmu_irq_stats(i915, IRQ_HANDLED);
> > >>
> > >> @@ -2805,7 +2805,7 @@ static irqreturn_t dg1_irq_handler(int irq,
> > >> void *arg)
> > >>
> > >>    dg1_master_intr_enable(regs);
> > >>
> > >> -  gen11_gu_misc_irq_handler(gt, gu_misc_iir);
> > >> +  gen11_gu_misc_irq_handler(i915, gu_misc_iir);
> > >>
> > >>    pmu_irq_stats(i915, IRQ_HANDLED);
> > >>
> > >> --
> > >> 2.25.1
> > >>
> > >

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
