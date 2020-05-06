Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C291C7688
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 18:33:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 105176E8AD;
	Wed,  6 May 2020 16:33:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 014786E8A8
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 16:33:33 +0000 (UTC)
IronPort-SDR: YO9vSxVyjHjwtLep8M/2AA1avdDT3Du/8M+pmTNkzGx6GsJlmzFIX0yFvANlSbW+zxC44rvLgl
 edOmrl0e6aoA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 09:33:32 -0700
IronPort-SDR: IyNpcf1nRkC7bHMxg/DX2uXn4GAvJ8oPCNKtLWVtuxjoR3Y/y1LIKEK8iNx7L896DjV2bZHSgF
 MQtKGrwOgiLw==
X-IronPort-AV: E=Sophos;i="5.73,360,1583222400"; d="scan'208";a="249812519"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 09:33:30 -0700
Date: Wed, 6 May 2020 19:32:53 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200506163253.GC8813@ideak-desk.fi.intel.com>
References: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
 <20200311155422.3043-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311155422.3043-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915: Use stashed away hpd isr
 bits in intel_digital_port_connected()
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

On Wed, Mar 11, 2020 at 05:54:22PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Get rid of several platform specific variants of
> intel_digital_port_connected() and just use the ISR bits we've
> stashed away.
> =

> v2: Duplicate stuff to avoid exposing platform specific
>     functions across files (Jani)
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 88 +++---------------------
>  drivers/gpu/drm/i915/display/intel_dp.c  | 59 ++--------------
>  drivers/gpu/drm/i915/display/intel_tc.c  |  4 +-
>  3 files changed, 17 insertions(+), 134 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index c8ceb08f8d05..d64fcc18ae4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4346,41 +4346,7 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
>  static bool lpt_digital_port_connected(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	u32 bit;
> -
> -	switch (encoder->hpd_pin) {
> -	case HPD_PORT_B:
> -		bit =3D SDE_PORTB_HOTPLUG_CPT;
> -		break;
> -	case HPD_PORT_C:
> -		bit =3D SDE_PORTC_HOTPLUG_CPT;
> -		break;
> -	case HPD_PORT_D:
> -		bit =3D SDE_PORTD_HOTPLUG_CPT;
> -		break;
> -	default:
> -		MISSING_CASE(encoder->hpd_pin);
> -		return false;
> -	}
> -
> -	return intel_de_read(dev_priv, SDEISR) & bit;
> -}
> -
> -static bool spt_digital_port_connected(struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	u32 bit;
> -
> -	switch (encoder->hpd_pin) {
> -	case HPD_PORT_A:
> -		bit =3D SDE_PORTA_HOTPLUG_SPT;
> -		break;
> -	case HPD_PORT_E:
> -		bit =3D SDE_PORTE_HOTPLUG_SPT;
> -		break;
> -	default:
> -		return lpt_digital_port_connected(encoder);
> -	}
> +	u32 bit =3D dev_priv->hotplug.pch_hpd[encoder->hpd_pin];
>  =

>  	return intel_de_read(dev_priv, SDEISR) & bit;
>  }
> @@ -4388,51 +4354,19 @@ static bool spt_digital_port_connected(struct int=
el_encoder *encoder)
>  static bool hsw_digital_port_connected(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	u32 bit =3D dev_priv->hotplug.hpd[encoder->hpd_pin];
>  =

> -	return intel_de_read(dev_priv, DEISR) & DE_DP_A_HOTPLUG_IVB;
> +	return intel_de_read(dev_priv, DEISR) & bit;
>  }
>  =

>  static bool bdw_digital_port_connected(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -
> -	return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & GEN8_PORT_DP_A_HOTPL=
UG;
> -}
> -
> -static bool bxt_digital_port_connected(struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	u32 bit;
> -
> -	switch (encoder->hpd_pin) {
> -	case HPD_PORT_A:
> -		bit =3D BXT_DE_PORT_HP_DDIA;
> -		break;
> -	case HPD_PORT_B:
> -		bit =3D BXT_DE_PORT_HP_DDIB;
> -		break;
> -	case HPD_PORT_C:
> -		bit =3D BXT_DE_PORT_HP_DDIC;
> -		break;
> -	default:
> -		MISSING_CASE(encoder->hpd_pin);
> -		return false;
> -	}
> +	u32 bit =3D dev_priv->hotplug.hpd[encoder->hpd_pin];
>  =

>  	return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & bit;
>  }
>  =

