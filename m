Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1E2AC8B0B
	for <lists+intel-gfx@lfdr.de>; Fri, 30 May 2025 11:38:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD16810E7DC;
	Fri, 30 May 2025 09:38:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bSRDkYf1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34AE10E7D1;
 Fri, 30 May 2025 09:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748597894; x=1780133894;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kkRfHVi2mSg1JR5D+ZHk1sMKiSzGNQ3LGWC0wLHdqqE=;
 b=bSRDkYf1lK2ZuyNnarIyk5BUIb8ph7diNVgxOzAdCWRwUaYhiWeR2voO
 fmO+3kp7xWZU14qAONLoX+7Ml6p2f/vbCh6J/GhOOP+JbwxhNq6M+4eXb
 xXJAPo4YB08Ter1LERf6hJA8Rfc3BQo4WBcmQNqMVwPmxKb+YrnoP5Kcm
 GE2dgDnvbqY6wqZ8aqzSItH2nLU6lsW7lidQkj2KaIGzhJRmNae/QmWF8
 5ADQ32o2yj92Duz6haNgAkr1on6dst+qgE19Z5BOjQjfS84U3RCxRUlJX
 yOMsDC+bLZb9tk/UZGZpbmMxToRDwZhAkY3h0ODSklyJIkv3RcqQ533Ub Q==;
X-CSE-ConnectionGUID: EZ7hpYvES46IafuuVuiflA==
X-CSE-MsgGUID: vmMVhYtSTySMEwBi19onRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11448"; a="62086773"
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="62086773"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2025 02:38:12 -0700
X-CSE-ConnectionGUID: QGd5HGSwSOypcf6mLAnV0A==
X-CSE-MsgGUID: t4HRNSRbS0e64fCCvg9XTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="148619287"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2025 02:38:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: add intel_display_device_present()
In-Reply-To: <aDYPImZiZ7hpDWeG@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250527114645.3683025-1-jani.nikula@intel.com>
 <aDYPImZiZ7hpDWeG@intel.com>
Date: Fri, 30 May 2025 12:38:07 +0300
Message-ID: <ef0fd9f5eee77510a2498c77d5261e259ae78646@intel.com>
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

