Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E64F1A1D08
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:01:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C623E6E9A2;
	Wed,  8 Apr 2020 08:01:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01A5F6E9A2
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:01:45 +0000 (UTC)
IronPort-SDR: 4QL3r8CDsASYLGQH0/dYqcOfc19NTkdhWhi3cvyniLjwa4yLotoUNiF+USEY412lyYlB5tZ2Um
 CSPr1ETlQOsA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 01:01:44 -0700
IronPort-SDR: 0yME08FEsG9mfMxyGfppAvLufrtlMlonY+ij+O4Zt6bDDwHVofzC/5mU//5bakwdQ39dJitEsf
 GJz8c8cavRAw==
X-IronPort-AV: E=Sophos;i="5.72,357,1580803200"; d="scan'208";a="425052296"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 01:01:42 -0700
Date: Wed, 8 Apr 2020 10:58:04 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200408075804.GA20704@intel.com>
References: <20200326181005.11775-6-stanislav.lisovskiy@intel.com>
 <20200403062003.11539-1-stanislav.lisovskiy@intel.com>
 <20200407190128.GN6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407190128.GN6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v21 05/10] drm/i915: Extract gen specific
 functions from intel_can_enable_sagv
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 07, 2020 at 10:01:28PM +0300, Ville Syrj=E4l=E4 wrote:
> On Fri, Apr 03, 2020 at 09:20:03AM +0300, Stanislav Lisovskiy wrote:
> > Addressing one of the comments, recommending to extract platform
> > specific code from intel_can_enable_sagv as a preparation, before
> > we are going to add support for tgl+.
> > =

> > Current code in intel_can_enable_sagv is valid only for skl,
> > so this patch adds also proper support for icl, subsequent
> > patches will add support for tgl+, combined with other required
> > changes.
> > =

> > v2: - Renamed icl_can_enable_sagv into icl_crtc_can_enable_sagv(Ville)
> >     - Removed dev variables(Ville)
> >     - Constified crtc/plane_state in icl_crtc_can_enable_sagv
> >       function(Ville)
> >     - Added hw.active check(Ville)
> >     - Refactored if ladder(Ville)
> > =

> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 84 +++++++++++++++++++++------------
> >  1 file changed, 55 insertions(+), 29 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
> > index f8d62d1977ac..27d4d626cb34 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -3757,42 +3757,25 @@ intel_disable_sagv(struct drm_i915_private *dev=
_priv)
> >  	return 0;
> >  }
> >  =

> > -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> > +static bool icl_crtc_can_enable_sagv(const struct intel_crtc_state *cr=
tc_state)
> >  {
> > -	struct drm_device *dev =3D state->base.dev;
> > -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > -	struct intel_crtc *crtc;
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->=
dev);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct intel_plane *plane;
> > -	struct intel_crtc_state *crtc_state;
> > -	enum pipe pipe;
> > +	const struct intel_plane_state *plane_state;
> >  	int level, latency;
> >  =

> > -	if (!intel_has_sagv(dev_priv))
> > +	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
> > +		DRM_DEBUG_KMS("No SAGV for interlaced mode on pipe %c\n",
> > +			      pipe_name(crtc->pipe));
> >  		return false;
> > +	}
> >  =

> > -	/*
> > -	 * If there are no active CRTCs, no additional checks need be perform=
ed
> > -	 */
> > -	if (hweight8(state->active_pipes) =3D=3D 0)
> > +	if (!crtc_state->hw.active)
> =

> Should really be checked before anything else. Doesn't matter too much
> anymore since I made us clear the crtc state always, but still a bit
> inconsistent to look at other stuff in the state before we even know if
> the crtc is even enabled.
> =

> >  		return true;
> >  =

> > -	/*
> > -	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> > -	 * more then one pipe enabled
> > -	 */
> > -	if (hweight8(state->active_pipes) > 1)
> > -		return false;
> > -
> > -	/* Since we're now guaranteed to only have one active CRTC... */
> > -	pipe =3D ffs(state->active_pipes) - 1;
> > -	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> > -	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > -
> > -	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> > -		return false;
> > -
> > -	for_each_intel_plane_on_crtc(dev, crtc, plane) {
> > -		struct skl_plane_wm *wm =3D
> > +	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc=
_state) {
> > +		const struct skl_plane_wm *wm =3D
> >  			&crtc_state->wm.skl.optimal.planes[plane->id];
> >  =

> >  		/* Skip this plane if it's not enabled */
> > @@ -3807,7 +3790,7 @@ bool intel_can_enable_sagv(struct intel_atomic_st=
ate *state)
> >  		latency =3D dev_priv->wm.skl_latency[level];
> >  =

> >  		if (skl_needs_memory_bw_wa(dev_priv) &&
> > -		    plane->base.state->fb->modifier =3D=3D
> > +		    plane_state->uapi.fb->modifier =3D=3D
> =

> hw.fb
> =

> With those this is basically good, but still need to think how to avoid
> the regression due to only checking the crtcs in the state.

Well tbh, initially you told me that this *_crtc_can_enable_sagv function e=
xtraction
can be "trivially" done as a separate patch :)) So I followed your instruct=
ion, and =

then I got a comment saying that "this is now temporary busted because we a=
re checking
only crtcs in a state". This kind of contraversial requirements - in order =
not to =

have it "temporary busted", we should have introduced it at the same time w=
ith SAGV mask,
at the same time you wanted it to be extracted as a separate patch.

In my opinion we are chasing own tail here. 1) Anyway this patch is transie=
nt and moreover
it is quite likely that if wm/ddb allocations had changed we anyway now hav=
e all of those
added into the state. 2) We could have just introduced it at the same time =
with a mask
in bw_state thus avoiding that problem, what I actually had done in my _ini=
tial_ patch.

Stan

> =

> >  		    I915_FORMAT_MOD_X_TILED)
> >  			latency +=3D 15;
> >  =

> > @@ -3823,6 +3806,49 @@ bool intel_can_enable_sagv(struct intel_atomic_s=
tate *state)
> >  	return true;
> >  }
> >  =

> > +static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *cr=
tc_state)
> > +{
> > +	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state=
->uapi.state);
> > +
> > +	/*
> > +	 * It has been recommended that for Gen 9 we switch SAGV off when
> > +	 * multiple pipes are used.
> > +	 */
> > +	if (hweight8(state->active_pipes) > 1)
> > +		return false;
> > +
> > +	/*
> > +	 * Besides active pipe limitation, rest of checks pretty much match I=
CL
> > +	 * so no need to duplicate code
> > +	 */
> > +	return icl_crtc_can_enable_sagv(crtc_state);
> > +}
> > +
> > +bool intel_can_enable_sagv(struct intel_atomic_state *state)
> > +{
> > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > +	struct intel_crtc *crtc;
> > +	const struct intel_crtc_state *crtc_state;
> > +	int i;
> > +
> > +	if (!intel_has_sagv(dev_priv))
> > +		return false;
> > +
> > +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> > +		bool can_sagv;
> > +
> > +		if (INTEL_GEN(dev_priv) >=3D 11)
> > +			can_sagv =3D icl_crtc_can_enable_sagv(crtc_state);
> > +		else
> > +			can_sagv =3D skl_crtc_can_enable_sagv(crtc_state);
> > +
> > +		if (!can_sagv)
> > +			return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >  /*
> >   * Calculate initial DBuf slice offset, based on slice size
> >   * and mask(i.e if slice size is 1024 and second slice is enabled
> > -- =

> > 2.24.1.485.gad05a3d8e5
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
