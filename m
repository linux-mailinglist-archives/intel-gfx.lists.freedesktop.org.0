Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7388F4F86AF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 19:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF16E10EC14;
	Thu,  7 Apr 2022 17:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 648E910EC14
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 17:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649354134; x=1680890134;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=rAB8fcaCDNaPIH9OnHCjvnBPTyNVuqfk2Zo42P6d1Xk=;
 b=DHIC3Tp6SPEwXpNXNsKBMf7WrtBn3Q4oOAxhF18UvW5mzUr93EGfo1Lh
 eTTmz6SYHNkIEzdmTM+AagtwhJNWbCht0r4AkWPKZEho26K6/wiWNDb6F
 GhPgx2/kS37t8FFbWDS3f7vji4FCZ79Yr9e/CdImH6SWtZFs6vS5aH23O
 WcNMg7ojD4n63/KvfKHqaAA2WZRDTW//5LId6Kh1fgThuEVjN+Kj95ulZ
 UzVM5GdxZOpFShieqfg22Fzx58+udSQns5vzXGzee1Ah8jprpMyMk98Ll
 NPcDt7pFYloRIzfWmdilYf01igHzHi5/GQrAwhBI5ioQyKzTr2kJNSj8e A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="261090263"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="261090263"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:55:33 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="723062082"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:55:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220406190932.29841-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-19-ville.syrjala@linux.intel.com>
 <20220406190932.29841-1-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 20:55:29 +0300
Message-ID: <8735io4w32.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4 18/22] drm/i915/bios: Determine panel
 type via PNPID match
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

On Wed, 06 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Apparently when the VBT panel_type=3D=3D0xff we should trawl through
> the PNPID table and check for a match against the EDID. If a
> match is found the index gives us the panel_type.
>
> Tried to match the Windows behaviour here with first looking
> for an exact match, and if one isn't found we fall back to
> looking for a match w/o the mfg year/week.

Does Windows also probe the EDID first, or does it use some side channel
to use the GOP probed EDID? ISTR there's something in the EFI interface
for this, but never looked deeper.

