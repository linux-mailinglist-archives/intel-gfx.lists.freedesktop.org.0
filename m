Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C443569ABC6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 13:45:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41A3510EFB8;
	Fri, 17 Feb 2023 12:45:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B92DC10EFB8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 12:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676637915; x=1708173915;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=nJLpzafrEWh+F2lSPP9bcIGN914WbGob/3ftPNxrr6k=;
 b=Yy1f3OORqBB/U2JDlyxwTbEouYcFVL1sXlflW3cEhSJXagy7d2lp3dN9
 Onqb7A/HEfeNhmpQEq6PkdE+xs+sEF1Wi/cAInGSS6KNhlnLobF1LI5dK
 petfYUWWjhb4KgZC8HdEwVQuYCAyg48AaxZGOwUI77h16rHAjIkEuxP+0
 m1qwCan+p0yh5l8pVFrHtnv7327EHdNoLBQgK3BB6Wrqh81HNk2W6dA5s
 tPF8990G+JLYPOO5N/UmFbjJia/odLtJFl6hDHlLM6nqV4jWsYgTMs5rC
 tasBmNlRoW68Q42WhTADxEUyi1/4r0PYgCp+auJPCO8gCbw1dVN26V+h9 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="311610812"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="311610812"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 04:45:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="734295179"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="734295179"
Received: from akocherg-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.53.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 04:45:13 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
Date: Fri, 17 Feb 2023 14:45:10 +0200
Message-ID: <87o7psxxyh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Restructure
 intel_bios_port_aux_ch()
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

On Fri, 17 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Restructure intel_bios_port_aux_ch() to resemble the ddc_pin
> counterpart, where the intel_bios.c stuff only deals with the
> child device definition, and the platform default will come from
> elsewhere.
>
> This requires the introduction if AUX_CH_NONE as the value 0
> is already taken to mean AUX_CH_A.

Related to the series, I wrote [1] a few weeks back but wasn't
completely happy. Maybe intel_dp_aux_name() should be in intel_dp_aux.c?
Maybe intel_dp_aux_init() should initialize the name, not the caller of
it?

The aux ch naming and the current single-char auc_ch_name() are a bit
misleading in many cases?


BR,
Jani.


[1] https://paste.debian.net/1271086/



