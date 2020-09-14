Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC77026958F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 21:20:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E19B96E550;
	Mon, 14 Sep 2020 19:20:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C991B6E550
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 19:20:48 +0000 (UTC)
IronPort-SDR: yF+Y6YWp49UKjJttsfX2Q4CPi0vJltYb3Zt2x3BdgnOB2kLlgkacPRWFE1onazER0FeqbRFryn
 H9/JHZblM8pg==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="158433514"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="158433514"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 12:20:48 -0700
IronPort-SDR: DxH9O9v0FhMAWk+7pHtn8dF+Mjqg311j0UdQV7qCNncqBwd3GeSR2CzZH/hlz5lYBlYr3Duen8
 aI7J0VAWMDcA==
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="451006670"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 12:20:47 -0700
Date: Mon, 14 Sep 2020 12:21:26 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200914192118.GA29202@labuser-Z97X-UD5H>
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
 <20200715224222.7557-10-manasi.d.navare@intel.com>
 <20200903192335.GB6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200903192335.GB6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v6 10/11] drm/i915: Add
 intel_update_bigjoiner handling.
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

On Thu, Sep 03, 2020 at 10:23:35PM +0300, Ville Syrj=E4l=E4 wrote:
> On Wed, Jul 15, 2020 at 03:42:21PM -0700, Manasi Navare wrote:
> > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > =

> > Enabling is done in a special sequence and so should plane updates
> > be. Ideally the end user never notices the second pipe is used,
> > so use the vblank evasion to cover both pipes.
> > =

> > This way ideally everything will be tear free, and updates are
> > really atomic as userspace expects it.
> > =

> > ****This needs to be checked if it still works since lot of refactoring
> > in skl_commit_modeset_enables
> > =

> > v2:
> > * Manual Rebase (Manasi)
> > * Refactoring on intel_update_crtc and enable_crtc and removing
> > special trans_port_sync_update (Manasi)
> > =

> > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 120 +++++++++++++++++--
> >  drivers/gpu/drm/i915/display/intel_sprite.c  |  25 +++-
> >  drivers/gpu/drm/i915/display/intel_sprite.h  |   3 +-
> >  3 files changed, 129 insertions(+), 19 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index a1011414da6d..00b26863ffc6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -15656,7 +15656,7 @@ static void intel_update_crtc(struct intel_atom=
ic_state *state,
> >  	else
> >  		i9xx_update_planes_on_crtc(state, crtc);
> >  =

> > -	intel_pipe_update_end(new_crtc_state);
> > +	intel_pipe_update_end(new_crtc_state, NULL);
> >  =

> >  	/*
> >  	 * We usually enable FIFO underrun interrupts as part of the
> > @@ -15754,6 +15754,52 @@ static void intel_commit_modeset_disables(stru=
ct intel_atomic_state *state)
> >  	}
> >  }
> >  =

> > +static void intel_update_bigjoiner(struct intel_crtc *crtc,
> > +				   struct intel_atomic_state *state,
> > +				   struct intel_crtc_state *old_crtc_state,
> > +				   struct intel_crtc_state *new_crtc_state)
> > +{
> > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > +	bool modeset =3D needs_modeset(new_crtc_state);
> > +	struct intel_crtc *slave =3D new_crtc_state->bigjoiner_linked_crtc;
> > +	struct intel_crtc_state *new_slave_crtc_state =3D
> > +		intel_atomic_get_new_crtc_state(state, slave);
> > +
> > +	if (modeset) {
> > +		/* Enable slave first */
> > +		intel_crtc_update_active_timings(new_slave_crtc_state);
> > +		dev_priv->display.crtc_enable(state, slave);
> > +
> > +		/* Then master */
> > +		intel_crtc_update_active_timings(new_crtc_state);
> > +		dev_priv->display.crtc_enable(state, crtc);
> > +
> > +		/* vblanks work again, re-enable pipe CRC. */
> > +		intel_crtc_enable_pipe_crc(crtc);
> > +
> > +	} else {
> > +		intel_pre_plane_update(state, crtc);
> > +		intel_pre_plane_update(state, slave);
> > +
> > +		if (new_crtc_state->update_pipe)
> > +			intel_encoders_update_pipe(state, crtc);
> > +	}
> > +
> > +	/*
> > +	 * Perform vblank evasion around commit operation, and make sure to
> > +	 * commit both planes simultaneously for best results.
> > +	 */
> > +	intel_pipe_update_start(new_crtc_state);
> > +
> > +	commit_pipe_config(state, crtc);
> > +	commit_pipe_config(state, slave);
> > +
> > +	skl_update_planes_on_crtc(state, crtc);
> > +	skl_update_planes_on_crtc(state, slave);
> > +
> > +	intel_pipe_update_end(new_crtc_state, new_slave_crtc_state);
> > +}
> =

