Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 928E81BF729
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 13:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E07486E24D;
	Thu, 30 Apr 2020 11:53:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 298EF6E24D
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 11:53:01 +0000 (UTC)
IronPort-SDR: m7JD25+FmW88GKjHVZvsMEk0AY02RaZcMfdeHsYIdTWsew693mxxU9m4YvHeh2+rIvQ8LZv4ey
 E0gJBL/kgZyA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 04:53:00 -0700
IronPort-SDR: KG0iy+UsLnqoGfXlAWJfUphkNYT3taw0PXINrbe7kgj/PPbkqV2uO6QXjQw29Vni9ukgDCVu8M
 njkf4x3Mq6BQ==
X-IronPort-AV: E=Sophos;i="5.73,334,1583222400"; d="scan'208";a="432935004"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 04:52:59 -0700
Date: Thu, 30 Apr 2020 14:48:35 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200430114835.GA22319@intel.com>
References: <20200423075902.21892-4-stanislav.lisovskiy@intel.com>
 <20200430092104.GO6112@intel.com> <20200430100515.GA2691@intel.com>
 <20200430103217.GR6112@intel.com>
 <20200430104702.GA31341@intel.com>
 <20200430105559.GT6112@intel.com>
 <20200430110702.GA22144@intel.com>
 <20200430112202.GU6112@intel.com>
 <20200430112951.GA22275@intel.com>
 <20200430114037.GV6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430114037.GV6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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

On Thu, Apr 30, 2020 at 02:40:37PM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, Apr 30, 2020 at 02:29:51PM +0300, Lisovskiy, Stanislav wrote:
> > On Thu, Apr 30, 2020 at 02:22:02PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Thu, Apr 30, 2020 at 02:07:02PM +0300, Lisovskiy, Stanislav wrote:
> > > > On Thu, Apr 30, 2020 at 01:55:59PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > > On Thu, Apr 30, 2020 at 01:47:02PM +0300, Lisovskiy, Stanislav wr=
ote:
> > > > > > On Thu, Apr 30, 2020 at 01:32:17PM +0300, Ville Syrj=E4l=E4 wro=
te:
> > > > > > > On Thu, Apr 30, 2020 at 01:05:15PM +0300, Lisovskiy, Stanisla=
v wrote:
> > > > > > > > On Thu, Apr 30, 2020 at 12:21:04PM +0300, Ville Syrj=E4l=E4=
 wrote:
> > > > > > > > > On Thu, Apr 23, 2020 at 10:58:56AM +0300, Stanislav Lisov=
skiy wrote:
> > > > > > > > > > We need to calculate SAGV mask also in a non-modeset
> > > > > > > > > > commit, however currently active_pipes are only calcula=
ted
> > > > > > > > > > for modesets in global atomic state, thus now we will be
> > > > > > > > > > tracking those also in bw_state in order to be able to
> > > > > > > > > > properly access global data.
> > > > > > > > > > =

> > > > > > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy=
@intel.com>
> > > > > > > > > > ---
> > > > > > > > > >  drivers/gpu/drm/i915/display/intel_bw.h |  3 +++
> > > > > > > > > >  drivers/gpu/drm/i915/intel_pm.c         | 15 +++++++++=
+-----
> > > > > > > > > >  2 files changed, 13 insertions(+), 5 deletions(-)
> > > > > > > > > > =

> > > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/=
drivers/gpu/drm/i915/display/intel_bw.h
> > > > > > > > > > index d6df91058223..898b4a85ccab 100644
> > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > > > > > > > > > @@ -26,6 +26,9 @@ struct intel_bw_state {
> > > > > > > > > >  =

> > > > > > > > > >  	unsigned int data_rate[I915_MAX_PIPES];
> > > > > > > > > >  	u8 num_active_planes[I915_MAX_PIPES];
> > > > > > > > > > +
> > > > > > > > > > +	/* bitmask of active pipes */
> > > > > > > > > > +	u8 active_pipes;
> > > > > > > > > >  };
> > > > > > > > > >  =

> > > > > > > > > >  #define to_intel_bw_state(x) container_of((x), struct =
intel_bw_state, base)
> > > > > > > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/=
gpu/drm/i915/intel_pm.c
> > > > > > > > > > index 7e15cf3368ad..f7249bca3f6f 100644
> > > > > > > > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > > > > > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > > > > > > > @@ -3874,6 +3874,7 @@ static int intel_compute_sagv_mas=
k(struct intel_atomic_state *state)
> > > > > > > > > >  	struct intel_bw_state *new_bw_state =3D NULL;
> > > > > > > > > >  	const struct intel_bw_state *old_bw_state =3D NULL;
> > > > > > > > > >  	int i;
> > > > > > > > > > +	bool active_pipes_calculated =3D false;
> > > > > > > > > >  =

