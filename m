Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D20F83934AA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 19:21:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4AE36F48F;
	Thu, 27 May 2021 17:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CF186F48D;
 Thu, 27 May 2021 17:21:40 +0000 (UTC)
IronPort-SDR: n1YnMBhQjxTBmTPjGN9Li5/ySamLyDS8brSHZJ1mxkMIWuSx0b1Uw9vIOSkCVND3/V9ixWbUcM
 k23jQkdqiUqw==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="189907690"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="189907690"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:21:00 -0700
IronPort-SDR: DFIVW+aKc3MGnz458YnLmgWD0kwlrixcEIepPIsdLcN270/QbmyAAt70VCc5BjOADduCdsy6+e
 tPAqDAOo8gPg==
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="547700454"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:21:00 -0700
Date: Thu, 27 May 2021 10:13:55 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20210527171354.GA12785@sdutt-i7>
References: <20210526064237.77853-1-matthew.brost@intel.com>
 <20210526064237.77853-7-matthew.brost@intel.com>
 <3b1eadf8-b043-365f-ada9-3a87901e8159@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3b1eadf8-b043-365f-ada9-3a87901e8159@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 06/18] drm/i915/guc: Drop
 guc->interrupts.enabled
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 27, 2021 at 10:17:20AM -0700, John Harrison wrote:
> On 5/25/2021 23:42, Matthew Brost wrote:
> > Drop the variable guc->interrupts.enabled as this variable is just
> > leading to bugs creeping into the code.
> > 
> > e.g. A full GPU reset disables the GuC interrupts but forgot to clear
> > guc->interrupts.enabled, guc->interrupts.enabled being true suppresses
> > interrupts from getting re-enabled and now we are broken.
> > 
> > It is harmless to enable interrupt while already enabled so let's just
> > delete this variable to avoid bugs like this going forward.
> Is it worth leaving the enabled flag in place but only using it to trip a
> WARN to catch such cases in a less catastrophic manner? Or are there valid
> reasons for calling enable when already enabled?
>

I don't think so as mentioned above a reset disables these interrupts
and if we didn't clear this field the WARN_ON would be triggered making
CI unhappy. Yes, the bug would less catastrophic but we'd still have to
waste time and energy chasing it.

Matt 
 
> Either way, it seems like a plausible change and CI is happy with it, so:
> Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
> 
> John.
> 
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.c | 27 +++++++++-----------------
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.h |  1 -
> >   2 files changed, 9 insertions(+), 19 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > index ab2c8fe8cdfa..18da9ed15728 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > @@ -96,12 +96,9 @@ static void gen9_enable_guc_interrupts(struct intel_guc *guc)
> >   	assert_rpm_wakelock_held(&gt->i915->runtime_pm);
> >   	spin_lock_irq(&gt->irq_lock);
> > -	if (!guc->interrupts.enabled) {
> > -		WARN_ON_ONCE(intel_uncore_read(gt->uncore, GEN8_GT_IIR(2)) &
> > -			     gt->pm_guc_events);
> > -		guc->interrupts.enabled = true;
> > -		gen6_gt_pm_enable_irq(gt, gt->pm_guc_events);
> > -	}
> > +	WARN_ON_ONCE(intel_uncore_read(gt->uncore, GEN8_GT_IIR(2)) &
> > +		     gt->pm_guc_events);
> > +	gen6_gt_pm_enable_irq(gt, gt->pm_guc_events);
> >   	spin_unlock_irq(&gt->irq_lock);
> >   }
> > @@ -112,7 +109,6 @@ static void gen9_disable_guc_interrupts(struct intel_guc *guc)
> >   	assert_rpm_wakelock_held(&gt->i915->runtime_pm);
> >   	spin_lock_irq(&gt->irq_lock);
> > -	guc->interrupts.enabled = false;
> >   	gen6_gt_pm_disable_irq(gt, gt->pm_guc_events);
> > @@ -134,18 +130,14 @@ static void gen11_reset_guc_interrupts(struct intel_guc *guc)
> >   static void gen11_enable_guc_interrupts(struct intel_guc *guc)
> >   {
> >   	struct intel_gt *gt = guc_to_gt(guc);
> > +	u32 events = REG_FIELD_PREP(ENGINE1_MASK, GUC_INTR_GUC2HOST);
> >   	spin_lock_irq(&gt->irq_lock);
> > -	if (!guc->interrupts.enabled) {
> > -		u32 events = REG_FIELD_PREP(ENGINE1_MASK, GUC_INTR_GUC2HOST);
> > -
> > -		WARN_ON_ONCE(gen11_gt_reset_one_iir(gt, 0, GEN11_GUC));
> > -		intel_uncore_write(gt->uncore,
> > -				   GEN11_GUC_SG_INTR_ENABLE, events);
> > -		intel_uncore_write(gt->uncore,
> > -				   GEN11_GUC_SG_INTR_MASK, ~events);
> > -		guc->interrupts.enabled = true;
> > -	}
> > +	WARN_ON_ONCE(gen11_gt_reset_one_iir(gt, 0, GEN11_GUC));
> > +	intel_uncore_write(gt->uncore,
> > +			   GEN11_GUC_SG_INTR_ENABLE, events);
> > +	intel_uncore_write(gt->uncore,
> > +			   GEN11_GUC_SG_INTR_MASK, ~events);
> >   	spin_unlock_irq(&gt->irq_lock);
> >   }
> > @@ -154,7 +146,6 @@ static void gen11_disable_guc_interrupts(struct intel_guc *guc)
> >   	struct intel_gt *gt = guc_to_gt(guc);
> >   	spin_lock_irq(&gt->irq_lock);
> > -	guc->interrupts.enabled = false;
> >   	intel_uncore_write(gt->uncore, GEN11_GUC_SG_INTR_MASK, ~0);
> >   	intel_uncore_write(gt->uncore, GEN11_GUC_SG_INTR_ENABLE, 0);
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > index c20f3839de12..4abc59f6f3cd 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > @@ -33,7 +33,6 @@ struct intel_guc {
> >   	unsigned int msg_enabled_mask;
> >   	struct {
> > -		bool enabled;
> >   		void (*reset)(struct intel_guc *guc);
> >   		void (*enable)(struct intel_guc *guc);
> >   		void (*disable)(struct intel_guc *guc);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
