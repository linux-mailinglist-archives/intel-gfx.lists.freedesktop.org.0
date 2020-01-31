Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B30C14F179
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 18:43:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 560446FBB6;
	Fri, 31 Jan 2020 17:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 163A26FBB6
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 17:43:46 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 09:43:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="310063694"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 31 Jan 2020 09:43:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 Jan 2020 19:43:42 +0200
Date: Fri, 31 Jan 2020 19:43:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200131174342.GU13686@intel.com>
References: <20200131171547.25938-1-manasi.d.navare@intel.com>
 <20200131171547.25938-2-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200131171547.25938-2-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/dp: Compute port sync crtc
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

On Fri, Jan 31, 2020 at 09:15:46AM -0800, Manasi Navare wrote:
> This patch pushes out the computation of master and slave
> transcoders in crtc states after encoder's compute_config hook.
> This ensures that the assigned master slave crtcs have exact same
> mode and timings which is a requirement for Port sync mode
> to be enabled.
> =

> Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 125 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c | 156 -------------------
>  2 files changed, 125 insertions(+), 156 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index c96f629cddc3..4ec36eb5ce28 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4440,6 +4440,130 @@ static int intel_ddi_compute_config(struct intel_=
encoder *encoder,
>  	return 0;
>  }
>  =

> +static bool mode_equal(const struct drm_display_mode *mode1,
> +		       const struct drm_display_mode *mode2)
> +{
> +	return drm_mode_match(mode1, mode2,
> +			      DRM_MODE_MATCH_TIMINGS |
> +			      DRM_MODE_MATCH_FLAGS |
> +			      DRM_MODE_MATCH_3D_FLAGS) &&
> +		mode1->clock =3D=3D mode2->clock; /* we want an exact match */

Trying to remember why we chose .clock rather than .crtc_clock... Ah,
because drm_mode_match() anyway looks at the non-crtc timings. Yeah,
should work fine since we make sure the 3D flags match so the crtc
timings vs non-crtc timings should be consistent for each one.

> +}
> +
> +static bool m_n_equal(const struct intel_link_m_n *m_n_1,
> +		      const struct intel_link_m_n *m_n_2)
> +{
> +	return m_n_1->tu =3D=3D m_n_2->tu &&
> +		m_n_1->gmch_m =3D=3D m_n_2->gmch_m &&
> +		m_n_1->gmch_n =3D=3D m_n_2->gmch_n &&
> +		m_n_1->link_m =3D=3D m_n_2->link_m &&
> +		m_n_1->link_n =3D=3D m_n_2->link_n;
> +}
> +
> +static bool crtcs_port_sync_compatible(struct intel_crtc_state *crtc_sta=
te1,
> +				       struct intel_crtc_state *crtc_state2)
> +{
> +	return crtc_state1->hw.active && crtc_state2->hw.active &&
> +		crtc_state1->output_types =3D=3D crtc_state2->output_types &&
> +		crtc_state1->output_format =3D=3D crtc_state2->output_format &&
> +		crtc_state1->lane_count =3D=3D crtc_state2->lane_count &&
> +		crtc_state1->port_clock =3D=3D crtc_state2->port_clock &&
> +		mode_equal(&crtc_state1->hw.adjusted_mode,
> +			   &crtc_state2->hw.adjusted_mode) &&
> +		m_n_equal(&crtc_state1->dp_m_n, &crtc_state2->dp_m_n);
> +}
> +
> +static u8
> +intel_ddi_compute_port_sync_crtc_state

The name is misleading. something_port_sync_transcoders() etc. to
better describe what it returns.

>					 (struct drm_connector *ref_connector,

You don't need the whole connector. The tile group id will suffice.

> +				       struct intel_crtc_state *ref_crtc_state)

const

