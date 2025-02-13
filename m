Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2B3A34E59
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 20:19:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E46E10EB84;
	Thu, 13 Feb 2025 19:19:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RU9bNuwZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CC210EB84
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 19:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739474372; x=1771010372;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=kBvKoHlHeoOccv4GGhSiSy+gi9O2DJgoIhianDUJOgg=;
 b=RU9bNuwZbIY1rgKCyIWl0bqnZVexorgmdjVbqD1JsMKyGPs+jgYxrTcw
 zqaHzTiyvqQj3YpZ9SJpWVgbxhijOKTxPFJWgvlcaWawoQiY9ccaf4ZJt
 OVDCbTosdS8WtdUqvEbVaxpmNUWQ5Mg1xDagCyPuFFkSlMUxWeUN7yGf0
 E13wdsr3tCmNbEhWfQ7i+gjvXD/8kcK4frehqizPXMh4YNd2+ptAYNEYn
 x/amFDLc7yfu5HfFj3G8vVTLv0ScucamMvw6ASPn+x/2n5+AMPEP4PUsf
 A/ZPjNbeTIV97nYe479oc3TQYEZV4npnO0kdpdYWaT/Ym2atl8pHEjO+V g==;
X-CSE-ConnectionGUID: OyFH4BcmQAyGKVB1wGuP2g==
X-CSE-MsgGUID: xBpflmiiRQOoTbOEbk67Ng==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="65551730"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="65551730"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:19:32 -0800
X-CSE-ConnectionGUID: CuuwsmWcSymRFzPo4Kn1Xw==
X-CSE-MsgGUID: uFoo2Ft0SLuYShvoZoSkIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117363671"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:19:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 08/12] drm/i915: Simplify vlv_wait_port_ready() arguments
In-Reply-To: <20250213150220.13580-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
 <20250213150220.13580-9-ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2025 21:19:26 +0200
Message-ID: <87wmdtwt35.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 13 Feb 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently vlv_wait_port_ready() takes the display+dig_port,
> but all it really needs is the encoder. The display can be
> dug out from therein.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  6 ++----
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_dpio_phy.h |  6 ++----
>  4 files changed, 10 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index 0cb98cb043c6..372c3683c193 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -701,7 +701,7 @@ static void intel_enable_dp(struct intel_atomic_state=
 *state,
>  		if (display->platform.cherryview)
>  			lane_mask =3D intel_dp_unused_lane_mask(pipe_config->lane_count);
>=20=20
> -		vlv_wait_port_ready(display, dp_to_dig_port(intel_dp), lane_mask);
> +		vlv_wait_port_ready(encoder, lane_mask);
>  	}
>=20=20
>  	intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 5c5eb3d621c8..d9d1304dcc36 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -479,7 +479,6 @@ static void vlv_hdmi_pre_enable(struct intel_atomic_s=
tate *state,
>  				const struct intel_crtc_state *pipe_config,
>  				const struct drm_connector_state *conn_state)
>  {
> -	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>=20=20
>  	vlv_phy_pre_encoder_enable(encoder, pipe_config);
> @@ -495,7 +494,7 @@ static void vlv_hdmi_pre_enable(struct intel_atomic_s=
tate *state,
>=20=20
>  	g4x_hdmi_enable_port(encoder, pipe_config);
>=20=20
> -	vlv_wait_port_ready(display, dig_port, 0x0);
> +	vlv_wait_port_ready(encoder, 0x0);
>  }
>=20=20
>  static void vlv_hdmi_pre_pll_enable(struct intel_atomic_state *state,
> @@ -556,7 +555,6 @@ static void chv_hdmi_pre_enable(struct intel_atomic_s=
tate *state,
>  				const struct intel_crtc_state *pipe_config,
>  				const struct drm_connector_state *conn_state)
>  {
> -	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>=20=20
>  	chv_phy_pre_encoder_enable(encoder, pipe_config);
> @@ -571,7 +569,7 @@ static void chv_hdmi_pre_enable(struct intel_atomic_s=
tate *state,
>=20=20
>  	g4x_hdmi_enable_port(encoder, pipe_config);
>=20=20
> -	vlv_wait_port_ready(display, dig_port, 0x0);
> +	vlv_wait_port_ready(encoder, 0x0);
>=20=20
>  	/* Second common lane will stay alive on its own now */
>  	chv_phy_release_cl2_override(encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/=
drm/i915/display/intel_dpio_phy.c
> index 968b795206b3..429f89543789 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -1157,16 +1157,16 @@ void vlv_phy_reset_lanes(struct intel_encoder *en=
coder,
>  	vlv_dpio_put(dev_priv);
>  }
>=20=20
> -void vlv_wait_port_ready(struct intel_display *display,
> -			 struct intel_digital_port *dig_port,
> +void vlv_wait_port_ready(struct intel_encoder *encoder,
>  			 unsigned int expected_mask)
>  {
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	u32 port_mask;
>  	i915_reg_t dpll_reg;
>=20=20
> -	switch (dig_port->base.port) {
> +	switch (encoder->port) {
>  	default:
> -		MISSING_CASE(dig_port->base.port);
> +		MISSING_CASE(encoder->port);
>  		fallthrough;
>  	case PORT_B:
>  		port_mask =3D DPLL_PORTB_READY_MASK;
> @@ -1186,7 +1186,7 @@ void vlv_wait_port_ready(struct intel_display *disp=
lay,
>  	if (intel_de_wait(display, dpll_reg, port_mask, expected_mask, 1000))
>  		drm_WARN(display->drm, 1,
>  			 "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expecte=
d 0x%x\n",
> -			 dig_port->base.base.base.id, dig_port->base.base.name,
> +			 encoder->base.base.id, encoder->base.name,
>  			 intel_de_read(display, dpll_reg) & port_mask,
>  			 expected_mask);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.h b/drivers/gpu/=
drm/i915/display/intel_dpio_phy.h
> index 15596407fe87..35baede3d6ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
> @@ -72,8 +72,7 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *e=
ncoder,
>  				const struct intel_crtc_state *crtc_state);
>  void vlv_phy_reset_lanes(struct intel_encoder *encoder,
>  			 const struct intel_crtc_state *old_crtc_state);
> -void vlv_wait_port_ready(struct intel_display *display,
> -			 struct intel_digital_port *dig_port,
> +void vlv_wait_port_ready(struct intel_encoder *encoder,
>  			 unsigned int expected_mask);
>  #else
>  static inline void bxt_port_to_phy_channel(struct intel_display *display=
, enum port port,
> @@ -173,8 +172,7 @@ static inline void vlv_phy_reset_lanes(struct intel_e=
ncoder *encoder,
>  				       const struct intel_crtc_state *old_crtc_state)
>  {
>  }
> -static inline void vlv_wait_port_ready(struct intel_display *display,
> -				       struct intel_digital_port *dig_port,
> +static inline void vlv_wait_port_ready(struct intel_encoder *encoder,
>  				       unsigned int expected_mask)
>  {
>  }

--=20
Jani Nikula, Intel
