Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B9B19B912
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 01:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFE216E9BE;
	Wed,  1 Apr 2020 23:51:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C5376E9BE
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 23:51:22 +0000 (UTC)
IronPort-SDR: V3O9uTKQJU8bhyALXSvApHpbJcplhvMkP4L2UbYLA/AaGGQxBjIaxySugSzKnwzqKlf5pOmySS
 nExDjNHBBrbA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 16:51:21 -0700
IronPort-SDR: J1GcdEr/BOhEkATbjX+U0pXWoOL/B2PznJVbxvBBUVx8d1MuhsPY10189aadKcz/wqyl8mwjS9
 UovV8qfVAGUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,333,1580803200"; d="scan'208";a="240665853"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga007.fm.intel.com with ESMTP; 01 Apr 2020 16:51:21 -0700
Date: Wed, 1 Apr 2020 16:53:23 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200401235322.GB14630@intel.com>
References: <20200212161738.28141-1-ville.syrjala@linux.intel.com>
 <20200212161738.28141-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212161738.28141-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 4/8] drm/i915: Flatten a bunch of the
 pfit functions
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

On Wed, Feb 12, 2020 at 06:17:34PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Most of the pfit functions are of the form:
> =

> func()
> {
> 	if (pfit_enabled) {
> 		...
> 	}
> }
> =

> Flip the pfit_enabled check around to flatten the functions.
> =

> And while we're touching all this let's do the usual
> s/pipe_config/crtc_state/ replacement.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 233 +++++++++----------
>  1 file changed, 115 insertions(+), 118 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index becc6322b7dc..796e27c4aece 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6233,42 +6233,42 @@ static void skl_pfit_enable(const struct intel_cr=
tc_state *crtc_state)
>  	enum pipe pipe =3D crtc->pipe;
>  	const struct intel_crtc_scaler_state *scaler_state =3D
>  		&crtc_state->scaler_state;
> +	u16 uv_rgb_hphase, uv_rgb_vphase;
> +	int pfit_w, pfit_h, hscale, vscale;
> +	unsigned long irqflags;
> +	int id;
>  =

> -	if (crtc_state->pch_pfit.enabled) {
> -		u16 uv_rgb_hphase, uv_rgb_vphase;
> -		int pfit_w, pfit_h, hscale, vscale;
> -		unsigned long irqflags;
> -		int id;
> +	if (!crtc_state->pch_pfit.enabled)
> +		return;
>  =

> -		if (WARN_ON(crtc_state->scaler_state.scaler_id < 0))
> -			return;
> +	if (WARN_ON(crtc_state->scaler_state.scaler_id < 0))
> +		return;
>  =

> -		pfit_w =3D (crtc_state->pch_pfit.size >> 16) & 0xFFFF;
> -		pfit_h =3D crtc_state->pch_pfit.size & 0xFFFF;
> +	pfit_w =3D (crtc_state->pch_pfit.size >> 16) & 0xFFFF;
> +	pfit_h =3D crtc_state->pch_pfit.size & 0xFFFF;
>  =

> -		hscale =3D (crtc_state->pipe_src_w << 16) / pfit_w;
> -		vscale =3D (crtc_state->pipe_src_h << 16) / pfit_h;
> +	hscale =3D (crtc_state->pipe_src_w << 16) / pfit_w;
> +	vscale =3D (crtc_state->pipe_src_h << 16) / pfit_h;
>  =

> -		uv_rgb_hphase =3D skl_scaler_calc_phase(1, hscale, false);
> -		uv_rgb_vphase =3D skl_scaler_calc_phase(1, vscale, false);
> +	uv_rgb_hphase =3D skl_scaler_calc_phase(1, hscale, false);
> +	uv_rgb_vphase =3D skl_scaler_calc_phase(1, vscale, false);
>  =

> -		id =3D scaler_state->scaler_id;
> +	id =3D scaler_state->scaler_id;
>  =

> -		spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  =

> -		intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, id), PS_SCALER_EN |
> -				  PS_FILTER_MEDIUM | scaler_state->scalers[id].mode);
> -		intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, id),
> -				  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
> -		intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, id),
> -				  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
> -		intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, id),
> -				  crtc_state->pch_pfit.pos);
> -		intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, id),
> -				  crtc_state->pch_pfit.size);
> +	intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, id), PS_SCALER_EN |
> +			  PS_FILTER_MEDIUM | scaler_state->scalers[id].mode);
> +	intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, id),
> +			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
> +	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, id),
> +			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
> +	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, id),
> +			  crtc_state->pch_pfit.pos);
> +	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, id),
> +			  crtc_state->pch_pfit.size);
>  =

