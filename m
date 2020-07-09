Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1126821A1D6
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 16:12:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 664FD6EA7A;
	Thu,  9 Jul 2020 14:12:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C53C6EA7A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 14:12:29 +0000 (UTC)
IronPort-SDR: 9QlmDSYDqGJ5l5x+zBo4CCz+pFXIjO1doGPw2h0Dw8WKzjFxY00z0I9BWf322kU9FSlCQfqYAD
 CkSEKVlrAWUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="209531643"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="209531643"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 07:12:28 -0700
IronPort-SDR: hlk4f5KghqVKDCytVnypBk16dH+f6B+CEC/EqzmsuUxsdkxlZPuRmxkRfg8AmaL22fKVJP8J0K
 ZYrSKHb4aAgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="316236867"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 09 Jul 2020 07:12:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jul 2020 17:12:24 +0300
Date: Thu, 9 Jul 2020 17:12:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200709141224.GD6112@intel.com>
References: <20200708205512.21625-1-jose.souza@intel.com>
 <20200708205512.21625-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200708205512.21625-2-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 2/5] drm/i915/display: Remove port and
 phy from voltage swing functions
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

On Wed, Jul 08, 2020 at 01:55:09PM -0700, Jos=E9 Roberto de Souza wrote:
> This information can be get directly from intel_encoder so no need
> of those parameters.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 33 ++++++++++--------------
>  1 file changed, 14 insertions(+), 19 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index e80319aa7cf0..2c484b55bcdf 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -815,8 +815,7 @@ static int skl_buf_trans_num_entries(enum port port, =
int n_entries)
>  }
>  =

>  static const struct ddi_buf_trans *
> -intel_ddi_get_buf_trans_dp(struct intel_encoder *encoder,
> -			   enum port port, int *n_entries)
> +intel_ddi_get_buf_trans_dp(struct intel_encoder *encoder, int *n_entries)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  =