>
> v2: Rebase due to vlv_dsi changes
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5545
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c | 82 ++++++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_bios.h |  4 +-
>  drivers/gpu/drm/i915/display/intel_dp.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c |  2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c    |  2 +-
>  7 files changed, 82 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 688176d4a54a..49715485a3a6 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -2048,7 +2048,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	/* attach connector to encoder */
>  	intel_connector_attach_encoder(intel_connector, encoder);
>=20=20
> -	intel_bios_init_panel(dev_priv);
> +	intel_bios_init_panel(dev_priv, NULL);
>=20=20
>  	mutex_lock(&dev->mode_config.mutex);
>  	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 0e76c554581a..4c0680356134 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -582,6 +582,14 @@ get_lvds_fp_timing(const struct bdb_lvds_lfp_data *d=
ata,
>  	return (const void *)data + ptrs->ptr[index].fp_timing.offset;
>  }
>=20=20
> +static const struct lvds_pnp_id *
> +get_lvds_pnp_id(const struct bdb_lvds_lfp_data *data,
> +		const struct bdb_lvds_lfp_data_ptrs *ptrs,
> +		int index)
> +{
> +	return (const void *)data + ptrs->ptr[index].panel_pnp_id.offset;
> +}
> +
>  static const struct bdb_lvds_lfp_data_tail *
>  get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
>  		  const struct bdb_lvds_lfp_data_ptrs *ptrs)
> @@ -592,6 +600,52 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *da=
ta,
>  		return NULL;
>  }
>=20=20
> +static int pnp_id_panel_type(struct drm_i915_private *i915,
> +			     const struct edid *edid)
> +{
> +	const struct bdb_lvds_lfp_data *data;
> +	const struct bdb_lvds_lfp_data_ptrs *ptrs;
> +	const struct lvds_pnp_id *edid_id;
> +	struct lvds_pnp_id edid_id_nodate;
> +	int i, best =3D -1;
> +
> +	if (!edid)
> +		return -1;
> +
> +	edid_id =3D (const void *)&edid->mfg_id[0];
> +
> +	edid_id_nodate =3D *edid_id;
> +	edid_id_nodate.mfg_week =3D 0;
> +	edid_id_nodate.mfg_year =3D 0;
> +
> +	ptrs =3D find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
> +	if (!ptrs)
> +		return -1;
> +
> +	data =3D find_section(i915, BDB_LVDS_LFP_DATA);
> +	if (!data)
> +		return -1;
> +
> +	for (i =3D 0; i < 16; i++) {
> +		const struct lvds_pnp_id *vbt_id =3D
> +			get_lvds_pnp_id(data, ptrs, i);
> +
> +		/* full match? */
> +		if (!memcmp(vbt_id, edid_id, sizeof(*vbt_id)))
> +			return i;
> +
> +		/*
> +		 * Accept a match w/o date if no full match is found,
> +		 * and the VBT entry does not specify a date.
> +		 */
> +		if (best < 0 &&
> +		    !memcmp(vbt_id, &edid_id_nodate, sizeof(*vbt_id)))
> +			best =3D i;
> +	}
> +
> +	return best;
> +}
> +
>  static int vbt_panel_type(struct drm_i915_private *i915)
>  {
>  	const struct bdb_lvds_options *lvds_options;
> @@ -600,7 +654,8 @@ static int vbt_panel_type(struct drm_i915_private *i9=
15)
>  	if (!lvds_options)
>  		return -1;
>=20=20
> -	if (lvds_options->panel_type > 0xf) {
> +	if (lvds_options->panel_type > 0xf &&
> +	    lvds_options->panel_type !=3D 0xff) {
>  		drm_dbg_kms(&i915->drm, "Invalid VBT panel type 0x%x\n",
>  			    lvds_options->panel_type);
>  		return -1;
> @@ -612,10 +667,12 @@ static int vbt_panel_type(struct drm_i915_private *=
i915)
>  enum panel_type {
>  	PANEL_TYPE_OPREGION,
>  	PANEL_TYPE_VBT,
> +	PANEL_TYPE_PNPID,
>  	PANEL_TYPE_FALLBACK,
>  };
>=20=20
> -static int get_panel_type(struct drm_i915_private *i915)
> +static int get_panel_type(struct drm_i915_private *i915,
> +			  const struct edid *edid)
>  {
>  	struct {
>  		const char *name;
> @@ -623,15 +680,18 @@ static int get_panel_type(struct drm_i915_private *=
i915)
>  	} panel_types[] =3D {
>  		[PANEL_TYPE_OPREGION] =3D { .name =3D "OpRegion", .panel_type =3D -1, =
},
>  		[PANEL_TYPE_VBT] =3D { .name =3D "VBT", .panel_type =3D -1, },
> +		[PANEL_TYPE_PNPID] =3D { .name =3D "PNPID", .panel_type =3D -1, },
>  		[PANEL_TYPE_FALLBACK] =3D { .name =3D "fallback", .panel_type =3D 0, },
>  	};
>  	int i;
>=20=20
>  	panel_types[PANEL_TYPE_OPREGION].panel_type =3D intel_opregion_get_pane=
l_type(i915);
>  	panel_types[PANEL_TYPE_VBT].panel_type =3D vbt_panel_type(i915);
> +	panel_types[PANEL_TYPE_PNPID].panel_type =3D pnp_id_panel_type(i915, ed=
id);
>=20=20
>  	for (i =3D 0; i < ARRAY_SIZE(panel_types); i++) {
> -		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf);
> +		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
> +			    panel_types[i].panel_type !=3D 0xff);
>=20=20
>  		if (panel_types[i].panel_type >=3D 0)
>  			drm_dbg_kms(&i915->drm, "Panel type (%s): %d\n",
> @@ -640,7 +700,11 @@ static int get_panel_type(struct drm_i915_private *i=
915)
>=20=20
>  	if (panel_types[PANEL_TYPE_OPREGION].panel_type >=3D 0)
>  		i =3D PANEL_TYPE_OPREGION;
> -	else if (panel_types[PANEL_TYPE_VBT].panel_type >=3D 0)
> +	else if (panel_types[PANEL_TYPE_VBT].panel_type =3D=3D 0xff &&
> +		 panel_types[PANEL_TYPE_PNPID].panel_type >=3D 0)
> +		i =3D PANEL_TYPE_PNPID;
> +	else if (panel_types[PANEL_TYPE_VBT].panel_type !=3D 0xff &&
> +		 panel_types[PANEL_TYPE_VBT].panel_type >=3D 0)
>  		i =3D PANEL_TYPE_VBT;
>  	else
>  		i =3D PANEL_TYPE_FALLBACK;
> @@ -653,7 +717,8 @@ static int get_panel_type(struct drm_i915_private *i9=
15)
>=20=20
>  /* Parse general panel options */
>  static void
> -parse_panel_options(struct drm_i915_private *i915)
> +parse_panel_options(struct drm_i915_private *i915,
> +		    const struct edid *edid)
>  {
>  	const struct bdb_lvds_options *lvds_options;
>  	int panel_type;
> @@ -665,7 +730,7 @@ parse_panel_options(struct drm_i915_private *i915)
>=20=20
>  	i915->vbt.lvds_dither =3D lvds_options->pixel_dither;
>=20=20
> -	panel_type =3D get_panel_type(i915);
> +	panel_type =3D get_panel_type(i915, edid);
>=20=20
>  	i915->vbt.panel_type =3D panel_type;
>=20=20
> @@ -2953,9 +3018,10 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	kfree(oprom_vbt);
>  }
>=20=20
> -void intel_bios_init_panel(struct drm_i915_private *i915)
> +void intel_bios_init_panel(struct drm_i915_private *i915,
> +			   const struct edid *edid)
>  {
> -	parse_panel_options(i915);
> +	parse_panel_options(i915, edid);
>  	/*
>  	 * Older VBTs provided DTD information for internal displays through
>  	 * the "LFP panel tables" block (42).  As of VBT revision 229 the
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index c744d75fa435..be6d57bd0f5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -33,6 +33,7 @@
>  #include <linux/types.h>
>=20=20
>  struct drm_i915_private;
> +struct edid;
>  struct intel_bios_encoder_data;
>  struct intel_crtc_state;
>  struct intel_encoder;
> @@ -230,7 +231,8 @@ struct mipi_pps_data {
>  } __packed;
>=20=20
>  void intel_bios_init(struct drm_i915_private *dev_priv);
> -void intel_bios_init_panel(struct drm_i915_private *dev_priv);
> +void intel_bios_init_panel(struct drm_i915_private *dev_priv,
> +			   const struct edid *edid);
>  void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
>  bool intel_bios_is_valid_vbt(const void *buf, size_t size);
>  bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index a1b5d7f5388b..41ac55a700e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5179,7 +5179,7 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	}
>  	intel_connector->edid =3D edid;
>=20=20
> -	intel_bios_init_panel(dev_priv);
> +	intel_bios_init_panel(dev_priv, IS_ERR(edid) ? NULL : edid);
>=20=20
>  	intel_panel_add_edid_fixed_modes(intel_connector,
>  					 dev_priv->vbt.drrs_type !=3D DRRS_TYPE_NONE);
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 554badf041f2..660bb95f2bf7 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -967,7 +967,7 @@ void intel_lvds_init(struct drm_i915_private *dev_pri=
v)
>  	}
>  	intel_connector->edid =3D edid;
>=20=20
> -	intel_bios_init_panel(dev_priv);
> +	intel_bios_init_panel(dev_priv, IS_ERR(edid) ? NULL : edid);
>=20=20
>  	/* Try EDID first */
>  	intel_panel_add_edid_fixed_modes(intel_connector,
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 661a1057a073..25195bc1edca 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2900,7 +2900,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo,=
 int device)
>  	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connecto=
r))
>  		goto err;
>=20=20
> -	intel_bios_init_panel(i915);
> +	intel_bios_init_panel(i915, NULL);
>=20=20
>  	/*
>  	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 08fb554ff7ad..1af6e927af9b 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1929,7 +1929,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  	else
>  		intel_dsi->ports =3D BIT(port);
>=20=20
> -	intel_bios_init_panel(dev_priv);
> +	intel_bios_init_panel(dev_priv, NULL);
>=20=20
>  	intel_dsi->dcs_backlight_ports =3D dev_priv->vbt.dsi.bl_ports;
>  	intel_dsi->dcs_cabc_ports =3D dev_priv->vbt.dsi.cabc_ports;

--=20
Jani Nikula, Intel Open Source Graphics Center
