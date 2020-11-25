Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 841072C4570
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:40:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2EC96E8C9;
	Wed, 25 Nov 2020 16:40:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C25866E8C9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:40:11 +0000 (UTC)
IronPort-SDR: DVgHsUK+iX39h4UGJr+M033VpuPEYAbh0nX7SsuFFn3RMWXlOeU5zAo/EGRCnDKyBPYeH/TAKw
 DXEuVT6YIt3w==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="171385059"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="171385059"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 08:40:11 -0800
IronPort-SDR: B9kodE90MPpGSC71hJxawRl2J5VSsCdjRjQrVeDQLEUH2dWYxx07LLea1X0aZdhXGx9bXSgQNO
 WQh25mm5w2Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="313017282"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 25 Nov 2020 08:40:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Nov 2020 18:40:08 +0200
Date: Wed, 25 Nov 2020 18:40:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201125164008.GU6112@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
 <20201103152834.12727-7-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103152834.12727-7-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v9 06/12] drm/i915/display: Enable BT2020 for HDR
 on LSPCON devices
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

On Tue, Nov 03, 2020 at 08:58:28PM +0530, Uma Shankar wrote:
> Enable Colorspace as BT2020 if driving HDR content.Sending Colorimetry
> data for HDR using AVI infoframe. LSPCON firmware expects this and though
> SOC drives DP, for HDMI panel AVI infoframe is sent to the LSPCON device
> which transfers the same to HDMI sink.
> =

> v2: Dropped state managed in drm core as per Jani Nikula's suggestion.
> =

> v3: Aligned colorimetry handling for lspcon as per compute_avi_infoframes,
> as suggested by Ville.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 31 +++++++++++++++++----
>  1 file changed, 25 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 336494b60d11..19831f5e51bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -524,12 +524,31 @@ void lspcon_set_infoframes(struct intel_encoder *en=
coder,
>  	else
>  		frame.avi.colorspace =3D HDMI_COLORSPACE_RGB;
>  =

> -	drm_hdmi_avi_infoframe_quant_range(&frame.avi,
> -					   conn_state->connector,
> -					   adjusted_mode,
> -					   crtc_state->limited_color_range ?
> -					   HDMI_QUANTIZATION_RANGE_LIMITED :
> -					   HDMI_QUANTIZATION_RANGE_FULL);
> +	/*
> +	 * Set the HDMI Colorspace which are supported by DP as well.
> +	 * For all others (3 combinations which are exclusive for DP),
> +	 * Let the colorspace be set to default i.e No Data.
> +	 * Fixme: Expose HDMI colorspaces for instead of DP counterparts
> +	 */
> +	drm_hdmi_avi_infoframe_colorspace(&frame.avi, conn_state);

I would suggest taking care of that FIXME + adding this in the same
patch.

> +
> +	/* nonsense combination */
> +	drm_WARN_ON(encoder->base.dev, crtc_state->limited_color_range &&
> +		    crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB);
> +
> +	if (crtc_state->output_format =3D=3D INTEL_OUTPUT_FORMAT_RGB) {
> +		drm_hdmi_avi_infoframe_quant_range(&frame.avi,
> +						   conn_state->connector,
> +						   adjusted_mode,
> +						   crtc_state->limited_color_range ?
> +						   HDMI_QUANTIZATION_RANGE_LIMITED :
> +						   HDMI_QUANTIZATION_RANGE_FULL);
> +	} else {
> +		frame.avi.quantization_range =3D HDMI_QUANTIZATION_RANGE_DEFAULT;
> +		frame.avi.ycc_quantization_range =3D HDMI_YCC_QUANTIZATION_RANGE_LIMIT=
ED;
> +	}

This part looks like it should be a separate patch.

> +
> +	drm_hdmi_avi_infoframe_content_type(&frame.avi, conn_state);

And that one looks like it should be part of the patch that adds the
corresponding property.

>  =

>  	ret =3D hdmi_infoframe_pack(&frame, buf, sizeof(buf));
>  	if (ret < 0) {
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
