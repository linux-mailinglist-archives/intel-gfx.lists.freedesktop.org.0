Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D44C16E7E3D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 17:28:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898A210E052;
	Wed, 19 Apr 2023 15:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49E4A89125
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 15:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681918099; x=1713454099;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=S6jZMjtzExwpQ0D0+GIfWCROtIrXrhujO3l8FvBBAEs=;
 b=E5J6e0DtThesb3fsLQPTPKhABSWxlljsif5UmTuNKoZV0rtoSdpePgvW
 FJ4L/tXGKyYTlsjPFCTRf94HBjKOScreRmQG7Q+VBtWoqqmCZ0f+Ayr6s
 qe2uKimLpdMhYrawdj5hamQmenjzuB9j3hunRVHcWBi3+A7D0skHbB5p1
 zB3ZoDIpMmg/oFexER3PUoZ3HoIM9suu3aO6StW0p87e/h+SAnXCw6NYV
 cjwhCXUh8v6Srt6xC1ne09s0Axjnc7fvIl2j7f/BD5GCvDnvWsi5bNiHO
 TymyRGxuULgrA+lTnzFmt9TWToTLBYLePpAP/QT7UJ+FDNhywimyj5it1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="329653699"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="329653699"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:28:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="815655409"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="815655409"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:28:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230418175528.13117-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
 <20230418175528.13117-6-ville.syrjala@linux.intel.com>
