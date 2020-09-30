Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2130E27EC42
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 17:19:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B94898ED;
	Wed, 30 Sep 2020 15:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E6CC898ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 15:19:36 +0000 (UTC)
IronPort-SDR: J8rA6TXK1j80HFA42MqtO/BbjFA2y+9T0FLNTGXW2T9nSaLBqjVFyZZVq5/D9G1IfFMBfh3gMM
 f5RZgEEvpnQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="163328152"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="163328152"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 08:19:22 -0700
IronPort-SDR: byQF8kpWq/wGu5i1m2xe1O6SwR/6LuN3w9NagGxrOb0vw+d7dzB7OYimgYF55JdLSlTKD/W9SM
 AunK6K60eO9g==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="497966860"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 08:19:20 -0700
Date: Wed, 30 Sep 2020 18:19:17 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200930151917.GE867650@ideak-desk.fi.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
 <20200929233449.32323-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929233449.32323-6-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 05/11] drm/i915: Split ICL combo PHY buf
 trans per output type
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

On Wed, Sep 30, 2020 at 02:34:43AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Make the mess inside the buf trans funcs a bit more manageable by
> splitting along the lines of output type.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 42 +++++++++++++++++++-----
>  1 file changed, 33 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 4d06178cd76c..4c3416d89f30 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1034,24 +1034,48 @@ cnl_get_buf_trans_edp(struct intel_encoder *encod=
er, int *n_entries)
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -icl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
> -			int *n_entries)
> +icl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder, int type, in=
t rate,
> +			     int *n_entries)
> +{
> +	*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
> +	return icl_combo_phy_ddi_translations_hdmi;
> +}
> +
> +static const struct cnl_ddi_buf_trans *
> +icl_get_combo_buf_trans_dp(struct intel_encoder *encoder, int type, int =
rate,
> +			   int *n_entries)
> +{
> +	*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_dp_hbr2);
> +	return icl_combo_phy_ddi_translations_dp_hbr2;
> +}
> +
> +static const struct cnl_ddi_buf_trans *
> +icl_get_combo_buf_trans_edp(struct intel_encoder *encoder, int type, int=
 rate,
> +			    int *n_entries)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  =

> -	if (type =3D=3D INTEL_OUTPUT_HDMI) {
> -		*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
> -		return icl_combo_phy_ddi_translations_hdmi;
> -	} else if (rate > 540000 && type =3D=3D INTEL_OUTPUT_EDP) {
> +	if (rate > 540000) {
>  		*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr3);
>  		return icl_combo_phy_ddi_translations_edp_hbr3;
> -	} else if (type =3D=3D INTEL_OUTPUT_EDP && dev_priv->vbt.edp.low_vswing=
) {
> +	} else if (dev_priv->vbt.edp.low_vswing) {
>  		*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr2);
>  		return icl_combo_phy_ddi_translations_edp_hbr2;
>  	}
>  =

> -	*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_dp_hbr2);
> -	return icl_combo_phy_ddi_translations_dp_hbr2;
> +	return icl_get_combo_buf_trans_dp(encoder, type, rate, n_entries);
> +}
> +
> +static const struct cnl_ddi_buf_trans *
> +icl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
> +			int *n_entries)
> +{
> +	if (type =3D=3D INTEL_OUTPUT_HDMI)
> +		return icl_get_combo_buf_trans_hdmi(encoder, type, rate, n_entries);
> +	else if (type =3D=3D INTEL_OUTPUT_EDP)
> +		return icl_get_combo_buf_trans_edp(encoder, type, rate, n_entries);
> +	else
> +		return icl_get_combo_buf_trans_dp(encoder, type, rate, n_entries);
>  }
>  =

>  static const struct icl_mg_phy_ddi_buf_trans *
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
