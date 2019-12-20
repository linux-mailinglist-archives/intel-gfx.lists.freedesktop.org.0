Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DCF12830E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 21:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ADCA6ECA3;
	Fri, 20 Dec 2019 20:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A68FA6ECA3
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 20:11:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 12:11:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,337,1571727600"; d="scan'208";a="206643328"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga007.jf.intel.com with ESMTP; 20 Dec 2019 12:11:44 -0800
Date: Fri, 20 Dec 2019 12:13:21 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20191220201321.GB1329@intel.com>
References: <20191219215117.929-1-manasi.d.navare@intel.com>
 <20191220184112.GZ1208@intel.com> <20191220190531.GA1329@intel.com>
 <20191220193543.GB1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220193543.GB1208@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/dp: Make sure all tiled
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

On Fri, Dec 20, 2019 at 09:35:43PM +0200, Ville Syrj=E4l=E4 wrote:
> On Fri, Dec 20, 2019 at 11:05:31AM -0800, Manasi Navare wrote:
> > On Fri, Dec 20, 2019 at 08:41:12PM +0200, Ville Syrj=E4l=E4 wrote:
> > > On Thu, Dec 19, 2019 at 01:51:15PM -0800, Manasi Navare wrote:
> > > > In case of tiled displays, all the tiles are linke dto each other
> > > > for transcoder port sync. So in intel_atomic_check() we need to make
> > > > sure that we add all the tiles to the modeset and if one of the
> > > > tiles needs a full modeset then mark all other tiles for a full mod=
eset.
> > > > =

> > > > v2:
> > > > * Change crtc_state scope, remove tile_grp_id (Ville)
> > > > * Use intel_connector_needs_modeset() (Ville)
> > > > * Add modeset_synced_crtcs (Ville)
> > > > * Make sure synced crtcs are forced full modeset
> > > > after fastset check (Ville)
> > > > =

> > > > Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/5
> > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 143 +++++++++++++++=
++--
> > > >  1 file changed, 131 insertions(+), 12 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers=
/gpu/drm/i915/display/intel_display.c
> > > > index a3f9430493ae..00608d8cef50 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -13910,18 +13910,6 @@ static void intel_crtc_check_fastset(const=
 struct intel_crtc_state *old_crtc_sta
> > > >  	new_crtc_state->uapi.mode_changed =3D false;
> > > >  	new_crtc_state->update_pipe =3D true;
> > > >  =

> > > > -	/*
> > > > -	 * If we're not doing the full modeset we want to
> > > > -	 * keep the current M/N values as they may be
> > > > -	 * sufficiently different to the computed values
> > > > -	 * to cause problems.
> > > > -	 *
> > > > -	 * FIXME: should really copy more fuzzy state here
> > > > -	 */
> > > > -	new_crtc_state->fdi_m_n =3D old_crtc_state->fdi_m_n;
> > > > -	new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> > > > -	new_crtc_state->dp_m2_n2 =3D old_crtc_state->dp_m2_n2;
> > > > -	new_crtc_state->has_drrs =3D old_crtc_state->has_drrs;
> > > >  }
> > > >  =

> > > >  static int intel_crtc_add_planes_to_state(struct intel_atomic_stat=
e *state,
> > > > @@ -14032,6 +14020,105 @@ static int intel_atomic_check_crtcs(struc=
t intel_atomic_state *state)
> > > >  	return 0;
> > > >  }
> > > >  =

