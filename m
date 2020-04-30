Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DEF1BF532
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 12:19:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1BED6E1F3;
	Thu, 30 Apr 2020 10:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06BB76E1F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 10:19:21 +0000 (UTC)
IronPort-SDR: g8xPszs5jaEqvs18kAkuLD790UxA+UsVjl2yTO38iL8oRzCeYcEHAt3wy9dybX/XwK+KdZSJP+
 lNN81i0JncSg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 03:19:21 -0700
IronPort-SDR: ojb1il9MWOETdDEhAVUnMoMeJ7zdnOZPFaCa2POYzG7/BRz/M+29nYK2FVHW85xxOcCOqCHlJ/
 JPSpii+uDWTQ==
X-IronPort-AV: E=Sophos;i="5.73,334,1583222400"; d="scan'208";a="405356975"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 03:19:20 -0700
Date: Thu, 30 Apr 2020 13:14:57 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200430101457.GA2942@intel.com>
References: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
 <20200423075902.21892-3-stanislav.lisovskiy@intel.com>
 <20200430090922.GN6112@intel.com> <20200430091335.GA2341@intel.com>
 <20200430092538.GP6112@intel.com> <20200430095242.GA2558@intel.com>
 <20200430100820.GQ6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430100820.GQ6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v26 2/9] drm/i915: Use bw state for per crtc
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 30, 2020 at 01:08:20PM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, Apr 30, 2020 at 12:52:42PM +0300, Lisovskiy, Stanislav wrote:
> > On Thu, Apr 30, 2020 at 12:25:38PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Thu, Apr 30, 2020 at 12:13:35PM +0300, Lisovskiy, Stanislav wrote:
> > > > On Thu, Apr 30, 2020 at 12:09:22PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > > On Thu, Apr 23, 2020 at 10:58:55AM +0300, Stanislav Lisovskiy wro=
te:
> > > > > > Future platforms require per-crtc SAGV evaluation
> > > > > > and serializing global state when those are changed
> > > > > > from different commits.
> > > > > > =

> > > > > > v2: - Add has_sagv check to intel_crtc_can_enable_sagv
> > > > > >       so that it sets bit in reject mask.
> > > > > >     - Use bw_state in intel_pre/post_plane_enable_sagv
> > > > > >       instead of atomic state
> > > > > > =

> > > > > > v3: - Fixed rebase conflict, now using
> > > > > >       intel_atomic_crtc_state_for_each_plane_state in
> > > > > >       order to call it from atomic check
> > > > > > v4: - Use fb modifier from plane state
> > > > > > =

> > > > > > v5: - Make intel_has_sagv static again(Ville)
> > > > > >     - Removed unnecessary NULL assignments(Ville)
> > > > > >     - Removed unnecessary SAGV debug(Ville)
> > > > > >     - Call intel_compute_sagv_mask only for modesets(Ville)
> > > > > >     - Serialize global state only if sagv results change, but
> > > > > >       not mask itself(Ville)
> > > > > > =

> > > > > > v6: - use lock global state instead of serialize(Ville)
> > > > > =

> > > > > What I meant is that we need both. Serialize if sagv state is goi=
ng to
> > > > > change, otherwise lock if the mask changes.
> > > > =

> > > > As I understand whenever we modify global state but not a real hw, =
we do
> > > > only global state locking - pipe sagv mask is not actually a hw, bu=
t just
> > > > a virtual thing. It affects the QGV points we enable and if it happ=
ens to
> > > > affect those in a way that those change - we'll any way have serial=
ize
> > > > called from intel_bw.c. Thus shouldn't be an issue.
> > > =

> > > I don't like the code to rely on magic happening elsewhere. IMO
> > > it just makes it hard to reason about the logic when you have
> > > constantly remind youself what may or may not happen some other
> > > piece of code. Also we don't even have qgv points on all the
> > > platforms, so presumably we may not even excute that other
> > > piece of code always?
> > =

> > Agree, sounds reasonable. Would be cool may be to unite both serialize
> > and global state locking, under some helper function, so that same
> > code snippet is not copy-paste all over the place.
> > =

> > like intel_lock_or_serialize_state(state, bool global_state_changed, bo=
ol hw_state_changed) =

> =

> intel_lock_or_serialize_state(state,
> 			      a !=3D b,
> 			      x !=3D y);
> =

