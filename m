Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D221E12BB02
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 21:03:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB2646E11B;
	Fri, 27 Dec 2019 20:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D8B6E11B
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2019 20:03:36 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Dec 2019 12:03:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,364,1571727600"; d="scan'208";a="220171622"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga006.jf.intel.com with ESMTP; 27 Dec 2019 12:03:33 -0800
Date: Fri, 27 Dec 2019 12:03:33 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20191227200333.GM2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191223224429.5151-1-manasi.d.navare@intel.com>
 <20191227183652.GJ2877816@mdroper-desk1.amr.corp.intel.com>
 <20191227192750.GA26435@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191227192750.GA26435@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v5 1/3] drm/i915/dp: Make sure all tiled
 connectors get added to the state with full modeset
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

On Fri, Dec 27, 2019 at 11:27:50AM -0800, Manasi Navare wrote:
> On Fri, Dec 27, 2019 at 10:36:52AM -0800, Matt Roper wrote:
> > On Mon, Dec 23, 2019 at 02:44:27PM -0800, Manasi Navare wrote:
> > > In case of tiled displays, all the tiles are linke dto each other
> > > for transcoder port sync. So in intel_atomic_check() we need to make
> > > sure that we add all the tiles to the modeset and if one of the
> > > tiles needs a full modeset then mark all other tiles for a full modes=
et.
> > > =

> > > We also need to force modeset for all synced crtcs after fastset chec=
k.
> > > =

> > > v5:
> > > * Rebase
> > =

> > I sent a reply to your v4 of this right at the same time you sent out
> > v5, but I'm not sure if my reply went through since it doesn't show up
> > in patchwork.  I've included the same feedback I gave on v4 below in
> > case it got lost, plus a few more comments.
> > =

> > > v4:
> > > * Fix logic for modeset_synced_crtcs (Ville)
> > > v3:
> > > * Add tile checks only for Gen >11
> > > v2:
> > > * Change crtc_state scope, remove tile_grp_id (Ville)
> > > * Use intel_connector_needs_modeset() (Ville)
> > > * Add modeset_synced_crtcs (Ville)
> > > * Make sure synced crtcs are forced full modeset
> > > after fastset check (Ville)
> > > =

> > > Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/5
> > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 123 +++++++++++++++++=
++
> > >  1 file changed, 123 insertions(+)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 94fc4b5bacc0..45a699bac34a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -14304,6 +14304,118 @@ static bool intel_cpu_transcoder_needs_mode=
set(struct intel_atomic_state *state,
> > >  	return false;
> > >  }
> > >  =

