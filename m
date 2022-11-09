Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA3A622E8E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 15:59:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17B2F10E5E0;
	Wed,  9 Nov 2022 14:59:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A17C310E5E9
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 14:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668005955; x=1699541955;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Itct2j7Liy8O9bvybW3797N306IFXK0IuqSxvC5XEqc=;
 b=jqIinb3zZlCtKebv2JbJYo/MTB5boUUdfEPeNyu6EdSN0YSfYJFWWnGF
 G/ljlQkNNKl/6A3ZZVdvGzs1hzn02KJO70qvwwlSXytaDtYXIXzLcHEpC
 qrpAzOtuXMSYiVi6X+l+MguA0BAZsBZo/EuuOpdRHIS/IH/hEQQq8/S7D
 FaCVj8uzyzV4qNOATHZ3AYHbJ0ceUgznSuQc025JDR/66ODepKPz+/Mum
 zNHcqXOY0Y02sZjAqGvYIwm319t0nF8RGGZC0Ktd3tAbfiIL5mLy1+Ejx
 ilsx6JCzNn+ehEG64aZwW/B5QJyN3ItaHpMkiLNiuDzrkdOvAZcaGWVVH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="294369833"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="294369833"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:59:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="705733479"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="705733479"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:59:12 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221109111649.23062-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
 <20221109111649.23062-3-ville.syrjala@linux.intel.com>
Date: Wed, 09 Nov 2022 16:59:10 +0200
Message-ID: <875yfo6uo1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Do panel VBT init early if
 the VBT declares an explicit panel type
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

On Wed, 09 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Lots of ADL machines out there with bogus VBTs that declare
> two eDP child devices. In order for those to work we need to
> figure out which power sequencer to use before we try the EDID
> read. So let's do the panel VBT init early if we can, falling
> back to the post-EDID init otherwise.
>
> The post-EDID init panel_type=3D0xff approach of assuming the
> power sequencer should already be enabled doesn't really work
> with multiple eDP panels, and currently we just end up using
> the same power sequencer for both eDP ports, which at least
> confuses the wakeref tracking, and potentially also causes us
> to toggle the VDD for the panel when we should not.

