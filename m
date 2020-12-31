Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6542E7D48
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Dec 2020 01:01:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB698976D;
	Thu, 31 Dec 2020 00:01:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 624EC8976D
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Dec 2020 00:01:05 +0000 (UTC)
IronPort-SDR: kSP3GFS1J3Ryf4BbhuoVTChWgKxAzKo0V+/SMxejOdesz2YiHGLMXrL6+v9UVOvSjjBLPo15Na
 DCe8H8H7mJRA==
X-IronPort-AV: E=McAfee;i="6000,8403,9850"; a="175875231"
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; d="scan'208";a="175875231"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2020 16:01:04 -0800
IronPort-SDR: au8EEkH5JN/q8L+uUCBvSwkJTROye2DFy/HKUQL6UWDMlBSO+kAm+9PVvaFLZLQpwTvRYvnOgB
 zjqWWWiCOUWQ==
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; d="scan'208";a="565544707"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2020 16:01:04 -0800
Date: Wed, 30 Dec 2020 16:01:03 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <20201231000103.GD3894148@mdroper-desk1.amr.corp.intel.com>
References: <20201228061235.29384-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201228061235.29384-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/cml : Add TGP PCH support
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 28, 2020 at 11:42:35AM +0530, Tejas Upadhyay wrote:
> We have TGP PCH support for Tigerlake and Rocketlake. Similarly
> now TGP PCH can be used with Cometlake CPU.

Based on the 'compatibility' section of bspec 49181, I think the TGP PCH
can technically be compatible with any gen9bc platform, not just CML.
Although it seems unlikely that anyone is going to go back and create
new products with a SKL+TGP pairing or something at this point, it's
still probably best to write this patch based on GEN9_BC rather than
CML.

> =

> Changes since V1 :
> 	- Matched HPD Pin mapping for PORT C and PORT D of CML CPU.
> =

> Cc : Matt Roper <matthew.d.roper@intel.com>
> Cc : Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com> =

> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.c=
om>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 7 +++++--
>  drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 3 ++-
>  3 files changed, 12 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 17eaa56c5a99..181d60a5e145 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5301,7 +5301,9 @@ static enum hpd_pin dg1_hpd_pin(struct drm_i915_pri=
vate *dev_priv,
>  static enum hpd_pin tgl_hpd_pin(struct drm_i915_private *dev_priv,
>  				enum port port)
>  {
> -	if (port >=3D PORT_TC1)
> +	if (IS_COMETLAKE(dev_priv) && port >=3D PORT_C)
> +		return HPD_PORT_TC1 + port + 1 - PORT_TC1;
> +	else if (port >=3D PORT_TC1)
>  		return HPD_PORT_TC1 + port - PORT_TC1;
>  	else
>  		return HPD_PORT_A + port - PORT_A;
> @@ -5455,7 +5457,8 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>  =

>  	if (IS_DG1(dev_priv))
>  		encoder->hpd_pin =3D dg1_hpd_pin(dev_priv, port);
> -	else if (IS_ROCKETLAKE(dev_priv))
> +	else if (IS_ROCKETLAKE(dev_priv) || (IS_COMETLAKE(dev_priv) &&
> +					     HAS_PCH_TGP(dev_priv)))
>  		encoder->hpd_pin =3D rkl_hpd_pin(dev_priv, port);
>  	else if (INTEL_GEN(dev_priv) >=3D 12)

I'd suggest leaving the RKL condition alone since nothing here has
anything to do with RKL.  Instead change the gen12+ condition to
HAS_PCH_TGP() and update the TGP-specific handler to do the port mapping
described on bspec 49181.

Plus I don't think what you have here would map the ports correctly
anyway.  gen9 PORT_C/PORT_D would map to HPD_PORT_C/HPD_PORT_TC1 with
the logic here, whereas the bspec says they should map to
HPD_PORT_TC1/HPD_PORT_TC2.

>  		encoder->hpd_pin =3D tgl_hpd_pin(dev_priv, port);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f2c48e5cdb43..47014471658f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16163,6 +16163,11 @@ static void intel_setup_outputs(struct drm_i915_=
private *dev_priv)
>  			intel_ddi_init(dev_priv, PORT_F);
>  =

>  		icl_dsi_init(dev_priv);
> +	} else if (IS_COMETLAKE(dev_priv) && HAS_PCH_TGP(dev_priv)) {
> +		intel_ddi_init(dev_priv, PORT_A);
> +		intel_ddi_init(dev_priv, PORT_B);
> +		intel_ddi_init(dev_priv, PORT_C);
> +		intel_ddi_init(dev_priv, PORT_D);

As noted before, this relates to gen9bc in general, not just CML.

Is the only reason for this block because TGP's instance of SFUSE_STRAP
doesn't have output presence bits anymore?  If you want, you could keep
using the existing gen9bc block for consistency, but make the
SFUSE_STRAP checks themselves conditional on a platform that has the
presence bits.  E.g.,

    /* ICP+ no longer has port presence bits */
    found =3D INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP ?
        ~0 : intel_de_read(dev_priv, SFUSE_STRAP);

>  	} else if (IS_GEN9_LP(dev_priv)) {
>  		/*
>  		 * FIXME: Broxton doesn't support port detection via the
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index c5959590562b..540c9d54b595 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -3174,7 +3174,8 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *=
encoder)
>  =

>  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)
>  		ddc_pin =3D dg1_port_to_ddc_pin(dev_priv, port);
> -	else if (IS_ROCKETLAKE(dev_priv))
> +	else if (IS_ROCKETLAKE(dev_priv) || (IS_COMETLAKE(dev_priv) &&
> +					     HAS_PCH_TGP(dev_priv)))
>  		ddc_pin =3D rkl_port_to_ddc_pin(dev_priv, port);

As above, none of the changes in this patch have any relation to RKL, so
it doesn't make sense to update the RKL condition.  Instead just add the
gen9bc port mapping logic to icl_port_to_ddc_pin().

Plus, it looks like what you have here right now will make the same
mapping mistake for C and D that the HPD logic did.


Matt

>  	else if (HAS_PCH_MCC(dev_priv))
>  		ddc_pin =3D mcc_port_to_ddc_pin(dev_priv, port);
> -- =

> 2.28.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
