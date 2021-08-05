Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A75D3E17AC
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 17:11:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44AF289A59;
	Thu,  5 Aug 2021 15:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 226D6899E9
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 15:11:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="201347911"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="201347911"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 08:11:15 -0700
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="671740662"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 08:11:15 -0700
Date: Thu, 5 Aug 2021 08:11:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210805151113.GE1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210729170008.2836648-1-matthew.d.roper@intel.com>
 <20210729170008.2836648-6-matthew.d.roper@intel.com>
 <20210804202217.3qj6hisxpci2l2vk@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210804202217.3qj6hisxpci2l2vk@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH v4 05/18] drm/i915/dg2: Add SQIDI steering
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 04, 2021 at 01:22:17PM -0700, Lucas De Marchi wrote:
> On Thu, Jul 29, 2021 at 09:59:55AM -0700, Matt Roper wrote:
> > Although DG2_G10 platforms will always have all SQIDI's present and
> > don't need steering for registers in a SQIDI MMIO range, this isn't true
> > for DG2_G11 platforms; only SQIDI's 2 and 3 can be used on those.
> > 
> > We handle SQIDI ranges a bit differently from other types of explicit
> > steering.  The SQIDI ranges belong to either the MCFG unit or the SF
> > unit, both of which have their own dedicated steering registers and do
> > not use the typical 0xFDC steering control that all other types of
> > ranges use.  Thus we only need to worry about picking a valid initial
> > value for the MCFG and SF steering registers (0xFD0 and 0xFD8
> > resepectively) at driver init; they won't change after we set them up so
> 
> respectively
> 
> > we don't need to worry about re-steering them explicitly at runtime.
> > 
> > Given that any SQIDI value should work fine for DG2-G10 and XeHP SDV,
> > while only values of 2 and 3 are valid for DG2-G11, we'll just
> > initialize the MCFG and SF steering registers to a constant value of "2"
> > for all XeHP-based platforms for simplicity --- that will work in all
> > cases.
> > 
> > Bspec: 66534
> > Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> > drivers/gpu/drm/i915/gt/intel_workarounds.c | 28 +++++++++++++++++----
> > drivers/gpu/drm/i915/i915_reg.h             |  2 ++
> > 2 files changed, 25 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 8717337a6c81..6895b083523d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -889,17 +889,24 @@ cfl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
> > 		    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
> > }
> > 
> > -static void __add_mcr_wa(struct drm_i915_private *i915, struct i915_wa_list *wal,
> > -			 unsigned slice, unsigned subslice)
> > +static void __set_mcr_steering(struct i915_wa_list *wal,
> > +			       i915_reg_t steering_reg,
> > +			       unsigned int slice, unsigned int subslice)
> > {
> > 	u32 mcr, mcr_mask;
> > 
> > 	mcr = GEN11_MCR_SLICE(slice) | GEN11_MCR_SUBSLICE(subslice);
> > 	mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
> > 
> > -	drm_dbg(&i915->drm, "MCR slice/subslice = %x\n", mcr);
> > +	wa_write_clr_set(wal, steering_reg, mcr_mask, mcr);
> > +}
> > +
> > +static void __add_mcr_wa(struct drm_i915_private *i915, struct i915_wa_list *wal,
> > +			 unsigned int slice, unsigned int subslice)
> > +{
> > +	drm_dbg(&i915->drm, "MCR slice=0x%x, subslice=0x%x\n", slice, subslice);
> 
> maybe we could leave the debug message in __set_mcr_steering() and add
> what steering register we are setting? Up to you.
> 

I've got a separate patch that adds more clear steering debug
information via a drm_printer and then prints it both in the dmesg log
and in a new debugfs node.  The patch depends on some debugfs changes
that haven't shown up yet so I didn't include it here, but I'll rebase
and send it soon if the debugfs changes don't happen first.


Matt

> 
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> 
> > 
> > -	wa_write_clr_set(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
> > +	__set_mcr_steering(wal, GEN8_MCR_SELECTOR, slice, subslice);
> > }
> > 
> > static void
> > @@ -953,7 +960,6 @@ xehp_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
> > 	 * - L3 Bank (fusable)
> > 	 * - MSLICE (fusable)
> > 	 * - LNCF (sub-unit within mslice; always present if mslice is present)
> > -	 * - SQIDI (always on)
> > 	 *
> > 	 * We'll do our default/implicit steering based on GSLICE (in the
> > 	 * sliceid field) and DSS (in the subsliceid field).  If we can
> > @@ -1003,6 +1009,18 @@ xehp_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
> > 	WARN_ON(dss_mask >> (slice * GEN_DSS_PER_GSLICE) == 0);
> > 
> > 	__add_mcr_wa(i915, wal, slice, subslice);
> > +
> > +	/*
> > +	 * SQIDI ranges are special because they use different steering
> > +	 * registers than everything else we work with.  On XeHP SDV and
> > +	 * DG2-G10, any value in the steering registers will work fine since
> > +	 * all instances are present, but DG2-G11 only has SQIDI instances at
> > +	 * ID's 2 and 3, so we need to steer to one of those.  For simplicity
> > +	 * we'll just steer to a hardcoded "2" since that value will work
> > +	 * everywhere.
> > +	 */
> > +	__set_mcr_steering(wal, MCFG_MCR_SELECTOR, 0, 2);
> > +	__set_mcr_steering(wal, SF_MCR_SELECTOR, 0, 2);
> > }
> > 
> > static void
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index f4113e7e8271..39ce6befff52 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -2757,6 +2757,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> > #define GEN12_SC_INSTDONE_EXTRA2	_MMIO(0x7108)
> > #define GEN7_SAMPLER_INSTDONE	_MMIO(0xe160)
> > #define GEN7_ROW_INSTDONE	_MMIO(0xe164)
> > +#define MCFG_MCR_SELECTOR		_MMIO(0xfd0)
> > +#define SF_MCR_SELECTOR			_MMIO(0xfd8)
> > #define GEN8_MCR_SELECTOR		_MMIO(0xfdc)
> > #define   GEN8_MCR_SLICE(slice)		(((slice) & 3) << 26)
> > #define   GEN8_MCR_SLICE_MASK		GEN8_MCR_SLICE(3)
> > -- 
> > 2.25.4
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
