Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A9B34ACBD
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 17:45:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7566F42D;
	Fri, 26 Mar 2021 16:45:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A2366F42D
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 16:45:13 +0000 (UTC)
IronPort-SDR: 99orUdC2PSJ4aactd0ceHGNHS9tctREDJSx/q51FiRemvrKkGB5dmUFtSspCLgxPxtDn6WEu8q
 JD+3Wmoct6aQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="170559795"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="170559795"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:45:13 -0700
IronPort-SDR: 7X+3eB2X7Sl/9gyFKvG1iCcfAbcQfQAFV7m4mSjBboR6I9AL4JTlbRuog4eQTE/+vKNoOd0axM
 fNvnYyTMdW/g==
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="443419976"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:45:11 -0700
Date: Fri, 26 Mar 2021 18:45:07 +0200
From: Imre Deak <imre.deak@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Jose Souza <jose.souza@intel.com>
Message-ID: <20210326164507.GQ2237616@ideak-desk.fi.intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
 <20210325180720.401410-7-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325180720.401410-7-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 06/50] drm/i915/xelpd: Handle new
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, me@freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 25, 2021 at 11:06:36AM -0700, Matt Roper wrote:
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

Isn't this patch also supposed to include all the ADL_P specific
dvo_port -> port and VBT aux ch -> i915 aux ch mapping?

> =

> v2:
>  - Update handling of TGL_TRANS_CLK_SEL_PORT.  (Jose)
> =

> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c    |  8 +++++--
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 25 +++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_display.c |  6 ++++-
>  drivers/gpu/drm/i915/display/intel_display.h |  8 +++++++
>  drivers/gpu/drm/i915/display/intel_dp_aux.c  | 14 +++++++----
>  5 files changed, 44 insertions(+), 17 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 3d0c035b5e38..6847fb5aff4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2852,7 +2852,9 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_=
private *i915,
>  			aux_ch =3D AUX_CH_C;
>  		break;
>  	case DP_AUX_D:
> -		if (IS_ALDERLAKE_S(i915))
> +		if (DISPLAY_VER(i915) >=3D 13)
> +			aux_ch =3D AUX_CH_D_XELPD;
> +		else if (IS_ALDERLAKE_S(i915))
>  			aux_ch =3D AUX_CH_USBC3;
>  		else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
>  			aux_ch =3D AUX_CH_USBC2;
> @@ -2860,7 +2862,9 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_=
private *i915,
>  			aux_ch =3D AUX_CH_D;
>  		break;
>  	case DP_AUX_E:
> -		if (IS_ALDERLAKE_S(i915))
> +		if (DISPLAY_VER(i915) >=3D 13)
> +			aux_ch =3D AUX_CH_E_XELPD;
> +		else if (IS_ALDERLAKE_S(i915))
>  			aux_ch =3D AUX_CH_USBC4;
>  		else
>  			aux_ch =3D AUX_CH_E;
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 953de42e277c..933af861253e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -850,18 +850,19 @@ void intel_ddi_enable_pipe_clock(struct intel_encod=
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

> @@ -4489,7 +4490,13 @@ void intel_ddi_init(struct drm_i915_private *dev_p=
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
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 17490d29dc13..03d1e0eedaa8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4206,7 +4206,11 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_=
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
> index f056e19cf559..5b19953840aa 100644
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
> index 7e83bc2cc34a..8937561329b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -607,8 +607,8 @@ static i915_reg_t tgl_aux_ctl_reg(struct intel_dp *in=
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
> @@ -630,8 +630,8 @@ static i915_reg_t tgl_aux_data_reg(struct intel_dp *i=
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
> @@ -685,7 +685,11 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
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
