Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DFD27EFE8
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 19:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E19FF6E214;
	Wed, 30 Sep 2020 17:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 278986E214
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 17:04:50 +0000 (UTC)
IronPort-SDR: ISgenupr1YB6S78IUT6ptNbox6+Dokgie5uZiQJCi/7Qb3CNygDM11ojXmUVnZ3vzXvTxRO/EO
 H2TI1WFJGg6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="224091455"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="224091455"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 10:04:49 -0700
IronPort-SDR: f6u45MuWv/el1mAYCuQJ5V91lIojecY0jeLJugjoVQwMpR+m3FTUlpc6oSCGFhRPSQ77mNbXS7
 OXFJSq7G249A==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="457734873"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 10:04:48 -0700
Date: Wed, 30 Sep 2020 20:04:44 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200930170444.GK867650@ideak-desk.fi.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
 <20200929233449.32323-12-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929233449.32323-12-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 11/11] drm/i915: Eliminate
 intel_dp.regs.dp_tp_{ctl, status}
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 30, 2020 at 02:34:49AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Now that we've plumbed the crtc state all the way down we can
> eliminate the DP_TP_{CTL,STATUS} register offsets from intel_dp,
> and instead we derive them directly from the crtc state.
> =

> And thus we can get rid of the nasty hack in intel_ddi_get_config()
> which mutates intel_dp during the readout.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 107 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_ddi.h      |   5 +
>  .../drm/i915/display/intel_display_types.h    |   8 --
>  drivers/gpu/drm/i915/display/intel_dp.c       |   2 -
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  24 ++--
>  5 files changed, 76 insertions(+), 70 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index cdf3e5540482..11297a8af3b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3295,6 +3295,37 @@ icl_program_mg_dp_mode(struct intel_digital_port *=
dig_port,
>  	}
>  }
>  =

> +static enum transcoder
> +tgl_dp_tp_transcoder(const struct intel_crtc_state *crtc_state)
> +{
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> +		return crtc_state->mst_master_transcoder;
> +	else
> +		return crtc_state->cpu_transcoder;
> +}
> +
> +i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		return TGL_DP_TP_CTL(tgl_dp_tp_transcoder(crtc_state));
> +	else
> +		return DP_TP_CTL(encoder->port);
> +}
> +
> +i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
> +			    const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		return TGL_DP_TP_STATUS(tgl_dp_tp_transcoder(crtc_state));
> +	else
> +		return DP_TP_STATUS(encoder->port);
> +}
> +
>  static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
>  					const struct intel_crtc_state *crtc_state)
>  {
> @@ -3319,11 +3350,12 @@ static void intel_ddi_enable_fec(struct intel_enc=
oder *encoder,
>  		return;
>  =

>  	intel_dp =3D enc_to_intel_dp(encoder);
> -	val =3D intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
> +	val =3D intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>  	val |=3D DP_TP_CTL_FEC_ENABLE;
> -	intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, val);
> +	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
>  =

> -	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
> +	if (intel_de_wait_for_set(dev_priv,
> +				  dp_tp_status_reg(encoder, crtc_state),
>  				  DP_TP_STATUS_FEC_ENABLE_LIVE, 1))
>  		drm_err(&dev_priv->drm,
>  			"Timed out waiting for FEC Enable Status\n");
> @@ -3340,10 +3372,10 @@ static void intel_ddi_disable_fec_state(struct in=
tel_encoder *encoder,
>  		return;
>  =

>  	intel_dp =3D enc_to_intel_dp(encoder);
> -	val =3D intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
> +	val =3D intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>  	val &=3D ~DP_TP_CTL_FEC_ENABLE;
> -	intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, val);
> -	intel_de_posting_read(dev_priv, intel_dp->regs.dp_tp_ctl);
> +	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
> +	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>  }
>  =

