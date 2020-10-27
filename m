Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E25DE29C86D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 20:11:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B12EF6EC1C;
	Tue, 27 Oct 2020 19:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C0726EC23
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 19:11:55 +0000 (UTC)
IronPort-SDR: TV+8MwIIYVl3HPba4iWFlHEeDq3hBP6ZoafSjdcbFK/nFaM8m0CiPLXaymMn+dFKaH3z0ZKWMh
 Fz727YYsy6LQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="168274435"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="168274435"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 12:11:54 -0700
IronPort-SDR: rxmXquZhTsMzjzAikLhyfe0GGxEMjFAYlIavUThlLwiCAFK4oCBSaXHtMNOAcnhGPPAAlzUjS4
 wy1frLXTZR6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="323062224"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 27 Oct 2020 12:11:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Oct 2020 21:11:50 +0200
Date: Tue, 27 Oct 2020 21:11:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <20201027191150.GP6112@intel.com>
References: <20201022054223.25071-1-manasi.d.navare@intel.com>
 <20201022054223.25071-11-manasi.d.navare@intel.com>
 <20201026201854.GL6112@intel.com>
 <20201026224148.GF25941@labuser-Z97X-UD5H>
 <20201027134230.GN6112@intel.com>
 <20201027181910.GB3950@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027181910.GB3950@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v11 10/12] drm/i915: Link planes in a
 bigjoiner configuration, v3.
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

On Tue, Oct 27, 2020 at 11:19:16AM -0700, Navare, Manasi wrote:
> On Tue, Oct 27, 2020 at 03:42:30PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Mon, Oct 26, 2020 at 03:41:48PM -0700, Navare, Manasi wrote:
> > > On Mon, Oct 26, 2020 at 10:18:54PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > On Wed, Oct 21, 2020 at 10:42:21PM -0700, Manasi Navare wrote:
> > > > > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > > =

> > > > >  Make sure that when a plane is set in a bigjoiner mode, we will =
add
> > > > >  their counterpart to the atomic state as well. This will allow u=
s to
> > > > >  make sure all state is available when planes are checked.
> > > > > =

> > > > > Because of the funny interactions with bigjoiner and planar YUV
> > > > > formats, we may end up adding a lot of planes, so we have to keep
> > > > > iterating until we no longer add any planes.
> > > > > =

> > > > > Also fix the atomic intel plane iterator, so things watermarks st=
art
> > > > > working automagically.
> > > > > =

> > > > > v6:
> > > > > * Fix from_plane_state assignments (Manasi)
> > > > > v5:
> > > > > * Rebase after adding sagv support (Manasi)
> > > > > v4:
> > > > > * Manual rebase (Manasi)
> > > > > Changes since v1:
> > > > > - Rebase on top of plane_state split, cleaning up the code a lot.
> > > > > - Make intel_atomic_crtc_state_for_each_plane_state() bigjoiner c=
apable.
> > > > > - Add iter macro to intel_atomic_crtc_state_for_each_plane_state(=
) to
> > > > >   keep iteration working.
> > > > > Changes since v2:
> > > > > - Add icl_(un)set_bigjoiner_plane_links, to make it more clear wh=
ere
> > > > >   links are made and broken.
> > > > > =

> > > > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.c=
om>
> > > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > > ---
> > > > >  .../gpu/drm/i915/display/intel_atomic_plane.c |  53 ++++-
> > > > >  .../gpu/drm/i915/display/intel_atomic_plane.h |   3 +-
> > > > >  drivers/gpu/drm/i915/display/intel_display.c  | 207 ++++++++++++=
++++--
> > > > >  drivers/gpu/drm/i915/display/intel_display.h  |  20 +-
> > > > >  .../drm/i915/display/intel_display_types.h    |  11 +
> > > > >  drivers/gpu/drm/i915/intel_pm.c               |  20 +-
> > > > >  6 files changed, 274 insertions(+), 40 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/=
drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > index 3334ff253600..5df928f8f322 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > @@ -246,12 +246,17 @@ static void intel_plane_clear_hw_state(stru=
ct intel_plane_state *plane_state)
> > > > >  	memset(&plane_state->hw, 0, sizeof(plane_state->hw));
> > > > >  }
> > > > >  =