> doesn't really make the intent clear at all. So not really in favor of a
> function that takes two booleans.

bool global_state_changed =3D new_sagv_pipe_mask !=3D old_sagv_pipe_mask;
bool hw_state_changed =3D new_can_enable_sagv !=3D old_can_enable_sagv;

intel_lock_or_serialize(state, global_state_changed, hw_state_changed);

I think together with proper comment this looks pretty clear and also
eliminates the need in duplicating conditions all over the place.

Just a proposal though.

Stan

> =

> > =

> > Stan
> > =

> > > =

> > > > =

> > > > I can change it anyway of course.
> > > > =

> > > > Stan
> > > > =

> > > > > =

> > > > > > =

> > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.c=
om>
> > > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> > > > > > Cc: James Ausmus <james.ausmus@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_bw.h |   6 ++
> > > > > >  drivers/gpu/drm/i915/intel_pm.c         | 113 ++++++++++++++++=
++------
> > > > > >  drivers/gpu/drm/i915/intel_pm.h         |   3 +-
> > > > > >  3 files changed, 93 insertions(+), 29 deletions(-)
> > > > > > =

> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/=
gpu/drm/i915/display/intel_bw.h
> > > > > > index ac004d6f4276..d6df91058223 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > > > > > @@ -18,6 +18,12 @@ struct intel_crtc_state;
> > > > > >  struct intel_bw_state {
> > > > > >  	struct intel_global_state base;
> > > > > >  =

> > > > > > +	/*
> > > > > > +	 * Contains a bit mask, used to determine, whether correspond=
ent
> > > > > > +	 * pipe allows SAGV or not.
> > > > > > +	 */
> > > > > > +	u8 pipe_sagv_reject;
> > > > > > +
> > > > > >  	unsigned int data_rate[I915_MAX_PIPES];
> > > > > >  	u8 num_active_planes[I915_MAX_PIPES];
> > > > > >  };
> > > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/=
i915/intel_pm.c
> > > > > > index 338a82577b76..7e15cf3368ad 100644
> > > > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > > > @@ -43,6 +43,7 @@
> > > > > >  #include "i915_fixed.h"
> > > > > >  #include "i915_irq.h"
> > > > > >  #include "i915_trace.h"
> > > > > > +#include "display/intel_bw.h"
> > > > > >  #include "intel_pm.h"
> > > > > >  #include "intel_sideband.h"
> > > > > >  #include "../../../platform/x86/intel_ips.h"
> > > > > > @@ -3760,34 +3761,75 @@ intel_disable_sagv(struct drm_i915_priv=
ate *dev_priv)
> > > > > >  void intel_sagv_pre_plane_update(struct intel_atomic_state *st=
ate)
> > > > > >  {
> > > > > >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev=
);
> > > > > > +	const struct intel_bw_state *new_bw_state;
> > > > > >  =

> > > > > > -	if (!intel_can_enable_sagv(state))
> > > > > > +	/*
> > > > > > +	 * Just return if we can't control SAGV or don't have it.
> > > > > > +	 * This is different from situation when we have SAGV but jus=
t can't
> > > > > > +	 * afford it due to DBuf limitation - in case if SAGV is comp=
letely
> > > > > > +	 * disabled in a BIOS, we are not even allowed to send a PCod=
e request,
> > > > > > +	 * as it will throw an error. So have to check it here.
> > > > > > +	 */
> > > > > > +	if (!intel_has_sagv(dev_priv))
> > > > > > +		return;
> > > > > > +
> > > > > > +	new_bw_state =3D intel_atomic_get_new_bw_state(state);
> > > > > > +	if (!new_bw_state)
> > > > > > +		return;
> > > > > > +
> > > > > > +	if (!intel_can_enable_sagv(new_bw_state))
> > > > > >  		intel_disable_sagv(dev_priv);
> > > > > >  }
> > > > > >  =

> > > > > >  void intel_sagv_post_plane_update(struct intel_atomic_state *s=
tate)
> > > > > >  {
> > > > > >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev=
);
> > > > > > +	const struct intel_bw_state *new_bw_state;
> > > > > >  =

