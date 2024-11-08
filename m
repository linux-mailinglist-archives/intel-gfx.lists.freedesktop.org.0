Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DBC9C1DBC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:16:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BD5010E9A3;
	Fri,  8 Nov 2024 13:16:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jtc83fPE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 468E510E9A3
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 13:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731071792; x=1762607792;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=JCcft+axXdK6u9AC9Fo+kfgUqbjVu+BO9N96XKJ/pRw=;
 b=jtc83fPEYaWLlh2pGXpFB2DmeDl19oRsW8VkcHCZx/JiVfJGL6+wUryg
 V8u9C7/gqGz2UQL485Hj36ACMJGKwdSMOSemzlh2KIjMoygvHZRqQuZGW
 x7sVNX2DmKPUNDfVqAb2m2Mk1hbAxrLzBkja4OmzAKeFSS4lCfPW+ywcG
 QVAmwpW1OoxPb74ph021S8ffNGLkFUUcGJXJAJLpg5qy5wxu7oiaiscwi
 vlPAyz+NcVn7hb9jG/+LK23/u1mb+9gikZ3uibq3gZIF31vH3Yy5bIr31
 U7t0EDxvGyavHC6OqBXrhogTufU4P7V4fuRn/1iZlbQGf7sBYnenmbxV7 Q==;
X-CSE-ConnectionGUID: 2N9aTPY5SZqO9rtRh/+aEA==
X-CSE-MsgGUID: x1vTlaXQThGjD4kHE4J8og==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="56350142"
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="56350142"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:16:32 -0800
X-CSE-ConnectionGUID: AWQU0w2bTxSLyuWyQTmegQ==
X-CSE-MsgGUID: pLgKEMONRciz/94zaQAKZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85074418"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.252])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:16:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/10] drm/i915/crt: Rename some variables
In-Reply-To: <20241107161123.16269-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
 <20241107161123.16269-10-ville.syrjala@linux.intel.com>
Date: Fri, 08 Nov 2024 15:16:27 +0200
Message-ID: <878qtteuhg.fsf@intel.com>
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

