Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 160F8743FEA
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 18:38:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16AF710E4BB;
	Fri, 30 Jun 2023 16:38:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1C0F10E4BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 16:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688143122; x=1719679122;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=SnsX699IVuABRBi9bhTodifcCRvSRI/hx/Yx/ESGbZA=;
 b=goW5qz8Zb1CD1AMobJWAaak9Y0MaKeKaCmbWTxBpBbk54Yv3Y6ebOzRq
 rXlPCWB8CFVy08szkJmoqR2tI69/rzAV8tDX5mgk5GodIvSan3ob6cCXR
 mX9H1kwE3NY6wGhEq+74zKUH7K/i3J9kV58edtBgqXIMqeAv4P5zj5XZt
 m7bM//xj8hd8PEcMhsvk7Z67NXEXo8jiHv6IGNxrNYv/DQiwMDTcWK9yf
 yhLaqMNfIgFApBuzxge2S/LiSjFItI/JgfgaC3l5aHoFajIeTK6yYsB0m
 VSXzQtFh4V5TAjeNJaGjlWcU5tw7ZWRq5IgQ7UudugeoJh30cTR17dCxw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="428482099"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="428482099"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 09:38:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="862347839"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="862347839"
Received: from lpascal-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.49.62])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 09:38:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230630155846.29931-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
 <20230630155846.29931-7-ville.syrjala@linux.intel.com>
Date: Fri, 30 Jun 2023 19:38:38 +0300
Message-ID: <87y1k029dd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 6/6] drm/i915: Try to initialize DDI/ICL+
 DSI ports for every VBT child device
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

On Fri, 30 Jun 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Try to deal with duplicate child devices for the same DDI port
> by attempting to initialize them in VBT defined order The first
> on to succeed for a specific DDI port will be the one we use.
>
> We'll also get rid of i915->display.vbt.ports[] here as any conflicts
> will now be handled at encoder registration time rather than during
> VBT parsing. Note that intel_bios_encoder_data_lookup() still remaims
> for pre-DDI DP/HDMI ports as those don't (at least yet) use VBT
> driven initialization.
>
> TODO: DSI dual link handling is sketchy at best

Despite the sketchy bits this seems like a step forward.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> v2: Leave intel_bios_encoder_port() to the encoder callback (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  9 ++-
>  drivers/gpu/drm/i915/display/icl_dsi.h        |  4 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     | 47 ++++++++-------
>  drivers/gpu/drm/i915/display/intel_bios.h     |  6 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 57 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_ddi.h      |  4 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 11 +---
>  .../gpu/drm/i915/display/intel_display_core.h |  2 -
>  8 files changed, 93 insertions(+), 47 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 59a2a289d9be..f7ebc146f96d 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1933,7 +1933,8 @@ static void icl_dsi_add_properties(struct intel_con=
nector *connector)
>  						       fixed_mode->vdisplay);
>  }
>=20=20
> -void icl_dsi_init(struct drm_i915_private *dev_priv)
> +void icl_dsi_init(struct drm_i915_private *dev_priv,
> +		  const struct intel_bios_encoder_data *devdata)
>  {
>  	struct intel_dsi *intel_dsi;
>  	struct intel_encoder *encoder;
> @@ -1941,7 +1942,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	struct drm_connector *connector;
>  	enum port port;
>=20=20
> -	if (!intel_bios_is_dsi_present(dev_priv, &port))
> +	port =3D intel_bios_encoder_port(devdata);
> +	if (port =3D=3D PORT_NONE)
>  		return;
>=20=20
>  	intel_dsi =3D kzalloc(sizeof(*intel_dsi), GFP_KERNEL);
> @@ -1958,6 +1960,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	intel_dsi->attached_connector =3D intel_connector;
>  	connector =3D &intel_connector->base;
>=20=20
> +	encoder->devdata =3D devdata;
> +
>  	/* register DSI encoder with DRM subsystem */
>  	drm_encoder_init(&dev_priv->drm, &encoder->base, &gen11_dsi_encoder_fun=
cs,
>  			 DRM_MODE_ENCODER_DSI, "DSI %c", port_name(port));
> @@ -1995,7 +1999,6 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>=20=20
>  	intel_dsi->panel_power_off_time =3D ktime_get_boottime();
>=20=20
> -	encoder->devdata =3D intel_bios_encoder_data_lookup(dev_priv, port);
>  	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, encoder->=
devdata, NULL);
>=20=20
>  	mutex_lock(&dev_priv->drm.mode_config.mutex);
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.h b/drivers/gpu/drm/i91=
5/display/icl_dsi.h
> index b4861b56b5b2..43fa7d72eeb1 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.h
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.h
> @@ -7,9 +7,11 @@
>  #define __ICL_DSI_H__
>=20=20
>  struct drm_i915_private;
> +struct intel_bios_encoder_data;
>  struct intel_crtc_state;
>=20=20
> -void icl_dsi_init(struct drm_i915_private *i915);
> +void icl_dsi_init(struct drm_i915_private *dev_priv,
> +		  const struct intel_bios_encoder_data *devdata);
>  void icl_dsi_frame_update(struct intel_crtc_state *crtc_state);
>=20=20
>  #endif /* __ICL_DSI_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index c96bbbe4448e..858c959f7bab 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2374,7 +2374,7 @@ dsi_dvo_port_to_port(struct drm_i915_private *i915,=
 u8 dvo_port)
