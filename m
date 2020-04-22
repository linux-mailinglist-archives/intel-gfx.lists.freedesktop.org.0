Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC3B1B4D31
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 21:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35E7D89F77;
	Wed, 22 Apr 2020 19:18:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E78B489F77
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 19:18:53 +0000 (UTC)
IronPort-SDR: JC0JJPuL2YdER5KLlwRV1F9fCwmLSb52NlEb0vMRV0uri2Tp1EXcqmaDU1TuXRnpbVkAB3OGNe
 gF+81D8SCP/w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 12:18:47 -0700
IronPort-SDR: i0u4I33bTLkaydorh1vQfUUcrrdQbjKjfQCl0eQ+kYscUKuIoXuDsh/o3MSuj5DGZGHJkoYPzc
 gPUMb4o2PL0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,304,1583222400"; d="scan'208";a="402658053"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 22 Apr 2020 12:18:46 -0700
Date: Wed, 22 Apr 2020 12:20:06 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200422192005.GA28167@intel.com>
References: <20200422161917.17389-1-ville.syrjala@linux.intel.com>
 <20200422161917.17389-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422161917.17389-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 3/6] drm/i915: Use drm_rect to store the
 pfit window pos/size
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

On Wed, Apr 22, 2020 at 07:19:14PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Make things a bit more abstract by replacing the pch_pfit.pos/size
> raw register values with a drm_rect. Makes it slighly more convenient
> to eg. compute the scaling factors.
> =

> v2: Use drm_rect_init()
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 101 +++++++++++-------
>  .../drm/i915/display/intel_display_types.h    |   3 +-
>  drivers/gpu/drm/i915/display/intel_panel.c    |  13 ++-
>  3 files changed, 67 insertions(+), 50 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 96d0768ecf5d..6bb87965801e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6096,10 +6096,8 @@ static int skl_update_scaler_crtc(struct intel_crt=
c_state *crtc_state)
>  	int width, height;
>  =

>  	if (crtc_state->pch_pfit.enabled) {
> -		u32 pfit_size =3D crtc_state->pch_pfit.size;
> -
> -		width =3D pfit_size >> 16;
> -		height =3D pfit_size & 0xffff;
> +		width =3D drm_rect_width(&crtc_state->pch_pfit.dst);
> +		height =3D drm_rect_height(&crtc_state->pch_pfit.dst);
>  	} else {
>  		width =3D adjusted_mode->crtc_hdisplay;
>  		height =3D adjusted_mode->crtc_vdisplay;
> @@ -6219,11 +6217,20 @@ static void skl_pfit_enable(const struct intel_cr=
tc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum pipe pipe =3D crtc->pipe;
>  	const struct intel_crtc_scaler_state *scaler_state =3D
>  		&crtc_state->scaler_state;
> +	struct drm_rect src =3D {
> +		.x2 =3D crtc_state->pipe_src_w << 16,
> +		.y2 =3D crtc_state->pipe_src_h << 16,

Its not clear to me why we left shift by 16 for both src_w and src_h? Where=
 can I find the format of
how this is stored?

Other than that everything else looks good in terms of replacing with drm_r=
ect()

Manasi

> +	};
> +	const struct drm_rect *dst =3D &crtc_state->pch_pfit.dst;
>  	u16 uv_rgb_hphase, uv_rgb_vphase;
> -	int pfit_w, pfit_h, hscale, vscale;
> +	enum pipe pipe =3D crtc->pipe;
> +	int width =3D drm_rect_width(dst);
> +	int height =3D drm_rect_height(dst);
> +	int x =3D dst->x1;
> +	int y =3D dst->y1;
> +	int hscale, vscale;
>  	unsigned long irqflags;
>  	int id;
>  =

> @@ -6234,11 +6241,8 @@ static void skl_pfit_enable(const struct intel_crt=
c_state *crtc_state)
>  			crtc_state->scaler_state.scaler_id < 0))
>  		return;
>  =

> -	pfit_w =3D (crtc_state->pch_pfit.size >> 16) & 0xFFFF;
> -	pfit_h =3D crtc_state->pch_pfit.size & 0xFFFF;
> -
> -	hscale =3D (crtc_state->pipe_src_w << 16) / pfit_w;
> -	vscale =3D (crtc_state->pipe_src_h << 16) / pfit_h;
> +	hscale =3D drm_rect_calc_hscale(&src, dst, 0, INT_MAX);
> +	vscale =3D drm_rect_calc_vscale(&src, dst, 0, INT_MAX);
>  =

>  	uv_rgb_hphase =3D skl_scaler_calc_phase(1, hscale, false);
>  	uv_rgb_vphase =3D skl_scaler_calc_phase(1, vscale, false);
> @@ -6254,9 +6258,9 @@ static void skl_pfit_enable(const struct intel_crtc=
_state *crtc_state)
>  	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, id),
>  			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
>  	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, id),
> -			  crtc_state->pch_pfit.pos);
> +			  x << 16 | y);
>  	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, id),
> -			  crtc_state->pch_pfit.size);
> +			  width << 16 | height);
>  =

