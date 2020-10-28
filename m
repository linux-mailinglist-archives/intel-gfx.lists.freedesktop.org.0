Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A50E29D63B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 23:13:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9A486E7D0;
	Wed, 28 Oct 2020 22:13:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB2E6E7D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 22:13:05 +0000 (UTC)
IronPort-SDR: 87QNBlk4HhskFH/IHFfwnqUMFn2W0NwDo0AMfKKF6DOC8rS/ihqfHIkSKUQzCClfSqP+EIqi0N
 UrfxQRgp4kEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="164847851"
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="164847851"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 15:13:04 -0700
IronPort-SDR: GIq3pCQ1RhDVovzRJ6CIsXXhLD7QEprhxRRcCQrMDiEjNp+blHh4xyr/6rAhQtiibAPyIC5UQn
 IgnSAFU3IQ9Q==
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="318750396"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 15:13:04 -0700
Date: Wed, 28 Oct 2020 15:15:00 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201028221500.GA5744@labuser-Z97X-UD5H>
References: <20201022054223.25071-1-manasi.d.navare@intel.com>
 <20201022054223.25071-11-manasi.d.navare@intel.com>
 <20201026201854.GL6112@intel.com>
 <20201026224148.GF25941@labuser-Z97X-UD5H>
 <20201027134230.GN6112@intel.com>
 <20201027181910.GB3950@labuser-Z97X-UD5H>
 <20201027191150.GP6112@intel.com>
 <dec38bb5-c6a2-18dc-684c-92564e630451@linux.intel.com>
 <20201028130437.GW6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201028130437.GW6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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

On Wed, Oct 28, 2020 at 03:04:37PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Oct 28, 2020 at 01:26:27PM +0100, Maarten Lankhorst wrote:
> > Op 27-10-2020 om 20:11 schreef Ville Syrj=E4l=E4:
> > > On Tue, Oct 27, 2020 at 11:19:16AM -0700, Navare, Manasi wrote:
> > >> On Tue, Oct 27, 2020 at 03:42:30PM +0200, Ville Syrj=E4l=E4 wrote:
> > >>> On Mon, Oct 26, 2020 at 03:41:48PM -0700, Navare, Manasi wrote:
> > >>>> On Mon, Oct 26, 2020 at 10:18:54PM +0200, Ville Syrj=E4l=E4 wrote:
> > >>>>> On Wed, Oct 21, 2020 at 10:42:21PM -0700, Manasi Navare wrote:
> > >>>>>> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > >>>>>>
> > >>>>>>  Make sure that when a plane is set in a bigjoiner mode, we will=
 add
> > >>>>>>  their counterpart to the atomic state as well. This will allow =
us to
> > >>>>>>  make sure all state is available when planes are checked.
> > >>>>>>
> > >>>>>> Because of the funny interactions with bigjoiner and planar YUV
> > >>>>>> formats, we may end up adding a lot of planes, so we have to keep
> > >>>>>> iterating until we no longer add any planes.
> > >>>>>>
> > >>>>>> Also fix the atomic intel plane iterator, so things watermarks s=
tart
> > >>>>>> working automagically.
> > >>>>>>
> > >>>>>> v6:
> > >>>>>> * Fix from_plane_state assignments (Manasi)
> > >>>>>> v5:
> > >>>>>> * Rebase after adding sagv support (Manasi)
> > >>>>>> v4:
> > >>>>>> * Manual rebase (Manasi)
> > >>>>>> Changes since v1:
> > >>>>>> - Rebase on top of plane_state split, cleaning up the code a lot.
> > >>>>>> - Make intel_atomic_crtc_state_for_each_plane_state() bigjoiner =
capable.
> > >>>>>> - Add iter macro to intel_atomic_crtc_state_for_each_plane_state=
() to
> > >>>>>>   keep iteration working.
> > >>>>>> Changes since v2:
> > >>>>>> - Add icl_(un)set_bigjoiner_plane_links, to make it more clear w=
here
> > >>>>>>   links are made and broken.
> > >>>>>>
> > >>>>>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.=
com>
> > >>>>>> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > >>>>>> ---
> > >>>>>>  .../gpu/drm/i915/display/intel_atomic_plane.c |  53 ++++-
> > >>>>>>  .../gpu/drm/i915/display/intel_atomic_plane.h |   3 +-
> > >>>>>>  drivers/gpu/drm/i915/display/intel_display.c  | 207 +++++++++++=
+++++--
> > >>>>>>  drivers/gpu/drm/i915/display/intel_display.h  |  20 +-
> > >>>>>>  .../drm/i915/display/intel_display_types.h    |  11 +
> > >>>>>>  drivers/gpu/drm/i915/intel_pm.c               |  20 +-
> > >>>>>>  6 files changed, 274 insertions(+), 40 deletions(-)
> > >>>>>>
> > >>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b=
/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > >>>>>> index 3334ff253600..5df928f8f322 100644
> > >>>>>> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > >>>>>> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > >>>>>> @@ -246,12 +246,17 @@ static void intel_plane_clear_hw_state(str=
uct intel_plane_state *plane_state)
> > >>>>>>  	memset(&plane_state->hw, 0, sizeof(plane_state->hw));
> > >>>>>>  }
> > >>>>>>  =