>  static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
> @@ -3357,15 +3389,11 @@ static void tgl_ddi_pre_enable_dp(struct intel_at=
omic_state *state,
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	bool is_mst =3D intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
>  	int level =3D intel_ddi_dp_level(intel_dp);
> -	enum transcoder transcoder =3D crtc_state->cpu_transcoder;
>  =

>  	intel_dp_set_link_params(intel_dp,
>  				 crtc_state->port_clock,
>  				 crtc_state->lane_count);
>  =

> -	intel_dp->regs.dp_tp_ctl =3D TGL_DP_TP_CTL(transcoder);
> -	intel_dp->regs.dp_tp_status =3D TGL_DP_TP_STATUS(transcoder);
> -
>  	/*
>  	 * 1. Enable Power Wells
>  	 *
> @@ -3682,12 +3710,10 @@ static void intel_disable_ddi_buf(struct intel_en=
coder *encoder,
>  	}
>  =

>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
> -		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -
> -		val =3D intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
> +		val =3D intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>  		val &=3D ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
>  		val |=3D DP_TP_CTL_LINK_TRAIN_PAT1;
> -		intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, val);
> +		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
>  	}
>  =

>  	/* Disable FEC in DP Sink */
> @@ -4184,13 +4210,13 @@ intel_ddi_pre_pll_enable(struct intel_atomic_stat=
e *state,
>  static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>  					   const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	struct drm_i915_private *dev_priv =3D to_i915(dig_port->base.base.dev);
> -	enum port port =3D dig_port->base.port;
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	enum port port =3D encoder->port;
>  	u32 dp_tp_ctl, ddi_buf_ctl;
>  	bool wait =3D false;
>  =

> -	dp_tp_ctl =3D intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
> +	dp_tp_ctl =3D intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state=
));
>  =

>  	if (dp_tp_ctl & DP_TP_CTL_ENABLE) {
>  		ddi_buf_ctl =3D intel_de_read(dev_priv, DDI_BUF_CTL(port));
> @@ -4202,8 +4228,8 @@ static void intel_ddi_prepare_link_retrain(struct i=
ntel_dp *intel_dp,
>  =

>  		dp_tp_ctl &=3D ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
>  		dp_tp_ctl |=3D DP_TP_CTL_LINK_TRAIN_PAT1;
> -		intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, dp_tp_ctl);
> -		intel_de_posting_read(dev_priv, intel_dp->regs.dp_tp_ctl);
> +		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl=
);
> +		intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>  =

>  		if (wait)
>  			intel_wait_ddi_buf_idle(dev_priv, port);
> @@ -4218,8 +4244,8 @@ static void intel_ddi_prepare_link_retrain(struct i=
ntel_dp *intel_dp,
>  		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
>  			dp_tp_ctl |=3D DP_TP_CTL_ENHANCED_FRAME_ENABLE;
>  	}
> -	intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, dp_tp_ctl);
> -	intel_de_posting_read(dev_priv, intel_dp->regs.dp_tp_ctl);
> +	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
> +	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>  =

>  	intel_dp->DP |=3D DDI_BUF_CTL_ENABLE;
>  	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> @@ -4232,11 +4258,12 @@ static void intel_ddi_set_link_train(struct intel=
_dp *intel_dp,
>  				     const struct intel_crtc_state *crtc_state,
>  				     u8 dp_train_pat)
>  {
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	u8 train_pat_mask =3D drm_dp_training_pattern_mask(intel_dp->dpcd);
>  	u32 temp;
>  =

> -	temp =3D intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
> +	temp =3D intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>  =

>  	temp &=3D ~DP_TP_CTL_LINK_TRAIN_MASK;
>  	switch (dp_train_pat & train_pat_mask) {
> @@ -4257,7 +4284,7 @@ static void intel_ddi_set_link_train(struct intel_d=
p *intel_dp,
>  		break;
>  	}
>  =

> -	intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, temp);
> +	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), temp);
>  }
>  =

>  static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
> @@ -4268,10 +4295,10 @@ static void intel_ddi_set_idle_link_train(struct =
intel_dp *intel_dp,
>  	enum port port =3D encoder->port;
>  	u32 val;
>  =

> -	val =3D intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
> +	val =3D intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>  	val &=3D ~DP_TP_CTL_LINK_TRAIN_MASK;
>  	val |=3D DP_TP_CTL_LINK_TRAIN_IDLE;
> -	intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, val);
> +	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
>  =

