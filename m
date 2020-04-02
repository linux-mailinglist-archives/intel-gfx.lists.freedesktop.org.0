Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 325AA19C347
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 15:55:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CDA66EA93;
	Thu,  2 Apr 2020 13:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F1FB6EA91
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 13:55:09 +0000 (UTC)
IronPort-SDR: aEYs9/QaIgwKX1UCJe/wwtSvBLzO1CPjcuVGwP76N8JBZgVv+gl1jrf4OSCjbbdFAccikCNuLR
 RTc6JQM7qGdg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 06:55:08 -0700
IronPort-SDR: tfbKnXcryhtMYlDyto5jz+U7/nMWqd+u5BGeSuJLaVHxIurEzpeoSmAARfgSO0RT7SO2D+MbJe
 a/f4J+L1hnOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="242525788"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 02 Apr 2020 06:55:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Apr 2020 16:55:06 +0300
Date: Thu, 2 Apr 2020 16:55:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200402135506.GW13686@intel.com>
References: <20200212161738.28141-1-ville.syrjala@linux.intel.com>
 <20200212161738.28141-5-ville.syrjala@linux.intel.com>
 <20200401235322.GB14630@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401235322.GB14630@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Wed, Apr 01, 2020 at 04:53:23PM -0700, Manasi Navare wrote:
> On Wed, Feb 12, 2020 at 06:17:34PM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Most of the pfit functions are of the form:
> > =

> > func()
> > {
> > 	if (pfit_enabled) {
> > 		...
> > 	}
> > }
> > =

> > Flip the pfit_enabled check around to flatten the functions.
> > =

> > And while we're touching all this let's do the usual
> > s/pipe_config/crtc_state/ replacement.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 233 +++++++++----------
> >  1 file changed, 115 insertions(+), 118 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index becc6322b7dc..796e27c4aece 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6233,42 +6233,42 @@ static void skl_pfit_enable(const struct intel_=
crtc_state *crtc_state)
> >  	enum pipe pipe =3D crtc->pipe;
> >  	const struct intel_crtc_scaler_state *scaler_state =3D
> >  		&crtc_state->scaler_state;
> > +	u16 uv_rgb_hphase, uv_rgb_vphase;
> > +	int pfit_w, pfit_h, hscale, vscale;
> > +	unsigned long irqflags;
> > +	int id;
> >  =

> > -	if (crtc_state->pch_pfit.enabled) {
> > -		u16 uv_rgb_hphase, uv_rgb_vphase;
> > -		int pfit_w, pfit_h, hscale, vscale;
> > -		unsigned long irqflags;
> > -		int id;
> > +	if (!crtc_state->pch_pfit.enabled)
> > +		return;
> >  =

> > -		if (WARN_ON(crtc_state->scaler_state.scaler_id < 0))
> > -			return;
> > +	if (WARN_ON(crtc_state->scaler_state.scaler_id < 0))
> > +		return;
> >  =

> > -		pfit_w =3D (crtc_state->pch_pfit.size >> 16) & 0xFFFF;
> > -		pfit_h =3D crtc_state->pch_pfit.size & 0xFFFF;
> > +	pfit_w =3D (crtc_state->pch_pfit.size >> 16) & 0xFFFF;
> > +	pfit_h =3D crtc_state->pch_pfit.size & 0xFFFF;
> >  =

> > -		hscale =3D (crtc_state->pipe_src_w << 16) / pfit_w;
> > -		vscale =3D (crtc_state->pipe_src_h << 16) / pfit_h;
> > +	hscale =3D (crtc_state->pipe_src_w << 16) / pfit_w;
> > +	vscale =3D (crtc_state->pipe_src_h << 16) / pfit_h;
> >  =

> > -		uv_rgb_hphase =3D skl_scaler_calc_phase(1, hscale, false);
> > -		uv_rgb_vphase =3D skl_scaler_calc_phase(1, vscale, false);
> > +	uv_rgb_hphase =3D skl_scaler_calc_phase(1, hscale, false);
> > +	uv_rgb_vphase =3D skl_scaler_calc_phase(1, vscale, false);
> >  =

> > -		id =3D scaler_state->scaler_id;
> > +	id =3D scaler_state->scaler_id;
> >  =

> > -		spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> > +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> >  =

> > -		intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, id), PS_SCALER_EN |
> > -				  PS_FILTER_MEDIUM | scaler_state->scalers[id].mode);
> > -		intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, id),
> > -				  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
> > -		intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, id),
> > -				  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
> > -		intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, id),
> > -				  crtc_state->pch_pfit.pos);
> > -		intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, id),
> > -				  crtc_state->pch_pfit.size);
> > +	intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, id), PS_SCALER_EN |
> > +			  PS_FILTER_MEDIUM | scaler_state->scalers[id].mode);
> > +	intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, id),
> > +			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
> > +	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, id),
> > +			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
> > +	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, id),
> > +			  crtc_state->pch_pfit.pos);
> > +	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, id),
> > +			  crtc_state->pch_pfit.size);
> >  =

