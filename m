Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A8A5464A0
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 12:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E151210E038;
	Fri, 10 Jun 2022 10:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1424310E00D
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 10:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654858457; x=1686394457;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tOkeO991P0n+kMp/nMXWkCT/9DXb6KPNqb6x3shPJEc=;
 b=g7XWXzITNHtncDKNew/3GoBtRnCjP2Hy8WeJCEaxV1u2RUOYCEH50+y9
 ixuvwB35l/8MqQmS5qALahuyebCOY/ccJ68jJHQQBn76XWBcdtUui5QSi
 a0nAAQWTEWzFHfihDfabexp2kg7Fdu5bAkJ1iZqS2Jymln1vSE5NKErso
 nQZ3+jYJtlJHkiCbzEMjH9vKOKm0EDhSMWKG/uyFyA/rFJKztmMR/nn0I
 ig09KpzKpCGdcKy9Y6NvKm2kXaIfGbX3QDmz4vLV+ydWlqAfOPwZQ0IoG
 S1GxyuMlhwmSySSLEDaJm/aeAD+1FYgc+Sq5vH5gq6wT+Zt6PQpeg0Z5w Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="277629342"
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="277629342"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 03:54:16 -0700
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="638076013"
Received: from vrao2-mobl1.gar.corp.intel.com (HELO localhost) ([10.252.58.80])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 03:54:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220609181014.21694-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220609181014.21694-1-animesh.manna@intel.com>
Date: Fri, 10 Jun 2022 13:54:12 +0300
Message-ID: <87tu8szt4b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/bios: calculate panel type as
 per child device index in VBT
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

On Thu, 09 Jun 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> Each LFP may have different panel type which is stored in LFP data
> data block. Based on the child device index respective panel-type/
> panel-type2 field will be used.
>
> v1: Initial rfc verion.
> v2: Based on review comments from Jani,
> - Used panel-type instead addition panel-index variable.
> - DEVICE_HANDLE_* name changed and placed before DEVICE_TYPE_*
> macro.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     | 40 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_bios.h     |  3 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  3 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
>  8 files changed, 39 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 3b5305c219ba..b3aa430abd03 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	/* attach connector to encoder */
>  	intel_connector_attach_encoder(intel_connector, encoder);
>  
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL);
> +	intel_bios_init_panel(dev_priv, intel_connector, NULL);
>  
>  	mutex_lock(&dev->mode_config.mutex);
>  	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index aaea27fe5d16..f74e63823c08 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -604,13 +604,15 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
>  }
>  
>  static int opregion_get_panel_type(struct drm_i915_private *i915,
> -				   const struct edid *edid)
> +				   const struct edid *edid,
> +				   const struct intel_bios_encoder_data *devdata)
>  {
>  	return intel_opregion_get_panel_type(i915);
>  }
>  
>  static int vbt_get_panel_type(struct drm_i915_private *i915,
> -			      const struct edid *edid)
> +			      const struct edid *edid,
> +			      const struct intel_bios_encoder_data *devdata)

This is nitpicking, but semantically feels like the devdata parameter
should be before edid.

