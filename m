Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9790C119141
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 20:58:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9FEB6E91E;
	Tue, 10 Dec 2019 19:58:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0B666E91E
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 19:58:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 11:58:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="210543433"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 10 Dec 2019 11:58:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2019 21:58:37 +0200
Date: Tue, 10 Dec 2019 21:58:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191210195837.GD1208@intel.com>
References: <20191112163812.22075-1-ville.syrjala@linux.intel.com>
 <20191112163812.22075-4-ville.syrjala@linux.intel.com>
 <57621c0c0c3f85e4a0fe69ce83270cf9542a15e4.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57621c0c0c3f85e4a0fe69ce83270cf9542a15e4.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Pass cpu transcoder to
 assert_pipe()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 10, 2019 at 06:23:36PM +0000, Souza, Jose wrote:
> On Tue, 2019-11-12 at 18:38 +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > In order to eliminate intel_pipe_to_cpu_transcoder() (and its
> > crtc->config usage) let's pass the cpu transcoder to
> > assert_pipe() so we don't have to do the pipe->cpu transcoder
> > lookup on HSW+.
> > =

> > On VLV/CHV this can get called during eDP init, which
> > happens before crtc->config->cpu_transcoder is even
> > populated. So currently we're always reading PIPECONF(A)
> > there even if we're trying to check the state of some
> > other pipe.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++++--------
> > ----
> >  drivers/gpu/drm/i915/display/intel_display.h |  9 +++--
> >  2 files changed, 18 insertions(+), 27 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index cabd88337822..6d2112f5bdd0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1040,14 +1040,6 @@ bool bxt_find_best_dpll(struct
> > intel_crtc_state *crtc_state,
> >  				  NULL, best_clock);
> >  }
> >  =

> > -enum transcoder intel_pipe_to_cpu_transcoder(struct drm_i915_private
> > *dev_priv,
> > -					     enum pipe pipe)
> > -{
> > -	struct intel_crtc *crtc =3D intel_get_crtc_for_pipe(dev_priv,
> > pipe);
> > -
> > -	return crtc->config->cpu_transcoder;
> > -}
> > -
> >  static bool pipe_scanline_is_moving(struct drm_i915_private
> > *dev_priv,
> >  				    enum pipe pipe)
> >  {
> > @@ -1266,11 +1258,9 @@ void assert_panel_unlocked(struct
> > drm_i915_private *dev_priv, enum pipe pipe)
> >  }
> >  =

> >  void assert_pipe(struct drm_i915_private *dev_priv,
> > -		 enum pipe pipe, bool state)
> > +		 enum transcoder cpu_transcoder, bool state)
> >  {
> >  	bool cur_state;
> > -	enum transcoder cpu_transcoder =3D
> > intel_pipe_to_cpu_transcoder(dev_priv,
> > -								      p
> > ipe);
> >  	enum intel_display_power_domain power_domain;
> >  	intel_wakeref_t wakeref;
> >  =

> > @@ -1290,8 +1280,9 @@ void assert_pipe(struct drm_i915_private
> > *dev_priv,
> >  	}
> >  =

> >  	I915_STATE_WARN(cur_state !=3D state,
> > -	     "pipe %c assertion failure (expected %s, current %s)\n",
> > -			pipe_name(pipe), onoff(state),
> > onoff(cur_state));
> > +			"transcoder %s assertion failure (expected %s,
> > current %s)\n",
> > +			transcoder_name(cpu_transcoder),
> > +			onoff(state), onoff(cur_state));
> >  }
> >  =

