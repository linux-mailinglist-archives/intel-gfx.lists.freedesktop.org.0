Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2AE1BF49F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 11:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0ED16E1CE;
	Thu, 30 Apr 2020 09:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0475E6E1CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 09:57:07 +0000 (UTC)
IronPort-SDR: WUlmQf7+OIidpk4BA/crO7gbKxXooMUZqt2rLpegcYjrWxyZt4z2QlypMu39mqwraDDDfiG9ZS
 TEm2ci5Yhhuw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 02:57:07 -0700
IronPort-SDR: q7WfLJEr2yffQzpPv22HF/DF2GVgB9hex/OopxH4gIKRLnfM8MSu+IhngNxt/v5bTQOUa5d9ui
 VOh6K2tskPLA==
X-IronPort-AV: E=Sophos;i="5.73,334,1583222400"; d="scan'208";a="432903782"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 02:57:06 -0700
Date: Thu, 30 Apr 2020 12:52:42 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200430095242.GA2558@intel.com>
References: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
 <20200423075902.21892-3-stanislav.lisovskiy@intel.com>
 <20200430090922.GN6112@intel.com> <20200430091335.GA2341@intel.com>
 <20200430092538.GP6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430092538.GP6112@intel.com>
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

On Thu, Apr 30, 2020 at 12:25:38PM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, Apr 30, 2020 at 12:13:35PM +0300, Lisovskiy, Stanislav wrote:
> > On Thu, Apr 30, 2020 at 12:09:22PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Thu, Apr 23, 2020 at 10:58:55AM +0300, Stanislav Lisovskiy wrote:
> > > > Future platforms require per-crtc SAGV evaluation
> > > > and serializing global state when those are changed
> > > > from different commits.
> > > > =

> > > > v2: - Add has_sagv check to intel_crtc_can_enable_sagv
> > > >       so that it sets bit in reject mask.
> > > >     - Use bw_state in intel_pre/post_plane_enable_sagv
> > > >       instead of atomic state
> > > > =

> > > > v3: - Fixed rebase conflict, now using
> > > >       intel_atomic_crtc_state_for_each_plane_state in
> > > >       order to call it from atomic check
> > > > v4: - Use fb modifier from plane state
> > > > =

> > > > v5: - Make intel_has_sagv static again(Ville)
> > > >     - Removed unnecessary NULL assignments(Ville)
> > > >     - Removed unnecessary SAGV debug(Ville)
> > > >     - Call intel_compute_sagv_mask only for modesets(Ville)
> > > >     - Serialize global state only if sagv results change, but
> > > >       not mask itself(Ville)
> > > > =

> > > > v6: - use lock global state instead of serialize(Ville)
> > > =

> > > What I meant is that we need both. Serialize if sagv state is going to
> > > change, otherwise lock if the mask changes.
> > =

> > As I understand whenever we modify global state but not a real hw, we do
> > only global state locking - pipe sagv mask is not actually a hw, but ju=
st
> > a virtual thing. It affects the QGV points we enable and if it happens =
to
> > affect those in a way that those change - we'll any way have serialize
> > called from intel_bw.c. Thus shouldn't be an issue.
> =

> I don't like the code to rely on magic happening elsewhere. IMO
> it just makes it hard to reason about the logic when you have
> constantly remind youself what may or may not happen some other
> piece of code. Also we don't even have qgv points on all the
> platforms, so presumably we may not even excute that other
> piece of code always?

Agree, sounds reasonable. Would be cool may be to unite both serialize
and global state locking, under some helper function, so that same
code snippet is not copy-paste all over the place.

like intel_lock_or_serialize_state(state, bool global_state_changed, bool h=
w_state_changed) =


Stan

> =

> > =

> > I can change it anyway of course.
> > =

> > Stan
> > =

> > > =

> > > > =

> > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> > > > Cc: James Ausmus <james.ausmus@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_bw.h |   6 ++
> > > >  drivers/gpu/drm/i915/intel_pm.c         | 113 ++++++++++++++++++--=
----
> > > >  drivers/gpu/drm/i915/intel_pm.h         |   3 +-
> > > >  3 files changed, 93 insertions(+), 29 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/=
drm/i915/display/intel_bw.h
> > > > index ac004d6f4276..d6df91058223 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > > > @@ -18,6 +18,12 @@ struct intel_crtc_state;
> > > >  struct intel_bw_state {
> > > >  	struct intel_global_state base;
> > > >  =

> > > > +	/*
> > > > +	 * Contains a bit mask, used to determine, whether correspondent
> > > > +	 * pipe allows SAGV or not.
> > > > +	 */
> > > > +	u8 pipe_sagv_reject;
> > > > +
> > > >  	unsigned int data_rate[I915_MAX_PIPES];
> > > >  	u8 num_active_planes[I915_MAX_PIPES];
> > > >  };
> > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915=
/intel_pm.c
> > > > index 338a82577b76..7e15cf3368ad 100644
> > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > @@ -43,6 +43,7 @@
> > > >  #include "i915_fixed.h"
> > > >  #include "i915_irq.h"
> > > >  #include "i915_trace.h"
> > > > +#include "display/intel_bw.h"
> > > >  #include "intel_pm.h"
> > > >  #include "intel_sideband.h"
> > > >  #include "../../../platform/x86/intel_ips.h"
> > > > @@ -3760,34 +3761,75 @@ intel_disable_sagv(struct drm_i915_private =
*dev_priv)
> > > >  void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
> > > >  {
> > > >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > > +	const struct intel_bw_state *new_bw_state;
> > > >  =

> > > > -	if (!intel_can_enable_sagv(state))
> > > > +	/*
> > > > +	 * Just return if we can't control SAGV or don't have it.
> > > > +	 * This is different from situation when we have SAGV but just ca=
n't
> > > > +	 * afford it due to DBuf limitation - in case if SAGV is complete=
ly
> > > > +	 * disabled in a BIOS, we are not even allowed to send a PCode re=
quest,
> > > > +	 * as it will throw an error. So have to check it here.
> > > > +	 */
> > > > +	if (!intel_has_sagv(dev_priv))
> > > > +		return;
> > > > +
> > > > +	new_bw_state =3D intel_atomic_get_new_bw_state(state);
> > > > +	if (!new_bw_state)
> > > > +		return;
> > > > +
> > > > +	if (!intel_can_enable_sagv(new_bw_state))
> > > >  		intel_disable_sagv(dev_priv);
> > > >  }
> > > >  =

> > > >  void intel_sagv_post_plane_update(struct intel_atomic_state *state)
> > > >  {
> > > >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > > +	const struct intel_bw_state *new_bw_state;
> > > >  =

> > > > -	if (intel_can_enable_sagv(state))
> > > > +	/*
> > > > +	 * Just return if we can't control SAGV or don't have it.
> > > > +	 * This is different from situation when we have SAGV but just ca=
n't
> > > > +	 * afford it due to DBuf limitation - in case if SAGV is complete=
ly
> > > > +	 * disabled in a BIOS, we are not even allowed to send a PCode re=
quest,
> > > > +	 * as it will throw an error. So have to check it here.
> > > > +	 */
> > > > +	if (!intel_has_sagv(dev_priv))
> > > > +		return;
> > > > +
> > > > +	new_bw_state =3D intel_atomic_get_new_bw_state(state);
> > > > +	if (!new_bw_state)
> > > > +		return;
> > > > +
> > > > +	if (intel_can_enable_sagv(new_bw_state))
> > > >  		intel_enable_sagv(dev_priv);
> > > >  }
> > > >  =

> > > >  static bool intel_crtc_can_enable_sagv(const struct intel_crtc_sta=
te *crtc_state)
> > > >  {
> > > > -	struct drm_device *dev =3D crtc_state->uapi.crtc->dev;
> > > > -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > > > +	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_s=
tate->uapi.state);
> > > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > >  	struct intel_plane *plane;
> > > > +	const struct intel_plane_state *plane_state;
> > > >  	int level, latency;
> > > >  =

> > > > +	if (!intel_has_sagv(dev_priv))
> > > > +		return false;
> > > > +
> > > >  	if (!crtc_state->hw.active)
> > > >  		return true;
> > > >  =

> > > > +	/*
> > > > +	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> > > > +	 * more then one pipe enabled
> > > > +	 */
> > > > +	if (hweight8(state->active_pipes) > 1)
> > > > +		return false;
> > > > +
> > > >  	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> > > >  		return false;
> > > >  =

