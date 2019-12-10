Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7895119800
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 22:38:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE61E6E9A6;
	Tue, 10 Dec 2019 21:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E3976E9A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 21:38:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 13:38:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="264659523"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 10 Dec 2019 13:38:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2019 23:38:50 +0200
Date: Tue, 10 Dec 2019 23:38:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191210213850.GF1208@intel.com>
References: <20191207011832.422566-1-jose.souza@intel.com>
 <20191207011832.422566-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191207011832.422566-3-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp: Fix MST disable sequences
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

On Fri, Dec 06, 2019 at 05:18:31PM -0800, Jos=E9 Roberto de Souza wrote:
> The disable sequence after wait for transcoder off was not correctly
> implemented.
> The MST disable sequence is basically the same for HSW, SKL, ICL and
> TGL, with just minor changes for TGL.
> =

> So here calling a new MST function to do the MST sequences, most of
> the steps just moved from the post disable hook.
> =

> With this last patch we finally fixed the hotplugs triggered by MST
> sinks during the disable/enable sequence, those were causing source
> to try to do a link training while it was not ready causing CPU pipe
> FIFO underrrus on TGL.
> =

> BSpec: 4231
> BSpec: 4163
> BSpec: 22243
> BSpec: 49190
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 17 +++--
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 79 ++++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_dp_mst.h  |  1 +
>  4 files changed, 79 insertions(+), 20 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index be5bc506d4d3..f06c6dfec888 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -34,6 +34,7 @@
>  #include "intel_ddi.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_dp_mst.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_dsi.h"
> @@ -1953,17 +1954,19 @@ void intel_ddi_disable_transcoder_func(const stru=
ct intel_crtc_state *crtc_state
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> -	i915_reg_t reg =3D TRANS_DDI_FUNC_CTL(cpu_transcoder);
> -	u32 val =3D I915_READ(reg);
> +	u32 val;
> +
> +	val =3D I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
> +	val &=3D ~TRANS_DDI_FUNC_ENABLE;
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12) {
> -		val &=3D ~(TRANS_DDI_FUNC_ENABLE | TGL_TRANS_DDI_PORT_MASK |
> -			 TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
> +		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
> +		    intel_dp_mst_is_slave_trans(crtc_state))
> +			val &=3D ~TGL_TRANS_DDI_PORT_MASK;
>  	} else {
> -		val &=3D ~(TRANS_DDI_FUNC_ENABLE | TRANS_DDI_PORT_MASK |
> -			 TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
> +		val &=3D ~TRANS_DDI_PORT_MASK;
>  	}
> -	I915_WRITE(reg, val);
> +	I915_WRITE(TRANS_DDI_FUNC_CTL(cpu_transcoder), val);
>  =

>  	if (dev_priv->quirks & QUIRK_INCREASE_DDI_DISABLED_TIME &&
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 2f74c0bfb2a8..d3eefb271fa4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6776,6 +6776,8 @@ static void haswell_crtc_disable(struct intel_atomi=
c_state *state,
>  	if (!transcoder_is_dsi(cpu_transcoder))
>  		intel_disable_pipe(old_crtc_state);
>  =

> +	intel_dp_mst_post_trans_disabled(old_crtc_state);
> +

Basically a new ad-hoc encoder hook :(

I think we either want to suck in more crap from the crtc_enable/disable
into the encoder hooks, or we try to move everything from the current
.post_disable() into .post_pll_disable() and relocate .post_disabel()
to a better place in the sequence. Though the whole .post_pll_disable()
is a farily poor match for these platforms as there's nothing to do after
disabling the PLL. So from the hook naming POV I'd kinda want move things
the other way.

So I think moving more things into the encoder hooks sounds like a
better plan. Eg. in this case I think we could probably shovel everything
after intel_pipe_disable() into .post_disable(). Would also help us
eliminate some of those 'if !dsi' things.

I'm also thinking intel_disable_ddi_buf() should be split up and
just inlined into the proper place(s). Would help in making the sequence
more easily comparable with the spec.


>  	if (INTEL_GEN(dev_priv) >=3D 11)
>  		icl_disable_transcoder_port_sync(old_crtc_state);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 49f1518e3ab9..3c98a25e6308 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -365,6 +365,57 @@ static void intel_mst_disable_dp(struct intel_encode=
r *encoder,
>  					  old_crtc_state, old_conn_state);
>  }
>  =

> +static void
> +dp_mst_post_trans_disabled(struct intel_encoder *encoder,
> +			   const struct intel_crtc_state *old_crtc_state,
> +			   const struct drm_connector_state *old_conn_state)
> +{
> +	struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(&encoder->base);
> +	struct intel_digital_port *intel_dig_port =3D intel_mst->primary;
> +	struct intel_dp *intel_dp =3D &intel_dig_port->dp;
> +	struct intel_connector *connector =3D
> +		to_intel_connector(old_conn_state->connector);
> +	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	u32 val;
> +
> +	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
> +
> +	val =3D I915_READ(TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder));
> +	val &=3D ~TRANS_DDI_DP_VC_PAYLOAD_ALLOC;
> +	I915_WRITE(TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder), val);
> +
> +	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
> +				  DP_TP_STATUS_ACT_SENT, 1))
> +		DRM_ERROR("Timed out waiting for ACT sent when disabling\n");
> +
> +	drm_dp_check_act_status(&intel_dp->mst_mgr);
> +
> +	drm_dp_mst_deallocate_vcpi(&intel_dp->mst_mgr, connector->port);
> +}
> +
> +void
> +intel_dp_mst_post_trans_disabled(const struct intel_crtc_state *old_crtc=
_state)
> +{
> +	struct drm_atomic_state *state =3D old_crtc_state->uapi.state;
> +	struct drm_connector_state *old_conn_state;
> +	struct drm_connector *conn;
> +	int i;
> +
> +	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
> +		return;
> +
> +	for_each_old_connector_in_state(state, conn, old_conn_state, i) {
> +		struct intel_encoder *encoder;
> +
> +		if (old_conn_state->crtc !=3D old_crtc_state->uapi.crtc)
> +			continue;
> +
> +		encoder =3D to_intel_encoder(old_conn_state->best_encoder);
> +		dp_mst_post_trans_disabled(encoder, old_crtc_state,
> +					   old_conn_state);
> +	}
> +}
> +
>  static void intel_mst_post_disable_dp(struct intel_encoder *encoder,
>  				      const struct intel_crtc_state *old_crtc_state,
>  				      const struct drm_connector_state *old_conn_state)
> @@ -383,6 +434,12 @@ static void intel_mst_post_disable_dp(struct intel_e=
ncoder *encoder,
>  	WARN_ON(INTEL_GEN(dev_priv) >=3D 12 && last_mst_stream &&
>  		!intel_dp_mst_is_master_trans(old_crtc_state));
>  =

> +	/*
> +	 * Power down mst path before disabling the port, otherwise we end
> +	 * up getting interrupts from the sink upon detecting link loss.
> +	 */
> +	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port,
> +				     false);
>  	/*
>  	 * From TGL spec: "If multi-stream slave transcoder: Configure
>  	 * Transcoder Clock Select to direct no clock to the transcoder"
> @@ -393,24 +450,20 @@ static void intel_mst_post_disable_dp(struct intel_=
encoder *encoder,
>  	if (INTEL_GEN(dev_priv) < 12 || !last_mst_stream)
>  		intel_ddi_disable_pipe_clock(old_crtc_state);
>  =

> -	/* this can fail */
> -	drm_dp_check_act_status(&intel_dp->mst_mgr);
> -	/* and this can also fail */
> -	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
>  =

