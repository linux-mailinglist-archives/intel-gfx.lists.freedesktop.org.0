Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58919321EE7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 19:14:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A002C88344;
	Mon, 22 Feb 2021 18:14:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C8F88344
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 18:14:28 +0000 (UTC)
IronPort-SDR: lRCjgb8q1P2hV8UF/N4AqWDeauZf4GsLsmunuNZ3xm2MbISNhI6ZEv4bD8qKoVzYGQ6GfbgL8c
 6xqhGYerkkQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="248595483"
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="248595483"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 10:14:27 -0800
IronPort-SDR: QhPi0215hfp3/+VVyp05AN/eM3g82y56LlFJRjOHqKrZEY++htkCCStczWVfhhBOdtG/TndwqT
 OyW9IFSQ3n7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="430344730"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 22 Feb 2021 10:14:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Feb 2021 20:14:24 +0200
Date: Mon, 22 Feb 2021 20:14:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YDP0gHyTcL80AMTN@intel.com>
References: <cover.1613580193.git.jani.nikula@intel.com>
 <d0ff0662285d317d5c10d433a46f6dab2bbedf64.1613580193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d0ff0662285d317d5c10d433a46f6dab2bbedf64.1613580193.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915/bios: mass convert dev_priv
 to i915
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 17, 2021 at 07:03:31PM +0200, Jani Nikula wrote:
> Time to just yank out the bandage. No functional changes.
> =

> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 766 +++++++++++-----------
>  1 file changed, 383 insertions(+), 383 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 7902d4c2673e..802c228b2940 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -211,7 +211,7 @@ get_lvds_fp_timing(const struct bdb_header *bdb,
>  =

>  /* Parse general panel options */
>  static void
> -parse_panel_options(struct drm_i915_private *dev_priv,
> +parse_panel_options(struct drm_i915_private *i915,
>  		    const struct bdb_header *bdb)
>  {
>  	const struct bdb_lvds_options *lvds_options;
> @@ -223,27 +223,27 @@ parse_panel_options(struct drm_i915_private *dev_pr=
iv,
>  	if (!lvds_options)
>  		return;
>  =

> -	dev_priv->vbt.lvds_dither =3D lvds_options->pixel_dither;
> +	i915->vbt.lvds_dither =3D lvds_options->pixel_dither;
>  =

> -	ret =3D intel_opregion_get_panel_type(dev_priv);
> +	ret =3D intel_opregion_get_panel_type(i915);
>  	if (ret >=3D 0) {
> -		drm_WARN_ON(&dev_priv->drm, ret > 0xf);
> +		drm_WARN_ON(&i915->drm, ret > 0xf);
>  		panel_type =3D ret;
> -		drm_dbg_kms(&dev_priv->drm, "Panel type: %d (OpRegion)\n",
> +		drm_dbg_kms(&i915->drm, "Panel type: %d (OpRegion)\n",
>  			    panel_type);
>  	} else {
>  		if (lvds_options->panel_type > 0xf) {
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "Invalid VBT panel type 0x%x\n",
>  				    lvds_options->panel_type);
>  			return;
>  		}
>  		panel_type =3D lvds_options->panel_type;
> -		drm_dbg_kms(&dev_priv->drm, "Panel type: %d (VBT)\n",
> +		drm_dbg_kms(&i915->drm, "Panel type: %d (VBT)\n",
>  			    panel_type);
>  	}
>  =

> -	dev_priv->vbt.panel_type =3D panel_type;
> +	i915->vbt.panel_type =3D panel_type;
>  =

>  	drrs_mode =3D (lvds_options->dps_panel_type_bits
>  				>> (panel_type * 2)) & MODE_MASK;
> @@ -254,17 +254,17 @@ parse_panel_options(struct drm_i915_private *dev_pr=
iv,
>  	 */
>  	switch (drrs_mode) {
>  	case 0:
> -		dev_priv->vbt.drrs_type =3D STATIC_DRRS_SUPPORT;
> -		drm_dbg_kms(&dev_priv->drm, "DRRS supported mode is static\n");
> +		i915->vbt.drrs_type =3D STATIC_DRRS_SUPPORT;
> +		drm_dbg_kms(&i915->drm, "DRRS supported mode is static\n");
>  		break;
>  	case 2:
> -		dev_priv->vbt.drrs_type =3D SEAMLESS_DRRS_SUPPORT;
> -		drm_dbg_kms(&dev_priv->drm,
> +		i915->vbt.drrs_type =3D SEAMLESS_DRRS_SUPPORT;
> +		drm_dbg_kms(&i915->drm,
>  			    "DRRS supported mode is seamless\n");
>  		break;
>  	default:
> -		dev_priv->vbt.drrs_type =3D DRRS_NOT_SUPPORTED;
> -		drm_dbg_kms(&dev_priv->drm,
> +		i915->vbt.drrs_type =3D DRRS_NOT_SUPPORTED;
> +		drm_dbg_kms(&i915->drm,
>  			    "DRRS not supported (VBT input)\n");
>  		break;
>  	}
> @@ -272,7 +272,7 @@ parse_panel_options(struct drm_i915_private *dev_priv,
>  =

>  /* Try to find integrated panel timing data */
>  static void
> -parse_lfp_panel_dtd(struct drm_i915_private *dev_priv,
> +parse_lfp_panel_dtd(struct drm_i915_private *i915,
>  		    const struct bdb_header *bdb)
>  {
>  	const struct bdb_lvds_lfp_data *lvds_lfp_data;
> @@ -280,7 +280,7 @@ parse_lfp_panel_dtd(struct drm_i915_private *dev_priv,
>  	const struct lvds_dvo_timing *panel_dvo_timing;
>  	const struct lvds_fp_timing *fp_timing;
>  	struct drm_display_mode *panel_fixed_mode;
> -	int panel_type =3D dev_priv->vbt.panel_type;
> +	int panel_type =3D i915->vbt.panel_type;
>  =

>  	lvds_lfp_data =3D find_section(bdb, BDB_LVDS_LFP_DATA);
>  	if (!lvds_lfp_data)
> @@ -300,9 +300,9 @@ parse_lfp_panel_dtd(struct drm_i915_private *dev_priv,
>  =

>  	fill_detail_timing_data(panel_fixed_mode, panel_dvo_timing);
>  =

> -	dev_priv->vbt.lfp_lvds_vbt_mode =3D panel_fixed_mode;
> +	i915->vbt.lfp_lvds_vbt_mode =3D panel_fixed_mode;
>  =

> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(&i915->drm,
>  		    "Found panel mode in BIOS VBT legacy lfp table:\n");
>  	drm_mode_debug_printmodeline(panel_fixed_mode);
>  =

> @@ -313,16 +313,16 @@ parse_lfp_panel_dtd(struct drm_i915_private *dev_pr=
iv,
>  		/* check the resolution, just to be sure */
>  		if (fp_timing->x_res =3D=3D panel_fixed_mode->hdisplay &&
>  		    fp_timing->y_res =3D=3D panel_fixed_mode->vdisplay) {
> -			dev_priv->vbt.bios_lvds_val =3D fp_timing->lvds_reg_val;
> -			drm_dbg_kms(&dev_priv->drm,
> +			i915->vbt.bios_lvds_val =3D fp_timing->lvds_reg_val;
> +			drm_dbg_kms(&i915->drm,
>  				    "VBT initial LVDS value %x\n",
> -				    dev_priv->vbt.bios_lvds_val);
> +				    i915->vbt.bios_lvds_val);
>  		}
>  	}
>  }
>  =

>  static void
> -parse_generic_dtd(struct drm_i915_private *dev_priv,
> +parse_generic_dtd(struct drm_i915_private *i915,
>  		  const struct bdb_header *bdb)
>  {
>  	const struct bdb_generic_dtd *generic_dtd;
> @@ -335,26 +335,26 @@ parse_generic_dtd(struct drm_i915_private *dev_priv,
>  		return;
>  =

>  	if (generic_dtd->gdtd_size < sizeof(struct generic_dtd_entry)) {
> -		drm_err(&dev_priv->drm, "GDTD size %u is too small.\n",
> +		drm_err(&i915->drm, "GDTD size %u is too small.\n",
>  			generic_dtd->gdtd_size);
>  		return;
>  	} else if (generic_dtd->gdtd_size !=3D
>  		   sizeof(struct generic_dtd_entry)) {
> -		drm_err(&dev_priv->drm, "Unexpected GDTD size %u\n",
> +		drm_err(&i915->drm, "Unexpected GDTD size %u\n",
>  			generic_dtd->gdtd_size);
>  		/* DTD has unknown fields, but keep going */
>  	}
>  =

>  	num_dtd =3D (get_blocksize(generic_dtd) -
>  		   sizeof(struct bdb_generic_dtd)) / generic_dtd->gdtd_size;
> -	if (dev_priv->vbt.panel_type >=3D num_dtd) {
> -		drm_err(&dev_priv->drm,
> +	if (i915->vbt.panel_type >=3D num_dtd) {
> +		drm_err(&i915->drm,
>  			"Panel type %d not found in table of %d DTD's\n",
> -			dev_priv->vbt.panel_type, num_dtd);
> +			i915->vbt.panel_type, num_dtd);
>  		return;
>  	}
>  =

> -	dtd =3D &generic_dtd->dtd[dev_priv->vbt.panel_type];
> +	dtd =3D &generic_dtd->dtd[i915->vbt.panel_type];
>  =

>  	panel_fixed_mode =3D kzalloc(sizeof(*panel_fixed_mode), GFP_KERNEL);
>  	if (!panel_fixed_mode)
> @@ -393,15 +393,15 @@ parse_generic_dtd(struct drm_i915_private *dev_priv,
>  	else
>  		panel_fixed_mode->flags |=3D DRM_MODE_FLAG_NVSYNC;
>  =

> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(&i915->drm,
>  		    "Found panel mode in BIOS VBT generic dtd table:\n");
>  	drm_mode_debug_printmodeline(panel_fixed_mode);
>  =

> -	dev_priv->vbt.lfp_lvds_vbt_mode =3D panel_fixed_mode;
> +	i915->vbt.lfp_lvds_vbt_mode =3D panel_fixed_mode;
>  }
>  =

>  static void
> -parse_panel_dtd(struct drm_i915_private *dev_priv,
> +parse_panel_dtd(struct drm_i915_private *i915,
>  		const struct bdb_header *bdb)
>  {
>  	/*
> @@ -413,18 +413,18 @@ parse_panel_dtd(struct drm_i915_private *dev_priv,
>  	 * back to trying the old LFP block if that fails.
>  	 */
>  	if (bdb->version >=3D 229)
> -		parse_generic_dtd(dev_priv, bdb);
> -	if (!dev_priv->vbt.lfp_lvds_vbt_mode)
> -		parse_lfp_panel_dtd(dev_priv, bdb);
> +		parse_generic_dtd(i915, bdb);
> +	if (!i915->vbt.lfp_lvds_vbt_mode)
> +		parse_lfp_panel_dtd(i915, bdb);
>  }
>  =

>  static void
> -parse_lfp_backlight(struct drm_i915_private *dev_priv,
> +parse_lfp_backlight(struct drm_i915_private *i915,
>  		    const struct bdb_header *bdb)
>  {
>  	const struct bdb_lfp_backlight_data *backlight_data;
>  	const struct lfp_backlight_data_entry *entry;
> -	int panel_type =3D dev_priv->vbt.panel_type;
> +	int panel_type =3D i915->vbt.panel_type;
>  	u16 level;
>  =

>  	backlight_data =3D find_section(bdb, BDB_LVDS_BACKLIGHT);
> @@ -432,7 +432,7 @@ parse_lfp_backlight(struct drm_i915_private *dev_priv,
>  		return;
>  =

>  	if (backlight_data->entry_size !=3D sizeof(backlight_data->data[0])) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Unsupported backlight data entry size %u\n",
>  			    backlight_data->entry_size);
>  		return;
> @@ -440,26 +440,26 @@ parse_lfp_backlight(struct drm_i915_private *dev_pr=
iv,
>  =

>  	entry =3D &backlight_data->data[panel_type];
>  =

> -	dev_priv->vbt.backlight.present =3D entry->type =3D=3D BDB_BACKLIGHT_TY=
PE_PWM;
> -	if (!dev_priv->vbt.backlight.present) {
> -		drm_dbg_kms(&dev_priv->drm,
> +	i915->vbt.backlight.present =3D entry->type =3D=3D BDB_BACKLIGHT_TYPE_P=
WM;
> +	if (!i915->vbt.backlight.present) {
> +		drm_dbg_kms(&i915->drm,
>  			    "PWM backlight not present in VBT (type %u)\n",
>  			    entry->type);
>  		return;
>  	}
>  =

> -	dev_priv->vbt.backlight.type =3D INTEL_BACKLIGHT_DISPLAY_DDI;
> +	i915->vbt.backlight.type =3D INTEL_BACKLIGHT_DISPLAY_DDI;
>  	if (bdb->version >=3D 191 &&
>  	    get_blocksize(backlight_data) >=3D sizeof(*backlight_data)) {
>  		const struct lfp_backlight_control_method *method;
>  =

>  		method =3D &backlight_data->backlight_control[panel_type];
> -		dev_priv->vbt.backlight.type =3D method->type;
> -		dev_priv->vbt.backlight.controller =3D method->controller;
> +		i915->vbt.backlight.type =3D method->type;
> +		i915->vbt.backlight.controller =3D method->controller;
>  	}
>  =

> -	dev_priv->vbt.backlight.pwm_freq_hz =3D entry->pwm_freq_hz;
> -	dev_priv->vbt.backlight.active_low_pwm =3D entry->active_low_pwm;
> +	i915->vbt.backlight.pwm_freq_hz =3D entry->pwm_freq_hz;
> +	i915->vbt.backlight.active_low_pwm =3D entry->active_low_pwm;
>  =

>  	if (bdb->version >=3D 234) {
>  		u16 min_level;
> @@ -477,37 +477,37 @@ parse_lfp_backlight(struct drm_i915_private *dev_pr=
iv,
>  			min_level =3D min_level / 255;
>  =

>  		if (min_level > 255) {
> -			drm_warn(&dev_priv->drm, "Brightness min level > 255\n");
> +			drm_warn(&i915->drm, "Brightness min level > 255\n");
>  			level =3D 255;
>  		}
> -		dev_priv->vbt.backlight.min_brightness =3D min_level;
> +		i915->vbt.backlight.min_brightness =3D min_level;
>  	} else {
>  		level =3D backlight_data->level[panel_type];
> -		dev_priv->vbt.backlight.min_brightness =3D entry->min_brightness;
> +		i915->vbt.backlight.min_brightness =3D entry->min_brightness;
>  	}
>  =

> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(&i915->drm,
>  		    "VBT backlight PWM modulation frequency %u Hz, "
>  		    "active %s, min brightness %u, level %u, controller %u\n",
> -		    dev_priv->vbt.backlight.pwm_freq_hz,
> -		    dev_priv->vbt.backlight.active_low_pwm ? "low" : "high",
> -		    dev_priv->vbt.backlight.min_brightness,
> +		    i915->vbt.backlight.pwm_freq_hz,
> +		    i915->vbt.backlight.active_low_pwm ? "low" : "high",
> +		    i915->vbt.backlight.min_brightness,
>  		    level,
> -		    dev_priv->vbt.backlight.controller);
> +		    i915->vbt.backlight.controller);
>  }
>  =

>  /* Try to find sdvo panel data */
>  static void
> -parse_sdvo_panel_data(struct drm_i915_private *dev_priv,
> +parse_sdvo_panel_data(struct drm_i915_private *i915,
>  		      const struct bdb_header *bdb)
>  {
>  	const struct bdb_sdvo_panel_dtds *dtds;
>  	struct drm_display_mode *panel_fixed_mode;
>  	int index;
>  =

> -	index =3D dev_priv->params.vbt_sdvo_panel_type;
> +	index =3D i915->params.vbt_sdvo_panel_type;
>  	if (index =3D=3D -2) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Ignore SDVO panel mode from BIOS VBT tables.\n");
>  		return;
>  	}
> @@ -532,17 +532,17 @@ parse_sdvo_panel_data(struct drm_i915_private *dev_=
priv,
>  =

>  	fill_detail_timing_data(panel_fixed_mode, &dtds->dtds[index]);
>  =

> -	dev_priv->vbt.sdvo_lvds_vbt_mode =3D panel_fixed_mode;
> +	i915->vbt.sdvo_lvds_vbt_mode =3D panel_fixed_mode;
>  =

> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(&i915->drm,
>  		    "Found SDVO panel mode in BIOS VBT tables:\n");
>  	drm_mode_debug_printmodeline(panel_fixed_mode);
>  }
>  =

> -static int intel_bios_ssc_frequency(struct drm_i915_private *dev_priv,
> +static int intel_bios_ssc_frequency(struct drm_i915_private *i915,
>  				    bool alternate)
>  {
> -	switch (INTEL_GEN(dev_priv)) {
> +	switch (INTEL_GEN(i915)) {
>  	case 2:
>  		return alternate ? 66667 : 48000;
>  	case 3:
> @@ -554,7 +554,7 @@ static int intel_bios_ssc_frequency(struct drm_i915_p=
rivate *dev_priv,
>  }
>  =

>  static void
> -parse_general_features(struct drm_i915_private *dev_priv,
> +parse_general_features(struct drm_i915_private *i915,
>  		       const struct bdb_header *bdb)
>  {
>  	const struct bdb_general_features *general;
> @@ -563,31 +563,31 @@ parse_general_features(struct drm_i915_private *dev=
_priv,
>  	if (!general)
>  		return;
>  =

> -	dev_priv->vbt.int_tv_support =3D general->int_tv_support;
> +	i915->vbt.int_tv_support =3D general->int_tv_support;
>  	/* int_crt_support can't be trusted on earlier platforms */
>  	if (bdb->version >=3D 155 &&
> -	    (HAS_DDI(dev_priv) || IS_VALLEYVIEW(dev_priv)))
> -		dev_priv->vbt.int_crt_support =3D general->int_crt_support;
> -	dev_priv->vbt.lvds_use_ssc =3D general->enable_ssc;
> -	dev_priv->vbt.lvds_ssc_freq =3D
> -		intel_bios_ssc_frequency(dev_priv, general->ssc_freq);
> -	dev_priv->vbt.display_clock_mode =3D general->display_clock_mode;
> -	dev_priv->vbt.fdi_rx_polarity_inverted =3D general->fdi_rx_polarity_inv=
erted;
> +	    (HAS_DDI(i915) || IS_VALLEYVIEW(i915)))
> +		i915->vbt.int_crt_support =3D general->int_crt_support;
> +	i915->vbt.lvds_use_ssc =3D general->enable_ssc;
> +	i915->vbt.lvds_ssc_freq =3D
> +		intel_bios_ssc_frequency(i915, general->ssc_freq);
> +	i915->vbt.display_clock_mode =3D general->display_clock_mode;
> +	i915->vbt.fdi_rx_polarity_inverted =3D general->fdi_rx_polarity_inverte=
d;
>  	if (bdb->version >=3D 181) {
> -		dev_priv->vbt.orientation =3D general->rotate_180 ?
> +		i915->vbt.orientation =3D general->rotate_180 ?
>  			DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP :
>  			DRM_MODE_PANEL_ORIENTATION_NORMAL;
>  	} else {
> -		dev_priv->vbt.orientation =3D DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> +		i915->vbt.orientation =3D DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
>  	}
> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(&i915->drm,
>  		    "BDB_GENERAL_FEATURES int_tv_support %d int_crt_support %d lvds_us=
e_ssc %d lvds_ssc_freq %d display_clock_mode %d fdi_rx_polarity_inverted %d=
\n",
> -		    dev_priv->vbt.int_tv_support,
> -		    dev_priv->vbt.int_crt_support,
> -		    dev_priv->vbt.lvds_use_ssc,
> -		    dev_priv->vbt.lvds_ssc_freq,
> -		    dev_priv->vbt.display_clock_mode,
> -		    dev_priv->vbt.fdi_rx_polarity_inverted);
> +		    i915->vbt.int_tv_support,
> +		    i915->vbt.int_crt_support,
> +		    i915->vbt.lvds_use_ssc,
> +		    i915->vbt.lvds_ssc_freq,
> +		    i915->vbt.display_clock_mode,
> +		    i915->vbt.fdi_rx_polarity_inverted);
>  }
>  =

>  static const struct child_device_config *
> @@ -597,7 +597,7 @@ child_device_ptr(const struct bdb_general_definitions=
 *defs, int i)
>  }
>  =

>  static void
> -parse_sdvo_device_mapping(struct drm_i915_private *dev_priv, u8 bdb_vers=
ion)
> +parse_sdvo_device_mapping(struct drm_i915_private *i915, u8 bdb_version)
>  {
>  	struct sdvo_device_mapping *mapping;
>  	const struct display_device_data *devdata;
> @@ -608,12 +608,12 @@ parse_sdvo_device_mapping(struct drm_i915_private *=
dev_priv, u8 bdb_version)
>  	 * Only parse SDVO mappings on gens that could have SDVO. This isn't
>  	 * accurate and doesn't have to be, as long as it's not too strict.
>  	 */
> -	if (!IS_GEN_RANGE(dev_priv, 3, 7)) {
> -		drm_dbg_kms(&dev_priv->drm, "Skipping SDVO device mapping\n");
> +	if (!IS_GEN_RANGE(i915, 3, 7)) {
> +		drm_dbg_kms(&i915->drm, "Skipping SDVO device mapping\n");
>  		return;
>  	}
>  =

> -	list_for_each_entry(devdata, &dev_priv->vbt.display_devices, node) {
> +	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
>  		child =3D &devdata->child;
>  =

>  		if (child->slave_addr !=3D SLAVE_ADDR1 &&
> @@ -627,17 +627,17 @@ parse_sdvo_device_mapping(struct drm_i915_private *=
dev_priv, u8 bdb_version)
>  		if (child->dvo_port !=3D DEVICE_PORT_DVOB &&
>  		    child->dvo_port !=3D DEVICE_PORT_DVOC) {
>  			/* skip the incorrect SDVO port */
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "Incorrect SDVO port. Skip it\n");
>  			continue;
>  		}
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "the SDVO device with slave addr %2x is found on"
>  			    " %s port\n",
>  			    child->slave_addr,
>  			    (child->dvo_port =3D=3D DEVICE_PORT_DVOB) ?
>  			    "SDVOB" : "SDVOC");
> -		mapping =3D &dev_priv->vbt.sdvo_mappings[child->dvo_port - 1];
> +		mapping =3D &i915->vbt.sdvo_mappings[child->dvo_port - 1];
>  		if (!mapping->initialized) {
>  			mapping->dvo_port =3D child->dvo_port;
>  			mapping->slave_addr =3D child->slave_addr;
> @@ -645,20 +645,20 @@ parse_sdvo_device_mapping(struct drm_i915_private *=
dev_priv, u8 bdb_version)
>  			mapping->ddc_pin =3D child->ddc_pin;
>  			mapping->i2c_pin =3D child->i2c_pin;
>  			mapping->initialized =3D 1;
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "SDVO device: dvo=3D%x, addr=3D%x, wiring=3D%d, ddc_pin=3D%d, i2=
c_pin=3D%d\n",
>  				    mapping->dvo_port, mapping->slave_addr,
>  				    mapping->dvo_wiring, mapping->ddc_pin,
>  				    mapping->i2c_pin);
>  		} else {
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "Maybe one SDVO port is shared by "
>  				    "two SDVO device.\n");
>  		}
>  		if (child->slave2_addr) {
>  			/* Maybe this is a SDVO device with multiple inputs */
>  			/* And the mapping info is not added */
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "there exists the slave2_addr. Maybe this"
>  				    " is a SDVO device with multiple inputs.\n");
>  		}
> @@ -667,13 +667,13 @@ parse_sdvo_device_mapping(struct drm_i915_private *=
dev_priv, u8 bdb_version)
>  =

>  	if (!count) {
>  		/* No SDVO device info is found */
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "No SDVO device info is found in VBT\n");
>  	}
>  }
>  =

>  static void
> -parse_driver_features(struct drm_i915_private *dev_priv,
> +parse_driver_features(struct drm_i915_private *i915,
>  		      const struct bdb_header *bdb)
>  {
>  	const struct bdb_driver_features *driver;
> @@ -682,14 +682,14 @@ parse_driver_features(struct drm_i915_private *dev_=
priv,
>  	if (!driver)
>  		return;
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 5) {
> +	if (INTEL_GEN(i915) >=3D 5) {
>  		/*
>  		 * Note that we consider BDB_DRIVER_FEATURE_INT_SDVO_LVDS
>  		 * to mean "eDP". The VBT spec doesn't agree with that
>  		 * interpretation, but real world VBTs seem to.
>  		 */
>  		if (driver->lvds_config !=3D BDB_DRIVER_FEATURE_INT_LVDS)
> -			dev_priv->vbt.int_lvds_support =3D 0;
> +			i915->vbt.int_lvds_support =3D 0;
>  	} else {
>  		/*
>  		 * FIXME it's not clear which BDB version has the LVDS config
> @@ -705,11 +705,11 @@ parse_driver_features(struct drm_i915_private *dev_=
priv,
>  		if (bdb->version >=3D 134 &&
>  		    driver->lvds_config !=3D BDB_DRIVER_FEATURE_INT_LVDS &&
>  		    driver->lvds_config !=3D BDB_DRIVER_FEATURE_INT_SDVO_LVDS)
> -			dev_priv->vbt.int_lvds_support =3D 0;
> +			i915->vbt.int_lvds_support =3D 0;
>  	}
>  =

>  	if (bdb->version < 228) {
> -		drm_dbg_kms(&dev_priv->drm, "DRRS State Enabled:%d\n",
> +		drm_dbg_kms(&i915->drm, "DRRS State Enabled:%d\n",
>  			    driver->drrs_enabled);
>  		/*
>  		 * If DRRS is not supported, drrs_type has to be set to 0.
> @@ -718,18 +718,18 @@ parse_driver_features(struct drm_i915_private *dev_=
priv,
>  		 * driver->drrs_enabled=3Dfalse
>  		 */
>  		if (!driver->drrs_enabled)
> -			dev_priv->vbt.drrs_type =3D DRRS_NOT_SUPPORTED;
> +			i915->vbt.drrs_type =3D DRRS_NOT_SUPPORTED;
>  =

> -		dev_priv->vbt.psr.enable =3D driver->psr_enabled;
> +		i915->vbt.psr.enable =3D driver->psr_enabled;
>  	}
>  }
>  =

>  static void
> -parse_power_conservation_features(struct drm_i915_private *dev_priv,
> +parse_power_conservation_features(struct drm_i915_private *i915,
>  				  const struct bdb_header *bdb)
>  {
>  	const struct bdb_lfp_power *power;
> -	u8 panel_type =3D dev_priv->vbt.panel_type;
> +	u8 panel_type =3D i915->vbt.panel_type;
>  =

>  	if (bdb->version < 228)
>  		return;
> @@ -738,7 +738,7 @@ parse_power_conservation_features(struct drm_i915_pri=
vate *dev_priv,
>  	if (!power)
>  		return;
>  =

> -	dev_priv->vbt.psr.enable =3D power->psr & BIT(panel_type);
> +	i915->vbt.psr.enable =3D power->psr & BIT(panel_type);
>  =

>  	/*
>  	 * If DRRS is not supported, drrs_type has to be set to 0.
> @@ -747,19 +747,19 @@ parse_power_conservation_features(struct drm_i915_p=
rivate *dev_priv,
>  	 * power->drrs & BIT(panel_type)=3Dfalse
>  	 */
>  	if (!(power->drrs & BIT(panel_type)))
> -		dev_priv->vbt.drrs_type =3D DRRS_NOT_SUPPORTED;
> +		i915->vbt.drrs_type =3D DRRS_NOT_SUPPORTED;
>  =

>  	if (bdb->version >=3D 232)
> -		dev_priv->vbt.edp.hobl =3D power->hobl & BIT(panel_type);
> +		i915->vbt.edp.hobl =3D power->hobl & BIT(panel_type);
>  }
>  =

>  static void
> -parse_edp(struct drm_i915_private *dev_priv, const struct bdb_header *bd=
b)
> +parse_edp(struct drm_i915_private *i915, const struct bdb_header *bdb)
>  {
>  	const struct bdb_edp *edp;
>  	const struct edp_power_seq *edp_pps;
>  	const struct edp_fast_link_params *edp_link_params;
> -	int panel_type =3D dev_priv->vbt.panel_type;
> +	int panel_type =3D i915->vbt.panel_type;
>  =

>  	edp =3D find_section(bdb, BDB_EDP);
>  	if (!edp)
> @@ -767,13 +767,13 @@ parse_edp(struct drm_i915_private *dev_priv, const =
struct bdb_header *bdb)
>  =

>  	switch ((edp->color_depth >> (panel_type * 2)) & 3) {
>  	case EDP_18BPP:
> -		dev_priv->vbt.edp.bpp =3D 18;
> +		i915->vbt.edp.bpp =3D 18;
>  		break;
>  	case EDP_24BPP:
> -		dev_priv->vbt.edp.bpp =3D 24;
> +		i915->vbt.edp.bpp =3D 24;
>  		break;
>  	case EDP_30BPP:
> -		dev_priv->vbt.edp.bpp =3D 30;
> +		i915->vbt.edp.bpp =3D 30;
>  		break;
>  	}
>  =

> @@ -781,17 +781,17 @@ parse_edp(struct drm_i915_private *dev_priv, const =
struct bdb_header *bdb)
>  	edp_pps =3D &edp->power_seqs[panel_type];
>  	edp_link_params =3D &edp->fast_link_params[panel_type];
>  =

> -	dev_priv->vbt.edp.pps =3D *edp_pps;
> +	i915->vbt.edp.pps =3D *edp_pps;
>  =

>  	switch (edp_link_params->rate) {
>  	case EDP_RATE_1_62:
> -		dev_priv->vbt.edp.rate =3D DP_LINK_BW_1_62;
> +		i915->vbt.edp.rate =3D DP_LINK_BW_1_62;
>  		break;
>  	case EDP_RATE_2_7:
> -		dev_priv->vbt.edp.rate =3D DP_LINK_BW_2_7;
> +		i915->vbt.edp.rate =3D DP_LINK_BW_2_7;
>  		break;
>  	default:
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "VBT has unknown eDP link rate value %u\n",
>  			     edp_link_params->rate);
>  		break;
> @@ -799,16 +799,16 @@ parse_edp(struct drm_i915_private *dev_priv, const =
struct bdb_header *bdb)
>  =

>  	switch (edp_link_params->lanes) {
>  	case EDP_LANE_1:
> -		dev_priv->vbt.edp.lanes =3D 1;
> +		i915->vbt.edp.lanes =3D 1;
>  		break;
>  	case EDP_LANE_2:
> -		dev_priv->vbt.edp.lanes =3D 2;
> +		i915->vbt.edp.lanes =3D 2;
>  		break;
>  	case EDP_LANE_4:
> -		dev_priv->vbt.edp.lanes =3D 4;
> +		i915->vbt.edp.lanes =3D 4;
>  		break;
>  	default:
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "VBT has unknown eDP lane count value %u\n",
>  			    edp_link_params->lanes);
>  		break;
> @@ -816,19 +816,19 @@ parse_edp(struct drm_i915_private *dev_priv, const =
struct bdb_header *bdb)
>  =

>  	switch (edp_link_params->preemphasis) {
>  	case EDP_PREEMPHASIS_NONE:
> -		dev_priv->vbt.edp.preemphasis =3D DP_TRAIN_PRE_EMPH_LEVEL_0;
> +		i915->vbt.edp.preemphasis =3D DP_TRAIN_PRE_EMPH_LEVEL_0;
>  		break;
>  	case EDP_PREEMPHASIS_3_5dB:
> -		dev_priv->vbt.edp.preemphasis =3D DP_TRAIN_PRE_EMPH_LEVEL_1;
> +		i915->vbt.edp.preemphasis =3D DP_TRAIN_PRE_EMPH_LEVEL_1;
>  		break;
>  	case EDP_PREEMPHASIS_6dB:
> -		dev_priv->vbt.edp.preemphasis =3D DP_TRAIN_PRE_EMPH_LEVEL_2;
> +		i915->vbt.edp.preemphasis =3D DP_TRAIN_PRE_EMPH_LEVEL_2;
>  		break;
>  	case EDP_PREEMPHASIS_9_5dB:
> -		dev_priv->vbt.edp.preemphasis =3D DP_TRAIN_PRE_EMPH_LEVEL_3;
> +		i915->vbt.edp.preemphasis =3D DP_TRAIN_PRE_EMPH_LEVEL_3;
>  		break;
>  	default:
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "VBT has unknown eDP pre-emphasis value %u\n",
>  			    edp_link_params->preemphasis);
>  		break;
> @@ -836,19 +836,19 @@ parse_edp(struct drm_i915_private *dev_priv, const =
struct bdb_header *bdb)
>  =

>  	switch (edp_link_params->vswing) {
>  	case EDP_VSWING_0_4V:
> -		dev_priv->vbt.edp.vswing =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0;
> +		i915->vbt.edp.vswing =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0;
>  		break;
>  	case EDP_VSWING_0_6V:
> -		dev_priv->vbt.edp.vswing =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_1;
> +		i915->vbt.edp.vswing =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_1;
>  		break;
>  	case EDP_VSWING_0_8V:
> -		dev_priv->vbt.edp.vswing =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
> +		i915->vbt.edp.vswing =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
>  		break;
>  	case EDP_VSWING_1_2V:
> -		dev_priv->vbt.edp.vswing =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
> +		i915->vbt.edp.vswing =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
>  		break;
>  	default:
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "VBT has unknown eDP voltage swing value %u\n",
>  			    edp_link_params->vswing);
>  		break;
> @@ -858,53 +858,53 @@ parse_edp(struct drm_i915_private *dev_priv, const =
struct bdb_header *bdb)
>  		u8 vswing;
>  =

>  		/* Don't read from VBT if module parameter has valid value*/
> -		if (dev_priv->params.edp_vswing) {
> -			dev_priv->vbt.edp.low_vswing =3D
> -				dev_priv->params.edp_vswing =3D=3D 1;
> +		if (i915->params.edp_vswing) {
> +			i915->vbt.edp.low_vswing =3D
> +				i915->params.edp_vswing =3D=3D 1;
>  		} else {
>  			vswing =3D (edp->edp_vswing_preemph >> (panel_type * 4)) & 0xF;
> -			dev_priv->vbt.edp.low_vswing =3D vswing =3D=3D 0;
> +			i915->vbt.edp.low_vswing =3D vswing =3D=3D 0;
>  		}
>  	}
>  }
>  =

>  static void
> -parse_psr(struct drm_i915_private *dev_priv, const struct bdb_header *bd=
b)
> +parse_psr(struct drm_i915_private *i915, const struct bdb_header *bdb)
>  {
>  	const struct bdb_psr *psr;
>  	const struct psr_table *psr_table;
> -	int panel_type =3D dev_priv->vbt.panel_type;
> +	int panel_type =3D i915->vbt.panel_type;
>  =

>  	psr =3D find_section(bdb, BDB_PSR);
>  	if (!psr) {
> -		drm_dbg_kms(&dev_priv->drm, "No PSR BDB found.\n");
> +		drm_dbg_kms(&i915->drm, "No PSR BDB found.\n");
>  		return;
>  	}
>  =

>  	psr_table =3D &psr->psr_table[panel_type];
>  =

> -	dev_priv->vbt.psr.full_link =3D psr_table->full_link;
> -	dev_priv->vbt.psr.require_aux_wakeup =3D psr_table->require_aux_to_wake=
up;
> +	i915->vbt.psr.full_link =3D psr_table->full_link;
> +	i915->vbt.psr.require_aux_wakeup =3D psr_table->require_aux_to_wakeup;
>  =

>  	/* Allowed VBT values goes from 0 to 15 */
> -	dev_priv->vbt.psr.idle_frames =3D psr_table->idle_frames < 0 ? 0 :
> +	i915->vbt.psr.idle_frames =3D psr_table->idle_frames < 0 ? 0 :
>  		psr_table->idle_frames > 15 ? 15 : psr_table->idle_frames;
>  =

>  	switch (psr_table->lines_to_wait) {
>  	case 0:
> -		dev_priv->vbt.psr.lines_to_wait =3D PSR_0_LINES_TO_WAIT;
> +		i915->vbt.psr.lines_to_wait =3D PSR_0_LINES_TO_WAIT;
>  		break;
>  	case 1:
> -		dev_priv->vbt.psr.lines_to_wait =3D PSR_1_LINE_TO_WAIT;
> +		i915->vbt.psr.lines_to_wait =3D PSR_1_LINE_TO_WAIT;
>  		break;
>  	case 2:
> -		dev_priv->vbt.psr.lines_to_wait =3D PSR_4_LINES_TO_WAIT;
> +		i915->vbt.psr.lines_to_wait =3D PSR_4_LINES_TO_WAIT;
>  		break;
>  	case 3:
> -		dev_priv->vbt.psr.lines_to_wait =3D PSR_8_LINES_TO_WAIT;
> +		i915->vbt.psr.lines_to_wait =3D PSR_8_LINES_TO_WAIT;
>  		break;
>  	default:
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "VBT has unknown PSR lines to wait %u\n",
>  			    psr_table->lines_to_wait);
>  		break;
> @@ -915,50 +915,50 @@ parse_psr(struct drm_i915_private *dev_priv, const =
struct bdb_header *bdb)
>  	 * Old decimal value is wake up time in multiples of 100 us.
>  	 */
>  	if (bdb->version >=3D 205 &&
> -	    (IS_GEN9_BC(dev_priv) || IS_GEMINILAKE(dev_priv) ||
> -	     INTEL_GEN(dev_priv) >=3D 10)) {
> +	    (IS_GEN9_BC(i915) || IS_GEMINILAKE(i915) ||
> +	     INTEL_GEN(i915) >=3D 10)) {
>  		switch (psr_table->tp1_wakeup_time) {
>  		case 0:
> -			dev_priv->vbt.psr.tp1_wakeup_time_us =3D 500;
> +			i915->vbt.psr.tp1_wakeup_time_us =3D 500;
>  			break;
>  		case 1:
> -			dev_priv->vbt.psr.tp1_wakeup_time_us =3D 100;
> +			i915->vbt.psr.tp1_wakeup_time_us =3D 100;
>  			break;
>  		case 3:
> -			dev_priv->vbt.psr.tp1_wakeup_time_us =3D 0;
> +			i915->vbt.psr.tp1_wakeup_time_us =3D 0;
>  			break;
>  		default:
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "VBT tp1 wakeup time value %d is outside range[0-3], defaulting =
to max value 2500us\n",
>  				    psr_table->tp1_wakeup_time);
>  			fallthrough;
>  		case 2:
> -			dev_priv->vbt.psr.tp1_wakeup_time_us =3D 2500;
> +			i915->vbt.psr.tp1_wakeup_time_us =3D 2500;
>  			break;
>  		}
>  =

>  		switch (psr_table->tp2_tp3_wakeup_time) {
>  		case 0:
> -			dev_priv->vbt.psr.tp2_tp3_wakeup_time_us =3D 500;
> +			i915->vbt.psr.tp2_tp3_wakeup_time_us =3D 500;
>  			break;
>  		case 1:
> -			dev_priv->vbt.psr.tp2_tp3_wakeup_time_us =3D 100;
> +			i915->vbt.psr.tp2_tp3_wakeup_time_us =3D 100;
>  			break;
>  		case 3:
> -			dev_priv->vbt.psr.tp2_tp3_wakeup_time_us =3D 0;
> +			i915->vbt.psr.tp2_tp3_wakeup_time_us =3D 0;
>  			break;
>  		default:
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "VBT tp2_tp3 wakeup time value %d is outside range[0-3], default=
ing to max value 2500us\n",
>  				    psr_table->tp2_tp3_wakeup_time);
>  			fallthrough;
>  		case 2:
> -			dev_priv->vbt.psr.tp2_tp3_wakeup_time_us =3D 2500;
> +			i915->vbt.psr.tp2_tp3_wakeup_time_us =3D 2500;
>  		break;
>  		}
>  	} else {
> -		dev_priv->vbt.psr.tp1_wakeup_time_us =3D psr_table->tp1_wakeup_time * =
100;
> -		dev_priv->vbt.psr.tp2_tp3_wakeup_time_us =3D psr_table->tp2_tp3_wakeup=
_time * 100;
> +		i915->vbt.psr.tp1_wakeup_time_us =3D psr_table->tp1_wakeup_time * 100;
> +		i915->vbt.psr.tp2_tp3_wakeup_time_us =3D psr_table->tp2_tp3_wakeup_tim=
e * 100;
>  	}
>  =

>  	if (bdb->version >=3D 226) {
> @@ -980,74 +980,74 @@ parse_psr(struct drm_i915_private *dev_priv, const =
struct bdb_header *bdb)
>  			wakeup_time =3D 2500;
>  			break;
>  		}
> -		dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us =3D wakeup_time;
> +		i915->vbt.psr.psr2_tp2_tp3_wakeup_time_us =3D wakeup_time;
>  	} else {
>  		/* Reusing PSR1 wakeup time for PSR2 in older VBTs */
> -		dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us =3D dev_priv->vbt.psr.tp=
2_tp3_wakeup_time_us;
> +		i915->vbt.psr.psr2_tp2_tp3_wakeup_time_us =3D i915->vbt.psr.tp2_tp3_wa=
keup_time_us;
>  	}
>  }
>  =

> -static void parse_dsi_backlight_ports(struct drm_i915_private *dev_priv,
> +static void parse_dsi_backlight_ports(struct drm_i915_private *i915,
>  				      u16 version, enum port port)
>  {
> -	if (!dev_priv->vbt.dsi.config->dual_link || version < 197) {
> -		dev_priv->vbt.dsi.bl_ports =3D BIT(port);
> -		if (dev_priv->vbt.dsi.config->cabc_supported)
> -			dev_priv->vbt.dsi.cabc_ports =3D BIT(port);
> +	if (!i915->vbt.dsi.config->dual_link || version < 197) {
> +		i915->vbt.dsi.bl_ports =3D BIT(port);
> +		if (i915->vbt.dsi.config->cabc_supported)
> +			i915->vbt.dsi.cabc_ports =3D BIT(port);
>  =

>  		return;
>  	}
>  =

> -	switch (dev_priv->vbt.dsi.config->dl_dcs_backlight_ports) {
> +	switch (i915->vbt.dsi.config->dl_dcs_backlight_ports) {
>  	case DL_DCS_PORT_A:
> -		dev_priv->vbt.dsi.bl_ports =3D BIT(PORT_A);
> +		i915->vbt.dsi.bl_ports =3D BIT(PORT_A);
>  		break;
>  	case DL_DCS_PORT_C:
> -		dev_priv->vbt.dsi.bl_ports =3D BIT(PORT_C);
> +		i915->vbt.dsi.bl_ports =3D BIT(PORT_C);
>  		break;
>  	default:
>  	case DL_DCS_PORT_A_AND_C:
> -		dev_priv->vbt.dsi.bl_ports =3D BIT(PORT_A) | BIT(PORT_C);
> +		i915->vbt.dsi.bl_ports =3D BIT(PORT_A) | BIT(PORT_C);
>  		break;
>  	}
>  =

> -	if (!dev_priv->vbt.dsi.config->cabc_supported)
> +	if (!i915->vbt.dsi.config->cabc_supported)
>  		return;
>  =

> -	switch (dev_priv->vbt.dsi.config->dl_dcs_cabc_ports) {
> +	switch (i915->vbt.dsi.config->dl_dcs_cabc_ports) {
>  	case DL_DCS_PORT_A:
> -		dev_priv->vbt.dsi.cabc_ports =3D BIT(PORT_A);
> +		i915->vbt.dsi.cabc_ports =3D BIT(PORT_A);
>  		break;
>  	case DL_DCS_PORT_C:
> -		dev_priv->vbt.dsi.cabc_ports =3D BIT(PORT_C);
> +		i915->vbt.dsi.cabc_ports =3D BIT(PORT_C);
>  		break;
>  	default:
>  	case DL_DCS_PORT_A_AND_C:
> -		dev_priv->vbt.dsi.cabc_ports =3D
> +		i915->vbt.dsi.cabc_ports =3D
>  					BIT(PORT_A) | BIT(PORT_C);
>  		break;
>  	}
>  }
>  =

>  static void
> -parse_mipi_config(struct drm_i915_private *dev_priv,
> +parse_mipi_config(struct drm_i915_private *i915,
>  		  const struct bdb_header *bdb)
>  {
>  	const struct bdb_mipi_config *start;
>  	const struct mipi_config *config;
>  	const struct mipi_pps_data *pps;
> -	int panel_type =3D dev_priv->vbt.panel_type;
> +	int panel_type =3D i915->vbt.panel_type;
>  	enum port port;
>  =

>  	/* parse MIPI blocks only if LFP type is MIPI */
> -	if (!intel_bios_is_dsi_present(dev_priv, &port))
> +	if (!intel_bios_is_dsi_present(i915, &port))
>  		return;
>  =

>  	/* Initialize this to undefined indicating no generic MIPI support */
> -	dev_priv->vbt.dsi.panel_id =3D MIPI_DSI_UNDEFINED_PANEL_ID;
> +	i915->vbt.dsi.panel_id =3D MIPI_DSI_UNDEFINED_PANEL_ID;
>  =

>  	/* Block #40 is already parsed and panel_fixed_mode is
> -	 * stored in dev_priv->lfp_lvds_vbt_mode
> +	 * stored in i915->lfp_lvds_vbt_mode
>  	 * resuse this when needed
>  	 */
>  =

> @@ -1056,11 +1056,11 @@ parse_mipi_config(struct drm_i915_private *dev_pr=
iv,
>  	 */
>  	start =3D find_section(bdb, BDB_MIPI_CONFIG);
>  	if (!start) {
> -		drm_dbg_kms(&dev_priv->drm, "No MIPI config BDB found");
> +		drm_dbg_kms(&i915->drm, "No MIPI config BDB found");
>  		return;
>  	}
>  =

> -	drm_dbg(&dev_priv->drm, "Found MIPI Config block, panel index =3D %d\n",
> +	drm_dbg(&i915->drm, "Found MIPI Config block, panel index =3D %d\n",
>  		panel_type);
>  =

>  	/*
> @@ -1071,17 +1071,17 @@ parse_mipi_config(struct drm_i915_private *dev_pr=
iv,
>  	pps =3D &start->pps[panel_type];
>  =

>  	/* store as of now full data. Trim when we realise all is not needed */
> -	dev_priv->vbt.dsi.config =3D kmemdup(config, sizeof(struct mipi_config)=
, GFP_KERNEL);
> -	if (!dev_priv->vbt.dsi.config)
> +	i915->vbt.dsi.config =3D kmemdup(config, sizeof(struct mipi_config), GF=
P_KERNEL);
> +	if (!i915->vbt.dsi.config)
>  		return;
>  =

> -	dev_priv->vbt.dsi.pps =3D kmemdup(pps, sizeof(struct mipi_pps_data), GF=
P_KERNEL);
> -	if (!dev_priv->vbt.dsi.pps) {
> -		kfree(dev_priv->vbt.dsi.config);
> +	i915->vbt.dsi.pps =3D kmemdup(pps, sizeof(struct mipi_pps_data), GFP_KE=
RNEL);
> +	if (!i915->vbt.dsi.pps) {
> +		kfree(i915->vbt.dsi.config);
>  		return;
>  	}
>  =

> -	parse_dsi_backlight_ports(dev_priv, bdb->version, port);
> +	parse_dsi_backlight_ports(i915, bdb->version, port);
>  =

>  	/* FIXME is the 90 vs. 270 correct? */
>  	switch (config->rotation) {
> @@ -1090,25 +1090,25 @@ parse_mipi_config(struct drm_i915_private *dev_pr=
iv,
>  		 * Most (all?) VBTs claim 0 degrees despite having
>  		 * an upside down panel, thus we do not trust this.
>  		 */
> -		dev_priv->vbt.dsi.orientation =3D
> +		i915->vbt.dsi.orientation =3D
>  			DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
>  		break;
>  	case ENABLE_ROTATION_90:
> -		dev_priv->vbt.dsi.orientation =3D
> +		i915->vbt.dsi.orientation =3D
>  			DRM_MODE_PANEL_ORIENTATION_RIGHT_UP;
>  		break;
>  	case ENABLE_ROTATION_180:
> -		dev_priv->vbt.dsi.orientation =3D
> +		i915->vbt.dsi.orientation =3D
>  			DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
>  		break;
>  	case ENABLE_ROTATION_270:
> -		dev_priv->vbt.dsi.orientation =3D
> +		i915->vbt.dsi.orientation =3D
>  			DRM_MODE_PANEL_ORIENTATION_LEFT_UP;
>  		break;
>  	}
>  =

>  	/* We have mandatory mipi config blocks. Initialize as generic panel */
> -	dev_priv->vbt.dsi.panel_id =3D MIPI_DSI_GENERIC_PANEL_ID;
> +	i915->vbt.dsi.panel_id =3D MIPI_DSI_GENERIC_PANEL_ID;
>  }
>  =

>  /* Find the sequence block and size for the given panel. */
> @@ -1271,13 +1271,13 @@ static int goto_next_sequence_v3(const u8 *data, =
int index, int total)
>   * Get len of pre-fixed deassert fragment from a v1 init OTP sequence,
>   * skip all delay + gpio operands and stop at the first DSI packet op.
>   */
> -static int get_init_otp_deassert_fragment_len(struct drm_i915_private *d=
ev_priv)
> +static int get_init_otp_deassert_fragment_len(struct drm_i915_private *i=
915)
>  {
> -	const u8 *data =3D dev_priv->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP];
> +	const u8 *data =3D i915->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP];
>  	int index, len;
>  =

> -	if (drm_WARN_ON(&dev_priv->drm,
> -			!data || dev_priv->vbt.dsi.seq_version !=3D 1))
> +	if (drm_WARN_ON(&i915->drm,
> +			!data || i915->vbt.dsi.seq_version !=3D 1))
>  		return 0;
>  =

>  	/* index =3D 1 to skip sequence byte */
> @@ -1305,55 +1305,55 @@ static int get_init_otp_deassert_fragment_len(str=
uct drm_i915_private *dev_priv)
>   * these devices we split the init OTP sequence into a deassert sequence=
 and
>   * the actual init OTP part.
>   */
> -static void fixup_mipi_sequences(struct drm_i915_private *dev_priv)
> +static void fixup_mipi_sequences(struct drm_i915_private *i915)
>  {
>  	u8 *init_otp;
>  	int len;
>  =

>  	/* Limit this to VLV for now. */
> -	if (!IS_VALLEYVIEW(dev_priv))
> +	if (!IS_VALLEYVIEW(i915))
>  		return;
>  =

>  	/* Limit this to v1 vid-mode sequences */
> -	if (dev_priv->vbt.dsi.config->is_cmd_mode ||
> -	    dev_priv->vbt.dsi.seq_version !=3D 1)
> +	if (i915->vbt.dsi.config->is_cmd_mode ||
> +	    i915->vbt.dsi.seq_version !=3D 1)
>  		return;
>  =

>  	/* Only do this if there are otp and assert seqs and no deassert seq */
> -	if (!dev_priv->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] ||
> -	    !dev_priv->vbt.dsi.sequence[MIPI_SEQ_ASSERT_RESET] ||
> -	    dev_priv->vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET])
> +	if (!i915->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] ||
> +	    !i915->vbt.dsi.sequence[MIPI_SEQ_ASSERT_RESET] ||
> +	    i915->vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET])
>  		return;
>  =

>  	/* The deassert-sequence ends at the first DSI packet */
> -	len =3D get_init_otp_deassert_fragment_len(dev_priv);
> +	len =3D get_init_otp_deassert_fragment_len(i915);
>  	if (!len)
>  		return;
>  =

> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(&i915->drm,
>  		    "Using init OTP fragment to deassert reset\n");
>  =

>  	/* Copy the fragment, update seq byte and terminate it */
> -	init_otp =3D (u8 *)dev_priv->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP];
> -	dev_priv->vbt.dsi.deassert_seq =3D kmemdup(init_otp, len + 1, GFP_KERNE=
L);
> -	if (!dev_priv->vbt.dsi.deassert_seq)
> +	init_otp =3D (u8 *)i915->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP];
> +	i915->vbt.dsi.deassert_seq =3D kmemdup(init_otp, len + 1, GFP_KERNEL);
> +	if (!i915->vbt.dsi.deassert_seq)
>  		return;
> -	dev_priv->vbt.dsi.deassert_seq[0] =3D MIPI_SEQ_DEASSERT_RESET;
> -	dev_priv->vbt.dsi.deassert_seq[len] =3D MIPI_SEQ_ELEM_END;
> +	i915->vbt.dsi.deassert_seq[0] =3D MIPI_SEQ_DEASSERT_RESET;
> +	i915->vbt.dsi.deassert_seq[len] =3D MIPI_SEQ_ELEM_END;
>  	/* Use the copy for deassert */
> -	dev_priv->vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET] =3D
> -		dev_priv->vbt.dsi.deassert_seq;
> +	i915->vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET] =3D
> +		i915->vbt.dsi.deassert_seq;
>  	/* Replace the last byte of the fragment with init OTP seq byte */
>  	init_otp[len - 1] =3D MIPI_SEQ_INIT_OTP;
>  	/* And make MIPI_MIPI_SEQ_INIT_OTP point to it */
> -	dev_priv->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] =3D init_otp + len - 1;
> +	i915->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] =3D init_otp + len - 1;
>  }
>  =

>  static void
> -parse_mipi_sequence(struct drm_i915_private *dev_priv,
> +parse_mipi_sequence(struct drm_i915_private *i915,
>  		    const struct bdb_header *bdb)
>  {
> -	int panel_type =3D dev_priv->vbt.panel_type;
> +	int panel_type =3D i915->vbt.panel_type;
>  	const struct bdb_mipi_sequence *sequence;
>  	const u8 *seq_data;
>  	u32 seq_size;
> @@ -1361,25 +1361,25 @@ parse_mipi_sequence(struct drm_i915_private *dev_=
priv,
>  	int index =3D 0;
>  =

>  	/* Only our generic panel driver uses the sequence block. */
> -	if (dev_priv->vbt.dsi.panel_id !=3D MIPI_DSI_GENERIC_PANEL_ID)
> +	if (i915->vbt.dsi.panel_id !=3D MIPI_DSI_GENERIC_PANEL_ID)
>  		return;
>  =

>  	sequence =3D find_section(bdb, BDB_MIPI_SEQUENCE);
>  	if (!sequence) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "No MIPI Sequence found, parsing complete\n");
>  		return;
>  	}
>  =

>  	/* Fail gracefully for forward incompatible sequence block. */
>  	if (sequence->version >=3D 4) {
> -		drm_err(&dev_priv->drm,
> +		drm_err(&i915->drm,
>  			"Unable to parse MIPI Sequence Block v%u\n",
>  			sequence->version);
>  		return;
>  	}
>  =

> -	drm_dbg(&dev_priv->drm, "Found MIPI sequence block v%u\n",
> +	drm_dbg(&i915->drm, "Found MIPI sequence block v%u\n",
>  		sequence->version);
>  =

>  	seq_data =3D find_panel_sequence_block(sequence, panel_type, &seq_size);
> @@ -1397,41 +1397,41 @@ parse_mipi_sequence(struct drm_i915_private *dev_=
priv,
>  			break;
>  =

>  		if (seq_id >=3D MIPI_SEQ_MAX) {
> -			drm_err(&dev_priv->drm, "Unknown sequence %u\n",
> +			drm_err(&i915->drm, "Unknown sequence %u\n",
>  				seq_id);
>  			goto err;
>  		}
>  =

>  		/* Log about presence of sequences we won't run. */
>  		if (seq_id =3D=3D MIPI_SEQ_TEAR_ON || seq_id =3D=3D MIPI_SEQ_TEAR_OFF)
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "Unsupported sequence %u\n", seq_id);
>  =

> -		dev_priv->vbt.dsi.sequence[seq_id] =3D data + index;
> +		i915->vbt.dsi.sequence[seq_id] =3D data + index;
>  =

>  		if (sequence->version >=3D 3)
>  			index =3D goto_next_sequence_v3(data, index, seq_size);
>  		else
>  			index =3D goto_next_sequence(data, index, seq_size);
>  		if (!index) {
> -			drm_err(&dev_priv->drm, "Invalid sequence %u\n",
> +			drm_err(&i915->drm, "Invalid sequence %u\n",
>  				seq_id);
>  			goto err;
>  		}
>  	}
>  =

> -	dev_priv->vbt.dsi.data =3D data;
> -	dev_priv->vbt.dsi.size =3D seq_size;
> -	dev_priv->vbt.dsi.seq_version =3D sequence->version;
> +	i915->vbt.dsi.data =3D data;
> +	i915->vbt.dsi.size =3D seq_size;
> +	i915->vbt.dsi.seq_version =3D sequence->version;
>  =

> -	fixup_mipi_sequences(dev_priv);
> +	fixup_mipi_sequences(i915);
>  =

> -	drm_dbg(&dev_priv->drm, "MIPI related VBT parsing complete\n");
> +	drm_dbg(&i915->drm, "MIPI related VBT parsing complete\n");
>  	return;
>  =

>  err:
>  	kfree(data);
> -	memset(dev_priv->vbt.dsi.sequence, 0, sizeof(dev_priv->vbt.dsi.sequence=
));
> +	memset(i915->vbt.dsi.sequence, 0, sizeof(i915->vbt.dsi.sequence));
>  }
>  =

>  static void
> @@ -1515,18 +1515,18 @@ static enum port get_port_by_ddc_pin(struct drm_i=
915_private *i915, u8 ddc_pin)
>  	return PORT_NONE;
>  }
>  =

> -static void sanitize_ddc_pin(struct drm_i915_private *dev_priv,
> +static void sanitize_ddc_pin(struct drm_i915_private *i915,
>  			     enum port port)
>  {
> -	struct ddi_vbt_port_info *info =3D &dev_priv->vbt.ddi_port_info[port];
> +	struct ddi_vbt_port_info *info =3D &i915->vbt.ddi_port_info[port];
>  	enum port p;
>  =

>  	if (!info->alternate_ddc_pin)
>  		return;
>  =

> -	p =3D get_port_by_ddc_pin(dev_priv, info->alternate_ddc_pin);
> +	p =3D get_port_by_ddc_pin(i915, info->alternate_ddc_pin);
>  	if (p !=3D PORT_NONE) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "port %c trying to use the same DDC pin (0x%x) as port %c, "
>  			    "disabling port %c DVI/HDMI support\n",
>  			    port_name(port), info->alternate_ddc_pin,
> @@ -1544,7 +1544,7 @@ static void sanitize_ddc_pin(struct drm_i915_privat=
e *dev_priv,
>  		 * port A and port E with the same AUX ch and
>  		 * we must pick port E :(
>  		 */
> -		info =3D &dev_priv->vbt.ddi_port_info[p];
> +		info =3D &i915->vbt.ddi_port_info[p];
>  =

>  		info->supports_dvi =3D false;
>  		info->supports_hdmi =3D false;
> @@ -1567,18 +1567,18 @@ static enum port get_port_by_aux_ch(struct drm_i9=
15_private *i915, u8 aux_ch)
>  	return PORT_NONE;
>  }
>  =

> -static void sanitize_aux_ch(struct drm_i915_private *dev_priv,
> +static void sanitize_aux_ch(struct drm_i915_private *i915,
>  			    enum port port)
>  {
> -	struct ddi_vbt_port_info *info =3D &dev_priv->vbt.ddi_port_info[port];
> +	struct ddi_vbt_port_info *info =3D &i915->vbt.ddi_port_info[port];
>  	enum port p;
>  =

>  	if (!info->alternate_aux_channel)
>  		return;
>  =

> -	p =3D get_port_by_aux_ch(dev_priv, info->alternate_aux_channel);
> +	p =3D get_port_by_aux_ch(i915, info->alternate_aux_channel);
>  	if (p !=3D PORT_NONE) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "port %c trying to use the same AUX CH (0x%x) as port %c, "
>  			    "disabling port %c DP support\n",
>  			    port_name(port), info->alternate_aux_channel,
> @@ -1596,7 +1596,7 @@ static void sanitize_aux_ch(struct drm_i915_private=
 *dev_priv,
>  		 * port A and port E with the same AUX ch and
>  		 * we must pick port E :(
>  		 */
> -		info =3D &dev_priv->vbt.ddi_port_info[p];
> +		info =3D &i915->vbt.ddi_port_info[p];
>  =

>  		info->supports_dp =3D false;
>  		info->alternate_aux_channel =3D 0;
> @@ -1644,26 +1644,26 @@ static const u8 gen9bc_tgp_ddc_pin_map[] =3D {
>  	[DDC_BUS_DDI_D] =3D GMBUS_PIN_10_TC2_ICP,
>  };
>  =

> -static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
> +static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
>  {
>  	const u8 *ddc_pin_map;
>  	int n_entries;
>  =

> -	if (HAS_PCH_ADP(dev_priv)) {
> +	if (HAS_PCH_ADP(i915)) {
>  		ddc_pin_map =3D adls_ddc_pin_map;
>  		n_entries =3D ARRAY_SIZE(adls_ddc_pin_map);
> -	} else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1) {
> +	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_DG1) {
>  		return vbt_pin;
> -	} else if (IS_ROCKETLAKE(dev_priv) && INTEL_PCH_TYPE(dev_priv) =3D=3D P=
CH_TGP) {
> +	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) =3D=3D PCH_TGP) {
>  		ddc_pin_map =3D rkl_pch_tgp_ddc_pin_map;
>  		n_entries =3D ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
> -	} else if (HAS_PCH_TGP(dev_priv) && IS_GEN9_BC(dev_priv)) {
> +	} else if (HAS_PCH_TGP(i915) && IS_GEN9_BC(i915)) {
>  		ddc_pin_map =3D gen9bc_tgp_ddc_pin_map;
>  		n_entries =3D ARRAY_SIZE(gen9bc_tgp_ddc_pin_map);
> -	} else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP) {
> +	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP) {
>  		ddc_pin_map =3D icp_ddc_pin_map;
>  		n_entries =3D ARRAY_SIZE(icp_ddc_pin_map);
> -	} else if (HAS_PCH_CNP(dev_priv)) {
> +	} else if (HAS_PCH_CNP(i915)) {
>  		ddc_pin_map =3D cnp_ddc_pin_map;
>  		n_entries =3D ARRAY_SIZE(cnp_ddc_pin_map);
>  	} else {
> @@ -1674,7 +1674,7 @@ static u8 map_ddc_pin(struct drm_i915_private *dev_=
priv, u8 vbt_pin)
>  	if (vbt_pin < n_entries && ddc_pin_map[vbt_pin] !=3D 0)
>  		return ddc_pin_map[vbt_pin];
>  =

> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(&i915->drm,
>  		    "Ignoring alternate pin: VBT claims DDC pin %d, which is not valid=
 for this platform\n",
>  		    vbt_pin);
>  	return 0;
> @@ -1699,7 +1699,7 @@ static enum port __dvo_port_to_port(int n_ports, in=
t n_dvo,
>  	return PORT_NONE;
>  }
>  =

> -static enum port dvo_port_to_port(struct drm_i915_private *dev_priv,
> +static enum port dvo_port_to_port(struct drm_i915_private *i915,
>  				  u8 dvo_port)
>  {
>  	/*
> @@ -1742,12 +1742,12 @@ static enum port dvo_port_to_port(struct drm_i915=
_private *dev_priv,
>  		[PORT_TC4] =3D { DVO_PORT_HDMIE, DVO_PORT_DPE, -1 },
>  	};
>  =

> -	if (IS_ALDERLAKE_S(dev_priv))
> +	if (IS_ALDERLAKE_S(i915))
>  		return __dvo_port_to_port(ARRAY_SIZE(adls_port_mapping),
>  					  ARRAY_SIZE(adls_port_mapping[0]),
>  					  adls_port_mapping,
>  					  dvo_port);
> -	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> +	else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
>  		return __dvo_port_to_port(ARRAY_SIZE(rkl_port_mapping),
>  					  ARRAY_SIZE(rkl_port_mapping[0]),
>  					  rkl_port_mapping,
> @@ -1759,7 +1759,7 @@ static enum port dvo_port_to_port(struct drm_i915_p=
rivate *dev_priv,
>  					  dvo_port);
>  }
>  =

> -static void parse_ddi_port(struct drm_i915_private *dev_priv,
> +static void parse_ddi_port(struct drm_i915_private *i915,
>  			   struct display_device_data *devdata,
>  			   u8 bdb_version)
>  {
> @@ -1768,14 +1768,14 @@ static void parse_ddi_port(struct drm_i915_privat=
e *dev_priv,
>  	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt;
>  	enum port port;
>  =

> -	port =3D dvo_port_to_port(dev_priv, child->dvo_port);
> +	port =3D dvo_port_to_port(i915, child->dvo_port);
>  	if (port =3D=3D PORT_NONE)
>  		return;
>  =

> -	info =3D &dev_priv->vbt.ddi_port_info[port];
> +	info =3D &i915->vbt.ddi_port_info[port];
>  =

>  	if (info->child) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "More than one child device for port %c in VBT, using the first.\=
n",
>  			    port_name(port));
>  		return;
> @@ -1787,8 +1787,8 @@ static void parse_ddi_port(struct drm_i915_private =
*dev_priv,
>  	is_hdmi =3D is_dvi && (child->device_type & DEVICE_TYPE_NOT_HDMI_OUTPUT=
) =3D=3D 0;
>  	is_edp =3D is_dp && (child->device_type & DEVICE_TYPE_INTERNAL_CONNECTO=
R);
>  =

> -	if (port =3D=3D PORT_A && is_dvi && INTEL_GEN(dev_priv) < 12) {
> -		drm_dbg_kms(&dev_priv->drm,
> +	if (port =3D=3D PORT_A && is_dvi && INTEL_GEN(i915) < 12) {
> +		drm_dbg_kms(&i915->drm,
>  			    "VBT claims port A supports DVI%s, ignoring\n",
>  			    is_hdmi ? "/HDMI" : "");
>  		is_dvi =3D false;
> @@ -1806,22 +1806,22 @@ static void parse_ddi_port(struct drm_i915_privat=
e *dev_priv,
>  	if (bdb_version >=3D 209)
>  		info->supports_tbt =3D child->tbt;
>  =

> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(&i915->drm,
>  		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d LSPCON:%d US=
B-Type-C:%d TBT:%d DSC:%d\n",
>  		    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_edp,
> -		    HAS_LSPCON(dev_priv) && child->lspcon,
> +		    HAS_LSPCON(i915) && child->lspcon,
>  		    info->supports_typec_usb, info->supports_tbt,
>  		    devdata->dsc !=3D NULL);
>  =

>  	if (is_dvi) {
>  		u8 ddc_pin;
>  =

> -		ddc_pin =3D map_ddc_pin(dev_priv, child->ddc_pin);
> -		if (intel_gmbus_is_valid_pin(dev_priv, ddc_pin)) {
> +		ddc_pin =3D map_ddc_pin(i915, child->ddc_pin);
> +		if (intel_gmbus_is_valid_pin(i915, ddc_pin)) {
>  			info->alternate_ddc_pin =3D ddc_pin;
> -			sanitize_ddc_pin(dev_priv, port);
> +			sanitize_ddc_pin(i915, port);
>  		} else {
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "Port %c has invalid DDC pin %d, "
>  				    "sticking to defaults\n",
>  				    port_name(port), ddc_pin);
> @@ -1831,13 +1831,13 @@ static void parse_ddi_port(struct drm_i915_privat=
e *dev_priv,
>  	if (is_dp) {
>  		info->alternate_aux_channel =3D child->aux_channel;
>  =

> -		sanitize_aux_ch(dev_priv, port);
> +		sanitize_aux_ch(i915, port);
>  	}
>  =

>  	if (bdb_version >=3D 158) {
>  		/* The VBT HDMI level shift values match the table we have. */
>  		u8 hdmi_level_shift =3D child->hdmi_level_shifter_value;
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Port %c VBT HDMI level shift: %d\n",
>  			    port_name(port),
>  			    hdmi_level_shift);
> @@ -1864,7 +1864,7 @@ static void parse_ddi_port(struct drm_i915_private =
*dev_priv,
>  		}
>  =

>  		if (max_tmds_clock)
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "Port %c VBT HDMI max TMDS clock: %d kHz\n",
>  				    port_name(port), max_tmds_clock);
>  		info->max_tmds_clock =3D max_tmds_clock;
> @@ -1873,11 +1873,11 @@ static void parse_ddi_port(struct drm_i915_privat=
e *dev_priv,
>  	/* Parse the I_boost config for SKL and above */
>  	if (bdb_version >=3D 196 && child->iboost) {
>  		info->dp_boost_level =3D translate_iboost(child->dp_iboost_level);
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Port %c VBT (e)DP boost level: %d\n",
>  			    port_name(port), info->dp_boost_level);
>  		info->hdmi_boost_level =3D translate_iboost(child->hdmi_iboost_level);
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Port %c VBT HDMI boost level: %d\n",
>  			    port_name(port), info->hdmi_boost_level);
>  	}
> @@ -1899,7 +1899,7 @@ static void parse_ddi_port(struct drm_i915_private =
*dev_priv,
>  			info->dp_max_link_rate =3D 162000;
>  			break;
>  		}
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Port %c VBT DP max link rate: %d\n",
>  			    port_name(port), info->dp_max_link_rate);
>  	}
> @@ -1907,22 +1907,22 @@ static void parse_ddi_port(struct drm_i915_privat=
e *dev_priv,
>  	info->child =3D child;
>  }
>  =

> -static void parse_ddi_ports(struct drm_i915_private *dev_priv, u8 bdb_ve=
rsion)
> +static void parse_ddi_ports(struct drm_i915_private *i915, u8 bdb_versio=
n)
>  {
>  	struct display_device_data *devdata;
>  =

> -	if (!HAS_DDI(dev_priv) && !IS_CHERRYVIEW(dev_priv))
> +	if (!HAS_DDI(i915) && !IS_CHERRYVIEW(i915))
>  		return;
>  =

>  	if (bdb_version < 155)
>  		return;
>  =

> -	list_for_each_entry(devdata, &dev_priv->vbt.display_devices, node)
> -		parse_ddi_port(dev_priv, devdata, bdb_version);
> +	list_for_each_entry(devdata, &i915->vbt.display_devices, node)
> +		parse_ddi_port(i915, devdata, bdb_version);
>  }
>  =

>  static void
> -parse_general_definitions(struct drm_i915_private *dev_priv,
> +parse_general_definitions(struct drm_i915_private *i915,
>  			  const struct bdb_header *bdb)
>  {
>  	const struct bdb_general_definitions *defs;
> @@ -1935,23 +1935,23 @@ parse_general_definitions(struct drm_i915_private=
 *dev_priv,
>  =

>  	defs =3D find_section(bdb, BDB_GENERAL_DEFINITIONS);
>  	if (!defs) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "No general definition block is found, no devices defined.\n");
>  		return;
>  	}
>  =

>  	block_size =3D get_blocksize(defs);
>  	if (block_size < sizeof(*defs)) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "General definitions block too small (%u)\n",
>  			    block_size);
>  		return;
>  	}
>  =

>  	bus_pin =3D defs->crt_ddc_gmbus_pin;
> -	drm_dbg_kms(&dev_priv->drm, "crt_ddc_bus_pin: %d\n", bus_pin);
> -	if (intel_gmbus_is_valid_pin(dev_priv, bus_pin))
> -		dev_priv->vbt.crt_ddc_pin =3D bus_pin;
> +	drm_dbg_kms(&i915->drm, "crt_ddc_bus_pin: %d\n", bus_pin);
> +	if (intel_gmbus_is_valid_pin(i915, bus_pin))
> +		i915->vbt.crt_ddc_pin =3D bus_pin;
>  =

>  	if (bdb->version < 106) {
>  		expected_size =3D 22;
> @@ -1968,20 +1968,20 @@ parse_general_definitions(struct drm_i915_private=
 *dev_priv,
>  	} else {
>  		expected_size =3D sizeof(*child);
>  		BUILD_BUG_ON(sizeof(*child) < 39);
> -		drm_dbg(&dev_priv->drm,
> +		drm_dbg(&i915->drm,
>  			"Expected child device config size for VBT version %u not known; assu=
ming %u\n",
>  			bdb->version, expected_size);
>  	}
>  =

>  	/* Flag an error for unexpected size, but continue anyway. */
>  	if (defs->child_dev_size !=3D expected_size)
> -		drm_err(&dev_priv->drm,
> +		drm_err(&i915->drm,
>  			"Unexpected child device config size %u (expected %u for VBT version =
%u)\n",
>  			defs->child_dev_size, expected_size, bdb->version);
>  =

>  	/* The legacy sized child device config is the minimum we need. */
>  	if (defs->child_dev_size < LEGACY_CHILD_DEVICE_CONFIG_SIZE) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Child device config size %u is too small.\n",
>  			    defs->child_dev_size);
>  		return;
> @@ -1995,7 +1995,7 @@ parse_general_definitions(struct drm_i915_private *=
dev_priv,
>  		if (!child->device_type)
>  			continue;
>  =

> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Found VBT child device with type 0x%x\n",
>  			    child->device_type);
>  =

> @@ -2011,64 +2011,64 @@ parse_general_definitions(struct drm_i915_private=
 *dev_priv,
>  		memcpy(&devdata->child, child,
>  		       min_t(size_t, defs->child_dev_size, sizeof(*child)));
>  =

> -		list_add_tail(&devdata->node, &dev_priv->vbt.display_devices);
> +		list_add_tail(&devdata->node, &i915->vbt.display_devices);
>  	}
>  =

> -	if (list_empty(&dev_priv->vbt.display_devices))
> -		drm_dbg_kms(&dev_priv->drm,
> +	if (list_empty(&i915->vbt.display_devices))
> +		drm_dbg_kms(&i915->drm,
>  			    "no child dev is parsed from VBT\n");
>  }
>  =

>  /* Common defaults which may be overridden by VBT. */
>  static void
> -init_vbt_defaults(struct drm_i915_private *dev_priv)
> +init_vbt_defaults(struct drm_i915_private *i915)
>  {
> -	dev_priv->vbt.crt_ddc_pin =3D GMBUS_PIN_VGADDC;
> +	i915->vbt.crt_ddc_pin =3D GMBUS_PIN_VGADDC;
>  =

>  	/* Default to having backlight */
> -	dev_priv->vbt.backlight.present =3D true;
> +	i915->vbt.backlight.present =3D true;
>  =

>  	/* LFP panel data */
> -	dev_priv->vbt.lvds_dither =3D 1;
> +	i915->vbt.lvds_dither =3D 1;
>  =

>  	/* SDVO panel data */
> -	dev_priv->vbt.sdvo_lvds_vbt_mode =3D NULL;
> +	i915->vbt.sdvo_lvds_vbt_mode =3D NULL;
>  =

>  	/* general features */
> -	dev_priv->vbt.int_tv_support =3D 1;
> -	dev_priv->vbt.int_crt_support =3D 1;
> +	i915->vbt.int_tv_support =3D 1;
> +	i915->vbt.int_crt_support =3D 1;
>  =

>  	/* driver features */
> -	dev_priv->vbt.int_lvds_support =3D 1;
> +	i915->vbt.int_lvds_support =3D 1;
>  =

>  	/* Default to using SSC */
> -	dev_priv->vbt.lvds_use_ssc =3D 1;
> +	i915->vbt.lvds_use_ssc =3D 1;
>  	/*
>  	 * Core/SandyBridge/IvyBridge use alternative (120MHz) reference
>  	 * clock for LVDS.
>  	 */
> -	dev_priv->vbt.lvds_ssc_freq =3D intel_bios_ssc_frequency(dev_priv,
> -			!HAS_PCH_SPLIT(dev_priv));
> -	drm_dbg_kms(&dev_priv->drm, "Set default to SSC at %d kHz\n",
> -		    dev_priv->vbt.lvds_ssc_freq);
> +	i915->vbt.lvds_ssc_freq =3D intel_bios_ssc_frequency(i915,
> +			!HAS_PCH_SPLIT(i915));
> +	drm_dbg_kms(&i915->drm, "Set default to SSC at %d kHz\n",
> +		    i915->vbt.lvds_ssc_freq);
>  }
>  =

>  /* Defaults to initialize only if there is no VBT. */
>  static void
> -init_vbt_missing_defaults(struct drm_i915_private *dev_priv)
> +init_vbt_missing_defaults(struct drm_i915_private *i915)
>  {
>  	enum port port;
>  =

>  	for_each_port(port) {
>  		struct ddi_vbt_port_info *info =3D
> -			&dev_priv->vbt.ddi_port_info[port];
> -		enum phy phy =3D intel_port_to_phy(dev_priv, port);
> +			&i915->vbt.ddi_port_info[port];
> +		enum phy phy =3D intel_port_to_phy(i915, port);
>  =

>  		/*
>  		 * VBT has the TypeC mode (native,TBT/USB) and we don't want
>  		 * to detect it.
>  		 */
> -		if (intel_phy_is_tc(dev_priv, phy))
> +		if (intel_phy_is_tc(i915, phy))
>  			continue;
>  =

>  		info->supports_dvi =3D (port !=3D PORT_A && port !=3D PORT_E);
> @@ -2134,9 +2134,9 @@ bool intel_bios_is_valid_vbt(const void *buf, size_=
t size)
>  	return vbt;
>  }
>  =

> -static struct vbt_header *oprom_get_vbt(struct drm_i915_private *dev_pri=
v)
> +static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
>  {
> -	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
>  	void __iomem *p =3D NULL, *oprom;
>  	struct vbt_header *vbt;
>  	u16 vbt_size;
> @@ -2160,13 +2160,13 @@ static struct vbt_header *oprom_get_vbt(struct dr=
m_i915_private *dev_priv)
>  		goto err_unmap_oprom;
>  =

>  	if (sizeof(struct vbt_header) > size) {
> -		drm_dbg(&dev_priv->drm, "VBT header incomplete\n");
> +		drm_dbg(&i915->drm, "VBT header incomplete\n");
>  		goto err_unmap_oprom;
>  	}
>  =

>  	vbt_size =3D ioread16(p + offsetof(struct vbt_header, vbt_size));
>  	if (vbt_size > size) {
> -		drm_dbg(&dev_priv->drm,
> +		drm_dbg(&i915->drm,
>  			"VBT incomplete (vbt_size overflows)\n");
>  		goto err_unmap_oprom;
>  	}
> @@ -2195,71 +2195,71 @@ static struct vbt_header *oprom_get_vbt(struct dr=
m_i915_private *dev_priv)
>  =

>  /**
>   * intel_bios_init - find VBT and initialize settings from the BIOS
> - * @dev_priv: i915 device instance
> + * @i915: i915 device instance
>   *
>   * Parse and initialize settings from the Video BIOS Tables (VBT). If th=
e VBT
>   * was not found in ACPI OpRegion, try to find it in PCI ROM first. Also
>   * initialize some defaults if the VBT is not present at all.
>   */
> -void intel_bios_init(struct drm_i915_private *dev_priv)
> +void intel_bios_init(struct drm_i915_private *i915)
>  {
> -	const struct vbt_header *vbt =3D dev_priv->opregion.vbt;
> +	const struct vbt_header *vbt =3D i915->opregion.vbt;
>  	struct vbt_header *oprom_vbt =3D NULL;
>  	const struct bdb_header *bdb;
>  =

> -	INIT_LIST_HEAD(&dev_priv->vbt.display_devices);
> +	INIT_LIST_HEAD(&i915->vbt.display_devices);
>  =

> -	if (!HAS_DISPLAY(dev_priv)) {
> -		drm_dbg_kms(&dev_priv->drm,
> +	if (!HAS_DISPLAY(i915)) {
> +		drm_dbg_kms(&i915->drm,
>  			    "Skipping VBT init due to disabled display.\n");
>  		return;
>  	}
>  =

> -	init_vbt_defaults(dev_priv);
> +	init_vbt_defaults(i915);
>  =

>  	/* If the OpRegion does not have VBT, look in PCI ROM. */
>  	if (!vbt) {
> -		oprom_vbt =3D oprom_get_vbt(dev_priv);
> +		oprom_vbt =3D oprom_get_vbt(i915);
>  		if (!oprom_vbt)
>  			goto out;
>  =

>  		vbt =3D oprom_vbt;
>  =

> -		drm_dbg_kms(&dev_priv->drm, "Found valid VBT in PCI ROM\n");
> +		drm_dbg_kms(&i915->drm, "Found valid VBT in PCI ROM\n");
>  	}
>  =

>  	bdb =3D get_bdb_header(vbt);
>  =

> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(&i915->drm,
>  		    "VBT signature \"%.*s\", BDB version %d\n",
>  		    (int)sizeof(vbt->signature), vbt->signature, bdb->version);
>  =

>  	/* Grab useful general definitions */
> -	parse_general_features(dev_priv, bdb);
> -	parse_general_definitions(dev_priv, bdb);
> -	parse_panel_options(dev_priv, bdb);
> -	parse_panel_dtd(dev_priv, bdb);
> -	parse_lfp_backlight(dev_priv, bdb);
> -	parse_sdvo_panel_data(dev_priv, bdb);
> -	parse_driver_features(dev_priv, bdb);
> -	parse_power_conservation_features(dev_priv, bdb);
> -	parse_edp(dev_priv, bdb);
> -	parse_psr(dev_priv, bdb);
> -	parse_mipi_config(dev_priv, bdb);
> -	parse_mipi_sequence(dev_priv, bdb);
> +	parse_general_features(i915, bdb);
> +	parse_general_definitions(i915, bdb);
> +	parse_panel_options(i915, bdb);
> +	parse_panel_dtd(i915, bdb);
> +	parse_lfp_backlight(i915, bdb);
> +	parse_sdvo_panel_data(i915, bdb);
> +	parse_driver_features(i915, bdb);
> +	parse_power_conservation_features(i915, bdb);
> +	parse_edp(i915, bdb);
> +	parse_psr(i915, bdb);
> +	parse_mipi_config(i915, bdb);
> +	parse_mipi_sequence(i915, bdb);
>  =

>  	/* Depends on child device list */
> -	parse_compression_parameters(dev_priv, bdb);
> +	parse_compression_parameters(i915, bdb);
>  =

>  	/* Further processing on pre-parsed data */
> -	parse_sdvo_device_mapping(dev_priv, bdb->version);
> -	parse_ddi_ports(dev_priv, bdb->version);
> +	parse_sdvo_device_mapping(i915, bdb->version);
> +	parse_ddi_ports(i915, bdb->version);
>  =

>  out:
>  	if (!vbt) {
> -		drm_info(&dev_priv->drm,
> +		drm_info(&i915->drm,
>  			 "Failed to find VBIOS tables (VBT)\n");
> -		init_vbt_missing_defaults(dev_priv);
> +		init_vbt_missing_defaults(i915);
>  	}
>  =

>  	kfree(oprom_vbt);
> @@ -2267,51 +2267,51 @@ void intel_bios_init(struct drm_i915_private *dev=
_priv)
>  =

>  /**
>   * intel_bios_driver_remove - Free any resources allocated by intel_bios=
_init()
> - * @dev_priv: i915 device instance
> + * @i915: i915 device instance
>   */
> -void intel_bios_driver_remove(struct drm_i915_private *dev_priv)
> +void intel_bios_driver_remove(struct drm_i915_private *i915)
>  {
>  	struct display_device_data *devdata, *n;
>  =

> -	list_for_each_entry_safe(devdata, n, &dev_priv->vbt.display_devices, no=
de) {
> +	list_for_each_entry_safe(devdata, n, &i915->vbt.display_devices, node) {
>  		list_del(&devdata->node);
>  		kfree(devdata->dsc);
>  		kfree(devdata);
>  	}
>  =

> -	kfree(dev_priv->vbt.sdvo_lvds_vbt_mode);
> -	dev_priv->vbt.sdvo_lvds_vbt_mode =3D NULL;
> -	kfree(dev_priv->vbt.lfp_lvds_vbt_mode);
> -	dev_priv->vbt.lfp_lvds_vbt_mode =3D NULL;
> -	kfree(dev_priv->vbt.dsi.data);
> -	dev_priv->vbt.dsi.data =3D NULL;
> -	kfree(dev_priv->vbt.dsi.pps);
> -	dev_priv->vbt.dsi.pps =3D NULL;
> -	kfree(dev_priv->vbt.dsi.config);
> -	dev_priv->vbt.dsi.config =3D NULL;
> -	kfree(dev_priv->vbt.dsi.deassert_seq);
> -	dev_priv->vbt.dsi.deassert_seq =3D NULL;
> +	kfree(i915->vbt.sdvo_lvds_vbt_mode);
> +	i915->vbt.sdvo_lvds_vbt_mode =3D NULL;
> +	kfree(i915->vbt.lfp_lvds_vbt_mode);
> +	i915->vbt.lfp_lvds_vbt_mode =3D NULL;
> +	kfree(i915->vbt.dsi.data);
> +	i915->vbt.dsi.data =3D NULL;
> +	kfree(i915->vbt.dsi.pps);
> +	i915->vbt.dsi.pps =3D NULL;
> +	kfree(i915->vbt.dsi.config);
> +	i915->vbt.dsi.config =3D NULL;
> +	kfree(i915->vbt.dsi.deassert_seq);
> +	i915->vbt.dsi.deassert_seq =3D NULL;
>  }
>  =

>  /**
>   * intel_bios_is_tv_present - is integrated TV present in VBT
> - * @dev_priv:	i915 device instance
> + * @i915: i915 device instance
>   *
>   * Return true if TV is present. If no child devices were parsed from VB=
T,
>   * assume TV is present.
>   */
> -bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv)
> +bool intel_bios_is_tv_present(struct drm_i915_private *i915)
>  {
>  	const struct display_device_data *devdata;
>  	const struct child_device_config *child;
>  =

> -	if (!dev_priv->vbt.int_tv_support)
> +	if (!i915->vbt.int_tv_support)
>  		return false;
>  =

> -	if (list_empty(&dev_priv->vbt.display_devices))
> +	if (list_empty(&i915->vbt.display_devices))
>  		return true;
>  =

> -	list_for_each_entry(devdata, &dev_priv->vbt.display_devices, node) {
> +	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
>  		child =3D &devdata->child;
>  =

>  		/*
> @@ -2337,21 +2337,21 @@ bool intel_bios_is_tv_present(struct drm_i915_pri=
vate *dev_priv)
>  =

>  /**
>   * intel_bios_is_lvds_present - is LVDS present in VBT
> - * @dev_priv:	i915 device instance
> + * @i915:	i915 device instance
>   * @i2c_pin:	i2c pin for LVDS if present
>   *
>   * Return true if LVDS is present. If no child devices were parsed from =
VBT,
>   * assume LVDS is present.
>   */
> -bool intel_bios_is_lvds_present(struct drm_i915_private *dev_priv, u8 *i=
2c_pin)
> +bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_p=
in)
>  {
>  	const struct display_device_data *devdata;
>  	const struct child_device_config *child;
>  =

> -	if (list_empty(&dev_priv->vbt.display_devices))
> +	if (list_empty(&i915->vbt.display_devices))
>  		return true;
>  =

> -	list_for_each_entry(devdata, &dev_priv->vbt.display_devices, node) {
> +	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
>  		child =3D &devdata->child;
>  =

>  		/* If the device type is not LFP, continue.
> @@ -2362,7 +2362,7 @@ bool intel_bios_is_lvds_present(struct drm_i915_pri=
vate *dev_priv, u8 *i2c_pin)
>  		    child->device_type !=3D DEVICE_TYPE_LFP)
>  			continue;
>  =

> -		if (intel_gmbus_is_valid_pin(dev_priv, child->i2c_pin))
> +		if (intel_gmbus_is_valid_pin(i915, child->i2c_pin))
>  			*i2c_pin =3D child->i2c_pin;
>  =

>  		/* However, we cannot trust the BIOS writers to populate
> @@ -2378,7 +2378,7 @@ bool intel_bios_is_lvds_present(struct drm_i915_pri=
vate *dev_priv, u8 *i2c_pin)
>  		 * additional data.  Trust that if the VBT was written into
>  		 * the OpRegion then they have validated the LVDS's existence.
>  		 */
> -		if (dev_priv->opregion.vbt)
> +		if (i915->opregion.vbt)
>  			return true;
>  	}
>  =

> @@ -2387,12 +2387,12 @@ bool intel_bios_is_lvds_present(struct drm_i915_p=
rivate *dev_priv, u8 *i2c_pin)
>  =

>  /**
>   * intel_bios_is_port_present - is the specified digital port present
> - * @dev_priv:	i915 device instance
> + * @i915:	i915 device instance
>   * @port:	port to check
>   *
>   * Return true if the device in %port is present.
>   */
> -bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum =
port port)
> +bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port=
 port)
>  {
>  	const struct display_device_data *devdata;
>  	const struct child_device_config *child;
> @@ -2406,19 +2406,19 @@ bool intel_bios_is_port_present(struct drm_i915_p=
rivate *dev_priv, enum port por
>  		[PORT_F] =3D { DVO_PORT_DPF, DVO_PORT_HDMIF, },
>  	};
>  =

> -	if (HAS_DDI(dev_priv)) {
> +	if (HAS_DDI(i915)) {
>  		const struct ddi_vbt_port_info *port_info =3D
> -			&dev_priv->vbt.ddi_port_info[port];
> +			&i915->vbt.ddi_port_info[port];
>  =

>  		return port_info->child;
>  	}
>  =

>  	/* FIXME maybe deal with port A as well? */
> -	if (drm_WARN_ON(&dev_priv->drm,
> +	if (drm_WARN_ON(&i915->drm,
>  			port =3D=3D PORT_A) || port >=3D ARRAY_SIZE(port_mapping))
>  		return false;
>  =

> -	list_for_each_entry(devdata, &dev_priv->vbt.display_devices, node) {
> +	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
>  		child =3D &devdata->child;
>  =

>  		if ((child->dvo_port =3D=3D port_mapping[port].dp ||
> @@ -2433,12 +2433,12 @@ bool intel_bios_is_port_present(struct drm_i915_p=
rivate *dev_priv, enum port por
>  =

>  /**
>   * intel_bios_is_port_edp - is the device in given port eDP
> - * @dev_priv:	i915 device instance
> + * @i915:	i915 device instance
>   * @port:	port to check
>   *
>   * Return true if the device in %port is eDP.
>   */
> -bool intel_bios_is_port_edp(struct drm_i915_private *dev_priv, enum port=
 port)
> +bool intel_bios_is_port_edp(struct drm_i915_private *i915, enum port por=
t)
>  {
>  	const struct display_device_data *devdata;
>  	const struct child_device_config *child;
> @@ -2450,10 +2450,10 @@ bool intel_bios_is_port_edp(struct drm_i915_priva=
te *dev_priv, enum port port)
>  		[PORT_F] =3D DVO_PORT_DPF,
>  	};
>  =

> -	if (HAS_DDI(dev_priv))
> -		return dev_priv->vbt.ddi_port_info[port].supports_edp;
> +	if (HAS_DDI(i915))
> +		return i915->vbt.ddi_port_info[port].supports_edp;
>  =

> -	list_for_each_entry(devdata, &dev_priv->vbt.display_devices, node) {
> +	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
>  		child =3D &devdata->child;
>  =

>  		if (child->dvo_port =3D=3D port_mapping[port] &&
> @@ -2500,12 +2500,12 @@ static bool child_dev_is_dp_dual_mode(const struc=
t child_device_config *child,
>  	return false;
>  }
>  =

> -bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *dev_priv,
> +bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *i915,
>  				     enum port port)
>  {
>  	const struct display_device_data *devdata;
>  =

> -	list_for_each_entry(devdata, &dev_priv->vbt.display_devices, node) {
> +	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
>  		if (child_dev_is_dp_dual_mode(&devdata->child, port))
>  			return true;
>  	}
> @@ -2515,19 +2515,19 @@ bool intel_bios_is_port_dp_dual_mode(struct drm_i=
915_private *dev_priv,
>  =

>  /**
>   * intel_bios_is_dsi_present - is DSI present in VBT
> - * @dev_priv:	i915 device instance
> + * @i915:	i915 device instance
>   * @port:	port for DSI if present
>   *
>   * Return true if DSI is present, and return the port in %port.
>   */
> -bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv,
> +bool intel_bios_is_dsi_present(struct drm_i915_private *i915,
>  			       enum port *port)
>  {
>  	const struct display_device_data *devdata;
>  	const struct child_device_config *child;
>  	u8 dvo_port;
>  =

> -	list_for_each_entry(devdata, &dev_priv->vbt.display_devices, node) {
> +	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
>  		child =3D &devdata->child;
>  =

>  		if (!(child->device_type & DEVICE_TYPE_MIPI_OUTPUT))
> @@ -2536,15 +2536,15 @@ bool intel_bios_is_dsi_present(struct drm_i915_pr=
ivate *dev_priv,
>  		dvo_port =3D child->dvo_port;
>  =

>  		if (dvo_port =3D=3D DVO_PORT_MIPIA ||
> -		    (dvo_port =3D=3D DVO_PORT_MIPIB && INTEL_GEN(dev_priv) >=3D 11) ||
> -		    (dvo_port =3D=3D DVO_PORT_MIPIC && INTEL_GEN(dev_priv) < 11)) {
> +		    (dvo_port =3D=3D DVO_PORT_MIPIB && INTEL_GEN(i915) >=3D 11) ||
> +		    (dvo_port =3D=3D DVO_PORT_MIPIC && INTEL_GEN(i915) < 11)) {
>  			if (port)
>  				*port =3D dvo_port - DVO_PORT_MIPIA;
>  			return true;
>  		} else if (dvo_port =3D=3D DVO_PORT_MIPIB ||
>  			   dvo_port =3D=3D DVO_PORT_MIPIC ||
>  			   dvo_port =3D=3D DVO_PORT_MIPID) {
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "VBT has unsupported DSI port %c\n",
>  				    port_name(dvo_port - DVO_PORT_MIPIA));
>  		}
> @@ -2700,17 +2700,17 @@ intel_bios_is_lane_reversal_needed(const struct d=
rm_i915_private *i915,
>  	return child && child->lane_reversal;
>  }
>  =

> -enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv,
> +enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>  				   enum port port)
>  {
>  	const struct ddi_vbt_port_info *info =3D
> -		&dev_priv->vbt.ddi_port_info[port];
> +		&i915->vbt.ddi_port_info[port];
>  	enum aux_ch aux_ch;
>  =

>  	if (!info->alternate_aux_channel) {
>  		aux_ch =3D (enum aux_ch)port;
>  =

> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "using AUX %c for port %c (platform default)\n",
>  			    aux_ch_name(aux_ch), port_name(port));
>  		return aux_ch;
> @@ -2728,29 +2728,29 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i91=
5_private *dev_priv,
>  		aux_ch =3D AUX_CH_A;
>  		break;
>  	case DP_AUX_B:
> -		if (IS_ALDERLAKE_S(dev_priv))
> +		if (IS_ALDERLAKE_S(i915))
>  			aux_ch =3D AUX_CH_USBC1;
>  		else
>  			aux_ch =3D AUX_CH_B;
>  		break;
>  	case DP_AUX_C:
> -		if (IS_ALDERLAKE_S(dev_priv))
> +		if (IS_ALDERLAKE_S(i915))
>  			aux_ch =3D AUX_CH_USBC2;
> -		else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> +		else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
>  			aux_ch =3D AUX_CH_USBC1;
>  		else
>  			aux_ch =3D AUX_CH_C;
>  		break;
>  	case DP_AUX_D:
> -		if (IS_ALDERLAKE_S(dev_priv))
> +		if (IS_ALDERLAKE_S(i915))
>  			aux_ch =3D AUX_CH_USBC3;
> -		else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> +		else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
>  			aux_ch =3D AUX_CH_USBC2;
>  		else
>  			aux_ch =3D AUX_CH_D;
>  		break;
>  	case DP_AUX_E:
> -		if (IS_ALDERLAKE_S(dev_priv))
> +		if (IS_ALDERLAKE_S(i915))
>  			aux_ch =3D AUX_CH_USBC4;
>  		else
>  			aux_ch =3D AUX_CH_E;
> @@ -2773,7 +2773,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_=
private *dev_priv,
>  		break;
>  	}
>  =

> -	drm_dbg_kms(&dev_priv->drm, "using AUX %c for port %c (VBT)\n",
> +	drm_dbg_kms(&i915->drm, "using AUX %c for port %c (VBT)\n",
>  		    aux_ch_name(aux_ch), port_name(port));
>  =

>  	return aux_ch;
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