> > > > > > > > > >  	for_each_new_intel_crtc_in_state(state, crtc,
> > > > > > > > > >  					 new_crtc_state, i) {
> > > > > > > > > > @@ -3883,6 +3884,12 @@ static int intel_compute_sagv_ma=
sk(struct intel_atomic_state *state)
> > > > > > > > > >  =

> > > > > > > > > >  		old_bw_state =3D intel_atomic_get_old_bw_state(state=
);
> > > > > > > > > >  =

> > > > > > > > > > +		if (!active_pipes_calculated) {
> > > > > > > > > > +			state->active_pipes =3D new_bw_state->active_pipes =
=3D
> > > > > > > > > =

> > > > > > > > > I don't think we should touch state->active_pipes here.
> > > > > > > > =

> > > > > > > > Well, that was my question actually here as well. I underst=
and that changing
> > > > > > > > state->active_pipes here feels like some unneeded side effe=
ct, however having
> > > > > > > > state->active_pipes and bw_state->active_pipes going out of=
 sync doesn't sound
> > > > > > > > very attractive to me either. That is why I don't like this=
 idea of duplication
> > > > > > > > at all - having constant need to sync those state, bw_state=
, cdclk_state, because
> > > > > > > > they all might have different active_pipes now.
> > > > > > > =

> > > > > > > Having an out of date active_pipes anywhere would be a bug in=
 that
> > > > > > > specific code. Also state->active_pipes is definitely going t=
he way of
> > > > > > > the dodo soon.
> > > > > > > =

> > > > > > > > =

> > > > > > > > > =

> > > > > > > > > > +				intel_calc_active_pipes(state, old_bw_state->activ=
e_pipes);
> > > > > > > > > > +			active_pipes_calculated =3D true;
> > > > > > > > > > +		}
> > > > > > > > > =

> > > > > > > > > I'd do this after the loop so we don't need this extra bo=
olean. As far
> > > > > > > > > as the active_pipes check in intel_crtc_can_enable_sagv()=
, I think we
> > > > > > > > > can pull it out into intel_compute_sagv_mask() so that we=
 do the check
> > > > > > > > > after computing the mask. And of course change it to use
> > > > > > > > > bw_state->active_pipes instead.
> > > > > > > > =

> > > > > > > > intel_crtc_can_enable_sagv is called per crtc - so can't ju=
st pull it out, =

> > > > > > > > will have to have to cycles then - one will compute bw_stat=
e->active_pipes,
> > > > > > > > and another pipe_sagv_mask.
> > > > > > > =

> > > > > > > Hmm. Actually I think what we should probably do is keep the
> > > > > > > active_pipes check in intel_can_enable_sagv(). Ie something l=
ike this:
> > > > > > > =

> > > > > > > intel_can_enable_sagv(bw_state) {
> > > > > > > 	if (active_pipes && !is_power_of_2(active_pipes))
> > > > > > > 	    	return false;
> > > > > > > 	return sagv_reject !=3D 0;
> > > > > > > }
> > > > > > =

> > > > > > I need active_pipes check here for skl code only, as it disable=
s SAGV for multipipe
> > > > > > scenarios. Adding this here would generalize it for other platf=
orms and we
> > > > > > don't want that for ICL+.
> > > > > =

> > > > > Which is why I said "We can then make the check conditional on pr=
e-icl
> > > > > (or whatever we want) in a later patch". Why in a later patch? Be=
cause
> > > > > currently the check is unconditional and it's generally a good id=
ea to
> > > > > limit the number of functional changes per patch to a minimum.
> > > > =

> > > > Moving active_pipes check out of intel_crtc_can_enable_sagv will re=
sult
> > > > in wrong SAGV mask calculated.
> > > > =

> > > > i.e if you have 2 pipes,
> > > > =

> > > > for_each_crtc() {
> > > > 	if (crtc_can_sagv())
> > > > 		sagv_reject &=3D ~pipe;
> > > > 	else
> > > > 		sagv_reject |=3D pipe;
> > > > }
> > > > =

> > > > will calculate sagv_reject as 0 which is wrong and value will be st=
ored
> > > > in global state.
> > > =

> > > No, it accurately reflects whether each of those pipes is capable of
> > > sagv. The single pipe restriction is an additinal constrain on top of
> > > that. In fact I think adjusting sagv_reject_mask based on this would
> > > result in the wrong value potentially. Consider for example:
> > > =

> > > 1. Enable pipe A + B
> > > 2. sagv_reject would be calculated as 0x3
> > > 3. Disable pipe B
> > > 4. sagv_reject will have pipe B removed, leaving its value at 0x1
> > > 5. No SAGV even though we only have one pipe enabled, which is wrong
> > =

> > Quite good example. I think it means that pipe_sagv_mask should
> > be affected not only by per crtc checks, but also by overall active_pip=
es
> > state then. I.e ok, I remove active_pipes from intel_crtc_can_enable_sa=
gv,
> > however that active_pipes && !is_power_of_2(active_pipes) check should
> > then also assign pipe_sagv_reject mask to ~0, if it evaluates to true.
> =

> That would clobber the bits of sagv_reject for all crtcs, not just
> the ones part of the state currently. Ie. the very same example
> I gave would still do the wrong thing.

Sounds like we might want to reserve one bit from SAGV mask as "global
SAGV reject" flag, for non-crtc related checks.

I.e if we have active_pipes > 1 for skl, we just set sagv_mask |=3D 0x80
for instance - that will make your example work and also we will be storing
SAGV result in a single variable.

Stan

> =

> > =

> > I.e then we will always have intel_can_enable_sagv result reflected in
> > sagv mask, which is handy, also intel_can_enable_sagv would still
> > just evaluate sagv mask.
> > =

> > Stan
> > =

> > > =

> > > > I think active_pipes should always affect the SAGV mask
> > > > otherwise we do get really strange situation: you have SAGV mask as=
 0,
> > > > but you still reject SAGV. So there is no way even then to track wh=
at =

> > > > was the previous SAGV state - even if it's 0 it could have been rej=
ected.
> > > > =

> > > > IMO that is quite weird side effect. So removing active_pipes from
> > > > intel_crtc_can_enable_sagv doesn't sound like good idea.
> > > > =

> > > > I think it is now just a bit too much hassle around simple =

> > > > active_pipes_calculated boolean check.
> > > > =

> > > > Stan
> > > > =

> > > > > =

> > > > > > =

> > > > > > In fact that is the only reason I need active pipes here - othe=
rwise I think
> > > > > > it was even your comment that we actually don't need those here=
 at all,
> > > > > > as we just iterate through crtcs in state - pretty clearly reme=
mber we discussed
> > > > > > this. Just same way how it's done in intel bw check and other p=
laces.
> > > > > > =

> > > > > > Stan
> > > > > > =

> > > > > > > =

> > > > > > > compute_sagv() {
> > > > > > > 	for_each_crtc() {
> > > > > > > 		if (crtc_can_sagv())
> > > > > > > 			sagv_reject &=3D ~pipe;
> > > > > > > 		else
> > > > > > > 			sagv_reject |=3D pipe;
> > > > > > > 	}
> > > > > > > 	=

> > > > > > > 	active_pipes =3D calc_active_pipes();
> > > > > > > =

> > > > > > > 	... lock/serialize etc.
> > > > > > > }
> > > > > > > =

> > > > > > > That way we don't have to update sagv_reject at all based on
> > > > > > > active_pipes. I think that even makes more sense since the
> > > > > > > active_pipes check is a global thing and not tied to any spec=
ific
> > > > > > > crtc.
> > > > > > > =

> > > > > > > We can then make the check conditional on pre-icl (or whateve=
r we want)
> > > > > > > in a later patch. And finally we can remove it altogether in =
a separate
> > > > > > > patch, since I don't think we should have to do it on any pla=
tform.
> > > > > > > =

> > > > > > > > =

> > > > > > > > > =

> > > > > > > > > We're also going to need to lock_global_state() if bw_sta=
te->active_pipes
> > > > > > > > > mask changes.
> > > > > > > > =

> > > > > > > > Ohh.. right.
> > > > > > > > =

> > > > > > > > =

> > > > > > > > Stan
> > > > > > > > =

> > > > > > > > > =

> > > > > > > > > > +
> > > > > > > > > >  		if (intel_crtc_can_enable_sagv(new_crtc_state))
> > > > > > > > > >  			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe=
);
> > > > > > > > > >  		else
> > > > > > > > > > @@ -5911,11 +5918,9 @@ skl_compute_wm(struct intel_atom=
ic_state *state)
> > > > > > > > > >  	if (ret)
> > > > > > > > > >  		return ret;
> > > > > > > > > >  =

> > > > > > > > > > -	if (state->modeset) {
> > > > > > > > > > -		ret =3D intel_compute_sagv_mask(state);
> > > > > > > > > > -		if (ret)
> > > > > > > > > > -			return ret;
> > > > > > > > > > -	}
> > > > > > > > > > +	ret =3D intel_compute_sagv_mask(state);
> > > > > > > > > > +	if (ret)
> > > > > > > > > > +		return ret;
> > > > > > > > > =

> > > > > > > > > We also need to remove the state->modeset checks around
> > > > > > > > > sagv_{pre,post}_update().
> > > > > > > > > =

> > > > > > > > > >  =

> > > > > > > > > >  	/*
> > > > > > > > > >  	 * skl_compute_ddb() will have adjusted the final wat=
ermarks
> > > > > > > > > > -- =

> > > > > > > > > > 2.24.1.485.gad05a3d8e5
> > > > > > > > > =

> > > > > > > > > -- =

> > > > > > > > > Ville Syrj=E4l=E4
> > > > > > > > > Intel
> > > > > > > =

> > > > > > > -- =

> > > > > > > Ville Syrj=E4l=E4
> > > > > > > Intel
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
