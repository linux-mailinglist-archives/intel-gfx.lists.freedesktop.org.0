Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A41421578
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 19:50:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A8586EA74;
	Mon,  4 Oct 2021 17:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A0936EA74
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 17:50:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="222963137"
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="222963137"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 10:50:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="457750649"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 10:50:02 -0700
Date: Mon, 4 Oct 2021 10:50:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 Karthik B S <karthik.b.s@intel.com>
Message-ID: <20211004175000.GA366973@mdroper-desk1.amr.corp.intel.com>
References: <20210930190943.17547-1-ville.syrjala@linux.intel.com>
 <20211001210815.GG3389343@mdroper-desk1.amr.corp.intel.com>
 <YVeFOzabpcWAbVFQ@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YVeFOzabpcWAbVFQ@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Extend the async flip VT-d
 w/a to skl/bxt
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

On Sat, Oct 02, 2021 at 01:01:31AM +0300, Ville Syrjälä wrote:
> On Fri, Oct 01, 2021 at 02:08:15PM -0700, Matt Roper wrote:
> > On Thu, Sep 30, 2021 at 10:09:42PM +0300, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Looks like skl/bxt/derivatives also need the plane stride
> > > stretch w/a when using async flips and VT-d is enabled, or
> > > else we get corruption on screen. To my surprise this was
> > > even documented in bspec, but only as a note on the
> > > CHICHKEN_PIPESL register description rather than on the
> > > w/a list.
> > > 
> > > So very much the same thing as on HSW/BDW, except the bits
> > > moved yet again.
> > 
> > Bspec 7522 doesn't say anything about this requirement being tied to
> > VT-d on these platforms.  Should we drop the intel_vtd_active()
> > condition to be safe?
> 
> I think it's just an oversight in bspec. I read through the hsd and
> IIRC it did specify that it's VT-d only. Also real life confirms
> it. No problems whatsoever when VT-d is disabled.

I notice there are additional bits that we should set to apply this
workaround to planes 2, 3, and 4, but since i915 still artificially
limits async flips to just the primary plane, only programming bits 1:0
should be fine for now; we'll just need to remember to extend this
workaround if we do start allowing async flips on other planes in the
future.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> > 
> > 
> > Matt
> > 
> > > 
> > > Cc: stable@vger.kernel.org
> > > Cc: Karthik B S <karthik.b.s@intel.com>
> > > Fixes: 55ea1cb178ef ("drm/i915: Enable async flips in i915")
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_reg.h |  5 +++++
> > >  drivers/gpu/drm/i915/intel_pm.c | 12 ++++++++++++
> > >  2 files changed, 17 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > index 3a20a55d2512..29f6bfc2002d 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -8222,6 +8222,11 @@ enum {
> > >  #define  HSW_SPR_STRETCH_MAX_X1		REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 3)
> > >  #define  HSW_FBCQ_DIS			(1 << 22)
> > >  #define  BDW_DPRS_MASK_VBLANK_SRD	(1 << 0)
> > > +#define  SKL_PLANE1_STRETCH_MAX_MASK	REG_GENMASK(1, 0)
> > > +#define  SKL_PLANE1_STRETCH_MAX_X8	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 0)
> > > +#define  SKL_PLANE1_STRETCH_MAX_X4	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 1)
> > > +#define  SKL_PLANE1_STRETCH_MAX_X2	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 2)
> > > +#define  SKL_PLANE1_STRETCH_MAX_X1	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 3)
> > >  #define CHICKEN_PIPESL_1(pipe) _MMIO_PIPE(pipe, _CHICKEN_PIPESL_1_A, _CHICKEN_PIPESL_1_B)
> > >  
> > >  #define _CHICKEN_TRANS_A	0x420c0
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > index ef5f73934dab..74d4620a4999 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -76,6 +76,8 @@ struct intel_wm_config {
> > >  
> > >  static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
> > >  {
> > > +	enum pipe pipe;
> > > +
> > >  	if (HAS_LLC(dev_priv)) {
> > >  		/*
> > >  		 * WaCompressedResourceDisplayNewHashMode:skl,kbl
> > > @@ -89,6 +91,16 @@ static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
> > >  			   SKL_DE_COMPRESSED_HASH_MODE);
> > >  	}
> > >  
> > > +	for_each_pipe(dev_priv, pipe) {
> > > +		/*
> > > +		 * "Plane N strech max must be programmed to 11b (x1)
> > > +		 *  when Async flips are enabled on that plane."
> > > +		 */
> > > +		if (!IS_GEMINILAKE(dev_priv) && intel_vtd_active())
> > > +			intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
> > > +					 SKL_PLANE1_STRETCH_MAX_MASK, SKL_PLANE1_STRETCH_MAX_X1);
> > > +	}
> > > +
> > >  	/* See Bspec note for PSR2_CTL bit 31, Wa#828:skl,bxt,kbl,cfl */
> > >  	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
> > >  		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | SKL_EDP_PSR_FIX_RDWRAP);
> > > -- 
> > > 2.32.0
> > > 
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > VTT-OSGC Platform Enablement
> > Intel Corporation
> > (916) 356-2795
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
