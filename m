Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC82749794
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 10:38:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D1F910E488;
	Thu,  6 Jul 2023 08:38:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 192A310E488
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 08:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688632715; x=1720168715;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=E//gAPJHAoSsEjcLTs8ZaoltpSkvkRqtWI4xlKZRhZw=;
 b=Hc4QDm2QFIVLCOpscwpOUqHyLrHJ8n7/nGiWPlmmQiZ1i6xhsywvpJw/
 i2ehuN8ILUIT1J3v/mwSDy80ROVfddjkPrVpOYSZIvmz2bd8Ib2lQEnJq
 qlJ1y46VkPki3zHiZaVHdcCdHD5u0wlDAq9vZXP3p8BsW5+IDn/HKRlKr
 4ccdVLGg9k9OVPOFaaIclse77T2m+0RcsHkdtbrdU3kkk/SHlmqnD7UF+
 XzMb1t4EQdlQP701lpMOIKfMIZumKW1Mg4AIYI752WA9vgNuUiLRJzjhv
 exAMv5ESx5Xujmz6N7sI3zoQNs+Ghh3q/WLEIhXfbTrOvnhHoPI4hMr3j Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353379614"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="353379614"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:38:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="696775014"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="696775014"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:38:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
 <20230705202122.17915-13-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 11:38:30 +0300
Message-ID: <87sfa1xwmx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 12/13] drm/i915/sdvo: Rework DDC bus handling
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

