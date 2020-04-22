Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A09201B3972
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 09:53:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 055536E9E8;
	Wed, 22 Apr 2020 07:53:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 782F36E9E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 07:53:54 +0000 (UTC)
IronPort-SDR: HaRDtHjji4vKlIoOYtbCBqE7p8oz9ckmVLwwvTIZU94U2lvi7k2Ug4c7JuBNAWJeMdQwl4D3bd
 uN6iB7tj7i3g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 00:53:53 -0700
IronPort-SDR: PKQofkSVPCrgbtYjPkpq2wSRjHo0t8WvrgqKi14D7rB17NXmraykAQ/1uyWrahcwQpiEZpDAFE
 qZTx+ZtuO2ew==
X-IronPort-AV: E=Sophos;i="5.72,412,1580803200"; d="scan'208";a="429820914"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 00:53:52 -0700
Date: Wed, 22 Apr 2020 10:50:22 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200422075022.GA28628@intel.com>
References: <20200420111416.23550-1-stanislav.lisovskiy@intel.com>
 <20200420111416.23550-3-stanislav.lisovskiy@intel.com>
 <20200421160038.GC6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421160038.GC6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v25 2/8] drm/i915: Use bw state for per crtc
 SAGV evaluation
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

On Tue, Apr 21, 2020 at 07:00:38PM +0300, Ville Syrj=E4l=E4 wrote:
> On Mon, Apr 20, 2020 at 02:14:10PM +0300, Stanislav Lisovskiy wrote:
> > Future platforms require per-crtc SAGV evaluation
> > and serializing global state when those are changed
> > from different commits.
> > =

> > v2: - Add has_sagv check to intel_crtc_can_enable_sagv
> >       so that it sets bit in reject mask.
> >     - Use bw_state in intel_pre/post_plane_enable_sagv
> >       instead of atomic state
> > =

> > v3: - Fixed rebase conflict, now using
> >       intel_atomic_crtc_state_for_each_plane_state in
> >       order to call it from atomic check
> > v4: - Use fb modifier from plane state
> > =

> > v5: - Make intel_has_sagv static again(Ville)
> >     - Removed unnecessary NULL assignments(Ville)
> >     - Removed unnecessary SAGV debug(Ville)
> >     - Call intel_compute_sagv_mask only for modesets(Ville)
> >     - Serialize global state only if sagv results change, but
> >       not mask itself(Ville)
> > =

> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> > Cc: James Ausmus <james.ausmus@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.h |   6 ++
> >  drivers/gpu/drm/i915/intel_pm.c         | 113 ++++++++++++++++++------
> >  drivers/gpu/drm/i915/intel_pm.h         |   3 +-
> >  3 files changed, 93 insertions(+), 29 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/=
i915/display/intel_bw.h
> > index ac004d6f4276..d6df91058223 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > @@ -18,6 +18,12 @@ struct intel_crtc_state;
> >  struct intel_bw_state {
> >  	struct intel_global_state base;
> >  =

> > +	/*
> > +	 * Contains a bit mask, used to determine, whether correspondent
> > +	 * pipe allows SAGV or not.
> > +	 */
> > +	u8 pipe_sagv_reject;
> > +
> >  	unsigned int data_rate[I915_MAX_PIPES];
> >  	u8 num_active_planes[I915_MAX_PIPES];
> >  };
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
> > index b0810d76ad47..d06a1a3713ed 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -43,6 +43,7 @@
> >  #include "i915_fixed.h"
> >  #include "i915_irq.h"
> >  #include "i915_trace.h"
> > +#include "display/intel_bw.h"
> >  #include "intel_pm.h"
> >  #include "intel_sideband.h"
> >  #include "../../../platform/x86/intel_ips.h"
> > @@ -3760,34 +3761,75 @@ intel_disable_sagv(struct drm_i915_private *dev=
_priv)
> >  void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > +	const struct intel_bw_state *new_bw_state;
> >  =

