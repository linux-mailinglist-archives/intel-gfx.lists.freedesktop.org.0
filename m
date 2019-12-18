Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 900531251C4
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 20:24:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CACD86EA5A;
	Wed, 18 Dec 2019 19:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55AA66EA5A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 19:24:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 11:24:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="247994880"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 18 Dec 2019 11:24:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2019 21:24:07 +0200
Date: Wed, 18 Dec 2019 21:24:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191218192407.GW1208@intel.com>
References: <20191218185910.303540-1-jose.souza@intel.com>
 <20191218185910.303540-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218185910.303540-2-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 2/6] drm/i915/tgl: Select master
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

On Wed, Dec 18, 2019 at 10:59:06AM -0800, Jos=E9 Roberto de Souza wrote:
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

> BSpec: 50493
> BSpec: 49190
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |  14 ++
>  drivers/gpu/drm/i915/display/intel_atomic.h   |   4 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  13 +-
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 143 ++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.h   |   5 +
>  7 files changed, 183 insertions(+), 13 deletions(-)
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
> index fa40ba7cbcad..9d99ec82d072 100644
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
> @@ -4400,6 +4405,11 @@ void intel_ddi_get_config(struct intel_encoder *en=
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
> index 25bf084427bf..59b3bfe8b721 100644
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
> @@ -11630,6 +11631,7 @@ static void intel_crtc_state_reset(struct intel_c=
rtc_state *crtc_state,
>  	crtc_state->hsw_workaround_pipe =3D INVALID_PIPE;
>  	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_INVALID;
>  	crtc_state->scaler_state.scaler_id =3D -1;
> +	crtc_state->mst_master_transcoder =3D INVALID_TRANSCODER;
>  }
>  =

>  /* Returns the currently programmed mode of the given encoder. */
> @@ -12477,6 +12479,9 @@ static void intel_dump_pipe_config(const struct i=
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
> @@ -12618,6 +12623,7 @@ intel_crtc_prepare_cleared_state(struct intel_crt=
c_state *crtc_state)
>  	memcpy(saved_state->icl_port_dplls, crtc_state->icl_port_dplls,
>  	       sizeof(saved_state->icl_port_dplls));
>  	saved_state->crc_enabled =3D crtc_state->crc_enabled;
> +	saved_state->mst_master_transcoder =3D INVALID_TRANSCODER;

That's redundant now?

>  	if (IS_G4X(dev_priv) ||
>  	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		saved_state->wm =3D crtc_state->wm;
> @@ -13257,6 +13263,8 @@ intel_pipe_config_compare(const struct intel_crtc=
_state *current_config,
>  	PIPE_CONF_CHECK_I(dsc.dsc_split);
>  	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
>  =

> +	PIPE_CONF_CHECK_I(mst_master_transcoder);
> +
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
>  #undef PIPE_CONF_CHECK_BOOL
> @@ -14341,7 +14349,7 @@ static void intel_commit_modeset_disables(struct =
intel_atomic_state *state)
>  	u32 handled =3D 0;
>  	int i;
>  =

> -	/* Only disable port sync slaves */
> +	/* Only disable port sync and MST slaves */
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (!needs_modeset(new_crtc_state))
> @@ -14355,7 +14363,8 @@ static void intel_commit_modeset_disables(struct =
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
> index 7aa0975c33b7..710137984c71 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -87,6 +87,54 @@ static int intel_dp_mst_compute_link_config(struct int=
el_encoder *encoder,
>  	return 0;
>  }
>  =

> +/*
> + * Iterate over all connectors and set mst_master_transcoder to the smal=
lest
> + * transcoder id that shares the same MST connector.
> + */
> +static enum transcoder
> +intel_dp_mst_master_trans_compute(struct intel_encoder *encoder,
> +				  struct intel_crtc_state *crtc_state,
> +				  struct drm_connector_state *connector_state)
> +{
> +	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state->=
uapi.state);

Could grab that from the connector state and not pass in crtc_state at
all?

Hmm. Might be even better to just pass inin intel_atomic_state+mst_port
so we wouldn't have the clash with the iterators and could use the
normal names for those. Shrug.


> +	struct intel_connector *connector =3D to_intel_connector(connector_stat=
e->connector);
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_digital_connector_state *iter_connector_state;

Could sprinkle some consts on the crtc/connector states now that we're pure.

> +	struct intel_connector *iter_connector;
> +	enum pipe ret =3D I915_MAX_PIPES;
> +	int i;
> +
> +	if (INTEL_GEN(dev_priv) < 12)
> +		return INVALID_TRANSCODER;
> +
> +	for_each_new_intel_connector_in_state(state, iter_connector,
> +					      iter_connector_state, i) {
> +		struct intel_crtc_state *iter_crtc_state;
> +		struct intel_crtc *iter_crtc;
> +
> +		if (connector->mst_port !=3D iter_connector->mst_port ||
> +		    !iter_connector_state->base.crtc)
> +			continue;
> +
> +		iter_crtc =3D to_intel_crtc(iter_connector_state->base.crtc);
> +		iter_crtc_state =3D intel_atomic_get_new_crtc_state(state,
> +								  iter_crtc);
> +		if (!iter_crtc_state->uapi.active)
> +			continue;
> +
> +		/*
> +		 * Using crtc->pipe because crtc_state->cpu_transcoder is
> +		 * computed, so others pipe cpu_transcoder could have being
> +		 * computed yet
> +		 */
> +		if (iter_crtc->pipe < ret)
> +			ret =3D iter_crtc->pipe;
> +	}

What if we have no active pipes? Aren't we going to come here with
ret=3D=3DMAX_PIPES?

I guess we can't really change the !active check to !enabled
because we surely can't use an inactive transcoder as the =

master. So !active does seem like the right thing to check.

> +
> +	/* Simple cast works because TGL don't have a eDP transcoder */
> +	return (enum transcoder)ret;

I'd have probably extracted the thing to compute the transcoder.
But doesn't matter for MST since it can't be going over the EDP
transcoder. Port sync will be a different story. We can cross that
bridge when we come to it.

> +}
> +
>  static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  				       struct intel_crtc_state *pipe_config,
>  				       struct drm_connector_state *conn_state)
> @@ -154,24 +202,89 @@ static int intel_dp_mst_compute_config(struct intel=
_encoder *encoder,
>  =

>  	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
>  =

> +	pipe_config->mst_master_transcoder =3D intel_dp_mst_master_trans_comput=
e(encoder,
> +									       pipe_config,
> +									       conn_state);
> +	if (ret)
> +		return ret;

ret?

> +
> +	return 0;
> +}
> +
> +/*
> + * If one of the connectors in a MST stream needs a modeset, mark all CR=
TCs
> + * that have a connector in the same MST stream as mode changed,
> + * intel_modeset_pipe_config()+intel_crtc_check_fastset() will take to d=
o a
> + * fastset when possible.
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
> +		crtc_state->uapi.mode_changed =3D true;

We might need drm_atomic_add_affected_planes() here. The helper won't do
that for us if the connector->atomic_check() was called from the second
loop.

The rest lgtm.

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

> @@ -182,12 +295,9 @@ intel_dp_mst_atomic_check(struct drm_connector *conn=
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
> @@ -196,7 +306,7 @@ intel_dp_mst_atomic_check(struct drm_connector *conne=
ctor,
>  	}
>  =

>  	mgr =3D &enc_to_mst(old_conn_state->best_encoder)->primary->dp.mst_mgr;
> -	ret =3D drm_dp_atomic_release_vcpi_slots(state, mgr,
> +	ret =3D drm_dp_atomic_release_vcpi_slots(&state->base, mgr,
>  					       intel_connector->port);
>  =

>  	return ret;
> @@ -240,6 +350,8 @@ static void intel_mst_post_disable_dp(struct intel_en=
coder *encoder,
>  =

>  	intel_dp->active_mst_links--;
>  	last_mst_stream =3D intel_dp->active_mst_links =3D=3D 0;
> +	WARN_ON(INTEL_GEN(dev_priv) >=3D 12 && last_mst_stream &&
> +		!intel_dp_mst_is_master_trans(old_crtc_state));
>  =

>  	intel_crtc_vblank_off(old_crtc_state);
>  =

> @@ -317,6 +429,8 @@ static void intel_mst_pre_enable_dp(struct intel_enco=
der *encoder,
>  	connector->encoder =3D encoder;
>  	intel_mst->connector =3D connector;
>  	first_mst_stream =3D intel_dp->active_mst_links =3D=3D 0;
> +	WARN_ON(INTEL_GEN(dev_priv) >=3D 12 && first_mst_stream &&
> +		!intel_dp_mst_is_master_trans(pipe_config));
>  =

>  	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
>  =

> @@ -722,3 +836,14 @@ intel_dp_mst_encoder_cleanup(struct intel_digital_po=
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
