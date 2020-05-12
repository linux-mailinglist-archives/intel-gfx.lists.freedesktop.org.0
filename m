Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB1A1CF8BC
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 17:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABF226E08A;
	Tue, 12 May 2020 15:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F6826E08A
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 15:14:32 +0000 (UTC)
IronPort-SDR: aTGDtuECCAA11Vw/7JBWD0+vqWCDAgsJp8evHGJGmQI63a6nTO6e9GaghycwNwuH1odw3NbU2s
 80aOdW1fcZaA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 08:14:31 -0700
IronPort-SDR: ZM54RrsoHcseQBKrW5HDkIqvkROagopnmCJj3JGqS66xpHbGZtqBeRPHXy+Xwje6ywwQG0lyDg
 gvx4rkxLro6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="306508298"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 12 May 2020 08:14:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 May 2020 18:14:27 +0300
Date: Tue, 12 May 2020 18:14:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200512151427.GV6112@intel.com>
References: <20200512120326.GO6112@intel.com>
 <20200512125227.GB19632@intel.com>
 <20200512131046.GQ6112@intel.com>
 <20200512131734.GA19728@intel.com>
 <20200512133821.GS6112@intel.com>
 <20200512134126.GA19822@intel.com>
 <20200512135046.GT6112@intel.com>
 <20200512135919.GA20092@intel.com>
 <20200512143221.GU6112@intel.com>
 <20200512150445.GA20405@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512150445.GA20405@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v28 4/6] drm/i915: Add TGL+ SAGV support
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

On Tue, May 12, 2020 at 06:04:45PM +0300, Lisovskiy, Stanislav wrote:
> On Tue, May 12, 2020 at 05:32:21PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Tue, May 12, 2020 at 04:59:19PM +0300, Lisovskiy, Stanislav wrote:
> > > On Tue, May 12, 2020 at 04:50:46PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > On Tue, May 12, 2020 at 04:41:26PM +0300, Lisovskiy, Stanislav wrot=
e:
> > > > > On Tue, May 12, 2020 at 04:38:21PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > > > On Tue, May 12, 2020 at 04:17:34PM +0300, Lisovskiy, Stanislav =
wrote:
> > > > > > > On Tue, May 12, 2020 at 04:10:46PM +0300, Ville Syrj=E4l=E4 w=
rote:
> > > > > > > > On Tue, May 12, 2020 at 03:52:27PM +0300, Lisovskiy, Stanis=
lav wrote:
> > > > > > > > > On Tue, May 12, 2020 at 03:03:26PM +0300, Ville Syrj=E4l=
=E4 wrote:
> > > > > > > > > > On Thu, May 07, 2020 at 05:45:01PM +0300, Stanislav Lis=
ovskiy wrote:
> > > > > > > > > > > Starting from TGL we need to have a separate wm0
> > > > > > > > > > > values for SAGV and non-SAGV which affects
> > > > > > > > > > > how calculations are done.
> > > > > > > > > > > =

> > > > > > > > > > > v2: Remove long lines
> > > > > > > > > > > v3: Removed COLOR_PLANE enum references
> > > > > > > > > > > v4, v5, v6: Fixed rebase conflict
> > > > > > > > > > > v7: - Removed skl_plane_wm_level accessor from skl_al=
locate_pipe_ddb(Ville)
> > > > > > > > > > >     - Removed sagv_uv_wm0(Ville)
> > > > > > > > > > >     - can_sagv->use_sagv_wm(Ville)
> > > > > > > > > > > =

> > > > > > > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovsk=
iy@intel.com>
> > > > > > > > > > > ---
> > > > > > > > > > >  drivers/gpu/drm/i915/display/intel_display.c  |   8 =
+-
> > > > > > > > > > >  .../drm/i915/display/intel_display_types.h    |   2 +
> > > > > > > > > > >  drivers/gpu/drm/i915/intel_pm.c               | 118 =
+++++++++++++++++-
> > > > > > > > > > >  3 files changed, 121 insertions(+), 7 deletions(-)
> > > > > > > > > > > =

> > > > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_displ=
ay.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > index fd6d63b03489..be5741cb7595 100644
> > > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > @@ -13961,7 +13961,9 @@ static void verify_wm_state(s=
truct intel_crtc *crtc,
> > > > > > > > > > >  		/* Watermarks */
> > > > > > > > > > >  		for (level =3D 0; level <=3D max_level; level++) {
> > > > > > > > > > >  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > > > > > > > > > > -						&sw_plane_wm->wm[level]))
> > > > > > > > > > > +						&sw_plane_wm->wm[level]) ||
> > > > > > > > > > > +			    (level =3D=3D 0 && skl_wm_level_equals(&hw_pl=
ane_wm->wm[level],
> > > > > > > > > > > +							       &sw_plane_wm->sagv_wm0)))
> > > > > > > > > > >  				continue;
> > > > > > > > > > >  =

> > > > > > > > > > >  			drm_err(&dev_priv->drm,
> > > > > > > > > > > @@ -14016,7 +14018,9 @@ static void verify_wm_state(s=
truct intel_crtc *crtc,
> > > > > > > > > > >  		/* Watermarks */
> > > > > > > > > > >  		for (level =3D 0; level <=3D max_level; level++) {
> > > > > > > > > > >  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > > > > > > > > > > -						&sw_plane_wm->wm[level]))
> > > > > > > > > > > +						&sw_plane_wm->wm[level]) ||
> > > > > > > > > > > +			    (level =3D=3D 0 && skl_wm_level_equals(&hw_pl=
ane_wm->wm[level],
> > > > > > > > > > > +							       &sw_plane_wm->sagv_wm0)))
> > > > > > > > > > >  				continue;
> > > > > > > > > > >  =

