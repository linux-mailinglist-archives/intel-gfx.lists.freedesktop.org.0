Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 296534F7C79
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 12:10:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D0CA10E0B7;
	Thu,  7 Apr 2022 10:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D214410E0B7
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 10:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649326214; x=1680862214;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=7Suh0t9CgwwCN8vbF7Dfs3FVTHZl0Cet853RwYPvpkw=;
 b=TLfrlCXz4QMy/k581gptiHUuNn6yfsscqu9tPW/sr2P9PWjvjbwWmyfB
 0XiOzdX0YXQfVK5jS3O1Cl0G0DQFR+PYaHb/48GmYki6GhnLK9Uy7sBje
 uIm6+CMGOiN3LxypMwwIZYMEId4F3dSxP4DZjNnJe3yFtRVJ+3SVhWlp0
 WBiqxP9B2i00vDoDIKVSCmcGFO5R2urQ1RXHnprP7e2eXph4cJAdfS1dB
 j+hLhhtorEQFj8bKreQrYolGMvl60O46tPNUfQe/g82yCZ//nKo+7Fy1R
 zlSn5tr5oTuHdugqOQrZCEj6Y71be0OCY077njGP+r/FVlGqz6wYK8mtA w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="258875135"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="258875135"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 03:10:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="570987796"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 03:10:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-2-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 13:10:08 +0300
Message-ID: <87mtgx5hmn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 01/22] drm/i915/bios: Use the cached BDB
 version
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

