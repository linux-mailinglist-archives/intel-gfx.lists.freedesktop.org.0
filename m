Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C847D8054
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 12:13:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D764310E79F;
	Thu, 26 Oct 2023 10:13:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67F6610E79F
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 10:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698315220; x=1729851220;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QNk4Acbsl4ZhxWA+hhtAQ8BO7Rj/ECoSSqt5Nt0PJnA=;
 b=cR4yx8jt85EEOhg/UM0ywmPVPGwplgrGMzeIL+uj6d9mT9MSkXPrmiro
 aljbRt35CRwbmMAwfCtaD+nz+6vc83RIywbizJy0aI+hcY4r0OA39Qsmk
 bsW9nh7ufOf8aL7rB/IlSDdY/184jvC+jBiedewHf1CszGYW1Nz+dfiSu
 C3oewcHGNg8cK+s2n7SHFF2VLTLpzLVanBKj3Ltc5eQTNTFHnFTw9ryQJ
 jU5vHmh64rDWYRcE6DP1pQiIV19UOotWFE+WF3HV8rQcNCVBCeA11jkIc
 /HMXv+7c44SOyl7BzQJeE1iwERTEcFEJGV4Y6pDi4bZUKNKu0rDrTpBzS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="9061509"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="9061509"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:13:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="1090553945"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="1090553945"
Received: from tzirr-desk2.ger.corp.intel.com (HELO localhost) ([10.252.49.68])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:13:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 13:13:32 +0300
Message-Id: <20231026101333.875406-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/2] drm/i915: fix Makefile sort and indent
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
Cc: jani.nikula@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Unify the line continuations and indents, and sort the build lists.

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Note: This is easiest to review by applying and looking at 'git show -w'
---
 drivers/gpu/drm/i915/Makefile | 169 ++++++++++++++++++----------------
 1 file changed, 89 insertions(+), 80 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 3b9dcb606fc1..d1f53dbf95f2 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -47,33 +47,34 @@ subdir-ccflags-y += -I$(srctree)/$(src)
 # Please keep these build lists sorted!
 
 # core driver code
-i915-y += i915_driver.o \
-	  i915_drm_client.o \
-	  i915_config.o \
-	  i915_getparam.o \
-	  i915_ioctl.o \
-	  i915_irq.o \
-	  i915_mitigations.o \
-	  i915_module.o \
-	  i915_params.o \
-	  i915_pci.o \
-	  i915_scatterlist.o \
-	  i915_suspend.o \
-	  i915_switcheroo.o \
-	  i915_sysfs.o \
-	  i915_utils.o \
-	  intel_clock_gating.o \
-	  intel_device_info.o \
-	  intel_memory_region.o \
-	  intel_pcode.o \
-	  intel_region_ttm.o \
-	  intel_runtime_pm.o \
-	  intel_sbi.o \
-	  intel_step.o \
-	  intel_uncore.o \
-	  intel_wakeref.o \
-	  vlv_sideband.o \
-	  vlv_suspend.o
+i915-y += \
+	i915_config.o \
+	i915_driver.o \
+	i915_drm_client.o \
+	i915_getparam.o \
+	i915_ioctl.o \
+	i915_irq.o \
+	i915_mitigations.o \
+	i915_module.o \
+	i915_params.o \
+	i915_pci.o \
+	i915_scatterlist.o \
+	i915_suspend.o \
+	i915_switcheroo.o \
+	i915_sysfs.o \
+	i915_utils.o \
+	intel_clock_gating.o \
+	intel_device_info.o \
+	intel_memory_region.o \
+	intel_pcode.o \
+	intel_region_ttm.o \
+	intel_runtime_pm.o \
+	intel_sbi.o \
+	intel_step.o \
+	intel_uncore.o \
+	intel_wakeref.o \
+	vlv_sideband.o \
+	vlv_suspend.o
 
 # core peripheral code
 i915-y += \
@@ -90,14 +91,16 @@ i915-y += \
 	i915_syncmap.o \
 	i915_user_extensions.o
 
