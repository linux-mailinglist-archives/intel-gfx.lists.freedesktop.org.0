Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 222BF2AD550
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 12:34:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0900A892DE;
	Tue, 10 Nov 2020 11:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 414EC892DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Nov 2020 11:34:27 +0000 (UTC)
IronPort-SDR: v4GxJYb2NrO5iI7ZyC4i2QZ7PIhny+g4fkiyduBYl0c6Rh2plbe+ON+7AHkibZMt/iEL+hkpOY
 XSCqUCZwEbfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="234123439"
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="234123439"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 03:34:26 -0800
IronPort-SDR: y4WSiQ+xGE9AMOhTkF5QzrDwG7QQzSpll5aZsRPoOAJp6xVFV0F5/4AYGHNvhVzInfLWLxWNRG
 UAfIFRqfHujQ==
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="541291416"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 03:34:25 -0800
Date: Tue, 10 Nov 2020 13:34:22 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201110113422.GD425411@ideak-desk.fi.intel.com>
References: <20201109231239.17002-1-ville.syrjala@linux.intel.com>
 <20201110112545.GC425411@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201110112545.GC425411@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Introduce
 intel_dpll_get_hw_state()
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 10, 2020 at 01:25:45PM +0200, Imre Deak wrote:
> On Tue, Nov 10, 2020 at 01:12:36AM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Add a wrapper for the pll .get_hw_state() vfunc. Makes life
> > a bit less miserable when you don't have to worry where the
> > function pointer is stored.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Reviewed-by: Imre Deak <imre.deak@intel.com>
> =

> There's also assert_shared_dpll().

Ah nvm, it's also converted.

> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 14 +++++++------
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 20 ++++++++++++++++---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 +++
> >  3 files changed, 28 insertions(+), 9 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 2729c852c668..a7c4cd7a8a31 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -10927,6 +10927,7 @@ static bool ilk_get_pipe_config(struct intel_cr=
tc *crtc,
> >  	if (intel_de_read(dev_priv, PCH_TRANSCONF(crtc->pipe)) & TRANS_ENABLE=
) {
> >  		struct intel_shared_dpll *pll;
> >  		enum intel_dpll_id pll_id;
> > +		bool pll_active;
> >  =

> >  		pipe_config->has_pch_encoder =3D true;
> >  =

> > @@ -10954,8 +10955,9 @@ static bool ilk_get_pipe_config(struct intel_cr=
tc *crtc,
> >  			intel_get_shared_dpll_by_id(dev_priv, pll_id);
> >  		pll =3D pipe_config->shared_dpll;
> >  =

> > -		drm_WARN_ON(dev, !pll->info->funcs->get_hw_state(dev_priv, pll,
> > -						 &pipe_config->dpll_hw_state));
> > +		pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> > +						     &pipe_config->dpll_hw_state);
> > +		drm_WARN_ON(dev, !pll_active);
> >  =

> >  		tmp =3D pipe_config->dpll_hw_state.dpll;
> >  		pipe_config->pixel_multiplier =3D
> > @@ -11346,9 +11348,9 @@ static void hsw_get_ddi_port_state(struct intel=
_crtc *crtc,
> >  =

> >  	pll =3D pipe_config->shared_dpll;
> >  	if (pll) {
> > -		drm_WARN_ON(&dev_priv->drm,
> > -			    !pll->info->funcs->get_hw_state(dev_priv, pll,
> > -						&pipe_config->dpll_hw_state));
> > +		bool pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> > +							  &pipe_config->dpll_hw_state);
> > +		drm_WARN_ON(&dev_priv->drm, !pll_active);
> >  	}
> >  =

> >  	/*
> > @@ -14587,7 +14589,7 @@ verify_single_dpll_state(struct drm_i915_privat=
e *dev_priv,
> >  =

> >  	drm_dbg_kms(&dev_priv->drm, "%s\n", pll->info->name);
> >  =

> > -	active =3D pll->info->funcs->get_hw_state(dev_priv, pll, &dpll_hw_sta=
te);
> > +	active =3D intel_dpll_get_hw_state(dev_priv, pll, &dpll_hw_state);
> >  =

> >  	if (!(pll->info->flags & INTEL_DPLL_ALWAYS_ON)) {
> >  		I915_STATE_WARN(!pll->on && pll->active_mask,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gp=
u/drm/i915/display/intel_dpll_mgr.c
> > index a95e6a2ac698..1604c20bac33 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -141,7 +141,7 @@ void assert_shared_dpll(struct drm_i915_private *de=
v_priv,
> >  		     "asserting DPLL %s with no DPLL\n", onoff(state)))
> >  		return;
> >  =

> > -	cur_state =3D pll->info->funcs->get_hw_state(dev_priv, pll, &hw_state=
);
> > +	cur_state =3D intel_dpll_get_hw_state(dev_priv, pll, &hw_state);
> >  	I915_STATE_WARN(cur_state !=3D state,
> >  	     "%s assertion failure (expected %s, current %s)\n",
> >  			pll->info->name, onoff(state), onoff(cur_state));
> > @@ -4527,13 +4527,27 @@ int intel_dpll_get_freq(struct drm_i915_private=
 *i915,
> >  	return pll->info->funcs->get_freq(i915, pll);
> >  }
> >  =

> > +/**
> > + * intel_dpll_get_hw_state - readout the DPLL's hardware state
> > + * @i915: i915 device
> > + * @pll: DPLL for which to calculate the output frequency
> > + * @hw_state: DPLL's hardware state
> > + *
> > + * Read out @pll's hardware state into @hw_state.
> > + */
> > +bool intel_dpll_get_hw_state(struct drm_i915_private *i915,
> > +			     struct intel_shared_dpll *pll,
> > +			     struct intel_dpll_hw_state *hw_state)
> > +{
> > +	return pll->info->funcs->get_hw_state(i915, pll, hw_state);
> > +}
> > +
> >  static void readout_dpll_hw_state(struct drm_i915_private *i915,
> >  				  struct intel_shared_dpll *pll)
> >  {
> >  	struct intel_crtc *crtc;
> >  =

> > -	pll->on =3D pll->info->funcs->get_hw_state(i915, pll,
> > -						 &pll->state.hw_state);
> > +	pll->on =3D intel_dpll_get_hw_state(i915, pll, &pll->state.hw_state);
> >  =

> >  	if (IS_JSL_EHL(i915) && pll->on &&
> >  	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gp=
u/drm/i915/display/intel_dpll_mgr.h
> > index 205542fb8dc7..4357f92eafd6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -400,6 +400,9 @@ void intel_update_active_dpll(struct intel_atomic_s=
tate *state,
> >  			      struct intel_encoder *encoder);
> >  int intel_dpll_get_freq(struct drm_i915_private *i915,
> >  			const struct intel_shared_dpll *pll);
> > +bool intel_dpll_get_hw_state(struct drm_i915_private *i915,
> > +			     struct intel_shared_dpll *pll,
> > +			     struct intel_dpll_hw_state *hw_state);
> >  void intel_prepare_shared_dpll(const struct intel_crtc_state *crtc_sta=
te);
> >  void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_stat=
e);
> >  void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_sta=
te);
> > -- =

> > 2.26.2
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
