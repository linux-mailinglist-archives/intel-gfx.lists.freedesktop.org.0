Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE89552298
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:09:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ACD610E25C;
	Mon, 20 Jun 2022 17:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AD9F10E25C
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655744936; x=1687280936;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=30uiG5gHbdxmumO1jc+HOZ6bzxkvnhCjVR+hkJKsDwg=;
 b=nfNhSBLZHBJBPaRqiArVTYaeis5K31UVGW++Omdx8YnSBbHM4KKD2K9E
 YhXs2HdsdKIePXdjDTpeFJh5xR9oPA3hE+Ue90FE9P4na5zon6Q8JHGoy
 45e46CJIvNz+0muSOgQEnTMe1o2rmsvoR26dtS7Z9lSL/PLUBBDN6csNs
 KQHwxP5MG4bQdc9wphuY12li/Z5HYsTbewLd7n0Awpv/4WcmZFlONdnZr
 LDpp+L8SM9q/8J4YxhWXraUYPhP2VTtmLrWGWylbEnCAmEFCq3/dJygSa
 2c/ZHzh2j9h796yLm9RVbWQND3oJYzDmbrK/8WiPXuGRoqp8zi697SMqX g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="268662233"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="268662233"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:08:55 -0700
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="643202937"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:08:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87wndbu35r.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220620065138.5126-1-animesh.manna@intel.com>
 <87wndbu35r.fsf@intel.com>
Date: Mon, 20 Jun 2022 20:08:51 +0300
Message-ID: <87v8svs1ng.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/bios: calculate panel type as
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

On Mon, 20 Jun 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> On Mon, 20 Jun 2022, Animesh Manna <animesh.manna@intel.com> wrote:
>> Each LFP may have different panel type which is stored in LFP data
>> data block. Based on the child device index respective panel-type/
>> panel-type2 field will be used.
>>
>> v1: Initial rfc verion.
>> v2: Based on review comments from Jani,
>> - Used panel-type instead addition panel-index variable.
>> - DEVICE_HANDLE_* name changed and placed before DEVICE_TYPE_*
>> macro.
>> v3:
>> - passing intel_bios_encoder_data as argument of
>> intel_bios_init_panel(). Passing NULL to indicate encoder is not
>> initialized yet for dsi as current focus is to enable dual EDP. [Jani]
>> v4:
>> - encoder->devdata used which is initialized before from vbt
>> structure. [Jani]
>>
>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>
> LGTM, but I'd also like an ack from Ville too as he's been doing a bunch
> of changes around this lately.
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

And pushed to drm-intel-next with Ville's IRC ack.

BR,
Jani.


