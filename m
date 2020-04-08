Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5A81A2463
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 16:55:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF32C6E137;
	Wed,  8 Apr 2020 14:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95B086E137
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 14:55:07 +0000 (UTC)
IronPort-SDR: OQazYYEaPwEyo0t2VZ0WC+2JGHzP99weBAzssynRnk6pvu4TsEHHFP8GEWeRpNRpd/VW1BR16W
 z28YVBlNqPZw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 07:55:06 -0700
IronPort-SDR: UAqF2UwznsjfiMX5ocGARrf7EoQ06oc+blXRC/cyJhb8KJJo+DP113O01H2sA/SCOecxNlCSdC
 v6IEDAksXMqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,358,1580803200"; d="scan'208";a="297252908"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 08 Apr 2020 07:55:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Apr 2020 17:55:02 +0300
Date: Wed, 8 Apr 2020 17:55:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200408145502.GU6112@intel.com>
References: <20200326181005.11775-6-stanislav.lisovskiy@intel.com>
 <20200403062003.11539-1-stanislav.lisovskiy@intel.com>
 <20200407190128.GN6112@intel.com>
 <20200408075804.GA20704@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408075804.GA20704@intel.com>
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

On Wed, Apr 08, 2020 at 10:58:04AM +0300, Lisovskiy, Stanislav wrote:
> On Tue, Apr 07, 2020 at 10:01:28PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Fri, Apr 03, 2020 at 09:20:03AM +0300, Stanislav Lisovskiy wrote:
> > > Addressing one of the comments, recommending to extract platform
> > > specific code from intel_can_enable_sagv as a preparation, before
> > > we are going to add support for tgl+.
> > > =

> > > Current code in intel_can_enable_sagv is valid only for skl,
> > > so this patch adds also proper support for icl, subsequent
> > > patches will add support for tgl+, combined with other required
> > > changes.
> > > =

> > > v2: - Renamed icl_can_enable_sagv into icl_crtc_can_enable_sagv(Ville)
> > >     - Removed dev variables(Ville)
> > >     - Constified crtc/plane_state in icl_crtc_can_enable_sagv
> > >       function(Ville)
> > >     - Added hw.active check(Ville)
> > >     - Refactored if ladder(Ville)
> > > =

> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_pm.c | 84 +++++++++++++++++++++----------=
--
> > >  1 file changed, 55 insertions(+), 29 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/i=
ntel_pm.c
> > > index f8d62d1977ac..27d4d626cb34 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -3757,42 +3757,25 @@ intel_disable_sagv(struct drm_i915_private *d=
ev_priv)
> > >  	return 0;
> > >  }
> > >  =

> > > -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> > > +static bool icl_crtc_can_enable_sagv(const struct intel_crtc_state *=
crtc_state)
> > >  {
> > > -	struct drm_device *dev =3D state->base.dev;
> > > -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > > -	struct intel_crtc *crtc;
> > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc=
->dev);
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > >  	struct intel_plane *plane;
> > > -	struct intel_crtc_state *crtc_state;
> > > -	enum pipe pipe;
> > > +	const struct intel_plane_state *plane_state;
> > >  	int level, latency;
> > >  =

> > > -	if (!intel_has_sagv(dev_priv))
> > > +	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
> > > +		DRM_DEBUG_KMS("No SAGV for interlaced mode on pipe %c\n",
> > > +			      pipe_name(crtc->pipe));
> > >  		return false;
> > > +	}
> > >  =

> > > -	/*
> > > -	 * If there are no active CRTCs, no additional checks need be perfo=
rmed
> > > -	 */
> > > -	if (hweight8(state->active_pipes) =3D=3D 0)
> > > +	if (!crtc_state->hw.active)
> > =

> > Should really be checked before anything else. Doesn't matter too much
> > anymore since I made us clear the crtc state always, but still a bit
> > inconsistent to look at other stuff in the state before we even know if
> > the crtc is even enabled.
> > =

> > >  		return true;
> > >  =

> > > -	/*
> > > -	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> > > -	 * more then one pipe enabled
> > > -	 */
> > > -	if (hweight8(state->active_pipes) > 1)
> > > -		return false;
> > > -
> > > -	/* Since we're now guaranteed to only have one active CRTC... */
> > > -	pipe =3D ffs(state->active_pipes) - 1;
> > > -	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> > > -	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > > -
> > > -	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> > > -		return false;
> > > -
> > > -	for_each_intel_plane_on_crtc(dev, crtc, plane) {
> > > -		struct skl_plane_wm *wm =3D
> > > +	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, cr=
tc_state) {
> > > +		const struct skl_plane_wm *wm =3D
> > >  			&crtc_state->wm.skl.optimal.planes[plane->id];
> > >  =

> > >  		/* Skip this plane if it's not enabled */
> > > @@ -3807,7 +3790,7 @@ bool intel_can_enable_sagv(struct intel_atomic_=
state *state)
> > >  		latency =3D dev_priv->wm.skl_latency[level];
> > >  =

> > >  		if (skl_needs_memory_bw_wa(dev_priv) &&
> > > -		    plane->base.state->fb->modifier =3D=3D
> > > +		    plane_state->uapi.fb->modifier =3D=3D
> > =

> > hw.fb
> > =

> > With those this is basically good, but still need to think how to avoid
> > the regression due to only checking the crtcs in the state.
> =

> Well tbh, initially you told me that this *_crtc_can_enable_sagv function=
 extraction
> can be "trivially" done as a separate patch :)) So I followed your instru=
ction, and =

> then I got a comment saying that "this is now temporary busted because we=
 are checking
> only crtcs in a state". This kind of contraversial requirements - in orde=
r not to =

> have it "temporary busted", we should have introduced it at the same time=
 with SAGV mask,
> at the same time you wanted it to be extracted as a separate patch.

TBF this patch does quite a bit more than extract the current code.

What I think would work as a series is something like:
patch 1:
+intel_crtc_can_enable_sagv(crtc_state)
{
+	stuff
}

intel_can_enable_sagv(state)
{
	...
	crtc_state =3D to_intel_crtc_state(crtc->base.state);

-	stuff
+	return intel_crtc_can_eanble_sagv(crtc_state);
}

patch 2:
+sagv_pre_plane_update(state)
+{
+	if (!intel_can_enable_sagv(state))
+		intel_disable_sagv(dev_priv);
+}

intel_atomic_commit_tail()
{
	...
-	if (!intel_can_enable_sagv(state))
-		intel_disable_sagv(dev_priv);
+	sagv_pre_plane_update(state);
	...
}

(+ identical changes for post_plane_update())

So far everything has been pure refactoring.

patch 3:
Introduce the sagv mask in bw state and precompute it using
intel_crtc_can_enable_sagv() (while fixing the iterator issue therein),
and update the pre/post hooks to consult said mask. Not quite pure
refactoring anymore but seems like a bit more straightforward change
now.

At this point we should have a nicely precomputed sagv mask without
intentional changes to current behaviour. After which it should be
easier to extend this for new platforms.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