> I think this should ideally all go away and just the normal logic
> in commit_modeset_enables() should deal with it. Just like it does
> for port sync/mst pipe dependencies.
>

Yes I think so too. Except for the intel_pipe_update_end where
now we send the new_slave_crtc_state() so thats still something I need to f=
igure
how it will work in normal code without special bigjoiner handling.

I think the 2p2p transcoder ports sync code initially had a special trans p=
ort sync handling
function and thats why this was written this way but with the new code we j=
ust use
the regular modeset_enables function with no special handling

Manasi
 =

> > +
> >  static void intel_commit_modeset_enables(struct intel_atomic_state *st=
ate)
> >  {
> >  	struct intel_crtc_state *new_crtc_state;
> > @@ -15772,15 +15818,22 @@ static void intel_commit_modeset_enables(stru=
ct intel_atomic_state *state)
> >  static void skl_commit_modeset_enables(struct intel_atomic_state *stat=
e)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > -	struct intel_crtc *crtc;
> > +	struct intel_crtc *crtc, *slave;
> >  	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> >  	struct skl_ddb_entry entries[I915_MAX_PIPES] =3D {};
> > +	struct skl_ddb_entry new_entries[I915_MAX_PIPES] =3D {};
> >  	u8 update_pipes =3D 0, modeset_pipes =3D 0;
> > +	const struct intel_crtc_state *slave_crtc_state;
> >  	int i;
> >  =

> >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_=
crtc_state, i) {
> >  		enum pipe pipe =3D crtc->pipe;
> >  =

> > +		if (new_crtc_state->bigjoiner_slave) {
> > +			/* We're updated from master */
> > +			continue;
> > +		}
> > +
> >  		if (!new_crtc_state->hw.active)
> >  			continue;
> >  =

> > @@ -15791,6 +15844,34 @@ static void skl_commit_modeset_enables(struct =
intel_atomic_state *state)
> >  		} else {
> >  			modeset_pipes |=3D BIT(pipe);
> >  		}
> > +
> > +		if (new_crtc_state->bigjoiner) {
> > +			slave =3D new_crtc_state->bigjoiner_linked_crtc;
> > +			slave_crtc_state =3D
> > +				intel_atomic_get_new_crtc_state(state,
> > +								slave);
> > +
> > +			/* put both entries in */
> > +			new_entries[i].start =3D new_crtc_state->wm.skl.ddb.start;
> > +			new_entries[i].end =3D slave_crtc_state->wm.skl.ddb.end;
> > +		} else {
> > +			new_entries[i] =3D new_crtc_state->wm.skl.ddb;
> > +		}
> > +
> > +		/* ignore allocations for crtc's that have been turned off during mo=
deset. */
> > +		if (needs_modeset(new_crtc_state))
> > +			continue;
> > +
> > +		if (old_crtc_state->bigjoiner) {
> > +			slave =3D old_crtc_state->bigjoiner_linked_crtc;
> > +			slave_crtc_state =3D
> > +				intel_atomic_get_old_crtc_state(state, slave);
> > +
> > +			entries[i].start =3D old_crtc_state->wm.skl.ddb.start;
> > +			entries[i].end =3D slave_crtc_state->wm.skl.ddb.end;
> > +		} else {
> > +			entries[i] =3D old_crtc_state->wm.skl.ddb;
> > +		}
> =

