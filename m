Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D62502C8E6D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 20:51:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A83B389F8B;
	Mon, 30 Nov 2020 19:51:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 765B189F8B
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 19:51:11 +0000 (UTC)
IronPort-SDR: jE/eGPOHZD9uP84Ql9KyRo1d9T88p5Z0wIYzW/hS7XSj7FujTZKT2oiJwNCK9zHnwTdsYLd531
 ZpQZc6s9pqJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="160472339"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="160472339"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 11:51:10 -0800
IronPort-SDR: INE2XCzYpIZiRzxoNKLhn9DvcT9mB3N5bWvxAcyrHVR/SBNOX8tQdwc5/9TEQn4c2q/c9SpLo/
 JweuRaG9ID8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="360789342"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 30 Nov 2020 11:51:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Nov 2020 21:51:07 +0200
Date: Mon, 30 Nov 2020 21:51:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201130195107.GW6112@intel.com>
References: <20201126210314.7882-9-uma.shankar@intel.com>
 <20201127142820.8507-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201127142820.8507-1-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v13 08/15] drm/i915/display: Enable colorspace
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

On Fri, Nov 27, 2020 at 07:58:20PM +0530, Uma Shankar wrote:
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
> =

> v5: Register HDMI colorspace for lspcon and move this to
> intel_dp_add_properties as we can't create property at late_register.
> =

> Credits-to: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 3 +++
>  2 files changed, 9 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index f066031af162..21a0ca6ae2a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7193,10 +7193,13 @@ intel_dp_add_properties(struct intel_dp *intel_dp=
, struct drm_connector *connect
>  	else if (INTEL_GEN(dev_priv) >=3D 5)
>  		drm_connector_attach_max_bpc_property(connector, 6, 12);
>  =

> -	intel_attach_dp_colorspace_property(connector);
> -
> -	if (intel_bios_is_lspcon_present(dev_priv, port))
> +	/* Register HDMI colorspace for case of lspcon */
> +	if (intel_bios_is_lspcon_present(dev_priv, port)) {
>  		drm_connector_attach_content_type_property(connector);
> +		intel_attach_hdmi_colorspace_property(connector);
> +	} else {
> +		intel_attach_dp_colorspace_property(connector);
> +	}
>  =

>  	if (IS_GEMINILAKE(dev_priv) || INTEL_GEN(dev_priv) >=3D 11)
>  		drm_object_attach_property(&connector->base,
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
