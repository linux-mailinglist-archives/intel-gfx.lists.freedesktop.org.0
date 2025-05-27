Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C80D4AC4A0B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 10:21:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6263F10E3D2;
	Tue, 27 May 2025 08:21:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ElWSSO/m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BE7710E3D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 May 2025 08:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748334063; x=1779870063;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=umUrfwrtlPagCLwi/Dl/TvOQXXhn4tNAIIp19gBvK98=;
 b=ElWSSO/mBIH1TmlIbGBRa3pBdwhEdmuC64U0Css+Vuk9E05vHLN5ou4K
 qeXSH4xPaahAn47zxokSKLiCzkHwI5PbjS8KmbzdaQVyoKI7uPrMi9GQR
 7Y6s48t+F5BvyI+x+7Rl2+FNdoXe1JOCoMvDay0B959RzL/9rAeqxC9Qw
 KulAFlAW0XHCWtQCDxFk+iWSD3V1wuyR9XWsCl/p4NEH27GGmXIYPu6uA
 2ElbP7LqBDZDZ3ap6PJ27ZJKmVkE7nUvBK0m7SKHBYffHsmm/UPEGsa14
 mGQFqf/T/fYXD0nDh1mCE4O2n+YUgAb29Pv6aoWo9TJ5i9nP6st26CUwm Q==;
X-CSE-ConnectionGUID: CioI2fBnTLOAWGDUswspTQ==
X-CSE-MsgGUID: Uzk2gW/PRRG4pFWST7WbLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="50470478"
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="50470478"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 01:21:02 -0700
X-CSE-ConnectionGUID: R0pxAZjHQrqrlJ71JtZGQg==
X-CSE-MsgGUID: 7/LmPcF+T6SIR4LtCmWnUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="143684640"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 01:21:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>, Shankar Uma
 <uma.shankar@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/dp: Enable DSC on external DP display if VBT
 allows
In-Reply-To: <20250527075906.65542-1-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250527075906.65542-1-shawn.c.lee@intel.com>
Date: Tue, 27 May 2025 11:20:57 +0300
Message-ID: <3ece87d79ad1414be4777d3b252e8e8b74f8cb96@intel.com>
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

On Tue, 27 May 2025, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> A DSC setting has been available in VBT since version 251, which allows
> users to enable or disable the DSC feature based on their system design.
> With this in mind, DP driver should reference this setting and avoid
> enabling DSC if this value is not allowed.
>
> Cc: Shankar Uma <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c   |  8 ++++++++
>  drivers/gpu/drm/i915/display/intel_bios.h   |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c     | 12 +++++++++---
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
>  5 files changed, 20 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index ba7b8938b17c..f08dd54fe4d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3548,6 +3548,14 @@ bool intel_bios_get_dsc_params(struct intel_encode=
r *encoder,
>  	return false;
>  }
>=20=20
> +bool intel_bios_encoder_ext_display_dsc_disabled(const struct intel_bios=
_encoder_data *devdata)

Prefer positive instead of negative, and follow naming conventions.

intel_bios_encoder_supports_dsc().

> +{
> +	if (!devdata || devdata->display->vbt.version < 251)
> +		return false;
> +
> +	return devdata->child.disable_compression_for_ext_disp;
> +}
> +
>  static const u8 adlp_aux_ch_map[] =3D {
>  	[AUX_CH_A] =3D DP_AUX_A,
>  	[AUX_CH_B] =3D DP_AUX_B,
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index 6cd7a011b8c4..901ba63e205d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -258,6 +258,7 @@ bool intel_bios_encoder_supports_dp_dual_mode(const s=
truct intel_bios_encoder_da
>  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *=
devdata);
>  bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_da=
ta *devdata);
>  bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data =
*devdata);
> +bool intel_bios_encoder_ext_display_dsc_disabled(const struct intel_bios=
_encoder_data *devdata);
>  enum port intel_bios_encoder_port(const struct intel_bios_encoder_data *=
devdata);
>  enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *d=
evdata);
>  int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devd=
ata);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 640c43bf62d4..eb1e6de0148a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1389,9 +1389,11 @@ int intel_dp_num_joined_pipes(struct intel_dp *int=
el_dp,
>  	return 1;
>  }
>=20=20
> -bool intel_dp_has_dsc(const struct intel_connector *connector)
> +bool intel_dp_has_dsc(struct intel_dp *intel_dp,

There's no need to pass that in.

> +		      const struct intel_connector *connector)
>  {
>  	struct intel_display *display =3D to_intel_display(connector);
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>=20=20
>  	if (!HAS_DSC(display))
>  		return false;
> @@ -1403,6 +1405,10 @@ bool intel_dp_has_dsc(const struct intel_connector=
 *connector)
>  	    connector->panel.vbt.edp.dsc_disable)
>  		return false;
>=20=20
> +	if (connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPor=
t &&

It's just absolutely bonkers that the field is for external HDMI/DP,
there's a separate field for eDP DSC disable, and there's a separate
field for DSI DSC.

Anyway, I am wondering if the output type check should be in
intel_bios_encoder_supports_dsc() instead.

(intel_bios_encoder_supports_dp() && !intel_bios_encoder_supports_edp()) ||
intel_bios_encoder_supports_hdmi().

BR,
Jani.

> +	    intel_bios_encoder_ext_display_dsc_disabled(encoder->devdata))
> +		return false;
> +
>  	if (!drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd))
>  		return false;
>=20=20
> @@ -1463,7 +1469,7 @@ intel_dp_mode_valid(struct drm_connector *_connecto=
r,
>  	mode_rate =3D intel_dp_link_required(target_clock,
>  					   intel_dp_mode_min_output_bpp(connector, mode));
>=20=20
> -	if (intel_dp_has_dsc(connector)) {
> +	if (intel_dp_has_dsc(intel_dp, connector)) {
>  		enum intel_output_format sink_format, output_format;
>  		int pipe_bpp;
>=20=20
> @@ -1650,7 +1656,7 @@ bool intel_dp_supports_dsc(struct intel_dp *intel_d=
p,
>  			   const struct intel_connector *connector,
>  			   const struct intel_crtc_state *crtc_state)
>  {
> -	if (!intel_dp_has_dsc(connector))
> +	if (!intel_dp_has_dsc(intel_dp, connector))
>  		return false;
>=20=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) &&
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 742ae26ac4a9..309dad5b1b47 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -83,7 +83,7 @@ void intel_dp_audio_compute_config(struct intel_encoder=
 *encoder,
>  bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
>  bool intel_dp_is_edp(struct intel_dp *intel_dp);
>  bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
> -bool intel_dp_has_dsc(const struct intel_connector *connector);
> +bool intel_dp_has_dsc(struct intel_dp *intel_dp, const struct intel_conn=
ector *connector);
>  int intel_dp_link_symbol_size(int rate);
>  int intel_dp_link_symbol_clock(int rate);
>  bool intel_dp_is_port_edp(struct intel_display *display, enum port port);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index c1fd6aceec2c..4f18059d9913 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1508,7 +1508,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *=
_connector,
>  		return 0;
>  	}
>=20=20
> -	if (intel_dp_has_dsc(connector)) {
> +	if (intel_dp_has_dsc(intel_dp, connector)) {
>  		/*
>  		 * TBD pass the connector BPC,
>  		 * for now U8_MAX so that max BPC on that platform would be picked

--=20
Jani Nikula, Intel
