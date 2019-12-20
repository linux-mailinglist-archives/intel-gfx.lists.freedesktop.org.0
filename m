Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7A1127FC6
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 16:47:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB2C6E096;
	Fri, 20 Dec 2019 15:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 960E66E096
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 15:47:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 07:47:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="213603894"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 20 Dec 2019 07:47:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Dec 2019 17:47:10 +0200
Date: Fri, 20 Dec 2019 17:47:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191220154710.GO1208@intel.com>
References: <20191220152954.83276-1-jose.souza@intel.com>
 <20191220152954.83276-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220152954.83276-3-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5 3/7] drm/i915/tgl: Select master
 transcoder for MST stream
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 20, 2019 at 07:29:50AM -0800, Jos=E9 Roberto de Souza wrote:
> On TGL the blending of all the streams have moved from DDI to
> transcoder, so now every transcoder working over the same MST port must
> send its stream to a master transcoder and master will send to DDI
> respecting the time slots.
> =

> So here adding all the CRTCs that shares the same MST stream if
> needed and computing their state again, it will pick the lowest
> pipe/transcoder among the ones in the same stream to be master.
> =

> Most of the time skl_commit_modeset_enables() enables pipes in a
> crescent order but due DDB overlapping it might not happen, this
> scenarios will be handled in the next patch.
> =

> v2:
> - Using recently added intel_crtc_state_reset() to set
> mst_master_transcoder to invalid transcoder for all non gen12 & MST
> code paths
> - Setting lowest pipe/transcoder as master, previously it was the
> first one but setting a predictable one will help in future MST e
> port sync integration
> - Moving to intel type as much as we can
> =

> v3:
> - Now intel_dp_mst_master_trans_compute() returns the MST master transcod=
er
> - Replaced stdbool.h by linux/types.h
> - Skip the connector being checked in
> intel_dp_mst_atomic_master_trans_check()
> - Using pipe instead of transcoder to compute MST master
> =

> v4:
> - renamed connector_state to conn_state
> =

> v5:
> - Improved the parameters of intel_dp_mst_master_trans_compute() to
> simply code
> - Added call drm_atomic_add_affected_planes() in
> intel_dp_mst_atomic_master_trans_check() as helper could not do it
> for us
> - Removed "if (ret)" left over from v3 changes
> =

> BSpec: 50493
> BSpec: 49190
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |  14 ++
>  drivers/gpu/drm/i915/display/intel_atomic.h   |   4 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  12 +-
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 140 ++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.h   |   5 +
>  7 files changed, 179 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index b7dda18b6f29..0eb973f65977 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -192,6 +192,20 @@ intel_connector_needs_modeset(struct intel_atomic_st=
ate *state,
>  									    new_conn_state->crtc)));
>  }
>  =