On Thu, 07 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rename a bunch of local variables to the preferred
> encoder/connector from intel_encoder/intel_connector.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_crt.c | 44 +++++++++++-------------
>  1 file changed, 20 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 5c3c6bc16a9e..b243ab51bdf0 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -861,7 +861,7 @@ intel_crt_detect(struct drm_connector *connector,
>  	struct intel_display *display =3D to_intel_display(connector->dev);
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	struct intel_crt *crt =3D intel_attached_crt(to_intel_connector(connect=
or));
> -	struct intel_encoder *intel_encoder =3D &crt->base;
> +	struct intel_encoder *encoder =3D &crt->base;
>  	struct drm_atomic_state *state;
>  	intel_wakeref_t wakeref;
>  	int status;
> @@ -877,8 +877,7 @@ intel_crt_detect(struct drm_connector *connector,
>  		return connector->status;
>=20=20
>  	if (display->params.load_detect_test) {
> -		wakeref =3D intel_display_power_get(dev_priv,
> -						  intel_encoder->power_domain);
> +		wakeref =3D intel_display_power_get(dev_priv, encoder->power_domain);
>  		goto load_detect;
>  	}
>=20=20
> @@ -886,8 +885,7 @@ intel_crt_detect(struct drm_connector *connector,
>  	if (dmi_check_system(intel_spurious_crt_detect))
>  		return connector_status_disconnected;
>=20=20
> -	wakeref =3D intel_display_power_get(dev_priv,
> -					  intel_encoder->power_domain);
> +	wakeref =3D intel_display_power_get(dev_priv, encoder->power_domain);
>=20=20
>  	if (I915_HAS_HOTPLUG(display)) {
>  		/* We can not rely on the HPD pin always being correctly wired
> @@ -944,7 +942,7 @@ intel_crt_detect(struct drm_connector *connector,
>  	}
>=20=20
>  out:
> -	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
> +	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
>=20=20
>  	return status;
>  }
> @@ -954,7 +952,7 @@ static int intel_crt_get_modes(struct drm_connector *=
connector)
>  	struct intel_display *display =3D to_intel_display(connector->dev);
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	struct intel_crt *crt =3D intel_attached_crt(to_intel_connector(connect=
or));
> -	struct intel_encoder *intel_encoder =3D &crt->base;
> +	struct intel_encoder *encoder =3D &crt->base;
>  	intel_wakeref_t wakeref;
>  	struct i2c_adapter *ddc;
>  	int ret;
> @@ -962,8 +960,7 @@ static int intel_crt_get_modes(struct drm_connector *=
connector)
>  	if (!intel_display_driver_check_access(dev_priv))
>  		return drm_edid_connector_add_modes(connector);
>=20=20
> -	wakeref =3D intel_display_power_get(dev_priv,
> -					  intel_encoder->power_domain);
> +	wakeref =3D intel_display_power_get(dev_priv, encoder->power_domain);
>=20=20
>  	ret =3D intel_crt_ddc_get_modes(connector, connector->ddc);
>  	if (ret || !IS_G4X(dev_priv))
> @@ -974,7 +971,7 @@ static int intel_crt_get_modes(struct drm_connector *=
connector)
>  	ret =3D intel_crt_ddc_get_modes(connector, ddc);
>=20=20
>  out:
> -	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
> +	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
>=20=20
>  	return ret;
>  }
> @@ -1026,9 +1023,8 @@ static const struct drm_encoder_funcs intel_crt_enc=
_funcs =3D {
>  void intel_crt_init(struct intel_display *display)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -	struct drm_connector *connector;
> +	struct intel_connector *connector;
>  	struct intel_crt *crt;
> -	struct intel_connector *intel_connector;
>  	i915_reg_t adpa_reg;
>  	u8 ddc_pin;
>  	u32 adpa;
> @@ -1063,17 +1059,17 @@ void intel_crt_init(struct intel_display *display)
>  	if (!crt)
>  		return;
>=20=20
> -	intel_connector =3D intel_connector_alloc();
> -	if (!intel_connector) {
> +	connector =3D intel_connector_alloc();
> +	if (!connector) {
>  		kfree(crt);
>  		return;
>  	}
>=20=20
>  	ddc_pin =3D display->vbt.crt_ddc_pin;
>=20=20
> -	connector =3D &intel_connector->base;
> -	crt->connector =3D intel_connector;
> -	drm_connector_init_with_ddc(display->drm, connector,
> +	crt->connector =3D connector;
> +
> +	drm_connector_init_with_ddc(display->drm, &connector->base,
>  				    &intel_crt_connector_funcs,
>  				    DRM_MODE_CONNECTOR_VGA,
>  				    intel_gmbus_get_adapter(display, ddc_pin));
> @@ -1081,7 +1077,7 @@ void intel_crt_init(struct intel_display *display)
>  	drm_encoder_init(display->drm, &crt->base.base, &intel_crt_enc_funcs,
>  			 DRM_MODE_ENCODER_DAC, "CRT");
>=20=20
> -	intel_connector_attach_encoder(intel_connector, &crt->base);
> +	intel_connector_attach_encoder(connector, &crt->base);
>=20=20
>  	crt->base.type =3D INTEL_OUTPUT_ANALOG;
>  	crt->base.cloneable =3D BIT(INTEL_OUTPUT_DVO) | BIT(INTEL_OUTPUT_HDMI);
> @@ -1091,7 +1087,7 @@ void intel_crt_init(struct intel_display *display)
>  		crt->base.pipe_mask =3D ~0;
>=20=20
>  	if (DISPLAY_VER(display) !=3D 2)
> -		connector->interlace_allowed =3D true;
> +		connector->base.interlace_allowed =3D true;
>=20=20
>  	crt->adpa_reg =3D adpa_reg;
>=20=20
> @@ -1101,11 +1097,11 @@ void intel_crt_init(struct intel_display *display)
>  	    !dmi_check_system(intel_spurious_crt_detect)) {
>  		crt->base.hpd_pin =3D HPD_CRT;
>  		crt->base.hotplug =3D intel_encoder_hotplug;
> -		intel_connector->polled =3D DRM_CONNECTOR_POLL_HPD;
> +		connector->polled =3D DRM_CONNECTOR_POLL_HPD;
>  	} else {
> -		intel_connector->polled =3D DRM_CONNECTOR_POLL_CONNECT;
> +		connector->polled =3D DRM_CONNECTOR_POLL_CONNECT;
>  	}
> -	intel_connector->base.polled =3D intel_connector->polled;
> +	connector->base.polled =3D connector->polled;
>=20=20
>  	if (HAS_DDI(display)) {
>  		assert_port_valid(dev_priv, PORT_E);
> @@ -1138,9 +1134,9 @@ void intel_crt_init(struct intel_display *display)
>  		crt->base.get_hw_state =3D intel_crt_get_hw_state;
>  		crt->base.enable =3D intel_enable_crt;
>  	}
> -	intel_connector->get_hw_state =3D intel_connector_get_hw_state;
> +	connector->get_hw_state =3D intel_connector_get_hw_state;
>=20=20
> -	drm_connector_helper_add(connector, &intel_crt_connector_helper_funcs);
> +	drm_connector_helper_add(&connector->base, &intel_crt_connector_helper_=
funcs);
>=20=20
>  	/*
>  	 * TODO: find a proper way to discover whether we need to set the the

--=20
Jani Nikula, Intel
