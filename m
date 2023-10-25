Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1572A7D66B4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 11:25:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC9B10E613;
	Wed, 25 Oct 2023 09:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E0AB10E61C
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 09:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698225921; x=1729761921;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Y9MuxnKyETN51lNGlu+/gx8OMmeVtG+FFSlaWH7qZt0=;
 b=ayFq0bk/Sib0oosCRUVMM4miltmOLCk1gdjI6UR+w/qhqFD9tEoUIRcD
 wC6gl5TOAQXHhqwuk+RbQpr1/EUa20NezPc6YwIWPC7QwkTVtDAEl5dyK
 uOT/n8CCtfftg/9jv/+pGVpQIppoKkB/z/UPGCCqySlRsdbteMhtQLIff
 ChKcmDSYsmmAO49rjpFwEiR2m2zYnJ/ofStoWMhIlzXTWruHnccUasj9V
 QpTjRuWGBUIcwy8sSA4sA6/HHTEFDnxdPfb+CS9jEKilDHxRq2oIqs1wu
 YXn4p94c3GXVbxyV+egvpHFweoDskJZLCcfJa2GwuRkFhyFjQ5mgBXjcT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="473508380"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="473508380"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 02:25:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="1005946310"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="1005946310"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.48.142])
 ([10.252.48.142])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 02:25:19 -0700
Message-ID: <03c7b349-9420-72b8-b6e3-e2fc813b2835@linux.intel.com>
Date: Wed, 25 Oct 2023 11:25:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231024130448.576297-1-jani.nikula@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20231024130448.576297-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: fix Makefile sort and indent
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


On 10/24/2023 3:04 PM, Jani Nikula wrote:
> Unify the line continuations and indents, and sort the build lists.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> ---
>
> Note: This is easiest to review by applying and looking at 'git show -w'