>  	/*
>  	 * Until TGL on PORT_A we can have only eDP in SST mode. There the only
> @@ -4283,7 +4310,8 @@ static void intel_ddi_set_idle_link_train(struct in=
tel_dp *intel_dp,
>  	if (port =3D=3D PORT_A && INTEL_GEN(dev_priv) < 12)
>  		return;
>  =

> -	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
> +	if (intel_de_wait_for_set(dev_priv,
> +				  dp_tp_status_reg(encoder, crtc_state),
>  				  DP_TP_STATUS_IDLE_DONE, 1))
>  		drm_err(&dev_priv->drm,
>  			"Timed out waiting for DP idle patterns\n");
> @@ -4381,7 +4409,6 @@ void intel_ddi_get_config(struct intel_encoder *enc=
oder,
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D pipe_config->cpu_transcoder;
> -	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	u32 temp, flags =3D 0;
>  =

>  	/* XXX: DSI transcoder paranoia */
> @@ -4451,12 +4478,7 @@ void intel_ddi_get_config(struct intel_encoder *en=
coder,
>  		intel_dp_get_m_n(intel_crtc, pipe_config);
>  =

>  		if (INTEL_GEN(dev_priv) >=3D 11) {
> -			i915_reg_t dp_tp_ctl;
> -
> -			if (IS_GEN(dev_priv, 11))
> -				dp_tp_ctl =3D DP_TP_CTL(encoder->port);
> -			else
> -				dp_tp_ctl =3D TGL_DP_TP_CTL(pipe_config->cpu_transcoder);
> +			i915_reg_t dp_tp_ctl =3D dp_tp_ctl_reg(encoder, pipe_config);
>  =

>  			pipe_config->fec_enable =3D
>  				intel_de_read(dev_priv, dp_tp_ctl) & DP_TP_CTL_FEC_ENABLE;
> @@ -4489,16 +4511,6 @@ void intel_ddi_get_config(struct intel_encoder *en=
coder,
>  		break;
>  	}
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 12) {
> -		enum transcoder transcoder =3D
> -			intel_dp_mst_is_slave_trans(pipe_config) ?
> -			pipe_config->mst_master_transcoder :
> -			pipe_config->cpu_transcoder;
> -
> -		intel_dp->regs.dp_tp_ctl =3D TGL_DP_TP_CTL(transcoder);
> -		intel_dp->regs.dp_tp_status =3D TGL_DP_TP_STATUS(transcoder);
> -	}
> -
>  	pipe_config->has_audio =3D
>  		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
>  =

> @@ -4763,11 +4775,6 @@ intel_ddi_init_dp_connector(struct intel_digital_p=
ort *dig_port)
>  	dig_port->dp.voltage_max =3D intel_ddi_dp_voltage_max;
>  	dig_port->dp.preemph_max =3D intel_ddi_dp_preemph_max;
>  =

> -	if (INTEL_GEN(dev_priv) < 12) {
> -		dig_port->dp.regs.dp_tp_ctl =3D DP_TP_CTL(port);
> -		dig_port->dp.regs.dp_tp_status =3D DP_TP_STATUS(port);
> -	}
> -
>  	if (!intel_dp_init_connector(dig_port, connector)) {
>  		kfree(connector);
>  		return NULL;
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i=
915/display/intel_ddi.h
> index 9a2ac73164f8..dcc711cfe4fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -7,6 +7,7 @@
>  #define __INTEL_DDI_H__
>  =

>  #include "intel_display.h"
> +#include "i915_reg.h"
>  =

>  struct drm_connector_state;
>  struct drm_i915_private;
> @@ -18,6 +19,10 @@ struct intel_dpll_hw_state;
>  struct intel_encoder;
>  enum transcoder;
>  =

> +i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state);
> +i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
> +			    const struct intel_crtc_state *crtc_state);
>  void intel_ddi_fdi_post_disable(struct intel_atomic_state *state,
>  				struct intel_encoder *intel_encoder,
>  				const struct intel_crtc_state *old_crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 66d197153c93..d5dc18cb8c39 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1338,14 +1338,6 @@ struct intel_dp {
>  	bool is_mst;
>  	int active_mst_links;
>  =

> -	/*
> -	 * DP_TP_* registers may be either on port or transcoder register space.
> -	 */
> -	struct {
> -		i915_reg_t dp_tp_ctl;
> -		i915_reg_t dp_tp_status;
> -	} regs;
> -
>  	/* connector directly attached - won't be use for modeset in mst world =
*/
>  	struct intel_connector *attached_connector;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 5ac8a06575d4..208851296cce 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -8109,8 +8109,6 @@ bool intel_dp_init(struct drm_i915_private *dev_pri=
v,
>  =

>  	dig_port->dp.output_reg =3D output_reg;
>  	dig_port->max_lanes =3D 4;
> -	dig_port->dp.regs.dp_tp_ctl =3D DP_TP_CTL(port);
> -	dig_port->dp.regs.dp_tp_status =3D DP_TP_STATUS(port);
>  =

>  	intel_encoder->type =3D INTEL_OUTPUT_DP;
>  	intel_encoder->power_domain =3D intel_port_to_power_domain(port);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 6a874b779b1f..82f38c386dbd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -318,19 +318,23 @@ intel_dp_mst_atomic_check(struct drm_connector *con=
nector,
>  	return ret;
>  }
>  =

> -static void clear_act_sent(struct intel_dp *intel_dp)
> +static void clear_act_sent(struct intel_encoder *encoder,
> +			   const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  =

> -	intel_de_write(i915, intel_dp->regs.dp_tp_status,
> +	intel_de_write(i915, dp_tp_status_reg(encoder, crtc_state),
>  		       DP_TP_STATUS_ACT_SENT);
>  }
>  =

> -static void wait_for_act_sent(struct intel_dp *intel_dp)
> +static void wait_for_act_sent(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(encoder);
> +	struct intel_dp *intel_dp =3D &intel_mst->primary->dp;
>  =

> -	if (intel_de_wait_for_set(i915, intel_dp->regs.dp_tp_status,
> +	if (intel_de_wait_for_set(i915, dp_tp_status_reg(encoder, crtc_state),
>  				  DP_TP_STATUS_ACT_SENT, 1))
>  		drm_err(&i915->drm, "Timed out waiting for ACT sent\n");
>  =

> @@ -392,7 +396,7 @@ static void intel_mst_post_disable_dp(struct intel_at=
omic_state *state,
>  =

>  	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
>  =

> -	clear_act_sent(intel_dp);
> +	clear_act_sent(encoder, old_crtc_state);
>  =

>  	val =3D intel_de_read(dev_priv,
>  			    TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder));
> @@ -401,7 +405,7 @@ static void intel_mst_post_disable_dp(struct intel_at=
omic_state *state,
>  		       TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder),
>  		       val);
>  =

> -	wait_for_act_sent(intel_dp);
> +	wait_for_act_sent(encoder, old_crtc_state);
>  =

>  	drm_dp_mst_deallocate_vcpi(&intel_dp->mst_mgr, connector->port);
>  =

> @@ -535,7 +539,7 @@ static void intel_mst_enable_dp(struct intel_atomic_s=
tate *state,
>  =

>  	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
>  =

> -	clear_act_sent(intel_dp);
> +	clear_act_sent(encoder, pipe_config);
>  =

>  	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>  =

> @@ -549,7 +553,7 @@ static void intel_mst_enable_dp(struct intel_atomic_s=
tate *state,
>  	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
>  		    intel_dp->active_mst_links);
>  =

> -	wait_for_act_sent(intel_dp);
> +	wait_for_act_sent(encoder, pipe_config);
>  =

>  	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
>  =

> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
