Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4A11BF58D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 12:32:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 934176E20B;
	Thu, 30 Apr 2020 10:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730066E212
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 10:32:21 +0000 (UTC)
IronPort-SDR: 06dJEgo2lIN8Wy7yMOyqtLRqON2ro4Uf24uOPHEDqbJFhD/dgULPY/FZfYkH/GkAxx5clRQuNL
 ZqNlKc4texjA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 03:32:20 -0700
IronPort-SDR: Kj8zBPInv0iwBhUoL4WaBfHc54FNtBUs7OFzrmnBMM81fIXak6S4541lXFXo25/j9Wu1glK5ey
 4NrxETh88qCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,334,1583222400"; d="scan'208";a="303246119"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 30 Apr 2020 03:32:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Apr 2020 13:32:17 +0300
Date: Thu, 30 Apr 2020 13:32:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200430103217.GR6112@intel.com>
References: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
 <20200423075902.21892-4-stanislav.lisovskiy@intel.com>
 <20200430092104.GO6112@intel.com> <20200430100515.GA2691@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430100515.GA2691@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v26 3/9] drm/i915: Track active_pipes in
 bw_state
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

On Thu, Apr 30, 2020 at 01:05:15PM +0300, Lisovskiy, Stanislav wrote:
> On Thu, Apr 30, 2020 at 12:21:04PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Thu, Apr 23, 2020 at 10:58:56AM +0300, Stanislav Lisovskiy wrote:
> > > We need to calculate SAGV mask also in a non-modeset
> > > commit, however currently active_pipes are only calculated
> > > for modesets in global atomic state, thus now we will be
> > > tracking those also in bw_state in order to be able to
> > > properly access global data.
> > > =

> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_bw.h |  3 +++
> > >  drivers/gpu/drm/i915/intel_pm.c         | 15 ++++++++++-----
> > >  2 files changed, 13 insertions(+), 5 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/dr=
m/i915/display/intel_bw.h
> > > index d6df91058223..898b4a85ccab 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > > @@ -26,6 +26,9 @@ struct intel_bw_state {
> > >  =

> > >  	unsigned int data_rate[I915_MAX_PIPES];
> > >  	u8 num_active_planes[I915_MAX_PIPES];
> > > +
> > > +	/* bitmask of active pipes */
> > > +	u8 active_pipes;
> > >  };
> > >  =

> > >  #define to_intel_bw_state(x) container_of((x), struct intel_bw_state=
, base)
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/i=
ntel_pm.c
> > > index 7e15cf3368ad..f7249bca3f6f 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -3874,6 +3874,7 @@ static int intel_compute_sagv_mask(struct intel=
_atomic_state *state)
> > >  	struct intel_bw_state *new_bw_state =3D NULL;
> > >  	const struct intel_bw_state *old_bw_state =3D NULL;
> > >  	int i;
> > > +	bool active_pipes_calculated =3D false;
> > >  =

> > >  	for_each_new_intel_crtc_in_state(state, crtc,
> > >  					 new_crtc_state, i) {
> > > @@ -3883,6 +3884,12 @@ static int intel_compute_sagv_mask(struct inte=
l_atomic_state *state)
> > >  =

> > >  		old_bw_state =3D intel_atomic_get_old_bw_state(state);
> > >  =

> > > +		if (!active_pipes_calculated) {
> > > +			state->active_pipes =3D new_bw_state->active_pipes =3D
> > =

> > I don't think we should touch state->active_pipes here.
> =

> Well, that was my question actually here as well. I understand that chang=
ing
> state->active_pipes here feels like some unneeded side effect, however ha=
ving
> state->active_pipes and bw_state->active_pipes going out of sync doesn't =
sound
> very attractive to me either. That is why I don't like this idea of dupli=
cation
> at all - having constant need to sync those state, bw_state, cdclk_state,=
 because
> they all might have different active_pipes now.

Having an out of date active_pipes anywhere would be a bug in that
specific code. Also state->active_pipes is definitely going the way of
the dodo soon.

> =

> > =

> > > +				intel_calc_active_pipes(state, old_bw_state->active_pipes);
> > > +			active_pipes_calculated =3D true;
> > > +		}
> > =

> > I'd do this after the loop so we don't need this extra boolean. As far
> > as the active_pipes check in intel_crtc_can_enable_sagv(), I think we
> > can pull it out into intel_compute_sagv_mask() so that we do the check
> > after computing the mask. And of course change it to use
> > bw_state->active_pipes instead.
> =

> intel_crtc_can_enable_sagv is called per crtc - so can't just pull it out=
, =

> will have to have to cycles then - one will compute bw_state->active_pipe=
s,
> and another pipe_sagv_mask.

Hmm. Actually I think what we should probably do is keep the
active_pipes check in intel_can_enable_sagv(). Ie something like this:

intel_can_enable_sagv(bw_state) {
	if (active_pipes && !is_power_of_2(active_pipes))
	    	return false;
	return sagv_reject !=3D 0;
}

compute_sagv() {
	for_each_crtc() {
		if (crtc_can_sagv())
			sagv_reject &=3D ~pipe;
		else
			sagv_reject |=3D pipe;
	}
	=

	active_pipes =3D calc_active_pipes();

	... lock/serialize etc.
}

That way we don't have to update sagv_reject at all based on
active_pipes. I think that even makes more sense since the
active_pipes check is a global thing and not tied to any specific
crtc.

We can then make the check conditional on pre-icl (or whatever we want)
in a later patch. And finally we can remove it altogether in a separate
patch, since I don't think we should have to do it on any platform.

> =

> > =

> > We're also going to need to lock_global_state() if bw_state->active_pip=
es
> > mask changes.
> =

> Ohh.. right.
> =

> =

> Stan
> =

> > =

> > > +
> > >  		if (intel_crtc_can_enable_sagv(new_crtc_state))
> > >  			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
> > >  		else
> > > @@ -5911,11 +5918,9 @@ skl_compute_wm(struct intel_atomic_state *stat=
e)
> > >  	if (ret)
> > >  		return ret;
> > >  =

> > > -	if (state->modeset) {
> > > -		ret =3D intel_compute_sagv_mask(state);
> > > -		if (ret)
> > > -			return ret;
> > > -	}
> > > +	ret =3D intel_compute_sagv_mask(state);
> > > +	if (ret)
> > > +		return ret;
> > =

> > We also need to remove the state->modeset checks around
> > sagv_{pre,post}_update().
> > =

> > >  =

> > >  	/*
> > >  	 * skl_compute_ddb() will have adjusted the final watermarks
> > > -- =

> > > 2.24.1.485.gad05a3d8e5
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
