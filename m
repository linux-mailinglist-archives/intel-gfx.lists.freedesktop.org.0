Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1463743FE6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 18:36:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8783710E4B5;
	Fri, 30 Jun 2023 16:36:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E777E10E4B5
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 16:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688142998; x=1719678998;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=FHXKpSyP4CSiW3LsPoySPNnpDOf+b7pg8qry49jnudw=;
 b=mUXCCSBEUQpL8gBIa1S+RSsP3cLIfLfmz/AvGJjjLSSmjDxYaZ+sgN3H
 hnYJTLMwXkFuSng36Yxb5BUq+9aMZo6lKRs7co5xbA72CoXjXxl2ey0rI
 4pe0KLK+6GK/oUqgO9kSAulPXRu/wnUmc88l0nZmB4Ai1cfofYiRjSw8+
 imjd+evn7MHuU85BlZy6ZyTSnfYVMMxbvPBRK+QisGg13Pe6cgcx7ws4R
 vyGbqzO0avIYiAxnSpDNrOtsoQneJ+fofwS97ENvwAlhz1GALrpI5HJpc
 4F4/MxJkyYg/ZoI0TWgUM4ZvFDtNpcT66c4KwPnAb9CuIJOu6sE9NBADR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="361285811"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="361285811"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 09:36:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="717869079"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="717869079"
Received: from lpascal-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.49.62])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 09:36:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230630155846.29931-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
 <20230630155846.29931-4-ville.syrjala@linux.intel.com>
Date: Fri, 30 Jun 2023 19:36:34 +0300
Message-ID: <871qhs3o19.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 3/6] drm/i915: Remove DDC pin sanitation
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
> Stop with the VBT DDC pin sanitation, and instead just check
> that the appropriate DDC pin is still available when initializing
> a HDMI connector.
>
> The reason being that we want to start initializing ports in
> VBT order to deal with VBTs that declare child devices with
> seemingly conflicting ports. As the encoder initialization can
> fail for other reasons (at least for eDP+AUX) we can't know
> upfront which way the conflicts should be resolved.
>
> Note that the old way of sanitizing gave priority to the last
> port declared in the VBT, but now we sort of do the opposite by
> favoring the first encoder to successfully initialize. So far
> we're not aware of HDMI/DDC use cases where this would matter
> but for AUX CH (will be subject to a similar change) there are
> known cases where it matters.
>
> Also note that the old code fell back to the platform default DDC
> pin if the VBT pin was populated but invalid. That doesn't seem like
> such a great idea because the VBT might have later declared another
> port using that platform default pin, and so we might just be
> creating more DDC pin conflicts here. So lets not second guess the
> VBT and simply reject the entire HDMI encoder if the VBT DDC pin is
> invalid.
>
> v2: Pimp the commit message (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Fingers crossed!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 69 ----------------------
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 72 +++++++++++++++++++----
>  2 files changed, 59 insertions(+), 82 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 4b9bf76e137d..6aeebd3c97f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2230,72 +2230,6 @@ static u8 map_ddc_pin(struct drm_i915_private *i91=
5, u8 vbt_pin)
>  	return 0;
>  }
>=20=20
> -static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 d=
dc_pin)
> -{
> -	enum port port;
> -
> -	if (!ddc_pin)
> -		return PORT_NONE;
> -
> -	for_each_port(port) {
> -		const struct intel_bios_encoder_data *devdata =3D
> -			i915->display.vbt.ports[port];
> -
> -		if (devdata && ddc_pin =3D=3D devdata->child.ddc_pin)
> -			return port;
> -	}
> -
> -	return PORT_NONE;
> -}
> -
> -static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
> -			     enum port port)
> -{
> -	struct drm_i915_private *i915 =3D devdata->i915;
> -	struct child_device_config *child;
> -	u8 mapped_ddc_pin;
> -	enum port p;
> -
> -	if (!devdata->child.ddc_pin)
> -		return;
> -
> -	mapped_ddc_pin =3D map_ddc_pin(i915, devdata->child.ddc_pin);
> -	if (!intel_gmbus_is_valid_pin(i915, mapped_ddc_pin)) {
> -		drm_dbg_kms(&i915->drm,
> -			    "Port %c has invalid DDC pin %d, "
> -			    "sticking to defaults\n",
> -			    port_name(port), mapped_ddc_pin);
> -		devdata->child.ddc_pin =3D 0;
> -		return;
> -	}
> -
> -	p =3D get_port_by_ddc_pin(i915, devdata->child.ddc_pin);
> -	if (p =3D=3D PORT_NONE)
> -		return;
> -
> -	drm_dbg_kms(&i915->drm,
> -		    "port %c trying to use the same DDC pin (0x%x) as port %c, "
> -		    "disabling port %c DVI/HDMI support\n",
> -		    port_name(port), mapped_ddc_pin,
> -		    port_name(p), port_name(p));
> -
> -	/*
> -	 * If we have multiple ports supposedly sharing the pin, then dvi/hdmi
> -	 * couldn't exist on the shared port. Otherwise they share the same ddc
> -	 * pin and system couldn't communicate with them separately.
> -	 *
> -	 * Give inverse child device order the priority, last one wins. Yes,
> -	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
> -	 * port A and port E with the same AUX ch and we must pick port E :(
> -	 */
> -	child =3D &i915->display.vbt.ports[p]->child;
> -
> -	child->device_type &=3D ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
> -	child->device_type |=3D DEVICE_TYPE_NOT_HDMI_OUTPUT;
> -
> -	child->ddc_pin =3D 0;
> -}
> -
>  static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 au=
x_ch)
>  {
>  	enum port port;
> @@ -2754,9 +2688,6 @@ static void parse_ddi_port(struct intel_bios_encode=
r_data *devdata)
>=20=20
>  	sanitize_device_type(devdata, port);
>=20=20
> -	if (intel_bios_encoder_supports_dvi(devdata))
> -		sanitize_ddc_pin(devdata, port);
> -
>  	if (intel_bios_encoder_supports_dp(devdata))
>  		sanitize_aux_ch(devdata, port);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 7ac5e6c5e00d..8d1c8abfcffa 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2880,21 +2880,12 @@ static u8 g4x_port_to_ddc_pin(struct drm_i915_pri=
vate *dev_priv,
>  	return ddc_pin;
>  }
>=20=20
> -static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
> +static u8 intel_hdmi_default_ddc_pin(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	enum port port =3D encoder->port;
>  	u8 ddc_pin;
>=20=20
> -	ddc_pin =3D intel_bios_hdmi_ddc_pin(encoder->devdata);
> -	if (ddc_pin) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[ENCODER:%d:%s] Using DDC pin 0x%x (VBT)\n",
> -			    encoder->base.base.id, encoder->base.name,
> -			    ddc_pin);
> -		return ddc_pin;
> -	}
> -
>  	if (IS_ALDERLAKE_S(dev_priv))
>  		ddc_pin =3D adls_port_to_ddc_pin(dev_priv, port);
>  	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)
> @@ -2916,10 +2907,62 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder=
 *encoder)