Date: Wed, 19 Apr 2023 18:28:15 +0300
Message-ID: <877cu7zyb4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/15] drm/i915: Use REG_BIT() & co for the
 pre-ilk pfit registers
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
> Modernize the gmch pfit register definitions using REG_BIT/etc.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 15 +++---
>  drivers/gpu/drm/i915/display/intel_overlay.c | 16 +++---
>  drivers/gpu/drm/i915/display/intel_panel.c   |  8 +--
>  drivers/gpu/drm/i915/i915_reg.h              | 54 ++++++++++----------
>  4 files changed, 48 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index a450d62e431c..ea1b0e87ae35 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2749,6 +2749,7 @@ static void i9xx_get_pfit_config(struct intel_crtc_=
state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum pipe pipe;
>  	u32 tmp;
>=20=20
>  	if (!i9xx_has_pfit(dev_priv))
> @@ -2759,13 +2760,13 @@ static void i9xx_get_pfit_config(struct intel_crt=
c_state *crtc_state)
>  		return;
>=20=20
>  	/* Check whether the pfit is attached to our pipe. */
> -	if (DISPLAY_VER(dev_priv) < 4) {
> -		if (crtc->pipe !=3D PIPE_B)
> -			return;
> -	} else {
> -		if ((tmp & PFIT_PIPE_MASK) !=3D (crtc->pipe << PFIT_PIPE_SHIFT))
> -			return;
> -	}
> +	if (DISPLAY_VER(dev_priv) >=3D 4)
> +		pipe =3D REG_FIELD_GET(PFIT_PIPE_MASK, tmp);
> +	else
> +		pipe =3D PIPE_B;
> +
> +	if (pipe !=3D crtc->pipe)
> +		return;
>=20=20
>  	crtc_state->gmch_pfit.control =3D tmp;
>  	crtc_state->gmch_pfit.pgm_ratios =3D
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/d=
rm/i915/display/intel_overlay.c
> index c12bdca8da9b..1813ab5056a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -935,21 +935,25 @@ static int check_overlay_possible_on_crtc(struct in=
tel_overlay *overlay,
>  static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
>  {
>  	struct drm_i915_private *dev_priv =3D overlay->i915;
> -	u32 pfit_control =3D intel_de_read(dev_priv, PFIT_CONTROL);
>  	u32 ratio;
>=20=20
>  	/* XXX: This is not the same logic as in the xorg driver, but more in
>  	 * line with the intel documentation for the i965
>  	 */
>  	if (DISPLAY_VER(dev_priv) >=3D 4) {
> +		u32 tmp =3D intel_de_read(dev_priv, PFIT_PGM_RATIOS);
> +
>  		/* on i965 use the PGM reg to read out the autoscaler values */
> -		ratio =3D intel_de_read(dev_priv, PFIT_PGM_RATIOS) >> PFIT_VERT_SCALE_=
SHIFT_965;
> +		ratio =3D REG_FIELD_GET(PFIT_VERT_SCALE_MASK_965, tmp);
>  	} else {
> -		if (pfit_control & VERT_AUTO_SCALE)
> -			ratio =3D intel_de_read(dev_priv, PFIT_AUTO_RATIOS);
> +		u32 tmp;
> +
> +		if (intel_de_read(dev_priv, PFIT_CONTROL) & VERT_AUTO_SCALE)
> +			tmp =3D intel_de_read(dev_priv, PFIT_AUTO_RATIOS);
>  		else
> -			ratio =3D intel_de_read(dev_priv, PFIT_PGM_RATIOS);
> -		ratio >>=3D PFIT_VERT_SCALE_SHIFT;
> +			tmp =3D intel_de_read(dev_priv, PFIT_PGM_RATIOS);
> +
> +		ratio =3D REG_FIELD_GET(PFIT_VERT_SCALE_MASK, tmp);
>  	}
>=20=20
>  	overlay->pfit_vscale_ratio =3D ratio;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 9acdd68b2dbc..71cd08f44ed0 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -564,8 +564,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state=
 *crtc_state,
>  			bits =3D panel_fitter_scaling(pipe_src_h,
>  						    adjusted_mode->crtc_vdisplay);
>=20=20
> -			*pfit_pgm_ratios |=3D (bits << PFIT_HORIZ_SCALE_SHIFT |
> -					     bits << PFIT_VERT_SCALE_SHIFT);
> +			*pfit_pgm_ratios |=3D (PFIT_HORIZ_SCALE(bits) |
> +					     PFIT_VERT_SCALE(bits));
>  			*pfit_control |=3D (PFIT_ENABLE |
>  					  VERT_INTERP_BILINEAR |
>  					  HORIZ_INTERP_BILINEAR);
> @@ -579,8 +579,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state=
 *crtc_state,
>  			bits =3D panel_fitter_scaling(pipe_src_w,
>  						    adjusted_mode->crtc_hdisplay);
>=20=20
> -			*pfit_pgm_ratios |=3D (bits << PFIT_HORIZ_SCALE_SHIFT |
> -					     bits << PFIT_VERT_SCALE_SHIFT);
> +			*pfit_pgm_ratios |=3D (PFIT_HORIZ_SCALE(bits) |
> +					     PFIT_VERT_SCALE(bits));
>  			*pfit_control |=3D (PFIT_ENABLE |
>  					  VERT_INTERP_BILINEAR |
>  					  HORIZ_INTERP_BILINEAR);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index f472baf242dc..cb8611aaaa5e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2337,35 +2337,33 @@
>=20=20
>  /* Panel fitting */
>  #define PFIT_CONTROL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61230)
> -#define   PFIT_ENABLE		(1 << 31)
> -#define   PFIT_PIPE_MASK	(3 << 29)
> -#define   PFIT_PIPE_SHIFT	29
> -#define   PFIT_PIPE(pipe)	((pipe) << 29)
> -#define   VERT_INTERP_DISABLE	(0 << 10)
> -#define   VERT_INTERP_BILINEAR	(1 << 10)
> -#define   VERT_INTERP_MASK	(3 << 10)
> -#define   VERT_AUTO_SCALE	(1 << 9)
> -#define   HORIZ_INTERP_DISABLE	(0 << 6)
> -#define   HORIZ_INTERP_BILINEAR	(1 << 6)
> -#define   HORIZ_INTERP_MASK	(3 << 6)
> -#define   HORIZ_AUTO_SCALE	(1 << 5)
> -#define   PANEL_8TO6_DITHER_ENABLE (1 << 3)
> -#define   PFIT_FILTER_FUZZY	(0 << 24)
> -#define   PFIT_SCALING_AUTO	(0 << 26)
> -#define   PFIT_SCALING_PROGRAMMED (1 << 26)
> -#define   PFIT_SCALING_PILLAR	(2 << 26)
> -#define   PFIT_SCALING_LETTER	(3 << 26)
> +#define   PFIT_ENABLE			REG_BIT(31)
> +#define   PFIT_PIPE_MASK		REG_GENMASK(30, 29) /* 965+ */
> +#define   PFIT_PIPE(pipe)		REG_FIELD_PREP(PFIT_PIPE_MASK, (pipe))
> +#define   PFIT_SCALING_MASK		REG_GENMASK(28, 26) /* 965+ */
> +#define   PFIT_SCALING_AUTO		REG_FIELD_PREP(PFIT_SCALING_MASK, 0)
> +#define   PFIT_SCALING_PROGRAMMED	REG_FIELD_PREP(PFIT_SCALING_MASK, 1)
> +#define   PFIT_SCALING_PILLAR		REG_FIELD_PREP(PFIT_SCALING_MASK, 2)
> +#define   PFIT_SCALING_LETTER		REG_FIELD_PREP(PFIT_SCALING_MASK, 3)
> +#define   PFIT_FILTER_MASK		REG_GENMASK(25, 24) /* 965+ */
> +#define   PFIT_FILTER_FUZZY		REG_FIELD_PREP(PFIT_FILTER_MASK, 0)
> +#define   PFIT_FILTER_CRISP		REG_FIELD_PREP(PFIT_FILTER_MASK, 1)
> +#define   PFIT_FILTER_MEDIAN		REG_FIELD_PREP(PFIT_FILTER_MASK, 2)
> +#define   VERT_INTERP_MASK		REG_GENMASK(11, 10) /* pre-965 */
> +#define   VERT_INTERP_BILINEAR		REG_FIELD_PREP(VERT_INTERP_MASK, 1)
> +#define   VERT_AUTO_SCALE		REG_BIT(9) /* pre-965 */
> +#define   HORIZ_INTERP_MASK		REG_GENMASK(7, 6) /* pre-965 */
> +#define   HORIZ_INTERP_BILINEAR		REG_FIELD_PREP(HORIZ_INTERP_MASK, 1)
> +#define   HORIZ_AUTO_SCALE		REG_BIT(5) /* pre-965 */
> +#define   PANEL_8TO6_DITHER_ENABLE	REG_BIT(3) /* pre-965 */
> +
>  #define PFIT_PGM_RATIOS _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61234)
> -/* Pre-965 */
> -#define		PFIT_VERT_SCALE_SHIFT		20
> -#define		PFIT_VERT_SCALE_MASK		0xfff00000
> -#define		PFIT_HORIZ_SCALE_SHIFT		4
> -#define		PFIT_HORIZ_SCALE_MASK		0x0000fff0
> -/* 965+ */
> -#define		PFIT_VERT_SCALE_SHIFT_965	16
> -#define		PFIT_VERT_SCALE_MASK_965	0x1fff0000
> -#define		PFIT_HORIZ_SCALE_SHIFT_965	0
> -#define		PFIT_HORIZ_SCALE_MASK_965	0x00001fff
> +#define   PFIT_VERT_SCALE_MASK		REG_GENMASK(31, 20) /* pre-965 */
> +#define   PFIT_VERT_SCALE(x)		REG_FIELD_PREP(PFIT_VERT_SCALE_MASK, (x))
> +#define   PFIT_HORIZ_SCALE_MASK		REG_GENMASK(15, 4) /* pre-965 */
> +#define   PFIT_HORIZ_SCALE(x)		REG_FIELD_PREP(PFIT_HORIZ_SCALE_MASK, (x))
> +#define   PFIT_VERT_SCALE_MASK_965	REG_GENMASK(28, 16) /* 965+ */
> +#define   PFIT_HORIZ_SCALE_MASK_965	REG_GENMASK(12, 0) /* 965+ */
>=20=20
>  #define PFIT_AUTO_RATIOS _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61238)

--=20
Jani Nikula, Intel Open Source Graphics Center