>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c        |  3 ++-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c      |  3 ++-
>  drivers/gpu/drm/i915/display/intel_bios.c    | 27 ++++++++------------
>  drivers/gpu/drm/i915/display/intel_bios.h    |  5 ++--
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  3 ++-
>  drivers/gpu/drm/i915/display/intel_display.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp_aux.c  | 23 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_aux.h  |  4 +++
>  8 files changed, 47 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index 6ccbc2280ff9..a50ad0fff57c 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -17,6 +17,7 @@
>  #include "intel_display_power.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_dp_aux.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_fifo_underrun.h"
> @@ -1397,7 +1398,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>  	if (port !=3D PORT_A)
>  		intel_infoframe_init(dig_port);
>=20=20
> -	dig_port->aux_ch =3D intel_bios_port_aux_ch(dev_priv, devdata, port);
> +	dig_port->aux_ch =3D intel_dp_aux_ch(intel_encoder);
>  	if (!intel_dp_init_connector(dig_port, intel_connector))
>  		goto err_init_connector;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index e965c5513c74..34f56d8d7cb3 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -8,6 +8,7 @@
>  #include "g4x_hdmi.h"
>  #include "i915_reg.h"
>  #include "intel_audio.h"
> +#include "intel_dp_aux.h"
>  #include "intel_connector.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
> @@ -639,6 +640,6 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
>=20=20
>  	intel_infoframe_init(dig_port);
>=20=20
> -	dig_port->aux_ch =3D intel_bios_port_aux_ch(dev_priv, devdata, port);
> +	dig_port->aux_ch =3D intel_dp_aux_ch(intel_encoder);
>  	intel_hdmi_init_connector(dig_port, intel_connector);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 8cf2392a5670..f35ef3675d39 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3572,21 +3572,10 @@ bool intel_bios_get_dsc_params(struct intel_encod=
er *encoder,
>  	return false;
>  }
>=20=20
> -enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
> -				   const struct intel_bios_encoder_data *devdata,
> -				   enum port port)
> +static enum aux_ch map_aux_ch(struct drm_i915_private *i915, u8 aux_chan=
nel)
>  {
>  	enum aux_ch aux_ch;
>=20=20
> -	if (!devdata || !devdata->child.aux_channel) {
> -		aux_ch =3D (enum aux_ch)port;
> -
> -		drm_dbg_kms(&i915->drm,
> -			    "using AUX %c for port %c (platform default)\n",
> -			    aux_ch_name(aux_ch), port_name(port));
> -		return aux_ch;
> -	}
> -
>  	/*
>  	 * RKL/DG1 VBT uses PHY based mapping. Combo PHYs A,B,C,D
>  	 * map to DDI A,B,TC1,TC2 respectively.
> @@ -3594,7 +3583,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_=
private *i915,
>  	 * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
>  	 * map to DDI A,TC1,TC2,TC3,TC4 respectively.
>  	 */
> -	switch (devdata->child.aux_channel) {
> +	switch (aux_channel) {
>  	case DP_AUX_A:
>  		aux_ch =3D AUX_CH_A;
>  		break;
> @@ -3655,17 +3644,21 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i91=
5_private *i915,
>  			aux_ch =3D AUX_CH_I;
>  		break;
>  	default:
> -		MISSING_CASE(devdata->child.aux_channel);
> +		MISSING_CASE(aux_channel);
>  		aux_ch =3D AUX_CH_A;
>  		break;
>  	}
>=20=20
> -	drm_dbg_kms(&i915->drm, "using AUX %c for port %c (VBT)\n",
> -		    aux_ch_name(aux_ch), port_name(port));
> -
>  	return aux_ch;
>  }
>=20=20
> +enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *d=
evdata)
> +{
> +	if (!devdata || !devdata->child.aux_channel)
> +		return AUX_CH_NONE;
> +
> +	return map_aux_ch(devdata->i915, devdata->child.aux_channel);
> +}
>=20=20
>  int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devd=
ata)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index 49a9e8d40e88..8a0730c9b48c 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -38,6 +38,7 @@ struct intel_bios_encoder_data;
>  struct intel_crtc_state;
>  struct intel_encoder;
>  struct intel_panel;
> +enum aux_ch;
>  enum port;
>=20=20
>  enum intel_backlight_type {
> @@ -248,9 +249,6 @@ bool intel_bios_is_port_present(struct drm_i915_priva=
te *dev_priv, enum port por
>  bool intel_bios_is_port_edp(struct drm_i915_private *dev_priv, enum port=
 port);
>  bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *dev_priv, =
enum port port);
>  bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum p=
ort *port);
> -enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
> -				   const struct intel_bios_encoder_data *devdata,
> -				   enum port port);
>  bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>  			       struct intel_crtc_state *crtc_state,
>  			       int dsc_max_bpc);
> @@ -269,6 +267,7 @@ bool intel_bios_encoder_supports_tbt(const struct int=
el_bios_encoder_data *devda
>  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *=
devdata);
>  bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_da=
ta *devdata);
>  bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data =
*devdata);
> +enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *d=
evdata);
>  int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devd=
ata);
>  int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *d=
evdata);
>  int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *de=
vdata);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index e917d91ea9f9..3f5a81e08040 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -47,6 +47,7 @@
>  #include "intel_dkl_phy.h"
>  #include "intel_dkl_phy_regs.h"
>  #include "intel_dp.h"
> +#include "intel_dp_aux.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_dp_mst.h"
>  #include "intel_dpio_phy.h"
> @@ -4486,7 +4487,7 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>=20=20
>  	dig_port->dp.output_reg =3D INVALID_MMIO_REG;
>  	dig_port->max_lanes =3D intel_ddi_max_lanes(dig_port);
> -	dig_port->aux_ch =3D intel_bios_port_aux_ch(dev_priv, devdata, port);
> +	dig_port->aux_ch =3D intel_dp_aux_ch(encoder);
>=20=20
>  	if (intel_phy_is_tc(dev_priv, phy)) {
>  		bool is_legacy =3D
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index ed852f62721d..50285fb4fcf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -172,6 +172,8 @@ enum tc_port_mode {
>  };
>=20=20
>  enum aux_ch {
> +	AUX_CH_NONE =3D -1,
> +
>  	AUX_CH_A,
>  	AUX_CH_B,
>  	AUX_CH_C,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.c
> index 5a176bfb10a2..c4e72c17e06a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -6,6 +6,7 @@
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "i915_trace.h"
> +#include "intel_bios.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dp_aux.h"
> @@ -737,3 +738,25 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>  	intel_dp->aux.transfer =3D intel_dp_aux_transfer;
>  	cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
>  }
> +
> +enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	enum port port =3D encoder->port;
> +	enum aux_ch aux_ch;
> +
> +	aux_ch =3D intel_bios_dp_aux_ch(encoder->devdata);
> +	if (aux_ch !=3D AUX_CH_NONE) {
> +		drm_dbg_kms(&i915->drm, "using AUX %c for port %c (VBT)\n",
> +			    aux_ch_name(aux_ch), port_name(port));
> +		return aux_ch;
> +	}
> +
> +	aux_ch =3D (enum aux_ch)port;
> +
> +	drm_dbg_kms(&i915->drm,
> +		    "using AUX %c for port %c (platform default)\n",
> +		    aux_ch_name(aux_ch), port_name(port));
> +
> +	return aux_ch;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.h
> index 738577537bc7..138e340f94ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> @@ -6,9 +6,13 @@
>  #ifndef __INTEL_DP_AUX_H__
>  #define __INTEL_DP_AUX_H__
>=20=20
> +enum aux_ch;
>  struct intel_dp;
> +struct intel_encoder;
>=20=20
>  void intel_dp_aux_fini(struct intel_dp *intel_dp);
>  void intel_dp_aux_init(struct intel_dp *intel_dp);
>=20=20
> +enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder);
> +
>  #endif /* __INTEL_DP_AUX_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