> > > +static void
> > > +intel_modeset_synced_crtcs(struct intel_atomic_state *state,
> > > +			   u8 transcoders)
> > > +{
> > > +	struct intel_crtc_state *new_crtc_state;
> > > +	struct intel_crtc *crtc;
> > > +	int i;
> > > +
> > > +	for_each_new_intel_crtc_in_state(state, crtc,
> > > +					 new_crtc_state, i) {
> > =

> > Are we guaranteed to have the other CRTC in the state at this point?  If
> > the tile information was gone at the beginning of the transaction, then
> > it wouldn't have known to bring in the other CRTC.  So if a modeset was
> > only submitted on one of the two synchronized CRTCs then I don't see
> > where the other one would be added to the transaction before this point?
> >
> =

> Yes basically at this point the new crtc state is not cleared so we use t=
he =

> previously synced crtcs through new crtc state master slave assignments f=
rom previous
> modeset.

I'm not sure we're talking about the same thing here.  Initially an
atomic state (transaction) is empty, and all mode objects have a
currently-committed state, but no new state associated with this
specific transaction.  If userspace requests a modeset on CRTC-A (e.g.,
master), that will add CRTC-A to the drm_atomic_state, but won't
automatically add CRTC-B (slave).  CRTC B's committed state does indeed
indicate that it's part of a port-sync pair, but it won't get iterated
over in the loop above because it still hasn't been added with an
explicit drm_atomic_get_crtc_state().  So we'll never set mode_changed
on CRTC-B as far as I can see because nothing ever brought it into the
transaction (the only place where we bring in new CRTCs in this patch is
when handling the tiles).

> =

>  =

> > > +		if (transcoders & BIT(new_crtc_state->cpu_transcoder)) {
> > > +			new_crtc_state->uapi.mode_changed =3D true;
> > > +			new_crtc_state->update_pipe =3D false;
> > > +		}
> > > +	}
> > > +}
> > > +
> > > +static void
> > > +intel_atomic_check_synced_crtcs(struct intel_atomic_state *state)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > +	struct intel_crtc_state *new_crtc_state;
> > > +	struct intel_crtc *crtc;
> > > +	int i;
> > > +
> > > +	if (INTEL_GEN(dev_priv) < 11)
> > > +		return;
> > > +
> > > +	for_each_new_intel_crtc_in_state(state, crtc,
> > > +					 new_crtc_state, i) {
> > > +		if (is_trans_port_sync_master(new_crtc_state) &&
> > > +		    needs_modeset(new_crtc_state)) {
> > > +			intel_modeset_synced_crtcs(state,
> > > +						   new_crtc_state->sync_mode_slaves_mask);
> > > +		} else if (is_trans_port_sync_slave(new_crtc_state) &&
> > > +			   needs_modeset(new_crtc_state)) {
> > > +			intel_modeset_synced_crtcs(state,
> > > +						   BIT(new_crtc_state->master_transcoder));
> > > +		}
> > > +	}
> > > +}
> > > +
> > > +static int
> > > +intel_modeset_all_tiles(struct intel_atomic_state *state, int tile_g=
rp_id)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > +	struct drm_connector *connector;
> > > +	struct drm_connector_list_iter conn_iter;
> > > +	int ret =3D 0;
> > > +
> > > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> > > +	drm_for_each_connector_iter(connector, &conn_iter) {
> > > +		struct drm_connector_state *conn_state;
> > > +		struct drm_crtc_state *crtc_state;
> > > +
> > > +		if (!connector->has_tile ||
> > > +		    connector->tile_group->id !=3D tile_grp_id)
> > > +			continue;
> > > +		conn_state =3D drm_atomic_get_connector_state(&state->base,
> > > +							    connector);
> > > +		if (IS_ERR(conn_state)) {
> > > +			ret =3D  PTR_ERR(conn_state);
> > > +			break;
> > > +		}
> > > +
> > > +		if (!conn_state->crtc)
> > > +			continue;
> > > +
> > > +		crtc_state =3D drm_atomic_get_crtc_state(&state->base,
> > > +						       conn_state->crtc);
> > > +		if (IS_ERR(crtc_state)) {
> > > +			ret =3D PTR_ERR(conn_state);
> > > +			break;
> > > +		}
> > > +		crtc_state->mode_changed =3D true;
> > > +		ret =3D drm_atomic_add_affected_connectors(&state->base,
> > > +							 conn_state->crtc);
> > > +		if (ret)
> > > +			break;
> > > +	}
> > > +	drm_connector_list_iter_end(&conn_iter);
> > > +
> > > +	return ret;
> > > +}
> > =

> > There isn't really anything i915-specific in this function and it feels
> > like something other drivers may need as well if they treat tiled
> > monitors in a similar manner.  We may want to consider pulling this out
> > to a DRM core helper, although we can do that in a future patch.
> > =

> > With a bit of extra work, the function below could also potentially be
> > moved to the core too.  Do you know if there's other hardware with port
> > sync capabilities that could benefit from these?
> >
> =

> Yes definitely can eventually make this a drm helper even though the whol=
e master slave
> thing is i915 specific for now
>  =