> +struct intel_digital_connector_state *
> +intel_atomic_get_digital_connector_state(struct intel_atomic_state *stat=
e,
> +					 struct intel_connector *connector)
> +{
> +	struct drm_connector_state *conn_state;
> +
> +	conn_state =3D drm_atomic_get_connector_state(&state->base,
> +						    &connector->base);
> +	if (IS_ERR(conn_state))
> +		return ERR_CAST(conn_state);
> +
> +	return to_intel_digital_connector_state(conn_state);
> +}
> +
>  /**
>   * intel_crtc_duplicate_state - duplicate crtc state
>   * @crtc: drm crtc
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/dr=
m/i915/display/intel_atomic.h
> index a7d1a8576c48..74c749dbfb4f 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> @@ -17,6 +17,7 @@ struct drm_device;
>  struct drm_i915_private;
>  struct drm_property;
>  struct intel_atomic_state;
> +struct intel_connector;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  =

> @@ -34,6 +35,9 @@ struct drm_connector_state *
>  intel_digital_connector_duplicate_state(struct drm_connector *connector);
>  bool intel_connector_needs_modeset(struct intel_atomic_state *state,
>  				   struct drm_connector *connector);
> +struct intel_digital_connector_state *
> +intel_atomic_get_digital_connector_state(struct intel_atomic_state *stat=
e,
> +					 struct intel_connector *connector);
>  =

>  struct drm_crtc_state *intel_crtc_duplicate_state(struct drm_crtc *crtc);
>  void intel_crtc_destroy_state(struct drm_crtc *crtc,
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index c9ba7d7f3787..c3ac950e79a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1899,8 +1899,13 @@ intel_ddi_transcoder_func_reg_val_get(const struct=
 intel_crtc_state *crtc_state)
>  		temp |=3D TRANS_DDI_MODE_SELECT_DP_MST;
>  		temp |=3D DDI_PORT_WIDTH(crtc_state->lane_count);
>  =

> -		if (INTEL_GEN(dev_priv) >=3D 12)
> -			temp |=3D TRANS_DDI_MST_TRANSPORT_SELECT(crtc_state->cpu_transcoder);
> +		if (INTEL_GEN(dev_priv) >=3D 12) {
> +			enum transcoder master;
> +
> +			master =3D crtc_state->mst_master_transcoder;
> +			WARN_ON(master =3D=3D INVALID_TRANSCODER);
> +			temp |=3D TRANS_DDI_MST_TRANSPORT_SELECT(master);
> +		}
>  	} else {
>  		temp |=3D TRANS_DDI_MODE_SELECT_DP_SST;
>  		temp |=3D DDI_PORT_WIDTH(crtc_state->lane_count);
> @@ -4405,6 +4410,11 @@ void intel_ddi_get_config(struct intel_encoder *en=
coder,
>  		pipe_config->output_types |=3D BIT(INTEL_OUTPUT_DP_MST);
>  		pipe_config->lane_count =3D
>  			((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
> +
> +		if (INTEL_GEN(dev_priv) >=3D 12)
> +			pipe_config->mst_master_transcoder =3D
> +					REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, temp);
> +
>  		intel_dp_get_m_n(intel_crtc, pipe_config);
>  		break;
>  	default:
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index fc77829ea958..eb97ad562c96 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -46,6 +46,7 @@
>  #include "display/intel_crt.h"
>  #include "display/intel_ddi.h"
>  #include "display/intel_dp.h"
> +#include "display/intel_dp_mst.h"
>  #include "display/intel_dsi.h"
>  #include "display/intel_dvo.h"
>  #include "display/intel_gmbus.h"
> @@ -11627,6 +11628,7 @@ static void intel_crtc_state_reset(struct intel_c=
rtc_state *crtc_state,
>  	crtc_state->hsw_workaround_pipe =3D INVALID_PIPE;
>  	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_INVALID;
>  	crtc_state->scaler_state.scaler_id =3D -1;
> +	crtc_state->mst_master_transcoder =3D INVALID_TRANSCODER;
>  }
>  =

>  static struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc=
 *crtc)
> @@ -12484,6 +12486,9 @@ static void intel_dump_pipe_config(const struct i=
ntel_crtc_state *pipe_config,
>  			      pipe_config->csc_mode, pipe_config->gamma_mode,
>  			      pipe_config->gamma_enable, pipe_config->csc_enable);
>  =

> +	DRM_DEBUG_KMS("MST master transcoder: %s\n",
> +		      transcoder_name(pipe_config->mst_master_transcoder));
> +
>  dump_planes:
>  	if (!state)
>  		return;
> @@ -13264,6 +13269,8 @@ intel_pipe_config_compare(const struct intel_crtc=
_state *current_config,
>  	PIPE_CONF_CHECK_I(dsc.dsc_split);
>  	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
>  =

> +	PIPE_CONF_CHECK_I(mst_master_transcoder);
> +
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
>  #undef PIPE_CONF_CHECK_BOOL
> @@ -14348,7 +14355,7 @@ static void intel_commit_modeset_disables(struct =
intel_atomic_state *state)
>  	u32 handled =3D 0;
>  	int i;
>  =

> -	/* Only disable port sync slaves */
> +	/* Only disable port sync and MST slaves */
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (!needs_modeset(new_crtc_state))
> @@ -14362,7 +14369,8 @@ static void intel_commit_modeset_disables(struct =
intel_atomic_state *state)
>  		 * slave CRTCs are disabled first and then master CRTC since
>  		 * Slave vblanks are masked till Master Vblanks.
>  		 */
> -		if (!is_trans_port_sync_slave(old_crtc_state))
> +		if (!is_trans_port_sync_slave(old_crtc_state) &&
> +		    !intel_dp_mst_is_slave_trans(old_crtc_state))
>  			continue;
>  =