> > > > > > -	if (intel_can_enable_sagv(state))
> > > > > > +	/*
> > > > > > +	 * Just return if we can't control SAGV or don't have it.
> > > > > > +	 * This is different from situation when we have SAGV but jus=
t can't
> > > > > > +	 * afford it due to DBuf limitation - in case if SAGV is comp=
letely
> > > > > > +	 * disabled in a BIOS, we are not even allowed to send a PCod=
e request,
> > > > > > +	 * as it will throw an error. So have to check it here.
> > > > > > +	 */
> > > > > > +	if (!intel_has_sagv(dev_priv))
> > > > > > +		return;
> > > > > > +
> > > > > > +	new_bw_state =3D intel_atomic_get_new_bw_state(state);
> > > > > > +	if (!new_bw_state)
> > > > > > +		return;
> > > > > > +
> > > > > > +	if (intel_can_enable_sagv(new_bw_state))
> > > > > >  		intel_enable_sagv(dev_priv);
> > > > > >  }
> > > > > >  =

> > > > > >  static bool intel_crtc_can_enable_sagv(const struct intel_crtc=
_state *crtc_state)
> > > > > >  {
> > > > > > -	struct drm_device *dev =3D crtc_state->uapi.crtc->dev;
> > > > > > -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > > > > > +	struct intel_atomic_state *state =3D to_intel_atomic_state(cr=
tc_state->uapi.state);
> > > > > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.cr=
tc);
> > > > > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > > > >  	struct intel_plane *plane;
> > > > > > +	const struct intel_plane_state *plane_state;
> > > > > >  	int level, latency;
> > > > > >  =

> > > > > > +	if (!intel_has_sagv(dev_priv))
> > > > > > +		return false;
> > > > > > +
> > > > > >  	if (!crtc_state->hw.active)
> > > > > >  		return true;
> > > > > >  =

> > > > > > +	/*
> > > > > > +	 * SKL+ workaround: bspec recommends we disable SAGV when we =
have
> > > > > > +	 * more then one pipe enabled
> > > > > > +	 */
> > > > > > +	if (hweight8(state->active_pipes) > 1)
> > > > > > +		return false;
> > > > > > +
> > > > > >  	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERL=
ACE)
> > > > > >  		return false;
> > > > > >  =

