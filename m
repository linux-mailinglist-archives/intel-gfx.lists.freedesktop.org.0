Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DF61CF663
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 16:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83FF46E104;
	Tue, 12 May 2020 14:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BD376E104
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 14:03:45 +0000 (UTC)
IronPort-SDR: GIH148DDlFxcJ4GoayX4XIT0DoHDZPzCDQEupsKVOFk1GNH/30FUJiQYb3Bm5wWp/sh40Hs/bI
 5PytTIOBmYaA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 07:03:32 -0700
IronPort-SDR: aVtAd2Izj9tb+HUpGdq/3wXZtIEerT05MOspu+y8avrSG3RIUetg3LEKrx55yeI3rrvQ+IwULk
 46GxEpFPwEcw==
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="409306959"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 07:03:30 -0700
Date: Tue, 12 May 2020 16:59:19 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200512135919.GA20092@intel.com>
References: <20200507144503.15506-1-stanislav.lisovskiy@intel.com>
 <20200507144503.15506-5-stanislav.lisovskiy@intel.com>
 <20200512120326.GO6112@intel.com>
 <20200512125227.GB19632@intel.com>
 <20200512131046.GQ6112@intel.com>
 <20200512131734.GA19728@intel.com>
 <20200512133821.GS6112@intel.com>
 <20200512134126.GA19822@intel.com>
 <20200512135046.GT6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512135046.GT6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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

On Tue, May 12, 2020 at 04:50:46PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, May 12, 2020 at 04:41:26PM +0300, Lisovskiy, Stanislav wrote:
> > On Tue, May 12, 2020 at 04:38:21PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Tue, May 12, 2020 at 04:17:34PM +0300, Lisovskiy, Stanislav wrote:
> > > > On Tue, May 12, 2020 at 04:10:46PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > > On Tue, May 12, 2020 at 03:52:27PM +0300, Lisovskiy, Stanislav wr=
ote:
> > > > > > On Tue, May 12, 2020 at 03:03:26PM +0300, Ville Syrj=E4l=E4 wro=
te:
> > > > > > > On Thu, May 07, 2020 at 05:45:01PM +0300, Stanislav Lisovskiy=
 wrote:
> > > > > > > > Starting from TGL we need to have a separate wm0
> > > > > > > > values for SAGV and non-SAGV which affects
> > > > > > > > how calculations are done.
> > > > > > > > =

> > > > > > > > v2: Remove long lines
> > > > > > > > v3: Removed COLOR_PLANE enum references
> > > > > > > > v4, v5, v6: Fixed rebase conflict
> > > > > > > > v7: - Removed skl_plane_wm_level accessor from skl_allocate=
_pipe_ddb(Ville)
> > > > > > > >     - Removed sagv_uv_wm0(Ville)
> > > > > > > >     - can_sagv->use_sagv_wm(Ville)
> > > > > > > > =

> > > > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@int=
el.com>
> > > > > > > > ---
> > > > > > > >  drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
> > > > > > > >  .../drm/i915/display/intel_display_types.h    |   2 +
> > > > > > > >  drivers/gpu/drm/i915/intel_pm.c               | 118 ++++++=
+++++++++++-
> > > > > > > >  3 files changed, 121 insertions(+), 7 deletions(-)
> > > > > > > > =

> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b=
/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > index fd6d63b03489..be5741cb7595 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > @@ -13961,7 +13961,9 @@ static void verify_wm_state(struct =
intel_crtc *crtc,
> > > > > > > >  		/* Watermarks */
> > > > > > > >  		for (level =3D 0; level <=3D max_level; level++) {
> > > > > > > >  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > > > > > > > -						&sw_plane_wm->wm[level]))
> > > > > > > > +						&sw_plane_wm->wm[level]) ||
> > > > > > > > +			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm=
->wm[level],
> > > > > > > > +							       &sw_plane_wm->sagv_wm0)))
> > > > > > > >  				continue;
> > > > > > > >  =

