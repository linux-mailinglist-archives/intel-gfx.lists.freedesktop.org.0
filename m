Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 920E56862FF
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 10:41:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 866F010E175;
	Wed,  1 Feb 2023 09:41:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B671810E175
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 09:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675244512; x=1706780512;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=uOs5abuCo4sWsOC9o2l6lc2AusMoHLeJSSW5q9TjiUs=;
 b=NzZH8/4ZHoB5VliZ59b6IYN8HpKuNa48Qw+x1uWAyw0Fs22T6OHKpJBo
 N/omy4fCmZeyb8BQegoqkmvY3hQlTRPlR5u+ZP8RRXEQ9a3djY4HDJ3uQ
 Iud4Q9sM9oEeKan+07vHrp+pzC7mNFpF/AsevYz9CCcSA00Sx363NRWkd
 N/a6TRe1NVp+iMOCjQLTaVd1q1RxwEooFIsu17unuzCXfBieoWBH3H4pq
 FTQMKC5wjYzyq3fEBRKCvNDtNDD5/IJZMRyqpdMdFsbFtLv8hwollJrBj
 n63AkHBwrEWWxlzxJAJl8vwK1/RISxU8jqwBqiNAJQRsrCIVNZ5CJwDy4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="325798200"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="325798200"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 01:41:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="838714059"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="838714059"
Received: from gbinyami-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.60.192])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 01:41:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230131150548.1614458-18-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230131150548.1614458-1-imre.deak@intel.com>
 <20230131150548.1614458-18-imre.deak@intel.com>
Date: Wed, 01 Feb 2023 11:41:47 +0200
Message-ID: <87cz6t3ep0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 17/17] drm/i915/dp_mst: Verify the HW
 state of MST encoders
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 31 Jan 2023, Imre Deak <imre.deak@intel.com> wrote:
> Read out and verify an MST encoder's HW state after any of the
> MST connectors driven by the encoder is modeset.
>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 91 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>  .../drm/i915/display/intel_display_types.h    | 18 ++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 68 +++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.h   |  2 +-
>  .../drm/i915/display/intel_modeset_verify.c   |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  6 +-
>  7 files changed, 173 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 254559abedfba..6acda4d357af3 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -661,13 +661,23 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder=
 *intel_encoder,
