Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16207379AE4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 01:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B256E975;
	Mon, 10 May 2021 23:46:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 939D06E975
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 23:46:01 +0000 (UTC)
IronPort-SDR: pYaEvaAwYzeVhVy0lrbHYxs659ArtWe6dBsWMzbYOqCJtrNMUrthNkkoy2M9T3lVCKxXDZSOQj
 HVaguuOTtiKQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="179577745"
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="179577745"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 16:46:01 -0700
IronPort-SDR: sJmXAShv8eCEaK8VdQdQDpb4JX4YNWul0giuAfR6n0LYfXrYKfSWElPs8iIwMsuzHSu1PUjDej
 HpdJHgW0ZV/Q==
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="434029475"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 16:46:00 -0700
Date: Mon, 10 May 2021 16:45:52 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210510234552.GA31357@InViCtUs>
References: <20210418002126.87882-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210418002126.87882-1-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/display: Fill PSR state during
 hardware configuration read out
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

On Sat, Apr 17, 2021 at 05:21:22PM -0700, Jos=E9 Roberto de Souza wrote:
> So far if we had a mismatch between the state asked and what was
> programmed in hardware for PSR, this mismatch would go unnoticed.
> =

> So here adding the PSR to the hardware configuration readout,
> EDP_PSR_CTL and EDP_PSR2_CTL can't be directly read because its state
> flips due to other factors like frontbuffer modifications and CRC.
> =

Minor nit-pick below with that fixed
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  2 +
>  drivers/gpu/drm/i915/display/intel_display.c |  5 +++
>  drivers/gpu/drm/i915/display/intel_psr.c     | 47 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_psr.h     |  3 ++
>  4 files changed, 57 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 4ef573883412..f69ed3c4c30a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3707,6 +3707,8 @@ static void intel_ddi_get_config(struct intel_encod=
er *encoder,
>  =

>  	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA=
);
>  	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
> +
> +	intel_psr_get_config(encoder, pipe_config);
>  }
>  =

>  void intel_ddi_get_clock(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 9c13d0ac022b..ecdca523e364 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8350,6 +8350,11 @@ intel_pipe_config_compare(const struct intel_crtc_=
state *current_config,
>  	PIPE_CONF_CHECK_I(vrr.flipline);
>  	PIPE_CONF_CHECK_I(vrr.pipeline_full);
>  =

> +	PIPE_CONF_CHECK_BOOL(has_psr);
> +	PIPE_CONF_CHECK_BOOL(has_psr2);
> +	PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
> +	PIPE_CONF_CHECK_I(dc3co_exitline);
> +
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
>  #undef PIPE_CONF_CHECK_BOOL
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 4ad756e238c5..bd7997a3ef7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -886,6 +886,53 @@ void intel_psr_compute_config(struct intel_dp *intel=
_dp,
>  	crtc_state->infoframes.enable |=3D intel_hdmi_infoframe_enable(DP_SDP_V=
SC);
>  }
>  =

> +void intel_psr_get_config(struct intel_encoder *encoder,
> +			  struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	struct intel_dp *intel_dp;
> +	u32 val;
> +
> +	if (!dig_port)
> +		return;
> +
> +	intel_dp =3D &dig_port->dp;
> +	if (!CAN_PSR(intel_dp))
> +		return;
> +
> +	mutex_lock(&intel_dp->psr.lock);
> +	if (!intel_dp->psr.enabled) {
goto unlock: should suffice here instead of unlock and return.

-RK
> +		mutex_unlock(&intel_dp->psr.lock);
> +		return;
> +	}
> +
> +	/*
> +	 * Not possible to read EDP_PSR/PSR2_CTL registers as it is
> +	 * enabled/disabled because of frontbuffer tracking and others.
> +	 */
> +	pipe_config->has_psr =3D true;
> +	pipe_config->has_psr2 =3D intel_dp->psr.psr2_enabled;
> +	pipe_config->infoframes.enable |=3D intel_hdmi_infoframe_enable(DP_SDP_=
VSC);
> +
> +	if (!intel_dp->psr.psr2_enabled)
> +		goto unlock;
> +
> +	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
> +		val =3D intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transco=
der));
> +		if (val & PSR2_MAN_TRK_CTL_ENABLE)
> +			pipe_config->enable_psr2_sel_fetch =3D true;
> +	}
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 12) {
> +		val =3D intel_de_read(dev_priv, EXITLINE(intel_dp->psr.transcoder));
> +		val &=3D EXITLINE_MASK;
> +		pipe_config->dc3co_exitline =3D val;
> +	}
> +unlock:
> +	mutex_unlock(&intel_dp->psr.lock);
> +}
> +
>  static void intel_psr_activate(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i=
915/display/intel_psr.h
> index 0491a49ffd50..e3db85e97f4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -17,6 +17,7 @@ struct intel_crtc;
>  struct intel_atomic_state;
>  struct intel_plane_state;
>  struct intel_plane;
> +struct intel_encoder;
>  =

>  void intel_psr_init_dpcd(struct intel_dp *intel_dp);
>  void intel_psr_enable(struct intel_dp *intel_dp,
> @@ -37,6 +38,8 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
>  void intel_psr_init(struct intel_dp *intel_dp);
>  void intel_psr_compute_config(struct intel_dp *intel_dp,
>  			      struct intel_crtc_state *crtc_state);
> +void intel_psr_get_config(struct intel_encoder *encoder,
> +			  struct intel_crtc_state *pipe_config);
>  void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);
>  void intel_psr_short_pulse(struct intel_dp *intel_dp);
>  void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_sta=
te);
> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
