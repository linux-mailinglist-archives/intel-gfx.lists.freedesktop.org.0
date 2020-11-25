Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D722C460B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:56:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64526EA37;
	Wed, 25 Nov 2020 16:56:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBEE06EA37
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:56:07 +0000 (UTC)
IronPort-SDR: tJfwHdXOdpri3JlXSHq/5meYGjkEMe81beoLJ5P0PuRWaMAj6GQpunJdFXsWrIFBEmChaDnhoN
 302lkKU3Rlqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="159934217"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="159934217"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 08:56:07 -0800
IronPort-SDR: uvwaPoIIUYVN+MwDUuC7NACGdXSpkmmQGxFIHSSGLFGeUTh2Gm57lXjzgqPrI+TILcg+EYxOOM
 qt2eGGdKnKVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="343638101"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 25 Nov 2020 08:56:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Nov 2020 18:56:04 +0200
Date: Wed, 25 Nov 2020 18:56:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201125165604.GY6112@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
 <20201103152834.12727-11-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103152834.12727-11-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v9 10/12] drm/i915/lspcon: Create separate
 infoframe_enabled helper
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

On Tue, Nov 03, 2020 at 08:58:32PM +0530, Uma Shankar wrote:
> Lspcon has Infoframes as well as DIP for HDR metadata(DRM Infoframe).
> Create a separate mechanism for lspcon compared to HDMI in order to
> address the same and ensure future scalability.
> =

> Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    | 10 +++++++---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_lspcon.h |  2 ++
>  3 files changed, 27 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 19b16517a502..d50dd1f1292a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4402,6 +4402,7 @@ void intel_ddi_get_config(struct intel_encoder *enc=
oder,
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D pipe_config->cpu_transcoder;
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	u32 temp, flags =3D 0;
>  =

>  	/* XXX: DSI transcoder paranoia */
> @@ -4482,9 +4483,12 @@ void intel_ddi_get_config(struct intel_encoder *en=
coder,
>  				    pipe_config->fec_enable);
>  		}
>  =

> -		pipe_config->infoframes.enable |=3D
> -			intel_hdmi_infoframes_enabled(encoder, pipe_config);
> -
> +		if (dig_port->lspcon.active && dig_port->dp.has_hdmi_sink)
> +			pipe_config->infoframes.enable |=3D
> +				intel_lspcon_infoframes_enabled(encoder, pipe_config);
> +		else
> +			pipe_config->infoframes.enable |=3D
> +				intel_hdmi_infoframes_enabled(encoder, pipe_config);
>  		break;
>  	case TRANS_DDI_MODE_SELECT_DP_MST:
>  		pipe_config->output_types |=3D BIT(INTEL_OUTPUT_DP_MST);
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 8a4fd8ca8016..9c8dfd2fb949 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -30,6 +30,7 @@
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_lspcon.h"
> +#include "intel_hdmi.h"
>  =

>  /* LSPCON OUI Vendor ID(signatures) */
>  #define LSPCON_VENDOR_PARADE_OUI 0x001CF8
> @@ -667,6 +668,23 @@ bool lspcon_init(struct intel_digital_port *dig_port)
>  	return true;
>  }
>  =

> +u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *pipe_config)
> +{
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	u32 val, enabled =3D 0;
> +
> +	val =3D dig_port->infoframes_enabled(encoder, pipe_config);
> +
> +	if (val & VIDEO_DIP_ENABLE_AVI_HSW)

So this is the function I figured should allow us to not to pretend to
use the video DIP bits.

I ttink the actual lspcon infoframes_enabled() could just directly use
intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI) etc. instead
of doing this extra remapping here.

> +		enabled |=3D intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI);
> +
> +	if (val & VIDEO_DIP_ENABLE_GMP_HSW)
> +		enabled |=3D intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADA=
TA);
> +
> +	return enabled;
> +}
> +
>  void lspcon_resume(struct intel_digital_port *dig_port)
>  {
>  	struct intel_lspcon *lspcon =3D &dig_port->lspcon;
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/dr=
m/i915/display/intel_lspcon.h
> index d622156d0c4e..e92735408443 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -41,5 +41,7 @@ void hsw_read_infoframe(struct intel_encoder *encoder,
>  			const struct intel_crtc_state *crtc_state,
>  			unsigned int type,
>  			void *frame, ssize_t len);
> +u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *pipe_config);
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