> Why is this here? Can't see why the current code wouldn't work just fine
> for bigjoiner too.
> =

> >  	}
> >  =

> >  	/*
> > @@ -15806,28 +15887,34 @@ static void skl_commit_modeset_enables(struct=
 intel_atomic_state *state)
> >  		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> >  						    new_crtc_state, i) {
> >  			enum pipe pipe =3D crtc->pipe;
> > +			bool ddb_changed;
> >  =

> >  			if ((update_pipes & BIT(pipe)) =3D=3D 0)
> >  				continue;
> >  =

> > -			if (skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,
> > +			if (skl_ddb_allocation_overlaps(&new_entries[pipe],
> >  							entries, I915_MAX_PIPES, pipe))
> >  				continue;
> >  =

> > -			entries[pipe] =3D new_crtc_state->wm.skl.ddb;
> > +			ddb_changed =3D !skl_ddb_entry_equal(&new_entries[pipe], &entries[p=
ipe]);
> > +			entries[pipe] =3D new_entries[pipe];
> >  			update_pipes &=3D ~BIT(pipe);
> >  =

> > -			intel_update_crtc(state, crtc);
> > -
> >  			/*
> >  			 * If this is an already active pipe, it's DDB changed,
> >  			 * and this isn't the last pipe that needs updating
> >  			 * then we need to wait for a vblank to pass for the
> >  			 * new ddb allocation to take effect.
> >  			 */
> > -			if (!skl_ddb_entry_equal(&new_crtc_state->wm.skl.ddb,
> > -						 &old_crtc_state->wm.skl.ddb) &&
> > -			    (update_pipes | modeset_pipes))
> > +			if (new_crtc_state->bigjoiner) {
> > +				intel_update_bigjoiner(crtc, state,
> > +						       old_crtc_state,
> > +						       new_crtc_state);
> > +			} else {
> > +				intel_update_crtc(state, crtc);
> > +			}
> > +
> > +			if (ddb_changed && (update_pipes | modeset_pipes))
> >  				intel_wait_for_vblank(dev_priv, pipe);
> >  		}
> >  	}
> > @@ -15863,9 +15950,18 @@ static void skl_commit_modeset_enables(struct =
intel_atomic_state *state)
> >  		if ((modeset_pipes & BIT(pipe)) =3D=3D 0)
> >  			continue;
> >  =

> > +		WARN_ON(skl_ddb_allocation_overlaps(&new_entries[pipe],
> > +						    entries, I915_MAX_PIPES, pipe));
> > +
> > +		entries[pipe] =3D new_entries[pipe];
> >  		modeset_pipes &=3D ~BIT(pipe);
> >  =

> > -		intel_enable_crtc(state, crtc);
> > +		if (new_crtc_state->bigjoiner)
> > +			intel_update_bigjoiner(crtc, state,
> > +					       old_crtc_state,
> > +					       new_crtc_state);
> > +		else
> > +			intel_enable_crtc(state, crtc);
> >  	}
> >  =