> > > > > -void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state =
*plane_state,
> > > > > +void intel_plane_copy_uapi_to_hw_state(const struct intel_crtc_s=
tate *crtc_state,
> > > > > +				       struct intel_plane_state *plane_state,
> > > > >  				       const struct intel_plane_state *from_plane_state)
> > > > >  {
> > > > >  	intel_plane_clear_hw_state(plane_state);
> > > > >  =

> > > > > -	plane_state->hw.crtc =3D from_plane_state->uapi.crtc;
> > > > > +	if (from_plane_state->uapi.crtc)
> > > > > +		plane_state->hw.crtc =3D crtc_state->uapi.crtc;
> > > > > +	else
> > > > > +		plane_state->hw.crtc =3D NULL;
> > > > > +
> > > > >  	plane_state->hw.fb =3D from_plane_state->uapi.fb;
> > > > >  	if (plane_state->hw.fb)
> > > > >  		drm_framebuffer_get(plane_state->hw.fb);
> > > > > @@ -320,15 +325,36 @@ int intel_plane_atomic_check_with_state(con=
st struct intel_crtc_state *old_crtc_
> > > > >  }
> > > > >  =

> > > > >  static struct intel_crtc *
> > > > > -get_crtc_from_states(const struct intel_plane_state *old_plane_s=
tate,
> > > > > +get_crtc_from_states(struct intel_atomic_state *state,
> > > > > +		     const struct intel_plane_state *old_plane_state,
> > > > >  		     const struct intel_plane_state *new_plane_state)
> > > > >  {
> > > > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > > > +	struct intel_plane *plane =3D to_intel_plane(new_plane_state->u=
api.plane);
> > > > > +
> > > > >  	if (new_plane_state->uapi.crtc)
> > > > >  		return to_intel_crtc(new_plane_state->uapi.crtc);
> > > > >  =

> > > > >  	if (old_plane_state->uapi.crtc)
> > > > >  		return to_intel_crtc(old_plane_state->uapi.crtc);
> > > > >  =

> > > > > +	if (new_plane_state->bigjoiner_slave) {
> > > > > +		const struct intel_plane_state *new_master_plane_state =3D
> > > > > +			intel_atomic_get_new_plane_state(state, new_plane_state->bigj=
oiner_plane);
> > > > > +
> > > > > +		/* need to use uapi here, new_master_plane_state might not be =
copied to hw yet */
> > > > > +		if (new_master_plane_state->uapi.crtc)
> > > > > +			return intel_get_crtc_for_pipe(dev_priv, plane->pipe);
> > > > > +	}
> > > > > +
> > > > > +	if (old_plane_state->bigjoiner_slave) {
> > > > > +		const struct intel_plane_state *old_master_plane_state =3D
> > > > > +			intel_atomic_get_old_plane_state(state, old_plane_state->bigj=
oiner_plane);
> > > > > +
> > > > > +		if (old_master_plane_state->uapi.crtc)
> > > > > +			return intel_get_crtc_for_pipe(dev_priv, plane->pipe);
> > > > > +	}
> > > > > +
> > > > >  	return NULL;
> > > > >  }
> > > > >  =

> > > > > @@ -339,18 +365,33 @@ int intel_plane_atomic_check(struct intel_a=
tomic_state *state,
> > > > >  		intel_atomic_get_new_plane_state(state, plane);
> > > > >  	const struct intel_plane_state *old_plane_state =3D
> > > > >  		intel_atomic_get_old_plane_state(state, plane);
> > > > > +	const struct intel_plane_state *new_master_plane_state;
> > > > >  	struct intel_crtc *crtc =3D
> > > > > -		get_crtc_from_states(old_plane_state, new_plane_state);
> > > > > +		get_crtc_from_states(state, old_plane_state,
> > > > > +				     new_plane_state);
> > > > >  	const struct intel_crtc_state *old_crtc_state;
> > > > >  	struct intel_crtc_state *new_crtc_state;
> > > > >  =

> > > > > -	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_st=
ate);
> > > > > +	if (crtc)
> > > > > +		new_crtc_state =3D intel_atomic_get_new_crtc_state(state, crtc=
);
> > > > > +	else
> > > > > +		new_crtc_state =3D NULL;
> > > > > +
> > > > > +	new_master_plane_state =3D new_plane_state;
> > > > > +	if (new_plane_state->bigjoiner_slave)
> > > > > +		new_master_plane_state =3D
> > > > > +			intel_atomic_get_new_plane_state(state,
> > > > > +							 new_plane_state->bigjoiner_plane);
> > > > > +
> > > > > +	intel_plane_copy_uapi_to_hw_state(new_crtc_state,
> > > > > +					  new_plane_state,
> > > > > +					  new_master_plane_state);
> > > > > +
> > > > >  	new_plane_state->uapi.visible =3D false;
> > > > >  	if (!crtc)
> > > > >  		return 0;
> > > > >  =

> > > > >  	old_crtc_state =3D intel_atomic_get_old_crtc_state(state, crtc);
> > > > > -	new_crtc_state =3D intel_atomic_get_new_crtc_state(state, crtc);
> > > > >  =

> > > > >  	return intel_plane_atomic_check_with_state(old_crtc_state,
> > > > >  						   new_crtc_state,
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/=
drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > > > > index 59dd1fbb02ea..c2a1e7c86e6c 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > > > > @@ -23,7 +23,8 @@ unsigned int intel_plane_pixel_rate(const struc=
t intel_crtc_state *crtc_state,
> > > > >  =

> > > > >  unsigned int intel_plane_data_rate(const struct intel_crtc_state=
 *crtc_state,
> > > > >  				   const struct intel_plane_state *plane_state);
> > > > > -void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state =
*plane_state,
> > > > > +void intel_plane_copy_uapi_to_hw_state(const struct intel_crtc_s=
tate *crtc_state,
> > > > > +				       struct intel_plane_state *plane_state,
> > > > >  				       const struct intel_plane_state *from_plane_state);
> > > > >  void intel_update_plane(struct intel_plane *plane,
> > > > >  			const struct intel_crtc_state *crtc_state,
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drive=
rs/gpu/drm/i915/display/intel_display.c
> > > > > index c0715a3ea47b..579cccc1fd91 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -3718,7 +3718,7 @@ intel_find_initial_plane_obj(struct intel_c=
rtc *intel_crtc,
> > > > >  	drm_framebuffer_get(fb);
> > > > >  =

> > > > >  	plane_state->crtc =3D &intel_crtc->base;
> > > > > -	intel_plane_copy_uapi_to_hw_state(intel_state, intel_state);
> > > > > +	intel_plane_copy_uapi_to_hw_state(crtc_state, intel_state, inte=
l_state);
> > > > >  =

> > > > >  	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYF=
B);
> > > > >  =

> > > > > @@ -12801,26 +12801,180 @@ static bool check_single_encoder_cloni=
ng(struct intel_atomic_state *state,
> > > > >  	return true;
> > > > >  }
> > > > >  =

> > > > > +static int icl_unset_bigjoiner_plane_links(struct intel_atomic_s=
tate *state,
> > > > > +					   struct intel_crtc_state *new_crtc_state)
> > > > > +{
> > > > > +	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.=
crtc);
> > > > > +	struct intel_plane *plane;
> > > > > +
> > > > > +	/*
> > > > > +	 * Teardown the old bigjoiner plane mappings.
> > > > > +	 */
> > > > > +	for_each_intel_plane_on_crtc(crtc->base.dev, crtc, plane) {
> > > > > +		struct intel_plane_state *plane_state, *other_plane_state;
> > > > > +		struct intel_plane *other_plane;
> > > > > +
> > > > > +		plane_state =3D intel_atomic_get_plane_state(state, plane);
> > > > > +		if (IS_ERR(plane_state))
> > > > > +			return PTR_ERR(plane_state);
> > > > > +
> > > > > +		other_plane =3D plane_state->bigjoiner_plane;
> > > > > +		if (!other_plane)
> > > > > +			continue;
> > > > > +
> > > > > +		plane_state->bigjoiner_plane =3D NULL;
> > > > > +		plane_state->bigjoiner_slave =3D false;
> > > > > +
> > > > > +		other_plane_state =3D intel_atomic_get_plane_state(state, othe=
r_plane);
> > > > > +		if (IS_ERR(other_plane_state))
> > > > > +			return PTR_ERR(other_plane_state);
> > > > > +		other_plane_state->bigjoiner_plane =3D NULL;
> > > > > +		other_plane_state->bigjoiner_slave =3D false;
> > > > =

> > > > Why would we even need this bigjoiner stuff in the planes? AFAICS a=
bout
> > > > the only thing we should need is someting like
> > > > =

> > > > for_each_plane_on_master()
> > > > 	add_same_plane_on_slave()
> > > > =

> > > > somewhere before we do the plane->check() stuff. I guess start
> > > > of intel_atomic_check_planes() could be the right spot.
> > > >
> > > =

> > > Yes may be but honestly I leave this optimization/change to the origi=
nal
> > > author Maarten or you as a follow up
> > =

> > I don't want to see several hundred lines of totally uneccessary code
> > added. If it's buggy (which it may very well be because it's too big to
> > review properly) we are going to have to revert it anyway. If anything
> > else has changed in the same code the revertr is going to be a huge
> > pain.
> >
> =

> This entire patch just does the linking of planes and there is no
> unnecessary code.

Yes there is. Each plane should have a proper hw state so there =

should be absolutely no need for this linking stuff.

> Also since I am just a carrier of this code and not
> the original author I dont know how this can be simplified
> without breaking the functionality. =


You don't understand the code, I don't understand the code. How do
you suggest we can merge this? If there is any problem with the code
we have no choice but a full revert.

> So I am not able to address your concern here. If Maarten has the
> bandwidth he can jump in to rewrite this or you can.
> =

> Manasi
>  =

> > > =

> > > Manasi
> > >  =

> > > > > +	}
> > > > > +	return 0;
> > > > > +}
> > > > > +
> > > > > +static int icl_set_bigjoiner_plane_links(struct intel_atomic_sta=
te *state,
> > > > > +					 struct intel_crtc_state *new_crtc_state)
> > > > > +{
> > > > > +	struct intel_plane *plane;
> > > > > +	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.=
crtc);
> > > > > +	struct intel_crtc *other_crtc =3D new_crtc_state->bigjoiner_lin=
ked_crtc;
> > > > > +
> > > > > +	/*
> > > > > +         * Setup and teardown the new bigjoiner plane mappings.
> > > > > +         */
> > > > > +	for_each_intel_plane_on_crtc(crtc->base.dev, crtc, plane) {
> > > > > +		struct intel_plane_state *plane_state;
> > > > > +		struct intel_plane *other_plane =3D NULL;
> > > > > +		bool found_plane =3D false;
> > > > > +
> > > > > +		plane_state =3D intel_atomic_get_plane_state(state, plane);
> > > > > +		if (IS_ERR(plane_state))
> > > > > +			return PTR_ERR(plane_state);
> > > > > +
> > > > > +		for_each_intel_plane_on_crtc(crtc->base.dev, other_crtc, other=
_plane) {
> > > > > +			if (other_plane->id !=3D plane->id)
> > > > > +				continue;
> > > > > +
> > > > > +			plane_state->bigjoiner_plane =3D other_plane;
> > > > > +			plane_state->bigjoiner_slave =3D new_crtc_state->bigjoiner_sl=
ave;
> > > > > +
> > > > > +			plane_state =3D intel_atomic_get_plane_state(state, other_pla=
ne);
> > > > > +			if (IS_ERR(plane_state))
> > > > > +				return PTR_ERR(plane_state);
> > > > > +
> > > > > +			plane_state->bigjoiner_plane =3D plane;
> > > > > +			plane_state->bigjoiner_slave =3D !new_crtc_state->bigjoiner_s=
lave;
> > > > > +
> > > > > +			found_plane =3D true;
> > > > > +			break;
> > > > > +		}
> > > > > +
> > > > > +		if (!found_plane) {
> > > > > +			/* All pipes should have identical planes. */
> > > > > +			WARN_ON(!found_plane);
> > > > > +			return -EINVAL;
> > > > > +		}
> > > > > +	}
> > > > > +	return 0;
> > > > > +}
> > > > > +
> > > > > +static int icl_add_dependent_planes(struct intel_atomic_state *s=
tate,
> > > > > +				    struct intel_plane_state *plane_state)
> > > > > +{
> > > > > +	struct intel_plane_state *new_plane_state;
> > > > > +	struct intel_plane *plane;
> > > > > +	int ret =3D 0;
> > > > > +
> > > > > +	plane =3D plane_state->bigjoiner_plane;
> > > > > +	if (plane && !intel_atomic_get_new_plane_state(state, plane)) {
> > > > > +		new_plane_state =3D intel_atomic_get_plane_state(state, plane);
> > > > > +		if (IS_ERR(new_plane_state))
> > > > > +			return PTR_ERR(new_plane_state);
> > > > > +
> > > > > +		ret =3D 1;
> > > > > +	}
> > > > > +
> > > > > +	plane =3D plane_state->planar_linked_plane;
> > > > > +	if (plane && !intel_atomic_get_new_plane_state(state, plane)) {
> > > > > +		new_plane_state =3D intel_atomic_get_plane_state(state, plane);
> > > > > +		if (IS_ERR(new_plane_state))
> > > > > +			return PTR_ERR(new_plane_state);
> > > > > +
> > > > > +		ret =3D 1;
> > > > > +	}
> > > > > +
> > > > > +	return ret;
> > > > > +}
> > > > > +
> > > > >  static int icl_add_linked_planes(struct intel_atomic_state *stat=
e)
> > > > >  {
> > > > > -	struct intel_plane *plane, *linked;
> > > > > -	struct intel_plane_state *plane_state, *linked_plane_state;
> > > > > +	struct intel_plane *plane;
> > > > > +	struct intel_plane_state *old_plane_state, *new_plane_state;
> > > > > +	struct intel_crtc *crtc, *linked_crtc;
> > > > > +	struct intel_crtc_state *old_crtc_state, *new_crtc_state, *link=
ed_crtc_state;
> > > > > +	bool added;
> > > > >  	int i;
> > > > >  =

> > > > > -	for_each_new_intel_plane_in_state(state, plane, plane_state, i)=
 {
> > > > > -		linked =3D plane_state->planar_linked_plane;
> > > > > +	/*
> > > > > +	 * Iteratively add plane_state->linked_plane and plane_state->b=
igjoiner_plane
> > > > > +	 *
> > > > > +	 * This needs to be done repeatedly, because of is a funny inte=
raction;
> > > > > +	 * the Y-plane may be assigned differently on the other bigjoin=
er crtc,
> > > > > +	 * and we could end up with the following evil recursion, when =
only adding a
> > > > > +	 * single plane to state:
> > > > > +         *
> > > > > +	 * XRGB8888 master plane 6 adds NV12 slave Y-plane 6, which add=
s slave UV plane 0,
> > > > > +	 * which adds master UV plane 0, which adds master Y-plane 7, w=
hich adds XRGB8888
> > > > > +	 *slave plane 7.
> > > > > +	 *
> > > > > +	 * We could pull in even more because of old_plane_state vs new=
_plane_state.
> > > > > +	 *
> > > > > +	 * Max depth =3D 5 (or 7 for evil case) in this case.
> > > > > +	 * Number of passes will be less, because newly added planes sh=
ow up in the
> > > > > +	 * same iteration round when added_plane->index > plane->index.
> > > > > +	 */
> > > > > +	do {
> > > > > +		added =3D false;
> > > > >  =

> > > > > -		if (!linked)
> > > > > -			continue;
> > > > > +		for_each_oldnew_intel_plane_in_state(state, plane, old_plane_s=
tate, new_plane_state, i) {
> > > > > +			int ret, ret2;
> > > > >  =

> > > > > -		linked_plane_state =3D intel_atomic_get_plane_state(state, lin=
ked);
> > > > > -		if (IS_ERR(linked_plane_state))
> > > > > -			return PTR_ERR(linked_plane_state);
> > > > > +			ret =3D icl_add_dependent_planes(state, old_plane_state);
> > > > > +			if (ret < 0)
> > > > > +				return ret;
> > > > > +
> > > > > +			ret2 =3D icl_add_dependent_planes(state, new_plane_state);
> > > > > +			if (ret2 < 0)
> > > > > +				return ret2;
> > > > > +
> > > > > +			added |=3D ret || ret2;
> > > > > +		}
> > > > > +	} while (added);
> > > > > +
> > > > > +	/*
> > > > > +         * Make sure bigjoiner slave crtc's are also pulled in. =
This is not done automatically
> > > > > +         * when adding slave planes, because plane_state->crtc i=
s null.
> > > > > +         */
> > > > > +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state=
, new_crtc_state, i) {
> > > > > +		linked_crtc =3D old_crtc_state->bigjoiner_linked_crtc;
> > > > > +		if (linked_crtc) {
> > > > > +			linked_crtc_state =3D
> > > > > +				intel_atomic_get_crtc_state(&state->base, linked_crtc);
> > > > > +
> > > > > +			if (IS_ERR(linked_crtc_state))
> > > > > +				return PTR_ERR(linked_crtc_state);
> > > > > +		}
> > > > > +
> > > > > +		linked_crtc =3D new_crtc_state->bigjoiner_linked_crtc;
> > > > > +		if (linked_crtc && linked_crtc !=3D old_crtc_state->bigjoiner_=
linked_crtc) {
> > > > > +			linked_crtc_state =3D
> > > > > +				intel_atomic_get_crtc_state(&state->base, linked_crtc);
> > > > >  =

> > > > > -		drm_WARN_ON(state->base.dev,
> > > > > -			    linked_plane_state->planar_linked_plane !=3D plane);
> > > > > -		drm_WARN_ON(state->base.dev,
> > > > > -			    linked_plane_state->planar_slave =3D=3D plane_state->plan=
ar_slave);
> > > > > +			if (IS_ERR(linked_crtc_state))
> > > > > +				return PTR_ERR(linked_crtc_state);
> > > > > +		}
> > > > >  	}
> > > > >  =

> > > > >  	return 0;
> > > > > @@ -12860,6 +13014,7 @@ static int icl_check_nv12_planes(struct i=
ntel_crtc_state *crtc_state)
> > > > >  =

> > > > >  	for_each_new_intel_plane_in_state(state, plane, plane_state, i)=
 {
> > > > >  		struct intel_plane_state *linked_state =3D NULL;
> > > > > +		struct intel_plane_state *master_plane_state;
> > > > >  =

> > > > >  		if (plane->pipe !=3D crtc->pipe ||
> > > > >  		    !(crtc_state->nv12_planes & BIT(plane->id)))
> > > > > @@ -12903,7 +13058,14 @@ static int icl_check_nv12_planes(struct =
intel_crtc_state *crtc_state)
> > > > >  		memcpy(linked_state->color_plane, plane_state->color_plane,
> > > > >  		       sizeof(linked_state->color_plane));
> > > > >  =

> > > > > -		intel_plane_copy_uapi_to_hw_state(linked_state, plane_state);
> > > > > +		master_plane_state =3D plane_state;
> > > > > +		if (plane_state->bigjoiner_slave)
> > > > > +			master_plane_state =3D
> > > > > +				intel_atomic_get_new_plane_state(state,
> > > > > +								 plane_state->bigjoiner_plane);
> > > > > +
> > > > > +		intel_plane_copy_uapi_to_hw_state(crtc_state, linked_state,
> > > > > +						  master_plane_state);
> > > > >  		linked_state->uapi.src =3D plane_state->uapi.src;
> > > > >  		linked_state->uapi.dst =3D plane_state->uapi.dst;
> > > > >  =

> > > > > @@ -15253,6 +15415,7 @@ static int intel_atomic_check_bigjoiner(s=
truct intel_atomic_state *state,
> > > > >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > > >  	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
> > > > >  	struct intel_crtc *slave, *master;
> > > > > +	int ret;
> > > > >  =

> > > > >  	/* slave being enabled, is master is still claiming this crtc? =
*/
> > > > >  	if (old_crtc_state->bigjoiner_slave) {
> > > > > @@ -15263,6 +15426,12 @@ static int intel_atomic_check_bigjoiner(=
struct intel_atomic_state *state,
> > > > >  			goto claimed;
> > > > >  	}
> > > > >  =

> > > > > +	if (old_crtc_state->bigjoiner) {
> > > > > +		ret =3D icl_unset_bigjoiner_plane_links(state, new_crtc_state);
> > > > > +		if (ret)
> > > > > +			return ret;
> > > > > +	}
> > > > > +
> > > > >  	if (!new_crtc_state->bigjoiner)
> > > > >  		return 0;
> > > > >  =

> > > > > @@ -15287,7 +15456,11 @@ static int intel_atomic_check_bigjoiner(=
struct intel_atomic_state *state,
> > > > >  	DRM_DEBUG_KMS("[CRTC:%d:%s] Used as slave for big joiner\n",
> > > > >  		      slave->base.base.id, slave->base.name);
> > > > >  =

> > > > > -	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_sta=
te);
> > > > > +	ret =3D copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_st=
ate);
> > > > > +	if (ret)
> > > > > +		return ret;
> > > > > +
> > > > > +	return icl_set_bigjoiner_plane_links(state, new_crtc_state);
> > > > >  =

> > > > >  claimed:
> > > > >  	DRM_DEBUG_KMS("[CRTC:%d:%s] Slave is enabled as normal CRTC, bu=
t "
> > > > > @@ -16902,7 +17075,7 @@ intel_legacy_cursor_update(struct drm_pla=
ne *_plane,
> > > > >  	new_plane_state->uapi.crtc_w =3D crtc_w;
> > > > >  	new_plane_state->uapi.crtc_h =3D crtc_h;
> > > > >  =

> > > > > -	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_st=
ate);
> > > > > +	intel_plane_copy_uapi_to_hw_state(new_crtc_state, new_plane_sta=
te, new_plane_state);
> > > > >  =

> > > > >  	ret =3D intel_plane_atomic_check_with_state(crtc_state, new_crt=
c_state,
> > > > >  						  old_plane_state, new_plane_state);
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drive=
rs/gpu/drm/i915/display/intel_display.h
> > > > > index 4f8dee9dfb4d..73f495bba141 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > > > > @@ -468,12 +468,20 @@ enum phy_fia {
> > > > >  		for_each_if(crtc)
> > > > >  =

> > > > >  #define intel_atomic_crtc_state_for_each_plane_state( \
> > > > > -		  plane, plane_state, \
> > > > > -		  crtc_state) \
> > > > > -	for_each_intel_plane_mask(((crtc_state)->uapi.state->dev), (pla=
ne), \
> > > > > -				((crtc_state)->uapi.plane_mask)) \
> > > > > -		for_each_if ((plane_state =3D \
> > > > > -			      to_intel_plane_state(__drm_atomic_get_current_plane_sta=
te((crtc_state)->uapi.state, &plane->base))))
> > > > > +	plane, iter, plane_state, \
> > > > > +	crtc_state) \
> > > > > +	for_each_intel_plane_mask(((crtc_state)->uapi.state->dev), (ite=
r), \
> > > > > +				  (((crtc_state)->bigjoiner_slave ?	\
> > > > > +				    intel_atomic_get_new_crtc_state(	\
> > > > > +					    to_intel_atomic_state((crtc_state)->uapi.state), \
> > > > > +					    (crtc_state)->bigjoiner_linked_crtc) : \
> > > > > +				    (crtc_state))->uapi.plane_mask))	\
> > > > > +	for_each_if ((((plane_state) =3D \
> > > > > +		       to_intel_plane_state(__drm_atomic_get_current_plane_sta=
te((crtc_state)->uapi.state, &iter->base))), \
> > > > > +		      ((plane) =3D (plane_state)->bigjoiner_slave ? (plane_sta=
te)->bigjoiner_plane : (iter)), \
> > > > > +		      ((plane_state) =3D (plane_state)->bigjoiner_slave ? \
> > > > > +		       to_intel_plane_state(__drm_atomic_get_current_plane_sta=
te((crtc_state)->uapi.state, &plane->base)) : \
> > > > > +		       (plane_state))))
> > > > >  =

> > > > >  #define for_each_new_intel_connector_in_state(__state, connector=
, new_connector_state, __i) \
> > > > >  	for ((__i) =3D 0; \
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b=
/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > index d82ba1b9d8ef..69e6b0dc03a2 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > @@ -593,6 +593,17 @@ struct intel_plane_state {
> > > > >  	 */
> > > > >  	struct intel_plane *planar_linked_plane;
> > > > >  =

> > > > > +	/*
> > > > > +	 * bigjoiner_plane:
> > > > > +	 *
> > > > > +	 * When 2 pipes are joined in a bigjoiner configuration,
> > > > > +	 * points to the same plane on the other pipe.
> > > > > +	 *
> > > > > +	 * bigjoiner_slave is set on the slave pipe.
> > > > > +	 */
> > > > > +	struct intel_plane *bigjoiner_plane;
> > > > > +	u32 bigjoiner_slave;
> > > > > +
> > > > >  	/*
> > > > >  	 * planar_slave:
> > > > >  	 * If set don't update use the linked plane's state for updating
> > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i9=
15/intel_pm.c
> > > > > index 18e52763dfec..8400e53f3f94 100644
> > > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > > @@ -3144,7 +3144,7 @@ static int ilk_compute_pipe_wm(struct intel=
_crtc_state *crtc_state)
> > > > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.=
crtc->dev);
> > > > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
> > > > >  	struct intel_pipe_wm *pipe_wm;
> > > > > -	struct intel_plane *plane;
> > > > > +	struct intel_plane *plane, *iter;
> > > > >  	const struct intel_plane_state *plane_state;
> > > > >  	const struct intel_plane_state *pristate =3D NULL;
> > > > >  	const struct intel_plane_state *sprstate =3D NULL;
> > > > > @@ -3154,7 +3154,7 @@ static int ilk_compute_pipe_wm(struct intel=
_crtc_state *crtc_state)
> > > > >  =

> > > > >  	pipe_wm =3D &crtc_state->wm.ilk.optimal;
> > > > >  =

> > > > > -	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state=
, crtc_state) {
> > > > > +	intel_atomic_crtc_state_for_each_plane_state(plane, iter, plane=
_state, crtc_state) {
> > > > >  		if (plane->base.type =3D=3D DRM_PLANE_TYPE_PRIMARY)
> > > > >  			pristate =3D plane_state;
> > > > >  		else if (plane->base.type =3D=3D DRM_PLANE_TYPE_OVERLAY)
> > > > > @@ -3873,7 +3873,7 @@ static bool skl_crtc_can_enable_sagv(const =
struct intel_crtc_state *crtc_state)
> > > > >  {
> > > > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
> > > > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > > > -	struct intel_plane *plane;
> > > > > +	struct intel_plane *plane, *iter;
> > > > >  	const struct intel_plane_state *plane_state;
> > > > >  	int level, latency;
> > > > >  =

> > > > > @@ -3886,7 +3886,7 @@ static bool skl_crtc_can_enable_sagv(const =
struct intel_crtc_state *crtc_state)
> > > > >  	if (crtc_state->hw.pipe_mode.flags & DRM_MODE_FLAG_INTERLACE)
> > > > >  		return false;
> > > > >  =

> > > > > -	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state=
, crtc_state) {
> > > > > +	intel_atomic_crtc_state_for_each_plane_state(plane, iter, plane=
_state, crtc_state) {
> > > > >  		const struct skl_plane_wm *wm =3D
> > > > >  			&crtc_state->wm.skl.optimal.planes[plane->id];
> > > > >  =

> > > > > @@ -4708,12 +4708,12 @@ skl_get_total_relative_data_rate(struct i=
ntel_crtc_state *crtc_state,
> > > > >  				 u64 *plane_data_rate,
> > > > >  				 u64 *uv_plane_data_rate)
> > > > >  {
> > > > > -	struct intel_plane *plane;
> > > > > +	struct intel_plane *plane, *iter;
> > > > >  	const struct intel_plane_state *plane_state;
> > > > >  	u64 total_data_rate =3D 0;
> > > > >  =

> > > > >  	/* Calculate and cache data rate for each plane */
> > > > > -	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state=
, crtc_state) {
> > > > > +	intel_atomic_crtc_state_for_each_plane_state(plane, iter, plane=
_state, crtc_state) {
> > > > >  		enum plane_id plane_id =3D plane->id;
> > > > >  		u64 rate;
> > > > >  =

> > > > > @@ -4735,12 +4735,12 @@ static u64
> > > > >  icl_get_total_relative_data_rate(struct intel_crtc_state *crtc_s=
tate,
> > > > >  				 u64 *plane_data_rate)
> > > > >  {
> > > > > -	struct intel_plane *plane;
> > > > > +	struct intel_plane *plane, *iter;
> > > > >  	const struct intel_plane_state *plane_state;
> > > > >  	u64 total_data_rate =3D 0;
> > > > >  =

> > > > >  	/* Calculate and cache data rate for each plane */
> > > > > -	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state=
, crtc_state) {
> > > > > +	intel_atomic_crtc_state_for_each_plane_state(plane, iter, plane=
_state, crtc_state) {
> > > > >  		enum plane_id plane_id =3D plane->id;
> > > > >  		u64 rate;
> > > > >  =

> > > > > @@ -5587,7 +5587,7 @@ static int skl_build_pipe_wm(struct intel_c=
rtc_state *crtc_state)
> > > > >  {
> > > > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.=
crtc->dev);
> > > > >  	struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> > > > > -	struct intel_plane *plane;
> > > > > +	struct intel_plane *plane, *iter;
> > > > >  	const struct intel_plane_state *plane_state;
> > > > >  	int ret;
> > > > >  =

> > > > > @@ -5597,7 +5597,7 @@ static int skl_build_pipe_wm(struct intel_c=
rtc_state *crtc_state)
> > > > >  	 */
> > > > >  	memset(pipe_wm->planes, 0, sizeof(pipe_wm->planes));
> > > > >  =

> > > > > -	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state,
> > > > > +	intel_atomic_crtc_state_for_each_plane_state(plane, iter, plane=
_state,
> > > > >  						     crtc_state) {
> > > > >  =

> > > > >  		if (INTEL_GEN(dev_priv) >=3D 11)
> > > > > -- =

> > > > > 2.19.1
> > > > > =

> > > > > _______________________________________________
> > > > > Intel-gfx mailing list
> > > > > Intel-gfx@lists.freedesktop.org
> > > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
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