>  	}
>  }
>=20=20
> -static enum port intel_bios_encoder_port(const struct intel_bios_encoder=
_data *devdata)
> +enum port intel_bios_encoder_port(const struct intel_bios_encoder_data *=
devdata)
>  {
>  	struct drm_i915_private *i915 =3D devdata->i915;
>  	const struct child_device_config *child =3D &devdata->child;
> @@ -2497,7 +2497,7 @@ intel_bios_encoder_supports_edp(const struct intel_=
bios_encoder_data *devdata)
>  		devdata->child.device_type & DEVICE_TYPE_INTERNAL_CONNECTOR;
>  }
>=20=20
> -static bool
> +bool
>  intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *de=
vdata)
>  {
>  	return devdata->child.device_type & DEVICE_TYPE_MIPI_OUTPUT;
> @@ -2556,13 +2556,17 @@ static bool is_port_valid(struct drm_i915_private=
 *i915, enum port port)
>  	return true;
>  }
>=20=20
> -static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
> -			   enum port port)
> +static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
>  {
>  	struct drm_i915_private *i915 =3D devdata->i915;
>  	const struct child_device_config *child =3D &devdata->child;
>  	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb=
, supports_tbt;
>  	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shif=
t, max_tmds_clock;
> +	enum port port;
> +
> +	port =3D intel_bios_encoder_port(devdata);
> +	if (port =3D=3D PORT_NONE)
> +		return;
>=20=20
>  	is_dvi =3D intel_bios_encoder_supports_dvi(devdata);
>  	is_dp =3D intel_bios_encoder_supports_dp(devdata);
> @@ -2639,16 +2643,7 @@ static void parse_ddi_port(struct intel_bios_encod=
er_data *devdata)
>  		return;
>  	}
>=20=20
> -	if (i915->display.vbt.ports[port]) {
> -		drm_dbg_kms(&i915->drm,
> -			    "More than one child device for port %c in VBT, using the first.\=
n",
> -			    port_name(port));
> -		return;
> -	}
> -
>  	sanitize_device_type(devdata, port);
> -
> -	i915->display.vbt.ports[port] =3D devdata;
>  }
>=20=20
>  static bool has_ddi_port_info(struct drm_i915_private *i915)
> @@ -2659,7 +2654,6 @@ static bool has_ddi_port_info(struct drm_i915_priva=
te *i915)
>  static void parse_ddi_ports(struct drm_i915_private *i915)
>  {
>  	struct intel_bios_encoder_data *devdata;
> -	enum port port;
>=20=20
>  	if (!has_ddi_port_info(i915))
>  		return;
> @@ -2667,10 +2661,8 @@ static void parse_ddi_ports(struct drm_i915_privat=
e *i915)
>  	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
>  		parse_ddi_port(devdata);
>=20=20
> -	for_each_port(port) {
> -		if (i915->display.vbt.ports[port])
> -			print_ddi_port(i915->display.vbt.ports[port], port);
> -	}
> +	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
> +		print_ddi_port(devdata);
>  }
>=20=20
>  static void
> @@ -3595,5 +3587,22 @@ bool intel_bios_encoder_hpd_invert(const struct in=
tel_bios_encoder_data *devdata
>  const struct intel_bios_encoder_data *
>  intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port =
port)
>  {
> -	return i915->display.vbt.ports[port];
> +	struct intel_bios_encoder_data *devdata;
> +
> +	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
> +		if (intel_bios_encoder_port(devdata) =3D=3D port)
> +			return devdata;
> +	}
> +
> +	return NULL;
> +}
> +
> +void intel_bios_for_each_encoder(struct drm_i915_private *i915,
> +				 void (*func)(struct drm_i915_private *i915,
> +					      const struct intel_bios_encoder_data *devdata))
> +{
> +	struct intel_bios_encoder_data *devdata;
> +
> +	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
> +		func(i915, devdata);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index 45fae97d9719..9680e3e92bb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -263,10 +263,12 @@ bool intel_bios_encoder_supports_dp(const struct in=
tel_bios_encoder_data *devdat
>  bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_dat=
a *devdata);
>  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encod=
er_data *devdata);
>  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_dat=
a *devdata);
> +bool intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_dat=
a *devdata);
>  bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_en=
coder_data *devdata);
>  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *=
devdata);
>  bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_da=
ta *devdata);
>  bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data =
*devdata);
> +enum port intel_bios_encoder_port(const struct intel_bios_encoder_data *=
devdata);
>  enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *d=
evdata);
>  int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devd=
ata);
>  int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *d=
evdata);
> @@ -276,4 +278,8 @@ int intel_bios_hdmi_ddc_pin(const struct intel_bios_e=
ncoder_data *devdata);
>  int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *de=
vdata);
>  int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data =
*devdata);
>=20=20
> +void intel_bios_for_each_encoder(struct drm_i915_private *i915,
> +				 void (*func)(struct drm_i915_private *i915,
> +					      const struct intel_bios_encoder_data *devdata));
> +
>  #endif /* _INTEL_BIOS_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 9e4e6482aa26..3cd2191fa794 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -32,6 +32,7 @@
>=20=20
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "icl_dsi.h"
>  #include "intel_audio.h"
>  #include "intel_audio_regs.h"
>  #include "intel_backlight.h"
> @@ -4684,13 +4685,38 @@ static bool need_aux_ch(struct intel_encoder *enc=
oder, bool init_dp)
>  	return init_dp || intel_phy_is_tc(i915, phy);
>  }
>=20=20
> -void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> +static bool assert_has_icl_dsi(struct drm_i915_private *i915)
> +{
> +	return !drm_WARN(&i915->drm, !IS_ALDERLAKE_P(i915) &&
> +			 !IS_TIGERLAKE(i915) && DISPLAY_VER(i915) !=3D 11,
> +			 "Platform does not support DSI\n");
> +}
> +
> +static bool port_in_use(struct drm_i915_private *i915, enum port port)
> +{
> +	struct intel_encoder *encoder;
> +
> +	for_each_intel_encoder(&i915->drm, encoder) {
> +		/* FIXME what about second port for dual link DSI? */
> +		if (encoder->port =3D=3D port)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +void intel_ddi_init(struct drm_i915_private *dev_priv,
> +		    const struct intel_bios_encoder_data *devdata)
>  {
>  	struct intel_digital_port *dig_port;
>  	struct intel_encoder *encoder;
> -	const struct intel_bios_encoder_data *devdata;
>  	bool init_hdmi, init_dp;
> -	enum phy phy =3D intel_port_to_phy(dev_priv, port);
> +	enum port port;
> +	enum phy phy;
> +
> +	port =3D intel_bios_encoder_port(devdata);
> +	if (port =3D=3D PORT_NONE)
> +		return;
>=20=20
>  	if (!port_strap_detected(dev_priv, port)) {
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -4701,6 +4727,23 @@ void intel_ddi_init(struct drm_i915_private *dev_p=
riv, enum port port)
>  	if (!assert_port_valid(dev_priv, port))
>  		return;
>=20=20
> +	if (port_in_use(dev_priv, port)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Port %c already claimed\n", port_name(port));
> +		return;
> +	}
> +
> +	if (intel_bios_encoder_supports_dsi(devdata)) {
> +		/* BXT/GLK handled elsewhere, for now at least */
> +		if (!assert_has_icl_dsi(dev_priv))
> +			return;
> +
> +		icl_dsi_init(dev_priv, devdata);
> +		return;
> +	}
> +
> +	phy =3D intel_port_to_phy(dev_priv, port);
> +
>  	/*
>  	 * On platforms with HTI (aka HDPORT), if it's enabled at boot it may
>  	 * have taken over some of the PHYs and made them unavailable to the
> @@ -4713,14 +4756,6 @@ void intel_ddi_init(struct drm_i915_private *dev_p=
riv, enum port port)
>  		return;
>  	}
>=20=20
> -	devdata =3D intel_bios_encoder_data_lookup(dev_priv, port);
> -	if (!devdata) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "VBT says port %c is not present\n",
> -			    port_name(port));
> -		return;
> -	}
> -
>  	init_hdmi =3D intel_bios_encoder_supports_dvi(devdata) ||
>  		intel_bios_encoder_supports_hdmi(devdata);
>  	init_dp =3D intel_bios_encoder_supports_dp(devdata);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i=
915/display/intel_ddi.h
> index 2bc034042a93..4999c0ee229b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -11,6 +11,7 @@
>  struct drm_connector_state;
>  struct drm_i915_private;
>  struct intel_atomic_state;
> +struct intel_bios_encoder_data;
>  struct intel_connector;
>  struct intel_crtc;
>  struct intel_crtc_state;
> @@ -50,7 +51,8 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *e=
ncoder,
>  				const struct intel_crtc_state *crtc_state);
>  void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
>  			     enum port port);
> -void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port);
> +void intel_ddi_init(struct drm_i915_private *dev_priv,
> +		    const struct intel_bios_encoder_data *devdata);
>  bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pi=
pe);
>  void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
>  				      const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index eed01957bdb9..780e0fd770a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -53,7 +53,6 @@
>  #include "i915_utils.h"
>  #include "i9xx_plane.h"
>  #include "i9xx_wm.h"
> -#include "icl_dsi.h"
>  #include "intel_atomic.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_audio.h"
> @@ -7413,18 +7412,10 @@ void intel_setup_outputs(struct drm_i915_private =
*dev_priv)
>  		return;
>=20=20
>  	if (HAS_DDI(dev_priv)) {
> -		enum port port;
> -
>  		if (intel_ddi_crt_present(dev_priv))
>  			intel_crt_init(dev_priv);
>=20=20
> -		for_each_port_masked(port, DISPLAY_RUNTIME_INFO(dev_priv)->port_mask)
> -			intel_ddi_init(dev_priv, port);
> -
> -		/* FIXME do something about DSI */
> -		if (IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv) ||
> -		    DISPLAY_VER(dev_priv) =3D=3D 11)
> -			icl_dsi_init(dev_priv);
> +		intel_bios_for_each_encoder(dev_priv, intel_ddi_init);
>=20=20
>  		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  			vlv_dsi_init(dev_priv);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index c37d2c4bbf76..53e5c33e08c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -34,7 +34,6 @@ struct i915_audio_component;
>  struct i915_hdcp_arbiter;
>  struct intel_atomic_state;
>  struct intel_audio_funcs;
> -struct intel_bios_encoder_data;
>  struct intel_cdclk_funcs;
>  struct intel_cdclk_vals;
>  struct intel_color_funcs;
> @@ -219,7 +218,6 @@ struct intel_vbt_data {
>  	struct list_head display_devices;
>  	struct list_head bdb_blocks;
>=20=20
> -	struct intel_bios_encoder_data *ports[I915_MAX_PORTS]; /* Non-NULL if p=
ort present. */
>  	struct sdvo_device_mapping {
>  		u8 initialized;
>  		u8 dvo_port;

--=20
Jani Nikula, Intel Open Source Graphics Center
