Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 673062C452B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:29:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B769C6EA28;
	Wed, 25 Nov 2020 16:29:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D316EA28
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:29:22 +0000 (UTC)
IronPort-SDR: tPZWG6DfCcclkAsMubi1tunwI7JuqvT/jujcP3V7hLy7zfw/6jzkoLowPXT8GATFfFBwQ8tVIR
 s/zue7NVQx4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168651967"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="168651967"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 08:29:22 -0800
IronPort-SDR: zmQ4cy6L7XIXxrM7AZRXoTLeF90Ln1JnKTuEk5ACd+sAgV1OMmRiGPgtuNGzt1A10lnwHQqtQH
 w0tjKrgI5prQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="365471050"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 25 Nov 2020 08:29:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Nov 2020 18:29:19 +0200
Date: Wed, 25 Nov 2020 18:29:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201125162919.GQ6112@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
 <20201103152834.12727-6-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103152834.12727-6-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v9 05/12] drm/i915/display: Nuke bogus lspcon check
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

On Tue, Nov 03, 2020 at 08:58:27PM +0530, Uma Shankar wrote:
> Dropped a irrelevant lspcon check from intel_hdmi_add_properties
> function.
> =

> Suggested-by: Ville Syrj=E4l=E4"  <ville.syrjala@linux.intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 8e4b820b715a..f1a927cdf798 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2950,20 +2950,12 @@ static void
>  intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_conn=
ector *connector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	struct intel_digital_port *dig_port =3D
> -				hdmi_to_dig_port(intel_hdmi);
>  =

>  	intel_attach_force_audio_property(connector);
>  	intel_attach_broadcast_rgb_property(connector);
>  	intel_attach_aspect_ratio_property(connector);
>  =

> -	/*
> -	 * Attach Colorspace property for Non LSPCON based device
> -	 * ToDo: This needs to be extended for LSPCON implementation
> -	 * as well. Will be implemented separately.
> -	 */
> -	if (!dig_port->lspcon.active)
> -		intel_attach_colorspace_property(connector);
> +	intel_attach_colorspace_property(connector);
>  =

>  	drm_connector_attach_content_type_property(connector);
>  =

> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
