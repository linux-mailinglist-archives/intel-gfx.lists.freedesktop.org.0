Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3C626E9AB
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 01:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7C96E427;
	Thu, 17 Sep 2020 23:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 479FE6E427
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 23:58:41 +0000 (UTC)
IronPort-SDR: 2yW1Uh73RWYpRrZjHFaJjvTtqEj3Wt6KOrJXVVKWn0iwD2KVIvivyRPgS7/AHzEbMaoKbYONXy
 aFwDcN5+3bKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="139823960"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="139823960"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 16:58:36 -0700
IronPort-SDR: w6lZMZQN6susUgDwoXn3z5roRRRcP+SHVD6dhghJ9HdY1tJyGWPytJT2sOPeQFJYDWofQ3/vsN
 /P7JNQj/JetA==
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="307666383"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 16:58:36 -0700
Date: Thu, 17 Sep 2020 16:59:19 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200917235919.GB27525@labuser-Z97X-UD5H>
References: <20200917214335.3569-1-ville.syrjala@linux.intel.com>
 <20200917214335.3569-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917214335.3569-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Decouple intel_dp_{min,
 output}_bpp() from crtc_state
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

On Fri, Sep 18, 2020 at 12:43:34AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Pass the output_format directly to intel_dp_{min,output}_bpp()
> rather than passing in the crtc_state and digging out the
> output_format inside the functions. This will allow us to reuse
> the functions for mode validation purposes.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Looks good

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 15 ++++++++-------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 ++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
>  3 files changed, 11 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index ad9b8b16fadb..aa4801a8123d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2111,14 +2111,14 @@ intel_dp_adjust_compliance_config(struct intel_dp=
 *intel_dp,
>  	}
>  }
>  =

> -static int intel_dp_output_bpp(const struct intel_crtc_state *crtc_state=
, int bpp)
> +static int intel_dp_output_bpp(enum intel_output_format output_format, i=
nt bpp)
>  {
>  	/*
>  	 * bpp value was assumed to RGB format. And YCbCr 4:2:0 output
>  	 * format of the number of bytes per pixel will be half the number
>  	 * of bytes of RGB pixel.
>  	 */
> -	if (crtc_state->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420)
> +	if (output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420)
>  		bpp /=3D 2;
>  =

>  	return bpp;
> @@ -2135,7 +2135,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *=
intel_dp,
>  	int mode_rate, link_clock, link_avail;
>  =

>  	for (bpp =3D limits->max_bpp; bpp >=3D limits->min_bpp; bpp -=3D 2 * 3)=
 {
> -		int output_bpp =3D intel_dp_output_bpp(pipe_config, bpp);
> +		int output_bpp =3D intel_dp_output_bpp(pipe_config->output_format, bpp=
);
>  =

>  		mode_rate =3D intel_dp_link_required(adjusted_mode->crtc_clock,
>  						   output_bpp);
> @@ -2346,9 +2346,9 @@ static int intel_dp_dsc_compute_config(struct intel=
_dp *intel_dp,
>  	return 0;
>  }
>  =

> -int intel_dp_min_bpp(const struct intel_crtc_state *crtc_state)
> +int intel_dp_min_bpp(enum intel_output_format output_format)
>  {
> -	if (crtc_state->output_format =3D=3D INTEL_OUTPUT_FORMAT_RGB)
> +	if (output_format =3D=3D INTEL_OUTPUT_FORMAT_RGB)
>  		return 6 * 3;
>  	else
>  		return 8 * 3;
> @@ -2379,7 +2379,7 @@ intel_dp_compute_link_config(struct intel_encoder *=
encoder,
>  	limits.min_lane_count =3D 1;
>  	limits.max_lane_count =3D intel_dp_max_lane_count(intel_dp);
>  =

> -	limits.min_bpp =3D intel_dp_min_bpp(pipe_config);
> +	limits.min_bpp =3D intel_dp_min_bpp(pipe_config->output_format);
>  	limits.max_bpp =3D intel_dp_max_bpp(intel_dp, pipe_config);
>  =

>  	if (intel_dp_is_edp(intel_dp)) {
> @@ -2765,7 +2765,8 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>  	if (pipe_config->dsc.compression_enable)
>  		output_bpp =3D pipe_config->dsc.compressed_bpp;
>  	else
> -		output_bpp =3D intel_dp_output_bpp(pipe_config, pipe_config->pipe_bpp);
> +		output_bpp =3D intel_dp_output_bpp(pipe_config->output_format,
> +						 pipe_config->pipe_bpp);
>  =

>  	intel_link_compute_m_n(output_bpp,
>  			       pipe_config->lane_count,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 08a1c0aa8b94..a9580d1df35b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -10,6 +10,7 @@
>  =

>  #include "i915_reg.h"
>  =

> +enum intel_output_format;
>  enum pipe;
>  enum port;
>  struct drm_connector_state;
> @@ -35,7 +36,7 @@ void intel_dp_adjust_compliance_config(struct intel_dp =
*intel_dp,
>  				       struct link_config_limits *limits);
>  bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_st=
ate,
>  				  const struct drm_connector_state *conn_state);
> -int intel_dp_min_bpp(const struct intel_crtc_state *crtc_state);
> +int intel_dp_min_bpp(enum intel_output_format output_format);
>  bool intel_dp_port_enabled(struct drm_i915_private *dev_priv,
>  			   i915_reg_t dp_reg, enum port port,
>  			   enum pipe *pipe);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 64d885539e94..6a874b779b1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -130,7 +130,7 @@ static int intel_dp_mst_compute_config(struct intel_e=
ncoder *encoder,
>  	limits.min_lane_count =3D
>  	limits.max_lane_count =3D intel_dp_max_lane_count(intel_dp);
>  =

> -	limits.min_bpp =3D intel_dp_min_bpp(pipe_config);
> +	limits.min_bpp =3D intel_dp_min_bpp(pipe_config->output_format);
>  	/*
>  	 * FIXME: If all the streams can't fit into the link with
>  	 * their current pipe_bpp we should reduce pipe_bpp across
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