> @@ -825,12 +824,12 @@ intel_ddi_get_buf_trans_dp(struct intel_encoder *en=
coder,
>  	    IS_COMETLAKE(dev_priv)) {
>  		const struct ddi_buf_trans *ddi_translations =3D
>  			kbl_get_buf_trans_dp(encoder, n_entries);
> -		*n_entries =3D skl_buf_trans_num_entries(port, *n_entries);
> +		*n_entries =3D skl_buf_trans_num_entries(encoder->port, *n_entries);
>  		return ddi_translations;
>  	} else if (IS_SKYLAKE(dev_priv)) {
>  		const struct ddi_buf_trans *ddi_translations =3D
>  			skl_get_buf_trans_dp(encoder, n_entries);
> -		*n_entries =3D skl_buf_trans_num_entries(port, *n_entries);
> +		*n_entries =3D skl_buf_trans_num_entries(encoder->port, *n_entries);
>  		return ddi_translations;
>  	} else if (IS_BROADWELL(dev_priv)) {
>  		*n_entries =3D ARRAY_SIZE(bdw_ddi_translations_dp);
> @@ -845,15 +844,14 @@ intel_ddi_get_buf_trans_dp(struct intel_encoder *en=
coder,
>  }
>  =

>  static const struct ddi_buf_trans *
> -intel_ddi_get_buf_trans_edp(struct intel_encoder *encoder,
> -			    enum port port, int *n_entries)
> +intel_ddi_get_buf_trans_edp(struct intel_encoder *encoder, int *n_entrie=
s)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  =

>  	if (IS_GEN9_BC(dev_priv)) {
>  		const struct ddi_buf_trans *ddi_translations =3D
>  			skl_get_buf_trans_edp(encoder, n_entries);
> -		*n_entries =3D skl_buf_trans_num_entries(port, *n_entries);
> +		*n_entries =3D skl_buf_trans_num_entries(encoder->port, *n_entries);
>  		return ddi_translations;
>  	} else if (IS_BROADWELL(dev_priv)) {
>  		return bdw_get_buf_trans_edp(encoder, n_entries);
> @@ -1152,10 +1150,10 @@ static void intel_prepare_dp_ddi_buffers(struct i=
ntel_encoder *encoder,
>  		ddi_translations =3D intel_ddi_get_buf_trans_fdi(dev_priv,
>  							       &n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> -		ddi_translations =3D intel_ddi_get_buf_trans_edp(encoder, port,
> +		ddi_translations =3D intel_ddi_get_buf_trans_edp(encoder,
>  							       &n_entries);
>  	else
> -		ddi_translations =3D intel_ddi_get_buf_trans_dp(encoder, port,
> +		ddi_translations =3D intel_ddi_get_buf_trans_dp(encoder,
>  							      &n_entries);
>  =

>  	/* If we're boosting the current, set bit 31 of trans1 */
> @@ -2106,7 +2104,6 @@ static void skl_ddi_set_iboost(struct intel_encoder=
 *encoder,
>  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	enum port port =3D encoder->port;
>  	u8 iboost;
>  =

>  	if (type =3D=3D INTEL_OUTPUT_HDMI)
> @@ -2122,11 +2119,9 @@ static void skl_ddi_set_iboost(struct intel_encode=
r *encoder,
>  			ddi_translations =3D intel_ddi_get_buf_trans_hdmi(encoder, &n_entries=
);
>  		else if (type =3D=3D INTEL_OUTPUT_EDP)
>  			ddi_translations =3D intel_ddi_get_buf_trans_edp(encoder,
> -								       port,
>  								       &n_entries);
>  		else
>  			ddi_translations =3D intel_ddi_get_buf_trans_dp(encoder,
> -								      port,
>  								      &n_entries);
>  =

>  		if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
> @@ -2143,9 +2138,9 @@ static void skl_ddi_set_iboost(struct intel_encoder=
 *encoder,
>  		return;
>  	}
>  =

> -	_skl_ddi_set_iboost(dev_priv, port, iboost);
> +	_skl_ddi_set_iboost(dev_priv, encoder->port, iboost);
>  =

> -	if (port =3D=3D PORT_A && dig_port->max_lanes =3D=3D 4)
> +	if (encoder->port =3D=3D PORT_A && dig_port->max_lanes =3D=3D 4)
>  		_skl_ddi_set_iboost(dev_priv, PORT_E, iboost);
>  }
>  =

> @@ -2213,9 +2208,9 @@ static u8 intel_ddi_dp_voltage_max(struct intel_dp =
*intel_dp)
>  			bxt_get_buf_trans_dp(encoder, &n_entries);
>  	} else {
>  		if (encoder->type =3D=3D INTEL_OUTPUT_EDP)
> -			intel_ddi_get_buf_trans_edp(encoder, port, &n_entries);
> +			intel_ddi_get_buf_trans_edp(encoder, &n_entries);
>  		else
> -			intel_ddi_get_buf_trans_dp(encoder, port, &n_entries);
> +			intel_ddi_get_buf_trans_dp(encoder, &n_entries);
>  	}
>  =

>  	if (drm_WARN_ON(&dev_priv->drm, n_entries < 1))
> @@ -2370,10 +2365,10 @@ static void cnl_ddi_vswing_sequence(struct intel_=
encoder *encoder,
>  }
>  =

>  static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
> -					 u32 level, enum phy phy, int type,
> -					 int rate)
> +					 u32 level, int type, int rate)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>  	const struct cnl_ddi_buf_trans *ddi_translations =3D NULL;
>  	u32 n_entries, val;
>  	int ln;
> @@ -2497,7 +2492,7 @@ static void icl_combo_phy_ddi_vswing_sequence(struc=
t intel_encoder *encoder,
>  	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
>  =

>  	/* 5. Program swing and de-emphasis */
> -	icl_ddi_combo_vswing_program(encoder, level, phy, type, rate);
> +	icl_ddi_combo_vswing_program(encoder, level, type, rate);
>  =

>  	/* 6. Set training enable to trigger update */
>  	val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
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
