Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E94561A3797
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 17:58:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C74746EC03;
	Thu,  9 Apr 2020 15:58:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD5046EC03
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 15:58:18 +0000 (UTC)
IronPort-SDR: a3VoTjyz7G66aQ/p3o4T8SiwI1WA0bzWbFrHIq28nYXnyTm479sfb1qrwOD36u3qb63AbxXp2y
 UHbSFYwavL1A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 08:58:18 -0700
IronPort-SDR: H4jlhYhkVqQ6t9ATnbz7AvbqvCdtjwLtXbvBuo3gQNZ7kYVtVA+D5fltCxJ+9HfT8aQ8qk97LP
 l0wpN7FweDnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,363,1580803200"; d="scan'208";a="244351331"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 09 Apr 2020 08:58:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Apr 2020 18:58:15 +0300
Date: Thu, 9 Apr 2020 18:58:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200409155815.GV6112@intel.com>
References: <20200326181005.11775-6-stanislav.lisovskiy@intel.com>
 <20200403062003.11539-1-stanislav.lisovskiy@intel.com>
 <20200407190128.GN6112@intel.com>
 <20200408075804.GA20704@intel.com>
 <20200408145502.GU6112@intel.com>
 <20200408155353.GA27657@intel.com>
 <20200408161811.GA27809@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408161811.GA27809@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Wed, Apr 08, 2020 at 07:18:11PM +0300, Lisovskiy, Stanislav wrote:
> On Wed, Apr 08, 2020 at 06:54:09PM +0300, Lisovskiy, Stanislav wrote:
> > On Wed, Apr 08, 2020 at 05:55:02PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Wed, Apr 08, 2020 at 10:58:04AM +0300, Lisovskiy, Stanislav wrote:
> > > > On Tue, Apr 07, 2020 at 10:01:28PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > > On Fri, Apr 03, 2020 at 09:20:03AM +0300, Stanislav Lisovskiy wro=
te:
> > > > > > Addressing one of the comments, recommending to extract platform
> > > > > > specific code from intel_can_enable_sagv as a preparation, befo=
re
> > > > > > we are going to add support for tgl+.
> > > > > > =

> > > > > > Current code in intel_can_enable_sagv is valid only for skl,
> > > > > > so this patch adds also proper support for icl, subsequent
> > > > > > patches will add support for tgl+, combined with other required
> > > > > > changes.
> > > > > > =

> > > > > > v2: - Renamed icl_can_enable_sagv into icl_crtc_can_enable_sagv=
(Ville)
> > > > > >     - Removed dev variables(Ville)
> > > > > >     - Constified crtc/plane_state in icl_crtc_can_enable_sagv
> > > > > >       function(Ville)
> > > > > >     - Added hw.active check(Ville)
> > > > > >     - Refactored if ladder(Ville)
> > > > > > =

> > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.c=
om>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/intel_pm.c | 84 +++++++++++++++++++++----=
--------
> > > > > >  1 file changed, 55 insertions(+), 29 deletions(-)
> > > > > > =

> > > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/=
i915/intel_pm.c
> > > > > > index f8d62d1977ac..27d4d626cb34 100644
> > > > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > > > @@ -3757,42 +3757,25 @@ intel_disable_sagv(struct drm_i915_priv=
ate *dev_priv)
> > > > > >  	return 0;
> > > > > >  }
> > > > > >  =

> > > > > > -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> > > > > > +static bool icl_crtc_can_enable_sagv(const struct intel_crtc_s=
tate *crtc_state)
> > > > > >  {
> > > > > > -	struct drm_device *dev =3D state->base.dev;
> > > > > > -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > > > > > -	struct intel_crtc *crtc;
> > > > > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uap=
i.crtc->dev);
> > > > > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.cr=
tc);
> > > > > >  	struct intel_plane *plane;
> > > > > > -	struct intel_crtc_state *crtc_state;
> > > > > > -	enum pipe pipe;
> > > > > > +	const struct intel_plane_state *plane_state;
> > > > > >  	int level, latency;
> > > > > >  =

> > > > > > -	if (!intel_has_sagv(dev_priv))
> > > > > > +	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERL=
ACE) {
> > > > > > +		DRM_DEBUG_KMS("No SAGV for interlaced mode on pipe %c\n",
> > > > > > +			      pipe_name(crtc->pipe));
> > > > > >  		return false;
> > > > > > +	}
> > > > > >  =

> > > > > > -	/*
> > > > > > -	 * If there are no active CRTCs, no additional checks need be=
 performed
> > > > > > -	 */
> > > > > > -	if (hweight8(state->active_pipes) =3D=3D 0)
> > > > > > +	if (!crtc_state->hw.active)
> > > > > =

> > > > > Should really be checked before anything else. Doesn't matter too=
 much
> > > > > anymore since I made us clear the crtc state always, but still a =
bit
> > > > > inconsistent to look at other stuff in the state before we even k=
now if
> > > > > the crtc is even enabled.
> > > > > =

> > > > > >  		return true;
> > > > > >  =

