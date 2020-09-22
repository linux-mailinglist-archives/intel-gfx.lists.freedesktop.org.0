Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34817273F99
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 12:27:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 859CB6E2D6;
	Tue, 22 Sep 2020 10:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C55406E2D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 10:27:38 +0000 (UTC)
IronPort-SDR: tiDEUrFOAUs48DXMMJPVh2ki+8TpRqNVbmpxzWw9+D0fnvPvHpfzi6QpXBkT2cGXBxI7BvYYov
 Jwvn6vSpMi/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="161500407"
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="161500407"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 03:27:38 -0700
IronPort-SDR: iJ0taQpb/qTkW+W8BfSS4pqmI98XsyYMRRJpS+7hgJ6GWMrU+rE4nt1miMwvFarPU98zRETvNy
 aAW1ifmCjD7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="412616060"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 22 Sep 2020 03:27:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Sep 2020 13:27:35 +0300
Date: Tue, 22 Sep 2020 13:27:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <20200922102735.GO6112@intel.com>
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
 <20200715224222.7557-10-manasi.d.navare@intel.com>
 <20200903192335.GB6112@intel.com>
 <20200914192118.GA29202@labuser-Z97X-UD5H>
 <20200921211833.GA19413@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200921211833.GA19413@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Mon, Sep 21, 2020 at 02:18:33PM -0700, Navare, Manasi wrote:
> On Mon, Sep 14, 2020 at 12:21:26PM -0700, Navare, Manasi wrote:
> > On Thu, Sep 03, 2020 at 10:23:35PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Wed, Jul 15, 2020 at 03:42:21PM -0700, Manasi Navare wrote:
> > > > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > =

> > > > Enabling is done in a special sequence and so should plane updates
> > > > be. Ideally the end user never notices the second pipe is used,
> > > > so use the vblank evasion to cover both pipes.
> > > > =

> > > > This way ideally everything will be tear free, and updates are
> > > > really atomic as userspace expects it.
> > > > =

> > > > ****This needs to be checked if it still works since lot of refacto=
ring
> > > > in skl_commit_modeset_enables
> > > > =

> > > > v2:
> > > > * Manual Rebase (Manasi)
> > > > * Refactoring on intel_update_crtc and enable_crtc and removing
> > > > special trans_port_sync_update (Manasi)
> > > > =

> > > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 120 +++++++++++++++=
++--
> > > >  drivers/gpu/drm/i915/display/intel_sprite.c  |  25 +++-
> > > >  drivers/gpu/drm/i915/display/intel_sprite.h  |   3 +-
> > > >  3 files changed, 129 insertions(+), 19 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers=
/gpu/drm/i915/display/intel_display.c
> > > > index a1011414da6d..00b26863ffc6 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -15656,7 +15656,7 @@ static void intel_update_crtc(struct intel_=
atomic_state *state,
> > > >  	else
> > > >  		i9xx_update_planes_on_crtc(state, crtc);
> > > >  =

> > > > -	intel_pipe_update_end(new_crtc_state);
> > > > +	intel_pipe_update_end(new_crtc_state, NULL);
> > > >  =

> > > >  	/*
> > > >  	 * We usually enable FIFO underrun interrupts as part of the
> > > > @@ -15754,6 +15754,52 @@ static void intel_commit_modeset_disables(=
struct intel_atomic_state *state)
> > > >  	}
> > > >  }
> > > >  =

> > > > +static void intel_update_bigjoiner(struct intel_crtc *crtc,
> > > > +				   struct intel_atomic_state *state,
> > > > +				   struct intel_crtc_state *old_crtc_state,
> > > > +				   struct intel_crtc_state *new_crtc_state)
> > > > +{
> > > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > > +	bool modeset =3D needs_modeset(new_crtc_state);
> > > > +	struct intel_crtc *slave =3D new_crtc_state->bigjoiner_linked_crt=
c;
> > > > +	struct intel_crtc_state *new_slave_crtc_state =3D
> > > > +		intel_atomic_get_new_crtc_state(state, slave);
> > > > +
> > > > +	if (modeset) {
> > > > +		/* Enable slave first */
> > > > +		intel_crtc_update_active_timings(new_slave_crtc_state);
> > > > +		dev_priv->display.crtc_enable(state, slave);
> > > > +
> > > > +		/* Then master */
> > > > +		intel_crtc_update_active_timings(new_crtc_state);
> > > > +		dev_priv->display.crtc_enable(state, crtc);
> > > > +
> > > > +		/* vblanks work again, re-enable pipe CRC. */
> > > > +		intel_crtc_enable_pipe_crc(crtc);
> > > > +
> > > > +	} else {
> > > > +		intel_pre_plane_update(state, crtc);
> > > > +		intel_pre_plane_update(state, slave);
> > > > +
> > > > +		if (new_crtc_state->update_pipe)
> > > > +			intel_encoders_update_pipe(state, crtc);
> > > > +	}
> > > > +
> > > > +	/*
> > > > +	 * Perform vblank evasion around commit operation, and make sure =
to
> > > > +	 * commit both planes simultaneously for best results.
> > > > +	 */
> > > > +	intel_pipe_update_start(new_crtc_state);
> > > > +
> > > > +	commit_pipe_config(state, crtc);
> > > > +	commit_pipe_config(state, slave);
> > > > +
> > > > +	skl_update_planes_on_crtc(state, crtc);
> > > > +	skl_update_planes_on_crtc(state, slave);
> > > > +
> > > > +	intel_pipe_update_end(new_crtc_state, new_slave_crtc_state);
> > > > +}
> > > =

