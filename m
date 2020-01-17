Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C40140CE7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 15:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30E656F5B7;
	Fri, 17 Jan 2020 14:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E40F46F5B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 14:43:36 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:43:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="214493282"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 17 Jan 2020 06:43:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jan 2020 16:43:32 +0200
Date: Fri, 17 Jan 2020 16:43:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200117144332.GM13686@intel.com>
References: <cover.1579270868.git.jani.nikula@intel.com>
 <c52c39df43374b51f56439daf8047079afae7749.1579270868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c52c39df43374b51f56439daf8047079afae7749.1579270868.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/bios: add
 intel_bios_max_tmds_encoder()
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

On Fri, Jan 17, 2020 at 04:29:21PM +0200, Jani Nikula wrote:
> Don't access i915->vbt.ddi_port_info[] directly.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_bios.h | 1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 9 ++++-----
>  3 files changed, 12 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 9a891ef72118..b231fafc03ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2562,3 +2562,10 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915=
_private *dev_priv,
>  =

>  	return aux_ch;
>  }
> +
> +int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	return i915->vbt.ddi_port_info[encoder->port].max_tmds_clock;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index d6a0c29d37ac..519e983ee9e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -247,5 +247,6 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_pr=
ivate *dev_priv, enum port
>  bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>  			       struct intel_crtc_state *crtc_state,
>  			       int dsc_max_bpc);
> +int intel_bios_max_tmds_clock(struct intel_encoder *encoder);
>  =

>  #endif /* _INTEL_BIOS_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 93ac0f296852..e8f8c87cd3e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2090,9 +2090,7 @@ static void pch_post_disable_hdmi(struct intel_enco=
der *encoder,
>  static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encode=
r)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	const struct ddi_vbt_port_info *info =3D
> -		&dev_priv->vbt.ddi_port_info[encoder->port];
> -	int max_tmds_clock;
> +	int max_tmds_clock, vbt_max_tmds_clock;
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
>  		max_tmds_clock =3D 594000;
> @@ -2103,8 +2101,9 @@ static int intel_hdmi_source_max_tmds_clock(struct =
intel_encoder *encoder)
>  	else
>  		max_tmds_clock =3D 165000;
>  =

> -	if (info->max_tmds_clock)
> -		max_tmds_clock =3D min(max_tmds_clock, info->max_tmds_clock);
> +	vbt_max_tmds_clock =3D intel_bios_max_tmds_clock(encoder);
> +	if (vbt_max_tmds_clock)
> +		max_tmds_clock =3D min(max_tmds_clock, vbt_max_tmds_clock);
>  =

>  	return max_tmds_clock;
>  }
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
