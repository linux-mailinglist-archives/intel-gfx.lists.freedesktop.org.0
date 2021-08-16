Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 293D83ED1A0
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 12:09:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFCC789C99;
	Mon, 16 Aug 2021 10:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C72A789C99
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 10:09:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="215832333"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="215832333"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 03:09:32 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="519596382"
Received: from ifridman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.210.77])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 03:09:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210722054338.12891-2-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210722054338.12891-1-jose.souza@intel.com>
 <20210722054338.12891-2-jose.souza@intel.com>
Date: Mon, 16 Aug 2021 13:09:27 +0300
Message-ID: <87zgthituw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/bios: Start to support two
 integrated panels
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

On Wed, 21 Jul 2021, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> VBT has support for up two integrated panels but i915 only supports one.
>
> So here stating to add the basic support for two integrated panels
> and moving the DRRS to ddi_vbt_port_info instead of keeping a global
> one.
> Other VBT blocks will be converted in following patches.
>
> While at is also nucking lvds_dither as it is not used.

If you were to get a mysterious bisect result on this patch, would you
know what's wrong?

I think there's too much going on in one patch, and this needs to be
split. Small, incremental changes with functional and non-functional
separated if possible. This is incredibly fragile stuff.

Also, I think we'll need to be able to figure out the panel type based
on EDID, i.e. we need to parse some stuff first, and the panel stuff
only after we've read EDID. Obviously you don't have to do that here,
but this need to be done so that this doesn't become impossible.

BR,
Jani.