> > > > > > > > > > >  			drm_err(&dev_priv->drm,
> > > > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_displ=
ay_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > > > > > > index 9488449e4b94..8cede29c9562 100644
> > > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_type=
s.h
> > > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_type=
s.h
> > > > > > > > > > > @@ -688,11 +688,13 @@ struct skl_plane_wm {
> > > > > > > > > > >  	struct skl_wm_level wm[8];
> > > > > > > > > > >  	struct skl_wm_level uv_wm[8];
> > > > > > > > > > >  	struct skl_wm_level trans_wm;
> > > > > > > > > > > +	struct skl_wm_level sagv_wm0;
> > > > > > > > > > >  	bool is_planar;
> > > > > > > > > > >  };
> > > > > > > > > > >  =

> > > > > > > > > > >  struct skl_pipe_wm {
> > > > > > > > > > >  	struct skl_plane_wm planes[I915_MAX_PLANES];
> > > > > > > > > > > +	bool use_sagv_wm;
> > > > > > > > > > >  };
> > > > > > > > > > >  =

> > > > > > > > > > >  enum vlv_wm_level {
> > > > > > > > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/driver=
s/gpu/drm/i915/intel_pm.c
> > > > > > > > > > > index db188efee21e..934a686342ad 100644
> > > > > > > > > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > > > > > > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > > > > > > > > @@ -3863,25 +3863,35 @@ bool intel_can_enable_sagv(st=
ruct drm_i915_private *dev_priv,
> > > > > > > > > > >  	return bw_state->pipe_sagv_reject =3D=3D 0;
> > > > > > > > > > >  }
> > > > > > > > > > >  =

> > > > > > > > > > > +static bool
> > > > > > > > > > > +tgl_crtc_can_enable_sagv(const struct intel_crtc_sta=
te *crtc_state);
> > > > > > > > > > =

> > > > > > > > > > Just put the function here instead of adding fwd decalr=
ations.
> > > > > > > > > > =

> > > > > > > > > > > +
> > > > > > > > > > >  static int intel_compute_sagv_mask(struct intel_atom=
ic_state *state)
> > > > > > > > > > >  {
> > > > > > > > > > >  	struct drm_i915_private *dev_priv =3D to_i915(state=
->base.dev);
> > > > > > > > > > >  	int ret;
> > > > > > > > > > >  	struct intel_crtc *crtc;
> > > > > > > > > > > -	const struct intel_crtc_state *new_crtc_state;
> > > > > > > > > > > +	struct intel_crtc_state *new_crtc_state;
> > > > > > > > > > >  	struct intel_bw_state *new_bw_state =3D NULL;
> > > > > > > > > > >  	const struct intel_bw_state *old_bw_state =3D NULL;
> > > > > > > > > > >  	int i;
> > > > > > > > > > >  =

> > > > > > > > > > >  	for_each_new_intel_crtc_in_state(state, crtc,
> > > > > > > > > > >  					 new_crtc_state, i) {
> > > > > > > > > > > +		bool can_sagv;
> > > > > > > > > > > +
> > > > > > > > > > >  		new_bw_state =3D intel_atomic_get_bw_state(state);
> > > > > > > > > > >  		if (IS_ERR(new_bw_state))
> > > > > > > > > > >  			return PTR_ERR(new_bw_state);
> > > > > > > > > > >  =

> > > > > > > > > > >  		old_bw_state =3D intel_atomic_get_old_bw_state(sta=
te);
> > > > > > > > > > >  =

> > > > > > > > > > > -		if (skl_crtc_can_enable_sagv(new_crtc_state))
> > > > > > > > > > > +		if (INTEL_GEN(dev_priv) >=3D 12)
> > > > > > > > > > > +			can_sagv =3D tgl_crtc_can_enable_sagv(new_crtc_st=
ate);
> > > > > > > > > > > +		else
> > > > > > > > > > > +			can_sagv =3D skl_crtc_can_enable_sagv(new_crtc_st=
ate);
> > > > > > > > > > > +
> > > > > > > > > > > +		if (can_sagv)
> > > > > > > > > > >  			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pi=
pe);
> > > > > > > > > > >  		else
> > > > > > > > > > >  			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pip=
e);
> > > > > > > > > > > @@ -3899,6 +3909,24 @@ static int intel_compute_sagv_=
mask(struct intel_atomic_state *state)
> > > > > > > > > > >  			return ret;
> > > > > > > > > > >  	}
> > > > > > > > > > >  =

> > > > > > > > > > > +	for_each_new_intel_crtc_in_state(state, crtc,
> > > > > > > > > > > +					 new_crtc_state, i) {
> > > > > > > > > > > +		struct skl_pipe_wm *pipe_wm =3D &new_crtc_state->w=
m.skl.optimal;
> > > > > > > > > > > +
> > > > > > > > > > > +		/*
> > > > > > > > > > > +		 * Due to drm limitation at commit state, when
> > > > > > > > > > > +		 * changes are written the whole atomic state is
> > > > > > > > > > > +		 * zeroed away =3D> which prevents from using it,
> > > > > > > > > > > +		 * so just sticking it into pipe wm state for
> > > > > > > > > > > +		 * keeping it simple - anyway this is related to w=
m.
> > > > > > > > > > > +		 * Proper way in ideal universe would be of course=
 not
> > > > > > > > > > > +		 * to lose parent atomic state object from child c=
rtc_state,
> > > > > > > > > > > +		 * and stick to OOP programming principles, which =
had been
> > > > > > > > > > > +		 * scientifically proven to work.
> > > > > > > > > > > +		 */
> > > > > > > > > > =

> > > > > > > > > > More ramblings. Just drop this comment too imo.
> > > > > > > > > =

> > > > > > > > > As I understand what is happening here is rather weird, s=
o I thought =

> > > > > > > > > commenting is good idea.
> > > > > > > > =

> > > > > > > > At least I have no idea what the comment is trying to say.
> > > > > > > > I see nothing weird hapening here, we're just computing the
> > > > > > > > state which is totally standard stuff.
> > > > > > > =

> > > > > > > Well I can remind, this is because there is no way to get par=
ent state
> > > > > > > from crtc_state, because of weird drm atomic behaviour which =
leaves us
> > > > > > > with NULL parent state. So that we had to stick this boolean =
to some
> > > > > > > place.
> > > > > > > In normal code universe this wouldn't even be needed if we co=
uld
> > > > > > > just get atomic state from crtc_state when we write wm in skl=
_write_plane_wm.
> > > > > > =

> > > > > > Didn't get that at all from the comment. It talked about zeroin=
g some
> > > > > > whole state which I took as 'memset(state, 0, sizeof(*state))'.
> > > > > > As that is not what's going on I just got confused by the comme=
nt.
> > > > > > =

> > > > > > Now that I understand what this is about I think the comment
> > > > > > (if we want to have one) should probably say something more lik=
e:
> > > > > > "we store use_sagv_wm in the crtc state rather than relying on
> > > > > >  the bw state since we have no convenient way to get at the
> > > > > >  latter from the plane commit hooks (especially in the legacy
> > > > > >  cursor case)".
> > > > > > =

> > > > > > > =

> > > > > > > However probably OOP principles like parent-child hieararchy =
is not a thing
> > > > > > > here. That what this comment was trying to say.
> > > > > > > =

> > > > > > > In normal OOP you can't destroy parent object _before_ destro=
ying
> > > > > > > child one.
> > > > > > =

> > > > > > There's no parent-child relationship between the crtc state and=
 atomic
> > > > > > state (which really shouldn't be called a state to begin with, =
rather
> > > > > > it should be "transaction" or something along those lines).
> > > > > =

> > > > > In practice there is. crtc_state is being aggregated and containe=
d as =

> > > > > part of more general atomic state. That is exactly what parent-ch=
ild
> > > > > object relation is.
> > > > > If you want to decouple those, this needs to be not aggregation b=
ut a reference,
> > > > > i.e atomic state would not contain those state objects, but have =
a pointer
> > > > > instead, but then you would not be using that container_of magic.
> > > > =

> > > > Pointers is what it has. And once the atomic commit is done the =

> > > > atomic_state (ie. the object used to track the single transaction)
> > > > goes away while the crtc/plane/etc. states remain behind.
> > > =

> > > If the rest of states are independent there should be sane way
> > > to get those without the atomic state. =

> > =

> > How could you possibly get the right one without specifying
> > which transaction you want them for?
> =

> Then if we still need those in skl_write_plane_wm or somewhere else durin=
g commit,
> transaction should not go away yet.

IMO those backpointers shouldn't perhaps exist at all and instead we
should just plumb the atomic state through everywhere. But you tried
that and it kinda failed thanks to the legacy cursor hacks, so here
we are.

> =

> Otherwise there is a logical contraversy: we need those objects, but can'=
t get
> them without transaction. But transaction still goes away,
> because it's kinda "separate".

It's a pre-existing issue with the atomic core/helpers. Changing
that is a lot of work, as we discused before a few times.

> =

> Stan
> =

> > =

> > > =

> > > Currently bw_state, cdclk_state and co - all can be retrieved only
> > > using atomic state, which is at some point "gone". =

> > > Also it is actually not even gone, we just zero out a pointer
> > > to it in drm_crtc_state. =

> > > =

> > > I know why this done as we discussed, however I would =

> > > emphasize that the proper way would be then
> > > to completely decouple from it, so that all required states can
> > > be retrieved without atomic state. Because currently we are
> > > kind of in some "fuzzy" state in between.
> > > =

> > > Stan
> > > =

> > > > =

> > > > -- =

> > > > Ville Syrj=E4l=E4
> > > > Intel
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