-i915-$(CONFIG_COMPAT)   += i915_ioc32.o
+i915-$(CONFIG_COMPAT) += \
+	i915_ioc32.o
 i915-$(CONFIG_DEBUG_FS) += \
 	i915_debugfs.o \
 	i915_debugfs_params.o \
 	display/intel_display_debugfs.o \
 	display/intel_display_debugfs_params.o \
 	display/intel_pipe_crc.o
-i915-$(CONFIG_PERF_EVENTS) += i915_pmu.o
+i915-$(CONFIG_PERF_EVENTS) += \
+	i915_pmu.o
 
 # "Graphics Technology" (aka we talk to the gpu)
 gt-y += \
@@ -154,7 +157,8 @@ gt-y += \
 	gt/sysfs_engines.o
 
 # x86 intel-gtt module support
-gt-$(CONFIG_X86) += gt/intel_ggtt_gmch.o
+gt-$(CONFIG_X86) += \
+	gt/intel_ggtt_gmch.o
 # autogenerated null render state
 gt-y += \
 	gt/gen6_renderstate.o \
@@ -173,9 +177,9 @@ gem-y += \
 	gem/i915_gem_domain.o \
 	gem/i915_gem_execbuffer.o \
 	gem/i915_gem_internal.o \
-	gem/i915_gem_object.o \
 	gem/i915_gem_lmem.o \
 	gem/i915_gem_mman.o \
+	gem/i915_gem_object.o \
 	gem/i915_gem_pages.o \
 	gem/i915_gem_phys.o \
 	gem/i915_gem_pm.o \
@@ -192,57 +196,61 @@ gem-y += \
 	gem/i915_gem_wait.o \
 	gem/i915_gemfs.o
 i915-y += \
-	  $(gem-y) \
-	  i915_active.o \
-	  i915_cmd_parser.o \
-	  i915_deps.o \
-	  i915_gem_evict.o \
-	  i915_gem_gtt.o \
-	  i915_gem_ww.o \
-	  i915_gem.o \
-	  i915_query.o \
-	  i915_request.o \
-	  i915_scheduler.o \
-	  i915_trace_points.o \
-	  i915_ttm_buddy_manager.o \
-	  i915_vma.o \
-	  i915_vma_resource.o
+	$(gem-y) \
+	i915_active.o \
+	i915_cmd_parser.o \
+	i915_deps.o \
+	i915_gem.o \
+	i915_gem_evict.o \
+	i915_gem_gtt.o \
+	i915_gem_ww.o \
+	i915_query.o \
+	i915_request.o \
+	i915_scheduler.o \
+	i915_trace_points.o \
+	i915_ttm_buddy_manager.o \
+	i915_vma.o \
+	i915_vma_resource.o
 
 # general-purpose microcontroller (GuC) support
 i915-y += \
-	  gt/uc/intel_gsc_fw.o \
-	  gt/uc/intel_gsc_proxy.o \
-	  gt/uc/intel_gsc_uc.o \
-	  gt/uc/intel_gsc_uc_debugfs.o \
-	  gt/uc/intel_gsc_uc_heci_cmd_submit.o \
-	  gt/uc/intel_guc.o \
-	  gt/uc/intel_guc_ads.o \
-	  gt/uc/intel_guc_capture.o \
-	  gt/uc/intel_guc_ct.o \
-	  gt/uc/intel_guc_debugfs.o \
-	  gt/uc/intel_guc_fw.o \
-	  gt/uc/intel_guc_hwconfig.o \
-	  gt/uc/intel_guc_log.o \
-	  gt/uc/intel_guc_log_debugfs.o \
-	  gt/uc/intel_guc_rc.o \
-	  gt/uc/intel_guc_slpc.o \
-	  gt/uc/intel_guc_submission.o \
-	  gt/uc/intel_huc.o \
-	  gt/uc/intel_huc_debugfs.o \
-	  gt/uc/intel_huc_fw.o \
-	  gt/uc/intel_uc.o \
-	  gt/uc/intel_uc_debugfs.o \
-	  gt/uc/intel_uc_fw.o
+	gt/uc/intel_gsc_fw.o \
+	gt/uc/intel_gsc_proxy.o \
+	gt/uc/intel_gsc_uc.o \
+	gt/uc/intel_gsc_uc_debugfs.o \
+	gt/uc/intel_gsc_uc_heci_cmd_submit.o\
+	gt/uc/intel_guc.o \
+	gt/uc/intel_guc_ads.o \
+	gt/uc/intel_guc_capture.o \
+	gt/uc/intel_guc_ct.o \
+	gt/uc/intel_guc_debugfs.o \
+	gt/uc/intel_guc_fw.o \
+	gt/uc/intel_guc_hwconfig.o \
+	gt/uc/intel_guc_log.o \
+	gt/uc/intel_guc_log_debugfs.o \
+	gt/uc/intel_guc_rc.o \
+	gt/uc/intel_guc_slpc.o \
+	gt/uc/intel_guc_submission.o \
+	gt/uc/intel_huc.o \
+	gt/uc/intel_huc_debugfs.o \
+	gt/uc/intel_huc_fw.o \
+	gt/uc/intel_uc.o \
+	gt/uc/intel_uc_debugfs.o \
+	gt/uc/intel_uc_fw.o
 
 # graphics system controller (GSC) support
