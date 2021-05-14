Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB2B380ABF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 15:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6126EE89;
	Fri, 14 May 2021 13:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1BCC6EE89
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 13:52:47 +0000 (UTC)
IronPort-SDR: 6stNOveLTD8UXnsNc+cITYS9unLbyQW1pTJhNjUR/k44qDKIftR6tUPkce9wq1mdvEAOJ4ny+I
 WwjISaKb3Zuw==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="200230969"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="200230969"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 06:52:46 -0700
IronPort-SDR: kqSO4/OQX2a/CguLJF0UTksPcNmiyqNmufMmgLraSdFq/HgLxj34EDtnXSI+EiyPe4WAI+cHMf
 ru0I3wyop6Kw==
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="402106206"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 06:52:45 -0700
Date: Fri, 14 May 2021 16:52:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210514135241.GA1296833@ideak-desk.fi.intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-5-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210508022820.780227-5-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 04/48] drm/i915/xelpd: Handle new
 location of outputs D and E
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 07, 2021 at 07:27:36PM -0700, Matt Roper wrote:
> The DDI naming template for display version 12 went A-C, TC1-TC6.  With
> XE_LPD, that naming scheme for DDI's has now changed to A-E, TC1-TC4.
> =

> The XE_LPD design keeps the register offsets and bitfields relating to
> the TC outputs in the same location they were previously.  The new "D"
> and "E" outputs now take the locations that were previously used by TC5
> and TC6 outputs, or what we would have considered to be outputs "H" and
> "I" under the legacy lettering scheme.
> =

> For the most part everything will just work as long as we initialize the
> output with the proper 'enum port' value.  However we do need to take
> care to pick the correct AUX channel when parsing the VBT (e.g., a
> reference to 'AUX D' is actually asking us to use the 8th aux channel,
> not the fourth).  We should also make sure that our encoders and aux
> channels are named appropriately so that it's easier to correlate driver
> debug messages with the bspec instructions.
> =

> v2:
>  - Update handling of TGL_TRANS_CLK_SEL_PORT.  (Jose)
> =

> v3:
>  - Add hpd_pin to handle outputs D and E (Jose)
>  - Fixed conversion of BIOS port to aux ch for TC ports (Jose)
> =

> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c    | 28 +++++++++++---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 40 +++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_display.c |  6 ++-
>  drivers/gpu/drm/i915/display/intel_display.h |  8 ++++
>  drivers/gpu/drm/i915/display/intel_dp_aux.c  | 14 ++++---
>  5 files changed, 74 insertions(+), 22 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index befab891a6b9..027cc738a168 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2853,7 +2853,9 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_=
private *i915,
>  			aux_ch =3D AUX_CH_C;
>  		break;
>  	case DP_AUX_D:
> -		if (IS_ALDERLAKE_S(i915))
> +		if (DISPLAY_VER(i915) =3D=3D 13)
> +			aux_ch =3D AUX_CH_D_XELPD;
> +		else if (IS_ALDERLAKE_S(i915))
>  			aux_ch =3D AUX_CH_USBC3;
>  		else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
>  			aux_ch =3D AUX_CH_USBC2;
> @@ -2861,22 +2863,36 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i91=
5_private *i915,
>  			aux_ch =3D AUX_CH_D;
>  		break;
>  	case DP_AUX_E:
> -		if (IS_ALDERLAKE_S(i915))
> +		if (DISPLAY_VER(i915) =3D=3D 13)
> +			aux_ch =3D AUX_CH_E_XELPD;
> +		else if (IS_ALDERLAKE_S(i915))
>  			aux_ch =3D AUX_CH_USBC4;
>  		else
>  			aux_ch =3D AUX_CH_E;
>  		break;
>  	case DP_AUX_F:
> -		aux_ch =3D AUX_CH_F;
> +		if (DISPLAY_VER(i915) =3D=3D 13)
> +			aux_ch =3D AUX_CH_USBC1;
> +		else
> +			aux_ch =3D AUX_CH_F;
>  		break;
>  	case DP_AUX_G:
> -		aux_ch =3D AUX_CH_G;
> +		if (DISPLAY_VER(i915) =3D=3D 13)
> +			aux_ch =3D AUX_CH_USBC2;
> +		else
> +			aux_ch =3D AUX_CH_G;
>  		break;
>  	case DP_AUX_H:
> -		aux_ch =3D AUX_CH_H;
> +		if (DISPLAY_VER(i915) =3D=3D 13)
> +			aux_ch =3D AUX_CH_USBC3;
> +		else
> +			aux_ch =3D AUX_CH_H;
>  		break;
>  	case DP_AUX_I:
> -		aux_ch =3D AUX_CH_I;
> +		if (DISPLAY_VER(i915) =3D=3D 13)
> +			aux_ch =3D AUX_CH_USBC4;
> +		else
> +			aux_ch =3D AUX_CH_I;
>  		break;
>  	default:
>  		MISSING_CASE(info->alternate_aux_channel);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 0b382e40d594..d37b01b889c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -854,18 +854,19 @@ void intel_ddi_enable_pipe_clock(struct intel_encod=
er *encoder,
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum port port =3D encoder->port;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> +	u32 val;
>  =

>  	if (cpu_transcoder !=3D TRANSCODER_EDP) {
> -		if (DISPLAY_VER(dev_priv) >=3D 12)
> -			intel_de_write(dev_priv,
> -				       TRANS_CLK_SEL(cpu_transcoder),
> -				       TGL_TRANS_CLK_SEL_PORT(port));
> +		if (DISPLAY_VER(dev_priv) >=3D 13)
> +			val =3D TGL_TRANS_CLK_SEL_PORT(phy);
> +		else if (DISPLAY_VER(dev_priv) >=3D 12)
> +			val =3D TGL_TRANS_CLK_SEL_PORT(encoder->port);
>  		else
> -			intel_de_write(dev_priv,
> -				       TRANS_CLK_SEL(cpu_transcoder),
> -				       TRANS_CLK_SEL_PORT(port));
> +			val =3D TRANS_CLK_SEL_PORT(encoder->port);
> +
> +		intel_de_write(dev_priv, TRANS_CLK_SEL(cpu_transcoder), val);
>  	}
>  }
>  =

> @@ -4354,6 +4355,17 @@ static bool hti_uses_phy(struct drm_i915_private *=
i915, enum phy phy)
>  	       i915->hti_state & HDPORT_DDI_USED(phy);
>  }
>  =

> +static enum hpd_pin xelpd_hpd_pin(struct drm_i915_private *dev_priv,
> +				  enum port port)
> +{
> +	if (port >=3D PORT_D_XELPD)
> +		return HPD_PORT_D + port - PORT_D_XELPD;
> +	else if (port >=3D PORT_TC1)
> +		return HPD_PORT_TC1 + port - PORT_TC1;
> +	else
> +		return HPD_PORT_A + port - PORT_A;
> +}
> +
>  static enum hpd_pin dg1_hpd_pin(struct drm_i915_private *dev_priv,
>  				enum port port)
>  {
> @@ -4493,7 +4505,13 @@ void intel_ddi_init(struct drm_i915_private *dev_p=
riv, enum port port)
>  	encoder =3D &dig_port->base;
>  	encoder->devdata =3D devdata;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 12) {
> +	if (DISPLAY_VER(dev_priv) >=3D 13 && port >=3D PORT_D_XELPD) {
> +		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
> +				 DRM_MODE_ENCODER_TMDS,
> +				 "DDI %c/PHY %c",
> +				 port_name(port - PORT_D_XELPD + PORT_D),
> +				 phy_name(phy));
> +	} else if (DISPLAY_VER(dev_priv) >=3D 12) {
>  		enum tc_port tc_port =3D intel_port_to_tc(dev_priv, port);
>  =

>  		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
> @@ -4604,7 +4622,9 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>  		encoder->get_config =3D hsw_ddi_get_config;
>  	}
>  =

> -	if (IS_DG1(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 13)
> +		encoder->hpd_pin =3D xelpd_hpd_pin(dev_priv, port);
> +	else if (IS_DG1(dev_priv))
>  		encoder->hpd_pin =3D dg1_hpd_pin(dev_priv, port);
>  	else if (IS_ROCKETLAKE(dev_priv))
>  		encoder->hpd_pin =3D rkl_hpd_pin(dev_priv, port);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e117fb312216..4aad98913d62 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3681,7 +3681,11 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_=
priv, enum phy phy)
>  =

