Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FE32C593F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 17:28:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01F5A6E9A6;
	Thu, 26 Nov 2020 16:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0F576E9A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 16:28:00 +0000 (UTC)
IronPort-SDR: UnU0od/MR5wJCi9RzcK428NV7TrtsIESiY6or7hGwIbKu3HBAZ73vn/lIAXVKfafsQ2J8JMJKn
 qdDUnj5giBvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="257011976"
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="257011976"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 08:27:56 -0800
IronPort-SDR: 0eAP3jXQVLCM1GGX+i4ZcX3dvKhMlejiNPWGdLtox5G/+cO9cE7w6C8Do0JcyC9ZoF5jK+ASu7
 KLgexyYUjBzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="365864904"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 26 Nov 2020 08:27:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Nov 2020 18:27:53 +0200
Date: Thu, 26 Nov 2020 18:27:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201126162753.GG6112@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
 <20201126081445.29759-6-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126081445.29759-6-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v11 05/13] drm/i915/display: Add a WARN for
 invalid output range and format
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

On Thu, Nov 26, 2020 at 01:44:37PM +0530, Uma Shankar wrote:
> Add a WARN to rule out an invalid output range and format
> combination. This is to align the lspcon code with
> compute_avi_infoframes.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 4 ++++
>  1 file changed, 4 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 7cb65e0f241e..9552dfc55e20 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -523,6 +523,10 @@ void lspcon_set_infoframes(struct intel_encoder *enc=
oder,
>  	else
>  		frame.avi.colorspace =3D HDMI_COLORSPACE_RGB;
>  =

> +	/* nonsense combination */
> +	drm_WARN_ON(encoder->base.dev, crtc_state->limited_color_range &&
> +		    crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB);
> +
>  	if (crtc_state->output_format =3D=3D INTEL_OUTPUT_FORMAT_RGB) {
>  		drm_hdmi_avi_infoframe_quant_range(&frame.avi,
>  						   conn_state->connector,
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
