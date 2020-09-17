Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 349BC26E9A8
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 01:56:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A4A76E0D5;
	Thu, 17 Sep 2020 23:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E840D6E0D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 23:56:31 +0000 (UTC)
IronPort-SDR: MJrDWvhgJ1/6RF88gRBykzAHtwqooxfKVb5yUdznyDsc0bIFylivNhjvnNMe8VSnrUEf3eVqLD
 4vRdUqdBCcAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="159121823"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="159121823"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 16:56:25 -0700
IronPort-SDR: Q9AV6Z9CE6BQbakz+l6Khjf/r2X6USLVELWvKbceLK8OnexMWRlAIOETAwmBhD7BbZ2aExhbBz
 qpcOn4wHRNqw==
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="452533049"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 16:56:25 -0700
Date: Thu, 17 Sep 2020 16:57:09 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200917235709.GA27525@labuser-Z97X-UD5H>
References: <20200917214335.3569-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917214335.3569-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Extract
 intel_dp_output_format()
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

On Fri, Sep 18, 2020 at 12:43:33AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Refactor the output_format calculation into a helper so that
> we can reuse it for mode validation as well.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 32 +++++++++++++++----------
>  1 file changed, 20 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index bf1e9cf1c0f3..ad9b8b16fadb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -592,6 +592,22 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_=
dp *intel_dp,
>  	return 0;
>  }
>  =

> +static enum intel_output_format
> +intel_dp_output_format(struct drm_connector *connector,
> +		       const struct drm_display_mode *mode)
> +{
> +	struct intel_dp *intel_dp =3D intel_attached_dp(to_intel_connector(conn=
ector));
> +	const struct drm_display_info *info =3D &connector->display_info;
> +
> +	if (!drm_mode_is_420_only(info, mode))
> +		return INTEL_OUTPUT_FORMAT_RGB;
> +
> +	if (intel_dp->dfp.ycbcr_444_to_420)
> +		return INTEL_OUTPUT_FORMAT_YCBCR444;
> +	else
> +		return INTEL_OUTPUT_FORMAT_YCBCR420;
> +}
> +
>  static bool intel_dp_hdisplay_bad(struct drm_i915_private *dev_priv,
>  				  int hdisplay)
>  {
> @@ -2430,27 +2446,20 @@ intel_dp_compute_link_config(struct intel_encoder=
 *encoder,
>  }
>  =

>  static int
> -intel_dp_ycbcr420_config(struct intel_dp *intel_dp,
> -			 struct intel_crtc_state *crtc_state,
> +intel_dp_ycbcr420_config(struct intel_crtc_state *crtc_state,
>  			 const struct drm_connector_state *conn_state)
>  {
>  	struct drm_connector *connector =3D conn_state->connector;
> -	const struct drm_display_info *info =3D &connector->display_info;
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>  =

>  	if (!connector->ycbcr_420_allowed)
>  		return 0;
>  =

> -	if (!drm_mode_is_420_only(info, adjusted_mode))
> -		return 0;
> +	crtc_state->output_format =3D intel_dp_output_format(connector, adjuste=
d_mode);

So by default if its not 420_only then we set it to RGB?

Manasi

>  =

> -	if (intel_dp->dfp.ycbcr_444_to_420) {
> -		crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_YCBCR444;
> +	if (crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_YCBCR420)
>  		return 0;
> -	}
> -
> -	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
>  =

>  	return intel_pch_panel_fitting(crtc_state, conn_state);
>  }
> @@ -2710,8 +2719,7 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>  	if (lspcon->active)
>  		lspcon_ycbcr420_config(&intel_connector->base, pipe_config);
>  	else
> -		ret =3D intel_dp_ycbcr420_config(intel_dp, pipe_config,
> -					       conn_state);
> +		ret =3D intel_dp_ycbcr420_config(pipe_config, conn_state);
>  	if (ret)
>  		return ret;
>  =

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
