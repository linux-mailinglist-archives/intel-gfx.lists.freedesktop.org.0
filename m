Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0832C594A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 17:32:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6B476E94B;
	Thu, 26 Nov 2020 16:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 356CB6E94B
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 16:32:10 +0000 (UTC)
IronPort-SDR: j9RdhR8Pl05E3/6arac9ul1sJqaRZpbNY6ajPprRnpRUnt0HrZ2jPDK4nR9p1sJEvvzroc07p+
 ezlOQS565f8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="236434571"
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="236434571"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 08:32:06 -0800
IronPort-SDR: gCIkfHUa4A4qaAT5/OUMFRhj+wCnFpUnUpUbLlKH7vTx22VWXAxtzi5qaWS3cVZC+Yyt2v0sY4
 tBJk2H4ZAspA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="359565096"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 26 Nov 2020 08:32:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Nov 2020 18:32:02 +0200
Date: Thu, 26 Nov 2020 18:32:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201126163202.GI6112@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
 <20201126081445.29759-10-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126081445.29759-10-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v11 09/13] drm/i915/display: Implement infoframes
 readback for LSPCON
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

On Thu, Nov 26, 2020 at 01:44:41PM +0530, Uma Shankar wrote:
> Implemented Infoframes enabled readback for LSPCON devices.
> This will help align the implementation with state readback
> infrastructure.
> =

> v2: Added proper bitmask of enabled infoframes as per Ville's
> recommendation.
> =

> v3: Added pcon specific infoframe types instead of using the HSW
> one's, as recommended by Ville.
> =

> v4: Addressed Ville's review comment by adding HDMI infoframe
> versions directly instead of DIP wrappers.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 57 ++++++++++++++++++++-
>  1 file changed, 55 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 1d3dffade168..4f3c4943e918 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -574,11 +574,64 @@ void lspcon_set_infoframes(struct intel_encoder *en=
coder,
>  				  buf, ret);
>  }
>  =

> +static bool _lspcon_read_avi_infoframe_enabled_mca(struct drm_dp_aux *au=
x)
> +{
> +	int ret;
> +	u32 val =3D 0;
> +	u16 reg =3D LSPCON_MCA_AVI_IF_CTRL;
> +
> +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> +	if (ret < 0) {
> +		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
> +		return false;
> +	}
> +
> +	return val & LSPCON_MCA_AVI_IF_KICKOFF;
> +}
> +
> +static bool _lspcon_read_avi_infoframe_enabled_parade(struct drm_dp_aux =
*aux)
> +{
> +	int ret;
> +	u32 val =3D 0;
> +	u16 reg =3D LSPCON_PARADE_AVI_IF_CTRL;
> +
> +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> +	if (ret < 0) {
> +		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
> +		return false;
> +	}
> +
> +	return val & LSPCON_PARADE_AVI_IF_KICKOFF;
> +}
> +
>  u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *pipe_config)
>  {
> -	/* FIXME actually read this from the hw */
> -	return 0;
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +	struct intel_lspcon *lspcon =3D enc_to_intel_lspcon(encoder);
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	bool infoframes_enabled;
> +	u32 val =3D 0;
> +	u32 mask, tmp;
> +
> +	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> +		infoframes_enabled =3D _lspcon_read_avi_infoframe_enabled_mca(&intel_d=
p->aux);
> +	else
> +		infoframes_enabled =3D _lspcon_read_avi_infoframe_enabled_parade(&inte=
l_dp->aux);
> +
> +	if (infoframes_enabled)
> +		val |=3D intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI);
> +
> +	if (lspcon->hdr_supported) {
> +		tmp =3D intel_de_read(dev_priv,
> +				    HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
> +		mask =3D VIDEO_DIP_ENABLE_GMP_HSW;
> +
> +		if (tmp & mask)
> +			val |=3D intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
> +	}
> +
> +	return val;
>  }

This seem broken until patch 10 which avoids the
remapping from DIP bits to the index. With some reordering
of the patches this seems good.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>  =

>  void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
