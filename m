Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 611C311DA5B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 01:03:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 584FB6E22E;
	Fri, 13 Dec 2019 00:03:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B536E22E
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 00:03:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 16:03:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="296762135"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 16:03:26 -0800
Date: Thu, 12 Dec 2019 16:03:25 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191213000325.GQ85422@mdroper-desk1.amr.corp.intel.com>
References: <20191212230411.bx6xb6ixhullrki7@ldmartin-desk1>
 <20191212235121.668922-1-matthew.d.roper@intel.com>
 <20191212235627.mwjspcgl5ho4yvjx@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212235627.mwjspcgl5ho4yvjx@ldmartin-desk1>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/icl: Cleanup combo PHY aux
 power well handlers
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

On Thu, Dec 12, 2019 at 03:56:38PM -0800, Lucas De Marchi wrote:
> On Thu, Dec 12, 2019 at 03:51:21PM -0800, Matt Roper wrote:
> > Now that the combo PHY aux power well handlers are used exclusively on
> > Icelake, we can drop a bunch of the extra tests.
> > 
> > v2: Don't try to use intel_uncore_rmw for register updates yet; there's
> >    pending display uncore patches that need to land first.  (Lucas)
> > 
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> > .../drm/i915/display/intel_display_power.c    | 25 ++++++++-----------
> > 1 file changed, 10 insertions(+), 15 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 52f2332e0ab8..a0669dc15540 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -418,7 +418,9 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> > 	int pw_idx = power_well->desc->hsw.idx;
> > 	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
> > 	u32 val;
> > -	int wa_idx_max;
> > +
> > +	WARN_ON(!IS_ICELAKE(dev_priv));
> > +	WARN_ON(intel_phy_is_combo(dev_priv, phy));
> 
> did you mean !intel_phy_is_combo()?

Woops, yes!  I'll send a followup shortly.

> 
> I'm not sure I actually like the warns, we could just live without them.

I feel like power wells are an area where we tend to do a lot of
copy/paste/modify when defining a new platform because the tables are so
large and a lot of the entries are similar or stay the same.  I want to
make sure we don't cargo cult the ICL-specific function onto future
platforms by accident.  It's easy to miss those mistakes in code review
because it's hooking up a combo phy-specific table which *sounds* like
the right thing to do on the surface if you don't realize the relevant
functions have ICL-specific handling that we don't want to propagate
forward.

Granted, people are more likely to copy TGL than ICL at this point, but
I figured the extra assertions wouldn't hurt.


> 
> We should also remove  _TGL_AUX_ANAOVRD1_C either in this commit or in
> the previous one.

Yeah, good point.  I'll do that too.


Matt

> 
> Lucas De Marchi
> 
> > 
> > 	val = I915_READ(regs->driver);
> > 	I915_WRITE(regs->driver, val | HSW_PWR_WELL_CTL_REQ(pw_idx));
> > @@ -430,19 +432,11 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> > 
> > 	hsw_wait_for_power_well_enable(dev_priv, power_well);
> > 
> > -	/* Display WA #1178: icl, tgl */
> > -	if (IS_TIGERLAKE(dev_priv))
> > -		wa_idx_max = ICL_PW_CTL_IDX_AUX_C;
> > -	else
> > -		wa_idx_max = ICL_PW_CTL_IDX_AUX_B;
> > -
> > -	if (!IS_ELKHARTLAKE(dev_priv) &&
> > -	    pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= wa_idx_max &&
> > -	    !intel_bios_is_port_edp(dev_priv, (enum port)phy)) {
> > +	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
> > +	    !intel_bios_is_port_edp(dev_priv, (enum port)phy))
> > 		val = I915_READ(ICL_AUX_ANAOVRD1(pw_idx));
> > 		val |= ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
> > 		I915_WRITE(ICL_AUX_ANAOVRD1(pw_idx), val);
> > -	}
> > }
> > 
> > static void
> > @@ -454,10 +448,11 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
> > 	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
> > 	u32 val;
> > 
> > -	if (INTEL_GEN(dev_priv) < 12) {
> > -		val = I915_READ(ICL_PORT_CL_DW12(phy));
> > -		I915_WRITE(ICL_PORT_CL_DW12(phy), val & ~ICL_LANE_ENABLE_AUX);
> > -	}
> > +	WARN_ON(!IS_ICELAKE(dev_priv));
> > +	WARN_ON(intel_phy_is_combo(dev_priv, phy));
> > +
> > +	val = I915_READ(ICL_PORT_CL_DW12(phy));
> > +	I915_WRITE(ICL_PORT_CL_DW12(phy), val & ~ICL_LANE_ENABLE_AUX);
> > 
> > 	val = I915_READ(regs->driver);
> > 	I915_WRITE(regs->driver, val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
> > -- 
> > 2.23.0
> > 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
