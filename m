Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6262C6718
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 14:45:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0256ED18;
	Fri, 27 Nov 2020 13:45:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F31FB6ED18
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 13:45:12 +0000 (UTC)
IronPort-SDR: Mx36WLxzwvykoEfUux1EBt1dtmse6DKrYm1F2xffJf2MwnlfV2E5g3V3DLQWwpHzbqbQcuWtdD
 7+yQMBrCWy2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="169834598"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="169834598"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 05:45:11 -0800
IronPort-SDR: IGL96JV7yPgirrWftrgSo7FilDHELao2t+AEo6jQQjPRIobRZOz6Gua9xE3SpcyE4slm40NneX
 q1LjDqMfZeAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="333690227"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 27 Nov 2020 05:45:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Nov 2020 15:45:08 +0200
Date: Fri, 27 Nov 2020 15:45:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201127134508.GL6112@intel.com>
References: <20201126210314.7882-1-uma.shankar@intel.com>
 <20201126210314.7882-9-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126210314.7882-9-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v12 08/15] drm/i915/display: Enable colorspace
 programming for LSPCON devices
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

On Fri, Nov 27, 2020 at 02:33:07AM +0530, Uma Shankar wrote:
> Enable HDMI Colorspace for LSPCON based devices. Sending Colorimetry
> data for HDR using AVI infoframe. LSPCON firmware expects this and though
> SOC drives DP, for HDMI panel AVI infoframe is sent to the LSPCON device
> which transfers the same to HDMI sink.
> =

> v2: Dropped state managed in drm core as per Jani Nikula's suggestion.
> =

> v3: Aligned colorimetry handling for lspcon as per compute_avi_infoframes,
> as suggested by Ville.
> =

> v4: Finally fixed this with Ville's help, re-phrased the commit header
> and description.

Still missing the "expose the hdmi variant of the prop on lspcon"
part. I didn't include that in my patch since we didn't use
drm_hdmi_avi_infoframe_colorspace() yes on lspcon. Although
maybe I should have just done that change anyway since we were
already registering the prop anyway even if we didn't actually
put the data into the infoframe.

> =

> Credits-to: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 3 +++
>  1 file changed, 3 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 0a4c05d67108..cb768a1ae4c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -523,6 +523,9 @@ void lspcon_set_infoframes(struct intel_encoder *enco=
der,
>  	else
>  		frame.avi.colorspace =3D HDMI_COLORSPACE_RGB;
>  =

> +	/* Set the Colorspace as per the HDMI spec */
> +	drm_hdmi_avi_infoframe_colorspace(&frame.avi, conn_state);
> +
>  	/* nonsense combination */
>  	drm_WARN_ON(encoder->base.dev, crtc_state->limited_color_range &&
>  		    crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB);
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