> -	drm_dp_mst_deallocate_vcpi(&intel_dp->mst_mgr, connector->port);
> +	intel_mst->connector =3D NULL;
> +	if (last_mst_stream) {
> +		enum transcoder cpu_transcoder;
> +		u32 val;
>  =

> -	/*
> -	 * Power down mst path before disabling the port, otherwise we end
> -	 * up getting interrupts from the sink upon detecting link loss.
> -	 */
> -	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port,
> -				     false);
> +		cpu_transcoder =3D old_crtc_state->cpu_transcoder;
> +		val =3D I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
> +		val &=3D ~TGL_TRANS_DDI_PORT_MASK;

Unconditional TGL stuff?

> +		I915_WRITE(TRANS_DDI_FUNC_CTL(cpu_transcoder), val);
>  =

> -	intel_mst->connector =3D NULL;
> -	if (last_mst_stream)
>  		intel_dig_port->base.post_disable(&intel_dig_port->base,
>  						  old_crtc_state, NULL);
> +	}
>  =

>  	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.h
> index e40767f78343..87f32fab90fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> @@ -16,5 +16,6 @@ void intel_dp_mst_encoder_cleanup(struct intel_digital_=
port *intel_dig_port);
>  int intel_dp_mst_encoder_active_links(struct intel_digital_port *intel_d=
ig_port);
>  bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_st=
ate);
>  bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_sta=
te);
> +void intel_dp_mst_post_trans_disabled(const struct intel_crtc_state *old=
_crtc_state);
>  =

>  #endif /* __INTEL_DP_MST_H__ */
> -- =

> 2.24.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