> > > > > > -	for_each_intel_plane_on_crtc(dev, crtc, plane) {
> > > > > > +	intel_atomic_crtc_state_for_each_plane_state(plane, plane_sta=
te, crtc_state) {
> > > > > >  		const struct skl_plane_wm *wm =3D
> > > > > >  			&crtc_state->wm.skl.optimal.planes[plane->id];
> > > > > >  =

> > > > > > @@ -3803,7 +3845,7 @@ static bool intel_crtc_can_enable_sagv(co=
nst struct intel_crtc_state *crtc_state
> > > > > >  		latency =3D dev_priv->wm.skl_latency[level];
> > > > > >  =

> > > > > >  		if (skl_needs_memory_bw_wa(dev_priv) &&
> > > > > > -		    plane->base.state->fb->modifier =3D=3D
> > > > > > +		    plane_state->uapi.fb->modifier =3D=3D
> > > > > >  		    I915_FORMAT_MOD_X_TILED)
> > > > > >  			latency +=3D 15;
> > > > > >  =

> > > > > > @@ -3819,35 +3861,44 @@ static bool intel_crtc_can_enable_sagv(=
const struct intel_crtc_state *crtc_state
> > > > > >  	return true;
> > > > > >  }
> > > > > >  =

> > > > > > -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> > > > > > +bool intel_can_enable_sagv(const struct intel_bw_state *bw_sta=
te)
> > > > > >  {
> > > > > > -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev=
);
> > > > > > +	return bw_state->pipe_sagv_reject =3D=3D 0;
> > > > > > +}
> > > > > > +
> > > > > > +static int intel_compute_sagv_mask(struct intel_atomic_state *=
state)
> > > > > > +{
> > > > > > +	int ret;
> > > > > >  	struct intel_crtc *crtc;
> > > > > > -	const struct intel_crtc_state *crtc_state;
> > > > > > -	enum pipe pipe;
> > > > > > +	struct intel_crtc_state *new_crtc_state;
> > > > > > +	struct intel_bw_state *new_bw_state =3D NULL;
> > > > > > +	const struct intel_bw_state *old_bw_state =3D NULL;
> > > > > > +	int i;
> > > > > >  =

> > > > > > -	if (!intel_has_sagv(dev_priv))
> > > > > > -		return false;
> > > > > > +	for_each_new_intel_crtc_in_state(state, crtc,
> > > > > > +					 new_crtc_state, i) {
> > > > > > +		new_bw_state =3D intel_atomic_get_bw_state(state);
> > > > > > +		if (IS_ERR(new_bw_state))
> > > > > > +			return PTR_ERR(new_bw_state);
> > > > > >  =

> > > > > > -	/*
> > > > > > -	 * If there are no active CRTCs, no additional checks need be=
 performed
> > > > > > -	 */
> > > > > > -	if (hweight8(state->active_pipes) =3D=3D 0)
> > > > > > -		return true;
> > > > > > +		old_bw_state =3D intel_atomic_get_old_bw_state(state);
> > > > > >  =

> > > > > > -	/*
> > > > > > -	 * SKL+ workaround: bspec recommends we disable SAGV when we =
have
> > > > > > -	 * more then one pipe enabled
> > > > > > -	 */
> > > > > > -	if (hweight8(state->active_pipes) > 1)
> > > > > > -		return false;
> > > > > > +		if (intel_crtc_can_enable_sagv(new_crtc_state))
> > > > > > +			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
> > > > > > +		else
> > > > > > +			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> > > > > > +	}
> > > > > >  =

> > > > > > -	/* Since we're now guaranteed to only have one active CRTC...=
 */
> > > > > > -	pipe =3D ffs(state->active_pipes) - 1;
> > > > > > -	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> > > > > > -	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > > > > > +	if (!new_bw_state)
> > > > > > +		return 0;
> > > > > >  =

> > > > > > -	return intel_crtc_can_enable_sagv(crtc_state);
> > > > > > +	if (intel_can_enable_sagv(new_bw_state) !=3D intel_can_enable=
_sagv(old_bw_state)) {
> > > > > > +		ret =3D intel_atomic_lock_global_state(&new_bw_state->base);
> > > > > > +		if (ret)
> > > > > > +			return ret;
> > > > > > +	}
> > > > > > +
> > > > > > +	return 0;
> > > > > >  }
> > > > > >  =

> > > > > >  /*
> > > > > > @@ -5860,6 +5911,12 @@ skl_compute_wm(struct intel_atomic_state=
 *state)
> > > > > >  	if (ret)
> > > > > >  		return ret;
> > > > > >  =

> > > > > > +	if (state->modeset) {
> > > > > > +		ret =3D intel_compute_sagv_mask(state);
> > > > > > +		if (ret)
> > > > > > +			return ret;
> > > > > > +	}
> > > > > > +
> > > > > >  	/*
> > > > > >  	 * skl_compute_ddb() will have adjusted the final watermarks
> > > > > >  	 * based on how much ddb is available. Now we can actually
> > > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/=
i915/intel_pm.h
> > > > > > index 9a6036ab0f90..fd1dc422e6c5 100644
> > > > > > --- a/drivers/gpu/drm/i915/intel_pm.h
> > > > > > +++ b/drivers/gpu/drm/i915/intel_pm.h
> > > > > > @@ -9,6 +9,7 @@
> > > > > >  #include <linux/types.h>
> > > > > >  =

> > > > > >  #include "i915_reg.h"
> > > > > > +#include "display/intel_bw.h"
> > > > > >  =

> > > > > >  struct drm_device;
> > > > > >  struct drm_i915_private;
> > > > > > @@ -41,7 +42,7 @@ void skl_pipe_wm_get_hw_state(struct intel_cr=
tc *crtc,
> > > > > >  			      struct skl_pipe_wm *out);
> > > > > >  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
> > > > > >  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
> > > > > > -bool intel_can_enable_sagv(struct intel_atomic_state *state);
> > > > > > +bool intel_can_enable_sagv(const struct intel_bw_state *bw_sta=
te);
> > > > > >  int intel_enable_sagv(struct drm_i915_private *dev_priv);
> > > > > >  int intel_disable_sagv(struct drm_i915_private *dev_priv);
> > > > > >  void intel_sagv_pre_plane_update(struct intel_atomic_state *st=
ate);
> > > > > > -- =

> > > > > > 2.24.1.485.gad05a3d8e5
> > > > > =

> > > > > -- =

> > > > > Ville Syrj=E4l=E4
> > > > > Intel
> > > =

> > > -- =

> > > Ville Syrj=E4l=E4
> > > Intel
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
