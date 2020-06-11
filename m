Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C891F6B79
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 17:47:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9711A6E82C;
	Thu, 11 Jun 2020 15:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E48726E82C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 15:47:11 +0000 (UTC)
IronPort-SDR: yhOjEtvB0sucXHkigiM7MwERaK30vMSPxYwWfzP9Yj7lZtTcpUgWzvpIGI2505+MGfel5kclvO
 xS5I3vvA4nMw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 08:46:54 -0700
IronPort-SDR: SA+uYlW4DbdDgCK/C2KJpMkUXXmerDqhTVqeWzBMsSFaF+bIpByHdeR5Sa4ye4lZEZY+X9rMhi
 mGL2h3ODSV7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="260543007"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 11 Jun 2020 08:46:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jun 2020 18:46:50 +0300
Date: Thu, 11 Jun 2020 18:46:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20200611154650.GB6112@intel.com>
References: <20200610191232.11620-1-uma.shankar@intel.com>
 <20200610191232.11620-7-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610191232.11620-7-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v3 6/8] drm/i915/display: Implement infoframes
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

On Thu, Jun 11, 2020 at 12:42:30AM +0530, Uma Shankar wrote:
> Implemented Infoframes enabled readback for LSPCON devices.
> This will help align the implementation with state readback
> infrastructure.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 63 ++++++++++++++++++++-
>  1 file changed, 61 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 9034ce6f20b9..0ebe9a700291 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -576,11 +576,70 @@ void lspcon_set_infoframes(struct intel_encoder *en=
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
> +	if (val & LSPCON_MCA_AVI_IF_KICKOFF)
> +		return true;
> +
> +	return false;

return val & ...;

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
> +	if (val & LSPCON_PARADE_AVI_IF_KICKOFF)
> +		return true;
> +
> +	return false;
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
> +	u32 mask =3D 0;
> +	u32 val;
> +
> +	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> +		infoframes_enabled =3D _lspcon_read_avi_infoframe_enabled_mca(&intel_d=
p->aux);
> +	else
> +		infoframes_enabled =3D _lspcon_read_avi_infoframe_enabled_parade(&inte=
l_dp->aux);
> +
> +	if (infoframes_enabled)
> +		return true;

This is supposed to return a bitmask of all enabled infoframes.

Also my question "how do we turn off infoframes once enabled?"
from https://patchwork.freedesktop.org/patch/351719/?series=3D72928&rev=3D1
still remains unanswered...

> +
> +	if (lspcon->hdr_supported) {
> +		val =3D intel_de_read(dev_priv,
> +				    HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
> +		mask |=3D VIDEO_DIP_ENABLE_GMP_HSW;
> +
> +		if (val & mask)
> +			return val & mask;
> +	}
> +
> +	return false;
>  }
>  =

>  void lspcon_resume(struct intel_lspcon *lspcon)
> -- =

> 2.22.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