> > > I think this should ideally all go away and just the normal logic
> > > in commit_modeset_enables() should deal with it. Just like it does
> > > for port sync/mst pipe dependencies.
> > >
> > =

> > Yes I think so too. Except for the intel_pipe_update_end where
> > now we send the new_slave_crtc_state() so thats still something I need =
to figure
> > how it will work in normal code without special bigjoiner handling.
> > =

> > I think the 2p2p transcoder ports sync code initially had a special tra=
ns port sync handling
> > function and thats why this was written this way but with the new code =
we just use
> > the regular modeset_enables function with no special handling
> > =

> > Manasi
> >  =

> > > > +
> > > >  static void intel_commit_modeset_enables(struct intel_atomic_state=
 *state)
> > > >  {
> > > >  	struct intel_crtc_state *new_crtc_state;
> > > > @@ -15772,15 +15818,22 @@ static void intel_commit_modeset_enables(=
struct intel_atomic_state *state)
> > > >  static void skl_commit_modeset_enables(struct intel_atomic_state *=
state)
> > > >  {
> > > >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > > -	struct intel_crtc *crtc;
> > > > +	struct intel_crtc *crtc, *slave;
> > > >  	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> > > >  	struct skl_ddb_entry entries[I915_MAX_PIPES] =3D {};
> > > > +	struct skl_ddb_entry new_entries[I915_MAX_PIPES] =3D {};
> > > >  	u8 update_pipes =3D 0, modeset_pipes =3D 0;
> > > > +	const struct intel_crtc_state *slave_crtc_state;
> > > >  	int i;
> > > >  =

> > > >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, =
new_crtc_state, i) {
> > > >  		enum pipe pipe =3D crtc->pipe;
> > > >  =

> > > > +		if (new_crtc_state->bigjoiner_slave) {
> > > > +			/* We're updated from master */
> > > > +			continue;
> > > > +		}
> > > > +
> > > >  		if (!new_crtc_state->hw.active)
> > > >  			continue;
> > > >  =

> > > > @@ -15791,6 +15844,34 @@ static void skl_commit_modeset_enables(str=
uct intel_atomic_state *state)
> > > >  		} else {
> > > >  			modeset_pipes |=3D BIT(pipe);
> > > >  		}
> > > > +
> > > > +		if (new_crtc_state->bigjoiner) {
> > > > +			slave =3D new_crtc_state->bigjoiner_linked_crtc;
> > > > +			slave_crtc_state =3D
> > > > +				intel_atomic_get_new_crtc_state(state,
> > > > +								slave);
> > > > +
> > > > +			/* put both entries in */
> > > > +			new_entries[i].start =3D new_crtc_state->wm.skl.ddb.start;
> > > > +			new_entries[i].end =3D slave_crtc_state->wm.skl.ddb.end;
> > > > +		} else {
> > > > +			new_entries[i] =3D new_crtc_state->wm.skl.ddb;
> > > > +		}
> > > > +
> > > > +		/* ignore allocations for crtc's that have been turned off durin=
g modeset. */
> > > > +		if (needs_modeset(new_crtc_state))
> > > > +			continue;
> > > > +
> > > > +		if (old_crtc_state->bigjoiner) {
> > > > +			slave =3D old_crtc_state->bigjoiner_linked_crtc;
> > > > +			slave_crtc_state =3D
> > > > +				intel_atomic_get_old_crtc_state(state, slave);
> > > > +
> > > > +			entries[i].start =3D old_crtc_state->wm.skl.ddb.start;
> > > > +			entries[i].end =3D slave_crtc_state->wm.skl.ddb.end;
> > > > +		} else {
> > > > +			entries[i] =3D old_crtc_state->wm.skl.ddb;
> > > > +		}
> > > =

> > > Why is this here? Can't see why the current code wouldn't work just f=
ine
> > > for bigjoiner too.
> > >
> =

> Ville, could you provide inputs on how intel_pipe_update_end() should cha=
nge so that we can use
> the current code, now this takes an additional input new_slave_crtc_state

I would not change it at all. What I would do as the first step is to
treat the pipes entirely separately, just like we do for port sync/etc.
Later we can think what would be needed to make 100% sure they update
atomically.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