>  		intel_pre_plane_update(state, crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 83ea04149b77..630a94892b7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1054,6 +1054,9 @@ struct intel_crtc_state {
>  =

>  	/* Bitmask to indicate slaves attached */
>  	u8 sync_mode_slaves_mask;
> +
> +	/* Only valid on TGL+ */
> +	enum transcoder mst_master_transcoder;
>  };
>  =

>  struct intel_crtc {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 7aa0975c33b7..a6237da9ac52 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -87,10 +87,53 @@ static int intel_dp_mst_compute_link_config(struct in=
tel_encoder *encoder,
>  	return 0;
>  }
>  =

> +/*
> + * Iterate over all connectors and return the smallest transcoder in the=
 MST
> + * stream
> + */
> +static enum transcoder
> +intel_dp_mst_master_trans_compute(struct intel_atomic_state *state,
> +				  struct intel_dp *mst_port)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_digital_connector_state *conn_state;
> +	struct intel_connector *connector;
> +	enum pipe ret =3D I915_MAX_PIPES;
> +	int i;
> +
> +	if (INTEL_GEN(dev_priv) < 12)
> +		return INVALID_TRANSCODER;
> +
> +	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
> +		struct intel_crtc_state *crtc_state;
> +		struct intel_crtc *crtc;
> +
> +		if (connector->mst_port !=3D mst_port || !conn_state->base.crtc)
> +			continue;
> +
> +		crtc =3D to_intel_crtc(conn_state->base.crtc);
> +		crtc_state =3D intel_atomic_get_new_crtc_state(state, crtc);
> +		if (!crtc_state->uapi.active)
> +			continue;
> +
> +		/*
> +		 * Using crtc->pipe because crtc_state->cpu_transcoder is
> +		 * computed, so others CRTCs could have non-computed
> +		 * cpu_transcoder
> +		 */
> +		if (crtc->pipe < ret)
> +			ret =3D crtc->pipe;
> +	}

Still has the problem that ret=3D=3DI915_MAX_PIPES if no active crtcs in the
state.

I guess a simple
if (ret =3D=3D MAX_PIPES)
	return INVALID;
should do here. Or something similar.

With that fixed this is
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Future thoughts based on what I prototyped in
git://github.com/vsyrjala/linux.git port_sync_stuff
would be to simply compute the bitmask of transcoders here, and then
let the caller pick the first with ffs()-1. We could potentially
optimize that approach a bit by only computing each distinct bitmask
only once and storing them temporarult in eg. intel_atomic_state.
Then each encoder would just assign:
mst_master =3D ffs(precomputed_mst_bitmask[cpu_transcoder]) - 1;


> +
> +	/* Simple cast works because TGL don't have a eDP transcoder */
> +	return (enum transcoder)ret;
> +}
> +
>  static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  				       struct intel_crtc_state *pipe_config,
>  				       struct drm_connector_state *conn_state)
>  {
> +	struct intel_atomic_state *state =3D to_intel_atomic_state(conn_state->=
state);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(&encoder->base);
>  	struct intel_dp *intel_dp =3D &intel_mst->primary->dp;
> @@ -154,24 +197,91 @@ static int intel_dp_mst_compute_config(struct intel=
_encoder *encoder,
>  =

>  	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
>  =

> +	pipe_config->mst_master_transcoder =3D intel_dp_mst_master_trans_comput=
e(state, intel_dp);
> +
> +	return 0;
> +}
> +
> +/*
> + * If one of the connectors in a MST stream needs a modeset, mark all CR=
TCs
> + * that shares the same MST stream as mode changed,
> + * intel_modeset_pipe_config()+intel_crtc_check_fastset() will take care=
 to do
> + * a fastset when possible.
> + */
> +static int
> +intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
> +				       struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct drm_connector_list_iter connector_list_iter;
> +	struct intel_connector *connector_iter;
> +
> +	if (INTEL_GEN(dev_priv) < 12)
> +		return  0;
> +
> +	if (!intel_connector_needs_modeset(state, &connector->base))
> +		return 0;
> +
> +	drm_connector_list_iter_begin(&dev_priv->drm, &connector_list_iter);
> +	for_each_intel_connector_iter(connector_iter, &connector_list_iter) {
> +		struct intel_digital_connector_state *conn_iter_state;
> +		struct intel_crtc_state *crtc_state;
> +		struct intel_crtc *crtc;
> +		int ret;
> +
> +		if (connector_iter->mst_port !=3D connector->mst_port ||
> +		    connector_iter =3D=3D connector)
> +			continue;
> +
> +		conn_iter_state =3D intel_atomic_get_digital_connector_state(state,
> +									   connector_iter);
> +		if (IS_ERR(conn_iter_state)) {
> +			drm_connector_list_iter_end(&connector_list_iter);
> +			return PTR_ERR(conn_iter_state);
> +		}
> +
> +		if (!conn_iter_state->base.crtc)
> +			continue;
> +
> +		crtc =3D to_intel_crtc(conn_iter_state->base.crtc);
> +		crtc_state =3D intel_atomic_get_crtc_state(&state->base, crtc);
> +		if (IS_ERR(crtc_state)) {
> +			drm_connector_list_iter_end(&connector_list_iter);
> +			return PTR_ERR(crtc_state);
> +		}
> +
> +		ret =3D drm_atomic_add_affected_planes(&state->base, &crtc->base);
> +		if (ret) {
> +			drm_connector_list_iter_end(&connector_list_iter);
> +			return ret;
> +		}
> +		crtc_state->uapi.mode_changed =3D true;
> +	}
> +	drm_connector_list_iter_end(&connector_list_iter);
> +
>  	return 0;
>  }
>  =

