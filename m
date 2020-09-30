Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EBB27EF53
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 18:36:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C65C89B68;
	Wed, 30 Sep 2020 16:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E20489B68
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 16:36:31 +0000 (UTC)
IronPort-SDR: elEADTPbwx4NwCCCNAh9LurZXWxM9b9fBtGjyEfoxrOHz9nuaV82O72g+IoCF1MQ++tAmXxm5x
 CVXONrg6tmxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="226634012"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="226634012"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 09:36:30 -0700
IronPort-SDR: PXX+sCYmGXVfucM7r5T8uZrS9wQH3jRgql+RnZCspEh/mr+J4MUgIZfoLLhbI+/VA9KrVpGY/Y
 TxVJ04lEAqbg==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="498307015"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 09:36:28 -0700
Date: Wed, 30 Sep 2020 19:36:24 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200930163624.GJ867650@ideak-desk.fi.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
 <20200929233449.32323-11-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929233449.32323-11-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 10/11] drm/i915: Plumb crtc_state to link
 training
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

On Wed, Sep 30, 2020 at 02:34:48AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Get rid of mode crtc->config usage, and some ad-hoc intel_dp state
> usage by plumbing the crtc state all the way down to the link training
> code.
> =

> Unfortunately we do have to keep some cached state in intel_dp so
> that we can do the "does the link need retraining?" checks from
> the short hpd handler.
> =

> v2: Add intel_crtc_state forward declaration
> v3: Don't kill the PHY test code totally since it's
>     now in the hotplug work where we can get at the states
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

