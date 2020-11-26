Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC312C5A49
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 18:13:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1691C6E946;
	Thu, 26 Nov 2020 17:13:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D566F6E946
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 17:13:13 +0000 (UTC)
IronPort-SDR: 6aa//V2d/qGZuAcXlPGNb4APG2GLqOMeVtEadNLAxP0wZe64gkEIsZ6sKQvKLogWfMsPVfsyrA
 uonicQ8fleHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="159355632"
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="159355632"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 09:13:12 -0800
IronPort-SDR: tUeFG+bUecTcIpMEUktwx+kFRMHUDr1BKzsqOtXjVW2k892Thm1kvDH/LahKqxXtZg4YA4YGCo
 zZ1sl0k4z9aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="365879800"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 26 Nov 2020 09:13:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Nov 2020 19:13:09 +0200
Date: Thu, 26 Nov 2020 19:13:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201126171309.GJ6112@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
 <20201126081445.29759-8-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126081445.29759-8-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v11 07/13] i915/display: Enable BT2020 for HDR on
 LSPCON devices
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

On Thu, Nov 26, 2020 at 01:44:39PM +0530, Uma Shankar wrote:
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

> v4: Added BT2020 as default for HDR. Adding the colorspace property
> interface for pcon will be take up separately. Moved changes of
> quantization in a separate patch as per Ville's comments.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 0a4c05d67108..f6f58a991e7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -481,6 +481,10 @@ void lspcon_read_infoframe(struct intel_encoder *enc=
oder,
>  	/* FIXME implement this */
>  }
>  =

> +/* HDMI HDR Colorspace Spec Definitions */
> +#define NORMAL_COLORIMETRY_MASK		0x3
> +#define EXTENDED_COLORIMETRY_MASK	0x7
> +#define HDMI_COLORIMETRY_BT2020_YCC	((3 << 0) | (6 << 2) | (0 << 5))
>  void lspcon_set_infoframes(struct intel_encoder *encoder,
>  			   bool enable,
>  			   const struct intel_crtc_state *crtc_state,
> @@ -523,6 +527,20 @@ void lspcon_set_infoframes(struct intel_encoder *enc=
oder,
>  	else
>  		frame.avi.colorspace =3D HDMI_COLORSPACE_RGB;
>  =

> +	/*
> +	 * Set BT2020 colorspace if driving HDR data
> +	 * ToDo: Make this generic and expose all colorspaces for
> +	 * lspcon. We need to expose HDMI colorspaces when we detect
> +	 * lspcon, this has to happen after connector is registered,
> +	 * so need to fix this appropriately
> +	 */
> +	if (lspcon->active && conn_state->hdr_output_metadata) {
> +		frame.avi.colorimetry =3D HDMI_COLORIMETRY_BT2020_YCC &
> +					NORMAL_COLORIMETRY_MASK;
> +		frame.avi.extended_colorimetry =3D (HDMI_COLORIMETRY_BT2020_YCC >> 2) &
> +						  EXTENDED_COLORIMETRY_MASK;
> +	}
> +

I don't understand the point of dancing around this instead of just
fixing it.

There, I did half the work for you
https://patchwork.freedesktop.org/series/84309/


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
