Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B79D2FBBA3
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 16:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AF7989E59;
	Tue, 19 Jan 2021 15:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D552789E59
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 15:52:50 +0000 (UTC)
IronPort-SDR: 6CpTCK2TRJyd/4U8iv1n/hhd/jj+aRSjkkjUGf6oNUbVpiQhaSRkQPUIvxISTiT3N+4p+gQ8Kj
 nuMlu8lfaZbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="158721146"
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="158721146"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 07:52:49 -0800
IronPort-SDR: MBTBFPKvp3jYxIVLrKdYX9E4um3naVEbEhg+HhCpYPuxIQ6DAsIiGOFyHrEGI6ivV/cPIUEPzi
 tNZmDpT54n5w==
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="569736105"
Received: from prantik-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.209.69.213])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 07:52:48 -0800
Date: Tue, 19 Jan 2021 10:52:47 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210119155247.GA3970@intel.com>
References: <20210108120922.88692-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20210112002155.GB3354@intel.com>
 <20210112013000.GD4758@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210112013000.GD4758@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen9_bc : Add TGP PCH support
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
Cc: intel-gfx@lists.freedesktop.org, hariom.pandey@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 11, 2021 at 05:30:00PM -0800, Matt Roper wrote:
> On Mon, Jan 11, 2021 at 07:21:55PM -0500, Rodrigo Vivi wrote:
> > On Fri, Jan 08, 2021 at 05:39:22PM +0530, Tejas Upadhyay wrote:
> > > We have TGP PCH support for Tigerlake and Rocketlake. Similarly
> > > now TGP PCH can be used with Cometlake CPU.
> > > 
> > > Changes since V3 :
> > > 	- Rebased to top drm-tip commit
> > > 	- dev_priv replaced with i915 for new API
> > > 	- Enable default Port B,C,D detection for TGP && GEN9_BC
> > > Changes since V2 :
> > >         - IS_COMETLAKE replaced with IS_GEN9_BC
> > >         - VBT ddc pin remapping added
> > >         - Added dedicated HPD pin and DDC pin handling API
> > > Changes since V1 :
> > >         - Matched HPD Pin mapping for PORT C and PORT D of CML CPU.
> > > 
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > > Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_bios.c    |  9 +++++++++
> > >  drivers/gpu/drm/i915/display/intel_ddi.c     |  7 +++++--
> > >  drivers/gpu/drm/i915/display/intel_display.c |  9 ++++++++-
> > >  drivers/gpu/drm/i915/display/intel_hdmi.c    | 20 ++++++++++++++++++++
> > >  drivers/gpu/drm/i915/intel_pch.c             |  3 ++-
> > >  5 files changed, 44 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > > index 987cf509337f..730b7f45e5d4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > > @@ -1630,6 +1630,12 @@ static const u8 rkl_pch_tgp_ddc_pin_map[] = {
> > >  	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP,
> > >  };
> > >  
> > > +static const u8 gen9bc_tgp_ddc_pin_map[] = {
> > > +	[DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
> > > +	[DDC_BUS_DDI_C] = GMBUS_PIN_9_TC1_ICP,
> > > +	[DDC_BUS_DDI_D] = GMBUS_PIN_10_TC2_ICP,
> > > +};
> > 
> > Could you please point out the spec you are using here?
> > 
> > VBT's spec at BSpec - at Block 2
> > I can see the TGP table is same as ICP.
> > 
> > So I'm kind of confused now.
> 
> It's a weird place to document it, but bspec 49181 has a compatibility
> section that describes how to map the TGP pins when paired with a gen9bc
> CPU.

Really weird place, but it makes some sense now.
We should file a BSpec bug and request this information to be consolidated
with VBT one.

> 
> > 
> > > +
> > >  static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
> > >  {
> > >  	const u8 *ddc_pin_map;
> > > @@ -1640,6 +1646,9 @@ static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
> > >  	} else if (IS_ROCKETLAKE(dev_priv) && INTEL_PCH_TYPE(dev_priv) == PCH_TGP) {
> > >  		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
> > >  		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
> > > +	} else if (HAS_PCH_TGP(dev_priv) && IS_GEN9_BC(dev_priv)) {
> > > +		ddc_pin_map = gen9bc_tgp_ddc_pin_map;
> > > +		n_entries = ARRAY_SIZE(gen9bc_tgp_ddc_pin_map);
> > >  	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
> > >  		ddc_pin_map = icp_ddc_pin_map;
> > >  		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index 3df6913369bc..13f1268e2cff 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -5337,7 +5337,9 @@ static enum hpd_pin dg1_hpd_pin(struct drm_i915_private *dev_priv,
> > >  static enum hpd_pin tgl_hpd_pin(struct drm_i915_private *dev_priv,
> > >  				enum port port)
> > >  {
> > > -	if (port >= PORT_TC1)
> > > +	if (IS_GEN9_BC(dev_priv) && port >= PORT_C)
> > 
> > gen9 in tgl function?!
> > please, no!
> 
> We should probably rename this function to tgp since it ultimately gets
> called on every possible TGP platform (TGL+TGP, RKL+TGP, gen9+TGP).  If
> it weren't for RKL+CMP, I'd say that all these functions should just be
> named after the PCH, but I guess the TC ports on RKL+CMP break the
> pattern.

okay, so we need at least this.

A rename with a return if not tgp. But please not gen9 call/check inside a gen12 function.

> 
> I think the real plan once we get some free time is to kill off a bunch
> of these output-based functions and define DDI/port/phy/VBT/HPD/DDC
> mapping for outputs declaratively in a table since all the special cases
> we're running into on recent platforms are turning the logic-based
> approach into a mess.

This long term plan looks good, but we cannot have a mess right now.
This patch needs rework.

> 
> > 
> > > +		return HPD_PORT_TC1 + port - PORT_C;
> > > +	else if (port >= PORT_TC1)
> > >  		return HPD_PORT_TC1 + port - PORT_TC1;
> > >  	else
> > >  		return HPD_PORT_A + port - PORT_A;
> > > @@ -5493,7 +5495,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> > >  		encoder->hpd_pin = dg1_hpd_pin(dev_priv, port);
> > >  	else if (IS_ROCKETLAKE(dev_priv))
> > >  		encoder->hpd_pin = rkl_hpd_pin(dev_priv, port);
> > > -	else if (INTEL_GEN(dev_priv) >= 12)
> > > +	else if (INTEL_GEN(dev_priv) >= 12 || (IS_GEN9_BC(dev_priv) &&
> > > +					       HAS_PCH_TGP(dev_priv)))
> > 
> > Here's another aspect that I don't like in this code.
> > It mixes the gfx gen with the PCH in many places.
> > 
> > Something is not right...

This is another critical part of this patch that needs to be reworked before we can accept.
We shouldn't mix gt-gen and pch checks...

> > 
> > >  		encoder->hpd_pin = tgl_hpd_pin(dev_priv, port);
> > >  	else if (IS_JSL_EHL(dev_priv))
> > >  		encoder->hpd_pin = ehl_hpd_pin(dev_priv, port);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 0189d379a55e..81c93c49ddef 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -16212,7 +16212,14 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> > >  
> > >  		/* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
> > >  		 * register */
> > > -		found = intel_de_read(dev_priv, SFUSE_STRAP);
> > > +		if (HAS_PCH_TGP(dev_priv)) {
> > > +			/* W/A due to lack of STRAP config on TGP PCH*/
> > > +			found = (SFUSE_STRAP_DDIB_DETECTED |
> > > +				 SFUSE_STRAP_DDIC_DETECTED |
> > > +				 SFUSE_STRAP_DDID_DETECTED);
> > > +		} else {
> > > +			found = intel_de_read(dev_priv, SFUSE_STRAP);
> > > +		}
> > 
> > oh, do we still need this :(
> 
> We've always needed it on gen9 (unless we're willing to rely solely on
> the VBT like we do for more recent platforms).  But when a gen9 platform
> is paired with a TGP PCH, the strap bits won't be there (since this is a
> south display register), so we have no choice but to rely on VBT.

okay, so please remove the other one from the HAS_DDI part and
move everything together with a separated IS_GEN9_BC...

Thanks,
Rodrigo.

> 
> 
> Matt
> 
> > 
> > >  
> > >  		if (found & SFUSE_STRAP_DDIB_DETECTED)
> > >  			intel_ddi_init(dev_priv, PORT_B);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > index c5959590562b..aa3b4a659f96 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > @@ -3130,6 +3130,24 @@ static u8 rkl_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
> > >  	return GMBUS_PIN_1_BXT + phy;
> > >  }
> > >  
> > > +static u8 gen9bc_port_to_ddc_pin(struct drm_i915_private *i915, enum port port)
> > > +{
> > > +	enum phy phy = intel_port_to_phy(i915, port);
> > > +
> > > +	drm_WARN_ON(&i915->drm, port == PORT_A);
> > > +
> > > +	/*
> > > +	 * Pin mapping for GEN9 BC depends on which PCH is present.  With TGP,
> > > +	 * final two outputs use type-c pins, even though they're actually
> > > +	 * combo outputs.  With CMP, the traditional DDI A-D pins are used for
> > > +	 * all outputs.
> > > +	 */
> > > +	if (INTEL_PCH_TYPE(i915) >= PCH_TGP && phy >= PHY_C)
> > > +		return GMBUS_PIN_9_TC1_ICP + phy - PHY_C;
> > > +
> > > +	return GMBUS_PIN_1_BXT + phy;
> > > +}
> > > +
> > >  static u8 dg1_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
> > >  {
> > >  	return intel_port_to_phy(dev_priv, port) + 1;
> > > @@ -3176,6 +3194,8 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
> > >  		ddc_pin = dg1_port_to_ddc_pin(dev_priv, port);
> > >  	else if (IS_ROCKETLAKE(dev_priv))
> > >  		ddc_pin = rkl_port_to_ddc_pin(dev_priv, port);
> > > +	else if (IS_GEN9_BC(dev_priv) && HAS_PCH_TGP(dev_priv))
> > > +		ddc_pin = gen9bc_port_to_ddc_pin(dev_priv, port);
> > >  	else if (HAS_PCH_MCC(dev_priv))
> > >  		ddc_pin = mcc_port_to_ddc_pin(dev_priv, port);
> > >  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
> > > diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
> > > index f31c0dabd0cc..c1bc2d032360 100644
> > > --- a/drivers/gpu/drm/i915/intel_pch.c
> > > +++ b/drivers/gpu/drm/i915/intel_pch.c
> > > @@ -121,7 +121,8 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
> > >  	case INTEL_PCH_TGP2_DEVICE_ID_TYPE:
> > >  		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
> > >  		drm_WARN_ON(&dev_priv->drm, !IS_TIGERLAKE(dev_priv) &&
> > > -			    !IS_ROCKETLAKE(dev_priv));
> > > +			    !IS_ROCKETLAKE(dev_priv) &&
> > > +			    !IS_GEN9_BC(dev_priv));
> > >  		return PCH_TGP;
> > >  	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
> > >  	case INTEL_PCH_JSP2_DEVICE_ID_TYPE:
> > > -- 
> > > 2.30.0
> > > 
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