-i915-y += gt/intel_gsc.o
+i915-y += \
+	gt/intel_gsc.o
 
 # graphics hardware monitoring (HWMON) support
-i915-$(CONFIG_HWMON) += i915_hwmon.o
+i915-$(CONFIG_HWMON) += \
+	i915_hwmon.o
 
 # modesetting core code
 i915-y += \
 	display/hsw_ips.o \
+	display/i9xx_plane.o \
+	display/i9xx_wm.o \
 	display/intel_atomic.o \
 	display/intel_atomic_plane.o \
 	display/intel_audio.o \
@@ -289,8 +297,8 @@ i915-y += \
 	display/intel_load_detect.o \
 	display/intel_lpe_audio.o \
 	display/intel_modeset_lock.o \
-	display/intel_modeset_verify.o \
 	display/intel_modeset_setup.o \
+	display/intel_modeset_verify.o \
 	display/intel_overlay.o \
 	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
@@ -304,8 +312,6 @@ i915-y += \
 	display/intel_vblank.o \
 	display/intel_vga.o \
 	display/intel_wm.o \
-	display/i9xx_plane.o \
-	display/i9xx_wm.o \
 	display/skl_scaler.o \
 	display/skl_universal_plane.o \
 	display/skl_watermark.o
@@ -359,13 +365,14 @@ i915-y += \
 	display/vlv_dsi.o \
 	display/vlv_dsi_pll.o
 
-i915-y += i915_perf.o
+i915-y += \
+	i915_perf.o
 
 # Protected execution platform (PXP) support. Base support is required for HuC
 i915-y += \
 	pxp/intel_pxp.o \
-	pxp/intel_pxp_tee.o \
-	pxp/intel_pxp_huc.o
+	pxp/intel_pxp_huc.o \
+	pxp/intel_pxp_tee.o
 
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp_cmd.o \
@@ -376,11 +383,11 @@ i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp_session.o
 
 # Post-mortem debug and GPU hang state capture
-i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
+i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += \
+	i915_gpu_error.o
 i915-$(CONFIG_DRM_I915_SELFTEST) += \
 	gem/selftests/i915_gem_client_blt.o \
 	gem/selftests/igt_gem_utils.o \
-	selftests/intel_scheduler_helpers.o \
 	selftests/i915_random.o \
 	selftests/i915_selftest.o \
 	selftests/igt_atomic.o \
@@ -389,10 +396,12 @@ i915-$(CONFIG_DRM_I915_SELFTEST) += \
 	selftests/igt_mmap.o \
 	selftests/igt_reset.o \
 	selftests/igt_spinner.o \
+	selftests/intel_scheduler_helpers.o \
 	selftests/librapl.o
 
 # virtual gpu code
-i915-y += i915_vgpu.o
+i915-y += \
+	i915_vgpu.o
 
 i915-$(CONFIG_DRM_I915_GVT) += \
 	intel_gvt.o \
-- 
2.39.2