So this doesn't actually fix any of that stuff yet because the PPS code
doesn't handle two PPS for ADL yet.

Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     | 56 ++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_bios.h     | 11 ++--
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  7 ++-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  4 +-
>  drivers/gpu/drm/i915/display/intel_panel.c    |  1 +
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
>  9 files changed, 61 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index e05e7cd6c412..b6b48d25f31e 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -2042,7 +2042,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	/* attach connector to encoder */
>  	intel_connector_attach_encoder(intel_connector, encoder);
>=20=20
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL, NULL);
> +	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, NULL, NUL=
L);
>=20=20
>  	mutex_lock(&dev_priv->drm.mode_config.mutex);
>  	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index c2987f2c2b2e..64f927f6479d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -620,14 +620,14 @@ static void dump_pnp_id(struct drm_i915_private *i9=
15,
>=20=20
>  static int opregion_get_panel_type(struct drm_i915_private *i915,
>  				   const struct intel_bios_encoder_data *devdata,
> -				   const struct edid *edid)
> +				   const struct edid *edid, bool use_fallback)
>  {
>  	return intel_opregion_get_panel_type(i915);
>  }
>=20=20
>  static int vbt_get_panel_type(struct drm_i915_private *i915,
>  			      const struct intel_bios_encoder_data *devdata,
> -			      const struct edid *edid)
> +			      const struct edid *edid, bool use_fallback)
>  {
>  	const struct bdb_lvds_options *lvds_options;
>=20=20
> @@ -652,7 +652,7 @@ static int vbt_get_panel_type(struct drm_i915_private=
 *i915,
>=20=20
>  static int pnpid_get_panel_type(struct drm_i915_private *i915,
>  				const struct intel_bios_encoder_data *devdata,
> -				const struct edid *edid)
> +				const struct edid *edid, bool use_fallback)
>  {
>  	const struct bdb_lvds_lfp_data *data;
>  	const struct bdb_lvds_lfp_data_ptrs *ptrs;
> @@ -701,9 +701,9 @@ static int pnpid_get_panel_type(struct drm_i915_priva=
te *i915,
>=20=20
>  static int fallback_get_panel_type(struct drm_i915_private *i915,
>  				   const struct intel_bios_encoder_data *devdata,
> -				   const struct edid *edid)
> +				   const struct edid *edid, bool use_fallback)
>  {
> -	return 0;
> +	return use_fallback ? 0 : -1;
>  }
>=20=20
>  enum panel_type {
> @@ -715,13 +715,13 @@ enum panel_type {
>=20=20
>  static int get_panel_type(struct drm_i915_private *i915,
>  			  const struct intel_bios_encoder_data *devdata,
> -			  const struct edid *edid)
> +			  const struct edid *edid, bool use_fallback)
>  {
>  	struct {
>  		const char *name;
>  		int (*get_panel_type)(struct drm_i915_private *i915,
>  				      const struct intel_bios_encoder_data *devdata,
> -				      const struct edid *edid);
> +				      const struct edid *edid, bool use_fallback);
>  		int panel_type;
>  	} panel_types[] =3D {
>  		[PANEL_TYPE_OPREGION] =3D {
> @@ -744,7 +744,8 @@ static int get_panel_type(struct drm_i915_private *i9=
15,
>  	int i;
>=20=20
>  	for (i =3D 0; i < ARRAY_SIZE(panel_types); i++) {
> -		panel_types[i].panel_type =3D panel_types[i].get_panel_type(i915, devd=
ata, edid);
> +		panel_types[i].panel_type =3D panel_types[i].get_panel_type(i915, devd=
ata,
> +									  edid, use_fallback);
>=20=20
>  		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
>  			    panel_types[i].panel_type !=3D 0xff);
> @@ -3183,15 +3184,27 @@ void intel_bios_init(struct drm_i915_private *i91=
5)
>  	kfree(oprom_vbt);
>  }
>=20=20
> -void intel_bios_init_panel(struct drm_i915_private *i915,
> -			   struct intel_panel *panel,
> -			   const struct intel_bios_encoder_data *devdata,
> -			   const struct edid *edid)
> +static void intel_bios_init_panel(struct drm_i915_private *i915,
> +				  struct intel_panel *panel,
> +				  const struct intel_bios_encoder_data *devdata,
> +				  const struct edid *edid,
> +				  bool use_fallback)
>  {
> +	/* already have it? */
> +	if (panel->vbt.panel_type >=3D 0) {
> +		drm_WARN_ON(&i915->drm, !use_fallback);
> +		return;
> +	}
> +
> +	panel->vbt.panel_type =3D get_panel_type(i915, devdata,
> +					       edid, use_fallback);
> +	if (panel->vbt.panel_type < 0) {
> +		drm_WARN_ON(&i915->drm, use_fallback);
> +		return;
> +	}
> +
>  	init_vbt_panel_defaults(panel);
>=20=20
> -	panel->vbt.panel_type =3D get_panel_type(i915, devdata, edid);
> -
>  	parse_panel_options(i915, panel);
>  	parse_generic_dtd(i915, panel);
>  	parse_lfp_data(i915, panel);
> @@ -3205,6 +3218,21 @@ void intel_bios_init_panel(struct drm_i915_private=
 *i915,
>  	parse_mipi_sequence(i915, panel);
>  }
>=20=20
> +void intel_bios_init_panel_early(struct drm_i915_private *i915,
> +				 struct intel_panel *panel,
> +				 const struct intel_bios_encoder_data *devdata)
> +{
> +	intel_bios_init_panel(i915, panel, devdata, NULL, false);
> +}
> +
> +void intel_bios_init_panel_late(struct drm_i915_private *i915,
> +				struct intel_panel *panel,
> +				const struct intel_bios_encoder_data *devdata,
> +				const struct edid *edid)
> +{
> +	intel_bios_init_panel(i915, panel, devdata, edid, true);
> +}
> +
>  /**
>   * intel_bios_driver_remove - Free any resources allocated by intel_bios=
_init()
>   * @i915: i915 device instance
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index e375405a7828..ff1fdd2e0c1c 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -232,10 +232,13 @@ struct mipi_pps_data {
>  } __packed;
>=20=20
>  void intel_bios_init(struct drm_i915_private *dev_priv);
> -void intel_bios_init_panel(struct drm_i915_private *dev_priv,
> -			   struct intel_panel *panel,
> -			   const struct intel_bios_encoder_data *devdata,
> -			   const struct edid *edid);
> +void intel_bios_init_panel_early(struct drm_i915_private *dev_priv,
> +				 struct intel_panel *panel,
> +				 const struct intel_bios_encoder_data *devdata);
> +void intel_bios_init_panel_late(struct drm_i915_private *dev_priv,
> +				struct intel_panel *panel,
> +				const struct intel_bios_encoder_data *devdata,
> +				const struct edid *edid);
>  void intel_bios_fini_panel(struct intel_panel *panel);
>  void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
>  bool intel_bios_is_valid_vbt(const void *buf, size_t size);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index c6abaaa46e17..aec06cb24e23 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -291,7 +291,7 @@ struct intel_vbt_panel_data {
>  	struct drm_display_mode *sdvo_lvds_vbt_mode; /* if any */
>=20=20
>  	/* Feature bits */
> -	unsigned int panel_type:4;
> +	int panel_type;
>  	unsigned int lvds_dither:1;
>  	unsigned int bios_lvds_val; /* initial [PCH_]LVDS reg val in VBIOS */
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 7400d6b4c587..509ce003312b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5254,6 +5254,9 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  		return false;
>  	}
>=20=20
> +	intel_bios_init_panel_early(dev_priv, &intel_connector->panel,
> +				    encoder->devdata);
> +
>  	intel_pps_init(intel_dp);
>=20=20
>  	/* Cache DPCD and EDID for edp. */
> @@ -5289,8 +5292,8 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	}
>  	intel_connector->edid =3D edid;
>=20=20
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> -			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
> +	intel_bios_init_panel_late(dev_priv, &intel_connector->panel,
> +				   encoder->devdata, IS_ERR(edid) ? NULL : edid);
>=20=20
>  	intel_panel_add_edid_fixed_modes(intel_connector, true);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 246787bbf5ef..e19ae171af33 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -963,8 +963,8 @@ void intel_lvds_init(struct drm_i915_private *dev_pri=
v)
>  	}
>  	intel_connector->edid =3D edid;
>=20=20
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL,
> -			      IS_ERR(edid) ? NULL : edid);
> +	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, NULL,
> +				   IS_ERR(edid) ? NULL : edid);
>=20=20
>  	/* Try EDID first */
>  	intel_panel_add_edid_fixed_modes(intel_connector, true);
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 8e683ab75594..918b3b9d9ebe 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -664,6 +664,7 @@ void intel_panel_init_alloc(struct intel_connector *c=
onnector)
>  {
>  	struct intel_panel *panel =3D &connector->panel;
>=20=20
> +	connector->panel.vbt.panel_type =3D -1;
>  	INIT_LIST_HEAD(&panel->fixed_modes);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 48b7b1aa37b2..b2122aff3f63 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2885,7 +2885,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo,=
 u16 type)
>  	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connecto=
r))
>  		goto err;
>=20=20
> -	intel_bios_init_panel(i915, &intel_connector->panel, NULL, NULL);
> +	intel_bios_init_panel_late(i915, &intel_connector->panel, NULL, NULL);
>=20=20
>  	/*
>  	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 5a741ea4505f..d84352bc1376 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1915,7 +1915,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>=20=20
>  	intel_dsi->panel_power_off_time =3D ktime_get_boottime();
>=20=20
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL, NULL);
> +	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, NULL, NUL=
L);
>=20=20
>  	if (intel_connector->panel.vbt.dsi.config->dual_link)
>  		intel_dsi->ports =3D BIT(PORT_A) | BIT(PORT_C);

--=20
Jani Nikula, Intel Open Source Graphics Center
