Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 268F526E9B3
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 02:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C906E42A;
	Fri, 18 Sep 2020 00:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3126E429
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Sep 2020 00:00:33 +0000 (UTC)
IronPort-SDR: Exd/tWm8hf30TDXtFBJT+CRNEXp5pLJQ6i15APaEphwwfLmDnBl2lVXNrOD0YN3Fnh0ELzfQKG
 8na03UMCyerw==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="223988144"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="223988144"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 17:00:29 -0700
IronPort-SDR: P4eKIcjcut+H1GUC3tY+OmjvMp6w+yYOx42wcqW8lWJzakvW1eUNISdglEMB4HAdz6wtls34+N
 XXqc4L7xV0kg==
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="339612270"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 17:00:29 -0700
Date: Thu, 17 Sep 2020 17:01:12 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200918000112.GC27525@labuser-Z97X-UD5H>
References: <20200917214335.3569-1-ville.syrjala@linux.intel.com>
 <20200917214335.3569-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917214335.3569-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use the correct bpp when
 validating "4:2:0 only" modes
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

On Fri, Sep 18, 2020 at 12:43:35AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> When validating a "YCbCr 4:2:0 only" mode we must take into
> account the fact that we're going to be outputting YCbCr
> 4:2:0 or 4:4:4 (when a DP->HDMI protocol converter is doing
> the 4:2:0 downsampling). For YCbCr 4:4:4 the minimum output
> bpc is 8, for YCbCr 4:2:0 it'll be half that. The currently
> hardcoded 6bpc is only correct for RGB 4:4:4, which we will
> never use with these kinds of modes. Figure out what we're
> going to output and use the correct min bpp value to validate
> whether the link has sufficient bandwidth.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 55 +++++++++++++++----------
>  1 file changed, 33 insertions(+), 22 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index aa4801a8123d..54a4b81ea3ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -608,6 +608,37 @@ intel_dp_output_format(struct drm_connector *connect=
or,
>  		return INTEL_OUTPUT_FORMAT_YCBCR420;
>  }
>  =

> +int intel_dp_min_bpp(enum intel_output_format output_format)
> +{
> +	if (output_format =3D=3D INTEL_OUTPUT_FORMAT_RGB)
> +		return 6 * 3;
> +	else
> +		return 8 * 3;
> +}
> +
> +static int intel_dp_output_bpp(enum intel_output_format output_format, i=
nt bpp)
> +{
> +	/*
> +	 * bpp value was assumed to RGB format. And YCbCr 4:2:0 output
> +	 * format of the number of bytes per pixel will be half the number
> +	 * of bytes of RGB pixel.
> +	 */
> +	if (output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420)
> +		bpp /=3D 2;
> +
> +	return bpp;
> +}
> +
> +static int
> +intel_dp_mode_min_output_bpp(struct drm_connector *connector,
> +			     const struct drm_display_mode *mode)
> +{
> +	enum intel_output_format output_format =3D
> +		intel_dp_output_format(connector, mode);
> +
> +	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_forma=
t));
> +}
> +
>  static bool intel_dp_hdisplay_bad(struct drm_i915_private *dev_priv,
>  				  int hdisplay)
>  {
> @@ -687,7 +718,8 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  	max_lanes =3D intel_dp_max_lane_count(intel_dp);
>  =

>  	max_rate =3D intel_dp_max_data_rate(max_link_clock, max_lanes);
> -	mode_rate =3D intel_dp_link_required(target_clock, 18);
> +	mode_rate =3D intel_dp_link_required(target_clock,
> +					   intel_dp_mode_min_output_bpp(connector, mode));
>  =

>  	if (intel_dp_hdisplay_bad(dev_priv, mode->hdisplay))
>  		return MODE_H_ILLEGAL;
> @@ -2111,19 +2143,6 @@ intel_dp_adjust_compliance_config(struct intel_dp =
*intel_dp,
>  	}
>  }
>  =

> -static int intel_dp_output_bpp(enum intel_output_format output_format, i=
nt bpp)
> -{
> -	/*
> -	 * bpp value was assumed to RGB format. And YCbCr 4:2:0 output
> -	 * format of the number of bytes per pixel will be half the number
> -	 * of bytes of RGB pixel.
> -	 */
> -	if (output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420)
> -		bpp /=3D 2;
> -
> -	return bpp;
> -}
> -
>  /* Optimize link config in order: max bpp, min clock, min lanes */
>  static int
>  intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
> @@ -2346,14 +2365,6 @@ static int intel_dp_dsc_compute_config(struct inte=
l_dp *intel_dp,
>  	return 0;
>  }
>  =

> -int intel_dp_min_bpp(enum intel_output_format output_format)
> -{
> -	if (output_format =3D=3D INTEL_OUTPUT_FORMAT_RGB)
> -		return 6 * 3;
> -	else
> -		return 8 * 3;
> -}
> -
>  static int
>  intel_dp_compute_link_config(struct intel_encoder *encoder,
>  			     struct intel_crtc_state *pipe_config,
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