>  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
>  {
> -	if (IS_ALDERLAKE_S(i915) && port >=3D PORT_TC1)
> +	if (DISPLAY_VER(i915) >=3D 13 && port >=3D PORT_D_XELPD)
> +		return PHY_D + port - PORT_D_XELPD;
> +	else if (DISPLAY_VER(i915) >=3D 13 && port >=3D PORT_TC1)
> +		return PHY_F + port - PORT_TC1;
> +	else if (IS_ALDERLAKE_S(i915) && port >=3D PORT_TC1)
>  		return PHY_B + port - PORT_TC1;
>  	else if ((IS_DG1(i915) || IS_ROCKETLAKE(i915)) && port >=3D PORT_TC1)
>  		return PHY_C + port - PORT_TC1;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index e7764e746c6a..bd69affc791c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -217,6 +217,10 @@ enum port {
>  	PORT_TC5,
>  	PORT_TC6,
>  =

> +	/* XE_LPD repositions D/E offsets and bitfields */
> +	PORT_D_XELPD =3D PORT_TC5,
> +	PORT_E_XELPD,
> +
>  	I915_MAX_PORTS
>  };
>  =

> @@ -300,6 +304,10 @@ enum aux_ch {
>  	AUX_CH_USBC4,
>  	AUX_CH_USBC5,
>  	AUX_CH_USBC6,
> +
> +	/* XE_LPD repositions D/E offsets and bitfields */
> +	AUX_CH_D_XELPD =3D AUX_CH_USBC5,
> +	AUX_CH_E_XELPD,
>  };
>  =

>  #define aux_ch_name(a) ((a) + 'A')
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.c
> index 350b12f0beb8..7c048d2ecf43 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -602,8 +602,8 @@ static i915_reg_t tgl_aux_ctl_reg(struct intel_dp *in=
tel_dp)
>  	case AUX_CH_USBC2:
>  	case AUX_CH_USBC3:
>  	case AUX_CH_USBC4:
> -	case AUX_CH_USBC5:
> -	case AUX_CH_USBC6:
> +	case AUX_CH_USBC5:  /* aka AUX_CH_D_XELPD */
> +	case AUX_CH_USBC6:  /* aka AUX_CH_E_XELPD */
>  		return DP_AUX_CH_CTL(aux_ch);
>  	default:
>  		MISSING_CASE(aux_ch);
> @@ -625,8 +625,8 @@ static i915_reg_t tgl_aux_data_reg(struct intel_dp *i=
ntel_dp, int index)
>  	case AUX_CH_USBC2:
>  	case AUX_CH_USBC3:
>  	case AUX_CH_USBC4:
> -	case AUX_CH_USBC5:
> -	case AUX_CH_USBC6:
> +	case AUX_CH_USBC5:  /* aka AUX_CH_D_XELPD */
> +	case AUX_CH_USBC6:  /* aka AUX_CH_E_XELPD */
>  		return DP_AUX_CH_DATA(aux_ch, index);
>  	default:
>  		MISSING_CASE(aux_ch);
> @@ -681,7 +681,11 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>  	drm_dp_aux_init(&intel_dp->aux);
>  =

>  	/* Failure to allocate our preferred name is not critical */
> -	if (DISPLAY_VER(dev_priv) >=3D 12 && aux_ch >=3D AUX_CH_USBC1)
> +	if (DISPLAY_VER(dev_priv) >=3D 13 && aux_ch >=3D AUX_CH_D_XELPD)
> +		intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX %c/%s",
> +					       aux_ch_name(aux_ch - AUX_CH_D_XELPD + AUX_CH_D),
> +					       encoder->base.name);
> +	else if (DISPLAY_VER(dev_priv) >=3D 12 && aux_ch >=3D AUX_CH_USBC1)
>  		intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX USBC%c/%s",
>  					       aux_ch - AUX_CH_USBC1 + '1',
>  					       encoder->base.name);
> -- =

> 2.25.4
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
