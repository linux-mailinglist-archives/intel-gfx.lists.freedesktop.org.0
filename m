Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28366128100
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 17:58:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3004F6E104;
	Fri, 20 Dec 2019 16:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 393D66E104
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 16:58:47 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 08:58:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="218526630"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga006.jf.intel.com with ESMTP; 20 Dec 2019 08:58:41 -0800
Date: Fri, 20 Dec 2019 09:00:18 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20191220170017.GB507@intel.com>
References: <20191219215117.929-1-manasi.d.navare@intel.com>
 <20191219215117.929-2-manasi.d.navare@intel.com>
 <20191220135941.GL1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220135941.GL1208@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/dp: Make port sync mode
 assignments only if all tiles present
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

On Fri, Dec 20, 2019 at 03:59:41PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Dec 19, 2019 at 01:51:16PM -0800, Manasi Navare wrote:
> > Add an extra check before making master slave assignments for tiled
> > displays to make sure we make these assignments only if all tiled
> > connectors are present. If not then initialize the state to defaults
> > so it does a normal non tiled modeset without transcoder port sync.
> > =

> > v2:
> > * Rename icl_add_sync_mode_crtcs
> > * Move this function just before .compute_config hook
> > * Check if DP before master slave assignments (Ville)
> > =

> > Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/5
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 162 +++++++++++--------
> >  1 file changed, 99 insertions(+), 63 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 00608d8cef50..9c1b1256be68 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -12014,88 +12014,106 @@ static bool c8_planes_changed(const struct i=
ntel_crtc_state *new_crtc_state)
> >  	return !old_crtc_state->c8_planes !=3D !new_crtc_state->c8_planes;
> >  }
> >  =

> > -static int icl_add_sync_mode_crtcs(struct intel_crtc_state *crtc_state)
> > +static void reset_port_sync_mode_state(struct intel_crtc_state *crtc_s=
tate)
> > +{
> > +	crtc_state->master_transcoder =3D INVALID_TRANSCODER;
> > +	crtc_state->sync_mode_slaves_mask =3D 0;
> > +}
> > +
> > +static int icl_compute_port_sync_crtc_state(struct drm_connector *conn=
ector,
> > +					    struct intel_crtc_state *crtc_state,
> > +					    int num_tiled_conns)
> >  {
> >  	struct drm_crtc *crtc =3D crtc_state->uapi.crtc;
> >  	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state=
->uapi.state);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->=
dev);
> > -	struct drm_connector *master_connector, *connector;
> > -	struct drm_connector_state *connector_state;
> > +	struct drm_connector *master_connector;
> >  	struct drm_connector_list_iter conn_iter;
> >  	struct drm_crtc *master_crtc =3D NULL;
> >  	struct drm_crtc_state *master_crtc_state;
> >  	struct intel_crtc_state *master_pipe_config;
> > -	int i, tile_group_id;
> >  =

> >  	if (INTEL_GEN(dev_priv) < 11)
> >  		return 0;
> >  =