> > -		spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> > -	}
> > +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> >  }
> >  =

> >  static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
> > @@ -6277,22 +6277,23 @@ static void ilk_pfit_enable(const struct intel_=
crtc_state *crtc_state)
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	enum pipe pipe =3D crtc->pipe;
> >  =

> > -	if (crtc_state->pch_pfit.enabled) {
> > -		/* Force use of hard-coded filter coefficients
> > -		 * as some pre-programmed values are broken,
> > -		 * e.g. x201.
> > -		 */
> > -		if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
> > -			intel_de_write(dev_priv, PF_CTL(pipe),
> > -				       PF_ENABLE | PF_FILTER_MED_3x3 | PF_PIPE_SEL_IVB(pipe));
> > -		else
> > -			intel_de_write(dev_priv, PF_CTL(pipe),
> > -				       PF_ENABLE | PF_FILTER_MED_3x3);
> > -		intel_de_write(dev_priv, PF_WIN_POS(pipe),
> > -			       crtc_state->pch_pfit.pos);
> > -		intel_de_write(dev_priv, PF_WIN_SZ(pipe),
> > -			       crtc_state->pch_pfit.size);
> =

> Why dont we use the intel_de_write_fw() everywhere?

Because no one thought it mattered much. It only really becomes
significant (mainly when lockdep is enabled) when a large number
of registers are written.

> =

> Manasi
> =

> > -	}
> > +	if (!crtc_state->pch_pfit.enabled)
> > +		return;
> > +
> > +	/* Force use of hard-coded filter coefficients
> > +	 * as some pre-programmed values are broken,
> > +	 * e.g. x201.
> > +	 */
> > +	if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
> > +		intel_de_write(dev_priv, PF_CTL(pipe), PF_ENABLE |
> > +			       PF_FILTER_MED_3x3 | PF_PIPE_SEL_IVB(pipe));
> > +	else
> > +		intel_de_write(dev_priv, PF_CTL(pipe), PF_ENABLE |
> > +			       PF_FILTER_MED_3x3);
> > +	intel_de_write(dev_priv, PF_WIN_POS(pipe),
> > +		       crtc_state->pch_pfit.pos);
> > +	intel_de_write(dev_priv, PF_WIN_SZ(pipe),
> > +		       crtc_state->pch_pfit.size);
> >  }
> >  =

> >  void hsw_enable_ips(const struct intel_crtc_state *crtc_state)
> > @@ -7107,11 +7108,12 @@ void ilk_pfit_disable(const struct intel_crtc_s=
tate *old_crtc_state)
> >  =