> -		spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> -	}
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  =

>  static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
> @@ -6277,22 +6277,23 @@ static void ilk_pfit_enable(const struct intel_cr=
tc_state *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>  =

> -	if (crtc_state->pch_pfit.enabled) {
> -		/* Force use of hard-coded filter coefficients
> -		 * as some pre-programmed values are broken,
> -		 * e.g. x201.
> -		 */
> -		if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
> -			intel_de_write(dev_priv, PF_CTL(pipe),
> -				       PF_ENABLE | PF_FILTER_MED_3x3 | PF_PIPE_SEL_IVB(pipe));
> -		else
> -			intel_de_write(dev_priv, PF_CTL(pipe),
> -				       PF_ENABLE | PF_FILTER_MED_3x3);
> -		intel_de_write(dev_priv, PF_WIN_POS(pipe),
> -			       crtc_state->pch_pfit.pos);
> -		intel_de_write(dev_priv, PF_WIN_SZ(pipe),
> -			       crtc_state->pch_pfit.size);

Why dont we use the intel_de_write_fw() everywhere?

Manasi

> -	}
> +	if (!crtc_state->pch_pfit.enabled)
> +		return;
> +
> +	/* Force use of hard-coded filter coefficients
> +	 * as some pre-programmed values are broken,
> +	 * e.g. x201.
> +	 */
> +	if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
> +		intel_de_write(dev_priv, PF_CTL(pipe), PF_ENABLE |
> +			       PF_FILTER_MED_3x3 | PF_PIPE_SEL_IVB(pipe));
> +	else
> +		intel_de_write(dev_priv, PF_CTL(pipe), PF_ENABLE |
> +			       PF_FILTER_MED_3x3);
> +	intel_de_write(dev_priv, PF_WIN_POS(pipe),
> +		       crtc_state->pch_pfit.pos);
> +	intel_de_write(dev_priv, PF_WIN_SZ(pipe),
> +		       crtc_state->pch_pfit.size);
>  }
>  =

>  void hsw_enable_ips(const struct intel_crtc_state *crtc_state)
> @@ -7107,11 +7108,12 @@ void ilk_pfit_disable(const struct intel_crtc_sta=
te *old_crtc_state)
>  =

>  	/* To avoid upsetting the power well on haswell only disable the pfit if
>  	 * it's in use. The hw state code will make sure we get this right. */
> -	if (old_crtc_state->pch_pfit.enabled) {
> -		intel_de_write(dev_priv, PF_CTL(pipe), 0);
> -		intel_de_write(dev_priv, PF_WIN_POS(pipe), 0);
> -		intel_de_write(dev_priv, PF_WIN_SZ(pipe), 0);
> -	}
> +	if (!old_crtc_state->pch_pfit.enabled)
> +		return;
> +
> +	intel_de_write(dev_priv, PF_CTL(pipe), 0);
> +	intel_de_write(dev_priv, PF_WIN_POS(pipe), 0);
> +	intel_de_write(dev_priv, PF_WIN_SZ(pipe), 0);
>  }
>  =

>  static void ilk_crtc_disable(struct intel_atomic_state *state,
> @@ -7927,39 +7929,35 @@ static bool intel_crtc_supports_double_wide(const=
 struct intel_crtc *crtc)
>  		(crtc->pipe =3D=3D PIPE_A || IS_I915G(dev_priv));
>  }
>  =

