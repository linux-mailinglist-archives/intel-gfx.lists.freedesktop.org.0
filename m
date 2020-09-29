Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0776B27D35E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 18:12:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6B46E528;
	Tue, 29 Sep 2020 16:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5353A6E528
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 16:12:18 +0000 (UTC)
IronPort-SDR: StatMzB5kxf+vuxs6aIV5dp1Ao9jP6aX7hz4wt4hRZJLnNASfliqvqG17OVlun7z6aKU45f0On
 ofWwtBt4rk0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="180383500"
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="180383500"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 09:12:14 -0700
IronPort-SDR: a3FjlyEL6oxX+P0pviTs8iIBFSyrC2y9V4JffOnM2urPSf4kw+wMnM8fSz1HKBQkDtGeMr9U/j
 yRnKu5hh+3MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="351181742"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 29 Sep 2020 09:12:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Sep 2020 19:12:11 +0300
Date: Tue, 29 Sep 2020 19:12:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20200929161211.GZ6112@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
 <20200914210047.11972-3-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914210047.11972-3-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v6 02/11] drm/i915/display: Enable HDR on gen9
 devices with MCA Lspcon
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

On Tue, Sep 15, 2020 at 02:30:38AM +0530, Uma Shankar wrote:
> Gen9 hardware supports HDMI2.0 through LSPCON chips.
> Extending HDR support for MCA LSPCON based GEN9 devices.
> =

> SOC will drive LSPCON as DP and send HDR metadata as standard
> DP SDP packets. LSPCON will be set to operate in PCON mode,
> will receive the metadata and create Dynamic Range and
> Mastering Infoframe (DRM packets) and send it to HDR capable
> HDMI sink devices.
> =

> v2: Re-used hsw infoframe write implementation for HDR metadata
> for LSPCON as per Ville's suggestion.
> =

> v3: Addressed Jani Nikula's review comments.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c   | 10 ++++++
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 37 +++++++++++++++------
>  drivers/gpu/drm/i915/display/intel_lspcon.h |  5 ++-
>  3 files changed, 40 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 0978b0d8f4c6..1e40ed473fb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -590,6 +590,16 @@ static u32 hsw_infoframes_enabled(struct intel_encod=
er *encoder,
>  	return val & mask;
>  }
>  =

> +void lspcon_drm_write_infoframe(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state,
> +				unsigned int type,
> +				const void *frame, ssize_t len)
> +{
> +	drm_dbg_kms(encoder->base.dev, "Update HDR metadata for lspcon\n");
> +	/* It uses the legacy hsw implementation for the same */
> +	hsw_write_infoframe(encoder, crtc_state, type, frame, len);
> +}

This wrapper seems quite pointless.

> +
>  static const u8 infoframe_type_to_idx[] =3D {
>  	HDMI_PACKET_TYPE_GENERAL_CONTROL,
>  	HDMI_PACKET_TYPE_GAMUT_METADATA,
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 8e8c7a02ab51..5e2d7ca1d20f 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -461,27 +461,42 @@ void lspcon_write_infoframe(struct intel_encoder *e=
ncoder,
>  			    unsigned int type,
>  			    const void *frame, ssize_t len)
>  {
> -	bool ret;
> +	bool ret =3D true;
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	struct intel_lspcon *lspcon =3D enc_to_intel_lspcon(encoder);
>  =

> -	/* LSPCON only needs AVI IF */
> -	if (type !=3D HDMI_INFOFRAME_TYPE_AVI)
> +	/*
> +	 * Supporting HDR on MCA LSPCON
> +	 * Todo: Add support for Parade later
> +	 */
> +	if (type =3D=3D HDMI_PACKET_TYPE_GAMUT_METADATA &&
> +	    lspcon->vendor !=3D LSPCON_VENDOR_MCA)
>  		return;

We shouldn't have the infoframe flagged as enabled if we
don't support it. So this check seems pointless, or there's
a bug somewhere else.

>  =

> -	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> -		ret =3D _lspcon_write_avi_infoframe_mca(&intel_dp->aux,
> -						      frame, len);
> -	else
> -		ret =3D _lspcon_write_avi_infoframe_parade(&intel_dp->aux,
> -							 frame, len);
> +	switch (type) {
> +	case HDMI_INFOFRAME_TYPE_AVI:
> +		if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> +			ret =3D _lspcon_write_avi_infoframe_mca(&intel_dp->aux,
> +							      frame, len);
> +		else
> +			ret =3D _lspcon_write_avi_infoframe_parade(&intel_dp->aux,
> +								 frame, len);
> +		break;
> +	case HDMI_PACKET_TYPE_GAMUT_METADATA:
> +		lspcon_drm_write_infoframe(encoder, crtc_state,
> +					   HDMI_PACKET_TYPE_GAMUT_METADATA,
> +					   frame, VIDEO_DIP_DATA_SIZE);

Why are we hardocoding the parameters here? Just pass them through?

> +		break;
> +	default:
> +		return;
> +	}
>  =

>  	if (!ret) {
> -		DRM_ERROR("Failed to write AVI infoframes\n");
> +		DRM_ERROR("Failed to write infoframes\n");
>  		return;
>  	}
>  =

> -	DRM_DEBUG_DRIVER("AVI infoframes updated successfully\n");
> +	DRM_DEBUG_DRIVER("Infoframes updated successfully\n");

That pointless debug should probably be just nuked.

>  }
>  =

>  void lspcon_read_infoframe(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/dr=
m/i915/display/intel_lspcon.h
> index 1cffe8a42a08..3fac05535731 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -34,5 +34,8 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *enc=
oder,
>  			      const struct intel_crtc_state *pipe_config);
>  void lspcon_ycbcr420_config(struct drm_connector *connector,
>  			    struct intel_crtc_state *crtc_state);
> -
> +void lspcon_drm_write_infoframe(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state,
> +				unsigned int type,
> +				const void *frame, ssize_t len);

I think we ususally leave a blank line here.

>  #endif /* __INTEL_LSPCON_H__ */
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