On Tue, 27 May 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, May 27, 2025 at 02:46:45PM +0300, Jani Nikula wrote:
>> Add a proper function for display && HAS_DISPLAY(display) to hide direct
>> struct intel_display access from a number of places outside of display.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_device.c   |  5 +++
>>  .../drm/i915/display/intel_display_device.h   |  1 +
>>  .../i915/gem/selftests/i915_gem_client_blt.c  |  4 +--
>>  drivers/gpu/drm/i915/i915_driver.c            | 17 +++++-----
>>  drivers/gpu/drm/i915/i915_switcheroo.c        |  7 ++--
>>  drivers/gpu/drm/i915/soc/intel_dram.c         |  3 +-
>>  drivers/gpu/drm/xe/display/xe_display.c       | 33 ++++++++-----------
>>  7 files changed, 36 insertions(+), 34 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>> index 1d8c2036d967..765243e3e22d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> @@ -1929,6 +1929,11 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
>>  	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
>>  }
>>  
>> +bool intel_display_device_present(struct intel_display *display)
>> +{
>> +	return display && HAS_DISPLAY(display);
>> +}
>> +
>>  /*
>>   * Assuming the device has display hardware, should it be enabled?
>>   *
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 0ac5484c0043..f676aa9ecdf8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -308,6 +308,7 @@ struct intel_display_device_info {
>>  	} color;
>>  };
>>  
>> +bool intel_display_device_present(struct intel_display *display);
>>  bool intel_display_device_enabled(struct intel_display *display);
>>  struct intel_display *intel_display_device_probe(struct pci_dev *pdev);
>>  void intel_display_device_remove(struct intel_display *display);
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
>> index 86d9d2fcb6a6..4fa5caa1ec6d 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
>> @@ -5,7 +5,7 @@
>>  
>>  #include "i915_selftest.h"
>>  
>> -#include "display/intel_display_core.h"
>> +#include "display/intel_display_device.h"
>>  #include "gt/intel_context.h"
>>  #include "gt/intel_engine_regs.h"
>>  #include "gt/intel_engine_user.h"
>> @@ -121,7 +121,7 @@ static bool fastblit_supports_x_tiling(const struct drm_i915_private *i915)
>>  	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
>>  		return false;
>>  
>> -	return HAS_DISPLAY(i915);
>> +	return intel_display_device_present(i915->display);
>>  }
>>  
>>  static bool fast_blit_ok(const struct blit_buffer *buf)
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index 3b0bda74697d..937495eb5690 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -51,13 +51,14 @@
>>  #include "display/intel_bw.h"
>>  #include "display/intel_cdclk.h"
>>  #include "display/intel_crtc.h"
>> -#include "display/intel_display_core.h"
>> +#include "display/intel_display_device.h"
>>  #include "display/intel_display_driver.h"
>>  #include "display/intel_dmc.h"
>>  #include "display/intel_dp.h"
>>  #include "display/intel_dpt.h"
>>  #include "display/intel_encoder.h"
>>  #include "display/intel_fbdev.h"
>> +#include "display/intel_gmbus.h"
>>  #include "display/intel_hotplug.h"
>>  #include "display/intel_opregion.h"
>>  #include "display/intel_overlay.h"
>> @@ -975,7 +976,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>>  	intel_power_domains_disable(display);
>>  
>>  	drm_client_dev_suspend(&i915->drm, false);
>> -	if (HAS_DISPLAY(i915)) {
>> +	if (intel_display_device_present(i915->display)) {
>>  		drm_kms_helper_poll_disable(&i915->drm);
>>  		intel_display_driver_disable_user_access(display);
>>  
>> @@ -987,7 +988,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>>  	intel_irq_suspend(i915);
>>  	intel_hpd_cancel_work(display);
>>  
>> -	if (HAS_DISPLAY(i915))
>> +	if (intel_display_device_present(i915->display))
>>  		intel_display_driver_suspend_access(display);
>>  
>>  	intel_encoder_suspend_all(display);
>> @@ -1058,7 +1059,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>>  	 * properly. */
>>  	intel_power_domains_disable(display);
>>  	drm_client_dev_suspend(dev, false);
>> -	if (HAS_DISPLAY(dev_priv)) {
>> +	if (intel_display_device_present(dev_priv->display)) {
>>  		drm_kms_helper_poll_disable(dev);
>>  		intel_display_driver_disable_user_access(display);
>>  	}
>> @@ -1070,7 +1071,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>>  	intel_irq_suspend(dev_priv);
>>  	intel_hpd_cancel_work(display);
>>  
>> -	if (HAS_DISPLAY(dev_priv))
>> +	if (intel_display_device_present(dev_priv->display))
>>  		intel_display_driver_suspend_access(display);
>>  
>>  	intel_encoder_suspend_all(display);
>> @@ -1217,7 +1218,7 @@ static int i915_drm_resume(struct drm_device *dev)
>>  	 */
>>  	intel_irq_resume(dev_priv);
>>  
>> -	if (HAS_DISPLAY(dev_priv))
>> +	if (intel_display_device_present(dev_priv->display))
>>  		drm_mode_config_reset(dev);
>>  
>>  	i915_gem_resume(dev_priv);
>> @@ -1226,14 +1227,14 @@ static int i915_drm_resume(struct drm_device *dev)
>>  
>>  	intel_clock_gating_init(dev_priv);
>>  
>> -	if (HAS_DISPLAY(dev_priv))
>> +	if (intel_display_device_present(dev_priv->display))
>>  		intel_display_driver_resume_access(display);
>>  
>>  	intel_hpd_init(display);
>>  
>>  	intel_display_driver_resume(display);
>>  
>> -	if (HAS_DISPLAY(dev_priv)) {
>> +	if (intel_display_device_present(dev_priv->display)) {
>>  		intel_display_driver_enable_user_access(display);
>>  		drm_kms_helper_poll_enable(dev);
>>  	}
>> diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
>> index 4c02a04be681..431a8559e489 100644
>> --- a/drivers/gpu/drm/i915/i915_switcheroo.c
>> +++ b/drivers/gpu/drm/i915/i915_switcheroo.c
>> @@ -5,7 +5,7 @@
>>  
>>  #include <linux/vga_switcheroo.h>
>>  
>> -#include "display/intel_display_core.h"
>> +#include "display/intel_display_device.h"
>>  
>>  #include "i915_driver.h"
>>  #include "i915_drv.h"
>> @@ -21,7 +21,7 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
>>  		dev_err(&pdev->dev, "DRM not initialized, aborting switch.\n");
>>  		return;
>>  	}
>> -	if (!HAS_DISPLAY(i915)) {
>> +	if (!intel_display_device_present(i915->display)) {
>>  		dev_err(&pdev->dev, "Device state not initialized, aborting switch.\n");
>>  		return;
>>  	}
>> @@ -50,7 +50,8 @@ static bool i915_switcheroo_can_switch(struct pci_dev *pdev)
>>  	 * locking inversion with the driver load path. And the access here is
>>  	 * completely racy anyway. So don't bother with locking for now.
>>  	 */
>> -	return i915 && HAS_DISPLAY(i915) && atomic_read(&i915->drm.open_count) == 0;
>> +	return i915 && intel_display_device_present(i915->display) &&
>> +		atomic_read(&i915->drm.open_count) == 0;
>>  }
>>  
>>  static const struct vga_switcheroo_client_ops i915_switcheroo_ops = {
>> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
>> index 9f806ce0eb9e..ecfa5347ffd6 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>> @@ -716,7 +716,8 @@ void intel_dram_detect(struct drm_i915_private *i915)
>>  	detect_fsb_freq(i915);
>>  	detect_mem_freq(i915);
>>  
>> -	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
>> +	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) ||
>> +	    !intel_display_device_present(i915->display))
>>  		return;
>>  
>>  	/*
>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>> index 3f92bf51813e..142e2065fce8 100644
>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>> @@ -20,7 +20,7 @@
>>  #include "intel_audio.h"
>>  #include "intel_bw.h"
>>  #include "intel_display.h"
>> -#include "intel_display_core.h"
>> +#include "intel_display_device.h"
>>  #include "intel_display_driver.h"
>>  #include "intel_display_irq.h"
>>  #include "intel_display_types.h"
>> @@ -37,13 +37,6 @@
>>  
>>  /* Xe device functions */
>>  
>> -static bool has_display(struct xe_device *xe)
>> -{
>> -	struct intel_display *display = xe->display;
>> -
>> -	return HAS_DISPLAY(display);
>> -}
>> -
>>  /**
>>   * xe_display_driver_probe_defer - Detect if we need to wait for other drivers
>>   *				   early on
>> @@ -287,7 +280,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
>>  
>>  	intel_dmc_suspend(display);
>>  
>> -	if (has_display(xe))
>> +	if (intel_display_device_present(display))
>>  		intel_hpd_poll_enable(display);
>>  }
>>  
>> @@ -300,14 +293,14 @@ static void xe_display_disable_d3cold(struct xe_device *xe)
>>  
>>  	intel_dmc_resume(display);
>>  
>> -	if (has_display(xe))
>> +	if (intel_display_device_present(display))
>>  		drm_mode_config_reset(&xe->drm);
>>  
>>  	intel_display_driver_init_hw(display);
>>  
>>  	intel_hpd_init(display);
>>  
>> -	if (has_display(xe))
>> +	if (intel_display_device_present(display))
>>  		intel_hpd_poll_disable(display);
>>  
>>  	intel_opregion_resume(display);
>> @@ -330,7 +323,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
>>  	intel_power_domains_disable(display);
>>  	drm_client_dev_suspend(&xe->drm, false);
>>  
>> -	if (has_display(xe)) {
>> +	if (intel_display_device_present(display)) {
>>  		drm_kms_helper_poll_disable(&xe->drm);
>>  		intel_display_driver_disable_user_access(display);
>>  		intel_display_driver_suspend(display);
>> @@ -340,7 +333,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
>>  
>>  	intel_hpd_cancel_work(display);
>>  
>> -	if (has_display(xe)) {
>> +	if (intel_display_device_present(display)) {
>>  		intel_display_driver_suspend_access(display);
>>  		intel_encoder_suspend_all(display);
>>  	}
>> @@ -360,7 +353,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>>  	intel_power_domains_disable(display);
>>  	drm_client_dev_suspend(&xe->drm, false);
>>  
>> -	if (has_display(xe)) {
>> +	if (intel_display_device_present(display)) {
>>  		drm_kms_helper_poll_disable(&xe->drm);
>>  		intel_display_driver_disable_user_access(display);
>>  		intel_display_driver_suspend(display);
>> @@ -370,7 +363,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>>  	intel_dp_mst_suspend(display);
>>  	intel_hpd_cancel_work(display);
>>  
>> -	if (has_display(xe))
>> +	if (intel_display_device_present(display))
>>  		intel_display_driver_suspend_access(display);
>>  
>>  	intel_encoder_suspend_all(display);
>> @@ -459,23 +452,23 @@ void xe_display_pm_resume(struct xe_device *xe)
>>  
>>  	intel_dmc_resume(display);
>>  
>> -	if (has_display(xe))
>> +	if (intel_display_device_present(display))
>>  		drm_mode_config_reset(&xe->drm);
>
> It doesn't matter how we call it, has_display, display_device_present,
> I still have a concern:
>
> why would we runt intel_display_driver_init_hw like below if we don't
> have display or if display_device is not present?
> Where is the line traced between what to call and what to not call?
>
> Any way to move decisions upper level or more generalized?

I think both xe and i915 should call a fairly small set of display
functions, and all of these conditions should be hidden there.

I think the special case is, we find display hardware, but the pipes are
fused off. We can only figure that out after we've already set up a
bunch off stuff, so we should also clean up afterwards.

BR,
Jani.


>
> Anyway, the helper function itself is better than the double usage
> that we currently have, so
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
>>  
>>  	intel_display_driver_init_hw(display);
>>  
>> -	if (has_display(xe))
>> +	if (intel_display_device_present(display))
>>  		intel_display_driver_resume_access(display);
>>  
>>  	intel_hpd_init(display);
>>  
>> -	if (has_display(xe)) {
>> +	if (intel_display_device_present(display)) {
>>  		intel_display_driver_resume(display);
>>  		drm_kms_helper_poll_enable(&xe->drm);
>>  		intel_display_driver_enable_user_access(display);
>>  	}
>>  
>> -	if (has_display(xe))
>> +	if (intel_display_device_present(display))
>>  		intel_hpd_poll_disable(display);
>>  
>>  	intel_opregion_resume(display);
>> @@ -540,7 +533,7 @@ int xe_display_probe(struct xe_device *xe)
>>  
>>  	xe->display = display;
>>  
>> -	if (has_display(xe))
>> +	if (intel_display_device_present(display))
>>  		return 0;
>>  
>>  no_display:
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
