Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA87768ED31
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 11:45:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAFCD10E1F0;
	Wed,  8 Feb 2023 10:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E3FD10E1F0
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 10:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675853098; x=1707389098;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EldwJPSJNo5ovdWkMVXCItjTzCnr9UxT3+JUZUVg+yc=;
 b=MKeoXDtbw90yjpXtZEwz07sNzUpjhwyg2JHOUsqTWEcdSaL2FT5L4WET
 aJKYgGR42+xliWMUwFNdSr7lfkPm4Mz4g7jgzkqenwMNd79hUtp4igXKC
 lm1T8RxlcPpuUYecAVuqQrwNdQJqECBwPW4zkcLTfdPmTCN3NSh7fp8Pd
 MhrdB80s4V22PlqCJymjDDqDKTJa2JHj5+fRtmkDnVV7MsAOqhQWktnB2
 4kwewLAAqyBUwO9Lcd83Za6g6uCNbGKrvi/l+sWtxYn1sD3WXXtHY6qsY
 pr+K0avly9gbmvALjfZ3i6Ep3XRUHf7THUsT/UPK0t0oJWJskQkpn7aVD g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="310114564"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="310114564"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 02:44:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="841139316"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="841139316"
Received: from joergber-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.82])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 02:44:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <Y+KjLLnhiFAldJjl@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230207110619.1821992-1-jani.nikula@intel.com>
 <Y+KjLLnhiFAldJjl@mdroper-desk1.amr.corp.intel.com>
