Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A13666E7E41
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 17:29:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E1210E110;
	Wed, 19 Apr 2023 15:29:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BAD910E110
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 15:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681918149; x=1713454149;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=8NX1KuFNTDhFzpxLf7nGv+7nM6WvLfgMrpZhCPxe8ec=;
 b=aYEMwksWXPPTtDvGsrCAL5OQwhEguX7fPXVvUcWklfmGY8KRKecSl8R/
 TtfUNtef9xGekkSZrlWq3JkGn8+i/Wklxqv3o8KU0vQGcEsKM6iDcRbYh
 Uycq2QUy+sNdSrhujv4u5CODOkDRhuqlf/ClXh+xhQE18+R0Nzm3FzMCd
 PFOwg5FlzZ5IRpGLla3XhQmyOgJkhq46MIKN3+RqHddevvkrvEgHbrNjn
 IqbnTsC7ne96VRdyq1PYpYYyr+02cAPl1Y/aJiQyQ66DsE1qy83JKF3JE
 X3sWwNGNCOR/uiG/BggB8n1ioPEkcGxu9RRdC4T1btmjIij3hGG6SNo1/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="431759569"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="431759569"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:28:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="835347888"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="835347888"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:28:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230418175528.13117-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
 <20230418175528.13117-7-ville.syrjala@linux.intel.com>
Date: Wed, 19 Apr 2023 18:28:47 +0300
Message-ID: <874jpbzya8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/15] drm/i915: Namespace pfit registers
 properly
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

