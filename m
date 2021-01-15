Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7522F8033
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 17:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026B36E0AA;
	Fri, 15 Jan 2021 16:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3F66E0AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 16:04:23 +0000 (UTC)
IronPort-SDR: CoKIzQ5HeEY+muns8LWmEGA5zgl7oDXXYyvckvwInnpZsoV0I0Rhom/lUO4Zv07X1KbST19pYt
 Tpgu271Qeq6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="157748279"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="157748279"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 08:04:18 -0800
IronPort-SDR: zsNcBedrY6DRTfYdGgZyaYYB1+tTMC093fhuiX/nr+Fc09nbjoGG+mibfwYQWuZdog8LxH+c+i
 QLc0IIHfnr6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="382713056"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 15 Jan 2021 08:04:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Jan 2021 18:04:10 +0200
Date: Fri, 15 Jan 2021 18:04:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <YAG8+gYaAsu1ZMjK@intel.com>
References: <20210114092236.20477-1-shawn.c.lee@intel.com>
 <20210115054604.27726-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210115054604.27726-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: support two CSC module on
 gen11 and later
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 15, 2021 at 01:46:04PM +0800, Lee Shawn C wrote:
> There are two CSC on pipeline on gen11 and later platform.
> User space application is allowed to enable CTM and RGB
> to YCbCr coversion at the same time now.
> =

> v2: check csc capability in {}_color_check function.
> =

> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Shankar Uma <uma.shankar@intel.com>
> =

> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c   | 45 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c | 13 ------
>  2 files changed, 45 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 172d398081ee..22edcd0c9ad5 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1322,10 +1322,35 @@ static u32 i9xx_gamma_mode(struct intel_crtc_stat=
e *crtc_state)
>  		return GAMMA_MODE_MODE_10BIT; /* i965+ only */
>  }
>  =

> +static int check_csc(const struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(pipe_config->uapi.crtc->d=
ev);
> +
> +	if ((INTEL_GEN(dev_priv) < 11) &&
> +	    (pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420 ||
> +	     pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR444) &&
> +	     pipe_config->hw.ctm) {

IMO trying to make this generic to all platforms is just making it
more complicated for no good reason. For now I'd just inline this
directly into the two places where we need it.

And if we write it as =


if (crtc_state->output_format !=3D RGB &&
    crtc_state->hw.ctm) {
	drm_dbg_kms(...);
	return -EINVAL;
}

it will nicely match the code that calculates csc_enable.

> +		/*
> +		 * There is only one pipe CSC unit per pipe, and we need that
> +		 * for output conversion from RGB->YCBCR. So if CTM is already
> +		 * applied we can't support YCBCR420 output.
> +		 */
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "YCBCR420 and CTM together are not possible\n");

Should just say YCbCr here since it's not necessarily 4:2:0 subsampled.

> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static int i9xx_color_check(struct intel_crtc_state *crtc_state)
>  {
>  	int ret;
>  =

> +	ret =3D check_csc(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	ret =3D check_luts(crtc_state);
>  	if (ret)
>  		return ret;
> @@ -1374,6 +1399,10 @@ static int chv_color_check(struct intel_crtc_state=
 *crtc_state)
>  {
>  	int ret;
>  =

> +	ret =3D check_csc(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	ret =3D check_luts(crtc_state);
>  	if (ret)
>  		return ret;
> @@ -1427,6 +1456,10 @@ static int ilk_color_check(struct intel_crtc_state=
 *crtc_state)
>  {
>  	int ret;
>  =

> +	ret =3D check_csc(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	ret =3D check_luts(crtc_state);
>  	if (ret)
>  		return ret;
> @@ -1488,6 +1521,10 @@ static int ivb_color_check(struct intel_crtc_state=
 *crtc_state)
>  	bool limited_color_range =3D ilk_csc_limited_range(crtc_state);
>  	int ret;
>  =

> +	ret =3D check_csc(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	ret =3D check_luts(crtc_state);
>  	if (ret)
>  		return ret;
> @@ -1527,6 +1564,10 @@ static int glk_color_check(struct intel_crtc_state=
 *crtc_state)
>  {
>  	int ret;
>  =

> +	ret =3D check_csc(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	ret =3D check_luts(crtc_state);
>  	if (ret)
>  		return ret;
> @@ -1592,6 +1633,10 @@ static int icl_color_check(struct intel_crtc_state=
 *crtc_state)
>  {
>  	int ret;
>  =

> +	ret =3D check_csc(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	ret =3D check_luts(crtc_state);
>  	if (ret)
>  		return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 66990e48c0d4..e60cbe8b0203 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7835,19 +7835,6 @@ static int intel_crtc_compute_config(struct intel_=
crtc *crtc,
>  		return -EINVAL;
>  	}
>  =

> -	if ((pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420 ||
> -	     pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR444) &&
> -	     pipe_config->hw.ctm) {
> -		/*
> -		 * There is only one pipe CSC unit per pipe, and we need that
> -		 * for output conversion from RGB->YCBCR. So if CTM is already
> -		 * applied we can't support YCBCR420 output.
> -		 */
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "YCBCR420 and CTM together are not possible\n");
> -		return -EINVAL;
> -	}
> -
>  	/*
>  	 * Pipe horizontal size must be even in:
>  	 * - DVO ganged mode
> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
