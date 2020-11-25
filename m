Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7644D2C45A7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:46:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF7346EA2E;
	Wed, 25 Nov 2020 16:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 902C26EA2E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:46:15 +0000 (UTC)
IronPort-SDR: oePEc/wnL+j9XMgVQ/ez5VzeXC/WEA+8rPR1Ldg8G65ho1Vj5Qzed0BDrtKCy82CNTFeJJ6r2V
 XYzY0in4eRwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="256872875"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="256872875"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 08:46:14 -0800
IronPort-SDR: wX1FOKIpG79ZaxwrDTUMZugrVWZsk/sObCIRRp1vzh9nQawprCz5/6jGBkBHN5SQ3z01vt57+4
 9UZxJMwrE3yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="370936614"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 25 Nov 2020 08:46:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Nov 2020 18:46:01 +0200
Date: Wed, 25 Nov 2020 18:46:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201125164601.GW6112@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
 <20201103152834.12727-9-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103152834.12727-9-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v9 08/12] drm/i915/display: Implement infoframes
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

On Tue, Nov 03, 2020 at 08:58:30PM +0530, Uma Shankar wrote:
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

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 57 ++++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_reg.h             |  2 +
>  2 files changed, 57 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 0cd3e0853cbf..d83e1d220658 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -567,11 +567,64 @@ void lspcon_set_infoframes(struct intel_encoder *en=
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
> +		val |=3D VIDEO_DIP_ENABLE_AVI_PCON;
> +
> +	if (lspcon->hdr_supported) {
> +		tmp =3D intel_de_read(dev_priv,
> +				    HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
> +		mask =3D VIDEO_DIP_ENABLE_GMP_PCON;
> +
> +		if (tmp & mask)
> +			val |=3D mask;
> +	}
> +
> +	return val;
>  }
>  =

>  void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index bb0656875697..465ec00afbff 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5084,6 +5084,8 @@ enum {
>  #define   VIDEO_DIP_ENABLE_VS_HSW	(1 << 8)
>  #define   VIDEO_DIP_ENABLE_GMP_HSW	(1 << 4)
>  #define   VIDEO_DIP_ENABLE_SPD_HSW	(1 << 0)
> +#define   VIDEO_DIP_ENABLE_AVI_PCON	(1 << 12)
> +#define   VIDEO_DIP_ENABLE_GMP_PCON	(1 << 4)

I meant that we should just directly use
HDMI_INFOFRAME_TYPE_AVI/etc. instead of pretending
we're talking about the video DIP bits.

>  =

>  /* Panel power sequencing */
>  #define PPS_BASE			0x61200
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
