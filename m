Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FFA727EA6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 13:22:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D9C10E258;
	Thu,  8 Jun 2023 11:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B137610E256
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 11:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686223362; x=1717759362;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S7cLKner1OmIHNq67vCEghZ6ovvXLw6UGuzC0HCOTB8=;
 b=KqioxwCAaK8ir3+RQZhmZNtF6d7Wg76V4ErNVd3MWxgJ6Z8evsHZkT+U
 aiOKAo3QKtaxdTDpLGIusIbWIsQ1VJjpSOg4EY8M9VBYrTg1hm3AXiL5s
 MCGUwVyp697RtF9e55r/EZ5/jnq1fsrM+eFJUdGlEtkQ3o8k7/8b+1DXP
 CKucIMNdcCvvkRWohSvt4u0FtBdmzG6MthJ1TBkZdmpRmgjONZBtnZczK
 5sWEZ+mbKW4LzAKJSoXF7IExwBJKo5p983UUtxXdRZIdjGAymcC43EEli
 5JbBfmYgJlDveEfMCFXe7x3f8dmRVUaXXZIb/UkHptEGCg1+V0DJMOHnQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="423131028"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="423131028"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 04:22:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="956666997"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="956666997"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 04:22:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 14:22:32 +0300
Message-Id: <20230608112233.771453-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230608112233.771453-1-jani.nikula@intel.com>
References: <20230608112233.771453-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: fix Makefile sort and indent
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Unify the line continuations and indents, and sort the build lists.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Note: This is easiest to review by applying and looking at 'git show -w'
---
 drivers/gpu/drm/i915/Makefile | 167 ++++++++++++++++++----------------
 1 file changed, 88 insertions(+), 79 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 690308dc7047..ac62cc54474b 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -43,33 +43,34 @@ subdir-ccflags-y += -I$(srctree)/$(src)
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
@@ -86,13 +87,15 @@ i915-y += \
 	i915_syncmap.o \
 	i915_user_extensions.o
 
-i915-$(CONFIG_COMPAT)   += i915_ioc32.o
+i915-$(CONFIG_COMPAT) += \
+	i915_ioc32.o
 i915-$(CONFIG_DEBUG_FS) += \
 	i915_debugfs.o \
 	i915_debugfs_params.o \
 	display/intel_display_debugfs.o \
 	display/intel_pipe_crc.o
-i915-$(CONFIG_PERF_EVENTS) += i915_pmu.o
+i915-$(CONFIG_PERF_EVENTS) += \
+	i915_pmu.o
 
 # "Graphics Technology" (aka we talk to the gpu)
 gt-y += \
@@ -148,7 +151,8 @@ gt-y += \
 	gt/sysfs_engines.o
 
 # x86 intel-gtt module support
-gt-$(CONFIG_X86) += gt/intel_ggtt_gmch.o
+gt-$(CONFIG_X86) += \
+	gt/intel_ggtt_gmch.o
 # autogenerated null render state
 gt-y += \
 	gt/gen6_renderstate.o \
@@ -167,9 +171,9 @@ gem-y += \
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
@@ -186,56 +190,60 @@ gem-y += \
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
-	  gt/uc/intel_gsc_uc_heci_cmd_submit.o\
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
@@ -278,8 +286,8 @@ i915-y += \
 	display/intel_load_detect.o \
 	display/intel_lpe_audio.o \
 	display/intel_modeset_lock.o \
-	display/intel_modeset_verify.o \
 	display/intel_modeset_setup.o \
+	display/intel_modeset_verify.o \
 	display/intel_overlay.o \
 	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
@@ -293,8 +301,6 @@ i915-y += \
 	display/intel_vblank.o \
 	display/intel_vga.o \
 	display/intel_wm.o \
-	display/i9xx_plane.o \
-	display/i9xx_wm.o \
 	display/skl_scaler.o \
 	display/skl_universal_plane.o \
 	display/skl_watermark.o
@@ -348,13 +354,14 @@ i915-y += \
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
@@ -365,11 +372,11 @@ i915-$(CONFIG_DRM_I915_PXP) += \
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
@@ -378,10 +385,12 @@ i915-$(CONFIG_DRM_I915_SELFTEST) += \
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