> > > > > > -	/*
> > > > > > -	 * SKL+ workaround: bspec recommends we disable SAGV when we =
have
> > > > > > -	 * more then one pipe enabled
> > > > > > -	 */
> > > > > > -	if (hweight8(state->active_pipes) > 1)
> > > > > > -		return false;
> > > > > > -
> > > > > > -	/* Since we're now guaranteed to only have one active CRTC...=
 */
> > > > > > -	pipe =3D ffs(state->active_pipes) - 1;
> > > > > > -	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> > > > > > -	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > > > > > -
> > > > > > -	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERL=
ACE)
> > > > > > -		return false;
> > > > > > -
> > > > > > -	for_each_intel_plane_on_crtc(dev, crtc, plane) {
> > > > > > -		struct skl_plane_wm *wm =3D
> > > > > > +	intel_atomic_crtc_state_for_each_plane_state(plane, plane_sta=
te, crtc_state) {
> > > > > > +		const struct skl_plane_wm *wm =3D
> > > > > >  			&crtc_state->wm.skl.optimal.planes[plane->id];
> > > > > >  =

> > > > > >  		/* Skip this plane if it's not enabled */
> > > > > > @@ -3807,7 +3790,7 @@ bool intel_can_enable_sagv(struct intel_a=
tomic_state *state)
> > > > > >  		latency =3D dev_priv->wm.skl_latency[level];
> > > > > >  =

> > > > > >  		if (skl_needs_memory_bw_wa(dev_priv) &&
> > > > > > -		    plane->base.state->fb->modifier =3D=3D
> > > > > > +		    plane_state->uapi.fb->modifier =3D=3D
> > > > > =

> > > > > hw.fb
> > > > > =

> > > > > With those this is basically good, but still need to think how to=
 avoid
> > > > > the regression due to only checking the crtcs in the state.
> > > > =

> > > > Well tbh, initially you told me that this *_crtc_can_enable_sagv fu=
nction extraction
> > > > can be "trivially" done as a separate patch :)) So I followed your =
instruction, and =

> > > > then I got a comment saying that "this is now temporary busted beca=
use we are checking
> > > > only crtcs in a state". This kind of contraversial requirements - i=
n order not to =

> > > > have it "temporary busted", we should have introduced it at the sam=
e time with SAGV mask,
> > > > at the same time you wanted it to be extracted as a separate patch.
> > > =

> > > TBF this patch does quite a bit more than extract the current code.
> > > =

> > > What I think would work as a series is something like:
> > > patch 1:
> > > +intel_crtc_can_enable_sagv(crtc_state)
> > > {
> > > +	stuff
> > > }
> > > =

> > > intel_can_enable_sagv(state)
> > > {
> > > 	...
> > > 	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > > =

> > > -	stuff
> > > +	return intel_crtc_can_eanble_sagv(crtc_state);
> > > }
> > > =

> > > patch 2:
> > > +sagv_pre_plane_update(state)
> > > +{
> > > +	if (!intel_can_enable_sagv(state))
> > > +		intel_disable_sagv(dev_priv);
> > > +}
> > > =

> > > intel_atomic_commit_tail()
> > > {
> > > 	...
> > > -	if (!intel_can_enable_sagv(state))
> > > -		intel_disable_sagv(dev_priv);
> > > +	sagv_pre_plane_update(state);
> > > 	...
> > > }
> > > =

> > > (+ identical changes for post_plane_update())
> > > =

> > > So far everything has been pure refactoring.
> > > =

> > > patch 3:
> > > Introduce the sagv mask in bw state and precompute it using
> > > intel_crtc_can_enable_sagv() (while fixing the iterator issue therein=
),
> > > and update the pre/post hooks to consult said mask. Not quite pure
> > > refactoring anymore but seems like a bit more straightforward change
> > > now.
> > > =

> > > At this point we should have a nicely precomputed sagv mask without
> > > intentional changes to current behaviour. After which it should be
> > > easier to extend this for new platforms.
> > =

> > This all makes sense, however in the end we'll have the same result as =
now, however this would
> > require to reshuffle the whole series...again. =

> > Will try do it, the least painful way :) =

> =

> Also the only weird thing with this approach is that it is going to stay
> this ugly _one_ crtc way, until sagv mask and bw state is introduced:
> =

> bool intel_can_enable_sagv(struct intel_atomic_state *state)
> {
> 	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> 	struct intel_crtc *crtc;
> 	const struct intel_crtc_state *crtc_state;
> 	int i;
> =

> 	if (!intel_has_sagv(dev_priv))
> 		return false;
> =

> 	/*
> 	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> 	 * more then one pipe enabled
> 	 */
> 	if (hweight8(state->active_pipes) > 1)
> 		return false;
> =

> 	/* Since we're now guaranteed to only have one active CRTC... */
> 	pipe =3D ffs(state->active_pipes) - 1;
> 	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> 	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> =

> 	return intel_crtc_can_enable_sagv(crtc_state);
> }
> =

> because you can't iterate crtcs anyway so that patch would be =

> just a name change basically. =

> The I can add pre/post plane update and only once bw state->sagv_mask
> is in place - the real SAGV changes can come. So SAGV logic would be
> anyway wrong in the middle of that series.

No more wrong than it is now.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