>  	else
>  		ddc_pin =3D g4x_port_to_ddc_pin(dev_priv, port);
>=20=20
> -	drm_dbg_kms(&dev_priv->drm,
> -		    "[ENCODER:%d:%s] Using DDC pin 0x%x (platform default)\n",
> +	return ddc_pin;
> +}
> +
> +static struct intel_encoder *
> +get_encoder_by_ddc_pin(struct intel_encoder *encoder, u8 ddc_pin)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_encoder *other;
> +
> +	for_each_intel_encoder(&i915->drm, other) {
> +		if (other =3D=3D encoder)
> +			continue;
> +
> +		if (!intel_encoder_is_dig_port(other))
> +			continue;
> +
> +		if (enc_to_dig_port(other)->hdmi.ddc_bus =3D=3D ddc_pin)
> +			return other;
> +	}
> +
> +	return NULL;
> +}
> +
> +static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_encoder *other;
> +	const char *source;
> +	u8 ddc_pin;
> +
> +	ddc_pin =3D intel_bios_hdmi_ddc_pin(encoder->devdata);
> +	source =3D "VBT";
> +
> +	if (!ddc_pin) {
> +		ddc_pin =3D intel_hdmi_default_ddc_pin(encoder);
> +		source =3D "platform default";
> +	}
> +
> +	if (!intel_gmbus_is_valid_pin(i915, ddc_pin)) {
> +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Invalid DDC pin %d\n",
> +			    encoder->base.base.id, encoder->base.name, ddc_pin);
> +		return 0;
> +	}
> +
> +	other =3D get_encoder_by_ddc_pin(encoder, ddc_pin);
> +	if (other) {
> +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] DDC pin %d already claimed by=
 [ENCODER:%d:%s]\n",
> +			    encoder->base.base.id, encoder->base.name, ddc_pin,
> +			    other->base.base.id, other->base.name);
> +		return 0;
> +	}
> +
> +	drm_dbg_kms(&i915->drm,
> +		    "[ENCODER:%d:%s] Using DDC pin 0x%x (%s)\n",
>  		    encoder->base.base.id, encoder->base.name,
> -		    ddc_pin);
> +		    ddc_pin, source);
>=20=20
>  	return ddc_pin;
>  }
> @@ -2990,6 +3033,9 @@ void intel_hdmi_init_connector(struct intel_digital=
_port *dig_port,
>  		return;
>=20=20
>  	intel_hdmi->ddc_bus =3D intel_hdmi_ddc_pin(intel_encoder);
> +	if (!intel_hdmi->ddc_bus)
> +		return;
> +
>  	ddc =3D intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
>=20=20
>  	drm_connector_init_with_ddc(dev, connector,

--=20
Jani Nikula, Intel Open Source Graphics Center