> +{
> +	struct drm_connector *connector;
> +	struct drm_connector_state *conn_state;
> +	struct drm_i915_private *dev_priv =3D to_i915(ref_crtc_state->uapi.crtc=
->dev);
> +	struct intel_atomic_state *state =3D
> +		to_intel_atomic_state(ref_crtc_state->uapi.state);
> +	struct intel_crtc *ref_crtc =3D to_intel_crtc(ref_crtc_state->uapi.crtc=
);
> +	u8 transcoders =3D 0;
> +	int i;
> +
> +	DRM_DEBUG_KMS("for [CRTC:%d:%s]\n",
> +		      ref_crtc_state->uapi.crtc->base.id,
> +		      ref_crtc_state->uapi.crtc->name);

More noise than signal. Pls remove.

> +
> +	if (INTEL_GEN(dev_priv) < 11)
> +		return 0;
> +
> +	if (!intel_crtc_has_type(ref_crtc_state, INTEL_OUTPUT_DP))
> +		return 0;
> +
> +	for_each_new_connector_in_state(&state->base, connector, conn_state, i)=
 {
> +		struct intel_crtc *crtc =3D to_intel_crtc(conn_state->crtc);
> +		struct intel_crtc_state *crtc_state =3D NULL;
> +
> +		if (!crtc)
> +			continue;
> +
> +		if (!(connector->has_tile &&
> +		      connector->tile_group->id =3D=3D
> +		      ref_connector->tile_group->id))
> +			continue;
> +
> +		crtc_state =3D intel_atomic_get_new_crtc_state(state,
> +							     crtc);
> +		if (!crtcs_port_sync_compatible(ref_crtc_state,
> +						crtc_state)) {
> +			DRM_DEBUG_KMS("[CRTC:%d:%s] and [CRTC:%d:%s] not Port Sync Compatible=
\n",
> +				      ref_crtc->base.base.id,
> +				      ref_crtc->base.name,
> +				      crtc->base.base.id, crtc->base.name);

Another noisy debug. The state dump will tell us everything we need to
know. If not we should improve the state dump instead.

> +			continue;
> +		}
> +
> +		transcoders |=3D BIT(crtc_state->cpu_transcoder);
> +	}
> +
> +		return transcoders;

indent fail

> +}
> +
> +static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
> +					 struct intel_crtc_state *crtc_state,
> +					 struct drm_connector_state *conn_state)
> +{
> +	struct drm_connector *connector =3D conn_state->connector;
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	u8 port_sync_transcoders =3D 0;
> +
> +	DRM_DEBUG_KMS("[ENCODER:%d:%s] [CRTC:%d:%s]",
> +		      encoder->base.base.id, encoder->base.name,
> +		      crtc_state->uapi.crtc->base.id, crtc_state->uapi.crtc->name);
> +
> +	if (connector->has_tile)
> +		port_sync_transcoders =3D intel_ddi_compute_port_sync_crtc_state(conne=
ctor,
> +									       crtc_state);
> +
> +	/*
> +	 * EDP Transcoders cannot be ensalved
> +	 * make them a master always when present
> +	 */
> +	if (port_sync_transcoders & BIT(TRANSCODER_EDP))
> +		crtc_state->master_transcoder =3D TRANSCODER_EDP;
> +	else
> +		crtc_state->master_transcoder =3D ffs(port_sync_transcoders) - 1;
> +
> +	if (crtc_state->master_transcoder =3D=3D crtc_state->cpu_transcoder) {
> +		crtc_state->master_transcoder =3D INVALID_TRANSCODER;
> +		crtc_state->sync_mode_slaves_mask =3D
> +			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
> +	}
> +
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "Master Transcoder =3D %s , Slave transcoder bitmask =3D 0x%08x\n",
> +		    transcoder_name(crtc_state->master_transcoder),
> +		    crtc_state->sync_mode_slaves_mask);

Redundant. Again it's part of the state dump anyway. Pls remove.

> +
> +	return 0;
> +}
> +
>  static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
>  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(to_intel_encode=
r(encoder));
> @@ -4749,6 +4873,7 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>  	encoder->hotplug =3D intel_ddi_hotplug;
>  	encoder->compute_output_type =3D intel_ddi_compute_output_type;
>  	encoder->compute_config =3D intel_ddi_compute_config;
> +	encoder->compute_config_late =3D intel_ddi_compute_config_late;
>  	encoder->enable =3D intel_enable_ddi;
>  	encoder->pre_pll_enable =3D intel_ddi_pre_pll_enable;
>  	encoder->pre_enable =3D intel_ddi_pre_enable;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index de4ab51216f6..e638543f5f87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -12545,126 +12545,6 @@ static bool c8_planes_changed(const struct inte=
l_crtc_state *new_crtc_state)
>  	return !old_crtc_state->c8_planes !=3D !new_crtc_state->c8_planes;
>  }
>  =