> -static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *pipe_confi=
g)
> +static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
>  {
> -	u32 pixel_rate;
> -
> -	pixel_rate =3D pipe_config->hw.adjusted_mode.crtc_clock;
> +	u32 pixel_rate =3D crtc_state->hw.adjusted_mode.crtc_clock;
> +	u32 pfit_size =3D crtc_state->pch_pfit.size;
> +	u64 pipe_w, pipe_h, pfit_w, pfit_h;
>  =

>  	/*
>  	 * We only use IF-ID interlacing. If we ever use
>  	 * PF-ID we'll need to adjust the pixel_rate here.
>  	 */
>  =

> -	if (pipe_config->pch_pfit.enabled) {
> -		u64 pipe_w, pipe_h, pfit_w, pfit_h;
> -		u32 pfit_size =3D pipe_config->pch_pfit.size;
> -
> -		pipe_w =3D pipe_config->pipe_src_w;
> -		pipe_h =3D pipe_config->pipe_src_h;
> +	if (!crtc_state->pch_pfit.enabled)
> +		return pixel_rate;
>  =

> -		pfit_w =3D (pfit_size >> 16) & 0xFFFF;
> -		pfit_h =3D pfit_size & 0xFFFF;
> -		if (pipe_w < pfit_w)
> -			pipe_w =3D pfit_w;
> -		if (pipe_h < pfit_h)
> -			pipe_h =3D pfit_h;
> +	pipe_w =3D crtc_state->pipe_src_w;
> +	pipe_h =3D crtc_state->pipe_src_h;
>  =

> -		if (WARN_ON(!pfit_w || !pfit_h))
> -			return pixel_rate;
> +	pfit_w =3D (pfit_size >> 16) & 0xFFFF;
> +	pfit_h =3D pfit_size & 0xFFFF;
> +	if (pipe_w < pfit_w)
> +		pipe_w =3D pfit_w;
> +	if (pipe_h < pfit_h)
> +		pipe_h =3D pfit_h;
>  =

> -		pixel_rate =3D div_u64(mul_u32_u32(pixel_rate, pipe_w * pipe_h),
> -				     pfit_w * pfit_h);
> -	}
> +	if (WARN_ON(!pfit_w || !pfit_h))
> +		return pixel_rate;
>  =

> -	return pixel_rate;
> +	return div_u64(mul_u32_u32(pixel_rate, pipe_w * pipe_h),
> +		       pfit_w * pfit_h);
>  }
>  =

>  static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_=
state)
> @@ -9153,9 +9151,9 @@ static bool i9xx_has_pfit(struct drm_i915_private *=
dev_priv)
>  		IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
>  }
>  =

> -static void i9xx_get_pfit_config(struct intel_crtc *crtc,
> -				 struct intel_crtc_state *pipe_config)
> +static void i9xx_get_pfit_config(struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	u32 tmp;
>  =

> @@ -9175,9 +9173,9 @@ static void i9xx_get_pfit_config(struct intel_crtc =
*crtc,
>  			return;
>  	}
>  =

> -	pipe_config->gmch_pfit.control =3D tmp;
> -	pipe_config->gmch_pfit.pgm_ratios =3D intel_de_read(dev_priv,
> -							  PFIT_PGM_RATIOS);
> +	crtc_state->gmch_pfit.control =3D tmp;
> +	crtc_state->gmch_pfit.pgm_ratios =3D
> +		intel_de_read(dev_priv, PFIT_PGM_RATIOS);
>  }
>  =

>  static void vlv_crtc_clock_get(struct intel_crtc *crtc,
> @@ -9427,7 +9425,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc =
*crtc,
>  	intel_get_pipe_timings(crtc, pipe_config);
>  	intel_get_pipe_src_size(crtc, pipe_config);
>  =

> -	i9xx_get_pfit_config(crtc, pipe_config);
> +	i9xx_get_pfit_config(pipe_config);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 4) {
>  		/* No way to read it out on pipes B and C */
> @@ -10393,37 +10391,37 @@ static void ilk_get_fdi_m_n_config(struct intel=
_crtc *crtc,
>  				     &pipe_config->fdi_m_n, NULL);
>  }
>  =

> -static void skl_get_pfit_config(struct intel_crtc *crtc,
> -				struct intel_crtc_state *pipe_config)
> +static void skl_get_pfit_config(struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_device *dev =3D crtc->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct intel_crtc_scaler_state *scaler_state =3D &pipe_config->scaler_s=
tate;
> -	u32 ps_ctrl =3D 0;
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_crtc_scaler_state *scaler_state =3D &crtc_state->scaler_st=
ate;
>  	int id =3D -1;
>  	int i;
>  =

>  	/* find scaler attached to this pipe */
>  	for (i =3D 0; i < crtc->num_scalers; i++) {
> -		ps_ctrl =3D intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
> -		if (ps_ctrl & PS_SCALER_EN && !(ps_ctrl & PS_PLANE_SEL_MASK)) {
> -			id =3D i;
> -			pipe_config->pch_pfit.enabled =3D true;
> -			pipe_config->pch_pfit.pos =3D intel_de_read(dev_priv,
> -								  SKL_PS_WIN_POS(crtc->pipe, i));
> -			pipe_config->pch_pfit.size =3D intel_de_read(dev_priv,
> -								   SKL_PS_WIN_SZ(crtc->pipe, i));
> -			scaler_state->scalers[i].in_use =3D true;
> -			break;
> -		}
> +		u32 tmp;
> +
> +		tmp =3D intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
> +		if ((tmp & (PS_SCALER_EN | PS_PLANE_SEL_MASK)) !=3D PS_SCALER_EN)
> +			continue;
> +
> +		id =3D i;
> +		crtc_state->pch_pfit.enabled =3D true;
> +		crtc_state->pch_pfit.pos =3D
> +			intel_de_read(dev_priv, SKL_PS_WIN_POS(crtc->pipe, i));
> +		crtc_state->pch_pfit.size =3D
> +			intel_de_read(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, i));
> +		scaler_state->scalers[i].in_use =3D true;
> +		break;
>  	}
>  =

