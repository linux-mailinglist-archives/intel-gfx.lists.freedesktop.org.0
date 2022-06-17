Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F20354FBFA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 19:12:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C0BF10E30E;
	Fri, 17 Jun 2022 17:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AE1B10E30E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 17:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655485918; x=1687021918;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=anUAuJfCcQtOmlwyzSHp4FiJgLaQT5PG3RkkrRwFji4=;
 b=KV1oporSwL8JIsU/j4iSSxRC3/wSalTogk8J3D4SztEWmiNgO2v//vr9
 VCnOAQApnJ7hol5eMH0qm5hyKS4M3pXQ3eRR5nao4l3XcD0YiVdasyMhF
 tHcwBAbNq1kBeeg3MBEDnz8moxrpEoF0BC68nTxLZtfDAh1JkQ9z5MkAt
 j3TT7+KQGM1gdj4EdvMHu+dURmistcvUPBNOpvbbIUx8BiZFQKqAIrkYL
 g1LdJLmMOQVL7Wk1HngAcm7FxSDZjgq0dx1Hhcsxt+r1Ti0lUDJfk5xmM
 bslglq4q1rKEN4ojGsuLJJBh745kdUiCR4lG1tVdYXBY0/9KewFXevxi+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="277053853"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="277053853"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 05:32:14 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="642016817"
Received: from dfischbe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.67])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 05:32:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220617102649.1581-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220617102649.1581-1-animesh.manna@intel.com>
Date: Fri, 17 Jun 2022 15:32:10 +0300
Message-ID: <874k0jv5bp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/bios: calculate panel type as
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