> > > > -	for_each_intel_plane_on_crtc(dev, crtc, plane) {
> > > > +	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, =
crtc_state) {
> > > >  		const struct skl_plane_wm *wm =3D
> > > >  			&crtc_state->wm.skl.optimal.planes[plane->id];
> > > >  =

> > > > @@ -3803,7 +3845,7 @@ static bool intel_crtc_can_enable_sagv(const =
struct intel_crtc_state *crtc_state
> > > >  		latency =3D dev_priv->wm.skl_latency[level];
> > > >  =

> > > >  		if (skl_needs_memory_bw_wa(dev_priv) &&
> > > > -		    plane->base.state->fb->modifier =3D=3D
> > > > +		    plane_state->uapi.fb->modifier =3D=3D
> > > >  		    I915_FORMAT_MOD_X_TILED)
> > > >  			latency +=3D 15;
> > > >  =

> > > > @@ -3819,35 +3861,44 @@ static bool intel_crtc_can_enable_sagv(cons=
t struct intel_crtc_state *crtc_state
> > > >  	return true;
> > > >  }
> > > >  =

> > > > -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> > > > +bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
> > > >  {
> > > > -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > > +	return bw_state->pipe_sagv_reject =3D=3D 0;
> > > > +}
> > > > +
> > > > +static int intel_compute_sagv_mask(struct intel_atomic_state *stat=
e)
> > > > +{
> > > > +	int ret;
> > > >  	struct intel_crtc *crtc;
> > > > -	const struct intel_crtc_state *crtc_state;
> > > > -	enum pipe pipe;
> > > > +	struct intel_crtc_state *new_crtc_state;
> > > > +	struct intel_bw_state *new_bw_state =3D NULL;
> > > > +	const struct intel_bw_state *old_bw_state =3D NULL;
> > > > +	int i;
> > > >  =

> > > > -	if (!intel_has_sagv(dev_priv))
> > > > -		return false;
> > > > +	for_each_new_intel_crtc_in_state(state, crtc,
> > > > +					 new_crtc_state, i) {
> > > > +		new_bw_state =3D intel_atomic_get_bw_state(state);
> > > > +		if (IS_ERR(new_bw_state))
> > > > +			return PTR_ERR(new_bw_state);
> > > >  =

> > > > -	/*
> > > > -	 * If there are no active CRTCs, no additional checks need be per=
formed
> > > > -	 */
> > > > -	if (hweight8(state->active_pipes) =3D=3D 0)
> > > > -		return true;
> > > > +		old_bw_state =3D intel_atomic_get_old_bw_state(state);
> > > >  =

> > > > -	/*
> > > > -	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> > > > -	 * more then one pipe enabled
> > > > -	 */
> > > > -	if (hweight8(state->active_pipes) > 1)
> > > > -		return false;
> > > > +		if (intel_crtc_can_enable_sagv(new_crtc_state))
> > > > +			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
> > > > +		else
> > > > +			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> > > > +	}
> > > >  =

> > > > -	/* Since we're now guaranteed to only have one active CRTC... */
> > > > -	pipe =3D ffs(state->active_pipes) - 1;
> > > > -	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> > > > -	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > > > +	if (!new_bw_state)
> > > > +		return 0;
> > > >  =

> > > > -	return intel_crtc_can_enable_sagv(crtc_state);
> > > > +	if (intel_can_enable_sagv(new_bw_state) !=3D intel_can_enable_sag=
v(old_bw_state)) {
> > > > +		ret =3D intel_atomic_lock_global_state(&new_bw_state->base);
> > > > +		if (ret)
> > > > +			return ret;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > >  }
> > > >  =

> > > >  /*
> > > > @@ -5860,6 +5911,12 @@ skl_compute_wm(struct intel_atomic_state *st=
ate)
> > > >  	if (ret)
> > > >  		return ret;
> > > >  =

> > > > +	if (state->modeset) {
> > > > +		ret =3D intel_compute_sagv_mask(state);
> > > > +		if (ret)
> > > > +			return ret;
> > > > +	}
> > > > +
> > > >  	/*
> > > >  	 * skl_compute_ddb() will have adjusted the final watermarks
> > > >  	 * based on how much ddb is available. Now we can actually
> > > > diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915=
/intel_pm.h
> > > > index 9a6036ab0f90..fd1dc422e6c5 100644
> > > > --- a/drivers/gpu/drm/i915/intel_pm.h
> > > > +++ b/drivers/gpu/drm/i915/intel_pm.h
> > > > @@ -9,6 +9,7 @@
> > > >  #include <linux/types.h>
> > > >  =

> > > >  #include "i915_reg.h"
> > > > +#include "display/intel_bw.h"
> > > >  =

> > > >  struct drm_device;
> > > >  struct drm_i915_private;
> > > > @@ -41,7 +42,7 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *=
crtc,
> > > >  			      struct skl_pipe_wm *out);
> > > >  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
> > > >  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
> > > > -bool intel_can_enable_sagv(struct intel_atomic_state *state);
> > > > +bool intel_can_enable_sagv(const struct intel_bw_state *bw_state);
> > > >  int intel_enable_sagv(struct drm_i915_private *dev_priv);
> > > >  int intel_disable_sagv(struct drm_i915_private *dev_priv);
> > > >  void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
> > > > -- =

> > > > 2.24.1.485.gad05a3d8e5
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