> > > > > > > >  			drm_err(&dev_priv->drm,
> > > > > > > > @@ -14016,7 +14018,9 @@ static void verify_wm_state(struct =
intel_crtc *crtc,
> > > > > > > >  		/* Watermarks */
> > > > > > > >  		for (level =3D 0; level <=3D max_level; level++) {
> > > > > > > >  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > > > > > > > -						&sw_plane_wm->wm[level]))
> > > > > > > > +						&sw_plane_wm->wm[level]) ||
> > > > > > > > +			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm=
->wm[level],
> > > > > > > > +							       &sw_plane_wm->sagv_wm0)))
> > > > > > > >  				continue;
> > > > > > > >  =

> > > > > > > >  			drm_err(&dev_priv->drm,
> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_typ=
es.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > > > index 9488449e4b94..8cede29c9562 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > > > @@ -688,11 +688,13 @@ struct skl_plane_wm {
> > > > > > > >  	struct skl_wm_level wm[8];
> > > > > > > >  	struct skl_wm_level uv_wm[8];
> > > > > > > >  	struct skl_wm_level trans_wm;
> > > > > > > > +	struct skl_wm_level sagv_wm0;
> > > > > > > >  	bool is_planar;
> > > > > > > >  };
> > > > > > > >  =

> > > > > > > >  struct skl_pipe_wm {
> > > > > > > >  	struct skl_plane_wm planes[I915_MAX_PLANES];
> > > > > > > > +	bool use_sagv_wm;
> > > > > > > >  };
> > > > > > > >  =

> > > > > > > >  enum vlv_wm_level {
> > > > > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/=
drm/i915/intel_pm.c
> > > > > > > > index db188efee21e..934a686342ad 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > > > > > @@ -3863,25 +3863,35 @@ bool intel_can_enable_sagv(struct d=
rm_i915_private *dev_priv,
> > > > > > > >  	return bw_state->pipe_sagv_reject =3D=3D 0;
> > > > > > > >  }
> > > > > > > >  =

> > > > > > > > +static bool
> > > > > > > > +tgl_crtc_can_enable_sagv(const struct intel_crtc_state *cr=
tc_state);
> > > > > > > =

> > > > > > > Just put the function here instead of adding fwd decalrations.
> > > > > > > =

> > > > > > > > +
> > > > > > > >  static int intel_compute_sagv_mask(struct intel_atomic_sta=
te *state)
> > > > > > > >  {
> > > > > > > >  	struct drm_i915_private *dev_priv =3D to_i915(state->base=
.dev);
> > > > > > > >  	int ret;
> > > > > > > >  	struct intel_crtc *crtc;
> > > > > > > > -	const struct intel_crtc_state *new_crtc_state;
> > > > > > > > +	struct intel_crtc_state *new_crtc_state;
> > > > > > > >  	struct intel_bw_state *new_bw_state =3D NULL;
> > > > > > > >  	const struct intel_bw_state *old_bw_state =3D NULL;
> > > > > > > >  	int i;
> > > > > > > >  =

> > > > > > > >  	for_each_new_intel_crtc_in_state(state, crtc,
> > > > > > > >  					 new_crtc_state, i) {
> > > > > > > > +		bool can_sagv;
> > > > > > > > +
> > > > > > > >  		new_bw_state =3D intel_atomic_get_bw_state(state);
> > > > > > > >  		if (IS_ERR(new_bw_state))
> > > > > > > >  			return PTR_ERR(new_bw_state);
> > > > > > > >  =

> > > > > > > >  		old_bw_state =3D intel_atomic_get_old_bw_state(state);
> > > > > > > >  =

> > > > > > > > -		if (skl_crtc_can_enable_sagv(new_crtc_state))
> > > > > > > > +		if (INTEL_GEN(dev_priv) >=3D 12)
> > > > > > > > +			can_sagv =3D tgl_crtc_can_enable_sagv(new_crtc_state);
> > > > > > > > +		else
> > > > > > > > +			can_sagv =3D skl_crtc_can_enable_sagv(new_crtc_state);
> > > > > > > > +
> > > > > > > > +		if (can_sagv)
> > > > > > > >  			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
> > > > > > > >  		else
> > > > > > > >  			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> > > > > > > > @@ -3899,6 +3909,24 @@ static int intel_compute_sagv_mask(s=
truct intel_atomic_state *state)
> > > > > > > >  			return ret;
> > > > > > > >  	}
> > > > > > > >  =

> > > > > > > > +	for_each_new_intel_crtc_in_state(state, crtc,
> > > > > > > > +					 new_crtc_state, i) {
> > > > > > > > +		struct skl_pipe_wm *pipe_wm =3D &new_crtc_state->wm.skl.=
optimal;
> > > > > > > > +
> > > > > > > > +		/*
> > > > > > > > +		 * Due to drm limitation at commit state, when
> > > > > > > > +		 * changes are written the whole atomic state is
> > > > > > > > +		 * zeroed away =3D> which prevents from using it,
> > > > > > > > +		 * so just sticking it into pipe wm state for
> > > > > > > > +		 * keeping it simple - anyway this is related to wm.
> > > > > > > > +		 * Proper way in ideal universe would be of course not
> > > > > > > > +		 * to lose parent atomic state object from child crtc_st=
ate,
> > > > > > > > +		 * and stick to OOP programming principles, which had be=
en
> > > > > > > > +		 * scientifically proven to work.
> > > > > > > > +		 */
> > > > > > > =

> > > > > > > More ramblings. Just drop this comment too imo.
> > > > > > =

> > > > > > As I understand what is happening here is rather weird, so I th=
ought =

> > > > > > commenting is good idea.
> > > > > =

> > > > > At least I have no idea what the comment is trying to say.
> > > > > I see nothing weird hapening here, we're just computing the
> > > > > state which is totally standard stuff.
> > > > =

> > > > Well I can remind, this is because there is no way to get parent st=
ate
> > > > from crtc_state, because of weird drm atomic behaviour which leaves=
 us
> > > > with NULL parent state. So that we had to stick this boolean to some
> > > > place.
> > > > In normal code universe this wouldn't even be needed if we could
> > > > just get atomic state from crtc_state when we write wm in skl_write=
_plane_wm.
> > > =

> > > Didn't get that at all from the comment. It talked about zeroing some
> > > whole state which I took as 'memset(state, 0, sizeof(*state))'.
> > > As that is not what's going on I just got confused by the comment.
> > > =

> > > Now that I understand what this is about I think the comment
> > > (if we want to have one) should probably say something more like:
> > > "we store use_sagv_wm in the crtc state rather than relying on
> > >  the bw state since we have no convenient way to get at the
> > >  latter from the plane commit hooks (especially in the legacy
> > >  cursor case)".
> > > =

> > > > =

> > > > However probably OOP principles like parent-child hieararchy is not=
 a thing
> > > > here. That what this comment was trying to say.
> > > > =

> > > > In normal OOP you can't destroy parent object _before_ destroying
> > > > child one.
> > > =

> > > There's no parent-child relationship between the crtc state and atomic
> > > state (which really shouldn't be called a state to begin with, rather
> > > it should be "transaction" or something along those lines).
> > =

> > In practice there is. crtc_state is being aggregated and contained as =

> > part of more general atomic state. That is exactly what parent-child
> > object relation is.
> > If you want to decouple those, this needs to be not aggregation but a r=
eference,
> > i.e atomic state would not contain those state objects, but have a poin=
ter
> > instead, but then you would not be using that container_of magic.
> =

> Pointers is what it has. And once the atomic commit is done the =

> atomic_state (ie. the object used to track the single transaction)
> goes away while the crtc/plane/etc. states remain behind.

If the rest of states are independent there should be sane way
to get those without the atomic state. =


Currently bw_state, cdclk_state and co - all can be retrieved only
using atomic state, which is at some point "gone". =

Also it is actually not even gone, we just zero out a pointer
to it in drm_crtc_state. =


I know why this done as we discussed, however I would =

emphasize that the proper way would be then
to completely decouple from it, so that all required states can
be retrieved without atomic state. Because currently we are
kind of in some "fuzzy" state in between.

Stan

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