> >  	/*
> > @@ -15877,10 +15973,10 @@ static void skl_commit_modeset_enables(struct=
 intel_atomic_state *state)
> >  		if ((update_pipes & BIT(pipe)) =3D=3D 0)
> >  			continue;
> >  =

> > -		drm_WARN_ON(&dev_priv->drm, skl_ddb_allocation_overlaps(&new_crtc_st=
ate->wm.skl.ddb,
> > +		drm_WARN_ON(&dev_priv->drm, skl_ddb_allocation_overlaps(&new_entries=
[pipe],
> >  									entries, I915_MAX_PIPES, pipe));
> >  =

> > -		entries[pipe] =3D new_crtc_state->wm.skl.ddb;
> > +		entries[pipe] =3D new_entries[pipe];
> >  		update_pipes &=3D ~BIT(pipe);
> >  =

> >  		intel_update_crtc(state, crtc);
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/=
drm/i915/display/intel_sprite.c
> > index 60eeed06a780..eaae5df546fe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -99,6 +99,8 @@ void intel_pipe_update_start(const struct intel_crtc_=
state *new_crtc_state)
> >  =

> >  	/* FIXME needs to be calibrated sensibly */
> >  	min =3D vblank_start - intel_usecs_to_scanlines(adjusted_mode,
> > +						      new_crtc_state->bigjoiner ?
> > +						      2 * VBLANK_EVASION_TIME_US :
> >  						      VBLANK_EVASION_TIME_US);
> >  	max =3D vblank_start - 1;
> >  =

> > @@ -191,7 +193,8 @@ void intel_pipe_update_start(const struct intel_crt=
c_state *new_crtc_state)
> >   * re-enables interrupts and verifies the update was actually completed
> >   * before a vblank.
> >   */
> > -void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
> > +void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state,
> > +			   struct intel_crtc_state *slave_crtc_state)
> >  {
> >  	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
> >  	enum pipe pipe =3D crtc->pipe;
> > @@ -206,16 +209,26 @@ void intel_pipe_update_end(struct intel_crtc_stat=
e *new_crtc_state)
> >  	 * Would be slightly nice to just grab the vblank count and arm the
> >  	 * event outside of the critical section - the spinlock might spin fo=
r a
> >  	 * while ... */
> > -	if (new_crtc_state->uapi.event) {
> > -		drm_WARN_ON(&dev_priv->drm,
> > -			    drm_crtc_vblank_get(&crtc->base) !=3D 0);
> > +	if (new_crtc_state->uapi.event || (slave_crtc_state && slave_crtc_sta=
te->uapi.event)) {
> > +		if (new_crtc_state->uapi.event)
> > +			drm_WARN_ON(&dev_priv->drm,
> > +				    drm_crtc_vblank_get(&crtc->base) !=3D 0);
> > +		if (slave_crtc_state && slave_crtc_state->uapi.event)
> > +			drm_WARN_ON(&dev_priv->drm,
> > +				    drm_crtc_vblank_get(&crtc->base) !=3D 0);
> >  =

> >  		spin_lock(&crtc->base.dev->event_lock);
> > -		drm_crtc_arm_vblank_event(&crtc->base,
> > -				          new_crtc_state->uapi.event);
> > +		if (new_crtc_state->uapi.event)
> > +			drm_crtc_arm_vblank_event(&crtc->base,
> > +						  new_crtc_state->uapi.event);
> > +		if (slave_crtc_state && slave_crtc_state->uapi.event)
> > +			drm_crtc_arm_vblank_event(&crtc->base,
> > +						  slave_crtc_state->uapi.event);
> >  		spin_unlock(&crtc->base.dev->event_lock);
> >  =

> >  		new_crtc_state->uapi.event =3D NULL;
> > +		if (slave_crtc_state)
> > +			slave_crtc_state->uapi.event =3D NULL;
> >  	}
> >  =

> >  	local_irq_enable();
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/=
drm/i915/display/intel_sprite.h
> > index cd2104ba1ca1..15e7c112ec77 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.h
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.h
> > @@ -24,7 +24,8 @@ struct intel_plane *intel_sprite_plane_create(struct =
drm_i915_private *dev_priv,
> >  int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
> >  				    struct drm_file *file_priv);
> >  void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_s=
tate);
> > -void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state);
> > +void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state,
> > +			   struct intel_crtc_state *slave_crtc_state);
> >  int intel_plane_check_stride(const struct intel_plane_state *plane_sta=
te);
> >  int intel_plane_check_src_coordinates(struct intel_plane_state *plane_=
state);
> >  int chv_plane_check_rotation(const struct intel_plane_state *plane_sta=
te);
> > -- =

> > 2.19.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
