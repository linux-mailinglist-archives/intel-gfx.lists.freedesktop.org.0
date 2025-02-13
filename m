Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7AFA34E55
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 20:18:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63D1E10EB82;
	Thu, 13 Feb 2025 19:18:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mQEJUAlI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA05E10EB82
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 19:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739474315; x=1771010315;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=zTSjZheSc2BE2cDtnd1Kb/qi22MnZQHWlQ26kkSSqiU=;
 b=mQEJUAlIZGywIJVLSe36G+R29v87rIkYpHMF7DyE9jmQnPj1poih/ypg
 vxbBnBLu9OqX4DQxqSIxGa+foIYkYLlww0oPbieya/OuTDoFUJMHMcTaQ
 yrvy1GkwPFiJ7g+qQSEv5es75UjU2a7OndpdwcsbmzuCzcmHVrdujeZaZ
 q3ZnAQhUReBYtzdJfBDy80EaSr/9CUkPYrRXp+MPrKcLB0Ah/Xa/Gky/7
 GbY1+4K1vJsqSOwEN1+q75Vpn+WaTnnYUBo/5ecYhP+ti8t17QTR1NHFq
 xuR7tw6oslFXul+aCAq2XyNwIE5l2d+UL78WrjnSsHf7CxyB0RYU+BbPy A==;
X-CSE-ConnectionGUID: yzzBxO7yQQS6eW87RerTVg==
X-CSE-MsgGUID: NZseJ0s5RMSPe+7aHC956g==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="40461281"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40461281"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:18:35 -0800
X-CSE-ConnectionGUID: 11ReeGVIRQSCwt5JxBAFYA==
X-CSE-MsgGUID: UfpSEPbpQZqyq0pphxJEZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="144182722"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:18:33 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 07/12] drm/i915: Relocate vlv_wait_port_ready()
In-Reply-To: <20250213150220.13580-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
 <20250213150220.13580-8-ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2025 21:18:29 +0200
Message-ID: <87zfipwt4q.fsf@intel.com>
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
> While vlv_wait_port_ready() doens't directly talk to the VLV/CHV
> DPIO PHY, the signals it's looking for do come from the PHY. So
> it seems appropriate to relocate it into intel_dpio_phy.c.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 34 -------------------
>  drivers/gpu/drm/i915/display/intel_display.h  |  3 --
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 34 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dpio_phy.h |  8 +++++
>  4 files changed, 42 insertions(+), 37 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 4278212a2496..c2bde539a4ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -474,40 +474,6 @@ static void assert_planes_disabled(struct intel_crtc=
 *crtc)
>  		assert_plane_disabled(plane);
>  }
>=20=20
> -void vlv_wait_port_ready(struct intel_display *display,
> -			 struct intel_digital_port *dig_port,
> -			 unsigned int expected_mask)
> -{
> -	u32 port_mask;
> -	i915_reg_t dpll_reg;
> -
> -	switch (dig_port->base.port) {
> -	default:
> -		MISSING_CASE(dig_port->base.port);
> -		fallthrough;
> -	case PORT_B:
> -		port_mask =3D DPLL_PORTB_READY_MASK;
> -		dpll_reg =3D DPLL(display, 0);
> -		break;
> -	case PORT_C:
> -		port_mask =3D DPLL_PORTC_READY_MASK;
> -		dpll_reg =3D DPLL(display, 0);
> -		expected_mask <<=3D 4;
> -		break;
> -	case PORT_D:
> -		port_mask =3D DPLL_PORTD_READY_MASK;
> -		dpll_reg =3D DPIO_PHY_STATUS;
> -		break;
> -	}
> -
> -	if (intel_de_wait(display, dpll_reg, port_mask, expected_mask, 1000))
> -		drm_WARN(display->drm, 1,
> -			 "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expecte=
d 0x%x\n",
> -			 dig_port->base.base.base.id, dig_port->base.base.name,
> -			 intel_de_read(display, dpll_reg) & port_mask,
> -			 expected_mask);
> -}
> -
>  void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_sta=
te)
>  {
>  	struct intel_display *display =3D to_intel_display(new_crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 2e11fc2ba1f4..b3cdf7f04450 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -488,9 +488,6 @@ bool intel_encoder_is_tc(struct intel_encoder *encode=
r);
>  enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder);
>=20=20
>  int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
> -void vlv_wait_port_ready(struct intel_display *display,
> -			 struct intel_digital_port *dig_port,
> -			 unsigned int expected_mask);
>=20=20
>  bool intel_fuzzy_clock_check(int clock1, int clock2);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/=
drm/i915/display/intel_dpio_phy.c
> index 5f88702818d3..968b795206b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -1156,3 +1156,37 @@ void vlv_phy_reset_lanes(struct intel_encoder *enc=
oder,
>  	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1_GRP(ch), 0x00e00060);
>  	vlv_dpio_put(dev_priv);
>  }
> +
> +void vlv_wait_port_ready(struct intel_display *display,
> +			 struct intel_digital_port *dig_port,
> +			 unsigned int expected_mask)
> +{
> +	u32 port_mask;
> +	i915_reg_t dpll_reg;
> +
> +	switch (dig_port->base.port) {
> +	default:
> +		MISSING_CASE(dig_port->base.port);
> +		fallthrough;
> +	case PORT_B:
> +		port_mask =3D DPLL_PORTB_READY_MASK;
> +		dpll_reg =3D DPLL(display, 0);
> +		break;
> +	case PORT_C:
> +		port_mask =3D DPLL_PORTC_READY_MASK;
> +		dpll_reg =3D DPLL(display, 0);
> +		expected_mask <<=3D 4;
> +		break;
> +	case PORT_D:
> +		port_mask =3D DPLL_PORTD_READY_MASK;
> +		dpll_reg =3D DPIO_PHY_STATUS;
> +		break;
> +	}
> +
> +	if (intel_de_wait(display, dpll_reg, port_mask, expected_mask, 1000))
> +		drm_WARN(display->drm, 1,
> +			 "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expecte=
d 0x%x\n",
> +			 dig_port->base.base.base.id, dig_port->base.base.name,
> +			 intel_de_read(display, dpll_reg) & port_mask,
> +			 expected_mask);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.h b/drivers/gpu/=
drm/i915/display/intel_dpio_phy.h
> index a82939165546..15596407fe87 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
> @@ -72,6 +72,9 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *e=
ncoder,
>  				const struct intel_crtc_state *crtc_state);
>  void vlv_phy_reset_lanes(struct intel_encoder *encoder,
>  			 const struct intel_crtc_state *old_crtc_state);
> +void vlv_wait_port_ready(struct intel_display *display,
> +			 struct intel_digital_port *dig_port,
> +			 unsigned int expected_mask);
>  #else
>  static inline void bxt_port_to_phy_channel(struct intel_display *display=
, enum port port,
>  					   enum dpio_phy *phy, enum dpio_channel *ch)
> @@ -170,6 +173,11 @@ static inline void vlv_phy_reset_lanes(struct intel_=
encoder *encoder,
>  				       const struct intel_crtc_state *old_crtc_state)
>  {
>  }
> +static inline void vlv_wait_port_ready(struct intel_display *display,
> +				       struct intel_digital_port *dig_port,
> +				       unsigned int expected_mask)
> +{
> +}
>  #endif
>=20=20
>  #endif /* __INTEL_DPIO_PHY_H__ */

--=20
Jani Nikula, Intel
