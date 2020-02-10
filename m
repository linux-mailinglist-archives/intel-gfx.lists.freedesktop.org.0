Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B4315733B
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 12:04:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC6F6EBF5;
	Mon, 10 Feb 2020 11:04:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D63D6EBF5
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 11:04:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 03:04:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,424,1574150400"; d="scan'208";a="221515254"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga007.jf.intel.com with ESMTP; 10 Feb 2020 03:04:10 -0800
Date: Mon, 10 Feb 2020 03:05:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200210110529.GC5808@intel.com>
References: <20200203074756.10549-1-manasi.d.navare@intel.com>
 <20200203074756.10549-2-manasi.d.navare@intel.com>
 <20200205142543.GH13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205142543.GH13686@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/dp: Compute port sync crtc
 states post compute_config()
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

Thanks for the review will make the changes and add your r-b

Manasi

On Wed, Feb 05, 2020 at 04:25:44PM +0200, Ville Syrj=E4l=E4 wrote:
> On Sun, Feb 02, 2020 at 11:47:55PM -0800, Manasi Navare wrote:
> > This patch pushes out the computation of master and slave
> > transcoders in crtc states after encoder's compute_config hook.
> > This ensures that the assigned master slave crtcs have exact same
> > mode and timings which is a requirement for Port sync mode
> > to be enabled.
> > =

> > v2:
> > * Correct indentation
> > * Rename to intel_ddi_port_sync_transcoders (Ville)
> > * remove unwanted debug (Ville)
> > =

> > Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c     | 109 +++++++++++++
> >  drivers/gpu/drm/i915/display/intel_display.c | 159 +------------------
> >  2 files changed, 110 insertions(+), 158 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index aa066fb9eb00..eb970797cd68 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4448,6 +4448,114 @@ static int intel_ddi_compute_config(struct inte=
l_encoder *encoder,
> >  	return 0;
> >  }
> >  =