>  {
>  	const struct bdb_lvds_options *lvds_options;
>  
> @@ -625,11 +627,17 @@ static int vbt_get_panel_type(struct drm_i915_private *i915,
>  		return -1;
>  	}
>  
> -	return lvds_options->panel_type;
> +	if (devdata->child.handle == DEVICE_HANDLE_LFP1)
> +		return lvds_options->panel_type;
> +	else if (devdata->child.handle == DEVICE_HANDLE_LFP2)
> +		return lvds_options->panel_type2;
> +	else
> +		return -1;

Not all legacy panels have encoder data (i.e. VBT child device
config). I'd go for something like this:

	if (devdata && devdata->child.handle == DEVICE_HANDLE_LFP2)
		return lvds_options->panel_type2;

	drm_WARN_ON(&i915->drm, devdata && devdata->child.handle != DEVICE_HANDLE_LFP1)

	return lvds_options->panel_type;

I don't know if that's going to lead to a bunch of warnings, but I'd
want to know. Or we can demote it to drm_dbg_kms(), now or later.

>  }
>  
>  static int pnpid_get_panel_type(struct drm_i915_private *i915,
> -				const struct edid *edid)
> +				const struct edid *edid,
> +				const struct intel_bios_encoder_data *devdata)
>  {
>  	const struct bdb_lvds_lfp_data *data;
>  	const struct bdb_lvds_lfp_data_ptrs *ptrs;
> @@ -675,7 +683,8 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
>  }
>  
>  static int fallback_get_panel_type(struct drm_i915_private *i915,
> -				   const struct edid *edid)
> +				   const struct edid *edid,
> +				   const struct intel_bios_encoder_data *devdata)
>  {
>  	return 0;
>  }
> @@ -688,12 +697,14 @@ enum panel_type {
>  };
>  
>  static int get_panel_type(struct drm_i915_private *i915,
> -			  const struct edid *edid)
> +			  const struct edid *edid,
> +			  const struct intel_bios_encoder_data *devdata)
>  {
>  	struct {
>  		const char *name;
>  		int (*get_panel_type)(struct drm_i915_private *i915,
> -				      const struct edid *edid);
> +				      const struct edid *edid,
> +				      const struct intel_bios_encoder_data *devdata);
>  		int panel_type;
>  	} panel_types[] = {
>  		[PANEL_TYPE_OPREGION] = {
> @@ -716,7 +727,7 @@ static int get_panel_type(struct drm_i915_private *i915,
>  	int i;
>  
>  	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
> -		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, edid);
> +		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, edid, devdata);
>  
>  		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
>  			    panel_types[i].panel_type != 0xff);
> @@ -747,7 +758,8 @@ static int get_panel_type(struct drm_i915_private *i915,
>  static void
>  parse_panel_options(struct drm_i915_private *i915,
>  		    struct intel_panel *panel,
> -		    const struct edid *edid)
> +		    const struct edid *edid,
> +		    const struct intel_bios_encoder_data *devdata)
>  {
>  	const struct bdb_lvds_options *lvds_options;
>  	int panel_type;
> @@ -759,7 +771,7 @@ parse_panel_options(struct drm_i915_private *i915,
>  
>  	panel->vbt.lvds_dither = lvds_options->pixel_dither;
>  
> -	panel_type = get_panel_type(i915, edid);
> +	panel_type = get_panel_type(i915, edid, devdata);
>  
>  	panel->vbt.panel_type = panel_type;
>  
> @@ -3103,12 +3115,16 @@ void intel_bios_init(struct drm_i915_private *i915)
>  }
>  
>  void intel_bios_init_panel(struct drm_i915_private *i915,
> -			   struct intel_panel *panel,
> +			   struct intel_connector *intel_connector,
>  			   const struct edid *edid)
>  {
> +	struct intel_panel *panel = &intel_connector->panel;
> +	struct intel_encoder *encoder = intel_connector->encoder;

At least vlv_dsi_init() calls intel_bios_init_panel() before setting
intel_connector->encoder, which would oops on the next line.

> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
> +

intel_bios_init_panel() gets called:

* On platforms/outputs where encoder->port does not make sense,
  e.g. intel_lvds_init() sets it to PORT_NONE.

* On platforms where i915->vbt.ports[] is not initialized at all. See
  has_ddi_port_info().

* On platforms/outputs where i915->vbt.ports[] is not
  initialized. Specifically, DSI is not handled by parse_ddi_port()
  because on VLV, at least in theory, the DSI ports can coexist and
  collide with other ports.

I'm wondering if maybe it's best to have the caller figure out const
struct intel_bios_encoder_data *, and pass that along. If it's not
possible, just pass NULL. For DP on DDI platforms it's already set in
encoder->devdata. (We should basically set that on all platforms where
it's available, but we're not there yet.)

This should work trivially for the immediate goal of enabling multiple
eDP panels, and be compatible with enabling multiple DSI or combo
eDP/DSI panels in the future once we've figured out how to fix devdata
for DSI.

Ville, thoughts?


BR,
Jani.


>  	init_vbt_panel_defaults(panel);
>  
> -	parse_panel_options(i915, panel, edid);
> +	parse_panel_options(i915, panel, edid, devdata);
>  	parse_generic_dtd(i915, panel);
>  	parse_lfp_data(i915, panel);
>  	parse_lfp_backlight(i915, panel);
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index b112200ae0a0..e4c268495547 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -37,6 +37,7 @@ struct edid;
>  struct intel_bios_encoder_data;
>  struct intel_crtc_state;
>  struct intel_encoder;
> +struct intel_connector;
>  struct intel_panel;
>  enum port;
>  
> @@ -233,7 +234,7 @@ struct mipi_pps_data {
>  
>  void intel_bios_init(struct drm_i915_private *dev_priv);
>  void intel_bios_init_panel(struct drm_i915_private *dev_priv,
> -			   struct intel_panel *panel,
> +			   struct intel_connector *intel_connector,
>  			   const struct edid *edid);
>  void intel_bios_fini_panel(struct intel_panel *panel);
>  void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2fac76bcf06d..8c41ba016cd2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5224,8 +5224,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	}
>  	intel_connector->edid = edid;
>  
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> -			      IS_ERR(edid) ? NULL : edid);
> +	intel_bios_init_panel(dev_priv, intel_connector, IS_ERR(edid) ? NULL : edid);
>  
>  	intel_panel_add_edid_fixed_modes(intel_connector,
>  					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index e55802b45461..39a5e919eb06 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -967,8 +967,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>  	}
>  	intel_connector->edid = edid;
>  
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> -			      IS_ERR(edid) ? NULL : edid);
> +	intel_bios_init_panel(dev_priv, intel_connector, IS_ERR(edid) ? NULL : edid);
>  
>  	/* Try EDID first */
>  	intel_panel_add_edid_fixed_modes(intel_connector,
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 2b78a790e1b6..c4ad943e84f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2901,7 +2901,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
>  	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
>  		goto err;
>  
> -	intel_bios_init_panel(i915, &intel_connector->panel, NULL);
> +	intel_bios_init_panel(i915, intel_connector, NULL);
>  
>  	/*
>  	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index f8e5097222f2..31f5994f81de 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -182,6 +182,10 @@ struct bdb_general_features {
>  #define GPIO_PIN_ADD_DDC	0x04 /* "ADDCARD DDC GPIO pins" */
>  #define GPIO_PIN_ADD_DDC_I2C	0x06 /* "ADDCARD DDC/I2C GPIO pins" */
>  
> +/* Device handle */
> +#define DEVICE_HANDLE_LFP1	0x0008
> +#define DEVICE_HANDLE_LFP2	0x0080
> +
>  /* Pre 915 */
>  #define DEVICE_TYPE_NONE	0x00
>  #define DEVICE_TYPE_CRT		0x01
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index abda0888c8d4..114e4f89f198 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1926,7 +1926,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  
>  	intel_dsi->panel_power_off_time = ktime_get_boottime();
>  
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL);
> +	intel_bios_init_panel(dev_priv, intel_connector, NULL);
>  
>  	if (intel_connector->panel.vbt.dsi.config->dual_link)
>  		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_C);

-- 
Jani Nikula, Intel Open Source Graphics Center
