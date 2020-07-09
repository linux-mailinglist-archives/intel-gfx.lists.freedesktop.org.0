Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3E921A1D1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 16:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE4A66EA7C;
	Thu,  9 Jul 2020 14:11:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E861B6EA7C
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 14:10:58 +0000 (UTC)
IronPort-SDR: 1NHcZHC3pwZEXP9BJhuAFVPeTbjwHrEgyOR8bXFULLPB3oumFRbOoqQm0AwexBwB/AALGtlUuE
 vkUQVBsyiX1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="147071271"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="147071271"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 07:10:58 -0700
IronPort-SDR: Ihazxr+JyMOPRDwWhkJcR+09k+0/awFrZAN54ah6dKXIDDTY/jCYRiasLU13XKSYRY7T+3DQQJ
 GWAMconMy56g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="267418842"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 09 Jul 2020 07:10:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jul 2020 17:10:55 +0300
Date: Thu, 9 Jul 2020 17:10:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200709141055.GC6112@intel.com>
References: <20200708205512.21625-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200708205512.21625-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 1/5] drm/i915/display: Replace
 drm_i915_private in voltage swing functions by intel_encoder
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

On Wed, Jul 08, 2020 at 01:55:08PM -0700, Jos=E9 Roberto de Souza wrote:
> intel_encoder will be needed inside of vswing functions in a future
> patch, so here doing this change in all vswing functions since HSW.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 164 +++++++++++++----------
>  1 file changed, 95 insertions(+), 69 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 5773ebefffc7..e80319aa7cf0 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -707,8 +707,10 @@ static const struct cnl_ddi_buf_trans tgl_combo_phy_=
ddi_translations_dp_hbr2[] =3D
>  };
>  =

>  static const struct ddi_buf_trans *
> -bdw_get_buf_trans_edp(struct drm_i915_private *dev_priv, int *n_entries)
> +bdw_get_buf_trans_edp(struct intel_encoder *encoder, int *n_entries)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
>  	if (dev_priv->vbt.edp.low_vswing) {
>  		*n_entries =3D ARRAY_SIZE(bdw_ddi_translations_edp);
>  		return bdw_ddi_translations_edp;
> @@ -719,8 +721,10 @@ bdw_get_buf_trans_edp(struct drm_i915_private *dev_p=
riv, int *n_entries)
>  }
>  =

>  static const struct ddi_buf_trans *
> -skl_get_buf_trans_dp(struct drm_i915_private *dev_priv, int *n_entries)
> +skl_get_buf_trans_dp(struct intel_encoder *encoder, int *n_entries)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
>  	if (IS_SKL_ULX(dev_priv)) {
>  		*n_entries =3D ARRAY_SIZE(skl_y_ddi_translations_dp);
>  		return skl_y_ddi_translations_dp;
> @@ -734,8 +738,10 @@ skl_get_buf_trans_dp(struct drm_i915_private *dev_pr=
iv, int *n_entries)
>  }
>  =

>  static const struct ddi_buf_trans *
> -kbl_get_buf_trans_dp(struct drm_i915_private *dev_priv, int *n_entries)
> +kbl_get_buf_trans_dp(struct intel_encoder *encoder, int *n_entries)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
>  	if (IS_KBL_ULX(dev_priv) ||
>  	    IS_CFL_ULX(dev_priv) ||
>  	    IS_CML_ULX(dev_priv)) {
> @@ -753,8 +759,10 @@ kbl_get_buf_trans_dp(struct drm_i915_private *dev_pr=
iv, int *n_entries)
>  }
>  =