Thanks for the hint :)

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/Makefile | 169 ++++++++++++++++++----------------
>   1 file changed, 89 insertions(+), 80 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 88b2bb005014..bc785dd89c19 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -47,33 +47,34 @@ subdir-ccflags-y += -I$(srctree)/$(src)
>   # Please keep these build lists sorted!
>   
>   # core driver code
> -i915-y += i915_driver.o \
> -	  i915_drm_client.o \
> -	  i915_config.o \
> -	  i915_getparam.o \
> -	  i915_ioctl.o \
> -	  i915_irq.o \
> -	  i915_mitigations.o \
> -	  i915_module.o \
> -	  i915_params.o \
> -	  i915_pci.o \
> -	  i915_scatterlist.o \
> -	  i915_suspend.o \
> -	  i915_switcheroo.o \
> -	  i915_sysfs.o \
> -	  i915_utils.o \
> -	  intel_clock_gating.o \
> -	  intel_device_info.o \
> -	  intel_memory_region.o \
> -	  intel_pcode.o \
> -	  intel_region_ttm.o \
> -	  intel_runtime_pm.o \
> -	  intel_sbi.o \
> -	  intel_step.o \
> -	  intel_uncore.o \
> -	  intel_wakeref.o \
> -	  vlv_sideband.o \
> -	  vlv_suspend.o
> +i915-y += \
> +	i915_config.o \
> +	i915_driver.o \
> +	i915_drm_client.o \
> +	i915_getparam.o \
> +	i915_ioctl.o \
> +	i915_irq.o \
> +	i915_mitigations.o \
> +	i915_module.o \
> +	i915_params.o \
> +	i915_pci.o \
> +	i915_scatterlist.o \
> +	i915_suspend.o \
> +	i915_switcheroo.o \
> +	i915_sysfs.o \
> +	i915_utils.o \
> +	intel_clock_gating.o \
> +	intel_device_info.o \
> +	intel_memory_region.o \
> +	intel_pcode.o \
> +	intel_region_ttm.o \
> +	intel_runtime_pm.o \
> +	intel_sbi.o \
> +	intel_step.o \
> +	intel_uncore.o \
> +	intel_wakeref.o \
> +	vlv_sideband.o \
> +	vlv_suspend.o
>   
>   # core peripheral code
>   i915-y += \
> @@ -90,13 +91,15 @@ i915-y += \
>   	i915_syncmap.o \
>   	i915_user_extensions.o
>   
> -i915-$(CONFIG_COMPAT)   += i915_ioc32.o
> +i915-$(CONFIG_COMPAT) += \
> +	i915_ioc32.o
>   i915-$(CONFIG_DEBUG_FS) += \
>   	i915_debugfs.o \
>   	i915_debugfs_params.o \
>   	display/intel_display_debugfs.o \
>   	display/intel_pipe_crc.o
> -i915-$(CONFIG_PERF_EVENTS) += i915_pmu.o
> +i915-$(CONFIG_PERF_EVENTS) += \
> +	i915_pmu.o
>   
>   # "Graphics Technology" (aka we talk to the gpu)
>   gt-y += \
> @@ -153,7 +156,8 @@ gt-y += \
>   	gt/sysfs_engines.o
>   
>   # x86 intel-gtt module support
> -gt-$(CONFIG_X86) += gt/intel_ggtt_gmch.o
> +gt-$(CONFIG_X86) += \
> +	gt/intel_ggtt_gmch.o
>   # autogenerated null render state
>   gt-y += \
>   	gt/gen6_renderstate.o \
> @@ -172,9 +176,9 @@ gem-y += \
>   	gem/i915_gem_domain.o \
>   	gem/i915_gem_execbuffer.o \
>   	gem/i915_gem_internal.o \
> -	gem/i915_gem_object.o \
>   	gem/i915_gem_lmem.o \
>   	gem/i915_gem_mman.o \
> +	gem/i915_gem_object.o \
>   	gem/i915_gem_pages.o \
>   	gem/i915_gem_phys.o \
>   	gem/i915_gem_pm.o \
> @@ -191,57 +195,61 @@ gem-y += \
>   	gem/i915_gem_wait.o \
>   	gem/i915_gemfs.o
>   i915-y += \
> -	  $(gem-y) \
> -	  i915_active.o \
> -	  i915_cmd_parser.o \
> -	  i915_deps.o \
> -	  i915_gem_evict.o \
> -	  i915_gem_gtt.o \
> -	  i915_gem_ww.o \
> -	  i915_gem.o \
> -	  i915_query.o \
> -	  i915_request.o \
> -	  i915_scheduler.o \
> -	  i915_trace_points.o \
> -	  i915_ttm_buddy_manager.o \
> -	  i915_vma.o \
> -	  i915_vma_resource.o
> +	$(gem-y) \
> +	i915_active.o \
> +	i915_cmd_parser.o \
> +	i915_deps.o \
> +	i915_gem.o \
> +	i915_gem_evict.o \
> +	i915_gem_gtt.o \
> +	i915_gem_ww.o \
> +	i915_query.o \
> +	i915_request.o \
> +	i915_scheduler.o \
> +	i915_trace_points.o \
> +	i915_ttm_buddy_manager.o \
> +	i915_vma.o \
> +	i915_vma_resource.o
>   
>   # general-purpose microcontroller (GuC) support
>   i915-y += \
> -	  gt/uc/intel_gsc_fw.o \
> -	  gt/uc/intel_gsc_proxy.o \
> -	  gt/uc/intel_gsc_uc.o \
> -	  gt/uc/intel_gsc_uc_debugfs.o \
> -	  gt/uc/intel_gsc_uc_heci_cmd_submit.o \
> -	  gt/uc/intel_guc.o \
> -	  gt/uc/intel_guc_ads.o \
> -	  gt/uc/intel_guc_capture.o \
> -	  gt/uc/intel_guc_ct.o \
> -	  gt/uc/intel_guc_debugfs.o \
> -	  gt/uc/intel_guc_fw.o \
> -	  gt/uc/intel_guc_hwconfig.o \
> -	  gt/uc/intel_guc_log.o \
> -	  gt/uc/intel_guc_log_debugfs.o \
> -	  gt/uc/intel_guc_rc.o \
> -	  gt/uc/intel_guc_slpc.o \
> -	  gt/uc/intel_guc_submission.o \
> -	  gt/uc/intel_huc.o \
> -	  gt/uc/intel_huc_debugfs.o \
> -	  gt/uc/intel_huc_fw.o \
> -	  gt/uc/intel_uc.o \
> -	  gt/uc/intel_uc_debugfs.o \
> -	  gt/uc/intel_uc_fw.o
> +	gt/uc/intel_gsc_fw.o \
> +	gt/uc/intel_gsc_proxy.o \
> +	gt/uc/intel_gsc_uc.o \
> +	gt/uc/intel_gsc_uc_debugfs.o \
> +	gt/uc/intel_gsc_uc_heci_cmd_submit.o\
> +	gt/uc/intel_guc.o \
> +	gt/uc/intel_guc_ads.o \
> +	gt/uc/intel_guc_capture.o \
> +	gt/uc/intel_guc_ct.o \
> +	gt/uc/intel_guc_debugfs.o \
> +	gt/uc/intel_guc_fw.o \
> +	gt/uc/intel_guc_hwconfig.o \
> +	gt/uc/intel_guc_log.o \
> +	gt/uc/intel_guc_log_debugfs.o \
> +	gt/uc/intel_guc_rc.o \
> +	gt/uc/intel_guc_slpc.o \
> +	gt/uc/intel_guc_submission.o \
> +	gt/uc/intel_huc.o \
> +	gt/uc/intel_huc_debugfs.o \
> +	gt/uc/intel_huc_fw.o \
> +	gt/uc/intel_uc.o \
> +	gt/uc/intel_uc_debugfs.o \
> +	gt/uc/intel_uc_fw.o
>   
>   # graphics system controller (GSC) support
> -i915-y += gt/intel_gsc.o
> +i915-y += \
> +	gt/intel_gsc.o
>   
>   # graphics hardware monitoring (HWMON) support
> -i915-$(CONFIG_HWMON) += i915_hwmon.o
> +i915-$(CONFIG_HWMON) += \
> +	i915_hwmon.o
>   
>   # modesetting core code
>   i915-y += \
>   	display/hsw_ips.o \
> +	display/i9xx_plane.o \
> +	display/i9xx_wm.o \
>   	display/intel_atomic.o \
>   	display/intel_atomic_plane.o \
>   	display/intel_audio.o \
> @@ -287,8 +295,8 @@ i915-y += \
>   	display/intel_load_detect.o \
>   	display/intel_lpe_audio.o \
>   	display/intel_modeset_lock.o \
> -	display/intel_modeset_verify.o \
>   	display/intel_modeset_setup.o \
> +	display/intel_modeset_verify.o \
>   	display/intel_overlay.o \
>   	display/intel_pch_display.o \
>   	display/intel_pch_refclk.o \
> @@ -302,8 +310,6 @@ i915-y += \
>   	display/intel_vblank.o \
>   	display/intel_vga.o \
>   	display/intel_wm.o \
> -	display/i9xx_plane.o \
> -	display/i9xx_wm.o \
>   	display/skl_scaler.o \
>   	display/skl_universal_plane.o \
>   	display/skl_watermark.o
> @@ -357,13 +363,14 @@ i915-y += \
>   	display/vlv_dsi.o \
>   	display/vlv_dsi_pll.o
>   
> -i915-y += i915_perf.o
> +i915-y += \
> +	i915_perf.o
>   
>   # Protected execution platform (PXP) support. Base support is required for HuC
>   i915-y += \
>   	pxp/intel_pxp.o \
> -	pxp/intel_pxp_tee.o \
> -	pxp/intel_pxp_huc.o
> +	pxp/intel_pxp_huc.o \
> +	pxp/intel_pxp_tee.o
>   
>   i915-$(CONFIG_DRM_I915_PXP) += \
>   	pxp/intel_pxp_cmd.o \
> @@ -374,11 +381,11 @@ i915-$(CONFIG_DRM_I915_PXP) += \
>   	pxp/intel_pxp_session.o
>   
>   # Post-mortem debug and GPU hang state capture
> -i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
> +i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += \
> +	i915_gpu_error.o
>   i915-$(CONFIG_DRM_I915_SELFTEST) += \
>   	gem/selftests/i915_gem_client_blt.o \
>   	gem/selftests/igt_gem_utils.o \
> -	selftests/intel_scheduler_helpers.o \
>   	selftests/i915_random.o \
>   	selftests/i915_selftest.o \
>   	selftests/igt_atomic.o \
> @@ -387,10 +394,12 @@ i915-$(CONFIG_DRM_I915_SELFTEST) += \
>   	selftests/igt_mmap.o \
>   	selftests/igt_reset.o \
>   	selftests/igt_spinner.o \
> +	selftests/intel_scheduler_helpers.o \
>   	selftests/librapl.o
>   
>   # virtual gpu code
> -i915-y += i915_vgpu.o
> +i915-y += \
> +	i915_vgpu.o
>   
>   i915-$(CONFIG_DRM_I915_GVT) += \
>   	intel_gvt.o \
