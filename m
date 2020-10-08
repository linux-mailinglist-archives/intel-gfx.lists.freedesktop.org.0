Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC55287336
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 13:19:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C5E6E321;
	Thu,  8 Oct 2020 11:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A96D6E321
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 11:19:01 +0000 (UTC)
IronPort-SDR: y8uLbQqxqYAkOwXUQnFwHI+9TNN3ZxaGGUOX5fk6+zu+9DjUaTxZdRL52hIqNCpKij+U7Hq9fC
 5sHFLjb81zpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="162681140"
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="162681140"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 04:19:00 -0700
IronPort-SDR: DAJ5HnU780TRYthCIWcAkgUbE4xDOiedZVq6/oCbg2Bu2xPeHE5GKgJPitmvZAlZGg9DcAUQcI
 q67KpP5yaa1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="344708964"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 08 Oct 2020 04:18:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Oct 2020 14:18:57 +0300
Date: Thu, 8 Oct 2020 14:18:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201008111857.GM6112@intel.com>
References: <20201006130654.331-1-uma.shankar@intel.com>
 <20201006130654.331-5-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006130654.331-5-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v7 04/10] drm/i915/display: Enable BT2020 for HDR
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

On Tue, Oct 06, 2020 at 06:36:48PM +0530, Uma Shankar wrote:
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
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 25 ++++++++++++++++-----
>  1 file changed, 19 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 440d2b3c2212..9ffa36797daf 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -534,12 +534,25 @@ void lspcon_set_infoframes(struct intel_encoder *en=
coder,
>  		frame.avi.colorspace =3D HDMI_COLORSPACE_RGB;
>  	}
>  =

> -	drm_hdmi_avi_infoframe_quant_range(&frame.avi,
> -					   conn_state->connector,
> -					   adjusted_mode,
> -					   crtc_state->limited_color_range ?
> -					   HDMI_QUANTIZATION_RANGE_LIMITED :
> -					   HDMI_QUANTIZATION_RANGE_FULL);
> +	drm_hdmi_avi_infoframe_colorspace(&frame.avi, conn_state);

That seems to be a missing part from
commit 9d1bb6f0222c ("drm/i915/dp: Attach colorspace property")

Also looks like
commit 2f146b78d5a9 ("drm/i915: Attach colorspace property and enable modes=
et")
added a bogus lspcon check into intel_hdmi_add_properties(). That should
be nuked.

Hmm. This whole thing seems like a total snafu. Since we use
AVI IF for lspcon it should follow the HDMI colorimetry stuff, but
now it uses some kind of mix of both HDMI and DP. We need to sort this
out somehow...

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

This part looks OK.

> +
> +	drm_hdmi_avi_infoframe_content_type(&frame.avi, conn_state);

I don't think we have that property attached to the connector.
Probably want a separte patch to add both the prop and this thing.

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