On Wed, 05 Jul 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Each SDVO device can have up to three sets of DDC pins.
> Currently we just register a single i2c_adapter for the
> entire SDVO device and semi-randomly pick the "correct"
> set of DDC pins during intel_sdvo_tmds_sink_detect().
> This doesn't make any real sense especially if we have
> multiple outputs each with their own dedicated DDC bus.
>
> Let's clean up this mess and register a dedicated
> i2c_adapter for each of the possible pin pairs. Each
> output (ie. connector) can then pick the correct i2c_adapter
> to use for its DDC bus. And we can just switch over to
> drm_connector_init_with_ddc() to take care of the
> connector->ddc association, which also populates the
> "ddc" sysfs symlink as a bonus.
>
> And now that things are based on the actual connector we can
> also nuke the sketchy sdvo->controller_output thing.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Okay, so I'm not going to claim I considered all the possible aspects of
the changes here, but I did not spot anything wrong with it
either. Maybe there's a bit much shoved in one patch, but not sure if it
would be feasible or productive to chop it up. The direction looks good.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 205 ++++++++++++----------
>  1 file changed, 114 insertions(+), 91 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 5c25417d256a..d7edb5714c4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -65,6 +65,8 @@
>  #define IS_TV_OR_LVDS(c)	((c)->output_flag & (SDVO_TV_MASK | SDVO_LVDS_M=
ASK))
>  #define IS_DIGITAL(c)		((c)->output_flag & (SDVO_TMDS_MASK | SDVO_LVDS_M=
ASK))
>=20=20
> +#define HAS_DDC(c)		((c)->output_flag & (SDVO_RGB_MASK | SDVO_TMDS_MASK =
| \
> +						     SDVO_LVDS_MASK))
>=20=20
>  static const char * const tv_format_names[] =3D {
>  	"NTSC_M"   , "NTSC_J"  , "NTSC_443",
> @@ -78,20 +80,25 @@ static const char * const tv_format_names[] =3D {
>=20=20
>  #define TV_FORMAT_NUM  ARRAY_SIZE(tv_format_names)
>=20=20
> +struct intel_sdvo;
> +
> +struct intel_sdvo_ddc {
> +	struct i2c_adapter ddc;
> +	struct intel_sdvo *sdvo;
> +	u8 ddc_bus;
> +};
> +
>  struct intel_sdvo {
>  	struct intel_encoder base;
>=20=20
>  	struct i2c_adapter *i2c;
>  	u8 slave_addr;
>=20=20
> -	struct i2c_adapter ddc;
> +	struct intel_sdvo_ddc ddc[3];
>=20=20
>  	/* Register for the SDVO device: SDVOB or SDVOC */
>  	i915_reg_t sdvo_reg;
>=20=20
> -	/* Active outputs controlled by this SDVO output */
> -	u16 controlled_output;
> -
>  	/*
>  	 * Capabilities of the SDVO device returned by
>  	 * intel_sdvo_get_capabilities()
> @@ -108,9 +115,6 @@ struct intel_sdvo {
>  	 */
>  	u16 hotplug_active;
>=20=20
> -	/* DDC bus used by this SDVO encoder */
> -	u8 ddc_bus;
> -
>  	/*
>  	 * the sdvo flag gets lost in round trip: dtd->adjusted_mode->dtd
>  	 */
> @@ -2035,18 +2039,15 @@ intel_sdvo_hotplug(struct intel_encoder *encoder,
>  	return intel_encoder_hotplug(encoder, connector);
>  }
>=20=20
> -static bool
> -intel_sdvo_multifunc_encoder(struct intel_sdvo *intel_sdvo)
> -{
> -	/* Is there more than one type of output? */
> -	return hweight16(intel_sdvo->caps.output_flags) > 1;
> -}
> -
>  static const struct drm_edid *
>  intel_sdvo_get_edid(struct drm_connector *connector)
>  {
> -	struct intel_sdvo *sdvo =3D intel_attached_sdvo(to_intel_connector(conn=
ector));
> -	return drm_edid_read_ddc(connector, &sdvo->ddc);
> +	struct i2c_adapter *ddc =3D connector->ddc;
> +
> +	if (!ddc)
> +		return NULL;
> +
> +	return drm_edid_read_ddc(connector, ddc);
>  }
>=20=20
>  /* Mac mini hack -- use the same DDC as the analog connector */
> @@ -2054,43 +2055,23 @@ static const struct drm_edid *
>  intel_sdvo_get_analog_edid(struct drm_connector *connector)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->dev);
> -	struct i2c_adapter *i2c;
> +	struct i2c_adapter *ddc;
>=20=20
> -	i2c =3D intel_gmbus_get_adapter(i915, i915->display.vbt.crt_ddc_pin);
> +	ddc =3D intel_gmbus_get_adapter(i915, i915->display.vbt.crt_ddc_pin);
> +	if (!ddc)
> +		return NULL;
>=20=20
> -	return drm_edid_read_ddc(connector, i2c);
> +	return drm_edid_read_ddc(connector, ddc);
>  }
>=20=20
>  static enum drm_connector_status
>  intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
>  {
> -	struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(to_intel_connecto=
r(connector));
>  	enum drm_connector_status status;
>  	const struct drm_edid *drm_edid;
>=20=20
>  	drm_edid =3D intel_sdvo_get_edid(connector);
>=20=20
> -	if (!drm_edid && intel_sdvo_multifunc_encoder(intel_sdvo)) {
> -		u8 ddc, saved_ddc =3D intel_sdvo->ddc_bus;
> -
> -		/*
> -		 * Don't use the 1 as the argument of DDC bus switch to get
> -		 * the EDID. It is used for SDVO SPD ROM.
> -		 */
> -		for (ddc =3D intel_sdvo->ddc_bus >> 1; ddc > 1; ddc >>=3D 1) {
> -			intel_sdvo->ddc_bus =3D ddc;
> -			drm_edid =3D intel_sdvo_get_edid(connector);
> -			if (drm_edid)
> -				break;
> -		}
> -		/*
> -		 * If we found the EDID on the other bus,
> -		 * assume that is the correct DDC bus.
> -		 */
> -		if (!drm_edid)
> -			intel_sdvo->ddc_bus =3D saved_ddc;
> -	}
> -
>  	/*
>  	 * When there is no edid and no monitor is connected with VGA
>  	 * port, try to use the CRT ddc to read the EDID for DVI-connector.
> @@ -2524,29 +2505,37 @@ static const struct drm_connector_helper_funcs in=
tel_sdvo_connector_helper_funcs
>  	.atomic_check =3D intel_sdvo_atomic_check,
>  };
>=20=20
> -static void intel_sdvo_enc_destroy(struct drm_encoder *encoder)
> +static void intel_sdvo_encoder_destroy(struct drm_encoder *_encoder)
>  {
> -	struct intel_sdvo *intel_sdvo =3D to_sdvo(to_intel_encoder(encoder));
> +	struct intel_encoder *encoder =3D to_intel_encoder(_encoder);
> +	struct intel_sdvo *sdvo =3D to_sdvo(encoder);
> +	int i;
>=20=20
> -	i2c_del_adapter(&intel_sdvo->ddc);
> -	intel_encoder_destroy(encoder);
> -}
> +	for (i =3D 0; i < ARRAY_SIZE(sdvo->ddc); i++) {
> +		if (sdvo->ddc[i].ddc_bus)
> +			i2c_del_adapter(&sdvo->ddc[i].ddc);
> +	}
> +
> +	drm_encoder_cleanup(&encoder->base);
> +	kfree(sdvo);
> +};
>=20=20
>  static const struct drm_encoder_funcs intel_sdvo_enc_funcs =3D {
> -	.destroy =3D intel_sdvo_enc_destroy,
> +	.destroy =3D intel_sdvo_encoder_destroy,
>  };
>=20=20
> -static void
> -intel_sdvo_guess_ddc_bus(struct intel_sdvo *sdvo)
> +static int
> +intel_sdvo_guess_ddc_bus(struct intel_sdvo *sdvo,
> +			 struct intel_sdvo_connector *connector)
>  {
>  	u16 mask =3D 0;
> -	unsigned int num_bits;
> +	int num_bits;
>=20=20
>  	/*
>  	 * Make a mask of outputs less than or equal to our own priority in the
>  	 * list.
>  	 */
> -	switch (sdvo->controlled_output) {
> +	switch (connector->output_flag) {
>  	case SDVO_OUTPUT_LVDS1:
>  		mask |=3D SDVO_OUTPUT_LVDS1;
>  		fallthrough;
> @@ -2575,7 +2564,7 @@ intel_sdvo_guess_ddc_bus(struct intel_sdvo *sdvo)
>  		num_bits =3D 3;
>=20=20
>  	/* Corresponds to SDVO_CONTROL_BUS_DDCx */
> -	sdvo->ddc_bus =3D 1 << num_bits;
> +	return num_bits;
>  }
>=20=20
>  /*
> @@ -2585,11 +2574,13 @@ intel_sdvo_guess_ddc_bus(struct intel_sdvo *sdvo)
>   * DDC bus number assignment is in a priority order of RGB outputs, then=
 TMDS
>   * outputs, then LVDS outputs.
>   */
> -static void
> -intel_sdvo_select_ddc_bus(struct intel_sdvo *sdvo)
> +static struct intel_sdvo_ddc *
> +intel_sdvo_select_ddc_bus(struct intel_sdvo *sdvo,
> +			  struct intel_sdvo_connector *connector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(sdvo->base.base.dev);
>  	struct sdvo_device_mapping *mapping;
> +	int ddc_bus;
>=20=20
>  	if (sdvo->base.port =3D=3D PORT_B)
>  		mapping =3D &dev_priv->display.vbt.sdvo_mappings[0];
> @@ -2597,9 +2588,14 @@ intel_sdvo_select_ddc_bus(struct intel_sdvo *sdvo)
>  		mapping =3D &dev_priv->display.vbt.sdvo_mappings[1];
>=20=20
>  	if (mapping->initialized)
> -		sdvo->ddc_bus =3D 1 << ((mapping->ddc_pin & 0xf0) >> 4);
> +		ddc_bus =3D (mapping->ddc_pin & 0xf0) >> 4;
>  	else
> -		intel_sdvo_guess_ddc_bus(sdvo);
> +		ddc_bus =3D intel_sdvo_guess_ddc_bus(sdvo, connector);
> +
> +	if (ddc_bus < 1 || ddc_bus > 3)
> +		return NULL;
> +
> +	return &sdvo->ddc[ddc_bus - 1];
>  }
>=20=20
>  static void
> @@ -2682,22 +2678,30 @@ intel_sdvo_get_slave_addr(struct intel_sdvo *sdvo)
>  		return 0x72;
>  }
>=20=20
> +static int
> +intel_sdvo_init_ddc_proxy(struct intel_sdvo_ddc *ddc,
> +			  struct intel_sdvo *sdvo, int bit);
> +
>  static int
>  intel_sdvo_connector_init(struct intel_sdvo_connector *connector,
>  			  struct intel_sdvo *encoder)
>  {
> -	struct drm_connector *drm_connector;
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.base.dev);
> +	struct intel_sdvo_ddc *ddc =3D NULL;
>  	int ret;
>=20=20
> -	drm_connector =3D &connector->base.base;
> -	ret =3D drm_connector_init(encoder->base.base.dev,
> -			   drm_connector,
> -			   &intel_sdvo_connector_funcs,
> -			   connector->base.base.connector_type);
> +	if (HAS_DDC(connector))
> +		ddc =3D intel_sdvo_select_ddc_bus(encoder, connector);
> +
> +	ret =3D drm_connector_init_with_ddc(encoder->base.base.dev,
> +					  &connector->base.base,
> +					  &intel_sdvo_connector_funcs,
> +					  connector->base.base.connector_type,
> +					  ddc ? &ddc->ddc : NULL);
>  	if (ret < 0)
>  		return ret;
>=20=20
> -	drm_connector_helper_add(drm_connector,
> +	drm_connector_helper_add(&connector->base.base,
>  				 &intel_sdvo_connector_helper_funcs);
>=20=20
>  	connector->base.base.display_info.subpixel_order =3D SubPixelHorizontal=
RGB;
> @@ -2706,6 +2710,11 @@ intel_sdvo_connector_init(struct intel_sdvo_connec=
tor *connector,
>=20=20
>  	intel_connector_attach_encoder(&connector->base, &encoder->base);
>=20=20
> +	if (ddc)
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] using %s\n",
> +			    connector->base.base.base.id, connector->base.base.name,
> +			    ddc->ddc.name);
> +
>  	return 0;
>  }
>=20=20
> @@ -2903,7 +2912,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo,=
 u16 type)
