Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFE127EC99
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 17:29:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53A518991C;
	Wed, 30 Sep 2020 15:29:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EA008991C
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 15:29:31 +0000 (UTC)
IronPort-SDR: edMQ3HVrebfrL6sFEXVP+pwt59kxoPNoq5cw37vwMZAsnSN8F33Lasf8rIavSLXzC930RYSe9D
 cbew4EyA4Q9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="150258665"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="150258665"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 08:29:29 -0700
IronPort-SDR: l/G4gHw/QUkEQz/4jSPfLZVq++AmwSLXbPit5TXgLpKIWerWT8DbTK8XkCKtju00Jwzt/jNFey
 dvNkM6ExXVRQ==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="498016115"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 08:29:28 -0700
Date: Wed, 30 Sep 2020 18:29:25 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200930152925.GH867650@ideak-desk.fi.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
 <20200929233449.32323-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929233449.32323-9-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 08/11] drm/i915: Split TGL combo PHY buf
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

On Wed, Sep 30, 2020 at 02:34:46AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Make the mess inside the buf trans funcs a bit more manageable by
> splitting along the lines of output type.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 83 ++++++++++++++----------
>  1 file changed, 49 insertions(+), 34 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index da7090803ea1..fea06c1b09d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1157,51 +1157,66 @@ ehl_get_combo_buf_trans(struct intel_encoder *enc=
oder, int type, int rate,
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -tgl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
> -			int *n_entries)
> +tgl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder, int type, in=
t rate,
> +			     int *n_entries)
> +{
> +	*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
> +	return icl_combo_phy_ddi_translations_hdmi;
> +}
> +
> +static const struct cnl_ddi_buf_trans *
> +tgl_get_combo_buf_trans_dp(struct intel_encoder *encoder, int type, int =
rate,
> +			   int *n_entries)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  =

> -	switch (type) {
> -	case INTEL_OUTPUT_HDMI:
> -		*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
> -		return icl_combo_phy_ddi_translations_hdmi;
> -	case INTEL_OUTPUT_EDP:
> -		if (dev_priv->vbt.edp.hobl) {
> -			struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -
> -			if (!intel_dp->hobl_failed && rate <=3D 540000) {
> -				/* Same table applies to TGL, RKL and DG1 */
> -				*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_edp_hbr2_ho=
bl);
> -				return tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
> -			}
> -		}
> -
> -		if (rate > 540000) {
> -			*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr3);
> -			return icl_combo_phy_ddi_translations_edp_hbr3;
> -		} else if (dev_priv->vbt.edp.low_vswing) {
> -			*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr2);
> -			return icl_combo_phy_ddi_translations_edp_hbr2;
> -		}
> -		/* fall through */
> -	default:
> -		/* All combo DP and eDP ports that do not support low_vswing */
> -		if (rate > 270000) {
> -			if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
> -				*n_entries =3D ARRAY_SIZE(tgl_uy_combo_phy_ddi_translations_dp_hbr2);
> -				return tgl_uy_combo_phy_ddi_translations_dp_hbr2;
> -			}
> -
> +	if (rate > 270000) {
> +		if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
> +			*n_entries =3D ARRAY_SIZE(tgl_uy_combo_phy_ddi_translations_dp_hbr2);
> +			return tgl_uy_combo_phy_ddi_translations_dp_hbr2;
> +		} else {
>  			*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_dp_hbr2);
>  			return tgl_combo_phy_ddi_translations_dp_hbr2;
>  		}
> -
> +	} else {
>  		*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_dp_hbr);
>  		return tgl_combo_phy_ddi_translations_dp_hbr;
>  	}
>  }
>  =

> +static const struct cnl_ddi_buf_trans *
> +tgl_get_combo_buf_trans_edp(struct intel_encoder *encoder, int type, int=
 rate,
> +			    int *n_entries)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +	if (rate > 540000) {
> +		*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr3);
> +		return icl_combo_phy_ddi_translations_edp_hbr3;
> +	} else if (dev_priv->vbt.edp.hobl && !intel_dp->hobl_failed) {
> +		*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_edp_hbr2_hobl=
);
> +		return tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
> +	} else if (dev_priv->vbt.edp.low_vswing) {
> +		*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr2);
> +		return icl_combo_phy_ddi_translations_edp_hbr2;
> +	}
> +
> +	return tgl_get_combo_buf_trans_dp(encoder, type, rate, n_entries);
> +}
> +
> +static const struct cnl_ddi_buf_trans *
> +tgl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
> +			int *n_entries)
> +{
> +	if (type =3D=3D INTEL_OUTPUT_HDMI)
> +		return tgl_get_combo_buf_trans_hdmi(encoder, type, rate, n_entries);
> +	else if (type =3D=3D INTEL_OUTPUT_EDP)
> +		return tgl_get_combo_buf_trans_edp(encoder, type, rate, n_entries);
> +	else
> +		return tgl_get_combo_buf_trans_dp(encoder, type, rate, n_entries);
> +}
> +
>  static const struct tgl_dkl_phy_ddi_buf_trans *
>  tgl_get_dkl_buf_trans(struct intel_encoder *encoder, int type, int rate,
>  		      int *n_entries)
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
