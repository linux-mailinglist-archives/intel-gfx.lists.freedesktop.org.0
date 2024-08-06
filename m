Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE32949217
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 15:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6DAF10E373;
	Tue,  6 Aug 2024 13:51:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MZtyQlCw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F22B610E373;
 Tue,  6 Aug 2024 13:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722952277; x=1754488277;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=8V4GuqIslnOJ1rRYpnCI9kdF7P2YhR1hLIUip9XXJl8=;
 b=MZtyQlCweSmN1qcBXQaLXWjmInlPtql/An7qLFioh382TvVLqvFJ9Saq
 pKoJE0JNEsjDJojx/tjg2SnYocJwXvElb1ehbxDLI9r2is8AswRB+nGe+
 kLZGAZ9uqxwYz7evtv28Tdeow0rRXeZeEfZ+hHfjX4pOyQ1cqsfA84k0M
 37gv00G4g/vIWUV9kJ3UEew3bZ0qNsQsEic6xApCXFZk/TSzvQlt81OAP
 045ob7kv38zF6aqNCXfQQQW/vyKiPQV4KOZUVNxM5rbu3bipIBkJkxY+R
 DxfbE6ecZZUvWf+caeuXC0fWYQPeYig9M+SrqEzmRoffpVxpLbJtaZI9X w==;
X-CSE-ConnectionGUID: VmQFOa6YRzmm/6TLdEviBQ==
X-CSE-MsgGUID: wA9C017SQR6WfZL4M3zrxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="32353452"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="32353452"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:51:16 -0700
X-CSE-ConnectionGUID: lMW7PWjaSrCz3fqSbroqzg==
X-CSE-MsgGUID: TMiWzXLsQVCaWrVkyZ5S7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="57229410"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:51:16 -0700
Date: Tue, 6 Aug 2024 16:51:32 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/4] drm/i915/acpi: convert to struct intel_display
Message-ID: <ZrIqZHQfDlQ5yVcF@ideak-desk.fi.intel.com>
References: <cover.1722444150.git.jani.nikula@intel.com>
 <19463fca456a37ef3e6272a23efe13f7f28da7b4.1722444150.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19463fca456a37ef3e6272a23efe13f7f28da7b4.1722444150.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 31, 2024 at 07:44:33PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_acpi.[ch] to struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_acpi.c      | 17 ++++++++---------