>  	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
>  		mutex_lock(&i915->drm.mode_config.mutex);
>=20=20
> -		intel_ddc_get_modes(connector, &intel_sdvo->ddc);
> +		intel_ddc_get_modes(connector, connector->ddc);
>  		intel_panel_add_edid_fixed_modes(intel_connector, false);
>=20=20
>  		mutex_unlock(&i915->drm.mode_config.mutex);
> @@ -2978,10 +2987,6 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_s=
dvo)
>  		return false;
>  	}
>=20=20
> -	intel_sdvo->controlled_output =3D flags;
> -
> -	intel_sdvo_select_ddc_bus(intel_sdvo);
> -
>  	for (i =3D 0; i < ARRAY_SIZE(probe_order); i++) {
>  		u16 type =3D flags & probe_order[i];
>=20=20
> @@ -3234,9 +3239,10 @@ static int intel_sdvo_ddc_proxy_xfer(struct i2c_ad=
apter *adapter,
>  				     struct i2c_msg *msgs,
>  				     int num)
>  {
> -	struct intel_sdvo *sdvo =3D adapter->algo_data;
> +	struct intel_sdvo_ddc *ddc =3D adapter->algo_data;
> +	struct intel_sdvo *sdvo =3D ddc->sdvo;
>=20=20
> -	if (!__intel_sdvo_set_control_bus_switch(sdvo, sdvo->ddc_bus))
> +	if (!__intel_sdvo_set_control_bus_switch(sdvo, 1 << ddc->ddc_bus))
>  		return -EIO;
>=20=20
>  	return sdvo->i2c->algo->master_xfer(sdvo->i2c, msgs, num);
> @@ -3244,7 +3250,9 @@ static int intel_sdvo_ddc_proxy_xfer(struct i2c_ada=
pter *adapter,
>=20=20
>  static u32 intel_sdvo_ddc_proxy_func(struct i2c_adapter *adapter)
>  {
> -	struct intel_sdvo *sdvo =3D adapter->algo_data;
> +	struct intel_sdvo_ddc *ddc =3D adapter->algo_data;
> +	struct intel_sdvo *sdvo =3D ddc->sdvo;
> +
>  	return sdvo->i2c->algo->functionality(sdvo->i2c);
>  }
>=20=20
> @@ -3256,21 +3264,27 @@ static const struct i2c_algorithm intel_sdvo_ddc_=
proxy =3D {
>  static void proxy_lock_bus(struct i2c_adapter *adapter,
>  			   unsigned int flags)
>  {
> -	struct intel_sdvo *sdvo =3D adapter->algo_data;
> +	struct intel_sdvo_ddc *ddc =3D adapter->algo_data;
> +	struct intel_sdvo *sdvo =3D ddc->sdvo;
> +
>  	sdvo->i2c->lock_ops->lock_bus(sdvo->i2c, flags);
>  }
>=20=20
>  static int proxy_trylock_bus(struct i2c_adapter *adapter,
>  			     unsigned int flags)
>  {
> -	struct intel_sdvo *sdvo =3D adapter->algo_data;
> +	struct intel_sdvo_ddc *ddc =3D adapter->algo_data;
> +	struct intel_sdvo *sdvo =3D ddc->sdvo;
> +
>  	return sdvo->i2c->lock_ops->trylock_bus(sdvo->i2c, flags);
>  }
>=20=20
>  static void proxy_unlock_bus(struct i2c_adapter *adapter,
>  			     unsigned int flags)
>  {
> -	struct intel_sdvo *sdvo =3D adapter->algo_data;
> +	struct intel_sdvo_ddc *ddc =3D adapter->algo_data;
> +	struct intel_sdvo *sdvo =3D ddc->sdvo;
> +
>  	sdvo->i2c->lock_ops->unlock_bus(sdvo->i2c, flags);
>  }
>=20=20
> @@ -3280,21 +3294,26 @@ static const struct i2c_lock_operations proxy_loc=
k_ops =3D {
>  	.unlock_bus =3D  proxy_unlock_bus,
>  };
>=20=20
> -static bool
> -intel_sdvo_init_ddc_proxy(struct intel_sdvo *sdvo)
> +static int
> +intel_sdvo_init_ddc_proxy(struct intel_sdvo_ddc *ddc,
> +			  struct intel_sdvo *sdvo, int ddc_bus)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(sdvo->base.base.dev);
>  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
>=20=20
> -	sdvo->ddc.owner =3D THIS_MODULE;
> -	sdvo->ddc.class =3D I2C_CLASS_DDC;
> -	snprintf(sdvo->ddc.name, I2C_NAME_SIZE, "SDVO DDC proxy");
> -	sdvo->ddc.dev.parent =3D &pdev->dev;
> -	sdvo->ddc.algo_data =3D sdvo;
> -	sdvo->ddc.algo =3D &intel_sdvo_ddc_proxy;
> -	sdvo->ddc.lock_ops =3D &proxy_lock_ops;
> +	ddc->sdvo =3D sdvo;
> +	ddc->ddc_bus =3D ddc_bus;
>=20=20
> -	return i2c_add_adapter(&sdvo->ddc) =3D=3D 0;
> +	ddc->ddc.owner =3D THIS_MODULE;
> +	ddc->ddc.class =3D I2C_CLASS_DDC;
> +	snprintf(ddc->ddc.name, I2C_NAME_SIZE, "SDVO %c DDC%d",
> +		 port_name(sdvo->base.port), ddc_bus);
> +	ddc->ddc.dev.parent =3D &pdev->dev;
> +	ddc->ddc.algo_data =3D ddc;
> +	ddc->ddc.algo =3D &intel_sdvo_ddc_proxy;
> +	ddc->ddc.lock_ops =3D &proxy_lock_ops;
> +
> +	return i2c_add_adapter(&ddc->ddc);
>  }
>=20=20
>  static bool is_sdvo_port_valid(struct drm_i915_private *dev_priv, enum p=
ort port)
> @@ -3341,9 +3360,8 @@ bool intel_sdvo_init(struct drm_i915_private *dev_p=
riv,
>=20=20
>  	intel_sdvo->sdvo_reg =3D sdvo_reg;
>  	intel_sdvo->slave_addr =3D intel_sdvo_get_slave_addr(intel_sdvo) >> 1;
> +
>  	intel_sdvo_select_i2c_bus(intel_sdvo);
> -	if (!intel_sdvo_init_ddc_proxy(intel_sdvo))
> -		goto err_i2c_bus;
>=20=20
>  	/* Read the regs to test if we can talk to the device */
>  	for (i =3D 0; i < 0x40; i++) {
> @@ -3376,6 +3394,15 @@ bool intel_sdvo_init(struct drm_i915_private *dev_=
priv,
>  	intel_sdvo->colorimetry_cap =3D
>  		intel_sdvo_get_colorimetry_cap(intel_sdvo);
>=20=20
> +	for (i =3D 0; i < ARRAY_SIZE(intel_sdvo->ddc); i++) {
> +		int ret;
> +
> +		ret =3D intel_sdvo_init_ddc_proxy(&intel_sdvo->ddc[i],
> +						intel_sdvo, i + 1);
> +		if (ret)
> +			goto err;
> +	}
> +
>  	if (!intel_sdvo_output_setup(intel_sdvo)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "SDVO output failed to setup on %s\n",
> @@ -3436,13 +3463,9 @@ bool intel_sdvo_init(struct drm_i915_private *dev_=
priv,
>=20=20
>  err_output:
>  	intel_sdvo_output_cleanup(intel_sdvo);
> -
>  err:
> -	drm_encoder_cleanup(&intel_encoder->base);
> -	i2c_del_adapter(&intel_sdvo->ddc);
> -err_i2c_bus:
>  	intel_sdvo_unselect_i2c_bus(intel_sdvo);
> -	kfree(intel_sdvo);
> +	intel_sdvo_encoder_destroy(&intel_encoder->base);
>=20=20
>  	return false;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