> >  	/* To avoid upsetting the power well on haswell only disable the pfit=
 if
> >  	 * it's in use. The hw state code will make sure we get this right. */
> > -	if (old_crtc_state->pch_pfit.enabled) {
> > -		intel_de_write(dev_priv, PF_CTL(pipe), 0);
> > -		intel_de_write(dev_priv, PF_WIN_POS(pipe), 0);
> > -		intel_de_write(dev_priv, PF_WIN_SZ(pipe), 0);
> > -	}
> > +	if (!old_crtc_state->pch_pfit.enabled)
> > +		return;
> > +
> > +	intel_de_write(dev_priv, PF_CTL(pipe), 0);
> > +	intel_de_write(dev_priv, PF_WIN_POS(pipe), 0);
> > +	intel_de_write(dev_priv, PF_WIN_SZ(pipe), 0);
> >  }
> >  =

> >  static void ilk_crtc_disable(struct intel_atomic_state *state,
> > @@ -7927,39 +7929,35 @@ static bool intel_crtc_supports_double_wide(con=
st struct intel_crtc *crtc)
> >  		(crtc->pipe =3D=3D PIPE_A || IS_I915G(dev_priv));
> >  }
> >  =

> > -static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *pipe_con=
fig)
> > +static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_sta=
te)
> >  {
> > -	u32 pixel_rate;
> > -
> > -	pixel_rate =3D pipe_config->hw.adjusted_mode.crtc_clock;
> > +	u32 pixel_rate =3D crtc_state->hw.adjusted_mode.crtc_clock;
> > +	u32 pfit_size =3D crtc_state->pch_pfit.size;
> > +	u64 pipe_w, pipe_h, pfit_w, pfit_h;
> >  =

> >  	/*
> >  	 * We only use IF-ID interlacing. If we ever use
> >  	 * PF-ID we'll need to adjust the pixel_rate here.
> >  	 */
> >  =

> > -	if (pipe_config->pch_pfit.enabled) {
> > -		u64 pipe_w, pipe_h, pfit_w, pfit_h;
> > -		u32 pfit_size =3D pipe_config->pch_pfit.size;
> > -
> > -		pipe_w =3D pipe_config->pipe_src_w;
> > -		pipe_h =3D pipe_config->pipe_src_h;
> > +	if (!crtc_state->pch_pfit.enabled)
> > +		return pixel_rate;
> >  =

> > -		pfit_w =3D (pfit_size >> 16) & 0xFFFF;
> > -		pfit_h =3D pfit_size & 0xFFFF;
> > -		if (pipe_w < pfit_w)
> > -			pipe_w =3D pfit_w;
> > -		if (pipe_h < pfit_h)
> > -			pipe_h =3D pfit_h;
> > +	pipe_w =3D crtc_state->pipe_src_w;
> > +	pipe_h =3D crtc_state->pipe_src_h;
> >  =

> > -		if (WARN_ON(!pfit_w || !pfit_h))
> > -			return pixel_rate;
> > +	pfit_w =3D (pfit_size >> 16) & 0xFFFF;
> > +	pfit_h =3D pfit_size & 0xFFFF;
> > +	if (pipe_w < pfit_w)
> > +		pipe_w =3D pfit_w;
> > +	if (pipe_h < pfit_h)
> > +		pipe_h =3D pfit_h;
> >  =

> > -		pixel_rate =3D div_u64(mul_u32_u32(pixel_rate, pipe_w * pipe_h),
> > -				     pfit_w * pfit_h);
> > -	}
> > +	if (WARN_ON(!pfit_w || !pfit_h))
> > +		return pixel_rate;
> >  =

> > -	return pixel_rate;
> > +	return div_u64(mul_u32_u32(pixel_rate, pipe_w * pipe_h),
> > +		       pfit_w * pfit_h);
> >  }
> >  =

> >  static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crt=
c_state)
> > @@ -9153,9 +9151,9 @@ static bool i9xx_has_pfit(struct drm_i915_private=
 *dev_priv)
> >  		IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
> >  }
> >  =