> >  static void assert_plane(struct intel_plane *plane, bool state)
> > @@ -1418,7 +1409,7 @@ static void vlv_enable_pll(struct intel_crtc
> > *crtc,
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	enum pipe pipe =3D crtc->pipe;
> >  =

> > -	assert_pipe_disabled(dev_priv, pipe);
> > +	assert_pipe_disabled(dev_priv, pipe_config->cpu_transcoder);
> >  =

> >  	/* PLL is protected by panel, make sure we can write it */
> >  	assert_panel_unlocked(dev_priv, pipe);
> > @@ -1467,7 +1458,7 @@ static void chv_enable_pll(struct intel_crtc
> > *crtc,
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	enum pipe pipe =3D crtc->pipe;
> >  =

> > -	assert_pipe_disabled(dev_priv, pipe);
> > +	assert_pipe_disabled(dev_priv, pipe_config->cpu_transcoder);
> >  =

> >  	/* PLL is protected by panel, make sure we can write it */
> >  	assert_panel_unlocked(dev_priv, pipe);
> > @@ -1514,7 +1505,7 @@ static void i9xx_enable_pll(struct intel_crtc
> > *crtc,
> >  	u32 dpll =3D crtc_state->dpll_hw_state.dpll;
> >  	int i;
> >  =

> > -	assert_pipe_disabled(dev_priv, crtc->pipe);
> > +	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
> >  =

> >  	/* PLL is protected by panel, make sure we can write it */
> >  	if (i9xx_has_pps(dev_priv))
> > @@ -1563,7 +1554,7 @@ static void i9xx_disable_pll(const struct
> > intel_crtc_state *crtc_state)
> >  		return;
> >  =

> >  	/* Make sure the pipe isn't still relying on us */
> > -	assert_pipe_disabled(dev_priv, pipe);
> > +	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
> >  =

> >  	I915_WRITE(DPLL(pipe), DPLL_VGA_MODE_DIS);
> >  	POSTING_READ(DPLL(pipe));
> > @@ -1574,7 +1565,7 @@ static void vlv_disable_pll(struct
> > drm_i915_private *dev_priv, enum pipe pipe)
> >  	u32 val;
> >  =

> >  	/* Make sure the pipe isn't still relying on us */
> > -	assert_pipe_disabled(dev_priv, pipe);
> > +	assert_pipe_disabled(dev_priv, (enum transcoder)pipe);
> >  =

> >  	val =3D DPLL_INTEGRATED_REF_CLK_VLV |
> >  		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
> > @@ -1591,7 +1582,7 @@ static void chv_disable_pll(struct
> > drm_i915_private *dev_priv, enum pipe pipe)
> >  	u32 val;
> >  =

> >  	/* Make sure the pipe isn't still relying on us */
> > -	assert_pipe_disabled(dev_priv, pipe);
> > +	assert_pipe_disabled(dev_priv, (enum transcoder)pipe);
> >  =

> >  	val =3D DPLL_SSC_REF_CLK_CHV |
> >  		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
> > @@ -4617,7 +4608,7 @@ static void ironlake_fdi_link_train(struct
> > intel_crtc *crtc,
> >  	u32 temp, tries;
> >  =

> >  	/* FDI needs bits from pipe first */
> > -	assert_pipe_enabled(dev_priv, pipe);
> > +	assert_pipe_enabled(dev_priv, crtc_state->cpu_transcoder);
> >  =

> >  	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
> >  	   for train result */
> > @@ -6805,7 +6796,7 @@ static void i9xx_pfit_enable(const struct
> > intel_crtc_state *crtc_state)
> >  	 * according to register description and PRM.
> >  	 */
> >  	WARN_ON(I915_READ(PFIT_CONTROL) & PFIT_ENABLE);
> > -	assert_pipe_disabled(dev_priv, crtc->pipe);
> > +	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
> >  =

> >  	I915_WRITE(PFIT_PGM_RATIOS, crtc_state->gmch_pfit.pgm_ratios);
> >  	I915_WRITE(PFIT_CONTROL, crtc_state->gmch_pfit.control);
> > @@ -7116,7 +7107,7 @@ static void i9xx_pfit_disable(const struct
> > intel_crtc_state *old_crtc_state)
> >  	if (!old_crtc_state->gmch_pfit.control)
> >  		return;
> >  =

> > -	assert_pipe_disabled(dev_priv, crtc->pipe);
> > +	assert_pipe_disabled(dev_priv, old_crtc_state->cpu_transcoder);
> >  =

> >  	DRM_DEBUG_KMS("disabling pfit, current: 0x%08x\n",
> >  		      I915_READ(PFIT_CONTROL));
> > @@ -8128,6 +8119,7 @@ int vlv_force_pll_on(struct drm_i915_private
> > *dev_priv, enum pipe pipe,
> >  		return -ENOMEM;
> >  =

> >  	pipe_config->uapi.crtc =3D &crtc->base;
> > +	pipe_config->cpu_transcoder =3D (enum transcoder)pipe;
> >  	pipe_config->pixel_multiplier =3D 1;
> >  	pipe_config->dpll =3D *dpll;
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> > b/drivers/gpu/drm/i915/display/intel_display.h
> > index d18dc260fe83..f33096876a9a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -510,8 +510,6 @@ enum tc_port intel_port_to_tc(struct
> > drm_i915_private *dev_priv,
> >  			      enum port port);
> >  int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void
> > *data,
> >  				      struct drm_file *file_priv);
> > -enum transcoder intel_pipe_to_cpu_transcoder(struct drm_i915_private
> > *dev_priv,
> > -					     enum pipe pipe);
> >  u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
> >  =

> >  int ironlake_get_lanes_required(int target_clock, int link_bw, int
> > bpp);
> > @@ -613,9 +611,10 @@ void assert_fdi_rx_pll(struct drm_i915_private
> > *dev_priv,
> >  		       enum pipe pipe, bool state);
> >  #define assert_fdi_rx_pll_enabled(d, p) assert_fdi_rx_pll(d, p,
> > true)
> >  #define assert_fdi_rx_pll_disabled(d, p) assert_fdi_rx_pll(d, p,
> > false)
> > -void assert_pipe(struct drm_i915_private *dev_priv, enum pipe pipe,
> > bool state);
> > -#define assert_pipe_enabled(d, p) assert_pipe(d, p, true)
> > -#define assert_pipe_disabled(d, p) assert_pipe(d, p, false)
> > +void assert_pipe(struct drm_i915_private *dev_priv,
> > +		 enum transcoder cpu_transcoder, bool state);
> > +#define assert_pipe_enabled(d, t) assert_pipe(d, t, true)
> > +#define assert_pipe_disabled(d, t) assert_pipe(d, t, false)
> =

> Maybe while doing all those already rename it to
> assert_transcoder_enabled/disabled()?

Perhaps. Although then it's inconsistent with
intel_{enable,disable}_pipe() so should maybe rename those
as well. I think I'll leave all that for another day.

> =

> Also why not just squash with the previous patch?

Why? The two patches are touching two totally different things.

> =

> Other than that:
> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> >  =

> >  /* Use I915_STATE_WARN(x) and I915_STATE_WARN_ON() (rather than
> > WARN() and
> >   * WARN_ON()) for hw state sanity checks to check for unexpected
> > conditions

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
