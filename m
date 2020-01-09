Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBC61353AF
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 08:28:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDBF16E3A6;
	Thu,  9 Jan 2020 07:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79B726E3A4
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 07:28:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 23:28:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="211803704"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by orsmga007.jf.intel.com with ESMTP; 08 Jan 2020 23:28:03 -0800
Received: from irsmsx606.ger.corp.intel.com (163.33.146.139) by
 irsmsx110.ger.corp.intel.com (163.33.3.25) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Jan 2020 07:28:02 +0000
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Jan 2020 07:28:02 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Thu, 9 Jan 2020 07:28:02 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/9] drm/i915: Pass intel_connector to
 intel_attached_*()
Thread-Index: AQHVqs2hNSvokSIYCkSeHoER5s0sBKfiJwqA
Date: Thu, 9 Jan 2020 07:28:02 +0000
Message-ID: <f9f8fbd4fda3b7d26499baa60d72eebbce24412b.camel@intel.com>
References: <20191204180549.1267-1-ville.syrjala@linux.intel.com>
 <20191204180549.1267-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20191204180549.1267-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <B99F93CD2D34334583DC7D3AF21BC4EC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: Pass intel_connector to
 intel_attached_*()
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2019-12-04 at 20:05 +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Life is usually easier when we pass around intel_ types instead
> of drm_ types. In this case it might not be, but I think being
> consistent is a good thing anyway. Also some of this might get
> cleaned up a bit more later as we keep propagating the intel_
> types further.
> =

> @find@
> identifier F =3D~ "^intel_attached_.*";
> identifier C;
> @@
> F(struct drm_connector *C)
> {
> ...
> }
> =

> @@
> identifier find.F;
> identifier find.C;
> @@
> F(
> - struct drm_connector *C
> + struct intel_connector *connector
>   )
> {
> <...
> - C
> + &connector->base
> ...>
> }
> =

> @@
> identifier find.F;
> expression C;
> @@
> - F(C)
> + F(to_intel_connector(C))
> =

> @@
> expression C;
> @@
> - to_intel_connector(&C->base)
> + C
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      | 12 +++++-----
>  drivers/gpu/drm/i915/display/intel_display.c  |  8 +++----
>  .../drm/i915/display/intel_display_types.h    |  6 ++---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 16 +++++++-------
>  drivers/gpu/drm/i915/display/intel_dvo.c      |  8 +++----
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 16 +++++++-------
>  drivers/gpu/drm/i915/display/intel_sdvo.c     | 22 +++++++++------
> ----
>  drivers/gpu/drm/i915/display/intel_tv.c       |  6 ++---
>  drivers/gpu/drm/i915/i915_debugfs.c           | 14 ++++++------
>  9 files changed, 54 insertions(+), 54 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c
> b/drivers/gpu/drm/i915/display/intel_crt.c
> index 7a2d36905155..47fceecea9f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -65,7 +65,7 @@ static struct intel_crt
> *intel_encoder_to_crt(struct intel_encoder *encoder)
>  	return container_of(encoder, struct intel_crt, base);
>  }
>  =