> > >>>>>> -void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state=
 *plane_state,
> > >>>>>> +void intel_plane_copy_uapi_to_hw_state(const struct intel_crtc_=
state *crtc_state,
> > >>>>>> +				       struct intel_plane_state *plane_state,
> > >>>>>>  				       const struct intel_plane_state *from_plane_state)
> > >>>>>>  {
> > >>>>>>  	intel_plane_clear_hw_state(plane_state);
> > >>>>>>  =

> > >>>>>> -	plane_state->hw.crtc =3D from_plane_state->uapi.crtc;
> > >>>>>> +	if (from_plane_state->uapi.crtc)
> > >>>>>> +		plane_state->hw.crtc =3D crtc_state->uapi.crtc;
> > >>>>>> +	else
> > >>>>>> +		plane_state->hw.crtc =3D NULL;
> > >>>>>> +
> > >>>>>>  	plane_state->hw.fb =3D from_plane_state->uapi.fb;
> > >>>>>>  	if (plane_state->hw.fb)
> > >>>>>>  		drm_framebuffer_get(plane_state->hw.fb);
> > >>>>>> @@ -320,15 +325,36 @@ int intel_plane_atomic_check_with_state(co=
nst struct intel_crtc_state *old_crtc_
> > >>>>>>  }
> > >>>>>>  =

> > >>>>>>  static struct intel_crtc *
> > >>>>>> -get_crtc_from_states(const struct intel_plane_state *old_plane_=
state,
> > >>>>>> +get_crtc_from_states(struct intel_atomic_state *state,
> > >>>>>> +		     const struct intel_plane_state *old_plane_state,
> > >>>>>>  		     const struct intel_plane_state *new_plane_state)
> > >>>>>>  {
> > >>>>>> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > >>>>>> +	struct intel_plane *plane =3D to_intel_plane(new_plane_state->=
uapi.plane);
> > >>>>>> +
> > >>>>>>  	if (new_plane_state->uapi.crtc)
> > >>>>>>  		return to_intel_crtc(new_plane_state->uapi.crtc);
> > >>>>>>  =

> > >>>>>>  	if (old_plane_state->uapi.crtc)
> > >>>>>>  		return to_intel_crtc(old_plane_state->uapi.crtc);
> > >>>>>>  =

> > >>>>>> +	if (new_plane_state->bigjoiner_slave) {
> > >>>>>> +		const struct intel_plane_state *new_master_plane_state =3D
> > >>>>>> +			intel_atomic_get_new_plane_state(state, new_plane_state->big=
joiner_plane);
> > >>>>>> +
> > >>>>>> +		/* need to use uapi here, new_master_plane_state might not be=
 copied to hw yet */
> > >>>>>> +		if (new_master_plane_state->uapi.crtc)
> > >>>>>> +			return intel_get_crtc_for_pipe(dev_priv, plane->pipe);
> > >>>>>> +	}
> > >>>>>> +
> > >>>>>> +	if (old_plane_state->bigjoiner_slave) {
> > >>>>>> +		const struct intel_plane_state *old_master_plane_state =3D
> > >>>>>> +			intel_atomic_get_old_plane_state(state, old_plane_state->big=
joiner_plane);
> > >>>>>> +
> > >>>>>> +		if (old_master_plane_state->uapi.crtc)
> > >>>>>> +			return intel_get_crtc_for_pipe(dev_priv, plane->pipe);
> > >>>>>> +	}
> > >>>>>> +
> > >>>>>>  	return NULL;
> > >>>>>>  }
> > >>>>>>  =

> > >>>>>> @@ -339,18 +365,33 @@ int intel_plane_atomic_check(struct intel_=
atomic_state *state,
> > >>>>>>  		intel_atomic_get_new_plane_state(state, plane);
> > >>>>>>  	const struct intel_plane_state *old_plane_state =3D
> > >>>>>>  		intel_atomic_get_old_plane_state(state, plane);
> > >>>>>> +	const struct intel_plane_state *new_master_plane_state;
> > >>>>>>  	struct intel_crtc *crtc =3D
> > >>>>>> -		get_crtc_from_states(old_plane_state, new_plane_state);
> > >>>>>> +		get_crtc_from_states(state, old_plane_state,
> > >>>>>> +				     new_plane_state);
> > >>>>>>  	const struct intel_crtc_state *old_crtc_state;
> > >>>>>>  	struct intel_crtc_state *new_crtc_state;
> > >>>>>>  =

> > >>>>>> -	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_s=
tate);
> > >>>>>> +	if (crtc)
> > >>>>>> +		new_crtc_state =3D intel_atomic_get_new_crtc_state(state, crt=
c);
> > >>>>>> +	else
> > >>>>>> +		new_crtc_state =3D NULL;
> > >>>>>> +
> > >>>>>> +	new_master_plane_state =3D new_plane_state;
> > >>>>>> +	if (new_plane_state->bigjoiner_slave)
> > >>>>>> +		new_master_plane_state =3D
> > >>>>>> +			intel_atomic_get_new_plane_state(state,
> > >>>>>> +							 new_plane_state->bigjoiner_plane);
> > >>>>>> +
> > >>>>>> +	intel_plane_copy_uapi_to_hw_state(new_crtc_state,
> > >>>>>> +					  new_plane_state,
> > >>>>>> +					  new_master_plane_state);
> > >>>>>> +
> > >>>>>>  	new_plane_state->uapi.visible =3D false;
> > >>>>>>  	if (!crtc)
> > >>>>>>  		return 0;
> > >>>>>>  =

> > >>>>>>  	old_crtc_state =3D intel_atomic_get_old_crtc_state(state, crtc=
);
> > >>>>>> -	new_crtc_state =3D intel_atomic_get_new_crtc_state(state, crtc=
);
> > >>>>>>  =

> > >>>>>>  	return intel_plane_atomic_check_with_state(old_crtc_state,
> > >>>>>>  						   new_crtc_state,
> > >>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b=
/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > >>>>>> index 59dd1fbb02ea..c2a1e7c86e6c 100644
> > >>>>>> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > >>>>>> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > >>>>>> @@ -23,7 +23,8 @@ unsigned int intel_plane_pixel_rate(const stru=
ct intel_crtc_state *crtc_state,
> > >>>>>>  =

> > >>>>>>  unsigned int intel_plane_data_rate(const struct intel_crtc_stat=
e *crtc_state,
> > >>>>>>  				   const struct intel_plane_state *plane_state);
> > >>>>>> -void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state=
 *plane_state,
> > >>>>>> +void intel_plane_copy_uapi_to_hw_state(const struct intel_crtc_=
state *crtc_state,
> > >>>>>> +				       struct intel_plane_state *plane_state,
> > >>>>>>  				       const struct intel_plane_state *from_plane_state);
> > >>>>>>  void intel_update_plane(struct intel_plane *plane,
> > >>>>>>  			const struct intel_crtc_state *crtc_state,
> > >>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/driv=
ers/gpu/drm/i915/display/intel_display.c
> > >>>>>> index c0715a3ea47b..579cccc1fd91 100644
> > >>>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
> > >>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > >>>>>> @@ -3718,7 +3718,7 @@ intel_find_initial_plane_obj(struct intel_=
crtc *intel_crtc,
> > >>>>>>  	drm_framebuffer_get(fb);
> > >>>>>>  =

> > >>>>>>  	plane_state->crtc =3D &intel_crtc->base;
> > >>>>>> -	intel_plane_copy_uapi_to_hw_state(intel_state, intel_state);
> > >>>>>> +	intel_plane_copy_uapi_to_hw_state(crtc_state, intel_state, int=
el_state);
> > >>>>>>  =

> > >>>>>>  	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTY=
FB);
> > >>>>>>  =

> > >>>>>> @@ -12801,26 +12801,180 @@ static bool check_single_encoder_clon=
ing(struct intel_atomic_state *state,
> > >>>>>>  	return true;
> > >>>>>>  }
> > >>>>>>  =

> > >>>>>> +static int icl_unset_bigjoiner_plane_links(struct intel_atomic_=
state *state,
> > >>>>>> +					   struct intel_crtc_state *new_crtc_state)
> > >>>>>> +{
> > >>>>>> +	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi=
.crtc);
> > >>>>>> +	struct intel_plane *plane;
> > >>>>>> +
> > >>>>>> +	/*
> > >>>>>> +	 * Teardown the old bigjoiner plane mappings.
> > >>>>>> +	 */
> > >>>>>> +	for_each_intel_plane_on_crtc(crtc->base.dev, crtc, plane) {
> > >>>>>> +		struct intel_plane_state *plane_state, *other_plane_state;
> > >>>>>> +		struct intel_plane *other_plane;
> > >>>>>> +
> > >>>>>> +		plane_state =3D intel_atomic_get_plane_state(state, plane);
> > >>>>>> +		if (IS_ERR(plane_state))
> > >>>>>> +			return PTR_ERR(plane_state);
> > >>>>>> +
> > >>>>>> +		other_plane =3D plane_state->bigjoiner_plane;
> > >>>>>> +		if (!other_plane)
> > >>>>>> +			continue;
> > >>>>>> +
> > >>>>>> +		plane_state->bigjoiner_plane =3D NULL;
> > >>>>>> +		plane_state->bigjoiner_slave =3D false;
> > >>>>>> +
> > >>>>>> +		other_plane_state =3D intel_atomic_get_plane_state(state, oth=
er_plane);
> > >>>>>> +		if (IS_ERR(other_plane_state))
> > >>>>>> +			return PTR_ERR(other_plane_state);
> > >>>>>> +		other_plane_state->bigjoiner_plane =3D NULL;
> > >>>>>> +		other_plane_state->bigjoiner_slave =3D false;
> > >>>>> Why would we even need this bigjoiner stuff in the planes? AFAICS=
 about
> > >>>>> the only thing we should need is someting like
> > >>>>>
> > >>>>> for_each_plane_on_master()
> > >>>>> 	add_same_plane_on_slave()
> > >>>>>
> > >>>>> somewhere before we do the plane->check() stuff. I guess start
> > >>>>> of intel_atomic_check_planes() could be the right spot.
> > >>>>>
> > >>>> Yes may be but honestly I leave this optimization/change to the or=
iginal
> > >>>> author Maarten or you as a follow up
> > >>> I don't want to see several hundred lines of totally uneccessary co=
de
> > >>> added. If it's buggy (which it may very well be because it's too bi=
g to
> > >>> review properly) we are going to have to revert it anyway. If anyth=
ing
> > >>> else has changed in the same code the revertr is going to be a huge
> > >>> pain.
> > >>>> >> This entire patch just does the linking of planes and there is =
no
> > >> unnecessary code.
> > > Yes there is. Each plane should have a proper hw state so there =

> > > should be absolutely no need for this linking stuff.
> > >
> > >> Also since I am just a carrier of this code and not
> > >> the original author I dont know how this can be simplified
> > >> without breaking the functionality. =

> > > You don't understand the code, I don't understand the code. How do
> > > you suggest we can merge this? If there is any problem with the code
> > > we have no choice but a full revert.
> > =

> > Hey,
> > =

> > There's good reason to link the planes. The reason is similar to linkin=
g Y and CbCr planes.
> =

> There we actually have to link them in some fashion because that's what
> the hw requires. But with the uapi vs. hw state split we should be able
> to make a proper state copy there too, and thus we could get rid of the
> magic "let's use the other plane's state during commit" stuff.
> =

> > You're completely correct that hardware programming doesn't need the li=
nking, and planes are
> > in theory standalone.
> > =

> > But there's also atomic. The lifetime of plane_state on the bigjoiner s=
lave plane must be
> > linked to the lifetime of the master plane. Otherwise if you do a commi=
t on the master plane,
> > you may get a use after free on slave. To prevent this I just linked th=
em together. :)
> =

> There should be nothing in the slave's plane state that references the
> master's state. Whatever pointers we have there (fb/gamma/etc.) should
> be refcounted. So can't immediately think where any uaf would come from. =

> =

> That said. Looks like watermarks are a bit of a mess again. Time to
> finally get rid of that intel_atomic_crtc_state_for_each_plane_state()
> I think...
> =


So can we move forward with the plane linking as of now or would @Maarten h=
ave
some BW to change this?

Manasi

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
