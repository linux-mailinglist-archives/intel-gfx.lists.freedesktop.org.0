Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A268E73E02E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 15:06:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F69910E1FE;
	Mon, 26 Jun 2023 13:06:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 083FA10E1FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 13:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687784812; x=1719320812;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tGcmaL5mBQtD1NlEhETwc4Ldd/ojXgPEXvOm6N07rhk=;
 b=RrPZ62mOcqAEJMVA4EdiMvv9LD1uWBTiBufJxRzLrPql0QDQsRsnRx1z
 uK03RzkfzRio/n/qU7h3ja0lGbzhxaRmhTnV2sxsEcaVZtwlSKz1qnTSz
 KKppqlbJ2n6rDvU/jwTz8Ssu33++vROgyjIEWqM8+Pe/Rdzj4AfBvvbew
 5nyIVEgj064s9U1LH8qTXfgzpOlU+8uPIwYywGm3WThZWS3v9FvSTWZAk
 zUmBEmTdvFCCnZOiOcGbRfgRHd5bjsNMq1GOcc4jecMNuzP63EVo8T1WU
 JuJbEDCvRvnv2MIQHk3YWBWEV2CJxEGM7GNcIjfc+l4QhI9f1dDYGBqi6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="427256240"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="427256240"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 06:06:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="710210974"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="710210974"
Received: from avhiruda-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.41.186])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 06:06:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230620173242.26923-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
 <20230620173242.26923-6-ville.syrjala@linux.intel.com>
Date: Mon, 26 Jun 2023 16:06:00 +0300
Message-ID: <87bkh2v0ef.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915: Try to initialize DDI/ICL+
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

On Tue, 20 Jun 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
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