> > > > +static void
> > > > +intel_dp_modeset_synced_crtcs(struct intel_atomic_state *state)
> > > > +{
> > > > +	struct intel_crtc_state *new_crtc_state;
> > > > +	struct intel_crtc *crtc;
> > > > +	int i;
> > > > +
> > > > +	for_each_new_intel_crtc_in_state(state, crtc,
> > > > +					 new_crtc_state, i) {
> > > > +		if (is_trans_port_sync_mode(new_crtc_state)) {
> > > > +			new_crtc_state->uapi.mode_changed =3D true;
> > > > +			new_crtc_state->update_pipe =3D false;
> > > > +		}
> > > =

> > > Upon further thinking this is not quite right even for the post fasts=
et
> > > check part. You're not checking at all whether these crtcs here are
> > > actually synced to the crtc that still had its needs_modeset() flagge=
d.
> > > So this can end up forcing a modeset on an entirely unrelated crtc. We
> > > don't want that.
> > > =

> > > You could fix that by passing in a transcoder bitmask, and then only
> > > flagging a modeset on crtcs whose cpu_transcoder matches the bitmask.
> > > (see intel_modeset_transcoders() in my branch).
> > > =

> > > > +	}
> > > > +}
> > > > +
> > > > +static void
> > > > +intel_dp_atomic_check_synced_crtcs(struct intel_atomic_state *stat=
e)
> > > > +{
> > > > +	struct intel_crtc_state *new_crtc_state;
> > > > +	struct intel_crtc *crtc;
> > > > +	int i;
> > > > +
> > > > +	for_each_new_intel_crtc_in_state(state, crtc,
> > > > +					 new_crtc_state, i) {
> > > > +		if (!is_trans_port_sync_mode(new_crtc_state) ||
> > > > +		    !needs_modeset(new_crtc_state))
> > > > +			continue;
> > > > +
> > > > +		intel_dp_modeset_synced_crtcs(state);
> > =

> > I guess in this call I can add master trans and sync_mode_slaves_bitmask
> > =

> > And then if the crtcs in state are in sync mode and their cpu_trans mat=
ches the master trans
> > or transcoders in the slave mask, add them to the modeset?
> =

> It can be as simple as:
> =

> modeset_transcoders(state, transcoders)
> {
> 	for_each_crtc_in() {
> 		if (transcoders & BIT(cpu_transcoder))
> 			modeset =3D true;
> 	}	=

> }
> =

> intel_dp_atomic_check_synced_crtcs()
> {
> 	for_each_crtc_in() {
> 		if (is_port_sync_maseter() && needs_modeset())
> 			modeset_transcoders(state, slave_mask);
> 		else if (is_port_sync_slave() && needs_modeset())
> 			modeset_transcoders(state, BIT(master_transcoder));
> 	}
> }
> =

> > =

> > =

> > =

> > > > +	}
> > > > +}
> > > > +
> > > > +static int
> > > > +intel_dp_modeset_all_tiles(struct intel_atomic_state *state, int t=
ile_grp_id)
> > > > +{
> > > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > > +	struct drm_connector *connector;
> > > > +	struct drm_connector_list_iter conn_list_iter;
> > > > +
> > > > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_list_iter);
> > > > +	drm_for_each_connector_iter(connector, &conn_list_iter) {
> > > > +		struct drm_connector_state *conn_iter_state;
> > > > +		struct drm_crtc_state *crtc_state;
> > > > +
> > > > +		if (!(connector->has_tile &&
> > > > +		      connector->tile_group->id =3D=3D tile_grp_id))
> > > > +			continue;
> > > > +		conn_iter_state =3D drm_atomic_get_connector_state(&state->base,
> > > > +								 connector);
> > > > +		if (IS_ERR(conn_iter_state)) {
> > > > +			drm_connector_list_iter_end(&conn_list_iter);
> > > > +			return PTR_ERR(conn_iter_state);
> > > > +		}
> > > > +
> > > > +		if (!conn_iter_state->crtc)
> > > > +			continue;
> > > > +
> > > > +		crtc_state =3D drm_atomic_get_crtc_state(&state->base,
> > > > +						       conn_iter_state->crtc);
> > > > +		if (IS_ERR(crtc_state)) {
> > > > +			drm_connector_list_iter_end(&conn_list_iter);
> > > > +			return PTR_ERR(conn_iter_state);
> > > > +		}
> > > > +		crtc_state->mode_changed =3D true;
> > > > +	}
> > > > +	drm_connector_list_iter_end(&conn_list_iter);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int
> > > > +intel_dp_atomic_check_tiled_conns(struct intel_atomic_state *state)
> > > > +{
> > > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > > +	struct drm_connector *connector;
> > > > +	struct drm_connector_state *old_conn_state, *new_conn_state;
> > > > +	int i, ret;
> > > > +
> > > > +	if (INTEL_GEN(dev_priv) < 11)
> > > > +		return 0;
> > > > +
> > > > +	/* Is tiled, mark all other tiled CRTCs as needing a modeset */
> > > > +	for_each_oldnew_connector_in_state(&state->base, connector,
> > > > +					   old_conn_state, new_conn_state, i) {
> > > > +		if (!connector->has_tile)
> > > > +			continue;
> > > > +		if (!intel_connector_needs_modeset(state, old_conn_state,
> > > > +						   new_conn_state))
> > > > +			continue;
> > > > +
> > > > +		ret =3D intel_dp_modeset_all_tiles(state, connector->tile_group-=
>id);
> > > > +		if (ret)
> > > > +			return ret;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > >  /**
> > > >   * intel_atomic_check - validate state object
> > > >   * @dev: drm device
> > > > @@ -14059,6 +14146,12 @@ static int intel_atomic_check(struct drm_d=
evice *dev,
> > > >  	if (ret)
> > > >  		goto fail;
> > > >  =

> > > > +	ret =3D intel_dp_atomic_check_tiled_conns(state);
> > > > +	if (ret)
> > > > +		goto fail;
> > > =

> > > Since this is not sufficient for the pre-compute_config() check I thi=
nk
> > > we should drop this part for now. It's a somewhat unlikely scenario
> > > after all so we can do it as a followup.
> > >
> > =

> > Well we do need this for handling the hotplug cases correctly so that t=
he connector disconnected
> > are added to the modeset which is working well with this function.a
> =

> Did I reply here?
> =

> > =

> > Manasi
> >  =

> > > > +
> > > > +	intel_dp_atomic_check_synced_crtcs(state);
> =

> I meant to reply here. Ie. we should keep intel_dp_atomic_check_tiled_con=
ns()
> but drop the intel_dp_atomic_check_synced_crtcs() call here (we will want=
 to
> keep the other callsite after the fastset check).
>

Yes got it thank you so much, I will now resubmit this with these fixes jus=
t in a bit

Manasi
 =

> > > > +
> > > >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > > >  					    new_crtc_state, i) {
> > > >  		if (!needs_modeset(new_crtc_state)) {
> > > > @@ -14089,6 +14182,32 @@ static int intel_atomic_check(struct drm_d=
evice *dev,
> > > >  			any_ms =3D true;
> > > >  	}
> > > >  =

> > > > +	/*
> > > > +	 * In case of port synced crtcs, if one of the synced crtcs
> > > > +	 * needs a full modeset, all other synced crtcs should be
> > > > +	 * forced a full modeset.
> > > > +	 */
> > > > +	intel_dp_atomic_check_synced_crtcs(state);
> > > > +
> > > > +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > > > +					    new_crtc_state, i) {
> > > > +		if (needs_modeset(new_crtc_state))
> > > > +			continue;
> > > > +
> > > > +		/*
> > > > +		 * If we're not doing the full modeset we want to
> > > > +		 * keep the current M/N values as they may be
> > > > +		 * sufficiently different to the computed values
> > > > +		 * to cause problems.
> > > > +		 *
> > > > +		 * FIXME: should really copy more fuzzy state here
> > > > +		 */
> > > > +		new_crtc_state->fdi_m_n =3D old_crtc_state->fdi_m_n;
> > > > +		new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> > > > +		new_crtc_state->dp_m2_n2 =3D old_crtc_state->dp_m2_n2;
> > > > +		new_crtc_state->has_drrs =3D old_crtc_state->has_drrs;
> > > > +	}
> > > > +
> > > >  	if (any_ms && !check_digital_port_conflicts(state)) {
> > > >  		DRM_DEBUG_KMS("rejecting conflicting digital port configuration\=
n");
> > > >  		ret =3D EINVAL;
> > > > -- =

> > > > 2.19.1
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