>  static int
>  intel_dp_mst_atomic_check(struct drm_connector *connector,
> -			  struct drm_atomic_state *state)
> +			  struct drm_atomic_state *_state)
>  {
> +	struct intel_atomic_state *state =3D to_intel_atomic_state(_state);
>  	struct drm_connector_state *new_conn_state =3D
> -		drm_atomic_get_new_connector_state(state, connector);
> +		drm_atomic_get_new_connector_state(&state->base, connector);
>  	struct drm_connector_state *old_conn_state =3D
> -		drm_atomic_get_old_connector_state(state, connector);
> +		drm_atomic_get_old_connector_state(&state->base, connector);
>  	struct intel_connector *intel_connector =3D
>  		to_intel_connector(connector);
>  	struct drm_crtc *new_crtc =3D new_conn_state->crtc;
>  	struct drm_dp_mst_topology_mgr *mgr;
>  	int ret;
>  =

> -	ret =3D intel_digital_connector_atomic_check(connector, state);
> +	ret =3D intel_digital_connector_atomic_check(connector, &state->base);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D intel_dp_mst_atomic_master_trans_check(intel_connector, state);
>  	if (ret)
>  		return ret;
>  =

> @@ -182,12 +292,9 @@ intel_dp_mst_atomic_check(struct drm_connector *conn=
ector,
>  	 * connector
>  	 */
>  	if (new_crtc) {
> -		struct intel_atomic_state *intel_state =3D
> -			to_intel_atomic_state(state);
>  		struct intel_crtc *intel_crtc =3D to_intel_crtc(new_crtc);
>  		struct intel_crtc_state *crtc_state =3D
> -			intel_atomic_get_new_crtc_state(intel_state,
> -							intel_crtc);
> +			intel_atomic_get_new_crtc_state(state, intel_crtc);
>  =

>  		if (!crtc_state ||
>  		    !drm_atomic_crtc_needs_modeset(&crtc_state->uapi) ||
> @@ -196,7 +303,7 @@ intel_dp_mst_atomic_check(struct drm_connector *conne=
ctor,
>  	}
>  =

>  	mgr =3D &enc_to_mst(old_conn_state->best_encoder)->primary->dp.mst_mgr;
> -	ret =3D drm_dp_atomic_release_vcpi_slots(state, mgr,
> +	ret =3D drm_dp_atomic_release_vcpi_slots(&state->base, mgr,
>  					       intel_connector->port);
>  =

>  	return ret;
> @@ -240,6 +347,8 @@ static void intel_mst_post_disable_dp(struct intel_en=
coder *encoder,
>  =

>  	intel_dp->active_mst_links--;
>  	last_mst_stream =3D intel_dp->active_mst_links =3D=3D 0;
> +	WARN_ON(INTEL_GEN(dev_priv) >=3D 12 && last_mst_stream &&
> +		!intel_dp_mst_is_master_trans(old_crtc_state));
>  =

>  	intel_crtc_vblank_off(old_crtc_state);
>  =

> @@ -317,6 +426,8 @@ static void intel_mst_pre_enable_dp(struct intel_enco=
der *encoder,
>  	connector->encoder =3D encoder;
>  	intel_mst->connector =3D connector;
>  	first_mst_stream =3D intel_dp->active_mst_links =3D=3D 0;
> +	WARN_ON(INTEL_GEN(dev_priv) >=3D 12 && first_mst_stream &&
> +		!intel_dp_mst_is_master_trans(pipe_config));
>  =

>  	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
>  =

> @@ -722,3 +833,14 @@ intel_dp_mst_encoder_cleanup(struct intel_digital_po=
rt *intel_dig_port)
>  	drm_dp_mst_topology_mgr_destroy(&intel_dp->mst_mgr);
>  	/* encoders will get killed by normal cleanup */
>  }
> +
> +bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_st=
ate)
> +{
> +	return crtc_state->mst_master_transcoder =3D=3D crtc_state->cpu_transco=
der;
> +}
> +
> +bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_sta=
te)
> +{
> +	return crtc_state->mst_master_transcoder !=3D INVALID_TRANSCODER &&
> +	       crtc_state->mst_master_transcoder !=3D crtc_state->cpu_transcode=
r;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.h
> index f660ad80db04..854724f68f09 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> @@ -6,10 +6,15 @@
>  #ifndef __INTEL_DP_MST_H__
>  #define __INTEL_DP_MST_H__
>  =

> +#include <linux/types.h>
> +
>  struct intel_digital_port;
> +struct intel_crtc_state;
>  =

>  int intel_dp_mst_encoder_init(struct intel_digital_port *intel_dig_port,=
 int conn_id);
>  void intel_dp_mst_encoder_cleanup(struct intel_digital_port *intel_dig_p=
ort);
>  int intel_dp_mst_encoder_active_links(struct intel_digital_port *intel_d=
ig_port);
> +bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_st=
ate);
> +bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_sta=
te);
>  =

>  #endif /* __INTEL_DP_MST_H__ */
> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