> > +static bool mode_equal(const struct drm_display_mode *mode1,
> > +		       const struct drm_display_mode *mode2)
> > +{
> > +	return drm_mode_match(mode1, mode2,
> > +			      DRM_MODE_MATCH_TIMINGS |
> > +			      DRM_MODE_MATCH_FLAGS |
> > +			      DRM_MODE_MATCH_3D_FLAGS) &&
> > +		mode1->clock =3D=3D mode2->clock; /* we want an exact match */
> > +}
> > +
> > +static bool m_n_equal(const struct intel_link_m_n *m_n_1,
> > +		      const struct intel_link_m_n *m_n_2)
> > +{
> > +	return m_n_1->tu =3D=3D m_n_2->tu &&
> > +		m_n_1->gmch_m =3D=3D m_n_2->gmch_m &&
> > +		m_n_1->gmch_n =3D=3D m_n_2->gmch_n &&
> > +		m_n_1->link_m =3D=3D m_n_2->link_m &&
> > +		m_n_1->link_n =3D=3D m_n_2->link_n;
> > +}
> > +
> > +static bool crtcs_port_sync_compatible(const struct intel_crtc_state *=
crtc_state1,
> > +				       const struct intel_crtc_state *crtc_state2)
> > +{
> > +	return crtc_state1->hw.active && crtc_state2->hw.active &&
> > +		crtc_state1->output_types =3D=3D crtc_state2->output_types &&
> > +		crtc_state1->output_format =3D=3D crtc_state2->output_format &&
> > +		crtc_state1->lane_count =3D=3D crtc_state2->lane_count &&
> > +		crtc_state1->port_clock =3D=3D crtc_state2->port_clock &&
> > +		mode_equal(&crtc_state1->hw.adjusted_mode,
> > +			   &crtc_state2->hw.adjusted_mode) &&
> > +		m_n_equal(&crtc_state1->dp_m_n, &crtc_state2->dp_m_n);
> > +}
> > +
> > +static u8
> > +intel_ddi_port_sync_transcoders(const struct intel_crtc_state *ref_crt=
c_state,
> > +				int tile_group_id)
> > +{
> > +	struct drm_connector *connector;
> > +	struct drm_connector_state *conn_state;
> =

> Can be const
> =

> > +	struct drm_i915_private *dev_priv =3D to_i915(ref_crtc_state->uapi.cr=
tc->dev);
> > +	struct intel_atomic_state *state =3D
> > +		to_intel_atomic_state(ref_crtc_state->uapi.state);
> > +	u8 transcoders =3D 0;
> > +	int i;
> > +
> > +	if (INTEL_GEN(dev_priv) < 11)
> > +		return 0;
> > +
> > +	if (!intel_crtc_has_type(ref_crtc_state, INTEL_OUTPUT_DP))
> > +		return 0;
> > +
> > +	for_each_new_connector_in_state(&state->base, connector, conn_state, =
i) {
> > +		struct intel_crtc *crtc =3D to_intel_crtc(conn_state->crtc);
> > +		struct intel_crtc_state *crtc_state =3D NULL;
> =

> Can be const
> =

> Pointless NULL initialization.
> =

> > +
> > +		if (!crtc)
> > +			continue;
> > +
> > +		if (!(connector->has_tile &&
> > +		      connector->tile_group->id =3D=3D
> > +		      tile_group_id))
> =

> I'd write that as =

> if (!has_tile || id !=3D group_id)
> =

> Looks like some pointless newlines in there. Makes it look a bit ugly.
> =

> Otherwise lgtm
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> > +			continue;
> > +
> > +		crtc_state =3D intel_atomic_get_new_crtc_state(state,
> > +							     crtc);
> > +		if (!crtcs_port_sync_compatible(ref_crtc_state,
> > +						crtc_state))
> > +			continue;
> > +
> > +		transcoders |=3D BIT(crtc_state->cpu_transcoder);
> > +	}
> > +
> > +	return transcoders;
> > +}
> > +
> > +static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
> > +					 struct intel_crtc_state *crtc_state,
> > +					 struct drm_connector_state *conn_state)
> > +{
> > +	struct drm_connector *connector =3D conn_state->connector;
> > +	u8 port_sync_transcoders =3D 0;
> > +
> > +	DRM_DEBUG_KMS("[ENCODER:%d:%s] [CRTC:%d:%s]",
> > +		      encoder->base.base.id, encoder->base.name,
> > +		      crtc_state->uapi.crtc->base.id, crtc_state->uapi.crtc->name);
> > +
> > +	if (connector->has_tile)
> > +		port_sync_transcoders =3D intel_ddi_port_sync_transcoders(crtc_state,
> > +									connector->tile_group->id);
> > +
> > +	/*
> > +	 * EDP Transcoders cannot be ensalved
> > +	 * make them a master always when present
> > +	 */
> > +	if (port_sync_transcoders & BIT(TRANSCODER_EDP))
> > +		crtc_state->master_transcoder =3D TRANSCODER_EDP;
> > +	else
> > +		crtc_state->master_transcoder =3D ffs(port_sync_transcoders) - 1;
> > +
> > +	if (crtc_state->master_transcoder =3D=3D crtc_state->cpu_transcoder) {
> > +		crtc_state->master_transcoder =3D INVALID_TRANSCODER;
> > +		crtc_state->sync_mode_slaves_mask =3D
> > +			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> >  static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
> >  {
> >  	struct intel_digital_port *dig_port =3D enc_to_dig_port(to_intel_enco=
der(encoder));
> > @@ -4757,6 +4865,7 @@ void intel_ddi_init(struct drm_i915_private *dev_=
priv, enum port port)
> >  	encoder->hotplug =3D intel_ddi_hotplug;
> >  	encoder->compute_output_type =3D intel_ddi_compute_output_type;
> >  	encoder->compute_config =3D intel_ddi_compute_config;
> > +	encoder->compute_config_late =3D intel_ddi_compute_config_late;
> >  	encoder->enable =3D intel_enable_ddi;
> >  	encoder->pre_pll_enable =3D intel_ddi_pre_pll_enable;
> >  	encoder->pre_enable =3D intel_ddi_pre_enable;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 2a2c9dd563e5..a943787167de 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -12564,126 +12564,6 @@ static bool c8_planes_changed(const struct in=
tel_crtc_state *new_crtc_state)
> >  	return !old_crtc_state->c8_planes !=3D !new_crtc_state->c8_planes;
> >  }
> >  =

> > -static bool
> > -intel_atomic_is_master_connector(struct intel_crtc_state *crtc_state)
> > -{
> > -	struct drm_crtc *crtc =3D crtc_state->uapi.crtc;
> > -	struct drm_atomic_state *state =3D crtc_state->uapi.state;
> > -	struct drm_connector *connector;
> > -	struct drm_connector_state *connector_state;
> > -	int i;
> > -
> > -	for_each_new_connector_in_state(state, connector, connector_state, i)=
 {
> > -		if (connector_state->crtc !=3D crtc)
> > -			continue;
> > -		if (connector->has_tile &&
> > -		    connector->tile_h_loc =3D=3D connector->num_h_tile - 1 &&
> > -		    connector->tile_v_loc =3D=3D connector->num_v_tile - 1)
> > -			return true;
> > -	}
> > -
> > -	return false;
> > -}
> > -
> > -static void reset_port_sync_mode_state(struct intel_crtc_state *crtc_s=
tate)
> > -{
> > -	crtc_state->master_transcoder =3D INVALID_TRANSCODER;
> > -	crtc_state->sync_mode_slaves_mask =3D 0;
> > -}
> > -
> > -static int icl_compute_port_sync_crtc_state(struct drm_connector *conn=
ector,
> > -					    struct intel_crtc_state *crtc_state,
> > -					    int num_tiled_conns)
> > -{
> > -	struct drm_crtc *crtc =3D crtc_state->uapi.crtc;
> > -	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state=
->uapi.state);
> > -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->=
dev);
> > -	struct drm_connector *master_connector;
> > -	struct drm_connector_list_iter conn_iter;
> > -	struct drm_crtc *master_crtc =3D NULL;
> > -	struct drm_crtc_state *master_crtc_state;
> > -	struct intel_crtc_state *master_pipe_config;
> > -
> > -	if (INTEL_GEN(dev_priv) < 11)
> > -		return 0;
> > -
> > -	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
> > -		return 0;
> > -
> > -	/*
> > -	 * In case of tiled displays there could be one or more slaves but th=
ere is
> > -	 * only one master. Lets make the CRTC used by the connector correspo=
nding
> > -	 * to the last horizonal and last vertical tile a master/genlock CRTC.
> > -	 * All the other CRTCs corresponding to other tiles of the same Tile =
group
> > -	 * are the slave CRTCs and hold a pointer to their genlock CRTC.
> > -	 * If all tiles not present do not make master slave assignments.
> > -	 */
> > -	if (!connector->has_tile ||
> > -	    crtc_state->hw.mode.hdisplay !=3D connector->tile_h_size ||
> > -	    crtc_state->hw.mode.vdisplay !=3D connector->tile_v_size ||
> > -	    num_tiled_conns < connector->num_h_tile * connector->num_v_tile) {
> > -		reset_port_sync_mode_state(crtc_state);
> > -		return 0;
> > -	}
> > -	/* Last Horizontal and last vertical tile connector is a master
> > -	 * Master's crtc state is already populated in slave for port sync
> > -	 */
> > -	if (connector->tile_h_loc =3D=3D connector->num_h_tile - 1 &&
> > -	    connector->tile_v_loc =3D=3D connector->num_v_tile - 1)
> > -		return 0;
> > -
> > -	/* Loop through all connectors and configure the Slave crtc_state
> > -	 * to point to the correct master.
> > -	 */
> > -	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> > -	drm_for_each_connector_iter(master_connector, &conn_iter) {
> > -		struct drm_connector_state *master_conn_state =3D NULL;
> > -
> > -		if (!(master_connector->has_tile &&
> > -		      master_connector->tile_group->id =3D=3D connector->tile_group-=
>id))
> > -			continue;
> > -		if (master_connector->tile_h_loc !=3D master_connector->num_h_tile -=
 1 ||
> > -		    master_connector->tile_v_loc !=3D master_connector->num_v_tile -=
 1)
> > -			continue;
> > -
> > -		master_conn_state =3D drm_atomic_get_connector_state(&state->base,
> > -								   master_connector);
> > -		if (IS_ERR(master_conn_state)) {
> > -			drm_connector_list_iter_end(&conn_iter);
> > -			return PTR_ERR(master_conn_state);
> > -		}
> > -		if (master_conn_state->crtc) {
> > -			master_crtc =3D master_conn_state->crtc;
> > -			break;
> > -		}
> > -	}
> > -	drm_connector_list_iter_end(&conn_iter);
> > -
> > -	if (!master_crtc) {
> > -		drm_dbg_kms(&dev_priv->drm,
> > -			    "Could not find Master CRTC for Slave CRTC %d\n",
> > -			    crtc->base.id);
> > -		return -EINVAL;
> > -	}
> > -
> > -	master_crtc_state =3D drm_atomic_get_crtc_state(&state->base,
> > -						      master_crtc);
> > -	if (IS_ERR(master_crtc_state))
> > -		return PTR_ERR(master_crtc_state);
> > -
> > -	master_pipe_config =3D to_intel_crtc_state(master_crtc_state);
> > -	crtc_state->master_transcoder =3D master_pipe_config->cpu_transcoder;
> > -	master_pipe_config->sync_mode_slaves_mask |=3D
> > -		BIT(crtc_state->cpu_transcoder);
> > -	drm_dbg_kms(&dev_priv->drm,
> > -		    "Master Transcoder =3D %s added for Slave CRTC =3D %d, slave tra=
nscoder bitmask =3D %d\n",
> > -		    transcoder_name(crtc_state->master_transcoder),
> > -		    crtc->base.id,
> > -		    master_pipe_config->sync_mode_slaves_mask);
> > -
> > -	return 0;
> > -}
> > -
> >  static u16 hsw_linetime_wm(const struct intel_crtc_state *crtc_state)
> >  {
> >  	const struct drm_display_mode *adjusted_mode =3D
> > @@ -13332,15 +13212,6 @@ intel_crtc_prepare_cleared_state(struct intel_=
crtc_state *crtc_state)
> >  	if (IS_G4X(dev_priv) ||
> >  	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> >  		saved_state->wm =3D crtc_state->wm;
> > -	/*
> > -	 * Save the slave bitmask which gets filled for master crtc state dur=
ing
> > -	 * slave atomic check call. For all other CRTCs reset the port sync v=
ariables
> > -	 * crtc_state->master_transcoder needs to be set to INVALID
> > -	 */
> > -	reset_port_sync_mode_state(saved_state);
> > -	if (intel_atomic_is_master_connector(crtc_state))
> > -		saved_state->sync_mode_slaves_mask =3D
> > -			crtc_state->sync_mode_slaves_mask;
> >  =

> >  	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
> >  	kfree(saved_state);
> > @@ -13358,8 +13229,7 @@ intel_modeset_pipe_config(struct intel_crtc_sta=
te *pipe_config)
> >  	struct drm_i915_private *i915 =3D to_i915(pipe_config->uapi.crtc->dev=
);
> >  	struct drm_connector *connector;
> >  	struct drm_connector_state *connector_state;
> > -	int base_bpp, ret;
> > -	int i, tile_group_id =3D -1, num_tiled_conns =3D 0;
> > +	int base_bpp, ret, i;
> >  	bool retry =3D true;
> >  =

> >  	pipe_config->cpu_transcoder =3D
> > @@ -13431,24 +13301,6 @@ intel_modeset_pipe_config(struct intel_crtc_st=
ate *pipe_config)
> >  	drm_mode_set_crtcinfo(&pipe_config->hw.adjusted_mode,
> >  			      CRTC_STEREO_DOUBLE);
> >  =

> > -	/* Get tile_group_id of tiled connector */
> > -	for_each_new_connector_in_state(state, connector, connector_state, i)=
 {
> > -		if (connector_state->crtc =3D=3D crtc &&
> > -		    connector->has_tile) {
> > -			tile_group_id =3D connector->tile_group->id;
> > -			break;
> > -		}
> > -	}
> > -
> > -	/* Get total number of tiled connectors in state that belong to
> > -	 * this tile group.
> > -	 */
> > -	for_each_new_connector_in_state(state, connector, connector_state, i)=
 {
> > -		if (connector->has_tile &&
> > -		    connector->tile_group->id =3D=3D tile_group_id)
> > -			num_tiled_conns++;
> > -	}
> > -
> >  	/* Pass our mode to the connectors and the CRTC to give them a chance=
 to
> >  	 * adjust it according to limitations or connector properties, and al=
so
> >  	 * a chance to reject the mode entirely.
> > @@ -13460,15 +13312,6 @@ intel_modeset_pipe_config(struct intel_crtc_st=
ate *pipe_config)
> >  		if (connector_state->crtc !=3D crtc)
> >  			continue;
> >  =

> > -		ret =3D icl_compute_port_sync_crtc_state(connector, pipe_config,
> > -						       num_tiled_conns);
> > -		if (ret) {
> > -			drm_dbg_kms(&i915->drm,
> > -				    "Cannot assign Sync Mode CRTCs: %d\n",
> > -				    ret);
> > -			return ret;
> > -		}
> > -
> >  		ret =3D encoder->compute_config(encoder, pipe_config,
> >  					      connector_state);
> >  		if (ret < 0) {
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