> > -	if (!intel_can_enable_sagv(state))
> > +	/*
> > +	 * Just return if we can't control SAGV or don't have it.
> > +	 * This is different from situation when we have SAGV but just can't
> > +	 * afford it due to DBuf limitation - in case if SAGV is completely
> > +	 * disabled in a BIOS, we are not even allowed to send a PCode reques=
t,
> > +	 * as it will throw an error. So have to check it here.
> > +	 */
> > +	if (!intel_has_sagv(dev_priv))
> > +		return;
> > +
> > +	new_bw_state =3D intel_atomic_get_new_bw_state(state);
> > +	if (!new_bw_state)
> > +		return;
> > +
> > +	if (!intel_can_enable_sagv(new_bw_state))
> >  		intel_disable_sagv(dev_priv);
> >  }
> >  =

> >  void intel_sagv_post_plane_update(struct intel_atomic_state *state)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > +	const struct intel_bw_state *new_bw_state;
> >  =

> > -	if (intel_can_enable_sagv(state))
> > +	/*
> > +	 * Just return if we can't control SAGV or don't have it.
> > +	 * This is different from situation when we have SAGV but just can't
> > +	 * afford it due to DBuf limitation - in case if SAGV is completely
> > +	 * disabled in a BIOS, we are not even allowed to send a PCode reques=
t,
> > +	 * as it will throw an error. So have to check it here.
> > +	 */
> > +	if (!intel_has_sagv(dev_priv))
> > +		return;
> > +
> > +	new_bw_state =3D intel_atomic_get_new_bw_state(state);
> > +	if (!new_bw_state)
> > +		return;
> > +
> > +	if (intel_can_enable_sagv(new_bw_state))
> >  		intel_enable_sagv(dev_priv);
> >  }
> >  =