> > -static void i9xx_get_pfit_config(struct intel_crtc *crtc,
> > -				 struct intel_crtc_state *pipe_config)
> > +static void i9xx_get_pfit_config(struct intel_crtc_state *crtc_state)
> >  {
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	u32 tmp;
> >  =

> > @@ -9175,9 +9173,9 @@ static void i9xx_get_pfit_config(struct intel_crt=
c *crtc,
> >  			return;
> >  	}
> >  =

> > -	pipe_config->gmch_pfit.control =3D tmp;
> > -	pipe_config->gmch_pfit.pgm_ratios =3D intel_de_read(dev_priv,
> > -							  PFIT_PGM_RATIOS);
> > +	crtc_state->gmch_pfit.control =3D tmp;
> > +	crtc_state->gmch_pfit.pgm_ratios =3D
> > +		intel_de_read(dev_priv, PFIT_PGM_RATIOS);
> >  }
> >  =

> >  static void vlv_crtc_clock_get(struct intel_crtc *crtc,
> > @@ -9427,7 +9425,7 @@ static bool i9xx_get_pipe_config(struct intel_crt=
c *crtc,
> >  	intel_get_pipe_timings(crtc, pipe_config);
> >  	intel_get_pipe_src_size(crtc, pipe_config);
> >  =

> > -	i9xx_get_pfit_config(crtc, pipe_config);
> > +	i9xx_get_pfit_config(pipe_config);
> >  =

> >  	if (INTEL_GEN(dev_priv) >=3D 4) {
> >  		/* No way to read it out on pipes B and C */
> > @@ -10393,37 +10391,37 @@ static void ilk_get_fdi_m_n_config(struct int=
el_crtc *crtc,
> >  				     &pipe_config->fdi_m_n, NULL);
> >  }
> >  =

> > -static void skl_get_pfit_config(struct intel_crtc *crtc,
> > -				struct intel_crtc_state *pipe_config)
> > +static void skl_get_pfit_config(struct intel_crtc_state *crtc_state)
> >  {
> > -	struct drm_device *dev =3D crtc->base.dev;
> > -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > -	struct intel_crtc_scaler_state *scaler_state =3D &pipe_config->scaler=
_state;
> > -	u32 ps_ctrl =3D 0;
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > +	struct intel_crtc_scaler_state *scaler_state =3D &crtc_state->scaler_=
state;
> >  	int id =3D -1;
> >  	int i;
> >  =

> >  	/* find scaler attached to this pipe */
> >  	for (i =3D 0; i < crtc->num_scalers; i++) {
> > -		ps_ctrl =3D intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
> > -		if (ps_ctrl & PS_SCALER_EN && !(ps_ctrl & PS_PLANE_SEL_MASK)) {
> > -			id =3D i;
> > -			pipe_config->pch_pfit.enabled =3D true;
> > -			pipe_config->pch_pfit.pos =3D intel_de_read(dev_priv,
> > -								  SKL_PS_WIN_POS(crtc->pipe, i));
> > -			pipe_config->pch_pfit.size =3D intel_de_read(dev_priv,
> > -								   SKL_PS_WIN_SZ(crtc->pipe, i));
> > -			scaler_state->scalers[i].in_use =3D true;
> > -			break;
> > -		}
> > +		u32 tmp;
> > +
> > +		tmp =3D intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
> > +		if ((tmp & (PS_SCALER_EN | PS_PLANE_SEL_MASK)) !=3D PS_SCALER_EN)
> > +			continue;
> > +
> > +		id =3D i;
> > +		crtc_state->pch_pfit.enabled =3D true;
> > +		crtc_state->pch_pfit.pos =3D
> > +			intel_de_read(dev_priv, SKL_PS_WIN_POS(crtc->pipe, i));
> > +		crtc_state->pch_pfit.size =3D
> > +			intel_de_read(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, i));
> > +		scaler_state->scalers[i].in_use =3D true;
> > +		break;
> >  	}
> >  =

> >  	scaler_state->scaler_id =3D id;
> > -	if (id >=3D 0) {
> > +	if (id >=3D 0)
> >  		scaler_state->scaler_users |=3D (1 << SKL_CRTC_INDEX);
> > -	} else {
> > +	else
> >  		scaler_state->scaler_users &=3D ~(1 << SKL_CRTC_INDEX);
> > -	}
> >  }
> >  =

> >  static void
> > @@ -10559,30 +10557,29 @@ skl_get_initial_plane_config(struct intel_crt=
c *crtc,
> >  	kfree(intel_fb);
> >  }
> >  =

> > -static void ilk_get_pfit_config(struct intel_crtc *crtc,
> > -				struct intel_crtc_state *pipe_config)
> > +static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
> >  {
> > -	struct drm_device *dev =3D crtc->base.dev;
> > -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	u32 tmp;
> >  =

> >  	tmp =3D intel_de_read(dev_priv, PF_CTL(crtc->pipe));
> > +	if ((tmp & PF_ENABLE) =3D=3D 0)
> > +		return;
> >  =

> > -	if (tmp & PF_ENABLE) {
> > -		pipe_config->pch_pfit.enabled =3D true;
> > -		pipe_config->pch_pfit.pos =3D intel_de_read(dev_priv,
> > -							  PF_WIN_POS(crtc->pipe));
> > -		pipe_config->pch_pfit.size =3D intel_de_read(dev_priv,
> > -							   PF_WIN_SZ(crtc->pipe));
> > -
> > -		/* We currently do not free assignements of panel fitters on
> > -		 * ivb/hsw (since we don't use the higher upscaling modes which
> > -		 * differentiates them) so just WARN about this case for now. */
> > -		if (IS_GEN(dev_priv, 7)) {
> > -			WARN_ON((tmp & PF_PIPE_SEL_MASK_IVB) !=3D
> > -				PF_PIPE_SEL_IVB(crtc->pipe));
> > -		}
> > -	}
> > +	crtc_state->pch_pfit.enabled =3D true;
> > +	crtc_state->pch_pfit.pos =3D
> > +		intel_de_read(dev_priv, PF_WIN_POS(crtc->pipe));
> > +	crtc_state->pch_pfit.size =3D
> > +		intel_de_read(dev_priv, PF_WIN_SZ(crtc->pipe));
> > +
> > +	/*
> > +	 * We currently do not free assignements of panel fitters on
> > +	 * ivb/hsw (since we don't use the higher upscaling modes which
> > +	 * differentiates them) so just WARN about this case for now.
> > +	 */
> > +	WARN_ON(IS_GEN(dev_priv, 7) &&
> > +		(tmp & PF_PIPE_SEL_MASK_IVB) !=3D PF_PIPE_SEL_IVB(crtc->pipe));
> >  }
> >  =

> >  static bool ilk_get_pipe_config(struct intel_crtc *crtc,
> > @@ -10694,7 +10691,7 @@ static bool ilk_get_pipe_config(struct intel_cr=
tc *crtc,
> >  	intel_get_pipe_timings(crtc, pipe_config);
> >  	intel_get_pipe_src_size(crtc, pipe_config);
> >  =

> > -	ilk_get_pfit_config(crtc, pipe_config);
> > +	ilk_get_pfit_config(pipe_config);
> >  =

> >  	ret =3D true;
> >  =

> > @@ -11219,9 +11216,9 @@ static bool hsw_get_pipe_config(struct intel_cr=
tc *crtc,
> >  		power_domain_mask |=3D BIT_ULL(power_domain);
> >  =

> >  		if (INTEL_GEN(dev_priv) >=3D 9)
> > -			skl_get_pfit_config(crtc, pipe_config);
> > +			skl_get_pfit_config(pipe_config);
> >  		else
> > -			ilk_get_pfit_config(crtc, pipe_config);
> > +			ilk_get_pfit_config(pipe_config);
> >  	}
> >  =

> >  	if (hsw_crtc_supports_ips(crtc)) {
> > -- =

> > 2.24.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
