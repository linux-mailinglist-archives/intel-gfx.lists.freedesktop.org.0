Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FB7885D4D
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 17:21:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9B9010EF0C;
	Thu, 21 Mar 2024 16:21:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SYHPzxD0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88D7110EF0C;
 Thu, 21 Mar 2024 16:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711038062; x=1742574062;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=KDM2KKMxOL6lej3aKQB4LEAYT8VIGaIrSxfqhOosfd0=;
 b=SYHPzxD0OuhvqDyiPe36R3X8Ts0DP/GQMe2COB8ib6psU6dhZRQKo1Zk
 WTPHzW1qGNYf40KSxbV8kLXn7Li8cFQl7KF9xyPUUvWO36SPixPmH4De/
 3a7iwp5gissuZwJzD0Ep393apHCE4zcqqJcFDAjRiMfI/c/8uugsHdBYb
 ZtndHVQsJVEEbDOYp4OTYq9+jqQ9+XUCFALN4Ba4TflbBLUiU9cF5eM7l
 gCCmhPVMlSGfYb96XBYwLVOECdDWJMnJPFWiIBMv/lYk0gXv9Ryd8Yew2
 Slet+IpDW1qk622XeMW2ZlURqd1eQQ9q+kd2cay+kfEgotQXeqbv8GtNt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="9847196"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; 
   d="scan'208";a="9847196"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 09:21:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; d="scan'208";a="14595556"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 09:21:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: move dmc_firmware_path to display params
In-Reply-To: <20240321161856.3517856-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240321161856.3517856-1-jani.nikula@intel.com>
Date: Thu, 21 Mar 2024 18:20:57 +0200
Message-ID: <87y1ablfo6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 21 Mar 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> The dmc_firmware_path parameter is clearly a display parameter. Move it
> there. This also cleans up the ugly member in struct xe_device.

Hmm, does this actually fix the parameter on xe?!

>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dmc.c            | 8 ++++----
>  drivers/gpu/drm/i915/i915_params.c                  | 3 ---
>  drivers/gpu/drm/i915/i915_params.h                  | 1 -
>  drivers/gpu/drm/xe/xe_device_types.h                | 3 ---
>  6 files changed, 8 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
> index 11e03cfb774d..c8e3d6892e23 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -27,6 +27,9 @@ static struct intel_display_params intel_display_modparams __read_mostly = {
>   * debugfs mode to 0.
>   */
>  
> +intel_display_param_named_unsafe(dmc_firmware_path, charp, 0400,
> +	"DMC firmware path to use instead of the default one");
> +
>  intel_display_param_named_unsafe(vbt_firmware, charp, 0400,
>  	"Load VBT from specified file under /lib/firmware");
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
> index 6206cc51df04..f95a6f79904f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -24,6 +24,7 @@ struct drm_i915_private;
>   *       debugfs file
>   */
>  #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
> +	param(char *, dmc_firmware_path, NULL, 0400) \
>  	param(char *, vbt_firmware, NULL, 0400) \
>  	param(int, lvds_channel_mode, 0, 0400) \
>  	param(int, panel_use_ssc, -1, 0600) \
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 3fa851b5c7a6..b4e730882ce2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -927,7 +927,7 @@ static void dmc_load_work_fn(struct work_struct *work)
>  
>  	err = request_firmware(&fw, dmc->fw_path, i915->drm.dev);
>  
> -	if (err == -ENOENT && !i915->params.dmc_firmware_path) {
> +	if (err == -ENOENT && !i915->display.params.dmc_firmware_path) {
>  		fallback_path = dmc_fallback_path(i915);
>  		if (fallback_path) {
>  			drm_dbg_kms(&i915->drm, "%s not found, falling back to %s\n",
> @@ -1034,14 +1034,14 @@ void intel_dmc_init(struct drm_i915_private *i915)
>  		dmc->max_fw_size = BXT_DMC_MAX_FW_SIZE;
>  	}
>  
> -	if (i915->params.dmc_firmware_path) {
> -		if (strlen(i915->params.dmc_firmware_path) == 0) {
> +	if (i915->display.params.dmc_firmware_path) {
> +		if (strlen(i915->display.params.dmc_firmware_path) == 0) {
>  			drm_info(&i915->drm,
>  				 "Disabling DMC firmware and runtime PM\n");
>  			goto out;
>  		}
>  
> -		dmc->fw_path = i915->params.dmc_firmware_path;
> +		dmc->fw_path = i915->display.params.dmc_firmware_path;
>  	}
>  
>  	if (!dmc->fw_path) {
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index de43048543e8..8c00169e3ab7 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -108,9 +108,6 @@ i915_param_named_unsafe(guc_firmware_path, charp, 0400,
>  i915_param_named_unsafe(huc_firmware_path, charp, 0400,
>  	"HuC firmware path to use instead of the default one");
>  
> -i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
> -	"DMC firmware path to use instead of the default one");
> -
>  i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
>  	"GSC firmware path to use instead of the default one");
>  
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index 1315d7fac850..2eb3f2115ff2 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -51,7 +51,6 @@ struct drm_printer;
>  	param(int, guc_log_level, -1, 0400) \
>  	param(char *, guc_firmware_path, NULL, 0400) \
>  	param(char *, huc_firmware_path, NULL, 0400) \
> -	param(char *, dmc_firmware_path, NULL, 0400) \
>  	param(char *, gsc_firmware_path, NULL, 0400) \
>  	param(bool, memtest, false, 0400) \
>  	param(int, mmio_debug, -IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO), 0600) \
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index 9785eef2e5a4..eeab2002d6db 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -524,9 +524,6 @@ struct xe_device {
>  		unsigned int fsb_freq, mem_freq, is_ddr3;
>  		u8 vblank_enabled;
>  	};
> -	struct {
> -		const char *dmc_firmware_path;
> -	} params;
>  
>  	void *pxp;
>  #endif

-- 
Jani Nikula, Intel
