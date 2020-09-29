Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0634027D37C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 18:20:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70BF66E554;
	Tue, 29 Sep 2020 16:20:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24DBC6E554
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 16:20:48 +0000 (UTC)
IronPort-SDR: X7tGszM4tjOokRcwKNmCJlmVTSyHtiakW19RJOrAdGh0TakxPXdq8gIRBpMh88va3/1LiqhtdW
 GgyyTwku7JlA==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="246959636"
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="246959636"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 09:20:44 -0700
IronPort-SDR: jl0rX/cGO3WJE4GGJiW/dzoHxhBTSpvrkIk0WCvsaZ0WJCya7rcctodV/1a4mTx4O/xDR9lk46
 uU8YjB2RjIUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="384846675"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 29 Sep 2020 09:20:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Sep 2020 19:20:38 +0300
Date: Tue, 29 Sep 2020 19:20:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20200929162038.GD6112@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
 <20200914210047.11972-7-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914210047.11972-7-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v6 06/11] drm/i915/display: Implement infoframes
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

On Tue, Sep 15, 2020 at 02:30:42AM +0530, Uma Shankar wrote:
> Implemented Infoframes enabled readback for LSPCON devices.
> This will help align the implementation with state readback
> infrastructure.
> =

> v2: Added proper bitmask of enabled infoframes as per Ville's
> recommendation.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 57 ++++++++++++++++++++-
>  1 file changed, 55 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 60863b825cc5..565913b8e656 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -576,11 +576,64 @@ void lspcon_set_infoframes(struct intel_encoder *en=
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
> +		val |=3D VIDEO_DIP_ENABLE_AVI_HSW;

Still not a fan of abusing the HSW specific reg values here.

> +
> +	if (lspcon->hdr_supported) {
> +		tmp =3D intel_de_read(dev_priv,
> +				    HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
> +		mask =3D VIDEO_DIP_ENABLE_GMP_HSW;
> +
> +		if (tmp & mask)
> +			val |=3D mask;
> +	}
> +
> +	return val;
>  }
>  =

>  void lspcon_resume(struct intel_lspcon *lspcon)
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