> -static bool icp_digital_port_connected(struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> -
> -	if (HAS_PCH_MCC(dev_priv) && phy =3D=3D PHY_C)
> -		return intel_de_read(dev_priv, SDEISR) & SDE_TC_HOTPLUG_ICP(PORT_TC1);
> -
> -	return intel_de_read(dev_priv, SDEISR) & SDE_DDI_HOTPLUG_ICP(phy);
> -}
> -
>  static struct intel_connector *
>  intel_ddi_init_hdmi_connector(struct intel_digital_port *intel_dig_port)
>  {
> @@ -4628,17 +4562,15 @@ void intel_ddi_init(struct drm_i915_private *dev_=
priv, enum port port)
>  		if (intel_phy_is_tc(dev_priv, phy))
>  			intel_dig_port->connected =3D intel_tc_port_connected;
>  		else
> -			intel_dig_port->connected =3D icp_digital_port_connected;
> -	} else if (IS_GEN9_LP(dev_priv)) {
> -		intel_dig_port->connected =3D bxt_digital_port_connected;
> -	} else if (port =3D=3D PORT_A) {
> -		if (INTEL_GEN(dev_priv) >=3D 8)
> +			intel_dig_port->connected =3D lpt_digital_port_connected;
> +	} else if (INTEL_GEN(dev_priv) >=3D 8) {
> +		if (port =3D=3D PORT_A || IS_GEN9_LP(dev_priv))
>  			intel_dig_port->connected =3D bdw_digital_port_connected;
>  		else
> +			intel_dig_port->connected =3D lpt_digital_port_connected;
> +	} else {
> +		if (port =3D=3D PORT_A)
>  			intel_dig_port->connected =3D hsw_digital_port_connected;
> -	} else {
> -		if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
> -			intel_dig_port->connected =3D spt_digital_port_connected;
>  		else
>  			intel_dig_port->connected =3D lpt_digital_port_connected;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index cff14f52c391..b34933959e54 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5404,45 +5404,7 @@ edp_detect(struct intel_dp *intel_dp)
>  static bool ibx_digital_port_connected(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	u32 bit;
> -
> -	switch (encoder->hpd_pin) {
> -	case HPD_PORT_B:
> -		bit =3D SDE_PORTB_HOTPLUG;
> -		break;
> -	case HPD_PORT_C:
> -		bit =3D SDE_PORTC_HOTPLUG;
> -		break;
> -	case HPD_PORT_D:
> -		bit =3D SDE_PORTD_HOTPLUG;
> -		break;
> -	default:
> -		MISSING_CASE(encoder->hpd_pin);
> -		return false;
> -	}
> -
> -	return intel_de_read(dev_priv, SDEISR) & bit;
> -}
> -
> -static bool cpt_digital_port_connected(struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	u32 bit;
> -
> -	switch (encoder->hpd_pin) {
> -	case HPD_PORT_B:
> -		bit =3D SDE_PORTB_HOTPLUG_CPT;
> -		break;
> -	case HPD_PORT_C:
> -		bit =3D SDE_PORTC_HOTPLUG_CPT;
> -		break;
> -	case HPD_PORT_D:
> -		bit =3D SDE_PORTD_HOTPLUG_CPT;
> -		break;
> -	default:
> -		MISSING_CASE(encoder->hpd_pin);
> -		return false;
> -	}
> +	u32 bit =3D dev_priv->hotplug.pch_hpd[encoder->hpd_pin];
>  =

>  	return intel_de_read(dev_priv, SDEISR) & bit;
>  }
> @@ -5496,15 +5458,9 @@ static bool gm45_digital_port_connected(struct int=
el_encoder *encoder)
>  static bool ilk_digital_port_connected(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	u32 bit =3D dev_priv->hotplug.hpd[encoder->hpd_pin];
>  =

> -	return intel_de_read(dev_priv, DEISR) & DE_DP_A_HOTPLUG;
> -}
> -
> -static bool ivb_digital_port_connected(struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -
> -	return intel_de_read(dev_priv, DEISR) & DE_DP_A_HOTPLUG_IVB;
> +	return intel_de_read(dev_priv, DEISR) & bit;
>  }
>  =

>  /*
> @@ -7735,14 +7691,9 @@ bool intel_dp_init(struct drm_i915_private *dev_pr=
iv,
>  			intel_dig_port->connected =3D gm45_digital_port_connected;
>  		else
>  			intel_dig_port->connected =3D g4x_digital_port_connected;
> -	} else if (port =3D=3D PORT_A) {
> -		if (IS_IVYBRIDGE(dev_priv))
> -			intel_dig_port->connected =3D ivb_digital_port_connected;
> -		else
> +	} else {
> +		if (port =3D=3D PORT_A)
>  			intel_dig_port->connected =3D ilk_digital_port_connected;
> -	} else {
> -		if (HAS_PCH_CPT(dev_priv))
> -			intel_dig_port->connected =3D cpt_digital_port_connected;
>  		else
>  			intel_dig_port->connected =3D ibx_digital_port_connected;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index 1e64b4c92eec..0b6c1950ec6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -173,8 +173,8 @@ static void tc_port_fixup_legacy_flag(struct intel_di=
gital_port *dig_port,
>  static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> -	enum tc_port tc_port =3D intel_port_to_tc(i915, dig_port->base.port);
>  	struct intel_uncore *uncore =3D &i915->uncore;
> +	u32 isr_bit =3D i915->hotplug.pch_hpd[dig_port->base.hpd_pin];
>  	u32 mask =3D 0;
>  	u32 val;
>  =

> @@ -193,7 +193,7 @@ static u32 tc_port_live_status_mask(struct intel_digi=
tal_port *dig_port)
>  	if (val & TC_LIVE_STATE_TC(dig_port->tc_phy_fia_idx))
>  		mask |=3D BIT(TC_PORT_DP_ALT);
>  =

> -	if (intel_uncore_read(uncore, SDEISR) & SDE_TC_HOTPLUG_ICP(tc_port))
> +	if (intel_uncore_read(uncore, SDEISR) & isr_bit)
>  		mask |=3D BIT(TC_PORT_LEGACY);
>  =

>  	/* The sink can be connected only in a single mode. */
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