On Fri, 17 Jun 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> Each LFP may have different panel type which is stored in LFP data
> data block. Based on the child device index respective panel-type/
> panel-type2 field will be used.
>
> v1: Initial rfc verion.
> v2: Based on review comments from Jani,
> - Used panel-type instead addition panel-index variable.
> - DEVICE_HANDLE_* name changed and placed before DEVICE_TYPE_*
> macro.
> v3:
> - Passing intel_bios_encoder_data as argument of
> intel_bios_init_panel(). Passing NULL to indicate encoder is not
> initialized yet for dsi as current focus is to enable dual EDP. [Jani]
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     | 16 ++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_bios.h     |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +++-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++++
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
>  8 files changed, 26 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 3b5305c219ba..5dcfa7feffa9 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	/* attach connector to encoder */
>  	intel_connector_attach_encoder(intel_connector, encoder);
>  
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL);
> +	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL, NULL);
>  
>  	mutex_lock(&dev->mode_config.mutex);
>  	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 76e86358adb9..e97f1f979a48 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -604,12 +604,14 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
>  }
>  
>  static int opregion_get_panel_type(struct drm_i915_private *i915,
> +				   const struct intel_bios_encoder_data *devdata,
>  				   const struct edid *edid)
>  {
>  	return intel_opregion_get_panel_type(i915);
>  }
>  
>  static int vbt_get_panel_type(struct drm_i915_private *i915,
> +			      const struct intel_bios_encoder_data *devdata,
>  			      const struct edid *edid)
>  {
>  	const struct bdb_lvds_options *lvds_options;
> @@ -625,10 +627,16 @@ static int vbt_get_panel_type(struct drm_i915_private *i915,
>  		return -1;
>  	}
>  
> +	if (devdata && devdata->child.handle == DEVICE_HANDLE_LFP2)
> +		return lvds_options->panel_type2;
> +
> +	drm_WARN_ON(&i915->drm, devdata && devdata->child.handle != DEVICE_HANDLE_LFP1);
> +
>  	return lvds_options->panel_type;
>  }
>  
>  static int pnpid_get_panel_type(struct drm_i915_private *i915,
> +				const struct intel_bios_encoder_data *devdata,
>  				const struct edid *edid)
>  {
>  	const struct bdb_lvds_lfp_data *data;
> @@ -675,6 +683,7 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
>  }
>  
>  static int fallback_get_panel_type(struct drm_i915_private *i915,
> +				   const struct intel_bios_encoder_data *devdata,
>  				   const struct edid *edid)
>  {
>  	return 0;
> @@ -688,11 +697,13 @@ enum panel_type {
>  };
>  
>  static int get_panel_type(struct drm_i915_private *i915,
> +			  const struct intel_bios_encoder_data *devdata,
>  			  const struct edid *edid)
>  {
>  	struct {
>  		const char *name;
>  		int (*get_panel_type)(struct drm_i915_private *i915,
> +				      const struct intel_bios_encoder_data *devdata,
>  				      const struct edid *edid);
>  		int panel_type;
>  	} panel_types[] = {
> @@ -716,7 +727,7 @@ static int get_panel_type(struct drm_i915_private *i915,
>  	int i;
>  
>  	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
> -		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, edid);
> +		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, devdata, edid);
>  
>  		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
>  			    panel_types[i].panel_type != 0xff);
> @@ -3127,11 +3138,12 @@ void intel_bios_init(struct drm_i915_private *i915)
>  
>  void intel_bios_init_panel(struct drm_i915_private *i915,
>  			   struct intel_panel *panel,
> +			   const struct intel_bios_encoder_data *devdata,
>  			   const struct edid *edid)
>  {
>  	init_vbt_panel_defaults(panel);
>  
> -	panel->vbt.panel_type = get_panel_type(i915, edid);
> +	panel->vbt.panel_type = get_panel_type(i915, devdata, edid);
>  
>  	parse_panel_options(i915, panel);
>  	parse_generic_dtd(i915, panel);
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index b112200ae0a0..e47582b0de0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -234,6 +234,7 @@ struct mipi_pps_data {
>  void intel_bios_init(struct drm_i915_private *dev_priv);
>  void intel_bios_init_panel(struct drm_i915_private *dev_priv,
>  			   struct intel_panel *panel,
> +			   const struct intel_bios_encoder_data *devdata,
>  			   const struct edid *edid);
>  void intel_bios_fini_panel(struct intel_panel *panel);
>  void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2fac76bcf06d..3590de9227d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5171,6 +5171,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	bool has_dpcd;
>  	enum pipe pipe = INVALID_PIPE;
>  	struct edid *edid;
> +	struct intel_bios_encoder_data *devdata;
>  
>  	if (!intel_dp_is_edp(intel_dp))
>  		return true;
> @@ -5224,7 +5225,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	}
>  	intel_connector->edid = edid;
>  
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> +	devdata = dev_priv->vbt.ports[intel_connector->encoder->port];

Sorry, i915->vbt.ports[] is supposed to be private to intel_bios.c. I
tried to explain that we already look up devdata for some of the
encoders. See intel_ddi_init() which is relevant for new platforms.

We've got

	devdata = intel_bios_encoder_data_lookup(dev_priv, port);

and

	encoder->devdata = devdata;

So you just need to get at the encoder here (via intel_dp), and pass
encoder->devdata.

With that fixed, this LGTM.

BR,
Jani.


> +	intel_bios_init_panel(dev_priv, &intel_connector->panel, devdata,
>  			      IS_ERR(edid) ? NULL : edid);
>  
>  	intel_panel_add_edid_fixed_modes(intel_connector,
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index e55802b45461..730480ac3300 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -967,7 +967,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>  	}
>  	intel_connector->edid = edid;
>  
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> +	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL,
>  			      IS_ERR(edid) ? NULL : edid);
>  
>  	/* Try EDID first */
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 2b78a790e1b6..19122bc6d2ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2901,7 +2901,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
>  	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
>  		goto err;
>  
> -	intel_bios_init_panel(i915, &intel_connector->panel, NULL);
> +	intel_bios_init_panel(i915, &intel_connector->panel, NULL, NULL);
>  
>  	/*
>  	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index 3766c09bd65d..509b0a419c20 100644
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
> index abda0888c8d4..b9b1fed99874 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1926,7 +1926,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  
>  	intel_dsi->panel_power_off_time = ktime_get_boottime();
>  
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL);
> +	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL, NULL);
>  
>  	if (intel_connector->panel.vbt.dsi.config->dual_link)
>  		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_C);

-- 
Jani Nikula, Intel Open Source Graphics Center
