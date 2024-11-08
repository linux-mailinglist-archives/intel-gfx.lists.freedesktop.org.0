Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9AF9C1DB3
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:14:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044B010E11E;
	Fri,  8 Nov 2024 13:14:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gi0ofT3L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378DB10E11E
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 13:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731071658; x=1762607658;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=vF5bg0YNdMUc9PsuELCg/YTKcbr7NDdhfLD/a8oZwbU=;
 b=gi0ofT3LLla9l4gLhV4iFRmNbDuKM4qEgyuKRdAIzxqbf5X8zr8KinEZ
 XdZPKopmT2fRcjsnMiBA5SZ4jWCnHQkaR+KpAYGjwQmxw9OE2qqVdT93a
 q9vDcXR+r61wTOT6op8R8qeKqzY/ZyocvSpb92NQk8C8seZ1AlgL0vsoz
 Z1SRmEHNhmEoMg0fg/Lz377U1TC8CD1h4goQhinenIypkyQrIDI1m8O+y
 60YZvbqvUlhAtcUPf5UEC57st3PT31GL+vePZA6/dCKbeetvxEhN78hJr
 52TIV0Xf5ACjgDSnGsX9bpj0eEjBCz/LIwUAZq8r2AVDgYoXyk/M9EJCA A==;
X-CSE-ConnectionGUID: ct5re+ybTk+1sA+rWiHA8A==
X-CSE-MsgGUID: Efh5J/fjSlOlnVeL5XtT+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="48467687"
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="48467687"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:14:18 -0800
X-CSE-ConnectionGUID: G3WACFWWTmCV4JPtmwTZbg==
X-CSE-MsgGUID: GpW8PAGIQByEJ/wm1A9Rrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="89513064"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.252])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:14:16 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 07/10] drm/i915/crt: s/pipe_config/crtc_state/
In-Reply-To: <20241107161123.16269-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
 <20241107161123.16269-8-ville.syrjala@linux.intel.com>