> >  static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *=
crtc_state)
> >  {
> > -	struct drm_device *dev =3D crtc_state->uapi.crtc->dev;
> > -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > +	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state=
->uapi.state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	struct intel_plane *plane;
> > +	const struct intel_plane_state *plane_state;
> >  	int level, latency;
> >  =

> > +	if (!intel_has_sagv(dev_priv))
> > +		return false;
> > +
> >  	if (!crtc_state->hw.active)
> >  		return true;
> >  =

> > +	/*
> > +	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> > +	 * more then one pipe enabled
> > +	 */
> > +	if (hweight8(state->active_pipes) > 1)
> > +		return false;
> > +
> >  	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> >  		return false;
> >  =

> > -	for_each_intel_plane_on_crtc(dev, crtc, plane) {
> > +	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc=
_state) {
> >  		const struct skl_plane_wm *wm =3D
> >  			&crtc_state->wm.skl.optimal.planes[plane->id];
> >  =

> > @@ -3803,7 +3845,7 @@ static bool intel_crtc_can_enable_sagv(const stru=
ct intel_crtc_state *crtc_state
> >  		latency =3D dev_priv->wm.skl_latency[level];
> >  =

> >  		if (skl_needs_memory_bw_wa(dev_priv) &&
> > -		    plane->base.state->fb->modifier =3D=3D
> > +		    plane_state->uapi.fb->modifier =3D=3D
> >  		    I915_FORMAT_MOD_X_TILED)
> >  			latency +=3D 15;
> >  =

> > @@ -3819,35 +3861,44 @@ static bool intel_crtc_can_enable_sagv(const st=
ruct intel_crtc_state *crtc_state
> >  	return true;
> >  }
> >  =

> > -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> > +bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
> >  {
> > -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > +	return bw_state->pipe_sagv_reject =3D=3D 0;
> > +}
> > +
> > +static int intel_compute_sagv_mask(struct intel_atomic_state *state)
> > +{
> > +	int ret;
> >  	struct intel_crtc *crtc;
> > -	const struct intel_crtc_state *crtc_state;
> > -	enum pipe pipe;
> > +	struct intel_crtc_state *new_crtc_state;
> > +	struct intel_bw_state *new_bw_state =3D NULL;
> > +	const struct intel_bw_state *old_bw_state =3D NULL;
> > +	int i;
> >  =

> > -	if (!intel_has_sagv(dev_priv))
> > -		return false;
> > +	for_each_new_intel_crtc_in_state(state, crtc,
> > +					 new_crtc_state, i) {
> > +		new_bw_state =3D intel_atomic_get_bw_state(state);
> > +		if (IS_ERR(new_bw_state))
> > +			return PTR_ERR(new_bw_state);
> >  =

> > -	/*
> > -	 * If there are no active CRTCs, no additional checks need be perform=
ed
> > -	 */
> > -	if (hweight8(state->active_pipes) =3D=3D 0)
> > -		return true;
> > +		old_bw_state =3D intel_atomic_get_old_bw_state(state);
> >  =

> > -	/*
> > -	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> > -	 * more then one pipe enabled
> > -	 */
> > -	if (hweight8(state->active_pipes) > 1)
> > -		return false;
> > +		if (intel_crtc_can_enable_sagv(new_crtc_state))
> > +			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
> > +		else
> > +			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> > +	}
> >  =

> > -	/* Since we're now guaranteed to only have one active CRTC... */
> > -	pipe =3D ffs(state->active_pipes) - 1;
> > -	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> > -	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > +	if (!new_bw_state)
> > +		return 0;
> >  =

> > -	return intel_crtc_can_enable_sagv(crtc_state);
> > +	if (intel_can_enable_sagv(new_bw_state) !=3D intel_can_enable_sagv(ol=
d_bw_state)) {
> =

> Missing the lock_global_state() for the old_maks !=3D new_mask case.
> Otherwise seems fine.

Yep, however most likely if SAGV state had changed, allowed qgv points will=
 change
and then you'll have to serialize commits anyway.

> =

> Now I believe we need to separate state->modeset from sag, as I
> mentioned in the previous review. Please take care of that stuff
> before we continue with the rest of this series.

Ah it's this active_pipes discussion again.. So the problem is that
we set active_pipes only for modeset commits as I understand.

One thing which worries me here, is that duplication of active_pipes
in semantically different states seems redundant imo, i.e the more
states like bw_state, cdclk_state, dbuf_state and etc you are going
to introduce - the more this duplication will happen. =


I think what is missing here(I mentioned this also in dbuf review)
is that we need a separate state containing active pipes, which can
be then queried, each time we need to get active_pipes.

In order to separate SAGV from modeset to use active_pipes, we basically
need to populate active pipes in a non-modeset commits, as we can't just
read it from dev_priv right away, we simply need one more global state
object containing this, which we can query just the same way we do for
cdclk_state and bw_state. I.e you just have one crtc lock grabbed and
copy this old global state to new state.

This would eliminate the need in duplicating that field in other states,
also reducing probability of some issues with that duplication.

Not sure, may be there are some arguments, why we have to duplicate it
-  at least would like to know those then :D

IMO idea to split global state into a pool of separately maintainable objec=
ts
was great - this brings much more flexibility to driver code, so lets
utilize this.



Stan


> =

> > +		ret =3D intel_atomic_serialize_global_state(&new_bw_state->base);
> > +		if (ret)
> > +			return ret;
> > +	}
> > +
> > +	return 0;
> >  }
> >  =

> >  /*
> > @@ -5860,6 +5911,12 @@ skl_compute_wm(struct intel_atomic_state *state)
> >  	if (ret)
> >  		return ret;
> >  =

> > +	if (state->modeset) {
> > +		ret =3D intel_compute_sagv_mask(state);
> > +		if (ret)
> > +			return ret;
> > +	}
> > +
> >  	/*
> >  	 * skl_compute_ddb() will have adjusted the final watermarks
> >  	 * based on how much ddb is available. Now we can actually
> > diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/int=
el_pm.h
> > index 9a6036ab0f90..fd1dc422e6c5 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.h
> > +++ b/drivers/gpu/drm/i915/intel_pm.h
> > @@ -9,6 +9,7 @@
> >  #include <linux/types.h>
> >  =

> >  #include "i915_reg.h"
> > +#include "display/intel_bw.h"
> >  =

> >  struct drm_device;
> >  struct drm_i915_private;
> > @@ -41,7 +42,7 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
> >  			      struct skl_pipe_wm *out);
> >  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
> >  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
> > -bool intel_can_enable_sagv(struct intel_atomic_state *state);
> > +bool intel_can_enable_sagv(const struct intel_bw_state *bw_state);
> >  int intel_enable_sagv(struct drm_i915_private *dev_priv);
> >  int intel_disable_sagv(struct drm_i915_private *dev_priv);
> >  void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
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