>  	scaler_state->scaler_id =3D id;
> -	if (id >=3D 0) {
> +	if (id >=3D 0)
>  		scaler_state->scaler_users |=3D (1 << SKL_CRTC_INDEX);
> -	} else {
> +	else
>  		scaler_state->scaler_users &=3D ~(1 << SKL_CRTC_INDEX);
> -	}
>  }
>  =

>  static void
> @@ -10559,30 +10557,29 @@ skl_get_initial_plane_config(struct intel_crtc =
*crtc,
>  	kfree(intel_fb);
>  }
>  =

> -static void ilk_get_pfit_config(struct intel_crtc *crtc,
> -				struct intel_crtc_state *pipe_config)
> +static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_device *dev =3D crtc->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	u32 tmp;
>  =

>  	tmp =3D intel_de_read(dev_priv, PF_CTL(crtc->pipe));
> +	if ((tmp & PF_ENABLE) =3D=3D 0)
> +		return;
>  =

> -	if (tmp & PF_ENABLE) {
> -		pipe_config->pch_pfit.enabled =3D true;
> -		pipe_config->pch_pfit.pos =3D intel_de_read(dev_priv,
> -							  PF_WIN_POS(crtc->pipe));
> -		pipe_config->pch_pfit.size =3D intel_de_read(dev_priv,
> -							   PF_WIN_SZ(crtc->pipe));
> -
> -		/* We currently do not free assignements of panel fitters on
> -		 * ivb/hsw (since we don't use the higher upscaling modes which
> -		 * differentiates them) so just WARN about this case for now. */
> -		if (IS_GEN(dev_priv, 7)) {
> -			WARN_ON((tmp & PF_PIPE_SEL_MASK_IVB) !=3D
> -				PF_PIPE_SEL_IVB(crtc->pipe));
> -		}
> -	}
> +	crtc_state->pch_pfit.enabled =3D true;
> +	crtc_state->pch_pfit.pos =3D
> +		intel_de_read(dev_priv, PF_WIN_POS(crtc->pipe));
> +	crtc_state->pch_pfit.size =3D
> +		intel_de_read(dev_priv, PF_WIN_SZ(crtc->pipe));
> +
> +	/*
> +	 * We currently do not free assignements of panel fitters on
> +	 * ivb/hsw (since we don't use the higher upscaling modes which
> +	 * differentiates them) so just WARN about this case for now.
> +	 */
> +	WARN_ON(IS_GEN(dev_priv, 7) &&
> +		(tmp & PF_PIPE_SEL_MASK_IVB) !=3D PF_PIPE_SEL_IVB(crtc->pipe));
>  }
>  =

>  static bool ilk_get_pipe_config(struct intel_crtc *crtc,
> @@ -10694,7 +10691,7 @@ static bool ilk_get_pipe_config(struct intel_crtc=
 *crtc,
>  	intel_get_pipe_timings(crtc, pipe_config);
>  	intel_get_pipe_src_size(crtc, pipe_config);
>  =

> -	ilk_get_pfit_config(crtc, pipe_config);
> +	ilk_get_pfit_config(pipe_config);
>  =

>  	ret =3D true;
>  =

> @@ -11219,9 +11216,9 @@ static bool hsw_get_pipe_config(struct intel_crtc=
 *crtc,
>  		power_domain_mask |=3D BIT_ULL(power_domain);
>  =

>  		if (INTEL_GEN(dev_priv) >=3D 9)
> -			skl_get_pfit_config(crtc, pipe_config);
> +			skl_get_pfit_config(pipe_config);
>  		else
> -			ilk_get_pfit_config(crtc, pipe_config);
> +			ilk_get_pfit_config(pipe_config);
>  	}
>  =

>  	if (hsw_crtc_supports_ips(crtc)) {
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