>
>
>> ---
>>  drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
>>  drivers/gpu/drm/i915/display/intel_bios.c     | 16 ++++++++++++++--
>>  drivers/gpu/drm/i915/display/intel_bios.h     |  1 +
>>  drivers/gpu/drm/i915/display/intel_dp.c       |  3 ++-
>>  drivers/gpu/drm/i915/display/intel_lvds.c     |  2 +-
>>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
>>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++++
>>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
>>  8 files changed, 25 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index 3b5305c219ba..5dcfa7feffa9 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>>  	/* attach connector to encoder */
>>  	intel_connector_attach_encoder(intel_connector, encoder);
>>  
>> -	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL);
>> +	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL, NULL);
>>  
>>  	mutex_lock(&dev->mode_config.mutex);
>>  	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>> index 76e86358adb9..e97f1f979a48 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -604,12 +604,14 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
>>  }
>>  
>>  static int opregion_get_panel_type(struct drm_i915_private *i915,
>> +				   const struct intel_bios_encoder_data *devdata,
>>  				   const struct edid *edid)
>>  {
>>  	return intel_opregion_get_panel_type(i915);
>>  }
>>  
>>  static int vbt_get_panel_type(struct drm_i915_private *i915,
>> +			      const struct intel_bios_encoder_data *devdata,
>>  			      const struct edid *edid)
>>  {
>>  	const struct bdb_lvds_options *lvds_options;
>> @@ -625,10 +627,16 @@ static int vbt_get_panel_type(struct drm_i915_private *i915,
>>  		return -1;
>>  	}
>>  
>> +	if (devdata && devdata->child.handle == DEVICE_HANDLE_LFP2)
>> +		return lvds_options->panel_type2;
>> +
>> +	drm_WARN_ON(&i915->drm, devdata && devdata->child.handle != DEVICE_HANDLE_LFP1);
>> +
>>  	return lvds_options->panel_type;
>>  }
>>  
>>  static int pnpid_get_panel_type(struct drm_i915_private *i915,
>> +				const struct intel_bios_encoder_data *devdata,
>>  				const struct edid *edid)
>>  {
>>  	const struct bdb_lvds_lfp_data *data;
>> @@ -675,6 +683,7 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
>>  }
>>  
>>  static int fallback_get_panel_type(struct drm_i915_private *i915,
>> +				   const struct intel_bios_encoder_data *devdata,
>>  				   const struct edid *edid)
>>  {
>>  	return 0;
>> @@ -688,11 +697,13 @@ enum panel_type {
>>  };
>>  
>>  static int get_panel_type(struct drm_i915_private *i915,
>> +			  const struct intel_bios_encoder_data *devdata,
>>  			  const struct edid *edid)
>>  {
>>  	struct {
>>  		const char *name;
>>  		int (*get_panel_type)(struct drm_i915_private *i915,
>> +				      const struct intel_bios_encoder_data *devdata,
>>  				      const struct edid *edid);
>>  		int panel_type;
>>  	} panel_types[] = {
>> @@ -716,7 +727,7 @@ static int get_panel_type(struct drm_i915_private *i915,
>>  	int i;
>>  
>>  	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
>> -		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, edid);
>> +		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, devdata, edid);
>>  
>>  		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
>>  			    panel_types[i].panel_type != 0xff);
>> @@ -3127,11 +3138,12 @@ void intel_bios_init(struct drm_i915_private *i915)
>>  
>>  void intel_bios_init_panel(struct drm_i915_private *i915,
>>  			   struct intel_panel *panel,
>> +			   const struct intel_bios_encoder_data *devdata,
>>  			   const struct edid *edid)
>>  {
>>  	init_vbt_panel_defaults(panel);
>>  
>> -	panel->vbt.panel_type = get_panel_type(i915, edid);
>> +	panel->vbt.panel_type = get_panel_type(i915, devdata, edid);
>>  
>>  	parse_panel_options(i915, panel);
>>  	parse_generic_dtd(i915, panel);
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
>> index b112200ae0a0..e47582b0de0a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> @@ -234,6 +234,7 @@ struct mipi_pps_data {
>>  void intel_bios_init(struct drm_i915_private *dev_priv);
>>  void intel_bios_init_panel(struct drm_i915_private *dev_priv,
>>  			   struct intel_panel *panel,
>> +			   const struct intel_bios_encoder_data *devdata,
>>  			   const struct edid *edid);
>>  void intel_bios_fini_panel(struct intel_panel *panel);
>>  void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 2fac76bcf06d..a0c826b64a1e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5168,6 +5168,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>>  	struct drm_device *dev = &dev_priv->drm;
>>  	struct drm_connector *connector = &intel_connector->base;
>>  	struct drm_display_mode *fixed_mode;
>> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>>  	bool has_dpcd;
>>  	enum pipe pipe = INVALID_PIPE;
>>  	struct edid *edid;
>> @@ -5225,7 +5226,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>>  	intel_connector->edid = edid;
>>  
>>  	intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> -			      IS_ERR(edid) ? NULL : edid);
>> +			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
>>  
>>  	intel_panel_add_edid_fixed_modes(intel_connector,
>>  					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
>> index e55802b45461..730480ac3300 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>> @@ -967,7 +967,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>>  	}
>>  	intel_connector->edid = edid;
>>  
>> -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> +	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL,
>>  			      IS_ERR(edid) ? NULL : edid);
>>  
>>  	/* Try EDID first */
>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> index 2b78a790e1b6..19122bc6d2ab 100644
>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> @@ -2901,7 +2901,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
>>  	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
>>  		goto err;
>>  
>> -	intel_bios_init_panel(i915, &intel_connector->panel, NULL);
>> +	intel_bios_init_panel(i915, &intel_connector->panel, NULL, NULL);
>>  
>>  	/*
>>  	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
>> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> index 3766c09bd65d..509b0a419c20 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> @@ -182,6 +182,10 @@ struct bdb_general_features {
>>  #define GPIO_PIN_ADD_DDC	0x04 /* "ADDCARD DDC GPIO pins" */
>>  #define GPIO_PIN_ADD_DDC_I2C	0x06 /* "ADDCARD DDC/I2C GPIO pins" */
>>  
>> +/* Device handle */
>> +#define DEVICE_HANDLE_LFP1	0x0008
>> +#define DEVICE_HANDLE_LFP2	0x0080
>> +
>>  /* Pre 915 */
>>  #define DEVICE_TYPE_NONE	0x00
>>  #define DEVICE_TYPE_CRT		0x01
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index abda0888c8d4..b9b1fed99874 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -1926,7 +1926,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>>  
>>  	intel_dsi->panel_power_off_time = ktime_get_boottime();
>>  
>> -	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL);
>> +	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL, NULL);
>>  
>>  	if (intel_connector->panel.vbt.dsi.config->dual_link)
>>  		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_C);

-- 
Jani Nikula, Intel Open Source Graphics Center
