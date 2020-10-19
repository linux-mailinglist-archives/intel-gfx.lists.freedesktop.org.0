Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9682931A9
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 01:03:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53DBA6EB81;
	Mon, 19 Oct 2020 23:03:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9446EB81
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 23:03:25 +0000 (UTC)
IronPort-SDR: DkGSH6yHORwIsd0+6bDG1M0wzWilN8M6+IoGsNqKhC5INh6RYOvvddCN6zO77QmDijxt9HpCtW
 nf4QFqx+bXEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="184737808"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="184737808"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 16:03:20 -0700
IronPort-SDR: UjtYAz1L8rTsLAT8Ak7ji/4hPHm3bhM1qUjIYKXEfjscNQxy0xtQ93EhSx0X2/oF0TPVgVyu/v
 SfvTzTjcxeaA==
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="465699149"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 16:03:20 -0700
Date: Mon, 19 Oct 2020 16:05:00 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201019230454.GD22486@labuser-Z97X-UD5H>
References: <20201008214535.22942-1-manasi.d.navare@intel.com>
 <20201008214535.22942-10-manasi.d.navare@intel.com>
 <20201019162619.GU6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019162619.GU6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v10 10/11] drm/i915: Ensure correct
 master/slave enable/disable sequence
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

On Mon, Oct 19, 2020 at 07:26:19PM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, Oct 08, 2020 at 02:45:34PM -0700, Manasi Navare wrote:
> > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > =

> > Enabling is done in a special sequence and so should plane updates
> > be. Ideally the end user never notices the second pipe is used.
> > =

> > This way ideally everything will be tear free, and updates are
> > really atomic as userspace expects it.
> > =

> > This uses generic modeset_enables() calls like trans port sync
> > but still has special handling for disable since for slave we
> > should not disable things like encoder, plls that are not enabled
> > for  slave.
> > =

> > v3:
> > * Fixes in enable and disable sequence from testing (Manasi)
> > v2:
> > * Manual Rebase (Manasi)
> > * Refactoring on intel_update_crtc and enable_crtc and removing
> > special trans_port_sync_update (Manasi)
> > =

> > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 55 ++++++++++++++------
> >  drivers/gpu/drm/i915/display/intel_sprite.c  |  5 +-
> >  2 files changed, 43 insertions(+), 17 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 357cc2bce300..101ddd0b48ab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -15878,6 +15878,9 @@ static void intel_enable_crtc(struct intel_atom=
ic_state *state,
> >  =

> >  	dev_priv->display.crtc_enable(state, crtc);
> >  =

> > +	if (new_crtc_state->bigjoiner_slave)
> > +		return;
> > +
> >  	/* vblanks work again, re-enable pipe CRC. */
> >  	intel_crtc_enable_pipe_crc(crtc);
> >  }
> > @@ -15914,9 +15917,7 @@ static void intel_update_crtc(struct intel_atom=
ic_state *state,
> >  =

> >  	commit_pipe_config(state, crtc);
> >  =

> > -	if (new_crtc_state->bigjoiner) {
> > -	/* Not supported yet */
> > -	} else if (INTEL_GEN(dev_priv) >=3D 9)
> > +	if (INTEL_GEN(dev_priv) >=3D 9)
> >  		skl_update_planes_on_crtc(state, crtc);
> >  	else
> >  		i9xx_update_planes_on_crtc(state, crtc);
> > @@ -15945,9 +15946,17 @@ static void intel_old_crtc_state_disables(stru=
ct intel_atomic_state *state,
> >  	drm_WARN_ON(&dev_priv->drm, old_crtc_state->bigjoiner_slave);
> >  =

> >  	intel_crtc_disable_planes(state, crtc);
> > -	if (old_crtc_state->bigjoiner)
> > +
> > +	/*
> > +	 * We still need special handling for disabling bigjoiner master
> > +	 * and slaves since for slave we do not have encoder or plls
> > +	 * so we dont need to disable those.
> > +	 */
> > +	if (old_crtc_state->bigjoiner) {
> >  		intel_crtc_disable_planes(state,
> >  					  old_crtc_state->bigjoiner_linked_crtc);
> > +		old_crtc_state->bigjoiner_linked_crtc->active =3D false;
> > +	}
> >  =

> >  	/*
> >  	 * We need to disable pipe CRC before disabling the pipe,
> > @@ -15977,7 +15986,7 @@ static void intel_commit_modeset_disables(struc=
t intel_atomic_state *state)
> >  	/* Only disable port sync and MST slaves */
> >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> >  					    new_crtc_state, i) {
> > -		if (!needs_modeset(new_crtc_state) || old_crtc_state->bigjoiner_slav=
e)
> > +		if (!needs_modeset(new_crtc_state) || old_crtc_state->bigjoiner)
> >  			continue;
> >  =

> >  		if (!old_crtc_state->hw.active)
> > @@ -16040,6 +16049,7 @@ static void skl_commit_modeset_enables(struct i=
ntel_atomic_state *state)
> >  	struct intel_crtc *crtc;
> >  	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> >  	struct skl_ddb_entry entries[I915_MAX_PIPES] =3D {};
> > +	struct skl_ddb_entry new_entries[I915_MAX_PIPES] =3D {};
> >  	u8 update_pipes =3D 0, modeset_pipes =3D 0;
> >  	int i;
> >  =

> > @@ -16056,6 +16066,14 @@ static void skl_commit_modeset_enables(struct =
intel_atomic_state *state)
> >  		} else {
> >  			modeset_pipes |=3D BIT(pipe);
> >  		}
> > +
> > +		new_entries[i] =3D new_crtc_state->wm.skl.ddb;
> > +
> > +		/* ignore allocations for crtc's that have been turned off during mo=
deset. */
> > +		if (needs_modeset(new_crtc_state))
> > +			continue;
> > +
> > +		entries[i] =3D old_crtc_state->wm.skl.ddb;
> >  	}
> >  =