>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 185 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_bios.h     |   2 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |   5 +-
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |   3 +
>  drivers/gpu/drm/i915/i915_drv.h               |   5 +-
>  5 files changed, 150 insertions(+), 50 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 5bc2c944d99b4..2b90efb41ecce 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -211,22 +211,20 @@ get_lvds_fp_timing(const struct bdb_header *bdb,
>  	return (const struct lvds_fp_timing *)((const u8 *)bdb + ofs);
>  }
>=20=20
> -/* Parse general panel options */
> -static void
> -parse_panel_options(struct drm_i915_private *i915,
> -		    const struct bdb_header *bdb)
> +/*
> + * Parse and set vbt.panel_type, it will be used by the VBT blocks that =
are
> + * not being called from parse_integrated_panel() yet.
> + */
> +static void parse_panel_type(struct drm_i915_private *i915,
> +			     const struct bdb_header *bdb)
>  {
>  	const struct bdb_lvds_options *lvds_options;
> -	int panel_type;
> -	int drrs_mode;
> -	int ret;
> +	int ret, panel_type;
>=20=20
>  	lvds_options =3D find_section(bdb, BDB_LVDS_OPTIONS);
>  	if (!lvds_options)
>  		return;
>=20=20
> -	i915->vbt.lvds_dither =3D lvds_options->pixel_dither;
> -
>  	ret =3D intel_opregion_get_panel_type(i915);
>  	if (ret >=3D 0) {
>  		drm_WARN_ON(&i915->drm, ret > 0xf);
> @@ -246,9 +244,25 @@ parse_panel_options(struct drm_i915_private *i915,
>  	}
>=20=20
>  	i915->vbt.panel_type =3D panel_type;
> +}
> +
> +/* Parse general panel options */
> +static void
> +parse_panel_options(struct drm_i915_private *i915,
> +		    const struct bdb_header *bdb,
> +		    struct ddi_vbt_port_info *info,
> +		    int panel_index)
> +{
> +	const struct bdb_lvds_options *lvds_options;
> +	int drrs_mode;
> +
> +	lvds_options =3D find_section(bdb, BDB_LVDS_OPTIONS);
> +	if (!lvds_options)
> +		return;
> +
> +	drrs_mode =3D lvds_options->dps_panel_type_bits >> (panel_index * 2);
> +	drrs_mode &=3D MODE_MASK;
>=20=20
> -	drrs_mode =3D (lvds_options->dps_panel_type_bits
> -				>> (panel_type * 2)) & MODE_MASK;
>  	/*
>  	 * VBT has static DRRS =3D 0 and seamless DRRS =3D 2.
>  	 * The below piece of code is required to adjust vbt.drrs_type
> @@ -256,16 +270,16 @@ parse_panel_options(struct drm_i915_private *i915,
>  	 */
>  	switch (drrs_mode) {
>  	case 0:
> -		i915->vbt.drrs_type =3D STATIC_DRRS_SUPPORT;
> +		info->drrs_type =3D STATIC_DRRS_SUPPORT;
>  		drm_dbg_kms(&i915->drm, "DRRS supported mode is static\n");
>  		break;
>  	case 2:
> -		i915->vbt.drrs_type =3D SEAMLESS_DRRS_SUPPORT;
> +		info->drrs_type =3D SEAMLESS_DRRS_SUPPORT;
>  		drm_dbg_kms(&i915->drm,
>  			    "DRRS supported mode is seamless\n");
>  		break;
>  	default:
> -		i915->vbt.drrs_type =3D DRRS_NOT_SUPPORTED;
> +		info->drrs_type =3D DRRS_NOT_SUPPORTED;
>  		drm_dbg_kms(&i915->drm,
>  			    "DRRS not supported (VBT input)\n");
>  		break;
> @@ -710,28 +724,42 @@ parse_driver_features(struct drm_i915_private *i915,
>  			i915->vbt.int_lvds_support =3D 0;
>  	}
>=20=20
> -	if (bdb->version < 228) {
> -		drm_dbg_kms(&i915->drm, "DRRS State Enabled:%d\n",
> -			    driver->drrs_enabled);
> -		/*
> -		 * If DRRS is not supported, drrs_type has to be set to 0.
> -		 * This is because, VBT is configured in such a way that
> -		 * static DRRS is 0 and DRRS not supported is represented by
> -		 * driver->drrs_enabled=3Dfalse
> -		 */
> -		if (!driver->drrs_enabled)
> -			i915->vbt.drrs_type =3D DRRS_NOT_SUPPORTED;
> -
> +	if (bdb->version < 228)
>  		i915->vbt.psr.enable =3D driver->psr_enabled;
> -	}
> +}
> +
> +static void
> +parse_driver_features_drrs_only(struct drm_i915_private *i915,
> +				const struct bdb_header *bdb,
> +				struct ddi_vbt_port_info *info)
> +{
> +	const struct bdb_driver_features *driver;
> +
> +	if (bdb->version >=3D 228)
> +		return;
> +
> +	driver =3D find_section(bdb, BDB_DRIVER_FEATURES);
> +	if (!driver)
> +		return;
> +
> +	drm_dbg_kms(&i915->drm, "DRRS State Enabled:%d\n", driver->drrs_enabled=
);
> +	/*
> +	 * If DRRS is not supported, drrs_type has to be set to 0.
> +	 * This is because, VBT is configured in such a way that
> +	 * static DRRS is 0 and DRRS not supported is represented by
> +	 * driver->drrs_enabled=3Dfalse
> +	 */
> +	if (!driver->drrs_enabled)
> +		info->drrs_type =3D DRRS_NOT_SUPPORTED;
>  }
>=20=20
>  static void
>  parse_power_conservation_features(struct drm_i915_private *i915,
> -				  const struct bdb_header *bdb)
> +				  const struct bdb_header *bdb,
> +				  struct ddi_vbt_port_info *info,
> +				  int panel_index)
>  {
>  	const struct bdb_lfp_power *power;
> -	u8 panel_type =3D i915->vbt.panel_type;
>=20=20
>  	if (bdb->version < 228)
>  		return;
> @@ -740,7 +768,7 @@ parse_power_conservation_features(struct drm_i915_pri=
vate *i915,
>  	if (!power)
>  		return;
>=20=20
> -	i915->vbt.psr.enable =3D power->psr & BIT(panel_type);
> +	i915->vbt.psr.enable =3D power->psr & BIT(panel_index);
>=20=20
>  	/*
>  	 * If DRRS is not supported, drrs_type has to be set to 0.
> @@ -748,11 +776,11 @@ parse_power_conservation_features(struct drm_i915_p=
rivate *i915,
>  	 * static DRRS is 0 and DRRS not supported is represented by
>  	 * power->drrs & BIT(panel_type)=3Dfalse
>  	 */
> -	if (!(power->drrs & BIT(panel_type)))
> -		i915->vbt.drrs_type =3D DRRS_NOT_SUPPORTED;
> +	if (!(power->drrs & BIT(panel_index)))
> +		info->drrs_type =3D DRRS_NOT_SUPPORTED;
>=20=20
>  	if (bdb->version >=3D 232)
> -		i915->vbt.edp.hobl =3D power->hobl & BIT(panel_type);
> +		i915->vbt.edp.hobl =3D power->hobl & BIT(panel_index);
>  }
>=20=20
>  static void
> @@ -1887,6 +1915,74 @@ static bool is_port_valid(struct drm_i915_private =
*i915, enum port port)
>  	return true;
>  }
>=20=20
> +static const struct bdb_header *get_bdb_header(const struct vbt_header *=
vbt)
> +{
> +	const void *_vbt =3D vbt;
> +
> +	return _vbt + vbt->bdb_offset;
> +}
> +
> +static int
> +get_lfp_panel_index(struct drm_i915_private *i915,
> +		    const struct bdb_header *bdb, int lfp_panel_instance)
> +{
> +	const struct bdb_lvds_options *lvds_options;
> +
> +	lvds_options =3D find_section(bdb, BDB_LVDS_OPTIONS);
> +	if (!lvds_options)
> +		return -1;
> +
> +	switch (lfp_panel_instance) {
> +	case 1:
> +		return lvds_options->panel_type;
> +	case 2:
> +		return lvds_options->panel_type2;
> +	default:
> +		break;
> +	}
> +
> +	return -1;
> +}
> +
> +static void parse_integrated_panel(struct drm_i915_private *i915,
> +				   struct intel_bios_encoder_data *devdata,
> +				   struct ddi_vbt_port_info *info)
> +{
> +	const struct vbt_header *vbt =3D i915->opregion.vbt;
> +	const struct bdb_header *bdb;
> +	int lfp_inst =3D 0, panel_index, opregion_panel_index;
> +
> +	if (devdata->child.handle =3D=3D HANDLE_LFP_1)
> +		lfp_inst =3D 1;
> +	else if (devdata->child.handle =3D=3D HANDLE_LFP_2)
> +		lfp_inst =3D 2;
> +
> +	if (lfp_inst =3D=3D 0)
> +		return;
> +
> +	bdb =3D get_bdb_header(vbt);
> +	panel_index =3D get_lfp_panel_index(i915, bdb, lfp_inst);
> +
> +	opregion_panel_index =3D intel_opregion_get_panel_type(i915);
> +	/*
> +	 * TODO: the current implementation always use the panel index from
> +	 * opregion if available due to issues with old platforms.
> +	 * But this do not supports two panels and in SKL or newer I never saw a
> +	 * system were this call returns a valid value.
> +	 * So will change this to only use opregion up to BDW in a separated
> +	 * commit.
> +	 */
> +	if (opregion_panel_index >=3D 0)
> +		panel_index =3D opregion_panel_index;
> +
> +	if (panel_index =3D=3D -1)
> +		return;
> +
> +	parse_panel_options(i915, bdb, info, panel_index);
> +	parse_power_conservation_features(i915, bdb, info, panel_index);
> +	parse_driver_features_drrs_only(i915, bdb, info);
> +}
> +
>  static void parse_ddi_port(struct drm_i915_private *i915,
>  			   struct intel_bios_encoder_data *devdata)
>  {
> @@ -2018,6 +2114,8 @@ static void parse_ddi_port(struct drm_i915_private =
*i915,
>  			    port_name(port), info->dp_max_link_rate);
>  	}
>=20=20
> +	parse_integrated_panel(i915, devdata, info);
> +
>  	info->devdata =3D devdata;
>  }
>=20=20
> @@ -2144,9 +2242,6 @@ init_vbt_defaults(struct drm_i915_private *i915)
>  	/* Default to having backlight */
>  	i915->vbt.backlight.present =3D true;
>=20=20
> -	/* LFP panel data */
> -	i915->vbt.lvds_dither =3D 1;
> -
>  	/* SDVO panel data */
>  	i915->vbt.sdvo_lvds_vbt_mode =3D NULL;
>=20=20
> @@ -2226,13 +2321,6 @@ init_vbt_missing_defaults(struct drm_i915_private =
*i915)
>  	i915->vbt.version =3D 155;
>  }
>=20=20
> -static const struct bdb_header *get_bdb_header(const struct vbt_header *=
vbt)
> -{
> -	const void *_vbt =3D vbt;
> -
> -	return _vbt + vbt->bdb_offset;
> -}
> -
>  /**
>   * intel_bios_is_valid_vbt - does the given buffer contain a valid VBT
>   * @buf:	pointer to a buffer to validate
> @@ -2386,12 +2474,11 @@ void intel_bios_init(struct drm_i915_private *i91=
5)
>  	/* Grab useful general definitions */
>  	parse_general_features(i915, bdb);
>  	parse_general_definitions(i915, bdb);
> -	parse_panel_options(i915, bdb);
> +	parse_panel_type(i915, bdb);
>  	parse_panel_dtd(i915, bdb);
>  	parse_lfp_backlight(i915, bdb);
>  	parse_sdvo_panel_data(i915, bdb);
>  	parse_driver_features(i915, bdb);
> -	parse_power_conservation_features(i915, bdb);
>  	parse_edp(i915, bdb);
>  	parse_psr(i915, bdb);
>  	parse_mipi_config(i915, bdb);
> @@ -3011,3 +3098,11 @@ intel_bios_encoder_data_lookup(struct drm_i915_pri=
vate *i915, enum port port)
>  {
>  	return i915->vbt.ddi_port_info[port].devdata;
>  }
> +
> +enum drrs_support_type
> +intel_bios_drrs_type(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	return i915->vbt.ddi_port_info[encoder->port].drrs_type;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index 4709c4d298059..bad282b64c5e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -266,4 +266,6 @@ bool intel_bios_encoder_supports_tbt(const struct int=
el_bios_encoder_data *devda
>  int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_da=
ta *devdata);
>  int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_=
data *devdata);
>=20=20
> +enum drrs_support_type intel_bios_drrs_type(struct intel_encoder *encode=
r);
> +
>  #endif /* _INTEL_BIOS_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index c386ef8eb2006..79d4e3edb2eef 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5133,6 +5133,7 @@ intel_dp_drrs_init(struct intel_connector *connecto=
r,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	struct drm_display_mode *downclock_mode =3D NULL;
> +	enum drrs_support_type drrs_type =3D intel_bios_drrs_type(connector->en=
coder);
>=20=20
>  	INIT_DELAYED_WORK(&dev_priv->drrs.work, intel_edp_drrs_downclock_work);
>  	mutex_init(&dev_priv->drrs.mutex);
> @@ -5143,7 +5144,7 @@ intel_dp_drrs_init(struct intel_connector *connecto=
r,
>  		return NULL;
>  	}
>=20=20
> -	if (dev_priv->vbt.drrs_type !=3D SEAMLESS_DRRS_SUPPORT) {
> +	if (drrs_type !=3D SEAMLESS_DRRS_SUPPORT) {
>  		drm_dbg_kms(&dev_priv->drm, "VBT doesn't support DRRS\n");
>  		return NULL;
>  	}
> @@ -5155,7 +5156,7 @@ intel_dp_drrs_init(struct intel_connector *connecto=
r,
>  		return NULL;
>  	}
>=20=20
> -	dev_priv->drrs.type =3D dev_priv->vbt.drrs_type;
> +	dev_priv->drrs.type =3D drrs_type;
>=20=20
>  	dev_priv->drrs.refresh_rate_type =3D DRRS_HIGH_RR;
>  	drm_dbg_kms(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index dbe24d7e73759..cd927d13250f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -359,6 +359,9 @@ enum vbt_gmbus_ddi {
>  #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5	6
>  #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20	7
>=20=20
> +#define HANDLE_LFP_1 0x0008
> +#define HANDLE_LFP_2 0x0080
> +
>  /*
>   * The child device config, aka the display device data structure, provi=
des a
>   * description of a port and its configuration on the platform.
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 0321a1f9738d6..d990ceb23c85e 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -656,6 +656,8 @@ struct ddi_vbt_port_info {
>  	u8 alternate_ddc_pin;
>=20=20
>  	int dp_max_link_rate;		/* 0 for not limited by VBT */
> +
> +	enum drrs_support_type drrs_type;
>  };
>=20=20
>  enum psr_lines_to_wait {
> @@ -674,7 +676,6 @@ struct intel_vbt_data {
>=20=20
>  	/* Feature bits */
>  	unsigned int int_tv_support:1;
> -	unsigned int lvds_dither:1;
>  	unsigned int int_crt_support:1;
>  	unsigned int lvds_use_ssc:1;
>  	unsigned int int_lvds_support:1;
> @@ -685,8 +686,6 @@ struct intel_vbt_data {
>  	unsigned int bios_lvds_val; /* initial [PCH_]LVDS reg val in VBIOS */
>  	enum drm_panel_orientation orientation;
>=20=20
> -	enum drrs_support_type drrs_type;
> -
>  	struct {
>  		int rate;
>  		int lanes;

--=20
Jani Nikula, Intel Open Source Graphics Center