>  drivers/gpu/drm/i915/display/intel_acpi.h      | 18 +++++++++---------
>  .../drm/i915/display/intel_display_driver.c    |  8 +++++---
>  drivers/gpu/drm/i915/display/intel_opregion.c  | 10 ++++++----
>  4 files changed, 28 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
> index 0aa3999374e2..c3b29a331d72 100644
> --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> @@ -183,9 +183,9 @@ void intel_unregister_dsm_handler(void)
>  {
>  }
>  
> -void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> +void intel_dsm_get_bios_data_funcs_supported(struct intel_display *display)
>  {
> -	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
>  	acpi_handle dhandle;
>  	union acpi_object *obj;
>  
> @@ -263,15 +263,14 @@ static u32 acpi_display_type(struct intel_connector *connector)
>  	return display_type;
>  }
>  
> -void intel_acpi_device_id_update(struct drm_i915_private *dev_priv)
> +void intel_acpi_device_id_update(struct intel_display *display)
>  {
> -	struct drm_device *drm_dev = &dev_priv->drm;
>  	struct intel_connector *connector;
>  	struct drm_connector_list_iter conn_iter;
>  	u8 display_index[16] = {};
>  
>  	/* Populate the ACPI IDs for all connectors for a given drm_device */
> -	drm_connector_list_iter_begin(drm_dev, &conn_iter);
> +	drm_connector_list_iter_begin(display->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
>  		u32 device_id, type;
>  
> @@ -288,10 +287,10 @@ void intel_acpi_device_id_update(struct drm_i915_private *dev_priv)
>  }
>  
>  /* NOTE: The connector order must be final before this is called. */
> -void intel_acpi_assign_connector_fwnodes(struct drm_i915_private *i915)
> +void intel_acpi_assign_connector_fwnodes(struct intel_display *display)
>  {
> +	struct drm_device *drm_dev = display->drm;
>  	struct drm_connector_list_iter conn_iter;
> -	struct drm_device *drm_dev = &i915->drm;
>  	struct fwnode_handle *fwnode = NULL;
>  	struct drm_connector *connector;
>  	struct acpi_device *adev;
> @@ -333,7 +332,7 @@ void intel_acpi_assign_connector_fwnodes(struct drm_i915_private *i915)
>  	fwnode_handle_put(fwnode);
>  }
>  
> -void intel_acpi_video_register(struct drm_i915_private *i915)
> +void intel_acpi_video_register(struct intel_display *display)
>  {
>  	struct drm_connector_list_iter conn_iter;
>  	struct drm_connector *connector;
> @@ -347,7 +346,7 @@ void intel_acpi_video_register(struct drm_i915_private *i915)
>  	 * a native backlight later and acpi_video_register_backlight() should
>  	 * only be called after any native backlights have been registered.
>  	 */
> -	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +	drm_connector_list_iter_begin(display->drm, &conn_iter);
>  	drm_for_each_connector_iter(connector, &conn_iter) {
>  		struct intel_panel *panel = &to_intel_connector(connector)->panel;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_acpi.h b/drivers/gpu/drm/i915/display/intel_acpi.h
> index 6a0007452f95..788a63071661 100644
> --- a/drivers/gpu/drm/i915/display/intel_acpi.h
> +++ b/drivers/gpu/drm/i915/display/intel_acpi.h
> @@ -6,26 +6,26 @@
>  #ifndef __INTEL_ACPI_H__
>  #define __INTEL_ACPI_H__
>  
> -struct drm_i915_private;
> +struct intel_display;
>  
>  #ifdef CONFIG_ACPI
>  void intel_register_dsm_handler(void);
>  void intel_unregister_dsm_handler(void);
> -void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915);
> -void intel_acpi_device_id_update(struct drm_i915_private *i915);
> -void intel_acpi_assign_connector_fwnodes(struct drm_i915_private *i915);
> -void intel_acpi_video_register(struct drm_i915_private *i915);
> +void intel_dsm_get_bios_data_funcs_supported(struct intel_display *display);
> +void intel_acpi_device_id_update(struct intel_display *display);
> +void intel_acpi_assign_connector_fwnodes(struct intel_display *display);
> +void intel_acpi_video_register(struct intel_display *display);
>  #else
>  static inline void intel_register_dsm_handler(void) { return; }
>  static inline void intel_unregister_dsm_handler(void) { return; }
>  static inline
> -void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915) { return; }
> +void intel_dsm_get_bios_data_funcs_supported(struct intel_display *display) { return; }
>  static inline
> -void intel_acpi_device_id_update(struct drm_i915_private *i915) { return; }
> +void intel_acpi_device_id_update(struct intel_display *display) { return; }
>  static inline
> -void intel_acpi_assign_connector_fwnodes(struct drm_i915_private *i915) { return; }
> +void intel_acpi_assign_connector_fwnodes(struct intel_display *display) { return; }
>  static inline
> -void intel_acpi_video_register(struct drm_i915_private *i915) { return; }
> +void intel_acpi_video_register(struct intel_display *display) { return; }
>  #endif /* CONFIG_ACPI */
>  
>  #endif /* __INTEL_ACPI_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 13e206ec450f..392c10359a52 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -416,7 +416,8 @@ bool intel_display_driver_check_access(struct drm_i915_private *i915)
>  /* part #2: call after irq install, but before gem init */
>  int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>  {
> -	struct drm_device *dev = &i915->drm;
> +	struct intel_display *display = &i915->display;
> +	struct drm_device *dev = display->drm;
>  	enum pipe pipe;
>  	int ret;
>  
> @@ -466,7 +467,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>  
>  	drm_modeset_lock_all(dev);
>  	intel_modeset_setup_hw_state(i915, dev->mode_config.acquire_ctx);
> -	intel_acpi_assign_connector_fwnodes(i915);
> +	intel_acpi_assign_connector_fwnodes(display);
>  	drm_modeset_unlock_all(dev);
>  
>  	intel_initial_plane_config(i915);
> @@ -526,6 +527,7 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
>  
>  void intel_display_driver_register(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display = &i915->display;
>  	struct drm_printer p = drm_dbg_printer(&i915->drm, DRM_UT_KMS,
>  					       "i915 display info:");
>  
> @@ -534,7 +536,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
>  
>  	/* Must be done after probing outputs */
>  	intel_opregion_register(i915);
> -	intel_acpi_video_register(i915);
> +	intel_acpi_video_register(display);
>  
>  	intel_audio_init(i915);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 68bd5101ec89..4ff646a7f05d 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -722,7 +722,8 @@ static void set_did(struct intel_opregion *opregion, int i, u32 val)
>  
>  static void intel_didl_outputs(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_opregion *opregion = dev_priv->display.opregion;
> +	struct intel_display *display = &dev_priv->display;
> +	struct intel_opregion *opregion = display->opregion;
>  	struct intel_connector *connector;
>  	struct drm_connector_list_iter conn_iter;
>  	int i = 0, max_outputs;
> @@ -737,7 +738,7 @@ static void intel_didl_outputs(struct drm_i915_private *dev_priv)
>  	max_outputs = ARRAY_SIZE(opregion->acpi->didl) +
>  		ARRAY_SIZE(opregion->acpi->did2);
>  
> -	intel_acpi_device_id_update(dev_priv);
> +	intel_acpi_device_id_update(display);
>  
>  	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
> @@ -1189,7 +1190,8 @@ void intel_opregion_register(struct drm_i915_private *i915)
>  
>  static void intel_opregion_resume_display(struct drm_i915_private *i915)
>  {
> -	struct intel_opregion *opregion = i915->display.opregion;
> +	struct intel_display *display = &i915->display;
> +	struct intel_opregion *opregion = display->opregion;
>  
>  	if (opregion->acpi) {
>  		intel_didl_outputs(i915);
> @@ -1210,7 +1212,7 @@ static void intel_opregion_resume_display(struct drm_i915_private *i915)
>  	}
>  
>  	/* Some platforms abuse the _DSM to enable MUX */
> -	intel_dsm_get_bios_data_funcs_supported(i915);
> +	intel_dsm_get_bios_data_funcs_supported(display);
>  }
>  
>  void intel_opregion_resume(struct drm_i915_private *i915)
> -- 
> 2.39.2
> 