>  static const struct ddi_buf_trans *
> -skl_get_buf_trans_edp(struct drm_i915_private *dev_priv, int *n_entries)
> +skl_get_buf_trans_edp(struct intel_encoder *encoder, int *n_entries)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
>  	if (dev_priv->vbt.edp.low_vswing) {
>  		if (IS_SKL_ULX(dev_priv) ||
>  		    IS_KBL_ULX(dev_priv) ||
> @@ -777,9 +785,9 @@ skl_get_buf_trans_edp(struct drm_i915_private *dev_pr=
iv, int *n_entries)
>  	if (IS_KABYLAKE(dev_priv) ||
>  	    IS_COFFEELAKE(dev_priv) ||
>  	    IS_COMETLAKE(dev_priv))
> -		return kbl_get_buf_trans_dp(dev_priv, n_entries);
> +		return kbl_get_buf_trans_dp(encoder, n_entries);
>  	else
> -		return skl_get_buf_trans_dp(dev_priv, n_entries);
> +		return skl_get_buf_trans_dp(encoder, n_entries);
>  }
>  =

>  static const struct ddi_buf_trans *
> @@ -807,19 +815,21 @@ static int skl_buf_trans_num_entries(enum port port=
, int n_entries)
>  }
>  =

>  static const struct ddi_buf_trans *
> -intel_ddi_get_buf_trans_dp(struct drm_i915_private *dev_priv,
> +intel_ddi_get_buf_trans_dp(struct intel_encoder *encoder,
>  			   enum port port, int *n_entries)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
>  	if (IS_KABYLAKE(dev_priv) ||
>  	    IS_COFFEELAKE(dev_priv) ||
>  	    IS_COMETLAKE(dev_priv)) {
>  		const struct ddi_buf_trans *ddi_translations =3D
> -			kbl_get_buf_trans_dp(dev_priv, n_entries);
> +			kbl_get_buf_trans_dp(encoder, n_entries);
>  		*n_entries =3D skl_buf_trans_num_entries(port, *n_entries);
>  		return ddi_translations;
>  	} else if (IS_SKYLAKE(dev_priv)) {
>  		const struct ddi_buf_trans *ddi_translations =3D
> -			skl_get_buf_trans_dp(dev_priv, n_entries);
> +			skl_get_buf_trans_dp(encoder, n_entries);
>  		*n_entries =3D skl_buf_trans_num_entries(port, *n_entries);
>  		return ddi_translations;
>  	} else if (IS_BROADWELL(dev_priv)) {
> @@ -835,16 +845,18 @@ intel_ddi_get_buf_trans_dp(struct drm_i915_private =
*dev_priv,
>  }
>  =

>  static const struct ddi_buf_trans *
> -intel_ddi_get_buf_trans_edp(struct drm_i915_private *dev_priv,
> +intel_ddi_get_buf_trans_edp(struct intel_encoder *encoder,
>  			    enum port port, int *n_entries)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
>  	if (IS_GEN9_BC(dev_priv)) {
>  		const struct ddi_buf_trans *ddi_translations =3D
> -			skl_get_buf_trans_edp(dev_priv, n_entries);
> +			skl_get_buf_trans_edp(encoder, n_entries);
>  		*n_entries =3D skl_buf_trans_num_entries(port, *n_entries);
>  		return ddi_translations;
>  	} else if (IS_BROADWELL(dev_priv)) {
> -		return bdw_get_buf_trans_edp(dev_priv, n_entries);
> +		return bdw_get_buf_trans_edp(encoder, n_entries);
>  	} else if (IS_HASWELL(dev_priv)) {
>  		*n_entries =3D ARRAY_SIZE(hsw_ddi_translations_dp);
>  		return hsw_ddi_translations_dp;
> @@ -871,9 +883,11 @@ intel_ddi_get_buf_trans_fdi(struct drm_i915_private =
*dev_priv,
>  }
>  =

>  static const struct ddi_buf_trans *
> -intel_ddi_get_buf_trans_hdmi(struct drm_i915_private *dev_priv,
> +intel_ddi_get_buf_trans_hdmi(struct intel_encoder *encoder,
>  			     int *n_entries)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
>  	if (IS_GEN9_BC(dev_priv)) {
>  		return skl_get_buf_trans_hdmi(dev_priv, n_entries);
>  	} else if (IS_BROADWELL(dev_priv)) {
> @@ -889,33 +903,36 @@ intel_ddi_get_buf_trans_hdmi(struct drm_i915_privat=
e *dev_priv,
>  }
>  =

>  static const struct bxt_ddi_buf_trans *
> -bxt_get_buf_trans_dp(struct drm_i915_private *dev_priv, int *n_entries)
> +bxt_get_buf_trans_dp(struct intel_encoder *encoder, int *n_entries)
>  {
>  	*n_entries =3D ARRAY_SIZE(bxt_ddi_translations_dp);
>  	return bxt_ddi_translations_dp;
>  }
>  =

>  static const struct bxt_ddi_buf_trans *
> -bxt_get_buf_trans_edp(struct drm_i915_private *dev_priv, int *n_entries)
> +bxt_get_buf_trans_edp(struct intel_encoder *encoder, int *n_entries)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
>  	if (dev_priv->vbt.edp.low_vswing) {
>  		*n_entries =3D ARRAY_SIZE(bxt_ddi_translations_edp);
>  		return bxt_ddi_translations_edp;
>  	}
>  =

> -	return bxt_get_buf_trans_dp(dev_priv, n_entries);
> +	return bxt_get_buf_trans_dp(encoder, n_entries);
>  }
>  =

>  static const struct bxt_ddi_buf_trans *
> -bxt_get_buf_trans_hdmi(struct drm_i915_private *dev_priv, int *n_entries)
> +bxt_get_buf_trans_hdmi(struct intel_encoder *encoder, int *n_entries)
>  {
>  	*n_entries =3D ARRAY_SIZE(bxt_ddi_translations_hdmi);
>  	return bxt_ddi_translations_hdmi;
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -cnl_get_buf_trans_hdmi(struct drm_i915_private *dev_priv, int *n_entries)
> +cnl_get_buf_trans_hdmi(struct intel_encoder *encoder, int *n_entries)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	u32 voltage =3D intel_de_read(dev_priv, CNL_PORT_COMP_DW3) & VOLTAGE_IN=
FO_MASK;
>  =

>  	if (voltage =3D=3D VOLTAGE_INFO_0_85V) {
> @@ -935,8 +952,9 @@ cnl_get_buf_trans_hdmi(struct drm_i915_private *dev_p=
riv, int *n_entries)
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -cnl_get_buf_trans_dp(struct drm_i915_private *dev_priv, int *n_entries)
> +cnl_get_buf_trans_dp(struct intel_encoder *encoder, int *n_entries)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	u32 voltage =3D intel_de_read(dev_priv, CNL_PORT_COMP_DW3) & VOLTAGE_IN=
FO_MASK;
>  =

>  	if (voltage =3D=3D VOLTAGE_INFO_0_85V) {
> @@ -956,8 +974,9 @@ cnl_get_buf_trans_dp(struct drm_i915_private *dev_pri=
v, int *n_entries)
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -cnl_get_buf_trans_edp(struct drm_i915_private *dev_priv, int *n_entries)
> +cnl_get_buf_trans_edp(struct intel_encoder *encoder, int *n_entries)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	u32 voltage =3D intel_de_read(dev_priv, CNL_PORT_COMP_DW3) & VOLTAGE_IN=
FO_MASK;
>  =

>  	if (dev_priv->vbt.edp.low_vswing) {
> @@ -976,14 +995,16 @@ cnl_get_buf_trans_edp(struct drm_i915_private *dev_=
priv, int *n_entries)
>  		}
>  		return NULL;
>  	} else {
> -		return cnl_get_buf_trans_dp(dev_priv, n_entries);
> +		return cnl_get_buf_trans_dp(encoder, n_entries);
>  	}
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -icl_get_combo_buf_trans(struct drm_i915_private *dev_priv, int type, int=
 rate,
> +icl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
>  			int *n_entries)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
>  	if (type =3D=3D INTEL_OUTPUT_HDMI) {
>  		*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
>  		return icl_combo_phy_ddi_translations_hdmi;
> @@ -1000,7 +1021,7 @@ icl_get_combo_buf_trans(struct drm_i915_private *de=
v_priv, int type, int rate,
>  }
>  =

>  static const struct icl_mg_phy_ddi_buf_trans *
> -icl_get_mg_buf_trans(struct drm_i915_private *dev_priv, int type, int ra=
te,
> +icl_get_mg_buf_trans(struct intel_encoder *encoder, int type, int rate,
>  		     int *n_entries)
>  {
>  	if (type =3D=3D INTEL_OUTPUT_HDMI) {
> @@ -1016,7 +1037,7 @@ icl_get_mg_buf_trans(struct drm_i915_private *dev_p=
riv, int type, int rate,
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -ehl_get_combo_buf_trans(struct drm_i915_private *dev_priv, int type, int=
 rate,
> +ehl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
>  			int *n_entries)
>  {
>  	if (type !=3D INTEL_OUTPUT_HDMI && type !=3D INTEL_OUTPUT_EDP) {
> @@ -1024,15 +1045,15 @@ ehl_get_combo_buf_trans(struct drm_i915_private *=
dev_priv, int type, int rate,
>  		return ehl_combo_phy_ddi_translations_dp;
>  	}
>  =

> -	return icl_get_combo_buf_trans(dev_priv, type, rate, n_entries);
> +	return icl_get_combo_buf_trans(encoder, type, rate, n_entries);
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -tgl_get_combo_buf_trans(struct drm_i915_private *dev_priv, int type, int=
 rate,
> +tgl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
>  			int *n_entries)
>  {
>  	if (type =3D=3D INTEL_OUTPUT_HDMI || type =3D=3D INTEL_OUTPUT_EDP) {
> -		return icl_get_combo_buf_trans(dev_priv, type, rate, n_entries);
> +		return icl_get_combo_buf_trans(encoder, type, rate, n_entries);
>  	} else if (rate > 270000) {
>  		*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_dp_hbr2);
>  		return tgl_combo_phy_ddi_translations_dp_hbr2;
> @@ -1043,7 +1064,7 @@ tgl_get_combo_buf_trans(struct drm_i915_private *de=
v_priv, int type, int rate,
>  }
>  =

>  static const struct tgl_dkl_phy_ddi_buf_trans *
> -tgl_get_dkl_buf_trans(struct drm_i915_private *dev_priv, int type, int r=
ate,
> +tgl_get_dkl_buf_trans(struct intel_encoder *encoder, int type, int rate,
>  		      int *n_entries)
>  {
>  	if (type =3D=3D INTEL_OUTPUT_HDMI) {
> @@ -1066,34 +1087,34 @@ static int intel_ddi_hdmi_level(struct intel_enco=
der *encoder)
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12) {
>  		if (intel_phy_is_combo(dev_priv, phy))
> -			tgl_get_combo_buf_trans(dev_priv, INTEL_OUTPUT_HDMI,
> +			tgl_get_combo_buf_trans(encoder, INTEL_OUTPUT_HDMI,
>  						0, &n_entries);
>  		else
> -			tgl_get_dkl_buf_trans(dev_priv, INTEL_OUTPUT_HDMI, 0,
> +			tgl_get_dkl_buf_trans(encoder, INTEL_OUTPUT_HDMI, 0,
>  					      &n_entries);
>  		default_entry =3D n_entries - 1;
>  	} else if (INTEL_GEN(dev_priv) =3D=3D 11) {
>  		if (intel_phy_is_combo(dev_priv, phy))
> -			icl_get_combo_buf_trans(dev_priv, INTEL_OUTPUT_HDMI,
> +			icl_get_combo_buf_trans(encoder, INTEL_OUTPUT_HDMI,
>  						0, &n_entries);
>  		else
> -			icl_get_mg_buf_trans(dev_priv, INTEL_OUTPUT_HDMI, 0,
> +			icl_get_mg_buf_trans(encoder, INTEL_OUTPUT_HDMI, 0,
>  					     &n_entries);
>  		default_entry =3D n_entries - 1;
>  	} else if (IS_CANNONLAKE(dev_priv)) {
> -		cnl_get_buf_trans_hdmi(dev_priv, &n_entries);
> +		cnl_get_buf_trans_hdmi(encoder, &n_entries);
>  		default_entry =3D n_entries - 1;
>  	} else if (IS_GEN9_LP(dev_priv)) {
> -		bxt_get_buf_trans_hdmi(dev_priv, &n_entries);
> +		bxt_get_buf_trans_hdmi(encoder, &n_entries);
>  		default_entry =3D n_entries - 1;
>  	} else if (IS_GEN9_BC(dev_priv)) {
> -		intel_ddi_get_buf_trans_hdmi(dev_priv, &n_entries);
> +		intel_ddi_get_buf_trans_hdmi(encoder, &n_entries);
>  		default_entry =3D 8;
>  	} else if (IS_BROADWELL(dev_priv)) {
> -		intel_ddi_get_buf_trans_hdmi(dev_priv, &n_entries);
> +		intel_ddi_get_buf_trans_hdmi(encoder, &n_entries);
>  		default_entry =3D 7;
>  	} else if (IS_HASWELL(dev_priv)) {
> -		intel_ddi_get_buf_trans_hdmi(dev_priv, &n_entries);
> +		intel_ddi_get_buf_trans_hdmi(encoder, &n_entries);
>  		default_entry =3D 6;
>  	} else {
>  		drm_WARN(&dev_priv->drm, 1, "ddi translation table missing\n");
> @@ -1131,10 +1152,10 @@ static void intel_prepare_dp_ddi_buffers(struct i=
ntel_encoder *encoder,
>  		ddi_translations =3D intel_ddi_get_buf_trans_fdi(dev_priv,
>  							       &n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> -		ddi_translations =3D intel_ddi_get_buf_trans_edp(dev_priv, port,
> +		ddi_translations =3D intel_ddi_get_buf_trans_edp(encoder, port,
>  							       &n_entries);
>  	else
> -		ddi_translations =3D intel_ddi_get_buf_trans_dp(dev_priv, port,
> +		ddi_translations =3D intel_ddi_get_buf_trans_dp(encoder, port,
>  							      &n_entries);
>  =

>  	/* If we're boosting the current, set bit 31 of trans1 */
> @@ -1163,7 +1184,7 @@ static void intel_prepare_hdmi_ddi_buffers(struct i=
ntel_encoder *encoder,
>  	enum port port =3D encoder->port;
>  	const struct ddi_buf_trans *ddi_translations;
>  =

> -	ddi_translations =3D intel_ddi_get_buf_trans_hdmi(dev_priv, &n_entries);
> +	ddi_translations =3D intel_ddi_get_buf_trans_hdmi(encoder, &n_entries);
>  =

>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
>  		return;
> @@ -2098,11 +2119,15 @@ static void skl_ddi_set_iboost(struct intel_encod=
er *encoder,
>  		int n_entries;
>  =

>  		if (type =3D=3D INTEL_OUTPUT_HDMI)
> -			ddi_translations =3D intel_ddi_get_buf_trans_hdmi(dev_priv, &n_entrie=
s);
> +			ddi_translations =3D intel_ddi_get_buf_trans_hdmi(encoder, &n_entries=
);
>  		else if (type =3D=3D INTEL_OUTPUT_EDP)
> -			ddi_translations =3D intel_ddi_get_buf_trans_edp(dev_priv, port, &n_e=
ntries);
> +			ddi_translations =3D intel_ddi_get_buf_trans_edp(encoder,
> +								       port,
> +								       &n_entries);
>  		else
> -			ddi_translations =3D intel_ddi_get_buf_trans_dp(dev_priv, port, &n_en=
tries);
> +			ddi_translations =3D intel_ddi_get_buf_trans_dp(encoder,
> +								      port,
> +								      &n_entries);
>  =

>  		if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
>  			return;
> @@ -2133,11 +2158,11 @@ static void bxt_ddi_vswing_sequence(struct intel_=
encoder *encoder,
>  	int n_entries;
>  =

>  	if (type =3D=3D INTEL_OUTPUT_HDMI)
> -		ddi_translations =3D bxt_get_buf_trans_hdmi(dev_priv, &n_entries);
> +		ddi_translations =3D bxt_get_buf_trans_hdmi(encoder, &n_entries);
>  	else if (type =3D=3D INTEL_OUTPUT_EDP)
> -		ddi_translations =3D bxt_get_buf_trans_edp(dev_priv, &n_entries);
> +		ddi_translations =3D bxt_get_buf_trans_edp(encoder, &n_entries);
>  	else
> -		ddi_translations =3D bxt_get_buf_trans_dp(dev_priv, &n_entries);
> +		ddi_translations =3D bxt_get_buf_trans_dp(encoder, &n_entries);
>  =

>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
>  		return;
> @@ -2161,36 +2186,36 @@ static u8 intel_ddi_dp_voltage_max(struct intel_d=
p *intel_dp)
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12) {
>  		if (intel_phy_is_combo(dev_priv, phy))
> -			tgl_get_combo_buf_trans(dev_priv, encoder->type,
> +			tgl_get_combo_buf_trans(encoder, encoder->type,
>  						intel_dp->link_rate, &n_entries);
>  		else
> -			tgl_get_dkl_buf_trans(dev_priv, encoder->type,
> +			tgl_get_dkl_buf_trans(encoder, encoder->type,
>  					      intel_dp->link_rate, &n_entries);
>  	} else if (INTEL_GEN(dev_priv) =3D=3D 11) {
>  		if (IS_ELKHARTLAKE(dev_priv))
> -			ehl_get_combo_buf_trans(dev_priv, encoder->type,
> +			ehl_get_combo_buf_trans(encoder, encoder->type,
>  						intel_dp->link_rate, &n_entries);
>  		else if (intel_phy_is_combo(dev_priv, phy))
> -			icl_get_combo_buf_trans(dev_priv, encoder->type,
> +			icl_get_combo_buf_trans(encoder, encoder->type,
>  						intel_dp->link_rate, &n_entries);
>  		else
> -			icl_get_mg_buf_trans(dev_priv, encoder->type,
> +			icl_get_mg_buf_trans(encoder, encoder->type,
>  					     intel_dp->link_rate, &n_entries);
>  	} else if (IS_CANNONLAKE(dev_priv)) {
>  		if (encoder->type =3D=3D INTEL_OUTPUT_EDP)
> -			cnl_get_buf_trans_edp(dev_priv, &n_entries);
> +			cnl_get_buf_trans_edp(encoder, &n_entries);
>  		else
> -			cnl_get_buf_trans_dp(dev_priv, &n_entries);
> +			cnl_get_buf_trans_dp(encoder, &n_entries);
>  	} else if (IS_GEN9_LP(dev_priv)) {
>  		if (encoder->type =3D=3D INTEL_OUTPUT_EDP)
> -			bxt_get_buf_trans_edp(dev_priv, &n_entries);
> +			bxt_get_buf_trans_edp(encoder, &n_entries);
>  		else
> -			bxt_get_buf_trans_dp(dev_priv, &n_entries);
> +			bxt_get_buf_trans_dp(encoder, &n_entries);
>  	} else {
>  		if (encoder->type =3D=3D INTEL_OUTPUT_EDP)
> -			intel_ddi_get_buf_trans_edp(dev_priv, port, &n_entries);
> +			intel_ddi_get_buf_trans_edp(encoder, port, &n_entries);
>  		else
> -			intel_ddi_get_buf_trans_dp(dev_priv, port, &n_entries);
> +			intel_ddi_get_buf_trans_dp(encoder, port, &n_entries);
>  	}
>  =

>  	if (drm_WARN_ON(&dev_priv->drm, n_entries < 1))
> @@ -2223,11 +2248,11 @@ static void cnl_ddi_vswing_program(struct intel_e=
ncoder *encoder,
>  	u32 val;
>  =

>  	if (type =3D=3D INTEL_OUTPUT_HDMI)
> -		ddi_translations =3D cnl_get_buf_trans_hdmi(dev_priv, &n_entries);
> +		ddi_translations =3D cnl_get_buf_trans_hdmi(encoder, &n_entries);
>  	else if (type =3D=3D INTEL_OUTPUT_EDP)
> -		ddi_translations =3D cnl_get_buf_trans_edp(dev_priv, &n_entries);
> +		ddi_translations =3D cnl_get_buf_trans_edp(encoder, &n_entries);
>  	else
> -		ddi_translations =3D cnl_get_buf_trans_dp(dev_priv, &n_entries);
> +		ddi_translations =3D cnl_get_buf_trans_dp(encoder, &n_entries);
>  =

>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
>  		return;
> @@ -2344,22 +2369,23 @@ static void cnl_ddi_vswing_sequence(struct intel_=
encoder *encoder,
>  	intel_de_write(dev_priv, CNL_PORT_TX_DW5_GRP(port), val);
>  }
>  =

> -static void icl_ddi_combo_vswing_program(struct drm_i915_private *dev_pr=
iv,
> -					u32 level, enum phy phy, int type,
> -					int rate)
> +static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
> +					 u32 level, enum phy phy, int type,
> +					 int rate)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	const struct cnl_ddi_buf_trans *ddi_translations =3D NULL;
>  	u32 n_entries, val;
>  	int ln;
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12)
> -		ddi_translations =3D tgl_get_combo_buf_trans(dev_priv, type, rate,
> +		ddi_translations =3D tgl_get_combo_buf_trans(encoder, type, rate,
>  							   &n_entries);
>  	else if (IS_ELKHARTLAKE(dev_priv))
> -		ddi_translations =3D ehl_get_combo_buf_trans(dev_priv, type, rate,
> +		ddi_translations =3D ehl_get_combo_buf_trans(encoder, type, rate,
>  							   &n_entries);
>  	else
> -		ddi_translations =3D icl_get_combo_buf_trans(dev_priv, type, rate,
> +		ddi_translations =3D icl_get_combo_buf_trans(encoder, type, rate,
>  							   &n_entries);
>  	if (!ddi_translations)
>  		return;
> @@ -2471,7 +2497,7 @@ static void icl_combo_phy_ddi_vswing_sequence(struc=
t intel_encoder *encoder,
>  	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
>  =

>  	/* 5. Program swing and de-emphasis */
> -	icl_ddi_combo_vswing_program(dev_priv, level, phy, type, rate);
> +	icl_ddi_combo_vswing_program(encoder, level, phy, type, rate);
>  =

>  	/* 6. Set training enable to trigger update */
>  	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
> @@ -2495,7 +2521,7 @@ static void icl_mg_phy_ddi_vswing_sequence(struct i=
ntel_encoder *encoder,
>  		rate =3D intel_dp->link_rate;
>  	}
>  =

> -	ddi_translations =3D icl_get_mg_buf_trans(dev_priv, type, rate,
> +	ddi_translations =3D icl_get_mg_buf_trans(encoder, type, rate,
>  						&n_entries);
>  	/* The table does not have values for level 3 and level 9. */
>  	if (level >=3D n_entries || level =3D=3D 3 || level =3D=3D 9) {
> @@ -2640,7 +2666,7 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encode=
r *encoder, int link_clock,
>  		rate =3D intel_dp->link_rate;
>  	}
>  =

> -	ddi_translations =3D tgl_get_dkl_buf_trans(dev_priv, encoder->type, rat=
e,
> +	ddi_translations =3D tgl_get_dkl_buf_trans(encoder, encoder->type, rate,
>  						 &n_entries);
>  =

>  	if (level >=3D n_entries)
> -- =

> 2.27.0
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
