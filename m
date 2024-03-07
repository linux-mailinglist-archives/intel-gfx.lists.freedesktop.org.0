Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C79AC8755A9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 18:58:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5542B11307B;
	Thu,  7 Mar 2024 17:58:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tjra+cpi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E102411307B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 17:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709834296; x=1741370296;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sfrOAj+bmPvqtaEOjXRL9HaGZS21cnKtWw9Z+asIhbc=;
 b=Tjra+cpi5E6TzaNSt0Q/jEuXGXNSQI6daXF8BRlTiJOUM8XWjw82wSrN
 TRLkj48K6zXUQkILgBd1EVAxYAXxVxX2uJu0aaoP7LEah7IJ/voUsLoIt
 nQ5J8DFTwLNIm9yUeR0eh6trPASDnmSSFlje+ZlWguRpd9jIHYbpQeUGv
 L6twzdoUJ8qXyG5hXRduhtx/6iXAIXbItvkKxbEufBSGWzp5EIzDfUsuQ
 J80nGqnEvy3MSSQAJxrVYPaFVSeHtJwipAVUqIfiuXlNKq+0bAV7yAkaj
 FlCwSp1Ns73uycTNVDKvyp4Q8/063+j7fhvG3WMZpFrZU/b28DaigVvTk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4374080"
X-IronPort-AV: E=Sophos;i="6.07,107,1708416000"; 
   d="scan'208";a="4374080"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 09:58:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827774866"
X-IronPort-AV: E=Sophos;i="6.07,107,1708416000"; d="scan'208";a="827774866"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 07 Mar 2024 09:58:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Mar 2024 19:58:12 +0200
Date: Thu, 7 Mar 2024 19:58:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/i915: Use pw_idx to derive PHY for
 ICL_LANE_ENABLE_AUX override
Message-ID: <ZeoANEo3ZNzj3yq8@intel.com>
References: <20240229200357.7969-1-ville.syrjala@linux.intel.com>
 <20240229200357.7969-3-ville.syrjala@linux.intel.com>
 <Zec27k4Wh9b1fiqs@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zec27k4Wh9b1fiqs@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
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

On Tue, Mar 05, 2024 at 05:14:54PM +0200, Imre Deak wrote:
> On Thu, Feb 29, 2024 at 10:03:56PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > We don't actually know whether we should be picking the PHY
> > simply based on the AUX_CH/power well, or based on the VBT
> > defined AUX_CH->DDI->PHY relationship. At the moment we are
> > doing the former for the ANAOVRD workaround, and the latter
> > for the ICL_LANE_ENABLE_AUX override. Windows seems to use the
> > first approach for everything. So let's unify this to follow
> > that same approach for both.
> > 
> > Eventually we should try to figure out  which is actually
> > correct, or whether any of this even matters (ie. whether there
> > are any real machines where the DDI and its AUX_CH do not match
> > 1:1).
> > 
> > Note that this also changes the behaviour if we do end up
> > poking an AUX power well not associated with any port (as
> > per VBT). Previously we would have skipped the PHY register
> > write, but now we always write it.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../i915/display/intel_display_power_well.c   | 21 +++++++++++--------
> >  1 file changed, 12 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index a1edac6ce31f..f25ad7d2c784 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -419,10 +419,12 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> >  
> >  	intel_de_rmw(dev_priv, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
> >  
> > -	/* FIXME this is a mess */
> > -	if (phy != PHY_NONE)
> > -		intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy),
> > -			     0, ICL_LANE_ENABLE_AUX);
> > +	/*
> > +	 * FIXME not sure if we should derive the PHY from the pw_idx, or
> > +	 * from the VBT defined AUX_CH->DDI->PHY mapping.
> > +	 */
> > +	intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(ICL_AUX_PW_TO_PHY(pw_idx)),
> > +		     0, ICL_LANE_ENABLE_AUX);
> 
> I wonder if the same PW -> PHY mapping could be used in
> icl_aux_power_well_enable/disable() as well (to make it more consistent
> if there is no encoder using the PW). Cross connecting combo, TC PHY AUX
> channels doesn't work anyway I think (maybe this could be actually
> checked in intel_bios_dp_aux_ch()).

We can't tell the PHY type from the pw, unless we add that
information to the power well definitions.

> 
> On the patchset:
> Reviewed-by: Imre Deak <imre.deak@intel.com>
> 
> 
> >  
> >  	hsw_wait_for_power_well_enable(dev_priv, power_well, false);
> >  
> > @@ -439,14 +441,15 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
> >  {
> >  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
> >  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
> > -	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> >  
> >  	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
> >  
> > -	/* FIXME this is a mess */
> > -	if (phy != PHY_NONE)
> > -		intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy),
> > -			     ICL_LANE_ENABLE_AUX, 0);
> > +	/*
> > +	 * FIXME not sure if we should derive the PHY from the pw_idx, or
> > +	 * from the VBT defined AUX_CH->DDI->PHY mapping.
> > +	 */
> > +	intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(ICL_AUX_PW_TO_PHY(pw_idx)),
> > +		     ICL_LANE_ENABLE_AUX, 0);
> >  
> >  	intel_de_rmw(dev_priv, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
> >  
> > -- 
> > 2.43.0
> > 

-- 
Ville Syrjälä
Intel
