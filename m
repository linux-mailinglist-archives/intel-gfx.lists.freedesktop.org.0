Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B0A1280DE
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 17:47:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C5996E0FC;
	Fri, 20 Dec 2019 16:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 294B26E0FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 16:47:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 08:47:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="210864058"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 20 Dec 2019 08:47:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Dec 2019 18:47:46 +0200
Date: Fri, 20 Dec 2019 18:47:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20191220164746.GR1208@intel.com>
References: <20191219215117.929-1-manasi.d.navare@intel.com>
 <20191220131727.GJ1208@intel.com> <20191220163557.GA507@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220163557.GA507@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Fri, Dec 20, 2019 at 08:35:58AM -0800, Manasi Navare wrote:
> On Fri, Dec 20, 2019 at 03:17:27PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Thu, Dec 19, 2019 at 01:51:15PM -0800, Manasi Navare wrote:
> > > In case of tiled displays, all the tiles are linke dto each other
> > > for transcoder port sync. So in intel_atomic_check() we need to make
> > > sure that we add all the tiles to the modeset and if one of the
> > > tiles needs a full modeset then mark all other tiles for a full modes=
et.
> > > =

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
> > >  drivers/gpu/drm/i915/display/intel_display.c | 143 +++++++++++++++++=
--
> > >  1 file changed, 131 insertions(+), 12 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index a3f9430493ae..00608d8cef50 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -13910,18 +13910,6 @@ static void intel_crtc_check_fastset(const s=
truct intel_crtc_state *old_crtc_sta
> > >  	new_crtc_state->uapi.mode_changed =3D false;
> > >  	new_crtc_state->update_pipe =3D true;
> > >  =

> > > -	/*
> > > -	 * If we're not doing the full modeset we want to
> > > -	 * keep the current M/N values as they may be
> > > -	 * sufficiently different to the computed values
> > > -	 * to cause problems.
> > > -	 *
> > > -	 * FIXME: should really copy more fuzzy state here
> > > -	 */
> > > -	new_crtc_state->fdi_m_n =3D old_crtc_state->fdi_m_n;
> > > -	new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> > > -	new_crtc_state->dp_m2_n2 =3D old_crtc_state->dp_m2_n2;
> > > -	new_crtc_state->has_drrs =3D old_crtc_state->has_drrs;
> > >  }
> > =

> > The check vs. copy should really be a separate patch. Otherwise we risk
> > having to revert the whole thing if something goes wrong.
> >
> =

> Yes will sepaarte it out , also I think Jose's series might get merged be=
fore mine so..
> =

>  =

> > >  =

> > >  static int intel_crtc_add_planes_to_state(struct intel_atomic_state =
*state,
> > > @@ -14032,6 +14020,105 @@ static int intel_atomic_check_crtcs(struct =
intel_atomic_state *state)
> > >  	return 0;
> > >  }
> > >  =

> > > +static void
> > > +intel_dp_modeset_synced_crtcs(struct intel_atomic_state *state)
> > =

> > I would remove "dp" from the names of all these functions. The fact
> > that we only enable port sync on DP outputs is just an implementation
> > detail we don't have/want to care about in higher level code like this.
> >
> =

> Okay will rename
>  =

> > > +{
> > > +	struct intel_crtc_state *new_crtc_state;
> > > +	struct intel_crtc *crtc;
> > > +	int i;
> > > +
> > > +	for_each_new_intel_crtc_in_state(state, crtc,
> > > +					 new_crtc_state, i) {
> > > +		if (is_trans_port_sync_mode(new_crtc_state)) {
> > > +			new_crtc_state->uapi.mode_changed =3D true;
> > > +			new_crtc_state->update_pipe =3D false;
> > > +		}
> > > +	}
> > > +}
> > > +
> > > +static void
> > > +intel_dp_atomic_check_synced_crtcs(struct intel_atomic_state *state)
> > > +{
> > > +	struct intel_crtc_state *new_crtc_state;
> > > +	struct intel_crtc *crtc;
> > > +	int i;
> > > +
> > > +	for_each_new_intel_crtc_in_state(state, crtc,
> > > +					 new_crtc_state, i) {
> > > +		if (!is_trans_port_sync_mode(new_crtc_state) ||
> > > +		    !needs_modeset(new_crtc_state))
> > > +			continue;
> > > +
> > > +		intel_dp_modeset_synced_crtcs(state);
> > > +	}
> > =

> > This is not sufficient for the pre-compute_config() check. The point is
> > that we don't yet necessarily have the synced crtcs in the atomic state
> > so we have to add them. Please have a look in my branch for what I mean
> > exactly.
> >
> =

> But if I use old crtc state or new crtc state here, I do see that since w=
e havent
> cleared the state yet, we do have all synced crtcs in the state , like he=
re after I disconnect 1 conn,
> I do see both conns in trans port sync mode and i can set the mode change=
d to true for both.
> =

> I dont understand why what you mean by we would beed to add them?

for_each_new_intel_crtc_in_state() only iterates the crtcs we've already
added to the state, not all crtcs. The whole point of the
pre-compute_config() check is that we add the ones that were previously
synced but weren't yet added to the state. This for the case where the
tile info has gone poof so the function that adds stuff based on the
tile info will have missed them.

>  =

> > For the check between the fastset check vs. copy this here should work.
> > =

> > > +}
> > > +
> > > +static int
> > > +intel_dp_modeset_all_tiles(struct intel_atomic_state *state, int til=
e_grp_id)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > +	struct drm_connector *connector;
> > > +	struct drm_connector_list_iter conn_list_iter;
> > =