Date: Fri, 08 Nov 2024 15:14:13 +0200
Message-ID: <87ed3leul6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 07 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Call the crtc state 'crtc_state' rather than 'pipe_config',
> as is the modern style.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crt.c | 62 ++++++++++++------------
>  1 file changed, 31 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 4784a858b4a2..0962a239288b 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -150,27 +150,27 @@ static unsigned int intel_crt_get_flags(struct inte=
l_encoder *encoder)
>  }
>=20=20
>  static void intel_crt_get_config(struct intel_encoder *encoder,
> -				 struct intel_crtc_state *pipe_config)
> +				 struct intel_crtc_state *crtc_state)
>  {
> -	pipe_config->output_types |=3D BIT(INTEL_OUTPUT_ANALOG);
> +	crtc_state->output_types |=3D BIT(INTEL_OUTPUT_ANALOG);
>=20=20
> -	pipe_config->hw.adjusted_mode.flags |=3D intel_crt_get_flags(encoder);
> +	crtc_state->hw.adjusted_mode.flags |=3D intel_crt_get_flags(encoder);
>=20=20
> -	pipe_config->hw.adjusted_mode.crtc_clock =3D pipe_config->port_clock;
> +	crtc_state->hw.adjusted_mode.crtc_clock =3D crtc_state->port_clock;
>  }
>=20=20
>  static void hsw_crt_get_config(struct intel_encoder *encoder,
> -			       struct intel_crtc_state *pipe_config)
> +			       struct intel_crtc_state *crtc_state)
>  {
> -	lpt_pch_get_config(pipe_config);
> +	lpt_pch_get_config(crtc_state);
>=20=20
> -	hsw_ddi_get_config(encoder, pipe_config);
> +	hsw_ddi_get_config(encoder, crtc_state);
>=20=20
> -	pipe_config->hw.adjusted_mode.flags &=3D ~(DRM_MODE_FLAG_PHSYNC |
> -					      DRM_MODE_FLAG_NHSYNC |
> -					      DRM_MODE_FLAG_PVSYNC |
> -					      DRM_MODE_FLAG_NVSYNC);
> -	pipe_config->hw.adjusted_mode.flags |=3D intel_crt_get_flags(encoder);
> +	crtc_state->hw.adjusted_mode.flags &=3D ~(DRM_MODE_FLAG_PHSYNC |
> +						DRM_MODE_FLAG_NHSYNC |
> +						DRM_MODE_FLAG_PVSYNC |
> +						DRM_MODE_FLAG_NVSYNC);
> +	crtc_state->hw.adjusted_mode.flags |=3D intel_crt_get_flags(encoder);
>  }
>=20=20
>  /* Note: The caller is required to filter out dpms modes not supported b=
y the
> @@ -408,48 +408,48 @@ intel_crt_mode_valid(struct drm_connector *connecto=
r,
>  }
>=20=20
>  static int intel_crt_compute_config(struct intel_encoder *encoder,
> -				    struct intel_crtc_state *pipe_config,
> +				    struct intel_crtc_state *crtc_state,
>  				    struct drm_connector_state *conn_state)
>  {
>  	struct drm_display_mode *adjusted_mode =3D
> -		&pipe_config->hw.adjusted_mode;
> +		&crtc_state->hw.adjusted_mode;
>=20=20
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>=20=20
> -	pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> -	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> +	crtc_state->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> +	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
>=20=20
>  	return 0;
>  }
>=20=20
>  static int pch_crt_compute_config(struct intel_encoder *encoder,
> -				  struct intel_crtc_state *pipe_config,
> +				  struct intel_crtc_state *crtc_state,
>  				  struct drm_connector_state *conn_state)
>  {
>  	struct drm_display_mode *adjusted_mode =3D
> -		&pipe_config->hw.adjusted_mode;
> +		&crtc_state->hw.adjusted_mode;
>=20=20
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>=20=20
> -	pipe_config->has_pch_encoder =3D true;
> -	if (!intel_fdi_compute_pipe_bpp(pipe_config))
> +	crtc_state->has_pch_encoder =3D true;
> +	if (!intel_fdi_compute_pipe_bpp(crtc_state))
>  		return -EINVAL;
>=20=20
> -	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> +	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
>=20=20
>  	return 0;
>  }
>=20=20
>  static int hsw_crt_compute_config(struct intel_encoder *encoder,
> -				  struct intel_crtc_state *pipe_config,
> +				  struct intel_crtc_state *crtc_state,
>  				  struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct drm_display_mode *adjusted_mode =3D
> -		&pipe_config->hw.adjusted_mode;
> +		&crtc_state->hw.adjusted_mode;
>=20=20
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
> @@ -459,30 +459,30 @@ static int hsw_crt_compute_config(struct intel_enco=
der *encoder,
>  	    adjusted_mode->crtc_hblank_start > 4096)
>  		return -EINVAL;
>=20=20
> -	pipe_config->has_pch_encoder =3D true;
> -	if (!intel_fdi_compute_pipe_bpp(pipe_config))
> +	crtc_state->has_pch_encoder =3D true;
> +	if (!intel_fdi_compute_pipe_bpp(crtc_state))
>  		return -EINVAL;
>=20=20
> -	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> +	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
>=20=20
>  	/* LPT FDI RX only supports 8bpc. */
>  	if (HAS_PCH_LPT(dev_priv)) {
>  		/* TODO: Check crtc_state->max_link_bpp_x16 instead of bw_constrained =
*/
> -		if (pipe_config->bw_constrained && pipe_config->pipe_bpp < 24) {
> +		if (crtc_state->bw_constrained && crtc_state->pipe_bpp < 24) {
>  			drm_dbg_kms(display->drm,
>  				    "LPT only supports 24bpp\n");
>  			return -EINVAL;
>  		}
>=20=20
> -		pipe_config->pipe_bpp =3D 24;
> +		crtc_state->pipe_bpp =3D 24;
>  	}
>=20=20
>  	/* FDI must always be 2.7 GHz */
> -	pipe_config->port_clock =3D 135000 * 2;
> +	crtc_state->port_clock =3D 135000 * 2;
>=20=20
> -	pipe_config->enhanced_framing =3D true;
> +	crtc_state->enhanced_framing =3D true;
>=20=20
> -	adjusted_mode->crtc_clock =3D lpt_iclkip(pipe_config);
> +	adjusted_mode->crtc_clock =3D lpt_iclkip(crtc_state);
>=20=20
>  	return 0;
>  }

--=20
Jani Nikula, Intel