On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We have the BDB version cached, use it. We're going to have to
> start doing some of the BDB block parsing later, at which point
> we may no longer have the VBT around anymore (we free it at the
> end of intel_bios_init() when it didn't come via OpRegion).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 54 +++++++++++------------
>  1 file changed, 27 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 556169ce0544..5518f4cfa1b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -415,7 +415,7 @@ parse_panel_dtd(struct drm_i915_private *i915,
>  	 * try the new generic DTD block first on VBT >=3D 229, but still fall
>  	 * back to trying the old LFP block if that fails.
>  	 */
> -	if (bdb->version >=3D 229)
> +	if (i915->vbt.version >=3D 229)
>  		parse_generic_dtd(i915, bdb);
>  	if (!i915->vbt.lfp_lvds_vbt_mode)
>  		parse_lfp_panel_dtd(i915, bdb);
> @@ -452,12 +452,12 @@ parse_lfp_backlight(struct drm_i915_private *i915,
>  	}
>=20=20
>  	i915->vbt.backlight.type =3D INTEL_BACKLIGHT_DISPLAY_DDI;
> -	if (bdb->version >=3D 191) {
> +	if (i915->vbt.version >=3D 191) {
>  		size_t exp_size;
>=20=20
> -		if (bdb->version >=3D 236)
> +		if (i915->vbt.version >=3D 236)
>  			exp_size =3D sizeof(struct bdb_lfp_backlight_data);
> -		else if (bdb->version >=3D 234)
> +		else if (i915->vbt.version >=3D 234)
>  			exp_size =3D EXP_BDB_LFP_BL_DATA_SIZE_REV_234;
>  		else
>  			exp_size =3D EXP_BDB_LFP_BL_DATA_SIZE_REV_191;
> @@ -474,14 +474,14 @@ parse_lfp_backlight(struct drm_i915_private *i915,
>  	i915->vbt.backlight.pwm_freq_hz =3D entry->pwm_freq_hz;
>  	i915->vbt.backlight.active_low_pwm =3D entry->active_low_pwm;
>=20=20
> -	if (bdb->version >=3D 234) {
> +	if (i915->vbt.version >=3D 234) {
>  		u16 min_level;
>  		bool scale;
>=20=20
>  		level =3D backlight_data->brightness_level[panel_type].level;
>  		min_level =3D backlight_data->brightness_min_level[panel_type].level;
>=20=20
> -		if (bdb->version >=3D 236)
> +		if (i915->vbt.version >=3D 236)
>  			scale =3D backlight_data->brightness_precision_bits[panel_type] =3D=
=3D 16;
>  		else
>  			scale =3D level > 255;
> @@ -581,7 +581,7 @@ parse_general_features(struct drm_i915_private *i915,
>=20=20
>  	i915->vbt.int_tv_support =3D general->int_tv_support;
>  	/* int_crt_support can't be trusted on earlier platforms */
> -	if (bdb->version >=3D 155 &&
> +	if (i915->vbt.version >=3D 155 &&
>  	    (HAS_DDI(i915) || IS_VALLEYVIEW(i915)))
>  		i915->vbt.int_crt_support =3D general->int_crt_support;
>  	i915->vbt.lvds_use_ssc =3D general->enable_ssc;
> @@ -589,7 +589,7 @@ parse_general_features(struct drm_i915_private *i915,
>  		intel_bios_ssc_frequency(i915, general->ssc_freq);
>  	i915->vbt.display_clock_mode =3D general->display_clock_mode;
>  	i915->vbt.fdi_rx_polarity_inverted =3D general->fdi_rx_polarity_inverte=
d;
> -	if (bdb->version >=3D 181) {
> +	if (i915->vbt.version >=3D 181) {
>  		i915->vbt.orientation =3D general->rotate_180 ?
>  			DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP :
>  			DRM_MODE_PANEL_ORIENTATION_NORMAL;
> @@ -597,7 +597,7 @@ parse_general_features(struct drm_i915_private *i915,
>  		i915->vbt.orientation =3D DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
>  	}
>=20=20
> -	if (bdb->version >=3D 249 && general->afc_startup_config) {
> +	if (i915->vbt.version >=3D 249 && general->afc_startup_config) {
>  		i915->vbt.override_afc_startup =3D true;
>  		i915->vbt.override_afc_startup_val =3D general->afc_startup_config =3D=
=3D 0x1 ? 0x0 : 0x7;
>  	}
> @@ -724,13 +724,13 @@ parse_driver_features(struct drm_i915_private *i915,
>  		 * in the wild with the bits correctly populated. Version
>  		 * 108 (on i85x) does not have the bits correctly populated.
>  		 */
> -		if (bdb->version >=3D 134 &&
> +		if (i915->vbt.version >=3D 134 &&
>  		    driver->lvds_config !=3D BDB_DRIVER_FEATURE_INT_LVDS &&
>  		    driver->lvds_config !=3D BDB_DRIVER_FEATURE_INT_SDVO_LVDS)
>  			i915->vbt.int_lvds_support =3D 0;
>  	}
>=20=20
> -	if (bdb->version < 228) {
> +	if (i915->vbt.version < 228) {
>  		drm_dbg_kms(&i915->drm, "DRRS State Enabled:%d\n",
>  			    driver->drrs_enabled);
>  		/*
> @@ -753,7 +753,7 @@ parse_power_conservation_features(struct drm_i915_pri=
vate *i915,
>  	const struct bdb_lfp_power *power;
>  	u8 panel_type =3D i915->vbt.panel_type;
>=20=20
> -	if (bdb->version < 228)
> +	if (i915->vbt.version < 228)
>  		return;
>=20=20
>  	power =3D find_section(bdb, BDB_LFP_POWER);
> @@ -771,7 +771,7 @@ parse_power_conservation_features(struct drm_i915_pri=
vate *i915,
>  	if (!(power->drrs & BIT(panel_type)))
>  		i915->vbt.drrs_type =3D DRRS_TYPE_NONE;
>=20=20
> -	if (bdb->version >=3D 232)
> +	if (i915->vbt.version >=3D 232)
>  		i915->vbt.edp.hobl =3D power->hobl & BIT(panel_type);
>  }
>=20=20
> @@ -876,7 +876,7 @@ parse_edp(struct drm_i915_private *i915, const struct=
 bdb_header *bdb)
>  		break;
>  	}
>=20=20
> -	if (bdb->version >=3D 173) {
> +	if (i915->vbt.version >=3D 173) {
>  		u8 vswing;
>=20=20
>  		/* Don't read from VBT if module parameter has valid value*/
> @@ -919,7 +919,7 @@ parse_psr(struct drm_i915_private *i915, const struct=
 bdb_header *bdb)
>  	 * New psr options 0=3D500us, 1=3D100us, 2=3D2500us, 3=3D0us
>  	 * Old decimal value is wake up time in multiples of 100 us.
>  	 */
> -	if (bdb->version >=3D 205 &&
> +	if (i915->vbt.version >=3D 205 &&
>  	    (DISPLAY_VER(i915) >=3D 9 && !IS_BROXTON(i915))) {
>  		switch (psr_table->tp1_wakeup_time) {
>  		case 0:
> @@ -965,7 +965,7 @@ parse_psr(struct drm_i915_private *i915, const struct=
 bdb_header *bdb)
>  		i915->vbt.psr.tp2_tp3_wakeup_time_us =3D psr_table->tp2_tp3_wakeup_tim=
e * 100;
>  	}
>=20=20
> -	if (bdb->version >=3D 226) {
> +	if (i915->vbt.version >=3D 226) {
>  		u32 wakeup_time =3D psr->psr2_tp2_tp3_wakeup_time;
>=20=20
>  		wakeup_time =3D (wakeup_time >> (2 * panel_type)) & 0x3;
> @@ -1085,7 +1085,7 @@ parse_mipi_config(struct drm_i915_private *i915,
>  		return;
>  	}
>=20=20
> -	parse_dsi_backlight_ports(i915, bdb->version, port);
> +	parse_dsi_backlight_ports(i915, i915->vbt.version, port);
>=20=20
>  	/* FIXME is the 90 vs. 270 correct? */
>  	switch (config->rotation) {
> @@ -1448,7 +1448,7 @@ parse_compression_parameters(struct drm_i915_privat=
e *i915,
>  	u16 block_size;
>  	int index;
>=20=20
> -	if (bdb->version < 198)
> +	if (i915->vbt.version < 198)
>  		return;
>=20=20
>  	params =3D find_section(bdb, BDB_COMPRESSION_PARAMETERS);
> @@ -2117,31 +2117,31 @@ parse_general_definitions(struct drm_i915_private=
 *i915,
>  	if (intel_gmbus_is_valid_pin(i915, bus_pin))
>  		i915->vbt.crt_ddc_pin =3D bus_pin;
>=20=20
> -	if (bdb->version < 106) {
> +	if (i915->vbt.version < 106) {
>  		expected_size =3D 22;
> -	} else if (bdb->version < 111) {
> +	} else if (i915->vbt.version < 111) {
>  		expected_size =3D 27;
> -	} else if (bdb->version < 195) {
> +	} else if (i915->vbt.version < 195) {
>  		expected_size =3D LEGACY_CHILD_DEVICE_CONFIG_SIZE;
> -	} else if (bdb->version =3D=3D 195) {
> +	} else if (i915->vbt.version =3D=3D 195) {
>  		expected_size =3D 37;
> -	} else if (bdb->version <=3D 215) {
> +	} else if (i915->vbt.version <=3D 215) {
>  		expected_size =3D 38;
> -	} else if (bdb->version <=3D 237) {
> +	} else if (i915->vbt.version <=3D 237) {
>  		expected_size =3D 39;
>  	} else {
>  		expected_size =3D sizeof(*child);
>  		BUILD_BUG_ON(sizeof(*child) < 39);
>  		drm_dbg(&i915->drm,
>  			"Expected child device config size for VBT version %u not known; assu=
ming %u\n",
> -			bdb->version, expected_size);
> +			i915->vbt.version, expected_size);
>  	}
>=20=20
>  	/* Flag an error for unexpected size, but continue anyway. */
>  	if (defs->child_dev_size !=3D expected_size)
>  		drm_err(&i915->drm,
>  			"Unexpected child device config size %u (expected %u for VBT version =
%u)\n",
> -			defs->child_dev_size, expected_size, bdb->version);
> +			defs->child_dev_size, expected_size, i915->vbt.version);
>=20=20
>  	/* The legacy sized child device config is the minimum we need. */
>  	if (defs->child_dev_size < LEGACY_CHILD_DEVICE_CONFIG_SIZE) {
> @@ -2497,7 +2497,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>=20=20
>  	drm_dbg_kms(&i915->drm,
>  		    "VBT signature \"%.*s\", BDB version %d\n",
> -		    (int)sizeof(vbt->signature), vbt->signature, bdb->version);
> +		    (int)sizeof(vbt->signature), vbt->signature, i915->vbt.version);
>=20=20
>  	/* Grab useful general definitions */
>  	parse_general_features(i915, bdb);

--=20
Jani Nikula, Intel Open Source Graphics Center
