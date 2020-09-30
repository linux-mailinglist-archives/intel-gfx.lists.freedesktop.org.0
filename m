Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AE727EC78
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 17:26:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27C1389450;
	Wed, 30 Sep 2020 15:26:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8849D89450
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 15:26:19 +0000 (UTC)
IronPort-SDR: 02isGs0Os7FifGvWjvbqH4KT+ezcsU1FG/d0Iy7H7vIRatJkVGuy9CkisB12C1EZENgoYX7ZPm
 2yjQRTrbRUMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="224068332"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="224068332"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 08:24:37 -0700
IronPort-SDR: nn6cYoH+WU3T7RFr54MYdI0O3A7umi6tuW5wHg3/wZUKuN8jY5T6tyk4f24oXQiBcg1So/GDTl
 oIj9wDf6gCYQ==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="497992790"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 08:24:36 -0700
Date: Wed, 30 Sep 2020 18:24:32 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200930152432.GG867650@ideak-desk.fi.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
 <20200929233449.32323-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929233449.32323-8-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 07/11] drm/i915: Split EHL combo PHY buf
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

On Wed, Sep 30, 2020 at 02:34:45AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Make the mess inside the buf trans funcs a bit more manageable by
> splitting along the lines of output type.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 63 +++++++++++++++---------
>  1 file changed, 41 insertions(+), 22 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index e3c6d4942b68..da7090803ea1 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1109,32 +1109,51 @@ icl_get_mg_buf_trans(struct intel_encoder *encode=
r, int type, int rate,
>  		return icl_get_mg_buf_trans_dp(encoder, type, rate, n_entries);
>  }
>  =

> +static const struct cnl_ddi_buf_trans *
> +ehl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder, int type, in=
t rate,
> +			     int *n_entries)
> +{
> +	*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
> +	return icl_combo_phy_ddi_translations_hdmi;
> +}
> +
> +static const struct cnl_ddi_buf_trans *
> +ehl_get_combo_buf_trans_dp(struct intel_encoder *encoder, int type, int =
rate,
> +			   int *n_entries)
> +{
> +	*n_entries =3D ARRAY_SIZE(ehl_combo_phy_ddi_translations_dp);
> +	return ehl_combo_phy_ddi_translations_dp;
> +}
> +
> +static const struct cnl_ddi_buf_trans *
> +ehl_get_combo_buf_trans_edp(struct intel_encoder *encoder, int type, int=
 rate,
> +			    int *n_entries)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
> +	if (dev_priv->vbt.edp.low_vswing) {
> +		if (rate > 540000) {
> +			*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr3);
> +			return icl_combo_phy_ddi_translations_edp_hbr3;
> +		} else {
> +			*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr2);
> +			return icl_combo_phy_ddi_translations_edp_hbr2;
> +		}
> +	}
> +
> +	return ehl_get_combo_buf_trans_dp(encoder, type, rate, n_entries);
> +}
> +
>  static const struct cnl_ddi_buf_trans *
>  ehl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
>  			int *n_entries)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -
> -	switch (type) {
> -	case INTEL_OUTPUT_HDMI:
> -		*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
> -		return icl_combo_phy_ddi_translations_hdmi;
> -	case INTEL_OUTPUT_EDP:
> -		if (dev_priv->vbt.edp.low_vswing) {
> -			if (rate > 540000) {
> -				*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr3);
> -				return icl_combo_phy_ddi_translations_edp_hbr3;
> -			} else {
> -				*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr2);
> -				return icl_combo_phy_ddi_translations_edp_hbr2;
> -			}
> -		}
> -		/* fall through */
> -	default:
> -		/* All combo DP and eDP ports that do not support low_vswing */
> -		*n_entries =3D ARRAY_SIZE(ehl_combo_phy_ddi_translations_dp);
> -		return ehl_combo_phy_ddi_translations_dp;
> -	}
> +	if (type =3D=3D INTEL_OUTPUT_HDMI)
> +		return ehl_get_combo_buf_trans_hdmi(encoder, type, rate, n_entries);
> +	else if (type =3D=3D INTEL_OUTPUT_EDP)
> +		return ehl_get_combo_buf_trans_edp(encoder, type, rate, n_entries);
> +	else
> +		return ehl_get_combo_buf_trans_dp(encoder, type, rate, n_entries);
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
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