Date: Wed, 08 Feb 2023 12:44:53 +0200
Message-ID: <87ilgcxwpm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: drop "ucode" from function
 names
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 07 Feb 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Tue, Feb 07, 2023 at 01:06:19PM +0200, Jani Nikula wrote:
>> The ucode part in the init, fini, suspend and resume function names is
>> just unnecessary. Drop it.
>> 
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c |  6 +++---
>>  drivers/gpu/drm/i915/display/intel_dmc.c     | 20 ++++++++++----------
>>  drivers/gpu/drm/i915/display/intel_dmc.h     |  8 ++++----
>>  drivers/gpu/drm/i915/i915_driver.c           |  6 +++---
>>  4 files changed, 20 insertions(+), 20 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 166662ade593..a8c91fda40a8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -8639,7 +8639,7 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
>>  	if (!HAS_DISPLAY(i915))
>>  		return 0;
>>  
>> -	intel_dmc_ucode_init(i915);
>> +	intel_dmc_init(i915);
>>  
>>  	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
>>  	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
>> @@ -8674,7 +8674,7 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
>>  	return 0;
>>  
>>  cleanup_vga_client_pw_domain_dmc:
>> -	intel_dmc_ucode_fini(i915);
>> +	intel_dmc_fini(i915);
>>  	intel_power_domains_driver_remove(i915);
>>  	intel_vga_unregister(i915);
>>  cleanup_bios:
>> @@ -9000,7 +9000,7 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
>>  /* part #3: call after gem init */
>>  void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
>>  {
>> -	intel_dmc_ucode_fini(i915);
>> +	intel_dmc_fini(i915);
>>  
>>  	intel_power_domains_driver_remove(i915);
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index 3b8e8193d042..f70ada2357dc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -918,13 +918,13 @@ static void dmc_load_work_fn(struct work_struct *work)
>>  }
>>  
>>  /**
>> - * intel_dmc_ucode_init() - initialize the firmware loading.
>> + * intel_dmc_init() - initialize the firmware loading.
>>   * @dev_priv: i915 drm device.
>>   *
>>   * This function is called at the time of loading the display driver to read
>>   * firmware from a .bin file and copied into a internal memory.
>>   */
>> -void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
>> +void intel_dmc_init(struct drm_i915_private *dev_priv)
>>  {
>>  	struct intel_dmc *dmc = &dev_priv->display.dmc;
>>  
>> @@ -1002,14 +1002,14 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
>>  }
>>  
>>  /**
>> - * intel_dmc_ucode_suspend() - prepare DMC firmware before system suspend
>> + * intel_dmc_suspend() - prepare DMC firmware before system suspend
>>   * @dev_priv: i915 drm device
>>   *
>>   * Prepare the DMC firmware before entering system suspend. This includes
>>   * flushing pending work items and releasing any resources acquired during
>>   * init.
>>   */
>> -void intel_dmc_ucode_suspend(struct drm_i915_private *dev_priv)
>> +void intel_dmc_suspend(struct drm_i915_private *dev_priv)
>>  {
>>  	if (!HAS_DMC(dev_priv))
>>  		return;
>> @@ -1022,13 +1022,13 @@ void intel_dmc_ucode_suspend(struct drm_i915_private *dev_priv)
>>  }
>>  
>>  /**
>> - * intel_dmc_ucode_resume() - init DMC firmware during system resume
>> + * intel_dmc_resume() - init DMC firmware during system resume
>>   * @dev_priv: i915 drm device
>>   *
>>   * Reinitialize the DMC firmware during system resume, reacquiring any
>> - * resources released in intel_dmc_ucode_suspend().
>> + * resources released in intel_dmc_suspend().
>>   */
>> -void intel_dmc_ucode_resume(struct drm_i915_private *dev_priv)
>> +void intel_dmc_resume(struct drm_i915_private *dev_priv)
>>  {
>>  	if (!HAS_DMC(dev_priv))
>>  		return;
>> @@ -1042,20 +1042,20 @@ void intel_dmc_ucode_resume(struct drm_i915_private *dev_priv)
>>  }
>>  
>>  /**
>> - * intel_dmc_ucode_fini() - unload the DMC firmware.
>> + * intel_dmc_fini() - unload the DMC firmware.
>>   * @dev_priv: i915 drm device.
>>   *
>>   * Firmmware unloading includes freeing the internal memory and reset the
>>   * firmware loading status.
>>   */
>> -void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
>> +void intel_dmc_fini(struct drm_i915_private *dev_priv)
>>  {
>>  	enum intel_dmc_id dmc_id;
>>  
>>  	if (!HAS_DMC(dev_priv))
>>  		return;
>>  
>> -	intel_dmc_ucode_suspend(dev_priv);
>> +	intel_dmc_suspend(dev_priv);
>>  	drm_WARN_ON(&dev_priv->drm, dev_priv->display.dmc.wakeref);
>>  
>>  	for_each_dmc_id(dmc_id)
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
>> index 88eae74dbcf2..c9808bbe7162 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>> @@ -46,14 +46,14 @@ struct intel_dmc {
>>  	intel_wakeref_t wakeref;
>>  };
>>  
>> -void intel_dmc_ucode_init(struct drm_i915_private *i915);
>> +void intel_dmc_init(struct drm_i915_private *i915);
>>  void intel_dmc_load_program(struct drm_i915_private *i915);
>>  void intel_dmc_disable_program(struct drm_i915_private *i915);
>>  void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe);
>>  void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe);
>> -void intel_dmc_ucode_fini(struct drm_i915_private *i915);
>> -void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
>> -void intel_dmc_ucode_resume(struct drm_i915_private *i915);
>> +void intel_dmc_fini(struct drm_i915_private *i915);
>> +void intel_dmc_suspend(struct drm_i915_private *i915);
>> +void intel_dmc_resume(struct drm_i915_private *i915);
>>  bool intel_dmc_has_payload(struct drm_i915_private *i915);
>>  void intel_dmc_debugfs_register(struct drm_i915_private *i915);
>>  void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index 13bf4fe52f9f..57305bb00dbc 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -1004,7 +1004,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>>  	intel_suspend_encoders(i915);
>>  	intel_shutdown_encoders(i915);
>>  
>> -	intel_dmc_ucode_suspend(i915);
>> +	intel_dmc_suspend(i915);
>>  
>>  	i915_gem_suspend(i915);
>>  
>> @@ -1096,7 +1096,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>>  
>>  	dev_priv->suspend_count++;
>>  
>> -	intel_dmc_ucode_suspend(dev_priv);
>> +	intel_dmc_suspend(dev_priv);
>>  
>>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>>  
>> @@ -1217,7 +1217,7 @@ static int i915_drm_resume(struct drm_device *dev)
>>  	/* Must be called after GGTT is resumed. */
>>  	intel_dpt_resume(dev_priv);
>>  
>> -	intel_dmc_ucode_resume(dev_priv);
>> +	intel_dmc_resume(dev_priv);
>>  
>>  	i915_restore_display(dev_priv);
>>  	intel_pps_unlock_regs_wa(dev_priv);
>> -- 
>> 2.34.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