The second DSI link isn't listed as a child device, is it? Just the
first, it'll have to be the "lower" port, and the second one is implicit
based on dual link usage.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        | 11 ++--
>  drivers/gpu/drm/i915/display/icl_dsi.h        |  6 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     | 65 ++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_bios.h     |  6 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 49 +++++++++++---
>  drivers/gpu/drm/i915/display/intel_ddi.h      |  5 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 11 +---
>  .../gpu/drm/i915/display/intel_display_core.h |  2 -
>  8 files changed, 107 insertions(+), 48 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 59a2a289d9be..475f4f587c79 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1933,16 +1933,14 @@ static void icl_dsi_add_properties(struct intel_c=
onnector *connector)
>  						       fixed_mode->vdisplay);
>  }
>=20=20
> -void icl_dsi_init(struct drm_i915_private *dev_priv)
> +void icl_dsi_init(struct drm_i915_private *dev_priv,
> +		  const struct intel_bios_encoder_data *devdata,
> +		  enum port port)
>  {
>  	struct intel_dsi *intel_dsi;
>  	struct intel_encoder *encoder;
>  	struct intel_connector *intel_connector;
>  	struct drm_connector *connector;
> -	enum port port;
> -
> -	if (!intel_bios_is_dsi_present(dev_priv, &port))
> -		return;
>=20=20
>  	intel_dsi =3D kzalloc(sizeof(*intel_dsi), GFP_KERNEL);
>  	if (!intel_dsi)
> @@ -1958,6 +1956,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	intel_dsi->attached_connector =3D intel_connector;
>  	connector =3D &intel_connector->base;
>=20=20
> +	encoder->devdata =3D devdata;
> +
>  	/* register DSI encoder with DRM subsystem */
>  	drm_encoder_init(&dev_priv->drm, &encoder->base, &gen11_dsi_encoder_fun=
cs,
>  			 DRM_MODE_ENCODER_DSI, "DSI %c", port_name(port));
> @@ -1995,7 +1995,6 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
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
> index b4861b56b5b2..ac42f2dc21ec 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.h
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.h
> @@ -6,10 +6,14 @@
>  #ifndef __ICL_DSI_H__
>  #define __ICL_DSI_H__
>=20=20
> +enum port;
>  struct drm_i915_private;
> +struct intel_bios_encoder_data;
>  struct intel_crtc_state;
>=20=20
> -void icl_dsi_init(struct drm_i915_private *i915);
> +void icl_dsi_init(struct drm_i915_private *i915,
> +		  const struct intel_bios_encoder_data *devdata,
> +		  enum port port);
>  void icl_dsi_frame_update(struct intel_crtc_state *crtc_state);
>=20=20
>  #endif /* __ICL_DSI_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index d1bf725ee9b3..7d2e843681f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2484,7 +2484,7 @@ intel_bios_encoder_supports_edp(const struct intel_=
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
> @@ -2542,13 +2542,19 @@ static bool is_port_valid(struct drm_i915_private=
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
> +	port =3D dvo_port_to_port(i915, child->dvo_port);
> +	if (port =3D=3D PORT_NONE && DISPLAY_VER(i915) >=3D 11)
> +		port =3D dsi_dvo_port_to_port(i915, child->dvo_port);
> +	if (port =3D=3D PORT_NONE)
> +		return;
>=20=20
>  	is_dvi =3D intel_bios_encoder_supports_dvi(devdata);
>  	is_dp =3D intel_bios_encoder_supports_dp(devdata);
> @@ -2628,16 +2634,7 @@ static void parse_ddi_port(struct intel_bios_encod=
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
> @@ -2648,7 +2645,6 @@ static bool has_ddi_port_info(struct drm_i915_priva=
te *i915)
>  static void parse_ddi_ports(struct drm_i915_private *i915)
>  {
>  	struct intel_bios_encoder_data *devdata;
> -	enum port port;
>=20=20
>  	if (!has_ddi_port_info(i915))
>  		return;
> @@ -2656,10 +2652,8 @@ static void parse_ddi_ports(struct drm_i915_privat=
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
> @@ -3584,5 +3578,40 @@ bool intel_bios_encoder_hpd_invert(const struct in=
tel_bios_encoder_data *devdata
>  const struct intel_bios_encoder_data *
>  intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port =
port)
>  {
> -	return i915->display.vbt.ports[port];
> +	struct intel_bios_encoder_data *devdata;
> +
> +	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
> +		const struct child_device_config *child =3D &devdata->child;
> +		enum port p;
> +
> +		p =3D dvo_port_to_port(i915, child->dvo_port);
> +		if (p =3D=3D PORT_NONE && DISPLAY_VER(i915) >=3D 11)
> +			p =3D dsi_dvo_port_to_port(i915, child->dvo_port);
> +
> +		if (p =3D=3D port)
> +			return devdata;
> +	}
> +
> +	return NULL;
> +}
> +
> +void intel_bios_for_each_encoder(struct drm_i915_private *i915,
> +				 void (*func)(struct drm_i915_private *i915,
> +					      const struct intel_bios_encoder_data *devdata,
> +					      enum port port))
> +{
> +	struct intel_bios_encoder_data *devdata;
> +
> +	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
> +		const struct child_device_config *child =3D &devdata->child;
> +		enum port port;
> +
> +		port =3D dvo_port_to_port(i915, child->dvo_port);
> +		if (port =3D=3D PORT_NONE && DISPLAY_VER(i915) >=3D 11)
> +			port =3D dsi_dvo_port_to_port(i915, child->dvo_port);
> +		if (port =3D=3D PORT_NONE)
> +			continue;

Looks like at least three places would benefit from a
intel_bios_encoder_port() function that would do the above.

Maybe we wouldn't even need to pass the port to the callback, it could
dig the port out itself?

> +
> +		func(i915, devdata, port);
> +	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index 45fae97d9719..fdc847211a84 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -263,6 +263,7 @@ bool intel_bios_encoder_supports_dp(const struct inte=
l_bios_encoder_data *devdat
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
> @@ -276,4 +277,9 @@ int intel_bios_hdmi_ddc_pin(const struct intel_bios_e=
ncoder_data *devdata);
>  int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *de=
vdata);
>  int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data =
*devdata);
>=20=20
> +void intel_bios_for_each_encoder(struct drm_i915_private *i915,
> +				 void (*func)(struct drm_i915_private *i915,
> +					      const struct intel_bios_encoder_data *devdata,
> +					      enum port port));
> +
>  #endif /* _INTEL_BIOS_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 9e4e6482aa26..7bfcd52e4645 100644
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
> @@ -4684,11 +4685,32 @@ static bool need_aux_ch(struct intel_encoder *enc=
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
> +		    const struct intel_bios_encoder_data *devdata,
> +		    enum port port)
>  {
>  	struct intel_digital_port *dig_port;
>  	struct intel_encoder *encoder;
> -	const struct intel_bios_encoder_data *devdata;
>  	bool init_hdmi, init_dp;
>  	enum phy phy =3D intel_port_to_phy(dev_priv, port);
>=20=20
> @@ -4701,6 +4723,21 @@ void intel_ddi_init(struct drm_i915_private *dev_p=
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
> +		icl_dsi_init(dev_priv, devdata, port);
> +		return;
> +	}

Maybe the division of responsibilities above is fine for starters... but
feels like if we're going to convert more platforms/outputs to this, we
should have a separate function near intel_setup_outputs() that gets
passed to intel_bios_for_each_encoder() that chooses the encoder
function to call?

> +
>  	/*
>  	 * On platforms with HTI (aka HDPORT), if it's enabled at boot it may
>  	 * have taken over some of the PHYs and made them unavailable to the
> @@ -4713,14 +4750,6 @@ void intel_ddi_init(struct drm_i915_private *dev_p=
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
> index 2bc034042a93..10d586b0a9c0 100644
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
> @@ -50,7 +51,9 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *e=
ncoder,
>  				const struct intel_crtc_state *crtc_state);
>  void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
>  			     enum port port);
> -void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port);
> +void intel_ddi_init(struct drm_i915_private *dev_priv,
> +		    const struct intel_bios_encoder_data *devdata,
> +		    enum port port);
>  bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pi=
pe);
>  void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
>  				      const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 43d6ba980780..836d3a1c797a 100644
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
> @@ -7409,18 +7408,10 @@ void intel_setup_outputs(struct drm_i915_private =
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

Do we now lose the VBT port cross-check against ->port_mask? Or do we
rely all encoder inits to call assert_port_valid()?

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
> index 8d2243c71dd8..56c596ca7cbf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -33,7 +33,6 @@ struct i915_audio_component;
>  struct i915_hdcp_arbiter;
>  struct intel_atomic_state;
>  struct intel_audio_funcs;
> -struct intel_bios_encoder_data;
>  struct intel_cdclk_funcs;
>  struct intel_cdclk_vals;
>  struct intel_color_funcs;
> @@ -218,7 +217,6 @@ struct intel_vbt_data {
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
