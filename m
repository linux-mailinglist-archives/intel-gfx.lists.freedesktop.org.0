Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F272C593E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 17:27:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 170DF6E99F;
	Thu, 26 Nov 2020 16:27:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9D406E99F
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 16:27:42 +0000 (UTC)
IronPort-SDR: ovklzlUpjAW6M3WopJ4bnsX+zffHXkuqPgnM80+MFKQouB/u1O79vAn7HhFkvk5Y1aYU7MGgQd
 S4pCrfIaP+hw==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="169743736"
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="169743736"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 08:27:37 -0800
IronPort-SDR: +QvetSZ5F1YMyNGBC+Tpx0ZdF5QuytLW7bqp86h3qhQ15fbNo5PtDhoY3xnGGPuCmyb4WVYu+k
 c8qSzMoPH/Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="314059733"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 26 Nov 2020 08:27:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Nov 2020 18:27:33 +0200
Date: Thu, 26 Nov 2020 18:27:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201126162733.GF6112@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
 <20201126081445.29759-5-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126081445.29759-5-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v11 04/13] drm/i915/display: Enable quantization
 range for HDR on LSPCON devices
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

On Thu, Nov 26, 2020 at 01:44:36PM +0530, Uma Shankar wrote:
> This patch handles the quantization range for Lspcon.

I would state it as "fixes quantization range for YCbCr output" or
something along those lins.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index f98891f058da..7cb65e0f241e 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -523,12 +523,17 @@ void lspcon_set_infoframes(struct intel_encoder *en=
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