> > 'conn_iter' is the customary name.
> >
> =

> ok
>  =

> > > +
> > > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_list_iter);
> > > +	drm_for_each_connector_iter(connector, &conn_list_iter) {
> > > +		struct drm_connector_state *conn_iter_state;
> > =

> > 'conn_state'
> >
> =

> ok
>  =

> > > +		struct drm_crtc_state *crtc_state;
> > > +
> > > +		if (!(connector->has_tile &&
> > > +		      connector->tile_group->id =3D=3D tile_grp_id))
> > > +			continue;
> > =

> > or maybe !has_tile || tile_grrp !=3D tile_grp
> > =

> > I find that form a bit easier on the eyes. But either will work.
> >
> =

> Ok
>  =

> > > +		conn_iter_state =3D drm_atomic_get_connector_state(&state->base,
> > > +								 connector);
> > > +		if (IS_ERR(conn_iter_state)) {
> > > +			drm_connector_list_iter_end(&conn_list_iter);
> > > +			return PTR_ERR(conn_iter_state);
> > =

> > nit: could just do 'ret =3D PTR_ERR(); break;'
> >      and 'int ret=3D0;' + 'return ret' at the fars ends of the function.
> >
> =

> ok
>  =

> > > +		}
> > > +
> > > +		if (!conn_iter_state->crtc)
> > > +			continue;
> > > +
> > > +		crtc_state =3D drm_atomic_get_crtc_state(&state->base,
> > > +						       conn_iter_state->crtc);
> > > +		if (IS_ERR(crtc_state)) {
> > > +			drm_connector_list_iter_end(&conn_list_iter);
> > > +			return PTR_ERR(conn_iter_state);
> > > +		}
> > > +		crtc_state->mode_changed =3D true;
> > =

> > Missing drm_atomic_add_affected_planes(). We also need that in the
> > pre-compute_config() check_synced_crtcs().
> >
> =

> Manasi
> =

> =

> Oh we need to call this function along with mode_changed =3D true?
>  =

> > > +	}
> > > +	drm_connector_list_iter_end(&conn_list_iter);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int
> > > +intel_dp_atomic_check_tiled_conns(struct intel_atomic_state *state)
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
> > > +		if (!intel_connector_needs_modeset(state, old_conn_state,
> > > +						   new_conn_state))
> > > +			continue;
> > > +
> > > +		ret =3D intel_dp_modeset_all_tiles(state, connector->tile_group->i=
d);
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
> > > @@ -14059,6 +14146,12 @@ static int intel_atomic_check(struct drm_dev=
ice *dev,
> > >  	if (ret)
> > >  		goto fail;
> > >  =

> > > +	ret =3D intel_dp_atomic_check_tiled_conns(state);
> > > +	if (ret)
> > > +		goto fail;
> > > +
> > > +	intel_dp_atomic_check_synced_crtcs(state);
> > > +
> > >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > >  					    new_crtc_state, i) {
> > >  		if (!needs_modeset(new_crtc_state)) {
> > > @@ -14089,6 +14182,32 @@ static int intel_atomic_check(struct drm_dev=
ice *dev,
> > >  			any_ms =3D true;
> > >  	}
> > >  =

> > > +	/*
> > > +	 * In case of port synced crtcs, if one of the synced crtcs
> > > +	 * needs a full modeset, all other synced crtcs should be
> > > +	 * forced a full modeset.
> > > +	 */
> > > +	intel_dp_atomic_check_synced_crtcs(state);
> > > +
> > > +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > > +					    new_crtc_state, i) {
> > > +		if (needs_modeset(new_crtc_state))
> > > +			continue;
> > > +
> > > +		/*
> > > +		 * If we're not doing the full modeset we want to
> > > +		 * keep the current M/N values as they may be
> > > +		 * sufficiently different to the computed values
> > > +		 * to cause problems.
> > > +		 *
> > > +		 * FIXME: should really copy more fuzzy state here
> > > +		 */
> > > +		new_crtc_state->fdi_m_n =3D old_crtc_state->fdi_m_n;
> > > +		new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> > > +		new_crtc_state->dp_m2_n2 =3D old_crtc_state->dp_m2_n2;
> > > +		new_crtc_state->has_drrs =3D old_crtc_state->has_drrs;
> > =

> > Same comment I gave in Jose's patch: Pls keep this in a separate
> > function. My branch has an example.
> > =

> > > +	}
> > > +
> > >  	if (any_ms && !check_digital_port_conflicts(state)) {
> > >  		DRM_DEBUG_KMS("rejecting conflicting digital port configuration\n"=
);
> > >  		ret =3D EINVAL;
> > > -- =

> > > 2.19.1
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