> > > +
> > > +static int
> > > +intel_atomic_check_tiled_conns(struct intel_atomic_state *state)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > +	struct drm_connector *connector;
> > > +	struct drm_connector_state *old_conn_state, *new_conn_state;
> > > +	int i, ret;
> > > +
> > > +	if (INTEL_GEN(dev_priv) < 11)
> > > +		return 0;
> > > +
> > > +	/* Is tiled, mark all other tiled CRTCs as needing a modeset */
> > > +	for_each_oldnew_connector_in_state(&state->base, connector,
> > > +					   old_conn_state, new_conn_state, i) {
> > > +		if (!connector->has_tile)
> > > +			continue;
> > > +		if (!intel_connector_needs_modeset(state, connector))
> > > +			continue;
> > > +
> > > +		ret =3D intel_modeset_all_tiles(state, connector->tile_group->id);
> > > +		if (ret)
> > > +			return ret;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > >  /**
> > >   * intel_atomic_check - validate state object
> > >   * @dev: drm device
> > > @@ -14331,6 +14443,10 @@ static int intel_atomic_check(struct drm_dev=
ice *dev,
> > >  	if (ret)
> > >  		goto fail;
> > >  =

> > > +	ret =3D intel_atomic_check_tiled_conns(state);
> > > +	if (ret)
> > > +		goto fail;
> > > +
> > >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > >  					    new_crtc_state, i) {
> > >  		if (!needs_modeset(new_crtc_state)) {
> > > @@ -14378,6 +14494,13 @@ static int intel_atomic_check(struct drm_dev=
ice *dev,
> > >  		}
> > >  	}
> > >  =

> > > +	/*
> > > +	 * In case of port synced crtcs, if one of the synced crtcs
> > > +	 * needs a full modeset, all other synced crtcs should be
> > > +	 * forced a full modeset.
> > =

> > Since it's somewhat non-intuitive, I'd add a little bit of extra
> > explanation for why intel_atomic_check_tiled_conns above didn't already
> > take care of this.  I.e., if you've plugged in a different monitor, the
> > tile information may have already vanished from drm_connector by the
> > time we start this atomic transaction, so we still need to deal with
> > connectors that used to be tiled (and thus were port-synced) but no
> > longer are.
> >
> =

> Yes will add this in the comments
>  =

> > =

> > > +	 */
> > > +	intel_atomic_check_synced_crtcs(state);
> > =

> > Although I can't think of a reason why it would cause a problem in this
> > case, we do seem to be violating the directions in the big kerneldoc
> > warning attached to drm_atomic_helper_check_modeset().  I.e. if we set
> > mode_changed in our own check functions, then we're supposed to re-call
> > drm_atomic_helper_check_modeset() to make sure everything is properly
> > handled.  If we're not going to follow those directions, we should
> > probably be clear why we don't think it's necessary.
> > =

> > Actually, I wonder if some of this tiling handling should eventually
> > migrate into that core helper function in the future...
> >
> =

> We are setting the mode hanged to true directly in our function so yes it=
 makes
> sense to eventually do that as part of the core helper function but i sti=
ll
> dont see the need for us to call drm_atomic_helper_check_modeset() again
> since our function is essentially checking modeset based on the tiled con=
ditions

I'd still like to see either a commit message note or a code comment
justifying this.  The instructions say we need to re-invoke that
function in cases like what we're doing here, so if we're intentionally
not following those directions we should explain why for future
reference.  It's also possible that function may expand its role in the
future and start doing something new that we really do need to worry
about, so it would be good to have the history and justification for not
calling it documented.


Matt

> =

> Manasi
>  =

> > =

> > Matt
> > =

> > > +
> > >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > >  					    new_crtc_state, i) {
> > >  		if (needs_modeset(new_crtc_state)) {
> > > -- =

> > > 2.19.1
> > > =

> > =

> > -- =

> > Matt Roper
> > Graphics Software Engineer
> > VTT-OSGC Platform Enablement
> > Intel Corporation
> > (916) 356-2795

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