>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
> @@ -6265,7 +6269,12 @@ static void ilk_pfit_enable(const struct intel_crt=
c_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	const struct drm_rect *dst =3D &crtc_state->pch_pfit.dst;
>  	enum pipe pipe =3D crtc->pipe;
> +	int width =3D drm_rect_width(dst);
> +	int height =3D drm_rect_height(dst);
> +	int x =3D dst->x1;
> +	int y =3D dst->y1;
>  =

>  	if (!crtc_state->pch_pfit.enabled)
>  		return;
> @@ -6280,10 +6289,8 @@ static void ilk_pfit_enable(const struct intel_crt=
c_state *crtc_state)
>  	else
>  		intel_de_write(dev_priv, PF_CTL(pipe), PF_ENABLE |
>  			       PF_FILTER_MED_3x3);
> -	intel_de_write(dev_priv, PF_WIN_POS(pipe),
> -		       crtc_state->pch_pfit.pos);
> -	intel_de_write(dev_priv, PF_WIN_SZ(pipe),
> -		       crtc_state->pch_pfit.size);
> +	intel_de_write(dev_priv, PF_WIN_POS(pipe), x << 16 | y);
> +	intel_de_write(dev_priv, PF_WIN_SZ(pipe), width << 16 | height);
>  }
>  =

>  void hsw_enable_ips(const struct intel_crtc_state *crtc_state)
> @@ -7936,8 +7943,7 @@ static bool intel_crtc_supports_double_wide(const s=
truct intel_crtc *crtc)
>  static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
>  {
>  	u32 pixel_rate =3D crtc_state->hw.adjusted_mode.crtc_clock;
> -	u32 pfit_size =3D crtc_state->pch_pfit.size;
> -	u64 pipe_w, pipe_h, pfit_w, pfit_h;
> +	unsigned int pipe_w, pipe_h, pfit_w, pfit_h;
>  =

>  	/*
>  	 * We only use IF-ID interlacing. If we ever use
> @@ -7950,8 +7956,9 @@ static u32 ilk_pipe_pixel_rate(const struct intel_c=
rtc_state *crtc_state)
>  	pipe_w =3D crtc_state->pipe_src_w;
>  	pipe_h =3D crtc_state->pipe_src_h;
>  =

> -	pfit_w =3D (pfit_size >> 16) & 0xFFFF;
> -	pfit_h =3D pfit_size & 0xFFFF;
> +	pfit_w =3D drm_rect_width(&crtc_state->pch_pfit.dst);
> +	pfit_h =3D drm_rect_height(&crtc_state->pch_pfit.dst);
> +
>  	if (pipe_w < pfit_w)
>  		pipe_w =3D pfit_w;
>  	if (pipe_h < pfit_h)
> @@ -10400,6 +10407,14 @@ static void ilk_get_fdi_m_n_config(struct intel_=
crtc *crtc,
>  				     &pipe_config->fdi_m_n, NULL);
>  }
>  =

> +static void ilk_get_pfit_pos_size(struct intel_crtc_state *crtc_state,
> +				  u32 pos, u32 size)
> +{
> +	drm_rect_init(&crtc_state->pch_pfit.dst,
> +		      pos >> 16, pos & 0xffff,
> +		      size >> 16, size & 0xffff);
> +}
> +
>  static void skl_get_pfit_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -10410,18 +10425,20 @@ static void skl_get_pfit_config(struct intel_cr=
tc_state *crtc_state)
>  =

>  	/* find scaler attached to this pipe */
>  	for (i =3D 0; i < crtc->num_scalers; i++) {
> -		u32 tmp;
> +		u32 ctl, pos, size;
>  =

> -		tmp =3D intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
> -		if ((tmp & (PS_SCALER_EN | PS_PLANE_SEL_MASK)) !=3D PS_SCALER_EN)
> +		ctl =3D intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
> +		if ((ctl & (PS_SCALER_EN | PS_PLANE_SEL_MASK)) !=3D PS_SCALER_EN)
>  			continue;
>  =

>  		id =3D i;
>  		crtc_state->pch_pfit.enabled =3D true;
> -		crtc_state->pch_pfit.pos =3D
> -			intel_de_read(dev_priv, SKL_PS_WIN_POS(crtc->pipe, i));
> -		crtc_state->pch_pfit.size =3D
> -			intel_de_read(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, i));
> +
> +		pos =3D intel_de_read(dev_priv, SKL_PS_WIN_POS(crtc->pipe, i));
> +		size =3D intel_de_read(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, i));
> +
> +		ilk_get_pfit_pos_size(crtc_state, pos, size);
> +
>  		scaler_state->scalers[i].in_use =3D true;
>  		break;
>  	}
> @@ -10570,17 +10587,18 @@ static void ilk_get_pfit_config(struct intel_cr=
tc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	u32 tmp;
> +	u32 ctl, pos, size;
>  =

> -	tmp =3D intel_de_read(dev_priv, PF_CTL(crtc->pipe));
> -	if ((tmp & PF_ENABLE) =3D=3D 0)
> +	ctl =3D intel_de_read(dev_priv, PF_CTL(crtc->pipe));
> +	if ((ctl & PF_ENABLE) =3D=3D 0)
>  		return;
>  =

>  	crtc_state->pch_pfit.enabled =3D true;
> -	crtc_state->pch_pfit.pos =3D
> -		intel_de_read(dev_priv, PF_WIN_POS(crtc->pipe));
> -	crtc_state->pch_pfit.size =3D
> -		intel_de_read(dev_priv, PF_WIN_SZ(crtc->pipe));
> +
> +	pos =3D intel_de_read(dev_priv, PF_WIN_POS(crtc->pipe));
> +	size =3D intel_de_read(dev_priv, PF_WIN_SZ(crtc->pipe));
> +
> +	ilk_get_pfit_pos_size(crtc_state, pos, size);
>  =

>  	/*
>  	 * We currently do not free assignements of panel fitters on
> @@ -10588,7 +10606,7 @@ static void ilk_get_pfit_config(struct intel_crtc=
_state *crtc_state)
>  	 * differentiates them) so just WARN about this case for now.
>  	 */
>  	drm_WARN_ON(&dev_priv->drm, IS_GEN(dev_priv, 7) &&
> -		    (tmp & PF_PIPE_SEL_MASK_IVB) !=3D PF_PIPE_SEL_IVB(crtc->pipe));
> +		    (ctl & PF_PIPE_SEL_MASK_IVB) !=3D PF_PIPE_SEL_IVB(crtc->pipe));
>  }
>  =