> -static struct intel_crt *intel_attached_crt(struct drm_connector
> *connector)
> +static struct intel_crt *intel_attached_crt(struct intel_connector
> *connector)
>  {
>  	return intel_encoder_to_crt(intel_attached_encoder(connector));
>  }
> @@ -422,7 +422,7 @@ static int hsw_crt_compute_config(struct
> intel_encoder *encoder,
>  static bool intel_ironlake_crt_detect_hotplug(struct drm_connector
> *connector)
>  {
>  	struct drm_device *dev =3D connector->dev;
> -	struct intel_crt *crt =3D intel_attached_crt(connector);
> +	struct intel_crt *crt =3D
> intel_attached_crt(to_intel_connector(connector));
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	u32 adpa;
>  	bool ret;
> @@ -469,7 +469,7 @@ static bool
> intel_ironlake_crt_detect_hotplug(struct drm_connector *connector)
>  static bool valleyview_crt_detect_hotplug(struct drm_connector
> *connector)
>  {
>  	struct drm_device *dev =3D connector->dev;
> -	struct intel_crt *crt =3D intel_attached_crt(connector);
> +	struct intel_crt *crt =3D
> intel_attached_crt(to_intel_connector(connector));
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	bool reenable_hpd;
>  	u32 adpa;
> @@ -601,7 +601,7 @@ static int intel_crt_ddc_get_modes(struct
> drm_connector *connector,
>  =

>  static bool intel_crt_detect_ddc(struct drm_connector *connector)
>  {
> -	struct intel_crt *crt =3D intel_attached_crt(connector);
> +	struct intel_crt *crt =3D
> intel_attached_crt(to_intel_connector(connector));
>  	struct drm_i915_private *dev_priv =3D to_i915(crt-
> >base.base.dev);
>  	struct edid *edid;
>  	struct i2c_adapter *i2c;
> @@ -787,7 +787,7 @@ intel_crt_detect(struct drm_connector *connector,
>  		 bool force)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	struct intel_crt *crt =3D intel_attached_crt(connector);
> +	struct intel_crt *crt =3D
> intel_attached_crt(to_intel_connector(connector));
>  	struct intel_encoder *intel_encoder =3D &crt->base;
>  	intel_wakeref_t wakeref;
>  	int status, ret;
> @@ -878,7 +878,7 @@ static int intel_crt_get_modes(struct
> drm_connector *connector)
>  {
>  	struct drm_device *dev =3D connector->dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct intel_crt *crt =3D intel_attached_crt(connector);
> +	struct intel_crt *crt =3D
> intel_attached_crt(to_intel_connector(connector));
>  	struct intel_encoder *intel_encoder =3D &crt->base;
>  	intel_wakeref_t wakeref;
>  	struct i2c_adapter *i2c;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index eb0505a66ea8..99abc553a8ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6197,7 +6197,7 @@ intel_connector_primary_encoder(struct
> intel_connector *connector)
>  	if (connector->mst_port)
>  		return &dp_to_dig_port(connector->mst_port)->base;
>  =

> -	encoder =3D intel_attached_encoder(&connector->base);
> +	encoder =3D intel_attached_encoder(connector);
>  	WARN_ON(!encoder);
>  =

>  	return encoder;
> @@ -11376,7 +11376,7 @@ int intel_get_load_detect_pipe(struct
> drm_connector *connector,
>  {
>  	struct intel_crtc *intel_crtc;
>  	struct intel_encoder *intel_encoder =3D
> -		intel_attached_encoder(connector);
> +		intel_attached_encoder(to_intel_connector(connector));
>  	struct drm_crtc *possible_crtc;
>  	struct drm_encoder *encoder =3D &intel_encoder->base;
>  	struct drm_crtc *crtc =3D NULL;
> @@ -11530,7 +11530,7 @@ void intel_release_load_detect_pipe(struct
> drm_connector *connector,
>  				    struct drm_modeset_acquire_ctx
> *ctx)
>  {
>  	struct intel_encoder *intel_encoder =3D
> -		intel_attached_encoder(connector);
> +		intel_attached_encoder(to_intel_connector(connector));
>  	struct drm_encoder *encoder =3D &intel_encoder->base;
>  	struct drm_atomic_state *state =3D old->restore_state;
>  	int ret;
> @@ -14505,7 +14505,7 @@ static void intel_set_dp_tp_ctl_normal(struct
> intel_crtc *crtc,
>  		if (conn_state->crtc =3D=3D &crtc->base)
>  			break;
>  	}
> -	intel_dp =3D enc_to_intel_dp(&intel_attached_encoder(conn)-
> >base);
> +	intel_dp =3D
> enc_to_intel_dp(&intel_attached_encoder(to_intel_connector(conn))-
> >base);
>  	intel_dp_stop_link_train(intel_dp);
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 83ea04149b77..4d89de5a4964 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1435,9 +1435,9 @@ struct intel_load_detect_pipe {
>  };
>  =

>  static inline struct intel_encoder *
> -intel_attached_encoder(struct drm_connector *connector)
> +intel_attached_encoder(struct intel_connector *connector)
>  {
> -	return to_intel_connector(connector)->encoder;
> +	return connector->encoder;
>  }
>  =

>  static inline bool intel_encoder_is_dig_port(struct intel_encoder
> *encoder)
> @@ -1468,7 +1468,7 @@ enc_to_dig_port(struct drm_encoder *encoder)
>  static inline struct intel_digital_port *
>  conn_to_dig_port(struct intel_connector *connector)
>  {
> -	return enc_to_dig_port(&intel_attached_encoder(&connector-
> >base)->base);
> +	return enc_to_dig_port(&intel_attached_encoder(connector)-
> >base);
>  }
>  =

>  static inline struct intel_dp_mst_encoder *
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0f496115c345..668b636fcfaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -146,7 +146,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
>  	return intel_dig_port->base.type =3D=3D INTEL_OUTPUT_EDP;
>  }
>  =

> -static struct intel_dp *intel_attached_dp(struct drm_connector
> *connector)
> +static struct intel_dp *intel_attached_dp(struct intel_connector
> *connector)
>  {
>  	return enc_to_intel_dp(&intel_attached_encoder(connector)-
> >base);
>  }
> @@ -614,7 +614,7 @@ static enum drm_mode_status
>  intel_dp_mode_valid(struct drm_connector *connector,
>  		    struct drm_display_mode *mode)
>  {
> -	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	struct intel_dp *intel_dp =3D
> intel_attached_dp(to_intel_connector(connector));
>  	struct intel_connector *intel_connector =3D
> to_intel_connector(connector);
>  	struct drm_display_mode *fixed_mode =3D intel_connector-
> >panel.fixed_mode;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> @@ -2996,7 +2996,7 @@ void intel_edp_backlight_off(const struct
> drm_connector_state *old_conn_state)
>  static void intel_edp_backlight_power(struct intel_connector
> *connector,
>  				      bool enable)
>  {
> -	struct intel_dp *intel_dp =3D intel_attached_dp(&connector-
> >base);
> +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
>  	intel_wakeref_t wakeref;
>  	bool is_enabled;
>  =

> @@ -5611,7 +5611,7 @@ intel_dp_detect(struct drm_connector
> *connector,
>  		bool force)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	struct intel_dp *intel_dp =3D
> intel_attached_dp(to_intel_connector(connector));
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	struct intel_encoder *encoder =3D &dig_port->base;
>  	enum drm_connector_status status;
> @@ -5715,7 +5715,7 @@ intel_dp_detect(struct drm_connector
> *connector,
>  static void
>  intel_dp_force(struct drm_connector *connector)
>  {
> -	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	struct intel_dp *intel_dp =3D
> intel_attached_dp(to_intel_connector(connector));
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	struct intel_encoder *intel_encoder =3D &dig_port->base;
>  	struct drm_i915_private *dev_priv =3D to_i915(intel_encoder-
> >base.dev);
> @@ -5750,7 +5750,7 @@ static int intel_dp_get_modes(struct
> drm_connector *connector)
>  	}
>  =

>  	/* if eDP has no EDID, fall back to fixed mode */
> -	if (intel_dp_is_edp(intel_attached_dp(connector)) &&
> +	if
> (intel_dp_is_edp(intel_attached_dp(to_intel_connector(connector))) &&
>  	    intel_connector->panel.fixed_mode) {
>  		struct drm_display_mode *mode;
>  =

> @@ -5768,7 +5768,7 @@ static int intel_dp_get_modes(struct
> drm_connector *connector)
>  static int
>  intel_dp_connector_register(struct drm_connector *connector)
>  {
> -	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	struct intel_dp *intel_dp =3D
> intel_attached_dp(to_intel_connector(connector));
>  	int ret;
>  =

>  	ret =3D intel_connector_register(connector);
> @@ -5790,7 +5790,7 @@ intel_dp_connector_register(struct
> drm_connector *connector)
>  static void
>  intel_dp_connector_unregister(struct drm_connector *connector)
>  {
> -	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	struct intel_dp *intel_dp =3D
> intel_attached_dp(to_intel_connector(connector));
>  =

>  	drm_dp_cec_unregister_connector(&intel_dp->aux);
>  	drm_dp_aux_unregister(&intel_dp->aux);
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c
> b/drivers/gpu/drm/i915/display/intel_dvo.c
> index a74dc5b915d1..86a337c9d85d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -125,7 +125,7 @@ static struct intel_dvo *enc_to_dvo(struct
> intel_encoder *encoder)
>  	return container_of(encoder, struct intel_dvo, base);
>  }
>  =

> -static struct intel_dvo *intel_attached_dvo(struct drm_connector
> *connector)
> +static struct intel_dvo *intel_attached_dvo(struct intel_connector
> *connector)
>  {
>  	return enc_to_dvo(intel_attached_encoder(connector));
>  }
> @@ -134,7 +134,7 @@ static bool
> intel_dvo_connector_get_hw_state(struct intel_connector *connector)
>  {
>  	struct drm_device *dev =3D connector->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct intel_dvo *intel_dvo =3D intel_attached_dvo(&connector-
> >base);
> +	struct intel_dvo *intel_dvo =3D intel_attached_dvo(connector);
>  	u32 tmp;
>  =

>  	tmp =3D I915_READ(intel_dvo->dev.dvo_reg);
> @@ -220,7 +220,7 @@ static enum drm_mode_status
>  intel_dvo_mode_valid(struct drm_connector *connector,
>  		     struct drm_display_mode *mode)
>  {
> -	struct intel_dvo *intel_dvo =3D intel_attached_dvo(connector);
> +	struct intel_dvo *intel_dvo =3D
> intel_attached_dvo(to_intel_connector(connector));
>  	const struct drm_display_mode *fixed_mode =3D
>  		to_intel_connector(connector)->panel.fixed_mode;
>  	int max_dotclk =3D to_i915(connector->dev)->max_dotclk_freq;
> @@ -311,7 +311,7 @@ static void intel_dvo_pre_enable(struct
> intel_encoder *encoder,
>  static enum drm_connector_status
>  intel_dvo_detect(struct drm_connector *connector, bool force)
>  {
> -	struct intel_dvo *intel_dvo =3D intel_attached_dvo(connector);
> +	struct intel_dvo *intel_dvo =3D
> intel_attached_dvo(to_intel_connector(connector));
>  	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
>  		      connector->base.id, connector->name);
>  	return intel_dvo->dev.dev_ops->detect(&intel_dvo->dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index a89a09b25260..a8deb4789f04 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -92,7 +92,7 @@ struct intel_hdmi *enc_to_intel_hdmi(struct
> drm_encoder *encoder)
>  	return &intel_dig_port->hdmi;
>  }
>  =

> -static struct intel_hdmi *intel_attached_hdmi(struct drm_connector
> *connector)
> +static struct intel_hdmi *intel_attached_hdmi(struct intel_connector
> *connector)
>  {
>  	return enc_to_intel_hdmi(&intel_attached_encoder(connector)-
> >base);
>  }
> @@ -2160,7 +2160,7 @@ static enum drm_mode_status
>  intel_hdmi_mode_valid(struct drm_connector *connector,
>  		      struct drm_display_mode *mode)
>  {
> -	struct intel_hdmi *hdmi =3D intel_attached_hdmi(connector);
> +	struct intel_hdmi *hdmi =3D
> intel_attached_hdmi(to_intel_connector(connector));
>  	struct drm_device *dev =3D intel_hdmi_to_dev(hdmi);
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	enum drm_mode_status status;
> @@ -2496,7 +2496,7 @@ int intel_hdmi_compute_config(struct
> intel_encoder *encoder,
>  static void
>  intel_hdmi_unset_edid(struct drm_connector *connector)
>  {
> -	struct intel_hdmi *intel_hdmi =3D intel_attached_hdmi(connector);
> +	struct intel_hdmi *intel_hdmi =3D
> intel_attached_hdmi(to_intel_connector(connector));
>  =

>  	intel_hdmi->has_hdmi_sink =3D false;
>  	intel_hdmi->has_audio =3D false;
> @@ -2512,7 +2512,7 @@ static void
>  intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool
> has_edid)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	struct intel_hdmi *hdmi =3D intel_attached_hdmi(connector);
> +	struct intel_hdmi *hdmi =3D
> intel_attached_hdmi(to_intel_connector(connector));
>  	enum port port =3D hdmi_to_dig_port(hdmi)->base.port;
>  	struct i2c_adapter *adapter =3D
>  		intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
> @@ -2559,7 +2559,7 @@ static bool
>  intel_hdmi_set_edid(struct drm_connector *connector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	struct intel_hdmi *intel_hdmi =3D intel_attached_hdmi(connector);
> +	struct intel_hdmi *intel_hdmi =3D
> intel_attached_hdmi(to_intel_connector(connector));
>  	intel_wakeref_t wakeref;
>  	struct edid *edid;
>  	bool connected =3D false;
> @@ -2600,7 +2600,7 @@ intel_hdmi_detect(struct drm_connector
> *connector, bool force)
>  {
>  	enum drm_connector_status status =3D
> connector_status_disconnected;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	struct intel_hdmi *intel_hdmi =3D intel_attached_hdmi(connector);
> +	struct intel_hdmi *intel_hdmi =3D
> intel_attached_hdmi(to_intel_connector(connector));
>  	struct intel_encoder *encoder =3D &hdmi_to_dig_port(intel_hdmi)-
> >base;
>  	intel_wakeref_t wakeref;
>  =

> @@ -2772,7 +2772,7 @@ static struct i2c_adapter *
>  intel_hdmi_get_i2c_adapter(struct drm_connector *connector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	struct intel_hdmi *intel_hdmi =3D intel_attached_hdmi(connector);
> +	struct intel_hdmi *intel_hdmi =3D
> intel_attached_hdmi(to_intel_connector(connector));
>  =

>  	return intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
>  }
> @@ -2816,7 +2816,7 @@ intel_hdmi_connector_register(struct
> drm_connector *connector)
>  =

>  static void intel_hdmi_destroy(struct drm_connector *connector)
>  {
> -	struct cec_notifier *n =3D intel_attached_hdmi(connector)-
> >cec_notifier;
> +	struct cec_notifier *n =3D
> intel_attached_hdmi(to_intel_connector(connector))->cec_notifier;
>  =

>  	cec_notifier_conn_unregister(n);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 8758ee2a4442..e8819fd21e03 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -180,7 +180,7 @@ static struct intel_sdvo *to_sdvo(struct
> intel_encoder *encoder)
>  	return container_of(encoder, struct intel_sdvo, base);
>  }
>  =

> -static struct intel_sdvo *intel_attached_sdvo(struct drm_connector
> *connector)
> +static struct intel_sdvo *intel_attached_sdvo(struct intel_connector
> *connector)
>  {
>  	return to_sdvo(intel_attached_encoder(connector));
>  }
> @@ -1551,7 +1551,7 @@ static bool
> intel_sdvo_connector_get_hw_state(struct intel_connector *connector)
>  {
>  	struct intel_sdvo_connector *intel_sdvo_connector =3D
>  		to_intel_sdvo_connector(&connector->base);
> -	struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(&connector-
> >base);
> +	struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(connector);
>  	u16 active_outputs =3D 0;
>  =

>  	intel_sdvo_get_active_outputs(intel_sdvo, &active_outputs);
> @@ -1823,7 +1823,7 @@ static enum drm_mode_status
>  intel_sdvo_mode_valid(struct drm_connector *connector,
>  		      struct drm_display_mode *mode)
>  {
> -	struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(connector);
> +	struct intel_sdvo *intel_sdvo =3D
> intel_attached_sdvo(to_intel_connector(connector));
>  	struct intel_sdvo_connector *intel_sdvo_connector =3D
>  		to_intel_sdvo_connector(connector);
>  	int max_dotclk =3D to_i915(connector->dev)->max_dotclk_freq;
> @@ -1941,7 +1941,7 @@ intel_sdvo_multifunc_encoder(struct intel_sdvo
> *intel_sdvo)
>  static struct edid *
>  intel_sdvo_get_edid(struct drm_connector *connector)
>  {
> -	struct intel_sdvo *sdvo =3D intel_attached_sdvo(connector);
> +	struct intel_sdvo *sdvo =3D
> intel_attached_sdvo(to_intel_connector(connector));
>  	return drm_get_edid(connector, &sdvo->ddc);
>  }
>  =

> @@ -1959,7 +1959,7 @@ intel_sdvo_get_analog_edid(struct drm_connector
> *connector)
>  static enum drm_connector_status
>  intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
>  {
> -	struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(connector);
> +	struct intel_sdvo *intel_sdvo =3D
> intel_attached_sdvo(to_intel_connector(connector));
>  	struct intel_sdvo_connector *intel_sdvo_connector =3D
>  		to_intel_sdvo_connector(connector);
>  	enum drm_connector_status status;
> @@ -2028,7 +2028,7 @@ static enum drm_connector_status
>  intel_sdvo_detect(struct drm_connector *connector, bool force)
>  {
>  	u16 response;
> -	struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(connector);
> +	struct intel_sdvo *intel_sdvo =3D
> intel_attached_sdvo(to_intel_connector(connector));
>  	struct intel_sdvo_connector *intel_sdvo_connector =3D
> to_intel_sdvo_connector(connector);
>  	enum drm_connector_status ret;
>  =

> @@ -2175,7 +2175,7 @@ static const struct drm_display_mode
> sdvo_tv_modes[] =3D {
>  =

>  static void intel_sdvo_get_tv_modes(struct drm_connector *connector)
>  {
> -	struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(connector);
> +	struct intel_sdvo *intel_sdvo =3D
> intel_attached_sdvo(to_intel_connector(connector));
>  	const struct drm_connector_state *conn_state =3D connector-
> >state;
>  	struct intel_sdvo_sdtv_resolution_request tv_res;
>  	u32 reply =3D 0, format_map =3D 0;
> @@ -2215,7 +2215,7 @@ static void intel_sdvo_get_tv_modes(struct
> drm_connector *connector)
>  =

>  static void intel_sdvo_get_lvds_modes(struct drm_connector
> *connector)
>  {
> -	struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(connector);
> +	struct intel_sdvo *intel_sdvo =3D
> intel_attached_sdvo(to_intel_connector(connector));
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	struct drm_display_mode *newmode;
>  =

> @@ -2379,7 +2379,7 @@ intel_sdvo_connector_atomic_set_property(struct
> drm_connector *connector,
>  static int
>  intel_sdvo_connector_register(struct drm_connector *connector)
>  {
> -	struct intel_sdvo *sdvo =3D intel_attached_sdvo(connector);
> +	struct intel_sdvo *sdvo =3D
> intel_attached_sdvo(to_intel_connector(connector));
>  	int ret;
>  =

>  	ret =3D intel_connector_register(connector);
> @@ -2394,7 +2394,7 @@ intel_sdvo_connector_register(struct
> drm_connector *connector)
>  static void
>  intel_sdvo_connector_unregister(struct drm_connector *connector)
>  {
> -	struct intel_sdvo *sdvo =3D intel_attached_sdvo(connector);
> +	struct intel_sdvo *sdvo =3D
> intel_attached_sdvo(to_intel_connector(connector));
>  =

>  	sysfs_remove_link(&connector->kdev->kobj,
>  			  sdvo->ddc.dev.kobj.name);
> @@ -2932,7 +2932,7 @@ static void intel_sdvo_output_cleanup(struct
> intel_sdvo *intel_sdvo)
>  =

>  	list_for_each_entry_safe(connector, tmp,
>  				 &dev->mode_config.connector_list,
> head) {
> -		if (intel_attached_encoder(connector) =3D=3D &intel_sdvo-
> >base) {
> +		if
> (intel_attached_encoder(to_intel_connector(connector)) =3D=3D
> &intel_sdvo->base) {
>  			drm_connector_unregister(connector);
>  			intel_connector_destroy(connector);
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c
> b/drivers/gpu/drm/i915/display/intel_tv.c
> index 50703536436c..5cd0719758d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -898,7 +898,7 @@ static struct intel_tv *enc_to_tv(struct
> intel_encoder *encoder)
>  	return container_of(encoder, struct intel_tv, base);
>  }
>  =

> -static struct intel_tv *intel_attached_tv(struct drm_connector
> *connector)
> +static struct intel_tv *intel_attached_tv(struct intel_connector
> *connector)
>  {
>  	return enc_to_tv(intel_attached_encoder(connector));
>  }
> @@ -1662,7 +1662,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
>   */
>  static void intel_tv_find_better_format(struct drm_connector
> *connector)
>  {
> -	struct intel_tv *intel_tv =3D intel_attached_tv(connector);
> +	struct intel_tv *intel_tv =3D
> intel_attached_tv(to_intel_connector(connector));
>  	const struct tv_mode *tv_mode =3D intel_tv_mode_find(connector-
> >state);
>  	int i;
>  =

> @@ -1689,7 +1689,7 @@ intel_tv_detect(struct drm_connector
> *connector,
>  		struct drm_modeset_acquire_ctx *ctx,
>  		bool force)
>  {
> -	struct intel_tv *intel_tv =3D intel_attached_tv(connector);
> +	struct intel_tv *intel_tv =3D
> intel_attached_tv(to_intel_connector(connector));
>  	enum drm_connector_status status;
>  	int type;
>  =

> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c
> b/drivers/gpu/drm/i915/i915_debugfs.c
> index eb80a2c4b55b..4f543ccec15d 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -2020,7 +2020,7 @@ static int i915_psr_sink_status_show(struct
> seq_file *m, void *data)
>  	struct drm_connector *connector =3D m->private;
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	struct intel_dp *intel_dp =3D
> -		enc_to_intel_dp(&intel_attached_encoder(connector)-
> >base);
> +		enc_to_intel_dp(&intel_attached_encoder(to_intel_connec
> tor(connector))->base);
>  	int ret;
>  =

>  	if (!CAN_PSR(dev_priv)) {
> @@ -3055,7 +3055,7 @@ static int i915_dp_mst_info(struct seq_file *m,
> void *unused)
>  		if (connector->connector_type !=3D
> DRM_MODE_CONNECTOR_DisplayPort)
>  			continue;
>  =

> -		intel_encoder =3D intel_attached_encoder(connector);
> +		intel_encoder =3D
> intel_attached_encoder(to_intel_connector(connector));
>  		if (!intel_encoder || intel_encoder->type =3D=3D
> INTEL_OUTPUT_DP_MST)
>  			continue;
>  =

> @@ -4185,7 +4185,7 @@ static int i915_drrs_ctl_set(void *data, u64
> val)
>  			      drm_connector_mask(connector)))
>  				continue;
>  =

> -			encoder =3D intel_attached_encoder(connector);
> +			encoder =3D
> intel_attached_encoder(to_intel_connector(connector));
>  			if (encoder->type !=3D INTEL_OUTPUT_EDP)
>  				continue;
>  =

> @@ -4396,7 +4396,7 @@ static int i915_dpcd_show(struct seq_file *m,
> void *data)
>  {
>  	struct drm_connector *connector =3D m->private;
>  	struct intel_dp *intel_dp =3D
> -		enc_to_intel_dp(&intel_attached_encoder(connector)-
> >base);
> +		enc_to_intel_dp(&intel_attached_encoder(to_intel_connec
> tor(connector))->base);
>  	u8 buf[16];
>  	ssize_t err;
>  	int i;
> @@ -4431,7 +4431,7 @@ static int i915_panel_show(struct seq_file *m,
> void *data)
>  {
>  	struct drm_connector *connector =3D m->private;
>  	struct intel_dp *intel_dp =3D
> -		enc_to_intel_dp(&intel_attached_encoder(connector)-
> >base);
> +		enc_to_intel_dp(&intel_attached_encoder(to_intel_connec
> tor(connector))->base);
>  =

>  	if (connector->status !=3D connector_status_connected)
>  		return -ENODEV;
> @@ -4509,7 +4509,7 @@ static int i915_dsc_fec_support_show(struct
> seq_file *m, void *data)
>  		} else if (ret) {
>  			break;
>  		}
> -		intel_dp =3D
> enc_to_intel_dp(&intel_attached_encoder(connector)->base);
> +		intel_dp =3D
> enc_to_intel_dp(&intel_attached_encoder(to_intel_connector(connector)
> )->base);
>  		crtc_state =3D to_intel_crtc_state(crtc->state);
>  		seq_printf(m, "DSC_Enabled: %s\n",
>  			   yesno(crtc_state->dsc.compression_enable));
> @@ -4536,7 +4536,7 @@ static ssize_t
> i915_dsc_fec_support_write(struct file *file,
>  	int ret;
>  	struct drm_connector *connector =3D
>  		((struct seq_file *)file->private_data)->private;
> -	struct intel_encoder *encoder =3D
> intel_attached_encoder(connector);
> +	struct intel_encoder *encoder =3D
> intel_attached_encoder(to_intel_connector(connector));
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(&encoder->base);
>  =

>  	if (len =3D=3D 0)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