> -static bool
> -intel_atomic_is_master_connector(struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_crtc *crtc =3D crtc_state->uapi.crtc;
> -	struct drm_atomic_state *state =3D crtc_state->uapi.state;
> -	struct drm_connector *connector;
> -	struct drm_connector_state *connector_state;
> -	int i;
> -
> -	for_each_new_connector_in_state(state, connector, connector_state, i) {
> -		if (connector_state->crtc !=3D crtc)
> -			continue;
> -		if (connector->has_tile &&
> -		    connector->tile_h_loc =3D=3D connector->num_h_tile - 1 &&
> -		    connector->tile_v_loc =3D=3D connector->num_v_tile - 1)
> -			return true;
> -	}
> -
> -	return false;
> -}
> -
> -static void reset_port_sync_mode_state(struct intel_crtc_state *crtc_sta=
te)
> -{
> -	crtc_state->master_transcoder =3D INVALID_TRANSCODER;
> -	crtc_state->sync_mode_slaves_mask =3D 0;
> -}
> -
> -static int icl_compute_port_sync_crtc_state(struct drm_connector *connec=
tor,
> -					    struct intel_crtc_state *crtc_state,
> -					    int num_tiled_conns)
> -{
> -	struct drm_crtc *crtc =3D crtc_state->uapi.crtc;
> -	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state->=
uapi.state);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	struct drm_connector *master_connector;
> -	struct drm_connector_list_iter conn_iter;
> -	struct drm_crtc *master_crtc =3D NULL;
> -	struct drm_crtc_state *master_crtc_state;
> -	struct intel_crtc_state *master_pipe_config;
> -
> -	if (INTEL_GEN(dev_priv) < 11)
> -		return 0;
> -
> -	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
> -		return 0;
> -
> -	/*
> -	 * In case of tiled displays there could be one or more slaves but ther=
e is
> -	 * only one master. Lets make the CRTC used by the connector correspond=
ing
> -	 * to the last horizonal and last vertical tile a master/genlock CRTC.
> -	 * All the other CRTCs corresponding to other tiles of the same Tile gr=
oup
> -	 * are the slave CRTCs and hold a pointer to their genlock CRTC.
> -	 * If all tiles not present do not make master slave assignments.
> -	 */
> -	if (!connector->has_tile ||
> -	    crtc_state->hw.mode.hdisplay !=3D connector->tile_h_size ||
> -	    crtc_state->hw.mode.vdisplay !=3D connector->tile_v_size ||
> -	    num_tiled_conns < connector->num_h_tile * connector->num_v_tile) {
> -		reset_port_sync_mode_state(crtc_state);
> -		return 0;
> -	}
> -	/* Last Horizontal and last vertical tile connector is a master
> -	 * Master's crtc state is already populated in slave for port sync
> -	 */
> -	if (connector->tile_h_loc =3D=3D connector->num_h_tile - 1 &&
> -	    connector->tile_v_loc =3D=3D connector->num_v_tile - 1)
> -		return 0;
> -
> -	/* Loop through all connectors and configure the Slave crtc_state
> -	 * to point to the correct master.
> -	 */
> -	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> -	drm_for_each_connector_iter(master_connector, &conn_iter) {
> -		struct drm_connector_state *master_conn_state =3D NULL;
> -
> -		if (!(master_connector->has_tile &&
> -		      master_connector->tile_group->id =3D=3D connector->tile_group->i=
d))
> -			continue;
> -		if (master_connector->tile_h_loc !=3D master_connector->num_h_tile - 1=
 ||
> -		    master_connector->tile_v_loc !=3D master_connector->num_v_tile - 1)
> -			continue;
> -
> -		master_conn_state =3D drm_atomic_get_connector_state(&state->base,
> -								   master_connector);
> -		if (IS_ERR(master_conn_state)) {
> -			drm_connector_list_iter_end(&conn_iter);
> -			return PTR_ERR(master_conn_state);
> -		}
> -		if (master_conn_state->crtc) {
> -			master_crtc =3D master_conn_state->crtc;
> -			break;
> -		}
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -
> -	if (!master_crtc) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Could not find Master CRTC for Slave CRTC %d\n",
> -			    crtc->base.id);
> -		return -EINVAL;
> -	}
> -
> -	master_crtc_state =3D drm_atomic_get_crtc_state(&state->base,
> -						      master_crtc);
> -	if (IS_ERR(master_crtc_state))
> -		return PTR_ERR(master_crtc_state);
> -
> -	master_pipe_config =3D to_intel_crtc_state(master_crtc_state);
> -	crtc_state->master_transcoder =3D master_pipe_config->cpu_transcoder;
> -	master_pipe_config->sync_mode_slaves_mask |=3D
> -		BIT(crtc_state->cpu_transcoder);
> -	drm_dbg_kms(&dev_priv->drm,
> -		    "Master Transcoder =3D %s added for Slave CRTC =3D %d, slave trans=
coder bitmask =3D %d\n",
> -		    transcoder_name(crtc_state->master_transcoder),
> -		    crtc->base.id,
> -		    master_pipe_config->sync_mode_slaves_mask);
> -
> -	return 0;
> -}
> -
>  static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
> @@ -13226,15 +13106,6 @@ intel_crtc_prepare_cleared_state(struct intel_cr=
tc_state *crtc_state)
>  	if (IS_G4X(dev_priv) ||
>  	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		saved_state->wm =3D crtc_state->wm;
> -	/*
> -	 * Save the slave bitmask which gets filled for master crtc state during
> -	 * slave atomic check call. For all other CRTCs reset the port sync var=
iables
> -	 * crtc_state->master_transcoder needs to be set to INVALID
> -	 */
> -	reset_port_sync_mode_state(saved_state);
> -	if (intel_atomic_is_master_connector(crtc_state))
> -		saved_state->sync_mode_slaves_mask =3D
> -			crtc_state->sync_mode_slaves_mask;
>  =

>  	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
>  	kfree(saved_state);
> @@ -13325,24 +13196,6 @@ intel_modeset_pipe_config(struct intel_crtc_stat=
e *pipe_config)
>  	drm_mode_set_crtcinfo(&pipe_config->hw.adjusted_mode,
>  			      CRTC_STEREO_DOUBLE);
>  =

> -	/* Get tile_group_id of tiled connector */
> -	for_each_new_connector_in_state(state, connector, connector_state, i) {
> -		if (connector_state->crtc =3D=3D crtc &&
> -		    connector->has_tile) {
> -			tile_group_id =3D connector->tile_group->id;
> -			break;
> -		}
> -	}
> -
> -	/* Get total number of tiled connectors in state that belong to
> -	 * this tile group.
> -	 */
> -	for_each_new_connector_in_state(state, connector, connector_state, i) {
> -		if (connector->has_tile &&
> -		    connector->tile_group->id =3D=3D tile_group_id)
> -			num_tiled_conns++;
> -	}
> -
>  	/* Pass our mode to the connectors and the CRTC to give them a chance to
>  	 * adjust it according to limitations or connector properties, and also
>  	 * a chance to reject the mode entirely.
> @@ -13354,15 +13207,6 @@ intel_modeset_pipe_config(struct intel_crtc_stat=
e *pipe_config)
>  		if (connector_state->crtc !=3D crtc)
>  			continue;
>  =

> -		ret =3D icl_compute_port_sync_crtc_state(connector, pipe_config,
> -						       num_tiled_conns);
> -		if (ret) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Cannot assign Sync Mode CRTCs: %d\n",
> -				    ret);
> -			return ret;
> -		}
> -
>  		ret =3D encoder->compute_config(encoder, pipe_config,
>  					      connector_state);
>  		if (ret < 0) {
> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
