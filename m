Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1D631DFB7
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 20:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E606E201;
	Wed, 17 Feb 2021 19:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CD76E201
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 19:38:38 +0000 (UTC)
IronPort-SDR: ATf3K2Fvc506W85VRsO6cT0MQAdOdPq4d/pZyom1OkpQECQXOCks62LvxSWBUewUuIax87EOWI
 F1QFKxSBV4ww==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="170432134"
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="170432134"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 11:38:33 -0800
IronPort-SDR: DpMqqMveCVgcESwrtGCr3GT0gvH2d29D3/ET/J2u++VCNzCr9ECnPZnPJBNyZCiReel7EoyVw4
 TA8ge1+rF82w==
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="400106098"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 11:38:32 -0800
Date: Wed, 17 Feb 2021 21:38:28 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210217193828.GB557342@ideak-desk.fi.intel.com>
References: <20210217180245.202837-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210217180245.202837-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Compute aux ch power
 domain during DDI initialization
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 17, 2021 at 10:02:45AM -0800, Jos=E9 Roberto de Souza wrote:
> Future platform will require a power domain that do not mach with aux
> ch id, so here already preparing code for that by dropping the
> functions that converts the aux ch to power domains and initializaing
> aux_power_domain during intel_ddi_init().
> =

> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 58 ++-----------------
>  drivers/gpu/drm/i915/display/intel_display.h  |  2 -
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_tc.c       |  2 +-
>  5 files changed, 10 insertions(+), 58 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index eeae78097a20..ec5c1f91aee9 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4152,7 +4152,9 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>  =

>  	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
>  	dig_port->ddi_io_power_domain =3D POWER_DOMAIN_PORT_DDI_A_IO +
> -					      port - PORT_A;
> +					port - PORT_A;
> +	dig_port->aux_power_domain =3D POWER_DOMAIN_AUX_A + dig_port->aux_ch -
> +				     AUX_CH_A;
>  =

>  	if (init_dp) {
>  		if (!intel_ddi_init_dp_connector(dig_port))
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index acade004e8b1..3581aa50034e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4235,61 +4235,11 @@ intel_aux_power_domain(struct intel_digital_port =
*dig_port)
>  	enum phy phy =3D intel_port_to_phy(dev_priv, dig_port->base.port);
>  =

>  	if (intel_phy_is_tc(dev_priv, phy) &&
> -	    dig_port->tc_mode =3D=3D TC_PORT_TBT_ALT) {
> -		switch (dig_port->aux_ch) {
> -		case AUX_CH_C:
> -			return POWER_DOMAIN_AUX_C_TBT;
> -		case AUX_CH_D:
> -			return POWER_DOMAIN_AUX_D_TBT;
> -		case AUX_CH_E:
> -			return POWER_DOMAIN_AUX_E_TBT;
> -		case AUX_CH_F:
> -			return POWER_DOMAIN_AUX_F_TBT;
> -		case AUX_CH_G:
> -			return POWER_DOMAIN_AUX_G_TBT;
> -		case AUX_CH_H:
> -			return POWER_DOMAIN_AUX_H_TBT;
> -		case AUX_CH_I:
> -			return POWER_DOMAIN_AUX_I_TBT;
> -		default:
> -			MISSING_CASE(dig_port->aux_ch);
> -			return POWER_DOMAIN_AUX_C_TBT;
> -		}
> -	}
> -
> -	return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> -}
> +	    dig_port->tc_mode =3D=3D TC_PORT_TBT_ALT)
> +		return POWER_DOMAIN_AUX_C_TBT + dig_port->aux_power_domain -
> +		       POWER_DOMAIN_AUX_A;
>  =

> -/*
> - * Converts aux_ch to power_domain without caring about TBT ports for th=
at use
> - * intel_aux_power_domain()
> - */
> -enum intel_display_power_domain
> -intel_legacy_aux_to_power_domain(enum aux_ch aux_ch)
> -{
> -	switch (aux_ch) {
> -	case AUX_CH_A:
> -		return POWER_DOMAIN_AUX_A;
> -	case AUX_CH_B:
> -		return POWER_DOMAIN_AUX_B;
> -	case AUX_CH_C:
> -		return POWER_DOMAIN_AUX_C;
> -	case AUX_CH_D:
> -		return POWER_DOMAIN_AUX_D;
> -	case AUX_CH_E:
> -		return POWER_DOMAIN_AUX_E;
> -	case AUX_CH_F:
> -		return POWER_DOMAIN_AUX_F;
> -	case AUX_CH_G:
> -		return POWER_DOMAIN_AUX_G;
> -	case AUX_CH_H:
> -		return POWER_DOMAIN_AUX_H;
> -	case AUX_CH_I:
> -		return POWER_DOMAIN_AUX_I;
> -	default:
> -		MISSING_CASE(aux_ch);
> -		return POWER_DOMAIN_AUX_A;
> -	}
> +	return dig_port->aux_power_domain;
>  }
>  =

>  static u64 get_crtc_power_domains(struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 73b9d9c95d55..525ad555528f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -614,8 +614,6 @@ void hsw_disable_ips(const struct intel_crtc_state *c=
rtc_state);
>  enum intel_display_power_domain intel_port_to_power_domain(enum port por=
t);
>  enum intel_display_power_domain
>  intel_aux_power_domain(struct intel_digital_port *dig_port);
> -enum intel_display_power_domain
> -intel_legacy_aux_to_power_domain(enum aux_ch aux_ch);
>  void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
>  				  struct intel_crtc_state *crtc_state);
>  void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 07b7f5eae587..d527cb2ad070 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1589,6 +1589,8 @@ struct intel_digital_port {
>  	/* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
>  	enum aux_ch aux_ch;
>  	enum intel_display_power_domain ddi_io_power_domain;
> +	/* Regular/legacy aux channel power domain */
> +	enum intel_display_power_domain aux_power_domain;

What's the rational for storing it here? If there's a good one then I'd
rather call this legacy_aux_power_domain and store the tbt aux domains
here as well. It would also need to get initialized for dp encoders.

>  	intel_wakeref_t ddi_io_wakeref;
>  	intel_wakeref_t aux_wakeref;
>  	struct mutex tc_lock;	/* protects the TypeC port mode */
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index 2cefc13535a0..83080e15ad7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -29,7 +29,7 @@ tc_cold_get_power_domain(struct intel_digital_port *dig=
_port)
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  =

>  	if (INTEL_GEN(i915) =3D=3D 11)
> -		return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> +		return dig_port->aux_power_domain;
>  	else
>  		return POWER_DOMAIN_TC_COLD_OFF;
>  }
> -- =

> 2.30.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
