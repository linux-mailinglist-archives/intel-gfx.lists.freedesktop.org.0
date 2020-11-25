Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8F62C455A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:37:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378AB6EA38;
	Wed, 25 Nov 2020 16:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F08D16EA2E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:37:23 +0000 (UTC)
IronPort-SDR: 9Ta7PLwjpbYgAa0OnZvrl2tkdujmsmFYPzOdL0eTuEAFE2rYZJv5XAPlhmao+JyvQQIDGtot7y
 lsFI1NggKoYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168653341"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="168653341"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 08:37:06 -0800
IronPort-SDR: 0bY+rVZ4wbNbdQdhDqofse03sCnHsOxxQZdHpNa15GgZgKy/T8Tj65VhQf3LS/OMqP6Sr4utv3
 11pQeHyl/j9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="433020435"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 25 Nov 2020 08:37:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Nov 2020 18:37:04 +0200
Date: Wed, 25 Nov 2020 18:37:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201125163704.GT6112@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
 <20201103152834.12727-3-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103152834.12727-3-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v9 02/12] drm/i915/display: Enable HDR on gen9
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

On Tue, Nov 03, 2020 at 08:58:24PM +0530, Uma Shankar wrote:
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

> v4: Addressed Ville's review comments, removed redundant wrapper
> and checks, passed arguments instead of hardcodings.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c   |  8 +++---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 31 ++++++++++++---------
>  drivers/gpu/drm/i915/display/intel_lspcon.h |  4 +++
>  3 files changed, 26 insertions(+), 17 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index f90838bc74fb..8e4b820b715a 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -518,10 +518,10 @@ static u32 vlv_infoframes_enabled(struct intel_enco=
der *encoder,
>  		      VIDEO_DIP_ENABLE_SPD | VIDEO_DIP_ENABLE_GCP);
>  }
>  =

> -static void hsw_write_infoframe(struct intel_encoder *encoder,
> -				const struct intel_crtc_state *crtc_state,
> -				unsigned int type,
> -				const void *frame, ssize_t len)
> +void hsw_write_infoframe(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state,
> +			 unsigned int type,
> +			 const void *frame, ssize_t len)
>  {
>  	const u32 *data =3D frame;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 076b21885a30..46565ae555b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -446,27 +446,32 @@ void lspcon_write_infoframe(struct intel_encoder *e=
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
> +		drm_dbg_kms(encoder->base.dev, "Update HDR metadata for lspcon\n");
> +		/* It uses the legacy hsw implementation for the same */
> +		hsw_write_infoframe(encoder, crtc_state, type, frame, len);
> +		break;
> +	default:
>  		return;
> -
> -	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> -		ret =3D _lspcon_write_avi_infoframe_mca(&intel_dp->aux,
> -						      frame, len);
> -	else
> -		ret =3D _lspcon_write_avi_infoframe_parade(&intel_dp->aux,
> -							 frame, len);
> +	}
>  =

>  	if (!ret) {
> -		DRM_ERROR("Failed to write AVI infoframes\n");
> +		DRM_ERROR("Failed to write infoframes\n");
>  		return;
>  	}
> -
> -	DRM_DEBUG_DRIVER("AVI infoframes updated successfully\n");
>  }
>  =

>  void lspcon_read_infoframe(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/dr=
m/i915/display/intel_lspcon.h
> index a19b3564c635..98043ba50dd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -32,5 +32,9 @@ void lspcon_set_infoframes(struct intel_encoder *encode=
r,
>  			   const struct drm_connector_state *conn_state);
>  u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *pipe_config);
> +void hsw_write_infoframe(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state,
> +			 unsigned int type,
> +			 const void *frame, ssize_t len);
>  =

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