On Tue, 18 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Give the PFIT_CONTROL bits a consistent namespace.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_lvds.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_overlay.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c   | 25 ++++++++++----------
>  drivers/gpu/drm/i915/i915_reg.h              | 14 +++++------
>  4 files changed, 22 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 0de44b3631cd..8e9a3d72b83b 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -150,7 +150,7 @@ static void intel_lvds_get_config(struct intel_encode=
r *encoder,
>  	if (DISPLAY_VER(dev_priv) < 4) {
>  		tmp =3D intel_de_read(dev_priv, PFIT_CONTROL);
>=20=20
> -		crtc_state->gmch_pfit.control |=3D tmp & PANEL_8TO6_DITHER_ENABLE;
> +		crtc_state->gmch_pfit.control |=3D tmp & PFIT_PANEL_8TO6_DITHER_ENABLE;
>  	}
>=20=20
>  	crtc_state->hw.adjusted_mode.crtc_clock =3D crtc_state->port_clock;
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/d=
rm/i915/display/intel_overlay.c
> index 1813ab5056a1..d6fe2bbabe55 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -948,7 +948,7 @@ static void update_pfit_vscale_ratio(struct intel_ove=
rlay *overlay)
>  	} else {
>  		u32 tmp;
>=20=20
> -		if (intel_de_read(dev_priv, PFIT_CONTROL) & VERT_AUTO_SCALE)
> +		if (intel_de_read(dev_priv, PFIT_CONTROL) & PFIT_VERT_AUTO_SCALE)
>  			tmp =3D intel_de_read(dev_priv, PFIT_AUTO_RATIOS);
>  		else
>  			tmp =3D intel_de_read(dev_priv, PFIT_PGM_RATIOS);
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 71cd08f44ed0..9232a305b1e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -567,8 +567,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state=
 *crtc_state,
>  			*pfit_pgm_ratios |=3D (PFIT_HORIZ_SCALE(bits) |
>  					     PFIT_VERT_SCALE(bits));
>  			*pfit_control |=3D (PFIT_ENABLE |
> -					  VERT_INTERP_BILINEAR |
> -					  HORIZ_INTERP_BILINEAR);
> +					  PFIT_VERT_INTERP_BILINEAR |
> +					  PFIT_HORIZ_INTERP_BILINEAR);
>  		}
>  	} else if (scaled_width < scaled_height) { /* letter */
>  		centre_vertically(adjusted_mode,
> @@ -582,15 +582,16 @@ static void i9xx_scale_aspect(struct intel_crtc_sta=
te *crtc_state,
>  			*pfit_pgm_ratios |=3D (PFIT_HORIZ_SCALE(bits) |
>  					     PFIT_VERT_SCALE(bits));
>  			*pfit_control |=3D (PFIT_ENABLE |
> -					  VERT_INTERP_BILINEAR |
> -					  HORIZ_INTERP_BILINEAR);
> +					  PFIT_VERT_INTERP_BILINEAR |
> +					  PFIT_HORIZ_INTERP_BILINEAR);
>  		}
>  	} else {
>  		/* Aspects match, Let hw scale both directions */
>  		*pfit_control |=3D (PFIT_ENABLE |
> -				  VERT_AUTO_SCALE | HORIZ_AUTO_SCALE |
> -				  VERT_INTERP_BILINEAR |
> -				  HORIZ_INTERP_BILINEAR);
> +				  PFIT_VERT_AUTO_SCALE |
> +				  PFIT_HORIZ_AUTO_SCALE |
> +				  PFIT_VERT_INTERP_BILINEAR |
> +				  PFIT_HORIZ_INTERP_BILINEAR);
>  	}
>  }
>=20=20
> @@ -638,10 +639,10 @@ static int gmch_panel_fitting(struct intel_crtc_sta=
te *crtc_state,
>  			if (DISPLAY_VER(dev_priv) >=3D 4)
>  				pfit_control |=3D PFIT_SCALING_AUTO;
>  			else
> -				pfit_control |=3D (VERT_AUTO_SCALE |
> -						 VERT_INTERP_BILINEAR |
> -						 HORIZ_AUTO_SCALE |
> -						 HORIZ_INTERP_BILINEAR);
> +				pfit_control |=3D (PFIT_VERT_AUTO_SCALE |
> +						 PFIT_VERT_INTERP_BILINEAR |
> +						 PFIT_HORIZ_AUTO_SCALE |
> +						 PFIT_HORIZ_INTERP_BILINEAR);
>  		}
>  		break;
>  	default:
> @@ -662,7 +663,7 @@ static int gmch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>=20=20
>  	/* Make sure pre-965 set dither correctly for 18bpp panels. */
>  	if (DISPLAY_VER(dev_priv) < 4 && crtc_state->pipe_bpp =3D=3D 18)
> -		pfit_control |=3D PANEL_8TO6_DITHER_ENABLE;
> +		pfit_control |=3D PFIT_PANEL_8TO6_DITHER_ENABLE;
>=20=20
>  	crtc_state->gmch_pfit.control =3D pfit_control;
>  	crtc_state->gmch_pfit.pgm_ratios =3D pfit_pgm_ratios;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index cb8611aaaa5e..eea739e0b48a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2349,13 +2349,13 @@
>  #define   PFIT_FILTER_FUZZY		REG_FIELD_PREP(PFIT_FILTER_MASK, 0)
>  #define   PFIT_FILTER_CRISP		REG_FIELD_PREP(PFIT_FILTER_MASK, 1)
>  #define   PFIT_FILTER_MEDIAN		REG_FIELD_PREP(PFIT_FILTER_MASK, 2)
> -#define   VERT_INTERP_MASK		REG_GENMASK(11, 10) /* pre-965 */
> -#define   VERT_INTERP_BILINEAR		REG_FIELD_PREP(VERT_INTERP_MASK, 1)
> -#define   VERT_AUTO_SCALE		REG_BIT(9) /* pre-965 */
> -#define   HORIZ_INTERP_MASK		REG_GENMASK(7, 6) /* pre-965 */
> -#define   HORIZ_INTERP_BILINEAR		REG_FIELD_PREP(HORIZ_INTERP_MASK, 1)
> -#define   HORIZ_AUTO_SCALE		REG_BIT(5) /* pre-965 */
> -#define   PANEL_8TO6_DITHER_ENABLE	REG_BIT(3) /* pre-965 */
> +#define   PFIT_VERT_INTERP_MASK		REG_GENMASK(11, 10) /* pre-965 */
> +#define   PFIT_VERT_INTERP_BILINEAR	REG_FIELD_PREP(PFIT_VERT_INTERP_MASK=
, 1)
> +#define   PFIT_VERT_AUTO_SCALE		REG_BIT(9) /* pre-965 */
> +#define   PFIT_HORIZ_INTERP_MASK	REG_GENMASK(7, 6) /* pre-965 */
> +#define   PFIT_HORIZ_INTERP_BILINEAR	REG_FIELD_PREP(PFIT_HORIZ_INTERP_MA=
SK, 1)
> +#define   PFIT_HORIZ_AUTO_SCALE		REG_BIT(5) /* pre-965 */
> +#define   PFIT_PANEL_8TO6_DITHER_ENABLE	REG_BIT(3) /* pre-965 */
>=20=20
>  #define PFIT_PGM_RATIOS _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61234)
>  #define   PFIT_VERT_SCALE_MASK		REG_GENMASK(31, 20) /* pre-965 */

--=20
Jani Nikula, Intel Open Source Graphics Center