>  static bool ilk_get_pipe_config(struct intel_crtc *crtc,
> @@ -13036,9 +13054,8 @@ static void intel_dump_pipe_config(const struct i=
ntel_crtc_state *pipe_config,
>  			    pipe_config->gmch_pfit.lvds_border_bits);
>  	else
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "pch pfit: pos: 0x%08x, size: 0x%08x, %s, force thru: %s\n",
> -			    pipe_config->pch_pfit.pos,
> -			    pipe_config->pch_pfit.size,
> +			    "pch pfit: " DRM_RECT_FMT ", %s, force thru: %s\n",
> +			    DRM_RECT_ARG(&pipe_config->pch_pfit.dst),
>  			    enableddisabled(pipe_config->pch_pfit.enabled),
>  			    yesno(pipe_config->pch_pfit.force_thru));
>  =

> @@ -13780,8 +13797,10 @@ intel_pipe_config_compare(const struct intel_crt=
c_state *current_config,
>  =

>  		PIPE_CONF_CHECK_BOOL(pch_pfit.enabled);
>  		if (current_config->pch_pfit.enabled) {
> -			PIPE_CONF_CHECK_X(pch_pfit.pos);
> -			PIPE_CONF_CHECK_X(pch_pfit.size);
> +			PIPE_CONF_CHECK_I(pch_pfit.dst.x1);
> +			PIPE_CONF_CHECK_I(pch_pfit.dst.y1);
> +			PIPE_CONF_CHECK_I(pch_pfit.dst.x2);
> +			PIPE_CONF_CHECK_I(pch_pfit.dst.y2);
>  		}
>  =

>  		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index ba8c08145c88..dc75f26f60de 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -974,8 +974,7 @@ struct intel_crtc_state {
>  =

>  	/* Panel fitter placement and size for Ironlake+ */
>  	struct {
> -		u32 pos;
> -		u32 size;
> +		struct drm_rect dst;
>  		bool enabled;
>  		bool force_thru;
>  	} pch_pfit;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index bcd2cc1aba90..3e370888ecef 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -182,13 +182,13 @@ intel_pch_panel_fitting(struct intel_crtc *intel_cr=
tc,
>  			int fitting_mode)
>  {
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
> -	int x =3D 0, y =3D 0, width =3D 0, height =3D 0;
> +	int x, y, width, height;
>  =

>  	/* Native modes don't need fitting */
>  	if (adjusted_mode->crtc_hdisplay =3D=3D pipe_config->pipe_src_w &&
>  	    adjusted_mode->crtc_vdisplay =3D=3D pipe_config->pipe_src_h &&
>  	    pipe_config->output_format !=3D INTEL_OUTPUT_FORMAT_YCBCR420)
> -		goto done;
> +		return;
>  =

>  	switch (fitting_mode) {
>  	case DRM_MODE_SCALE_CENTER:
> @@ -234,14 +234,13 @@ intel_pch_panel_fitting(struct intel_crtc *intel_cr=
tc,
>  		break;
>  =

>  	default:
> -		WARN(1, "bad panel fit mode: %d\n", fitting_mode);
> +		MISSING_CASE(fitting_mode);
>  		return;
>  	}
>  =

> -done:
> -	pipe_config->pch_pfit.pos =3D (x << 16) | y;
> -	pipe_config->pch_pfit.size =3D (width << 16) | height;
> -	pipe_config->pch_pfit.enabled =3D pipe_config->pch_pfit.size !=3D 0;
> +	drm_rect_init(&pipe_config->pch_pfit.dst,
> +		      x, y, width, height);
> +	pipe_config->pch_pfit.enabled =3D true;
>  }
>  =

>  static void
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