> > +	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
> > +		return 0;
> > +
> >  	/*
> >  	 * In case of tiled displays there could be one or more slaves but th=
ere is
> >  	 * only one master. Lets make the CRTC used by the connector correspo=
nding
> >  	 * to the last horizonal and last vertical tile a master/genlock CRTC.
> >  	 * All the other CRTCs corresponding to other tiles of the same Tile =
group
> >  	 * are the slave CRTCs and hold a pointer to their genlock CRTC.
> > +	 * If all tiles not present do not make master slave assignments.
> > +	 *
> > +	 * FIXME: Add support for multiple tile grp ids in the future when su=
ch
> > +	 * panels are available.
> =

> What does that mean? Why would we treat mutliple groups as a single
> tiled display?
>

No we wont treat multiple tile grp ids as a single display but we need to s=
upport
multiple pile grp ids in the state so 2 pairs of master and slave.
 =

> >  	 */
> > -	for_each_new_connector_in_state(&state->base, connector, connector_st=
ate, i) {
> > -		if (connector_state->crtc !=3D crtc)
> > -			continue;
> > -		if (!connector->has_tile)
> > +	if (!connector->has_tile ||
> > +	    crtc_state->hw.mode.hdisplay !=3D connector->tile_h_size ||
> > +	    crtc_state->hw.mode.vdisplay !=3D connector->tile_v_size ||
> > +	    num_tiled_conns < connector->num_h_tile * connector->num_v_tile) {
> > +		reset_port_sync_mode_state(crtc_state);
> =

> I really don't understand this back and forth of setting/clearing
> the master/slave state. I think the way to make it not convoluted is
> to just clear everything in intel_crtc_prepare_cleared_state() and
> then just compute everything from scratch.
>

Hmm i can add that to intel_crtc_prepare_cleared_state(), but since we comp=
ute master crtc
and its crtc_state during slave's compute_Config, we cannot clear the state=
 if its master.
 =

> > +		return 0;
> > +	}
> > +	/* Last Horizontal and last vertical tile connector is a master
> > +	 * Master Trans for a Master CRTC is always INVALID.
> > +	 */
> > +	if (connector->tile_h_loc =3D=3D connector->num_h_tile - 1 &&
> > +	    connector->tile_v_loc =3D=3D connector->num_v_tile - 1) {
> > +		crtc_state->master_transcoder =3D INVALID_TRANSCODER;
> > +		return 0;
> > +	}
> > +
> > +	/* Loop through all connectors and configure the Slave crtc_state
> > +	 * to point to the correct master.
> > +	 */
> > +	reset_port_sync_mode_state(crtc_state);
> > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> > +	drm_for_each_connector_iter(master_connector, &conn_iter) {
> =

> Why are we all of a sudden iterating through all connectors? I think this
> should just iterate the connectors already in the state. The only place
> where we want to look at the full connector list is the modeset_all_tiles=
()
> thing.
>

This is how we had decided to do the master slave asignments and adding oth=
er crtc
corresponding to last tile (master) to state by iteratin through all connec=
tors.
This was sugested on IRC by Danvet and Maarten when I was finalizing the de=
sign in the code
for master slave assignments.

so basically for the master compute config, it just returns and this port s=
ync sonfig compute =

happens for the slave, if master slaves all not present so all tiles not pr=
esent then we reset the =

asignments and return.

And thats one of the reasons why i need the reset here since the corner cas=
es check happens here like
if all tiles are present if hdisplay vdisplay matches tile size, if not the=
n we should reset the master slave crtc states.

 =

> > +		struct drm_connector_state *master_conn_state =3D NULL;
> > +
> > +		if (!(master_connector->has_tile &&
> > +		      master_connector->tile_group->id =3D=3D connector->tile_group-=
>id))
> >  			continue;
> > -		if (crtc_state->hw.mode.hdisplay !=3D connector->tile_h_size ||
> > -		    crtc_state->hw.mode.vdisplay !=3D connector->tile_v_size)
> > -			return 0;
> > -		if (connector->tile_h_loc =3D=3D connector->num_h_tile - 1 &&
> > -		    connector->tile_v_loc =3D=3D connector->num_v_tile - 1)
> > +		if (master_connector->tile_h_loc !=3D master_connector->num_h_tile -=
 1 ||
> > +		    master_connector->tile_v_loc !=3D master_connector->num_v_tile -=
 1)
> >  			continue;
> > -		crtc_state->sync_mode_slaves_mask =3D 0;
> > -		tile_group_id =3D connector->tile_group->id;
> > -		drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> > -		drm_for_each_connector_iter(master_connector, &conn_iter) {
> > -			struct drm_connector_state *master_conn_state =3D NULL;
> >  =

> > -			if (!master_connector->has_tile)
> > -				continue;
> > -			if (master_connector->tile_h_loc !=3D master_connector->num_h_tile =
- 1 ||
> > -			    master_connector->tile_v_loc !=3D master_connector->num_v_tile =
- 1)
> > -				continue;
> > -			if (master_connector->tile_group->id !=3D tile_group_id)
> > -				continue;
> > -
> > -			master_conn_state =3D drm_atomic_get_connector_state(&state->base,
> > -									   master_connector);
> > -			if (IS_ERR(master_conn_state)) {
> > -				drm_connector_list_iter_end(&conn_iter);
> > -				return PTR_ERR(master_conn_state);
> > -			}
> > -			if (master_conn_state->crtc) {
> > -				master_crtc =3D master_conn_state->crtc;
> > -				break;
> > -			}
> > +		master_conn_state =3D drm_atomic_get_connector_state(&state->base,
> > +								   master_connector);
> > +		if (IS_ERR(master_conn_state)) {
> > +			drm_connector_list_iter_end(&conn_iter);
> > +			return PTR_ERR(master_conn_state);
> >  		}
> > -		drm_connector_list_iter_end(&conn_iter);
> > -
> > -		if (!master_crtc) {
> > -			DRM_DEBUG_KMS("Could not find Master CRTC for Slave CRTC %d\n",
> > -				      connector_state->crtc->base.id);
> > -			return -EINVAL;
> > +		if (master_conn_state->crtc) {
> > +			master_crtc =3D master_conn_state->crtc;
> > +			break;
> >  		}
> > +	}
> > +	drm_connector_list_iter_end(&conn_iter);
> >  =

> > -		master_crtc_state =3D drm_atomic_get_crtc_state(&state->base,
> > -							      master_crtc);
> > -		if (IS_ERR(master_crtc_state))
> > -			return PTR_ERR(master_crtc_state);
> > -
> > -		master_pipe_config =3D to_intel_crtc_state(master_crtc_state);
> > -		crtc_state->master_transcoder =3D master_pipe_config->cpu_transcoder;
> > -		master_pipe_config->sync_mode_slaves_mask |=3D
> > -			BIT(crtc_state->cpu_transcoder);
> > -		DRM_DEBUG_KMS("Master Transcoder =3D %s added for Slave CRTC =3D %d,=
 slave transcoder bitmask =3D %d\n",
> > -			      transcoder_name(crtc_state->master_transcoder),
> > -			      crtc_state->uapi.crtc->base.id,
> > -			      master_pipe_config->sync_mode_slaves_mask);
> > +	if (!master_crtc) {
> > +		DRM_DEBUG_KMS("Could not find Master CRTC for Slave CRTC %d\n",
> > +			      crtc->base.id);
> > +		return -EINVAL;
> >  	}
> >  =

> > +	master_crtc_state =3D drm_atomic_get_crtc_state(&state->base,
> > +						      master_crtc);
> > +	if (IS_ERR(master_crtc_state))
> > +		return PTR_ERR(master_crtc_state);
> > +
> > +	master_pipe_config =3D to_intel_crtc_state(master_crtc_state);
> > +	crtc_state->master_transcoder =3D master_pipe_config->cpu_transcoder;
> > +	master_pipe_config->sync_mode_slaves_mask |=3D
> > +		BIT(crtc_state->cpu_transcoder);
> > +	DRM_DEBUG_KMS("Master Transcoder =3D %s added for Slave CRTC =3D %d, =
slave transcoder bitmask =3D %d\n",
> > +		      transcoder_name(crtc_state->master_transcoder),
> > +		      crtc->base.id,
> > +		      master_pipe_config->sync_mode_slaves_mask);
> > +
> >  	return 0;
> >  }
> >  =

> > @@ -12660,7 +12678,7 @@ intel_modeset_pipe_config(struct intel_crtc_sta=
te *pipe_config)
> >  	struct drm_connector *connector;
> >  	struct drm_connector_state *connector_state;
> >  	int base_bpp, ret;
> > -	int i;
> > +	int i, tile_group_id =3D -1, num_tiled_conns =3D 0;
> >  	bool retry =3D true;
> >  =

> >  	pipe_config->cpu_transcoder =3D
> > @@ -12730,13 +12748,23 @@ intel_modeset_pipe_config(struct intel_crtc_s=
tate *pipe_config)
> >  	drm_mode_set_crtcinfo(&pipe_config->hw.adjusted_mode,
> >  			      CRTC_STEREO_DOUBLE);
> >  =

> > -	/* Set the crtc_state defaults for trans_port_sync */
> > -	pipe_config->master_transcoder =3D INVALID_TRANSCODER;
> > -	ret =3D icl_add_sync_mode_crtcs(pipe_config);
> > -	if (ret) {
> > -		DRM_DEBUG_KMS("Cannot assign Sync Mode CRTCs: %d\n",
> > -			      ret);
> > -		return ret;
> > +
> > +	/* Get tile_group_id of tiled connector */
> > +	for_each_new_connector_in_state(state, connector, connector_state, i)=
 {
> > +		if (connector_state->crtc =3D=3D crtc &&
> > +		    connector->has_tile) {
> > +			tile_group_id =3D connector->tile_group->id;
> > +			break;
> > +		}
> > +	}
> > +
> > +	/* Get total number of tiled connectors in state that belong to
> > +	 * this tile group.
> > +	 */
> > +	for_each_new_connector_in_state(state, connector, connector_state, i)=
 {
> > +		if (connector->has_tile &&
> > +		    connector->tile_group->id =3D=3D tile_group_id)
> > +			num_tiled_conns++;
> >  	}
> =

> I don't see why we would need this num_tiled_conns stuff at all. Just
> iterate all connectors in the state that belong to the same group.
>

Yea but if all tiles are not present meaning num_tiled_conns not equal to n=
um tiles then
we should not make master slave assignments, here the crtcs would not be sy=
nced and just operate
as an individual crtc not synced crtc. Like after we disconnect 1 connector=
, there is only 1 tiled conn connected
and in that case it still displays the lower non tiled mode but we should n=
ot make master slave asignments.

May be all these checks for hdisplay , vdisplay, num conns =3D=3D num_tiles=
 can be moved to intel_atomic_sync_mode_check at the beginning?

Manasi
 =

> >  =

> >  	/* Pass our mode to the connectors and the CRTC to give them a chance=
 to
> > @@ -12747,6 +12775,14 @@ intel_modeset_pipe_config(struct intel_crtc_st=
ate *pipe_config)
> >  		if (connector_state->crtc !=3D crtc)
> >  			continue;
> >  =

> > +		ret =3D icl_compute_port_sync_crtc_state(connector, pipe_config,
> > +						       num_tiled_conns);
> > +		if (ret) {
> > +			DRM_DEBUG_KMS("Cannot assign Sync Mode CRTCs: %d\n",
> > +				      ret);
> > +			return ret;
> > +		}
> > +
> >  		encoder =3D to_intel_encoder(connector_state->best_encoder);
> >  		ret =3D encoder->compute_config(encoder, pipe_config,
> >  					      connector_state);
> > -- =

> > 2.19.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
