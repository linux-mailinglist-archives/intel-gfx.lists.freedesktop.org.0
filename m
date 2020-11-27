Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E43F52C6845
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 15:55:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 383E36EE06;
	Fri, 27 Nov 2020 14:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C4AC6EE06
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 14:55:10 +0000 (UTC)
IronPort-SDR: CUIqx6tyTb8G5cE61l3ksQlcvFQaRRhG/tMzSYaDE6H7BTNAoKN4ibO/nK9B05G7Phe//WiVFR
 DMqD8ZpAfiNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="171620417"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="171620417"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 06:55:09 -0800
IronPort-SDR: j6Jt9NZAYNOt3Y28C3QpWWVSQNYDlGEQ5RrQjEaEhbddL8zAll/JLq8wx7xEDdflIlO0CrP/sC
 4rZh9Tx7wmgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="344240408"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 27 Nov 2020 06:55:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Nov 2020 16:55:07 +0200
Date: Fri, 27 Nov 2020 16:55:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201127145507.GP6112@intel.com>
References: <20201126210314.7882-1-uma.shankar@intel.com>
 <20201126210314.7882-12-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126210314.7882-12-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v12 11/15] drm/i915/lspcon: Create separate
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

On Fri, Nov 27, 2020 at 02:33:10AM +0530, Uma Shankar wrote:
> Lspcon has Infoframes as well as DIP for HDR metadata(DRM Infoframe).
> Create a separate mechanism for lspcon compared to HDMI in order to
> address the same and ensure future scalability.
> =

> v2: Streamlined this as per Ville's suggestions, making sure that
> HDMI infoframe versions are directly returned instead of a redundant
> and confusing DIP overhead.
> =

> Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    | 10 +++++++---
>  drivers/gpu/drm/i915/display/intel_lspcon.c |  9 +++++++++
>  drivers/gpu/drm/i915/display/intel_lspcon.h |  2 ++
>  3 files changed, 18 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 92940a0c5ef8..48da5dc59939 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4583,6 +4583,7 @@ static void intel_ddi_read_func_ctl(struct intel_en=
coder *encoder,
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D pipe_config->cpu_transcoder;
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	u32 temp, flags =3D 0;
>  =

>  	temp =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> @@ -4657,9 +4658,12 @@ static void intel_ddi_read_func_ctl(struct intel_e=
ncoder *encoder,
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
> index 592c19deba00..303f23d35020 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -30,6 +30,7 @@
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_lspcon.h"
> +#include "intel_hdmi.h"

Why do you need that header?

With that potentially removed if it's not needed.
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  =

>  /* LSPCON OUI Vendor ID(signatures) */
>  #define LSPCON_VENDOR_PARADE_OUI 0x001CF8
> @@ -601,6 +602,14 @@ bool lspcon_init(struct intel_digital_port *dig_port)
>  	return true;
>  }
>  =

> +u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *pipe_config)
> +{
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +
> +	return dig_port->infoframes_enabled(encoder, pipe_config);
> +}
> +
>  void lspcon_resume(struct intel_digital_port *dig_port)
>  {
>  	struct intel_lspcon *lspcon =3D &dig_port->lspcon;
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/dr=
m/i915/display/intel_lspcon.h
> index 42ccb21c908f..44aa6bc38512 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -33,6 +33,8 @@ void lspcon_set_infoframes(struct intel_encoder *encode=
r,
>  			   const struct drm_connector_state *conn_state);
>  u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *pipe_config);
> +u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *pipe_config);
>  void hsw_write_infoframe(struct intel_encoder *encoder,
>  			 const struct intel_crtc_state *crtc_state,
>  			 unsigned int type,
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