4 nitpicks below.

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 416 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_ddi.h      |   6 +-
>  .../drm/i915/display/intel_display_types.h    |  17 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 123 ++++--
>  drivers/gpu/drm/i915/display/intel_dp.h       |  10 +-
>  .../drm/i915/display/intel_dp_link_training.c | 102 +++--
>  .../drm/i915/display/intel_dp_link_training.h |   8 +-
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |  23 +-
>  drivers/gpu/drm/i915/display/intel_dpio_phy.h |   2 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   7 +-
>  10 files changed, 388 insertions(+), 326 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 7032c367075a..cdf3e5540482 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1034,7 +1034,8 @@ cnl_get_buf_trans_edp(struct intel_encoder *encoder=
, int *n_entries)
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -icl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder, int type, in=
t rate,
> +icl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state,
>  			     int *n_entries)
>  {
>  	*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
> @@ -1042,7 +1043,8 @@ icl_get_combo_buf_trans_hdmi(struct intel_encoder *=
encoder, int type, int rate,
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -icl_get_combo_buf_trans_dp(struct intel_encoder *encoder, int type, int =
rate,
> +icl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
> +			   const struct intel_crtc_state *crtc_state,
>  			   int *n_entries)
>  {
>  	*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_dp_hbr2);
> @@ -1050,12 +1052,13 @@ icl_get_combo_buf_trans_dp(struct intel_encoder *=
encoder, int type, int rate,
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -icl_get_combo_buf_trans_edp(struct intel_encoder *encoder, int type, int=
 rate,
> +icl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
> +			    const struct intel_crtc_state *crtc_state,
>  			    int *n_entries)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  =

> -	if (rate > 540000) {
> +	if (crtc_state->port_clock > 540000) {
>  		*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr3);
>  		return icl_combo_phy_ddi_translations_edp_hbr3;
>  	} else if (dev_priv->vbt.edp.low_vswing) {
> @@ -1063,23 +1066,25 @@ icl_get_combo_buf_trans_edp(struct intel_encoder =
*encoder, int type, int rate,
>  		return icl_combo_phy_ddi_translations_edp_hbr2;
>  	}
>  =

> -	return icl_get_combo_buf_trans_dp(encoder, type, rate, n_entries);
> +	return icl_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -icl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
> +icl_get_combo_buf_trans(struct intel_encoder *encoder,
> +			const struct intel_crtc_state *crtc_state,
>  			int *n_entries)
>  {
> -	if (type =3D=3D INTEL_OUTPUT_HDMI)
> -		return icl_get_combo_buf_trans_hdmi(encoder, type, rate, n_entries);
> -	else if (type =3D=3D INTEL_OUTPUT_EDP)
> -		return icl_get_combo_buf_trans_edp(encoder, type, rate, n_entries);
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return icl_get_combo_buf_trans_hdmi(encoder, crtc_state, n_entries);
> +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> +		return icl_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
>  	else
> -		return icl_get_combo_buf_trans_dp(encoder, type, rate, n_entries);
> +		return icl_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
>  }
>  =

>  static const struct icl_mg_phy_ddi_buf_trans *
> -icl_get_mg_buf_trans_hdmi(struct intel_encoder *encoder, int type, int r=
ate,
> +icl_get_mg_buf_trans_hdmi(struct intel_encoder *encoder,
> +			  const struct intel_crtc_state *crtc_state,
>  			  int *n_entries)
>  {
>  	*n_entries =3D ARRAY_SIZE(icl_mg_phy_ddi_translations_hdmi);
> @@ -1087,10 +1092,11 @@ icl_get_mg_buf_trans_hdmi(struct intel_encoder *e=
ncoder, int type, int rate,
>  }
>  =

>  static const struct icl_mg_phy_ddi_buf_trans *
> -icl_get_mg_buf_trans_dp(struct intel_encoder *encoder, int type, int rat=
e,
> +icl_get_mg_buf_trans_dp(struct intel_encoder *encoder,
> +			const struct intel_crtc_state *crtc_state,
>  			int *n_entries)
>  {
> -	if (rate > 270000) {
> +	if (crtc_state->port_clock > 270000) {
>  		*n_entries =3D ARRAY_SIZE(icl_mg_phy_ddi_translations_hbr2_hbr3);
>  		return icl_mg_phy_ddi_translations_hbr2_hbr3;
>  	} else {
> @@ -1100,17 +1106,19 @@ icl_get_mg_buf_trans_dp(struct intel_encoder *enc=
oder, int type, int rate,
>  }
>  =

>  static const struct icl_mg_phy_ddi_buf_trans *
> -icl_get_mg_buf_trans(struct intel_encoder *encoder, int type, int rate,
> +icl_get_mg_buf_trans(struct intel_encoder *encoder,
> +		     const struct intel_crtc_state *crtc_state,
>  		     int *n_entries)
>  {
> -	if (type =3D=3D INTEL_OUTPUT_HDMI)
> -		return icl_get_mg_buf_trans_hdmi(encoder, type, rate, n_entries);
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return icl_get_mg_buf_trans_hdmi(encoder, crtc_state, n_entries);
>  	else
> -		return icl_get_mg_buf_trans_dp(encoder, type, rate, n_entries);
> +		return icl_get_mg_buf_trans_dp(encoder, crtc_state, n_entries);
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -ehl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder, int type, in=
t rate,
> +ehl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state,
>  			     int *n_entries)
>  {
>  	*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
> @@ -1118,7 +1126,8 @@ ehl_get_combo_buf_trans_hdmi(struct intel_encoder *=
encoder, int type, int rate,
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -ehl_get_combo_buf_trans_dp(struct intel_encoder *encoder, int type, int =
rate,
> +ehl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
> +			   const struct intel_crtc_state *crtc_state,
>  			   int *n_entries)
>  {
>  	*n_entries =3D ARRAY_SIZE(ehl_combo_phy_ddi_translations_dp);
> @@ -1126,13 +1135,14 @@ ehl_get_combo_buf_trans_dp(struct intel_encoder *=
encoder, int type, int rate,
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -ehl_get_combo_buf_trans_edp(struct intel_encoder *encoder, int type, int=
 rate,
> +ehl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
> +			    const struct intel_crtc_state *crtc_state,
>  			    int *n_entries)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  =

>  	if (dev_priv->vbt.edp.low_vswing) {
> -		if (rate > 540000) {
> +		if (crtc_state->port_clock > 540000) {
>  			*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr3);
>  			return icl_combo_phy_ddi_translations_edp_hbr3;
>  		} else {
> @@ -1141,23 +1151,25 @@ ehl_get_combo_buf_trans_edp(struct intel_encoder =
*encoder, int type, int rate,
>  		}
>  	}
>  =

> -	return ehl_get_combo_buf_trans_dp(encoder, type, rate, n_entries);
> +	return ehl_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -ehl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
> +ehl_get_combo_buf_trans(struct intel_encoder *encoder,
> +			const struct intel_crtc_state *crtc_state,
>  			int *n_entries)
>  {
> -	if (type =3D=3D INTEL_OUTPUT_HDMI)
> -		return ehl_get_combo_buf_trans_hdmi(encoder, type, rate, n_entries);
> -	else if (type =3D=3D INTEL_OUTPUT_EDP)
> -		return ehl_get_combo_buf_trans_edp(encoder, type, rate, n_entries);
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return ehl_get_combo_buf_trans_hdmi(encoder, crtc_state, n_entries);
> +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> +		return ehl_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
>  	else
> -		return ehl_get_combo_buf_trans_dp(encoder, type, rate, n_entries);
> +		return ehl_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -tgl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder, int type, in=
t rate,
> +tgl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state,
>  			     int *n_entries)
>  {
>  	*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
> @@ -1165,12 +1177,13 @@ tgl_get_combo_buf_trans_hdmi(struct intel_encoder=
 *encoder, int type, int rate,
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -tgl_get_combo_buf_trans_dp(struct intel_encoder *encoder, int type, int =
rate,
> +tgl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
> +			   const struct intel_crtc_state *crtc_state,
>  			   int *n_entries)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  =

> -	if (rate > 270000) {
> +	if (crtc_state->port_clock > 270000) {
>  		if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
>  			*n_entries =3D ARRAY_SIZE(tgl_uy_combo_phy_ddi_translations_dp_hbr2);
>  			return tgl_uy_combo_phy_ddi_translations_dp_hbr2;
> @@ -1185,13 +1198,14 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder *=
encoder, int type, int rate,
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -tgl_get_combo_buf_trans_edp(struct intel_encoder *encoder, int type, int=
 rate,
> +tgl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
> +			    const struct intel_crtc_state *crtc_state,
>  			    int *n_entries)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  =

> -	if (rate > 540000) {
> +	if (crtc_state->port_clock > 540000) {
>  		*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr3);
>  		return icl_combo_phy_ddi_translations_edp_hbr3;
>  	} else if (dev_priv->vbt.edp.hobl && !intel_dp->hobl_failed) {
> @@ -1202,23 +1216,25 @@ tgl_get_combo_buf_trans_edp(struct intel_encoder =
*encoder, int type, int rate,
>  		return icl_combo_phy_ddi_translations_edp_hbr2;
>  	}
>  =

> -	return tgl_get_combo_buf_trans_dp(encoder, type, rate, n_entries);
> +	return tgl_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -tgl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
> +tgl_get_combo_buf_trans(struct intel_encoder *encoder,
> +			const struct intel_crtc_state *crtc_state,
>  			int *n_entries)
>  {
> -	if (type =3D=3D INTEL_OUTPUT_HDMI)
> -		return tgl_get_combo_buf_trans_hdmi(encoder, type, rate, n_entries);
> -	else if (type =3D=3D INTEL_OUTPUT_EDP)
> -		return tgl_get_combo_buf_trans_edp(encoder, type, rate, n_entries);
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return tgl_get_combo_buf_trans_hdmi(encoder, crtc_state, n_entries);
> +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> +		return tgl_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
>  	else
> -		return tgl_get_combo_buf_trans_dp(encoder, type, rate, n_entries);
> +		return tgl_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
>  }
>  =

>  static const struct tgl_dkl_phy_ddi_buf_trans *
> -tgl_get_dkl_buf_trans_hdmi(struct intel_encoder *encoder, int type, int =
rate,
> +tgl_get_dkl_buf_trans_hdmi(struct intel_encoder *encoder,
> +			   const struct intel_crtc_state *crtc_state,
>  			   int *n_entries)
>  {
>  	*n_entries =3D ARRAY_SIZE(tgl_dkl_phy_hdmi_ddi_trans);
> @@ -1226,10 +1242,11 @@ tgl_get_dkl_buf_trans_hdmi(struct intel_encoder *=
encoder, int type, int rate,
>  }
>  =

>  static const struct tgl_dkl_phy_ddi_buf_trans *
> -tgl_get_dkl_buf_trans_dp(struct intel_encoder *encoder, int type, int ra=
te,
> +tgl_get_dkl_buf_trans_dp(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state,
>  			 int *n_entries)
>  {
> -	if (rate > 270000) {
> +	if (crtc_state->port_clock > 270000) {
>  		*n_entries =3D ARRAY_SIZE(tgl_dkl_phy_dp_ddi_trans_hbr2);
>  		return tgl_dkl_phy_dp_ddi_trans_hbr2;
>  	} else {
> @@ -1239,16 +1256,18 @@ tgl_get_dkl_buf_trans_dp(struct intel_encoder *en=
coder, int type, int rate,
>  }
>  =

>  static const struct tgl_dkl_phy_ddi_buf_trans *
> -tgl_get_dkl_buf_trans(struct intel_encoder *encoder, int type, int rate,
> +tgl_get_dkl_buf_trans(struct intel_encoder *encoder,
> +		      const struct intel_crtc_state *crtc_state,
>  		      int *n_entries)
>  {
> -	if (type =3D=3D INTEL_OUTPUT_HDMI)
> -		return tgl_get_dkl_buf_trans_hdmi(encoder, type, rate, n_entries);
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return tgl_get_dkl_buf_trans_hdmi(encoder, crtc_state, n_entries);
>  	else
> -		return tgl_get_dkl_buf_trans_dp(encoder, type, rate, n_entries);
> +		return tgl_get_dkl_buf_trans_dp(encoder, crtc_state, n_entries);
>  }
>  =

> -static int intel_ddi_hdmi_level(struct intel_encoder *encoder)
> +static int intel_ddi_hdmi_level(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	int n_entries, level, default_entry;
> @@ -1256,19 +1275,15 @@ static int intel_ddi_hdmi_level(struct intel_enco=
der *encoder)
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12) {
>  		if (intel_phy_is_combo(dev_priv, phy))
> -			tgl_get_combo_buf_trans(encoder, INTEL_OUTPUT_HDMI,
> -						0, &n_entries);
> +			tgl_get_combo_buf_trans_hdmi(encoder, crtc_state, &n_entries);
>  		else
> -			tgl_get_dkl_buf_trans(encoder, INTEL_OUTPUT_HDMI, 0,
> -					      &n_entries);
> +			tgl_get_dkl_buf_trans_hdmi(encoder, crtc_state, &n_entries);
>  		default_entry =3D n_entries - 1;
>  	} else if (INTEL_GEN(dev_priv) =3D=3D 11) {
>  		if (intel_phy_is_combo(dev_priv, phy))
> -			icl_get_combo_buf_trans(encoder, INTEL_OUTPUT_HDMI,
> -						0, &n_entries);
> +			icl_get_combo_buf_trans_hdmi(encoder, crtc_state, &n_entries);
>  		else
> -			icl_get_mg_buf_trans(encoder, INTEL_OUTPUT_HDMI, 0,
> -					     &n_entries);
> +			icl_get_mg_buf_trans_hdmi(encoder, crtc_state, &n_entries);
>  		default_entry =3D n_entries - 1;
>  	} else if (IS_CANNONLAKE(dev_priv)) {
>  		cnl_get_buf_trans_hdmi(encoder, &n_entries);
> @@ -1595,14 +1610,15 @@ void hsw_fdi_link_train(struct intel_encoder *enc=
oder,
>  		       DP_TP_CTL_ENABLE);
>  }
>  =

> -static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder)
> +static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
> +				      const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  =

>  	intel_dp->DP =3D dig_port->saved_port_bits |
>  		DDI_BUF_CTL_ENABLE | DDI_BUF_TRANS_SELECT(0);
> -	intel_dp->DP |=3D DDI_PORT_WIDTH(intel_dp->lane_count);
> +	intel_dp->DP |=3D DDI_PORT_WIDTH(crtc_state->lane_count);
>  }
>  =

>  static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
> @@ -2266,13 +2282,14 @@ static void _skl_ddi_set_iboost(struct drm_i915_p=
rivate *dev_priv,
>  }
>  =

>  static void skl_ddi_set_iboost(struct intel_encoder *encoder,
> -			       int level, enum intel_output_type type)
> +			       const struct intel_crtc_state *crtc_state,
> +			       int level)
>  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	u8 iboost;
>  =

> -	if (type =3D=3D INTEL_OUTPUT_HDMI)
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		iboost =3D intel_bios_hdmi_boost_level(encoder);
>  	else
>  		iboost =3D intel_bios_dp_boost_level(encoder);
> @@ -2281,14 +2298,12 @@ static void skl_ddi_set_iboost(struct intel_encod=
er *encoder,
>  		const struct ddi_buf_trans *ddi_translations;
>  		int n_entries;
>  =

> -		if (type =3D=3D INTEL_OUTPUT_HDMI)
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  			ddi_translations =3D intel_ddi_get_buf_trans_hdmi(encoder, &n_entries=
);
> -		else if (type =3D=3D INTEL_OUTPUT_EDP)
> -			ddi_translations =3D intel_ddi_get_buf_trans_edp(encoder,
> -								       &n_entries);
> +		else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> +			ddi_translations =3D intel_ddi_get_buf_trans_edp(encoder, &n_entries);
>  		else
> -			ddi_translations =3D intel_ddi_get_buf_trans_dp(encoder,
> -								      &n_entries);
> +			ddi_translations =3D intel_ddi_get_buf_trans_dp(encoder, &n_entries);
>  =

>  		if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
>  			return;
> @@ -2311,16 +2326,17 @@ static void skl_ddi_set_iboost(struct intel_encod=
er *encoder,
>  }
>  =

>  static void bxt_ddi_vswing_sequence(struct intel_encoder *encoder,
> -				    int level, enum intel_output_type type)
> +				    const struct intel_crtc_state *crtc_state,
> +				    int level)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	const struct bxt_ddi_buf_trans *ddi_translations;
>  	enum port port =3D encoder->port;
>  	int n_entries;
>  =

> -	if (type =3D=3D INTEL_OUTPUT_HDMI)
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		ddi_translations =3D bxt_get_buf_trans_hdmi(encoder, &n_entries);
> -	else if (type =3D=3D INTEL_OUTPUT_EDP)
> +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		ddi_translations =3D bxt_get_buf_trans_edp(encoder, &n_entries);
>  	else
>  		ddi_translations =3D bxt_get_buf_trans_dp(encoder, &n_entries);
> @@ -2337,7 +2353,8 @@ static void bxt_ddi_vswing_sequence(struct intel_en=
coder *encoder,
>  				     ddi_translations[level].deemphasis);
>  }
>  =

> -static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp)
> +static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp,
> +				   const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> @@ -2347,33 +2364,28 @@ static u8 intel_ddi_dp_voltage_max(struct intel_d=
p *intel_dp)
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12) {
>  		if (intel_phy_is_combo(dev_priv, phy))
> -			tgl_get_combo_buf_trans(encoder, encoder->type,
> -						intel_dp->link_rate, &n_entries);
> +			tgl_get_combo_buf_trans(encoder, crtc_state, &n_entries);
>  		else
> -			tgl_get_dkl_buf_trans(encoder, encoder->type,
> -					      intel_dp->link_rate, &n_entries);
> +			tgl_get_dkl_buf_trans(encoder, crtc_state, &n_entries);
>  	} else if (INTEL_GEN(dev_priv) =3D=3D 11) {
>  		if (IS_ELKHARTLAKE(dev_priv))
> -			ehl_get_combo_buf_trans(encoder, encoder->type,
> -						intel_dp->link_rate, &n_entries);
> +			ehl_get_combo_buf_trans(encoder, crtc_state, &n_entries);
>  		else if (intel_phy_is_combo(dev_priv, phy))
> -			icl_get_combo_buf_trans(encoder, encoder->type,
> -						intel_dp->link_rate, &n_entries);
> +			icl_get_combo_buf_trans(encoder, crtc_state, &n_entries);
>  		else
> -			icl_get_mg_buf_trans(encoder, encoder->type,
> -					     intel_dp->link_rate, &n_entries);
> +			icl_get_mg_buf_trans(encoder, crtc_state, &n_entries);
>  	} else if (IS_CANNONLAKE(dev_priv)) {
> -		if (encoder->type =3D=3D INTEL_OUTPUT_EDP)
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  			cnl_get_buf_trans_edp(encoder, &n_entries);
>  		else
>  			cnl_get_buf_trans_dp(encoder, &n_entries);
>  	} else if (IS_GEN9_LP(dev_priv)) {
> -		if (encoder->type =3D=3D INTEL_OUTPUT_EDP)
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  			bxt_get_buf_trans_edp(encoder, &n_entries);
>  		else
>  			bxt_get_buf_trans_dp(encoder, &n_entries);
>  	} else {
> -		if (encoder->type =3D=3D INTEL_OUTPUT_EDP)
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  			intel_ddi_get_buf_trans_edp(encoder, &n_entries);
>  		else
>  			intel_ddi_get_buf_trans_dp(encoder, &n_entries);
> @@ -2400,7 +2412,8 @@ static u8 intel_ddi_dp_preemph_max(struct intel_dp =
*intel_dp)
>  }
>  =

>  static void cnl_ddi_vswing_program(struct intel_encoder *encoder,
> -				   int level, enum intel_output_type type)
> +				   const struct intel_crtc_state *crtc_state,
> +				   int level)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	const struct cnl_ddi_buf_trans *ddi_translations;
> @@ -2408,9 +2421,9 @@ static void cnl_ddi_vswing_program(struct intel_enc=
oder *encoder,
>  	int n_entries, ln;
>  	u32 val;
>  =

> -	if (type =3D=3D INTEL_OUTPUT_HDMI)
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		ddi_translations =3D cnl_get_buf_trans_hdmi(encoder, &n_entries);
> -	else if (type =3D=3D INTEL_OUTPUT_EDP)
> +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		ddi_translations =3D cnl_get_buf_trans_edp(encoder, &n_entries);
>  	else
>  		ddi_translations =3D cnl_get_buf_trans_dp(encoder, &n_entries);
> @@ -2464,22 +2477,16 @@ static void cnl_ddi_vswing_program(struct intel_e=
ncoder *encoder,
>  }
>  =

>  static void cnl_ddi_vswing_sequence(struct intel_encoder *encoder,
> -				    int level, enum intel_output_type type)
> +				    const struct intel_crtc_state *crtc_state,
> +				    int level)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	enum port port =3D encoder->port;
>  	int width, rate, ln;
>  	u32 val;
>  =

> -	if (type =3D=3D INTEL_OUTPUT_HDMI) {
> -		width =3D 4;
> -		rate =3D 0; /* Rate is always < than 6GHz for HDMI */
> -	} else {
> -		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -
> -		width =3D intel_dp->lane_count;
> -		rate =3D intel_dp->link_rate;
> -	}
> +	width =3D crtc_state->lane_count;
> +	rate =3D crtc_state->port_clock;
>  =

>  	/*
>  	 * 1. If port type is eDP or DP,
> @@ -2487,10 +2494,10 @@ static void cnl_ddi_vswing_sequence(struct intel_=
encoder *encoder,
>  	 * else clear to 0b.
>  	 */
>  	val =3D intel_de_read(dev_priv, CNL_PORT_PCS_DW1_LN0(port));
> -	if (type !=3D INTEL_OUTPUT_HDMI)
> -		val |=3D COMMON_KEEPER_EN;
> -	else
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		val &=3D ~COMMON_KEEPER_EN;
> +	else
> +		val |=3D COMMON_KEEPER_EN;
>  	intel_de_write(dev_priv, CNL_PORT_PCS_DW1_GRP(port), val);
>  =

>  	/* 2. Program loadgen select */
> @@ -2522,7 +2529,7 @@ static void cnl_ddi_vswing_sequence(struct intel_en=
coder *encoder,
>  	intel_de_write(dev_priv, CNL_PORT_TX_DW5_GRP(port), val);
>  =

>  	/* 5. Program swing and de-emphasis */
> -	cnl_ddi_vswing_program(encoder, level, type);
> +	cnl_ddi_vswing_program(encoder, crtc_state, level);
>  =

>  	/* 6. Set training enable to trigger update */
>  	val =3D intel_de_read(dev_priv, CNL_PORT_TX_DW5_LN0(port));
> @@ -2531,23 +2538,21 @@ static void cnl_ddi_vswing_sequence(struct intel_=
encoder *encoder,
>  }
>  =

>  static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
> -					 u32 level, int type, int rate)
> +					 const struct intel_crtc_state *crtc_state,
> +					 int level)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	const struct cnl_ddi_buf_trans *ddi_translations;
>  	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> -	const struct cnl_ddi_buf_trans *ddi_translations =3D NULL;
> -	u32 n_entries, val;
> -	int ln;
> +	int n_entries, ln;
> +	u32 val;
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12)
> -		ddi_translations =3D tgl_get_combo_buf_trans(encoder, type, rate,
> -							   &n_entries);
> +		ddi_translations =3D tgl_get_combo_buf_trans(encoder, crtc_state, &n_e=
ntries);
>  	else if (IS_ELKHARTLAKE(dev_priv))
> -		ddi_translations =3D ehl_get_combo_buf_trans(encoder, type, rate,
> -							   &n_entries);
> +		ddi_translations =3D ehl_get_combo_buf_trans(encoder, crtc_state, &n_e=
ntries);
>  	else
> -		ddi_translations =3D icl_get_combo_buf_trans(encoder, type, rate,
> -							   &n_entries);
> +		ddi_translations =3D icl_get_combo_buf_trans(encoder, crtc_state, &n_e=
ntries);
>  	if (!ddi_translations)
>  		return;
>  =

> @@ -2558,7 +2563,7 @@ static void icl_ddi_combo_vswing_program(struct int=
el_encoder *encoder,
>  		level =3D n_entries - 1;
>  	}
>  =

> -	if (type =3D=3D INTEL_OUTPUT_EDP) {
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
>  		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  =

>  		val =3D EDP4K2K_MODE_OVRD_EN | EDP4K2K_MODE_OVRD_OPTIMIZED;
> @@ -2606,25 +2611,16 @@ static void icl_ddi_combo_vswing_program(struct i=
ntel_encoder *encoder,
>  }
>  =

>  static void icl_combo_phy_ddi_vswing_sequence(struct intel_encoder *enco=
der,
> -					      u32 level,
> -					      enum intel_output_type type)
> +					      const struct intel_crtc_state *crtc_state,
> +					      int level)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> -	int width =3D 0;
> -	int rate =3D 0;
> +	int width, rate, ln;
>  	u32 val;
> -	int ln =3D 0;
>  =

> -	if (type =3D=3D INTEL_OUTPUT_HDMI) {
> -		width =3D 4;
> -		/* Rate is always < than 6GHz for HDMI */
> -	} else {
> -		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -
> -		width =3D intel_dp->lane_count;
> -		rate =3D intel_dp->link_rate;
> -	}
> +	width =3D crtc_state->lane_count;
> +	rate =3D crtc_state->port_clock;
>  =

>  	/*
>  	 * 1. If port type is eDP or DP,
> @@ -2632,7 +2628,7 @@ static void icl_combo_phy_ddi_vswing_sequence(struc=
t intel_encoder *encoder,
>  	 * else clear to 0b.
>  	 */
>  	val =3D intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN0(phy));
> -	if (type =3D=3D INTEL_OUTPUT_HDMI)
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		val &=3D ~COMMON_KEEPER_EN;
>  	else
>  		val |=3D COMMON_KEEPER_EN;
> @@ -2667,7 +2663,7 @@ static void icl_combo_phy_ddi_vswing_sequence(struc=
t intel_encoder *encoder,
>  	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
>  =

>  	/* 5. Program swing and de-emphasis */
> -	icl_ddi_combo_vswing_program(encoder, level, type, rate);
> +	icl_ddi_combo_vswing_program(encoder, crtc_state, level);
>  =

>  	/* 6. Set training enable to trigger update */
>  	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
> @@ -2676,23 +2672,16 @@ static void icl_combo_phy_ddi_vswing_sequence(str=
uct intel_encoder *encoder,
>  }
>  =

>  static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
> -					   int link_clock, u32 level,
> -					   enum intel_output_type type)
> +					   const struct intel_crtc_state *crtc_state,
> +					   int level)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	enum tc_port tc_port =3D intel_port_to_tc(dev_priv, encoder->port);
>  	const struct icl_mg_phy_ddi_buf_trans *ddi_translations;
> -	u32 n_entries, val;
> -	int ln, rate =3D 0;
> +	int n_entries, ln;
> +	u32 val;
>  =

> -	if (type !=3D INTEL_OUTPUT_HDMI) {
> -		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -
> -		rate =3D intel_dp->link_rate;
> -	}
> -
> -	ddi_translations =3D icl_get_mg_buf_trans(encoder, type, rate,
> -						&n_entries);
> +	ddi_translations =3D icl_get_mg_buf_trans(encoder, crtc_state, &n_entri=
es);
>  	/* The table does not have values for level 3 and level 9. */
>  	if (level >=3D n_entries || level =3D=3D 3 || level =3D=3D 9) {
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -2759,7 +2748,7 @@ static void icl_mg_phy_ddi_vswing_sequence(struct i=
ntel_encoder *encoder,
>  	 */
>  	for (ln =3D 0; ln < 2; ln++) {
>  		val =3D intel_de_read(dev_priv, MG_CLKHUB(ln, tc_port));
> -		if (link_clock < 300000)
> +		if (crtc_state->port_clock < 300000)
>  			val |=3D CFG_LOW_RATE_LKREN_EN;
>  		else
>  			val &=3D ~CFG_LOW_RATE_LKREN_EN;
> @@ -2770,7 +2759,7 @@ static void icl_mg_phy_ddi_vswing_sequence(struct i=
ntel_encoder *encoder,
>  	for (ln =3D 0; ln < 2; ln++) {
>  		val =3D intel_de_read(dev_priv, MG_TX1_DCC(ln, tc_port));
>  		val &=3D ~CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK;
> -		if (link_clock <=3D 500000) {
> +		if (crtc_state->port_clock <=3D 500000) {
>  			val &=3D ~CFG_AMI_CK_DIV_OVERRIDE_EN;
>  		} else {
>  			val |=3D CFG_AMI_CK_DIV_OVERRIDE_EN |
> @@ -2780,7 +2769,7 @@ static void icl_mg_phy_ddi_vswing_sequence(struct i=
ntel_encoder *encoder,
>  =

>  		val =3D intel_de_read(dev_priv, MG_TX2_DCC(ln, tc_port));
>  		val &=3D ~CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK;
> -		if (link_clock <=3D 500000) {
> +		if (crtc_state->port_clock <=3D 500000) {
>  			val &=3D ~CFG_AMI_CK_DIV_OVERRIDE_EN;
>  		} else {
>  			val |=3D CFG_AMI_CK_DIV_OVERRIDE_EN |
> @@ -2806,38 +2795,30 @@ static void icl_mg_phy_ddi_vswing_sequence(struct=
 intel_encoder *encoder,
>  }
>  =

>  static void icl_ddi_vswing_sequence(struct intel_encoder *encoder,
> -				    int link_clock,
> -				    u32 level,
> -				    enum intel_output_type type)
> +				    const struct intel_crtc_state *crtc_state,
> +				    int level)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>  =

>  	if (intel_phy_is_combo(dev_priv, phy))
> -		icl_combo_phy_ddi_vswing_sequence(encoder, level, type);
> +		icl_combo_phy_ddi_vswing_sequence(encoder, crtc_state, level);
>  	else
> -		icl_mg_phy_ddi_vswing_sequence(encoder, link_clock, level,
> -					       type);
> +		icl_mg_phy_ddi_vswing_sequence(encoder, crtc_state, level);
>  }
>  =

>  static void
> -tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder, int link_=
clock,
> -				u32 level, enum intel_output_type type)
> +tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state,
> +				int level)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	enum tc_port tc_port =3D intel_port_to_tc(dev_priv, encoder->port);
>  	const struct tgl_dkl_phy_ddi_buf_trans *ddi_translations;
> -	u32 n_entries, val, ln, dpcnt_mask, dpcnt_val;
> -	int rate =3D 0;
> +	u32 val, dpcnt_mask, dpcnt_val;
> +	int n_entries, ln;
>  =

> -	if (type =3D=3D INTEL_OUTPUT_HDMI) {
> -		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -
> -		rate =3D intel_dp->link_rate;

Looks like a bugfix and then would make sense to fix it in a separate
patch.

> -	}
> -
> -	ddi_translations =3D tgl_get_dkl_buf_trans(encoder, encoder->type, rate,
> -						 &n_entries);
> +	ddi_translations =3D tgl_get_dkl_buf_trans(encoder, crtc_state, &n_entr=
ies);
>  =

>  	if (level >=3D n_entries)
>  		level =3D n_entries - 1;
> @@ -2873,20 +2854,20 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_enco=
der *encoder, int link_clock,
>  }
>  =

>  static void tgl_ddi_vswing_sequence(struct intel_encoder *encoder,
> -				    int link_clock,
> -				    u32 level,
> -				    enum intel_output_type type)
> +				    const struct intel_crtc_state *crtc_state,
> +				    int level)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>  =

>  	if (intel_phy_is_combo(dev_priv, phy))
> -		icl_combo_phy_ddi_vswing_sequence(encoder, level, type);
> +		icl_combo_phy_ddi_vswing_sequence(encoder, crtc_state, level);
>  	else
> -		tgl_dkl_phy_ddi_vswing_sequence(encoder, link_clock, level, type);
> +		tgl_dkl_phy_ddi_vswing_sequence(encoder, crtc_state, level);
>  }
>  =

> -static u32 translate_signal_level(struct intel_dp *intel_dp, int signal_=
levels)
> +static int translate_signal_level(struct intel_dp *intel_dp,
> +				  u8 signal_levels)
>  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  	int i;
> @@ -2903,55 +2884,58 @@ static u32 translate_signal_level(struct intel_dp=
 *intel_dp, int signal_levels)
>  	return 0;
>  }
>  =

> -static u32 intel_ddi_dp_level(struct intel_dp *intel_dp)
> +static int intel_ddi_dp_level(struct intel_dp *intel_dp)
>  {
>  	u8 train_set =3D intel_dp->train_set[0];
> -	int signal_levels =3D train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
> -					 DP_TRAIN_PRE_EMPHASIS_MASK);
> +	u8 signal_levels =3D train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
> +					DP_TRAIN_PRE_EMPHASIS_MASK);
>  =

>  	return translate_signal_level(intel_dp, signal_levels);
>  }
>  =

>  static void
> -tgl_set_signal_levels(struct intel_dp *intel_dp)
> +tgl_set_signal_levels(struct intel_dp *intel_dp,
> +		      const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	int level =3D intel_ddi_dp_level(intel_dp);
>  =

> -	tgl_ddi_vswing_sequence(encoder, intel_dp->link_rate,
> -				level, encoder->type);
> +	tgl_ddi_vswing_sequence(encoder, crtc_state, level);
>  }
>  =

>  static void
> -icl_set_signal_levels(struct intel_dp *intel_dp)
> +icl_set_signal_levels(struct intel_dp *intel_dp,
> +		      const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	int level =3D intel_ddi_dp_level(intel_dp);
>  =

> -	icl_ddi_vswing_sequence(encoder, intel_dp->link_rate,
> -				level, encoder->type);
> +	icl_ddi_vswing_sequence(encoder, crtc_state, level);
>  }
>  =

>  static void
> -cnl_set_signal_levels(struct intel_dp *intel_dp)
> +cnl_set_signal_levels(struct intel_dp *intel_dp,
> +		      const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	int level =3D intel_ddi_dp_level(intel_dp);
>  =

> -	cnl_ddi_vswing_sequence(encoder, level, encoder->type);
> +	cnl_ddi_vswing_sequence(encoder, crtc_state, level);
>  }
>  =

>  static void
> -bxt_set_signal_levels(struct intel_dp *intel_dp)
> +bxt_set_signal_levels(struct intel_dp *intel_dp,
> +		      const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	int level =3D intel_ddi_dp_level(intel_dp);
>  =

> -	bxt_ddi_vswing_sequence(encoder, level, encoder->type);
> +	bxt_ddi_vswing_sequence(encoder, crtc_state, level);
>  }
>  =

>  static void
> -hsw_set_signal_levels(struct intel_dp *intel_dp)
> +hsw_set_signal_levels(struct intel_dp *intel_dp,
> +		      const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> @@ -2968,7 +2952,7 @@ hsw_set_signal_levels(struct intel_dp *intel_dp)
>  	intel_dp->DP |=3D signal_levels;
>  =

>  	if (IS_GEN9_BC(dev_priv))
> -		skl_ddi_set_iboost(encoder, level, encoder->type);
> +		skl_ddi_set_iboost(encoder, crtc_state, level);
>  =

>  	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
>  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
> @@ -3375,8 +3359,9 @@ static void tgl_ddi_pre_enable_dp(struct intel_atom=
ic_state *state,
>  	int level =3D intel_ddi_dp_level(intel_dp);
>  	enum transcoder transcoder =3D crtc_state->cpu_transcoder;
>  =

> -	intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
> -				 crtc_state->lane_count, is_mst);
> +	intel_dp_set_link_params(intel_dp,
> +				 crtc_state->port_clock,
> +				 crtc_state->lane_count);
>  =

>  	intel_dp->regs.dp_tp_ctl =3D TGL_DP_TP_CTL(transcoder);
>  	intel_dp->regs.dp_tp_status =3D TGL_DP_TP_STATUS(transcoder);
> @@ -3448,8 +3433,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atom=
ic_state *state,
>  	 */
>  =

>  	/* 7.e Configure voltage swing and related IO settings */
> -	tgl_ddi_vswing_sequence(encoder, crtc_state->port_clock, level,
> -				encoder->type);
> +	tgl_ddi_vswing_sequence(encoder, crtc_state, level);
>  =

>  	/*
>  	 * 7.f Combo PHY: Configure PORT_CL_DW10 Static Power Down to power up
> @@ -3472,7 +3456,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atom=
ic_state *state,
>  	 * We only configure what the register value will be here.  Actual
>  	 * enabling happens during link training farther down.
>  	 */
> -	intel_ddi_init_dp_buf_reg(encoder);
> +	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
>  =

>  	if (!is_mst)
>  		intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_ON);
> @@ -3492,11 +3476,11 @@ static void tgl_ddi_pre_enable_dp(struct intel_at=
omic_state *state,
>  	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
>  	 *     (timeout after 800 us)
>  	 */
> -	intel_dp_start_link_train(intel_dp);
> +	intel_dp_start_link_train(intel_dp, crtc_state);
>  =

>  	/* 7.k Set DP_TP_CTL link training to Normal */
>  	if (!is_trans_port_sync_mode(crtc_state))
> -		intel_dp_stop_link_train(intel_dp);
> +		intel_dp_stop_link_train(intel_dp, crtc_state);
>  =

>  	/* 7.l Configure and enable FEC if needed */
>  	intel_ddi_enable_fec(encoder, crtc_state);
> @@ -3522,8 +3506,9 @@ static void hsw_ddi_pre_enable_dp(struct intel_atom=
ic_state *state,
>  	else
>  		drm_WARN_ON(&dev_priv->drm, is_mst && port =3D=3D PORT_A);
>  =

> -	intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
> -				 crtc_state->lane_count, is_mst);
> +	intel_dp_set_link_params(intel_dp,
> +				 crtc_state->port_clock,
> +				 crtc_state->lane_count);
>  =

>  	intel_edp_panel_on(intel_dp);
>  =

> @@ -3537,12 +3522,11 @@ static void hsw_ddi_pre_enable_dp(struct intel_at=
omic_state *state,
>  	icl_program_mg_dp_mode(dig_port, crtc_state);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 11)
> -		icl_ddi_vswing_sequence(encoder, crtc_state->port_clock,
> -					level, encoder->type);
> +		icl_ddi_vswing_sequence(encoder, crtc_state, level);
>  	else if (IS_CANNONLAKE(dev_priv))
> -		cnl_ddi_vswing_sequence(encoder, level, encoder->type);
> +		cnl_ddi_vswing_sequence(encoder, crtc_state, level);
>  	else if (IS_GEN9_LP(dev_priv))
> -		bxt_ddi_vswing_sequence(encoder, level, encoder->type);
> +		bxt_ddi_vswing_sequence(encoder, crtc_state, level);
>  	else
>  		intel_prepare_dp_ddi_buffers(encoder, crtc_state);
>  =

> @@ -3555,17 +3539,17 @@ static void hsw_ddi_pre_enable_dp(struct intel_at=
omic_state *state,
>  					       lane_reversal);
>  	}
>  =

> -	intel_ddi_init_dp_buf_reg(encoder);
> +	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
>  	if (!is_mst)
>  		intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_ON);
>  	intel_dp_configure_protocol_converter(intel_dp);
>  	intel_dp_sink_set_decompression_state(intel_dp, crtc_state,
>  					      true);
>  	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
> -	intel_dp_start_link_train(intel_dp);
> +	intel_dp_start_link_train(intel_dp, crtc_state);
>  	if ((port !=3D PORT_A || INTEL_GEN(dev_priv) >=3D 9) &&
>  	    !is_trans_port_sync_mode(crtc_state))
> -		intel_dp_stop_link_train(intel_dp);
> +		intel_dp_stop_link_train(intel_dp, crtc_state);
>  =

>  	intel_ddi_enable_fec(encoder, crtc_state);
>  =

> @@ -3605,7 +3589,7 @@ static void intel_ddi_pre_enable_hdmi(struct intel_=
atomic_state *state,
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	struct intel_hdmi *intel_hdmi =3D &dig_port->hdmi;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	int level =3D intel_ddi_hdmi_level(encoder);
> +	int level =3D intel_ddi_hdmi_level(encoder, crtc_state);
>  =

>  	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
>  	intel_ddi_clk_select(encoder, crtc_state);
> @@ -3615,20 +3599,18 @@ static void intel_ddi_pre_enable_hdmi(struct inte=
l_atomic_state *state,
>  	icl_program_mg_dp_mode(dig_port, crtc_state);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12)
> -		tgl_ddi_vswing_sequence(encoder, crtc_state->port_clock,
> -					level, INTEL_OUTPUT_HDMI);
> +		tgl_ddi_vswing_sequence(encoder, crtc_state, level);
>  	else if (INTEL_GEN(dev_priv) =3D=3D 11)
> -		icl_ddi_vswing_sequence(encoder, crtc_state->port_clock,
> -					level, INTEL_OUTPUT_HDMI);
> +		icl_ddi_vswing_sequence(encoder, crtc_state, level);
>  	else if (IS_CANNONLAKE(dev_priv))
> -		cnl_ddi_vswing_sequence(encoder, level, INTEL_OUTPUT_HDMI);
> +		cnl_ddi_vswing_sequence(encoder, crtc_state, level);
>  	else if (IS_GEN9_LP(dev_priv))
> -		bxt_ddi_vswing_sequence(encoder, level, INTEL_OUTPUT_HDMI);
> +		bxt_ddi_vswing_sequence(encoder, crtc_state, level);
>  	else
>  		intel_prepare_hdmi_ddi_buffers(encoder, level);
>  =

>  	if (IS_GEN9_BC(dev_priv))
> -		skl_ddi_set_iboost(encoder, level, INTEL_OUTPUT_HDMI);
> +		skl_ddi_set_iboost(encoder, crtc_state, level);
>  =

>  	intel_ddi_enable_pipe_clock(encoder, crtc_state);
>  =

> @@ -3918,12 +3900,14 @@ static void trans_port_sync_stop_link_train(struc=
t intel_atomic_state *state,
>  		    crtc_state->cpu_transcoder)
>  			continue;
>  =

> -		intel_dp_stop_link_train(enc_to_intel_dp(slave_encoder));
> +		intel_dp_stop_link_train(enc_to_intel_dp(slave_encoder),
> +					 slave_crtc_state);
>  	}
>  =

>  	usleep_range(200, 400);
>  =

> -	intel_dp_stop_link_train(enc_to_intel_dp(encoder));
> +	intel_dp_stop_link_train(enc_to_intel_dp(encoder),
> +				 crtc_state);
>  }
>  =

>  static void intel_enable_ddi_dp(struct intel_atomic_state *state,
> @@ -3936,7 +3920,7 @@ static void intel_enable_ddi_dp(struct intel_atomic=
_state *state,
>  	enum port port =3D encoder->port;
>  =

>  	if (port =3D=3D PORT_A && INTEL_GEN(dev_priv) < 9)
> -		intel_dp_stop_link_train(intel_dp);
> +		intel_dp_stop_link_train(intel_dp, crtc_state);
>  =

>  	intel_edp_backlight_on(crtc_state, conn_state);
>  	intel_psr_enable(intel_dp, crtc_state, conn_state);
> @@ -4197,7 +4181,8 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state =
*state,
>  						crtc_state->lane_lat_optim_mask);
>  }
>  =

> -static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp)
> +static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
> +					   const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	struct drm_i915_private *dev_priv =3D to_i915(dig_port->base.base.dev);
> @@ -4224,10 +4209,11 @@ static void intel_ddi_prepare_link_retrain(struct=
 intel_dp *intel_dp)
>  			intel_wait_ddi_buf_idle(dev_priv, port);
>  	}
>  =

> -	dp_tp_ctl =3D DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
> -	if (intel_dp->link_mst)
> +	dp_tp_ctl =3D DP_TP_CTL_ENABLE |
> +		    DP_TP_CTL_LINK_TRAIN_PAT1 | DP_TP_CTL_SCRAMBLE_DISABLE;

Disable scrambling looks like some HW debugging feature, the HW toggles it
automatically based on the spec. There was a recent related change
removing setting it in intel_ddi_set_link_train().

If needed, it should be a separate change imo.


> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
>  		dp_tp_ctl |=3D DP_TP_CTL_MODE_MST;
> -	else {
> +	} else {
>  		dp_tp_ctl |=3D DP_TP_CTL_MODE_SST;
>  		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
>  			dp_tp_ctl |=3D DP_TP_CTL_ENHANCED_FRAME_ENABLE;
> @@ -4243,6 +4229,7 @@ static void intel_ddi_prepare_link_retrain(struct i=
ntel_dp *intel_dp)
>  }
>  =

>  static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
> +				     const struct intel_crtc_state *crtc_state,
>  				     u8 dp_train_pat)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> @@ -4273,7 +4260,8 @@ static void intel_ddi_set_link_train(struct intel_d=
p *intel_dp,
>  	intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, temp);
>  }
>  =

> -static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp)
> +static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
> +					  const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i=
915/display/intel_ddi.h
> index f5fb62fc9400..9a2ac73164f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -41,8 +41,10 @@ void intel_ddi_set_vc_payload_alloc(const struct intel=
_crtc_state *crtc_state,
>  				    bool state);
>  void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_pr=
iv,
>  					 struct intel_crtc_state *crtc_state);
> -u32 bxt_signal_levels(struct intel_dp *intel_dp);
> -u32 ddi_signal_levels(struct intel_dp *intel_dp);
> +u32 bxt_signal_levels(struct intel_dp *intel_dp,
> +		      const struct intel_crtc_state *crtc_state);
> +u32 ddi_signal_levels(struct intel_dp *intel_dp,
> +		      const struct intel_crtc_state *crtc_state);
>  int intel_ddi_toggle_hdcp_signalling(struct intel_encoder *intel_encoder,
>  				     enum transcoder cpu_transcoder,
>  				     bool enable);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index e3339e41ddf7..66d197153c93 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1273,7 +1273,6 @@ struct intel_dp {
>  	int link_rate;
>  	u8 lane_count;
>  	u8 sink_count;
> -	bool link_mst;
>  	bool link_trained;
>  	bool has_hdmi_sink;
>  	bool has_audio;
> @@ -1366,13 +1365,19 @@ struct intel_dp {
>  	i915_reg_t (*aux_ch_data_reg)(struct intel_dp *dp, int index);
>  =

>  	/* This is called before a link training is starterd */
> -	void (*prepare_link_retrain)(struct intel_dp *intel_dp);
> -	void (*set_link_train)(struct intel_dp *intel_dp, u8 dp_train_pat);
> -	void (*set_idle_link_train)(struct intel_dp *intel_dp);
> -	void (*set_signal_levels)(struct intel_dp *intel_dp);
> +	void (*prepare_link_retrain)(struct intel_dp *intel_dp,
> +				     const struct intel_crtc_state *crtc_state);
> +	void (*set_link_train)(struct intel_dp *intel_dp,
> +			       const struct intel_crtc_state *crtc_state,
> +			       u8 dp_train_pat);
> +	void (*set_idle_link_train)(struct intel_dp *intel_dp,
> +				    const struct intel_crtc_state *crtc_state);
> +	void (*set_signal_levels)(struct intel_dp *intel_dp,
> +				  const struct intel_crtc_state *crtc_state);
>  =

>  	u8 (*preemph_max)(struct intel_dp *intel_dp);
> -	u8 (*voltage_max)(struct intel_dp *intel_dp);
> +	u8 (*voltage_max)(struct intel_dp *intel_dp,
> +			  const struct intel_crtc_state *crtc_state);
>  =

>  	/* Displayport compliance testing */
>  	struct intel_dp_compliance compliance;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 6718e01909cd..5ac8a06575d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2799,13 +2799,11 @@ intel_dp_compute_config(struct intel_encoder *enc=
oder,
>  }
>  =

>  void intel_dp_set_link_params(struct intel_dp *intel_dp,
> -			      int link_rate, u8 lane_count,
> -			      bool link_mst)
> +			      int link_rate, int lane_count)
>  {
>  	intel_dp->link_trained =3D false;
>  	intel_dp->link_rate =3D link_rate;
>  	intel_dp->lane_count =3D lane_count;
> -	intel_dp->link_mst =3D link_mst;
>  }
>  =

>  static void intel_dp_prepare(struct intel_encoder *encoder,
> @@ -2817,10 +2815,9 @@ static void intel_dp_prepare(struct intel_encoder =
*encoder,
>  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
>  =

> -	intel_dp_set_link_params(intel_dp, pipe_config->port_clock,
> -				 pipe_config->lane_count,
> -				 intel_crtc_has_type(pipe_config,
> -						     INTEL_OUTPUT_DP_MST));
> +	intel_dp_set_link_params(intel_dp,
> +				 pipe_config->port_clock,
> +				 pipe_config->lane_count);
>  =

>  	/*
>  	 * There are four kinds of DP registers:
> @@ -3791,6 +3788,7 @@ static void chv_post_disable_dp(struct intel_atomic=
_state *state,
>  =

>  static void
>  cpt_set_link_train(struct intel_dp *intel_dp,
> +		   const struct intel_crtc_state *crtc_state,
>  		   u8 dp_train_pat)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> @@ -3821,6 +3819,7 @@ cpt_set_link_train(struct intel_dp *intel_dp,
>  =

>  static void
>  g4x_set_link_train(struct intel_dp *intel_dp,
> +		   const struct intel_crtc_state *crtc_state,
>  		   u8 dp_train_pat)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> @@ -3856,7 +3855,8 @@ static void intel_dp_enable_port(struct intel_dp *i=
ntel_dp,
>  =

>  	/* enable with pattern 1 (as per spec) */
>  =

> -	intel_dp_program_link_training_pattern(intel_dp, DP_TRAINING_PATTERN_1);
> +	intel_dp_program_link_training_pattern(intel_dp, crtc_state,
> +					       DP_TRAINING_PATTERN_1);
>  =

>  	/*
>  	 * Magic for VLV/CHV. We _must_ first set up the register
> @@ -3947,8 +3947,8 @@ static void intel_enable_dp(struct intel_atomic_sta=
te *state,
>  =

>  	intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_ON);
>  	intel_dp_configure_protocol_converter(intel_dp);
> -	intel_dp_start_link_train(intel_dp);
> -	intel_dp_stop_link_train(intel_dp);
> +	intel_dp_start_link_train(intel_dp, pipe_config);
> +	intel_dp_stop_link_train(intel_dp, pipe_config);
>  =

>  	if (pipe_config->has_audio) {
>  		drm_dbg(&dev_priv->drm, "Enabling DP audio on pipe %c\n",
> @@ -4157,12 +4157,14 @@ intel_dp_get_link_status(struct intel_dp *intel_d=
p, u8 link_status[DP_LINK_STATU
>  				DP_LINK_STATUS_SIZE) =3D=3D DP_LINK_STATUS_SIZE;
>  }
>  =

> -static u8 intel_dp_voltage_max_2(struct intel_dp *intel_dp)
> +static u8 intel_dp_voltage_max_2(struct intel_dp *intel_dp,
> +				 const struct intel_crtc_state *crtc_state)
>  {
>  	return DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
>  }
>  =

> -static u8 intel_dp_voltage_max_3(struct intel_dp *intel_dp)
> +static u8 intel_dp_voltage_max_3(struct intel_dp *intel_dp,
> +				 const struct intel_crtc_state *crtc_state)
>  {
>  	return DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
>  }
> @@ -4177,7 +4179,8 @@ static u8 intel_dp_preemph_max_3(struct intel_dp *i=
ntel_dp)
>  	return DP_TRAIN_PRE_EMPH_LEVEL_3;
>  }
>  =

> -static void vlv_set_signal_levels(struct intel_dp *intel_dp)
> +static void vlv_set_signal_levels(struct intel_dp *intel_dp,
> +				  const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	unsigned long demph_reg_value, preemph_reg_value,
> @@ -4257,11 +4260,13 @@ static void vlv_set_signal_levels(struct intel_dp=
 *intel_dp)
>  		return;
>  	}
>  =

> -	vlv_set_phy_signal_level(encoder, demph_reg_value, preemph_reg_value,
> +	vlv_set_phy_signal_level(encoder, crtc_state,
> +				 demph_reg_value, preemph_reg_value,
>  				 uniqtranscale_reg_value, 0);
>  }
>  =

> -static void chv_set_signal_levels(struct intel_dp *intel_dp)
> +static void chv_set_signal_levels(struct intel_dp *intel_dp,
> +				  const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	u32 deemph_reg_value, margin_reg_value;
> @@ -4338,8 +4343,9 @@ static void chv_set_signal_levels(struct intel_dp *=
intel_dp)
>  		return;
>  	}
>  =

> -	chv_set_phy_signal_level(encoder, deemph_reg_value,
> -				 margin_reg_value, uniq_trans_scale);
> +	chv_set_phy_signal_level(encoder, crtc_state,
> +				 deemph_reg_value, margin_reg_value,
> +				 uniq_trans_scale);
>  }
>  =

>  static u32 g4x_signal_levels(u8 train_set)
> @@ -4380,7 +4386,8 @@ static u32 g4x_signal_levels(u8 train_set)
>  }
>  =

>  static void
> -g4x_set_signal_levels(struct intel_dp *intel_dp)
> +g4x_set_signal_levels(struct intel_dp *intel_dp,
> +		      const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	u8 train_set =3D intel_dp->train_set[0];
> @@ -4427,7 +4434,8 @@ static u32 snb_cpu_edp_signal_levels(u8 train_set)
>  }
>  =

>  static void
> -snb_cpu_edp_set_signal_levels(struct intel_dp *intel_dp)
> +snb_cpu_edp_set_signal_levels(struct intel_dp *intel_dp,
> +			      const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	u8 train_set =3D intel_dp->train_set[0];
> @@ -4478,7 +4486,8 @@ static u32 ivb_cpu_edp_signal_levels(u8 train_set)
>  }
>  =

>  static void
> -ivb_cpu_edp_set_signal_levels(struct intel_dp *intel_dp)
> +ivb_cpu_edp_set_signal_levels(struct intel_dp *intel_dp,
> +			      const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	u8 train_set =3D intel_dp->train_set[0];
> @@ -4496,7 +4505,8 @@ ivb_cpu_edp_set_signal_levels(struct intel_dp *inte=
l_dp)
>  	intel_de_posting_read(dev_priv, intel_dp->output_reg);
>  }
>  =

> -void intel_dp_set_signal_levels(struct intel_dp *intel_dp)
> +void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
> +				const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	u8 train_set =3D intel_dp->train_set[0];
> @@ -4510,11 +4520,12 @@ void intel_dp_set_signal_levels(struct intel_dp *=
intel_dp)
>  		    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
>  		    " (max)" : "");
>  =

> -	intel_dp->set_signal_levels(intel_dp);
> +	intel_dp->set_signal_levels(intel_dp, crtc_state);
>  }
>  =

>  void
>  intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
> +				       const struct intel_crtc_state *crtc_state,
>  				       u8 dp_train_pat)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> @@ -4525,13 +4536,14 @@ intel_dp_program_link_training_pattern(struct int=
el_dp *intel_dp,
>  			    "Using DP training pattern TPS%d\n",
>  			    dp_train_pat & train_pat_mask);
>  =

> -	intel_dp->set_link_train(intel_dp, dp_train_pat);
> +	intel_dp->set_link_train(intel_dp, crtc_state, dp_train_pat);
>  }
>  =

> -void intel_dp_set_idle_link_train(struct intel_dp *intel_dp)
> +void intel_dp_set_idle_link_train(struct intel_dp *intel_dp,
> +				  const struct intel_crtc_state *crtc_state)
>  {
>  	if (intel_dp->set_idle_link_train)
> -		intel_dp->set_idle_link_train(intel_dp);
> +		intel_dp->set_idle_link_train(intel_dp, crtc_state);
>  }
>  =

>  static void
> @@ -5424,14 +5436,14 @@ static u8 intel_dp_autotest_edid(struct intel_dp =
*intel_dp)
>  	return test_result;
>  }
>  =

> -static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp)
> +static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
> +					const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D
>  			to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	struct drm_dp_phy_test_params *data =3D
>  			&intel_dp->compliance.test_data.phytest;
> -	struct intel_crtc *crtc =3D to_intel_crtc(dig_port->base.base.crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum pipe pipe =3D crtc->pipe;
>  	u32 pattern_val;
>  =

> @@ -5491,7 +5503,8 @@ static void intel_dp_phy_pattern_update(struct inte=
l_dp *intel_dp)
>  }
>  =

>  static void
> -intel_dp_autotest_phy_ddi_disable(struct intel_dp *intel_dp)
> +intel_dp_autotest_phy_ddi_disable(struct intel_dp *intel_dp,
> +				  const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	struct drm_device *dev =3D dig_port->base.base.dev;
> @@ -5517,7 +5530,8 @@ intel_dp_autotest_phy_ddi_disable(struct intel_dp *=
intel_dp)
>  }
>  =

>  static void
> -intel_dp_autotest_phy_ddi_enable(struct intel_dp *intel_dp, uint8_t lane=
_cnt)
> +intel_dp_autotest_phy_ddi_enable(struct intel_dp *intel_dp,
> +				 const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	struct drm_device *dev =3D dig_port->base.base.dev;
> @@ -5543,7 +5557,8 @@ intel_dp_autotest_phy_ddi_enable(struct intel_dp *i=
ntel_dp, uint8_t lane_cnt)
>  		       trans_ddi_func_ctl_value);
>  }
>  =

> -static void intel_dp_process_phy_request(struct intel_dp *intel_dp)
> +static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
> +					 const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_dp_phy_test_params *data =3D
>  		&intel_dp->compliance.test_data.phytest;
> @@ -5555,15 +5570,15 @@ static void intel_dp_process_phy_request(struct i=
ntel_dp *intel_dp)
>  	}
>  =

>  	/* retrieve vswing & pre-emphasis setting */
> -	intel_dp_get_adjust_train(intel_dp, link_status);
> +	intel_dp_get_adjust_train(intel_dp, crtc_state, link_status);
>  =

> -	intel_dp_autotest_phy_ddi_disable(intel_dp);
> +	intel_dp_autotest_phy_ddi_disable(intel_dp, crtc_state);
>  =

> -	intel_dp_set_signal_levels(intel_dp);
> +	intel_dp_set_signal_levels(intel_dp, crtc_state);
>  =

> -	intel_dp_phy_pattern_update(intel_dp);
> +	intel_dp_phy_pattern_update(intel_dp, crtc_state);
>  =

> -	intel_dp_autotest_phy_ddi_enable(intel_dp, data->num_lanes);
> +	intel_dp_autotest_phy_ddi_enable(intel_dp, crtc_state);
>  =

>  	drm_dp_set_phy_test_pattern(&intel_dp->aux, data,
>  				    link_status[DP_DPCD_REV]);
> @@ -5719,6 +5734,10 @@ intel_dp_needs_link_retrain(struct intel_dp *intel=
_dp)
>  	/*
>  	 * Validate the cached values of intel_dp->link_rate and
>  	 * intel_dp->lane_count before attempting to retrain.
> +	 *
> +	 * FIXME would be nice to user the crtc state here, but since
> +	 * we need to call this from the short HPD handler that seems
> +	 * a bit hard.
>  	 */
>  	if (!intel_dp_link_params_valid(intel_dp, intel_dp->link_rate,
>  					intel_dp->lane_count))
> @@ -5852,8 +5871,20 @@ int intel_dp_retrain_link(struct intel_encoder *en=
coder,
>  							      intel_crtc_pch_transcoder(crtc), false);
>  	}
>  =

> -	intel_dp_start_link_train(intel_dp);
> -	intel_dp_stop_link_train(intel_dp);
> +	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
> +		const struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +
> +		/* retrain on the MST master transcoder */
> +		if (INTEL_GEN(dev_priv) >=3D 12 &&
> +		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
> +		    crtc_state->cpu_transcoder !=3D crtc_state->mst_master_transcoder)

Could use intel_dp_mst_is_master_trans().

> +			continue;
> +
> +		intel_dp_start_link_train(intel_dp, crtc_state);
> +		intel_dp_stop_link_train(intel_dp, crtc_state);
> +		break;
> +	}
>  =

>  	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
>  		const struct intel_crtc_state *crtc_state =3D
> @@ -5923,6 +5954,7 @@ static int intel_dp_do_phy_test(struct intel_encode=
r *encoder,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +	struct intel_crtc *crtc;
>  	u32 crtc_mask;
>  	int ret;
>  =

> @@ -5940,7 +5972,20 @@ static int intel_dp_do_phy_test(struct intel_encod=
er *encoder,
>  =

>  	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] PHY test\n",
>  		    encoder->base.base.id, encoder->base.name);
> -	intel_dp_process_phy_request(intel_dp);
> +
> +	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
> +		const struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +
> +		/* test on the MST master transcoder */
> +		if (INTEL_GEN(dev_priv) >=3D 12 &&
> +		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
> +		    crtc_state->cpu_transcoder !=3D crtc_state->mst_master_transcoder)

Here too.

> +			continue;
> +
> +		intel_dp_process_phy_request(intel_dp, crtc_state);
> +		break;
> +	}
>  =

>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 60f44f41fd08..66854aab9887 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -45,8 +45,7 @@ bool intel_dp_init(struct drm_i915_private *dev_priv, i=
915_reg_t output_reg,
>  bool intel_dp_init_connector(struct intel_digital_port *dig_port,
>  			     struct intel_connector *intel_connector);
>  void intel_dp_set_link_params(struct intel_dp *intel_dp,
> -			      int link_rate, u8 lane_count,
> -			      bool link_mst);
> +			      int link_rate, int lane_count);
>  int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  					    int link_rate, u8 lane_count);
>  int intel_dp_retrain_link(struct intel_encoder *encoder,
> @@ -93,10 +92,13 @@ void intel_edp_drrs_flush(struct drm_i915_private *de=
v_priv,
>  =

>  void
>  intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
> +				       const struct intel_crtc_state *crtc_state,
>  				       u8 dp_train_pat);
>  void
> -intel_dp_set_signal_levels(struct intel_dp *intel_dp);
> -void intel_dp_set_idle_link_train(struct intel_dp *intel_dp);
> +intel_dp_set_signal_levels(struct intel_dp *intel_dp,
> +			   const struct intel_crtc_state *crtc_state);
> +void intel_dp_set_idle_link_train(struct intel_dp *intel_dp,
> +				  const struct intel_crtc_state *crtc_state);
>  void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
>  			   u8 *link_bw, u8 *rate_select);
>  bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index f2c8b56be9ea..51e8d46d9b7f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -49,8 +49,10 @@ static u8 dp_voltage_max(u8 preemph)
>  	}
>  }
>  =

> -void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
> -			       const u8 link_status[DP_LINK_STATUS_SIZE])
> +void
> +intel_dp_get_adjust_train(struct intel_dp *intel_dp,
> +			  const struct intel_crtc_state *crtc_state,
> +			  const u8 link_status[DP_LINK_STATUS_SIZE])
>  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  	u8 v =3D 0;
> @@ -59,7 +61,7 @@ void intel_dp_get_adjust_train(struct intel_dp *intel_d=
p,
>  	u8 voltage_max;
>  	u8 preemph_max;
>  =

> -	for (lane =3D 0; lane < intel_dp->lane_count; lane++) {
> +	for (lane =3D 0; lane < crtc_state->lane_count; lane++) {
>  		v =3D max(v, drm_dp_get_adjust_request_voltage(link_status, lane));
>  		p =3D max(p, drm_dp_get_adjust_request_pre_emphasis(link_status, lane)=
);
>  	}
> @@ -74,7 +76,7 @@ void intel_dp_get_adjust_train(struct intel_dp *intel_d=
p,
>  =

>  	v =3D min(v, dp_voltage_max(p));
>  =

> -	voltage_max =3D intel_dp->voltage_max(intel_dp);
> +	voltage_max =3D intel_dp->voltage_max(intel_dp, crtc_state);
>  	drm_WARN_ON_ONCE(&i915->drm,
>  			 voltage_max !=3D DP_TRAIN_VOLTAGE_SWING_LEVEL_2 &&
>  			 voltage_max !=3D DP_TRAIN_VOLTAGE_SWING_LEVEL_3);
> @@ -88,12 +90,14 @@ void intel_dp_get_adjust_train(struct intel_dp *intel=
_dp,
>  =

>  static bool
>  intel_dp_set_link_train(struct intel_dp *intel_dp,
> +			const struct intel_crtc_state *crtc_state,
>  			u8 dp_train_pat)
>  {
>  	u8 buf[sizeof(intel_dp->train_set) + 1];
>  	int ret, len;
>  =

> -	intel_dp_program_link_training_pattern(intel_dp, dp_train_pat);
> +	intel_dp_program_link_training_pattern(intel_dp, crtc_state,
> +					       dp_train_pat);
>  =

>  	buf[0] =3D dp_train_pat;
>  	if ((dp_train_pat & DP_TRAINING_PATTERN_MASK) =3D=3D
> @@ -102,8 +106,8 @@ intel_dp_set_link_train(struct intel_dp *intel_dp,
>  		len =3D 1;
>  	} else {
>  		/* DP_TRAINING_LANEx_SET follow DP_TRAINING_PATTERN_SET */
> -		memcpy(buf + 1, intel_dp->train_set, intel_dp->lane_count);
> -		len =3D intel_dp->lane_count + 1;
> +		memcpy(buf + 1, intel_dp->train_set, crtc_state->lane_count);
> +		len =3D crtc_state->lane_count + 1;
>  	}
>  =

>  	ret =3D drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_PATTERN_SET,
> @@ -114,31 +118,34 @@ intel_dp_set_link_train(struct intel_dp *intel_dp,
>  =

>  static bool
>  intel_dp_reset_link_train(struct intel_dp *intel_dp,
> -			u8 dp_train_pat)
> +			  const struct intel_crtc_state *crtc_state,
> +			  u8 dp_train_pat)
>  {
>  	memset(intel_dp->train_set, 0, sizeof(intel_dp->train_set));
> -	intel_dp_set_signal_levels(intel_dp);
> -	return intel_dp_set_link_train(intel_dp, dp_train_pat);
> +	intel_dp_set_signal_levels(intel_dp, crtc_state);
> +	return intel_dp_set_link_train(intel_dp, crtc_state, dp_train_pat);
>  }
>  =

>  static bool
> -intel_dp_update_link_train(struct intel_dp *intel_dp)
> +intel_dp_update_link_train(struct intel_dp *intel_dp,
> +			   const struct intel_crtc_state *crtc_state)
>  {
>  	int ret;
>  =

> -	intel_dp_set_signal_levels(intel_dp);
> +	intel_dp_set_signal_levels(intel_dp, crtc_state);
>  =

>  	ret =3D drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
> -				intel_dp->train_set, intel_dp->lane_count);
> +				intel_dp->train_set, crtc_state->lane_count);
>  =

> -	return ret =3D=3D intel_dp->lane_count;
> +	return ret =3D=3D crtc_state->lane_count;
>  }
>  =

> -static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp)
> +static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
> +					     const struct intel_crtc_state *crtc_state)
>  {
>  	int lane;
>  =

> -	for (lane =3D 0; lane < intel_dp->lane_count; lane++)
> +	for (lane =3D 0; lane < crtc_state->lane_count; lane++)
>  		if ((intel_dp->train_set[lane] &
>  		     DP_TRAIN_MAX_SWING_REACHED) =3D=3D 0)
>  			return false;
> @@ -148,7 +155,8 @@ static bool intel_dp_link_max_vswing_reached(struct i=
ntel_dp *intel_dp)
>  =

>  /* Enable corresponding port and start training pattern 1 */
>  static bool
> -intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
> +intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
> +				      const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  	u8 voltage;
> @@ -158,9 +166,9 @@ intel_dp_link_training_clock_recovery(struct intel_dp=
 *intel_dp)
>  	u8 link_bw, rate_select;
>  =

>  	if (intel_dp->prepare_link_retrain)
> -		intel_dp->prepare_link_retrain(intel_dp);
> +		intel_dp->prepare_link_retrain(intel_dp, crtc_state);
>  =

> -	intel_dp_compute_rate(intel_dp, intel_dp->link_rate,
> +	intel_dp_compute_rate(intel_dp, crtc_state->port_clock,
>  			      &link_bw, &rate_select);
>  =

>  	if (link_bw)
> @@ -172,7 +180,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp=
 *intel_dp)
>  =

>  	/* Write the link configuration data */
>  	link_config[0] =3D link_bw;
> -	link_config[1] =3D intel_dp->lane_count;
> +	link_config[1] =3D crtc_state->lane_count;
>  	if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
>  		link_config[1] |=3D DP_LANE_COUNT_ENHANCED_FRAME_EN;
>  	drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
> @@ -189,7 +197,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp=
 *intel_dp)
>  	intel_dp->DP |=3D DP_PORT_EN;
>  =

>  	/* clock recovery */
> -	if (!intel_dp_reset_link_train(intel_dp,
> +	if (!intel_dp_reset_link_train(intel_dp, crtc_state,
>  				       DP_TRAINING_PATTERN_1 |
>  				       DP_LINK_SCRAMBLING_DISABLE)) {
>  		drm_err(&i915->drm, "failed to enable link training\n");
> @@ -220,7 +228,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp=
 *intel_dp)
>  			return false;
>  		}
>  =

> -		if (drm_dp_clock_recovery_ok(link_status, intel_dp->lane_count)) {
> +		if (drm_dp_clock_recovery_ok(link_status, crtc_state->lane_count)) {
>  			drm_dbg_kms(&i915->drm, "clock recovery OK\n");
>  			return true;
>  		}
> @@ -239,8 +247,8 @@ intel_dp_link_training_clock_recovery(struct intel_dp=
 *intel_dp)
>  		voltage =3D intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;
>  =

>  		/* Update training set as requested by target */
> -		intel_dp_get_adjust_train(intel_dp, link_status);
> -		if (!intel_dp_update_link_train(intel_dp)) {
> +		intel_dp_get_adjust_train(intel_dp, crtc_state, link_status);
> +		if (!intel_dp_update_link_train(intel_dp, crtc_state)) {
>  			drm_err(&i915->drm,
>  				"failed to update link training\n");
>  			return false;
> @@ -252,7 +260,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp=
 *intel_dp)
>  		else
>  			voltage_tries =3D 1;
>  =

> -		if (intel_dp_link_max_vswing_reached(intel_dp))
> +		if (intel_dp_link_max_vswing_reached(intel_dp, crtc_state))
>  			max_vswing_reached =3D true;
>  =

>  	}
> @@ -266,7 +274,8 @@ intel_dp_link_training_clock_recovery(struct intel_dp=
 *intel_dp)
>   * or for 1.4 devices that support it, training Pattern 3 for HBR2
>   * or 1.2 devices that support it, Training Pattern 2 otherwise.
>   */
> -static u32 intel_dp_training_pattern(struct intel_dp *intel_dp)
> +static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
> +				     const struct intel_crtc_state *crtc_state)
>  {
>  	bool source_tps3, sink_tps3, source_tps4, sink_tps4;
>  =

> @@ -280,7 +289,7 @@ static u32 intel_dp_training_pattern(struct intel_dp =
*intel_dp)
>  	sink_tps4 =3D drm_dp_tps4_supported(intel_dp->dpcd);
>  	if (source_tps4 && sink_tps4) {
>  		return DP_TRAINING_PATTERN_4;
> -	} else if (intel_dp->link_rate =3D=3D 810000) {
> +	} else if (crtc_state->port_clock =3D=3D 810000) {
>  		if (!source_tps4)
>  			drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
>  				    "8.1 Gbps link rate without source HBR3/TPS4 support\n");
> @@ -297,7 +306,7 @@ static u32 intel_dp_training_pattern(struct intel_dp =
*intel_dp)
>  	sink_tps3 =3D drm_dp_tps3_supported(intel_dp->dpcd);
>  	if (source_tps3 && sink_tps3) {
>  		return  DP_TRAINING_PATTERN_3;
> -	} else if (intel_dp->link_rate >=3D 540000) {
> +	} else if (crtc_state->port_clock >=3D 540000) {
>  		if (!source_tps3)
>  			drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
>  				    ">=3D5.4/6.48 Gbps link rate without source HBR2/TPS3 support\n"=
);
> @@ -310,7 +319,8 @@ static u32 intel_dp_training_pattern(struct intel_dp =
*intel_dp)
>  }
>  =

>  static bool
> -intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
> +intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
> +					    const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  	int tries;
> @@ -318,13 +328,13 @@ intel_dp_link_training_channel_equalization(struct =
intel_dp *intel_dp)
>  	u8 link_status[DP_LINK_STATUS_SIZE];
>  	bool channel_eq =3D false;
>  =

> -	training_pattern =3D intel_dp_training_pattern(intel_dp);
> +	training_pattern =3D intel_dp_training_pattern(intel_dp, crtc_state);
>  	/* Scrambling is disabled for TPS2/3 and enabled for TPS4 */
>  	if (training_pattern !=3D DP_TRAINING_PATTERN_4)
>  		training_pattern |=3D DP_LINK_SCRAMBLING_DISABLE;
>  =

>  	/* channel equalization */
> -	if (!intel_dp_set_link_train(intel_dp,
> +	if (!intel_dp_set_link_train(intel_dp, crtc_state,
>  				     training_pattern)) {
>  		drm_err(&i915->drm, "failed to start channel equalization\n");
>  		return false;
> @@ -341,7 +351,7 @@ intel_dp_link_training_channel_equalization(struct in=
tel_dp *intel_dp)
>  =

>  		/* Make sure clock is still ok */
>  		if (!drm_dp_clock_recovery_ok(link_status,
> -					      intel_dp->lane_count)) {
> +					      crtc_state->lane_count)) {
>  			intel_dp_dump_link_status(link_status);
>  			drm_dbg_kms(&i915->drm,
>  				    "Clock recovery check failed, cannot "
> @@ -350,7 +360,7 @@ intel_dp_link_training_channel_equalization(struct in=
tel_dp *intel_dp)
>  		}
>  =

>  		if (drm_dp_channel_eq_ok(link_status,
> -					 intel_dp->lane_count)) {
> +					 crtc_state->lane_count)) {
>  			channel_eq =3D true;
>  			drm_dbg_kms(&i915->drm, "Channel EQ done. DP Training "
>  				    "successful\n");
> @@ -358,8 +368,8 @@ intel_dp_link_training_channel_equalization(struct in=
tel_dp *intel_dp)
>  		}
>  =

>  		/* Update training set as requested by target */
> -		intel_dp_get_adjust_train(intel_dp, link_status);
> -		if (!intel_dp_update_link_train(intel_dp)) {
> +		intel_dp_get_adjust_train(intel_dp, crtc_state, link_status);
> +		if (!intel_dp_update_link_train(intel_dp, crtc_state)) {
>  			drm_err(&i915->drm,
>  				"failed to update link training\n");
>  			break;
> @@ -373,35 +383,37 @@ intel_dp_link_training_channel_equalization(struct =
intel_dp *intel_dp)
>  			    "Channel equalization failed 5 times\n");
>  	}
>  =

> -	intel_dp_set_idle_link_train(intel_dp);
> +	intel_dp_set_idle_link_train(intel_dp, crtc_state);
>  =

>  	return channel_eq;
>  =

>  }
>  =

> -void intel_dp_stop_link_train(struct intel_dp *intel_dp)
> +void intel_dp_stop_link_train(struct intel_dp *intel_dp,
> +			      const struct intel_crtc_state *crtc_state)
>  {
>  	intel_dp->link_trained =3D true;
>  =

> -	intel_dp_set_link_train(intel_dp,
> +	intel_dp_set_link_train(intel_dp, crtc_state,
>  				DP_TRAINING_PATTERN_DISABLE);
>  }
>  =

>  void
> -intel_dp_start_link_train(struct intel_dp *intel_dp)
> +intel_dp_start_link_train(struct intel_dp *intel_dp,
> +			  const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_connector *intel_connector =3D intel_dp->attached_connecto=
r;
>  =

> -	if (!intel_dp_link_training_clock_recovery(intel_dp))
> +	if (!intel_dp_link_training_clock_recovery(intel_dp, crtc_state))
>  		goto failure_handling;
> -	if (!intel_dp_link_training_channel_equalization(intel_dp))
> +	if (!intel_dp_link_training_channel_equalization(intel_dp, crtc_state))
>  		goto failure_handling;
>  =

>  	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
>  		    "[CONNECTOR:%d:%s] Link Training Passed at Link Rate =3D %d, Lane =
count =3D %d",
>  		    intel_connector->base.base.id,
>  		    intel_connector->base.name,
> -		    intel_dp->link_rate, intel_dp->lane_count);
> +		    crtc_state->port_clock, crtc_state->lane_count);
>  	return;
>  =

>   failure_handling:
> @@ -409,15 +421,15 @@ intel_dp_start_link_train(struct intel_dp *intel_dp)
>  		    "[CONNECTOR:%d:%s] Link Training failed at link rate =3D %d, lane =
count =3D %d",
>  		    intel_connector->base.base.id,
>  		    intel_connector->base.name,
> -		    intel_dp->link_rate, intel_dp->lane_count);
> +		    crtc_state->port_clock, crtc_state->lane_count);
>  =

>  	if (intel_dp->hobl_active) {
>  		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
>  			    "Link Training failed with HOBL active, not enabling it from now =
on");
>  		intel_dp->hobl_failed =3D true;
>  	} else if (intel_dp_get_link_train_fallback_values(intel_dp,
> -							   intel_dp->link_rate,
> -							   intel_dp->lane_count)) {
> +							   crtc_state->port_clock,
> +							   crtc_state->lane_count)) {
>  		return;
>  	}
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.h
> index 01f1dabbb060..648a6d1f9fa2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> @@ -8,11 +8,15 @@
>  =

>  #include <drm/drm_dp_helper.h>
>  =

> +struct intel_crtc_state;
>  struct intel_dp;
>  =

>  void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
> +			       const struct intel_crtc_state *crtc_state,
>  			       const u8 link_status[DP_LINK_STATUS_SIZE]);
> -void intel_dp_start_link_train(struct intel_dp *intel_dp);
> -void intel_dp_stop_link_train(struct intel_dp *intel_dp);
> +void intel_dp_start_link_train(struct intel_dp *intel_dp,
> +			       const struct intel_crtc_state *crtc_state);
> +void intel_dp_stop_link_train(struct intel_dp *intel_dp,
> +			      const struct intel_crtc_state *crtc_state);
>  =

>  #endif /* __INTEL_DP_LINK_TRAINING_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/=
drm/i915/display/intel_dpio_phy.c
> index 7910522273b2..514c4a7adffc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -644,16 +644,16 @@ bxt_ddi_phy_get_lane_lat_optim_mask(struct intel_en=
coder *encoder)
>  	return mask;
>  }
>  =

> -
>  void chv_set_phy_signal_level(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *crtc_state,
>  			      u32 deemph_reg_value, u32 margin_reg_value,
>  			      bool uniq_trans_scale)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(encoder->base.crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum dpio_channel ch =3D vlv_dig_port_to_channel(dig_port);
> -	enum pipe pipe =3D intel_crtc->pipe;
> +	enum pipe pipe =3D crtc->pipe;
>  	u32 val;
>  	int i;
>  =

> @@ -666,7 +666,7 @@ void chv_set_phy_signal_level(struct intel_encoder *e=
ncoder,
>  	val |=3D DPIO_PCS_TX1DEEMP_9P5 | DPIO_PCS_TX2DEEMP_9P5;
>  	vlv_dpio_write(dev_priv, pipe, VLV_PCS01_DW10(ch), val);
>  =

> -	if (intel_crtc->config->lane_count > 2) {
> +	if (crtc_state->lane_count > 2) {
>  		val =3D vlv_dpio_read(dev_priv, pipe, VLV_PCS23_DW10(ch));
>  		val &=3D ~(DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3);
>  		val &=3D ~(DPIO_PCS_TX1DEEMP_MASK | DPIO_PCS_TX2DEEMP_MASK);
> @@ -679,7 +679,7 @@ void chv_set_phy_signal_level(struct intel_encoder *e=
ncoder,
>  	val |=3D DPIO_PCS_TX1MARGIN_000 | DPIO_PCS_TX2MARGIN_000;
>  	vlv_dpio_write(dev_priv, pipe, VLV_PCS01_DW9(ch), val);
>  =

> -	if (intel_crtc->config->lane_count > 2) {
> +	if (crtc_state->lane_count > 2) {
>  		val =3D vlv_dpio_read(dev_priv, pipe, VLV_PCS23_DW9(ch));
>  		val &=3D ~(DPIO_PCS_TX1MARGIN_MASK | DPIO_PCS_TX2MARGIN_MASK);
>  		val |=3D DPIO_PCS_TX1MARGIN_000 | DPIO_PCS_TX2MARGIN_000;
> @@ -687,7 +687,7 @@ void chv_set_phy_signal_level(struct intel_encoder *e=
ncoder,
>  	}
>  =

>  	/* Program swing deemph */
> -	for (i =3D 0; i < intel_crtc->config->lane_count; i++) {
> +	for (i =3D 0; i < crtc_state->lane_count; i++) {
>  		val =3D vlv_dpio_read(dev_priv, pipe, CHV_TX_DW4(ch, i));
>  		val &=3D ~DPIO_SWING_DEEMPH9P5_MASK;
>  		val |=3D deemph_reg_value << DPIO_SWING_DEEMPH9P5_SHIFT;
> @@ -695,7 +695,7 @@ void chv_set_phy_signal_level(struct intel_encoder *e=
ncoder,
>  	}
>  =

>  	/* Program swing margin */
> -	for (i =3D 0; i < intel_crtc->config->lane_count; i++) {
> +	for (i =3D 0; i < crtc_state->lane_count; i++) {
>  		val =3D vlv_dpio_read(dev_priv, pipe, CHV_TX_DW2(ch, i));
>  =

>  		val &=3D ~DPIO_SWING_MARGIN000_MASK;
> @@ -718,7 +718,7 @@ void chv_set_phy_signal_level(struct intel_encoder *e=
ncoder,
>  	 * For now, for this unique transition scale selection, set bit
>  	 * 27 for ch0 and ch1.
>  	 */
> -	for (i =3D 0; i < intel_crtc->config->lane_count; i++) {
> +	for (i =3D 0; i < crtc_state->lane_count; i++) {
>  		val =3D vlv_dpio_read(dev_priv, pipe, CHV_TX_DW3(ch, i));
>  		if (uniq_trans_scale)
>  			val |=3D DPIO_TX_UNIQ_TRANS_SCALE_EN;
> @@ -732,7 +732,7 @@ void chv_set_phy_signal_level(struct intel_encoder *e=
ncoder,
>  	val |=3D DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3;
>  	vlv_dpio_write(dev_priv, pipe, VLV_PCS01_DW10(ch), val);
>  =

> -	if (intel_crtc->config->lane_count > 2) {
> +	if (crtc_state->lane_count > 2) {
>  		val =3D vlv_dpio_read(dev_priv, pipe, VLV_PCS23_DW10(ch));
>  		val |=3D DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3;
>  		vlv_dpio_write(dev_priv, pipe, VLV_PCS23_DW10(ch), val);
> @@ -992,14 +992,15 @@ void chv_phy_post_pll_disable(struct intel_encoder =
*encoder,
>  }
>  =

>  void vlv_set_phy_signal_level(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *crtc_state,
>  			      u32 demph_reg_value, u32 preemph_reg_value,
>  			      u32 uniqtranscale_reg_value, u32 tx3_demph)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(encoder->base.crtc);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum dpio_channel port =3D vlv_dig_port_to_channel(dig_port);
> -	enum pipe pipe =3D intel_crtc->pipe;
> +	enum pipe pipe =3D crtc->pipe;
>  =

>  	vlv_dpio_get(dev_priv);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.h b/drivers/gpu/=
drm/i915/display/intel_dpio_phy.h
> index f418aab90b7e..6473440e7457 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
> @@ -32,6 +32,7 @@ void bxt_ddi_phy_set_lane_optim_mask(struct intel_encod=
er *encoder,
>  u8 bxt_ddi_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder);
>  =

>  void chv_set_phy_signal_level(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *crtc_state,
>  			      u32 deemph_reg_value, u32 margin_reg_value,
>  			      bool uniq_trans_scale);
>  void chv_data_lane_soft_reset(struct intel_encoder *encoder,
> @@ -46,6 +47,7 @@ void chv_phy_post_pll_disable(struct intel_encoder *enc=
oder,
>  			      const struct intel_crtc_state *old_crtc_state);
>  =

>  void vlv_set_phy_signal_level(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *crtc_state,
>  			      u32 demph_reg_value, u32 preemph_reg_value,
>  			      u32 uniqtranscale_reg_value, u32 tx3_demph);
>  void vlv_phy_pre_pll_enable(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 3f2008d845c2..414a46a6b5f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2775,8 +2775,9 @@ static void vlv_hdmi_pre_enable(struct intel_atomic=
_state *state,
>  	vlv_phy_pre_encoder_enable(encoder, pipe_config);
>  =

>  	/* HDMI 1.0V-2dB */
> -	vlv_set_phy_signal_level(encoder, 0x2b245f5f, 0x00002000, 0x5578b83a,
> -				 0x2b247878);
> +	vlv_set_phy_signal_level(encoder, pipe_config,
> +				 0x2b245f5f, 0x00002000,
> +				 0x5578b83a, 0x2b247878);
>  =

>  	dig_port->set_infoframes(encoder,
>  			      pipe_config->has_infoframe,
> @@ -2853,7 +2854,7 @@ static void chv_hdmi_pre_enable(struct intel_atomic=
_state *state,
>  =

>  	/* FIXME: Program the support xxx V-dB */
>  	/* Use 800mV-0dB */
> -	chv_set_phy_signal_level(encoder, 128, 102, false);
> +	chv_set_phy_signal_level(encoder, pipe_config, 128, 102, false);
>  =

>  	dig_port->set_infoframes(encoder,
>  			      pipe_config->has_infoframe,
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
