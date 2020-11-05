Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 101972A777E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 07:38:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB4816E0FC;
	Thu,  5 Nov 2020 06:38:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 470476E0FC
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 06:38:02 +0000 (UTC)
IronPort-SDR: nzazneJc9vQx8omsZAB5mpgYd0c0wEYfNZeC9IezQfkmip4OKpA1PTiwXMw7XwN5rx/W/K0n9C
 NAzoUxVdH/Vg==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="169474325"
X-IronPort-AV: E=Sophos;i="5.77,452,1596524400"; d="scan'208";a="169474325"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 21:30:47 -0800
IronPort-SDR: f+x/ikhpHmAqR924SV4HHsJr06IybTSRWMGaLyG1ulJc2vLzmDZ/rAjjGvjEhAXkH3qnKoXILI
 WLk2eow+TNPQ==
X-IronPort-AV: E=Sophos;i="5.77,452,1596524400"; d="scan'208";a="325888078"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 21:30:41 -0800
Date: Thu, 5 Nov 2020 10:47:15 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20201105051711.GO29526@intel.com>
References: <20201030061658.11435-1-anshuman.gupta@intel.com>
 <20201103220642.GF30349@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103220642.GF30349@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Tweaked Wa_14010685332 for PCHs
 used on gen11 platforms
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

On 2020-11-03 at 17:06:42 -0500, Rodrigo Vivi wrote:
> On Fri, Oct 30, 2020 at 11:46:58AM +0530, Anshuman Gupta wrote:
> > From: Bob Paauwe <bob.j.paauwe@intel.com>
> > 
> > The WA specifies that we need to toggle a SDE chicken bit on and then
> > off as the final step in preparation for s0ix entry.
> > 
> >     Bspec: 33450
> >     Bspec: 8402
> > 
> > However, something is happening after we toggle the bit that causes
> > the WA to be invalidated. This makes dispcnlunit1_cp_xosc_clkreq
> > active being already in s0ix state i.e SLP_S0 counter incremented.
> > Tweaking the Wa_14010685332 by setting the bit on suspend and clearing
> > it on resume turns down the dispcnlunit1_cp_xosc_clkreq.
> > B.Spec has Documented this tweaked sequence of WA as an alternative.
> > Let keep this tweaked WA for Gen11 platforms and keep untweaked WA for
> > other platforms which never observed this issue.
> > 
> > v2 (MattR):
> >  - Change the comment on the workaround to give PCH names rather than
> >    platform names.  Although the bspec is setup to list workarounds by
> >    platform, the hardware team has confirmed that the actual issue being
> >    worked around here is something that was introduced back in the
> >    Cannon Lake PCH and carried forward to subsequent PCH's.
> >  - Extend the untweaked version of the workaround to include  PCH_CNP as
> >    well.  Note that since PCH_CNP is used to represent CMP, this will
> >    apply on CML and some variants of RKL too.
> >  - Cap the untweaked version of the workaround so that it won't apply to
> >    "fake" PCH's (i.e., DG1).  The issue we're working around really is
> >    an issue in the PCH itself, not the South Display, so it shouldn't
> >    apply when there isn't a real PCH.
> > 
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Bob Paauwe <bob.j.paauwe@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_power.c    | 21 +++++++++++++++++--
> >  drivers/gpu/drm/i915/i915_irq.c               |  6 ++++--
> >  2 files changed, 23 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 689922480661..d2a6518329d7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -5858,17 +5858,34 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
> >  
> >  void intel_display_power_suspend_late(struct drm_i915_private *i915)
> >  {
> > -	if (INTEL_GEN(i915) >= 11 || IS_GEN9_LP(i915))
> > +	u32 val;
> > +
> > +	if (INTEL_GEN(i915) >= 11 || IS_GEN9_LP(i915)) {
> >  		bxt_enable_dc9(i915);
> > -	else if (IS_HASWELL(i915) || IS_BROADWELL(i915))
> > +		/* Tweaked Wa_14010685332:icp,jsp,mcc */
> > +		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC) {
> > +			val = intel_de_read(i915, SOUTH_CHICKEN1);
> > +			val |= SBCLK_RUN_REFCLK_DIS;
> > +			intel_de_write(i915, SOUTH_CHICKEN1, val);
> 
> could we use intel_de_rmw here?
May be i had misunderstod it earlier, i thought it was your recommendation
to use manual read, modify write without using intel_uncore_rmw(),
Was the actual idea to use intel_de_rmw flavour of API instead of intel_uncore_rmw?
Also would it require to use at original Wa in gen11_display_irq_reset as well?  
Thanks,
Anshuman Gupta.
> 
> > +		}
> > +	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
> >  		hsw_enable_pc8(i915);
> > +	}
> >  }
> >  
> >  void intel_display_power_resume_early(struct drm_i915_private *i915)
> >  {
> > +	u32 val;
> > +
> >  	if (INTEL_GEN(i915) >= 11 || IS_GEN9_LP(i915)) {
> >  		gen9_sanitize_dc_state(i915);
> >  		bxt_disable_dc9(i915);
> > +		/* Tweaked Wa_14010685332:icp,jsp,mcc */
> > +		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC) {
> > +			val = intel_de_read(i915, SOUTH_CHICKEN1);
> > +			val &= ~SBCLK_RUN_REFCLK_DIS;
> > +			intel_de_write(i915, SOUTH_CHICKEN1, val);
> 
> and here?
> 
> sorry for not having spotted that sooner.
> 
> > +		}
> >  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
> >  		hsw_disable_pc8(i915);
> >  	}
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> > index dc33c96d741d..410c03624c6a 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -3055,8 +3055,10 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
> >  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
> >  		GEN3_IRQ_RESET(uncore, SDE);
> >  
> > -	/* Wa_14010685332:icl,jsl,ehl,tgl,rkl */
> > -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
> > +	/* Wa_14010685332:cnp/cmp,tgp,adp */
> > +	if (INTEL_PCH_TYPE(dev_priv) == PCH_CNP ||
> > +	    (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP &&
> > +	     INTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
> >  		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> >  				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
> >  		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > -- 
> > 2.26.2
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