>  	return ret;
>  }
>=20=20
> +static enum transcoder get_transcoder_for_pipe(const struct intel_encode=
r *encoder,
> +					       enum pipe pipe)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	if (HAS_TRANSCODER(i915, TRANSCODER_EDP) && encoder->port =3D=3D PORT_A)
> +		return TRANSCODER_EDP;
> +	else
> +		return (enum transcoder) pipe;
> +}
> +
>  bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_conn=
ector)
>  {
>  	struct drm_device *dev =3D intel_connector->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct intel_encoder *encoder =3D intel_attached_encoder(intel_connecto=
r);
>  	int type =3D intel_connector->base.connector_type;
> -	enum port port =3D encoder->port;
>  	enum transcoder cpu_transcoder;
>  	intel_wakeref_t wakeref;
>  	enum pipe pipe =3D 0;
> @@ -684,10 +694,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_c=
onnector *intel_connector)
>  		goto out;
>  	}
>=20=20
> -	if (HAS_TRANSCODER(dev_priv, TRANSCODER_EDP) && port =3D=3D PORT_A)
> -		cpu_transcoder =3D TRANSCODER_EDP;
> -	else
> -		cpu_transcoder =3D (enum transcoder) pipe;
> +	cpu_transcoder =3D get_transcoder_for_pipe(encoder, pipe);
>=20=20
>  	tmp =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
>=20=20
> @@ -2155,17 +2162,29 @@ i915_reg_t dp_tp_ctl_reg(struct intel_encoder *en=
coder,
>  		return DP_TP_CTL(encoder->port);
>  }
>=20=20
> -i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
> -			    const struct intel_crtc_state *crtc_state)
> +static i915_reg_t __dp_tp_status_reg(struct intel_encoder *encoder,
> +				     enum transcoder transcoder)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 12)
> -		return TGL_DP_TP_STATUS(tgl_dp_tp_transcoder(crtc_state));
> +		return TGL_DP_TP_STATUS(transcoder);
>  	else
>  		return DP_TP_STATUS(encoder->port);
>  }
>=20=20
> +i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
> +			    const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	enum transcoder transcoder =3D INVALID_TRANSCODER;
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 12)
> +		transcoder =3D tgl_dp_tp_transcoder(crtc_state);
> +
> +	return __dp_tp_status_reg(encoder, transcoder);
> +}
> +
>  static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_d=
p *intel_dp,
>  							  const struct intel_crtc_state *crtc_state,
>  							  bool enable)
> @@ -3500,6 +3519,61 @@ static void intel_ddi_get_config(struct intel_enco=
der *encoder,
>  	intel_audio_codec_get_config(encoder, pipe_config);
>  }
>=20=20
> +static bool intel_ddi_get_hw_mst_state(struct intel_encoder *encoder,
> +				       struct intel_encoder_mst_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	enum transcoder transcoder;
> +	u8 vc_pipe_mask =3D 0;
> +	u8 pipe_mask;
> +	bool is_mst;
> +	u32 dp_status;
> +	bool in_mst_mode;
> +	int vc;
> +
> +	intel_ddi_get_encoder_pipes(encoder, &pipe_mask, &is_mst);
> +	if (!is_mst || !pipe_mask)
> +		return false;
> +
> +	transcoder =3D get_transcoder_for_pipe(encoder, ffs(pipe_mask) - 1);
> +	dp_status =3D intel_de_read(i915, __dp_tp_status_reg(encoder, transcode=
r));
> +
> +	in_mst_mode =3D REG_FIELD_GET(DP_TP_STATUS_MODE_STATUS_MST, dp_status);
> +	if (drm_WARN_ON(&i915->drm, !in_mst_mode))
> +		return false;
> +
> +	state->num_mst_streams =3D REG_FIELD_GET(DP_TP_STATUS_NUM_STREAMS_ENABL=
ED, dp_status);
> +	drm_WARN_ON(&i915->drm, state->num_mst_streams =3D=3D 0 ||
> +				state->num_mst_streams > ARRAY_SIZE(state->mst_stream));
> +
> +	for (vc =3D 0; vc < ARRAY_SIZE(state->mst_stream); vc++) {
> +		struct intel_crtc *crtc;
> +		struct intel_link_m_n m_n;
> +
> +		if (vc >=3D state->num_mst_streams) {
> +			state->mst_stream[vc].pipe =3D INVALID_PIPE;
> +			state->mst_stream[vc].tu =3D 0;
> +			continue;
> +		}
> +
> +		state->mst_stream[vc].pipe =3D (dp_status & DP_TP_STATUS_PAYLOAD_MAPPI=
NG_MASK(vc)) >>
> +					     DP_TP_STATUS_PAYLOAD_MAPPING_SHIFT(vc);
> +
> +		drm_WARN_ON(&i915->drm, vc_pipe_mask & BIT(state->mst_stream[vc].pipe)=
);
> +		vc_pipe_mask |=3D BIT(state->mst_stream[vc].pipe);
> +
> +		transcoder =3D get_transcoder_for_pipe(encoder, state->mst_stream[vc].=
pipe);
> +		crtc =3D intel_crtc_for_pipe(i915, state->mst_stream[vc].pipe);
> +
> +		intel_cpu_transcoder_get_m1_n1(crtc, transcoder, &m_n);
> +		state->mst_stream[vc].tu =3D m_n.tu;
> +	}
> +
> +	drm_WARN_ON(&i915->drm, vc_pipe_mask !=3D pipe_mask);
> +
> +	return true;
> +}
> +
>  void intel_ddi_get_clock(struct intel_encoder *encoder,
>  			 struct intel_crtc_state *crtc_state,
>  			 struct intel_shared_dpll *pll)
> @@ -4384,6 +4458,7 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>  	encoder->post_disable =3D intel_ddi_post_disable;
>  	encoder->update_pipe =3D intel_ddi_update_pipe;
>  	encoder->get_hw_state =3D intel_ddi_get_hw_state;
> +	encoder->get_hw_mst_state =3D intel_ddi_get_hw_mst_state;
>  	encoder->sync_state =3D intel_ddi_sync_state;
>  	encoder->initial_fastset_check =3D intel_ddi_initial_fastset_check;
>  	encoder->suspend =3D intel_ddi_encoder_suspend;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7976658771ab3..8b2b7a30b1b01 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7541,7 +7541,7 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>=20=20
>  	if (state->modeset) {
>  		intel_verify_planes(state);
> -		intel_dp_mst_verify_state(state);
> +		intel_dp_mst_verify_state(state, true);
>  	}
>=20=20
>  	intel_sagv_post_plane_update(state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 06d51d2b5e0d6..066a1b956b0ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -151,6 +151,18 @@ enum intel_hotplug_state {
>  	INTEL_HOTPLUG_RETRY,
>  };
>=20=20
> +struct intel_encoder_mst_state {
> +	/**
> +	 *  TODO: move the encoder state from intel_crtc_state to here, and
> +	 *  make this a generic encoder state.
> +	 */
> +	u8 num_mst_streams;
> +	struct {
> +		u8 pipe;
> +		u8 tu;
> +	} mst_stream[I915_MAX_PIPES];
> +};
> +
>  struct intel_encoder {
>  	struct drm_encoder base;
>=20=20
> @@ -213,6 +225,12 @@ struct intel_encoder {
>  	 * be set correctly before calling this function. */
>  	void (*get_config)(struct intel_encoder *,
>  			   struct intel_crtc_state *pipe_config);
> +	/**
> +	 * Determine if the encoder is active in MST mode and if so
> +	 * read out the corresponding HW state.
> +	 */
> +	bool (*get_hw_mst_state)(struct intel_encoder *encoder,
> +				 struct intel_encoder_mst_state *mst_state);
>=20=20
>  	/*
>  	 * Optional hook called during init/resume to sync any state
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index a9bb339e41987..5bc18450b09c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1322,23 +1322,55 @@ int intel_dp_mst_add_topology_state_for_crtc(stru=
ct intel_atomic_state *state,
>  /**
>   * intel_dp_mst_verify_state - Verify the MST state for all connectors i=
n the atomic state
>   * @state: atomic state
> + * @connectors_enabled: %true if called after the modeset's enabling
> + *                      %false if called after the disabling sequence
>   *
>   * Verify the MST SW and sink state for all modesetted MST connectors in=
 @state.
>   */
> -void intel_dp_mst_verify_state(struct intel_atomic_state *state)
> +void intel_dp_mst_verify_state(struct intel_atomic_state *state, bool co=
nnectors_enabled)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  	struct drm_dp_mst_topology_state *mst_state;
>  	struct drm_dp_mst_topology_mgr *mgr;
>  	int i;
>=20=20
>  	for_each_new_mst_mgr_in_state(&state->base, mgr, mst_state, i) {
>  		struct intel_dp *intel_dp =3D container_of(mgr, struct intel_dp, mst_m=
gr);
> +		struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> +		struct intel_encoder_mst_state hw_state;
>  		struct drm_connector *_connector;
>  		struct drm_connector_state *_conn_state;
>  		bool mst_needs_modeset =3D false;
> +		bool has_alloc_errors =3D drm_dp_mst_has_payload_alloc_errors(mst_stat=
e);
> +		int i;

I'm sure it works, but it's probably not a hot idea to shadow the
variable for the inner loop.

BR,
Jani.

> +
> +		if (!encoder->get_hw_mst_state(encoder, &hw_state)) {
> +			drm_WARN_ON(&i915->drm, drm_dp_mst_payload_count(mst_state));
> +			continue;
> +		}
> +
> +		/*
> +		 * The streams for which the payload allocation has failed got
> +		 * still enabled in the HW. In that case check only for an
> +		 * upper bound of mgr->payload_count here and skip the MST payload
> +		 * vs. HW state check later, since those will not match.
> +		 */
> +		if (!has_alloc_errors)
> +			drm_WARN_ON(&i915->drm, hw_state.num_mst_streams !=3D
> +						drm_dp_mst_payload_count(mst_state));
> +		else
> +			drm_WARN_ON(&i915->drm, hw_state.num_mst_streams <
> +						drm_dp_mst_payload_count(mst_state));
>=20=20
>  		for_each_new_connector_in_state(&state->base, _connector, _conn_state,=
 i) {
>  			struct intel_connector *connector =3D to_intel_connector(_connector);
> +			struct intel_digital_connector_state *conn_state;
> +			struct intel_crtc *crtc;
> +			struct intel_crtc_state *crtc_state =3D NULL;
> +			struct drm_dp_mst_atomic_payload *payload;
> +			enum pipe pipe;
> +			int sw_vc;
> +			int tu;
>=20=20
>  			if (!connector->mst_port ||
>  			    !intel_connector_needs_modeset(state, &connector->base))
> @@ -1346,7 +1378,39 @@ void intel_dp_mst_verify_state(struct intel_atomic=
_state *state)
>=20=20
>  			mst_needs_modeset =3D true;
>=20=20
> -			break;
> +			if (has_alloc_errors)
> +				break;
> +
> +			payload =3D drm_atomic_get_mst_payload_state(mst_state, connector->po=
rt);
> +			if (drm_WARN_ON(&i915->drm, !payload))
> +				continue;
> +
> +			conn_state =3D to_intel_digital_connector_state(_conn_state);
> +			crtc =3D conn_state->base.crtc ? to_intel_crtc(conn_state->base.crtc)=
 : NULL;
> +			if (crtc)
> +				crtc_state =3D intel_atomic_get_new_crtc_state(state, crtc);
> +
> +			if (connectors_enabled && crtc_state && crtc_state->hw.active) {
> +				pipe =3D crtc->pipe;
> +				tu =3D drm_dp_mst_payload_time_slots(payload);
> +				drm_WARN_ON(&i915->drm, crtc_state->dp_m_n.tu !=3D tu);
> +			} else {
> +				pipe =3D INVALID_PIPE;
> +				tu =3D 0;
> +			}
> +
> +			sw_vc =3D drm_dp_mst_payload_vchannel(mst_state, payload);
> +			if (sw_vc < 0) {
> +				drm_WARN_ON(&i915->drm, pipe !=3D INVALID_PIPE);
> +				drm_WARN_ON(&i915->drm, tu !=3D 0);
> +			} else {
> +				if (drm_WARN_ON(&i915->drm,
> +						sw_vc >=3D ARRAY_SIZE(hw_state.mst_stream)))
> +					continue;
> +
> +				drm_WARN_ON(&i915->drm, hw_state.mst_stream[sw_vc].pipe !=3D pipe);
> +				drm_WARN_ON(&i915->drm, hw_state.mst_stream[sw_vc].tu !=3D tu);
> +			}
>  		}
>=20=20
>  		if (!mst_needs_modeset)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.h
> index 74633390c280c..53367b6a1ba39 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> @@ -26,6 +26,6 @@ int intel_dp_mst_add_topology_state_for_crtc(struct int=
el_atomic_state *state,
>  int intel_dp_mst_add_topology_state_for_connector(struct intel_atomic_st=
ate *state,
>  						  struct intel_connector *connector,
>  						  struct intel_crtc *crtc);
> -void intel_dp_mst_verify_state(struct intel_atomic_state *state);
> +void intel_dp_mst_verify_state(struct intel_atomic_state *state, bool co=
nnectors_enabled);
>=20=20
>  #endif /* __INTEL_DP_MST_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/driver=
s/gpu/drm/i915/display/intel_modeset_verify.c
> index 45f0d9789ef8e..caf541b562e54 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -245,5 +245,5 @@ void intel_modeset_verify_disabled(struct drm_i915_pr=
ivate *dev_priv,
>  	verify_encoder_state(dev_priv, state);
>  	verify_connector_state(state, NULL);
>  	intel_shared_dpll_verify_disabled(dev_priv);
> -	intel_dp_mst_verify_state(state);
> +	intel_dp_mst_verify_state(state, false);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 596efc940ee70..6a406c9daa042 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6818,10 +6818,10 @@ enum skl_power_gate {
>  #define  DP_TP_STATUS_IDLE_DONE			(1 << 25)
>  #define  DP_TP_STATUS_ACT_SENT			(1 << 24)
>  #define  DP_TP_STATUS_MODE_STATUS_MST		(1 << 23)
> +#define  DP_TP_STATUS_NUM_STREAMS_ENABLED	(7 << 16)
>  #define  DP_TP_STATUS_AUTOTRAIN_DONE		(1 << 12)
> -#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC2	(3 << 8)
> -#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC1	(3 << 4)
> -#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC0	(3 << 0)
> +#define  DP_TP_STATUS_PAYLOAD_MAPPING_SHIFT(vc)	((vc) * 4)
> +#define  DP_TP_STATUS_PAYLOAD_MAPPING_MASK(vc)	(3 << DP_TP_STATUS_PAYLOA=
D_MAPPING_SHIFT(vc))
>=20=20
>  /* DDI Buffer Control */
>  #define _DDI_BUF_CTL_A				0x64000

--=20
Jani Nikula, Intel Open Source Graphics Center
