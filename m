Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA23D51830D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 13:07:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9DB410E6BE;
	Tue,  3 May 2022 11:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8173510E6BE
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 11:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651576060; x=1683112060;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=2fDSTguTzqmg7QyM+BR+nSPMZogrMPYnf3cAFBdKafw=;
 b=FcjLT1t+prYLUWbqkQ74gkvdZInN+IJVp/X0UmULq3qmZkbDWsSqOVP7
 oEAR7+WuscEsOElZwPv9tv/0q2byd5VmoqvZ+GFuL3R9TTQrGzeTnBwHN
 dd7pQevJKamD4T2xhti7J3AWapC7cP7jdol/y2YIuiTTB98Il/VwNppYE
 9Y4SQJhaqQvC/BuI8MpEnssJQJ+Mbx9GHu+94UeGCRkRDKJ32BEPzXOsO
 EeZOz2nsmHdX2VGCPSgyGHIiW0c2BdWIfzyztN+KdqwH+Tz12hA6Tq4Vn
 ZCbS1WsFgGXwlaZlPI3/uKP6lBoKKW8pVWiro3njoZvsBgCQGBfDGhzmN Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="353891672"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="353891672"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 04:07:38 -0700
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="547397006"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 04:07:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220426193222.3422-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
 <20220426193222.3422-12-ville.syrjala@linux.intel.com>
Date: Tue, 03 May 2022 14:07:33 +0300
Message-ID: <87ilqmri16.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 11/18] drm/i915/bios: Do panel specific
 VBT parsing later
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

On Tue, 26 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Move the panel specific VBT parsing to happen during the
> output probing stage. Needs to be done because the VBT
> parsing will need to look at the EDID to determine
> the correct panel_type on some machines.
>
> v2: Do intel_bios_init_panel() a bit earlier for vlv_dsi
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

This is a slightly annoying intermediate step for those rare machines
with multiple flat panels, mostly because of the debug printouts. Looks
like you've covered the leaks though.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       | 2 ++
>  drivers/gpu/drm/i915/display/intel_display.c | 1 -
>  drivers/gpu/drm/i915/display/intel_dp.c      | 2 ++
>  drivers/gpu/drm/i915/display/intel_lvds.c    | 2 ++
>  drivers/gpu/drm/i915/display/intel_sdvo.c    | 3 +++
>  drivers/gpu/drm/i915/display/vlv_dsi.c       | 2 ++
>  6 files changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 19bf717fd4cb..baef44cd137f 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -2049,6 +2049,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	/* attach connector to encoder */
>  	intel_connector_attach_encoder(intel_connector, encoder);
>=20=20
> +	intel_bios_init_panel(dev_priv);
> +
>  	mutex_lock(&dev->mode_config.mutex);
>  	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
>  	mutex_unlock(&dev->mode_config.mutex);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e33a70b980dc..0decf3d24237 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9579,7 +9579,6 @@ int intel_modeset_init_noirq(struct drm_i915_privat=
e *i915)
>  	}
>=20=20
>  	intel_bios_init(i915);
> -	intel_bios_init_panel(i915);
>=20=20
>  	ret =3D intel_vga_register(i915);
>  	if (ret)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index a83dbbfc914c..5d8f6f233684 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5185,6 +5185,8 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	}
>  	intel_connector->edid =3D edid;
>=20=20
> +	intel_bios_init_panel(dev_priv);
> +
>  	intel_panel_add_edid_fixed_modes(intel_connector,
>  					 dev_priv->vbt.drrs_type !=3D DRRS_TYPE_NONE);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index e8478161f8b9..554badf041f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -967,6 +967,8 @@ void intel_lvds_init(struct drm_i915_private *dev_pri=
v)
>  	}
>  	intel_connector->edid =3D edid;
>=20=20
> +	intel_bios_init_panel(dev_priv);
> +
>  	/* Try EDID first */
>  	intel_panel_add_edid_fixed_modes(intel_connector,
>  					 dev_priv->vbt.drrs_type !=3D DRRS_TYPE_NONE);
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index d81855d57cdc..84ac0f2162a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2869,6 +2869,7 @@ static bool
>  intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
>  {
>  	struct drm_encoder *encoder =3D &intel_sdvo->base.base;
> +	struct drm_i915_private *i915 =3D to_i915(encoder->dev);
>  	struct drm_connector *connector;
>  	struct intel_connector *intel_connector;
>  	struct intel_sdvo_connector *intel_sdvo_connector;
> @@ -2900,6 +2901,8 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo,=
 int device)
>  	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connecto=
r))
>  		goto err;
>=20=20
> +	intel_bios_init_panel(i915);
> +
>  	/*
>  	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
>  	 * SDVO->LVDS transcoders can't cope with the EDID mode.
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 1954f07f0d3e..08fb554ff7ad 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1929,6 +1929,8 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  	else
>  		intel_dsi->ports =3D BIT(port);
>=20=20
> +	intel_bios_init_panel(dev_priv);
> +
>  	intel_dsi->dcs_backlight_ports =3D dev_priv->vbt.dsi.bl_ports;
>  	intel_dsi->dcs_cabc_ports =3D dev_priv->vbt.dsi.cabc_ports;

--=20
Jani Nikula, Intel Open Source Graphics Center