> >  	/*
> > @@ -16071,28 +16089,28 @@ static void skl_commit_modeset_enables(struct=
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
> > +			intel_update_crtc(state, crtc);
> > +
> > +			if (ddb_changed && (update_pipes | modeset_pipes))
> >  				intel_wait_for_vblank(dev_priv, pipe);
> =

> What are these ddb changes trying to achieve?

Maarten had these in the attempt of making sure we account for master and s=
lave ddb entries.
Do we jus remove these changes for now since we are treating them like 2p2p=
 now?


> =

> >  		}
> >  	}
> > @@ -16110,7 +16128,8 @@ static void skl_commit_modeset_enables(struct i=
ntel_atomic_state *state)
> >  			continue;
> >  =

> >  		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
> > -		    is_trans_port_sync_master(new_crtc_state))
> > +		    is_trans_port_sync_master(new_crtc_state) ||
> > +		    (new_crtc_state->bigjoiner && !new_crtc_state->bigjoiner_slave))
> >  			continue;
> >  =

> >  		modeset_pipes &=3D ~BIT(pipe);
> > @@ -16120,7 +16139,7 @@ static void skl_commit_modeset_enables(struct i=
ntel_atomic_state *state)
> >  =

> >  	/*
> >  	 * Then we enable all remaining pipes that depend on other
> > -	 * pipes: MST slaves and port sync masters.
> > +	 * pipes: MST slaves and port sync masters, big joiner master
> >  	 */
> >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> >  		enum pipe pipe =3D crtc->pipe;
> > @@ -16128,6 +16147,10 @@ static void skl_commit_modeset_enables(struct =
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

> >  		intel_enable_crtc(state, crtc);
> > @@ -16142,10 +16165,10 @@ static void skl_commit_modeset_enables(struct=
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
> > index 9e235210adc7..1c740a22a8d7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -103,6 +103,8 @@ void intel_pipe_update_start(const struct intel_crt=
c_state *new_crtc_state)
> >  =

> >  	/* FIXME needs to be calibrated sensibly */
> >  	min =3D vblank_start - intel_usecs_to_scanlines(adjusted_mode,
> > +						      new_crtc_state->bigjoiner ?
> > +						      2 * VBLANK_EVASION_TIME_US :
> >  						      VBLANK_EVASION_TIME_US);
> >  	max =3D vblank_start - 1;
> >  =

> > @@ -227,7 +229,8 @@ void intel_pipe_update_end(struct intel_crtc_state =
*new_crtc_state)
> >  =

> >  		spin_lock(&crtc->base.dev->event_lock);
> >  		drm_crtc_arm_vblank_event(&crtc->base,
> > -				          new_crtc_state->uapi.event);
> > +					  new_crtc_state->uapi.event);
> > +
> =

> Spurious whitespace change.

Yes will fix that, everything else here looks good?

Manasi
> =

> >  		spin_unlock(&crtc->base.dev->event_lock);
> >  =

> >  		new_crtc_state->uapi.event =3D NULL;
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
