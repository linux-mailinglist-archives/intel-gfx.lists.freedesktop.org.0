Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5383496C148
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 16:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE0A210E6AA;
	Wed,  4 Sep 2024 14:52:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bANluzCE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C831610E6AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 14:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725461559; x=1756997559;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=653NjpX94rSGRLupQZC1ElkVEn7bjr4pO8+XYeeyZzU=;
 b=bANluzCEwRHSBD7PBNBv/b+XvuZ1OjOW42OD3YNqqJZ7HoTm2Y7Ybmbr
 J7LZIZ/6KXaUZaMo1BceHKkHbO8KFedIOty2noc7CSgAXxOcYqH5JM+P2
 T0ioy2laF2r0E9mghPWrQO7FP/sQ3b7eRxi/yb3TXYlp5X7vrLlEAkxCG
 5GNlKAd2HhiXgfCQPxs4gVA6ko5Rawl7ULaWn7Ly4rGqkHu8NgWb9pWJI
 DqfQL0uch1mWfpjZRCSOL4DgW9d01oc2Xf/euO1hn+NDprzt1xSn+inEu
 0yINJ4ARjiosP/lj4GxMJbQ6W3dMBRfeOeX/hKyAXzOYosRtjPAjomhIJ w==;
X-CSE-ConnectionGUID: /T7fMqvlR0OnDGIzQG5Y9g==
X-CSE-MsgGUID: wiiqGb1dRo20Er0QFiSASg==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="13370280"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="13370280"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:52:38 -0700
X-CSE-ConnectionGUID: 5Dj2aCrVSNmk3yD24LnxtQ==
X-CSE-MsgGUID: 4/vAt+l7RPaO2+lZ3o1OwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="65638024"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:52:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915: use IS_ENABLED() instead of defined() on config
 options
Date: Wed,  4 Sep 2024 17:52:18 +0300
Message-Id: <20240904145218.3902145-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Prefer IS_ENABLED() instead of defined() for checking whether a kconfig
option is enabled.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_tunnel.h   | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_pm.c           | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c        | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c       | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.c           | 2 +-
 drivers/gpu/drm/i915/i915_trace.h                | 2 +-
 drivers/gpu/drm/i915/i915_utils.h                | 2 +-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 4 ++--
 9 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 73369847ed66..9c0b83abbe3c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -298,7 +298,7 @@ void i915_enable_asle_pipestat(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
-#if defined(CONFIG_DEBUG_FS)
+#if IS_ENABLED(CONFIG_DEBUG_FS)
 static void display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 					 enum pipe pipe,
 					 u32 crc0, u32 crc1,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
index a0c00b7d3303..e9314cf25a19 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
@@ -20,7 +20,7 @@ struct intel_dp;
 struct intel_encoder;
 struct intel_link_bw_limits;
 
-#if defined(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)
+#if IS_ENABLED(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)
 
 int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct drm_modeset_acquire_ctx *ctx);
 void intel_dp_tunnel_disconnect(struct intel_dp *intel_dp);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index 3b27218aabe2..900c08337942 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -13,7 +13,7 @@
 #include "i915_driver.h"
 #include "i915_drv.h"
 
-#if defined(CONFIG_X86)
+#if IS_ENABLED(CONFIG_X86)
 #include <asm/smp.h>
 #else
 #define wbinvd_on_all_cpus() \
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index 23f54c84cbab..fe53e8eccf4b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -145,7 +145,7 @@ static inline bool guc_load_done(struct intel_uncore *uncore, u32 *status, bool
  * an end user should hit the timeout is in case of extreme thermal throttling.
  * And a system that is that hot during boot is probably dead anyway!
  */
-#if defined(CONFIG_DRM_I915_DEBUG_GEM)
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
 #define GUC_LOAD_RETRY_LIMIT	20
 #else
 #define GUC_LOAD_RETRY_LIMIT	3
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index bf16351c9349..222c95f62156 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -14,7 +14,7 @@
 #include "intel_guc_log.h"
 #include "intel_guc_print.h"
 
-#if defined(CONFIG_DRM_I915_DEBUG_GUC)
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GUC)
 #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_2M
 #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_16M
 #define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 2d9152eb7282..d7ac31c3254c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -455,7 +455,7 @@ static const char *auth_mode_string(struct intel_huc *huc,
  * an end user should hit the timeout is in case of extreme thermal throttling.
  * And a system that is that hot during boot is probably dead anyway!
  */
-#if defined(CONFIG_DRM_I915_DEBUG_GEM)
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
 #define HUC_LOAD_RETRY_LIMIT   20
 #else
 #define HUC_LOAD_RETRY_LIMIT   3
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index ce1cbee1b39d..09d89bdf82f4 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -322,7 +322,7 @@ DEFINE_EVENT(i915_request, i915_request_add,
 	     TP_ARGS(rq)
 );
 
-#if defined(CONFIG_DRM_I915_LOW_LEVEL_TRACEPOINTS)
+#if IS_ENABLED(CONFIG_DRM_I915_LOW_LEVEL_TRACEPOINTS)
 DEFINE_EVENT(i915_request, i915_request_guc_submit,
 	     TP_PROTO(struct i915_request *rq),
 	     TP_ARGS(rq)
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 71bdc89bd621..609214231ffc 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -270,7 +270,7 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
 #define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
 
 /* If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false. */
-#if defined(CONFIG_DRM_I915_DEBUG) && defined(CONFIG_PREEMPT_COUNT)
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG) && IS_ENABLED(CONFIG_PREEMPT_COUNT)
 # define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_atomic())
 #else
 # define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 91794ca17a58..70f3d7bf47d0 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -137,7 +137,7 @@ static const struct intel_device_info mock_info = {
 
 struct drm_i915_private *mock_gem_device(void)
 {
-#if IS_ENABLED(CONFIG_IOMMU_API) && defined(CONFIG_INTEL_IOMMU)
+#if IS_ENABLED(CONFIG_IOMMU_API) && IS_ENABLED(CONFIG_INTEL_IOMMU)
 	static struct dev_iommu fake_iommu = { .priv = (void *)-1 };
 #endif
 	struct drm_i915_private *i915;
@@ -153,7 +153,7 @@ struct drm_i915_private *mock_gem_device(void)
 	dev_set_name(&pdev->dev, "mock");
 	dma_coerce_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
 
-#if IS_ENABLED(CONFIG_IOMMU_API) && defined(CONFIG_INTEL_IOMMU)
+#if IS_ENABLED(CONFIG_IOMMU_API) && IS_ENABLED(CONFIG_INTEL_IOMMU)
 	/* HACK to disable iommu for the fake device; force identity mapping */
 	pdev->dev.iommu = &fake_iommu;
 #endif
-- 
2.39.2

