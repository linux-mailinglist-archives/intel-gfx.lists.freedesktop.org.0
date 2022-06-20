Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2E1552383
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 20:05:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8639C10F159;
	Mon, 20 Jun 2022 18:05:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FA7110F151
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 18:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655748343; x=1687284343;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+YHjzMRru/ZoKmx5Sfrki5LNIUDNr6mwe+gfYz7qE9c=;
 b=ggYOrg9PpTFCVp/LAfvtkp21EzEIoG9AL21cat3p4My1q2Hxz4Dre3Qc
 3loKpW2wGxk5lFQCNbS9imFO+fxatDCjQ+VtnYiDwz3vR6aUUNBbMiBSA
 Ac+Z79WDu20GcEKPKyCamNfb//+omIbOAxtcFoSTCDcwXSKPFEbbd0z+/
 0x0eb68WDOtA2uDR0JQ76iiku4UhMEOEDqNUsJdyZBKGEoEGsZeRT3D1l
 1Pl0lDbr/KxVLDURmAEbZoz/ADjqpnCNxog2WklWqKkKgdPvMQIg45Zox
 5RP2FjaRvXeYyFfOgKAs1dImZXar1FDILnNHQFKNJNAmA8bidR0l15ID8 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="366273688"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="366273688"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 11:04:04 -0700
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="643219546"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 11:04:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 21:03:51 +0300
Message-Id: <a0edacd8be456458b432e77865cf3bf0078ec9c6.1655748056.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655748056.git.jani.nikula@intel.com>
References: <cover.1655748056.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/2] drm/i915/display: add
 intel_display_features.h for feature check macros
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

Group widely used display feature check macros together in one place.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_features.h | 37 +++++++++++++++++++
 .../i915/display/intel_display_power_map.c    |  5 +--
 .../drm/i915/display/intel_display_types.h    |  1 +
 .../gpu/drm/i915/display/intel_lpe_audio.c    |  1 +
 drivers/gpu/drm/i915/i915_drv.h               | 35 ------------------
 drivers/gpu/drm/i915/i915_suspend.c           |  1 +
 drivers/gpu/drm/i915/intel_device_info.c      |  1 +
 drivers/gpu/drm/i915/intel_dram.c             |  1 +
 drivers/gpu/drm/i915/intel_pch.c              |  1 +
 9 files changed, 45 insertions(+), 38 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_features.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_features.h b/drivers/gpu/drm/i915/display/intel_display_features.h
new file mode 100644
index 000000000000..019ee4c10252
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_features.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_FEATURES_H__
+#define __INTEL_DISPLAY_FEATURES_H__
+
+/* Platform based conditions */
+#define HAS_ASYNC_FLIPS(__i915)		(DISPLAY_VER(__i915) >= 5)
+#define HAS_D12_PLANE_MINIMIZATION(__i915) (IS_ROCKETLAKE(__i915) || IS_ALDERLAKE_S(__i915))
+#define HAS_DP20(__i915)		(IS_DG2(__i915))
+#define HAS_HW_SAGV_WM(__i915)		(DISPLAY_VER(__i915) >= 13 && !IS_DGFX(__i915))
+#define HAS_IPS(__i915)			(IS_HSW_ULT(__i915) || IS_BROADWELL(__i915))
+#define HAS_MSO(__i915)			(DISPLAY_VER(__i915) >= 12)
+#define HAS_VRR(__i915)			(DISPLAY_VER(__i915) >= 11)
+
+/* Device info flags */
+#define HAS_DDI(__i915)		 	(INTEL_INFO(__i915)->display.has_ddi)
+#define HAS_DISPLAY(__i915)		(INTEL_INFO(__i915)->display.pipe_mask != 0)
+#define HAS_DP_MST(__i915)		(INTEL_INFO(__i915)->display.has_dp_mst)
+#define HAS_FBC(__i915)			(INTEL_INFO(__i915)->display.fbc_mask != 0)
+#define HAS_GMCH(__i915)		(INTEL_INFO(__i915)->display.has_gmch)
+#define HAS_IPC(__i915)			(INTEL_INFO(__i915)->display.has_ipc)
+#define HAS_PSR(__i915)		 	(INTEL_INFO(__i915)->display.has_psr)
+#define HAS_TRANSCODER(__i915, trans)	((INTEL_INFO(__i915)->display.cpu_transcoder_mask & BIT(trans)) != 0)
+#define I915_HAS_HOTPLUG(__i915)	(INTEL_INFO(__i915)->display.has_hotplug)
+#define INTEL_NUM_PIPES(__i915)		(hweight8(INTEL_INFO(__i915)->display.pipe_mask))
+#define SUPPORTS_TV(__i915)		(INTEL_INFO(__i915)->display.supports_tv)
+
+/* Only valid when HAS_DISPLAY() is true */
+#define INTEL_DISPLAY_ENABLED(__i915) \
+	(drm_WARN_ON(&(__i915)->drm, !HAS_DISPLAY(__i915)),		\
+	 !(__i915)->params.disable_display &&				\
+	 !intel_opregion_headless_sku(__i915))
+
+#endif /* __INTEL_DISPLAY_FEATURES_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 97b367f39f35..d84fdcdea588 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -5,11 +5,10 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
-
-#include "vlv_sideband_reg.h"
-
+#include "intel_display_features.h"
 #include "intel_display_power_map.h"
 #include "intel_display_power_well.h"
+#include "vlv_sideband_reg.h"
 
 #define __LIST_INLINE_ELEMS(__elem_type, ...) \
 	((__elem_type[]) { __VA_ARGS__ })
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8b0949b6dc75..9dd008c7b4ec 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -49,6 +49,7 @@
 #include "i915_vma_types.h"
 #include "intel_bios.h"
 #include "intel_display.h"
+#include "intel_display_features.h"
 #include "intel_display_power.h"
 #include "intel_dpll_mgr.h"
 #include "intel_pm_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 4970bf146c4a..9c89801ebaa7 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -72,6 +72,7 @@
 
 #include "i915_drv.h"
 #include "intel_de.h"
+#include "intel_display_features.h"
 #include "intel_lpe_audio.h"
 
 #define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->audio.lpe.platdev != NULL)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1d9ba4cf9e01..fd2a4c3b5d74 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1227,20 +1227,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define HAS_128_BYTE_Y_TILING(dev_priv) (GRAPHICS_VER(dev_priv) != 2 && \
 					 !(IS_I915G(dev_priv) || IS_I915GM(dev_priv)))
-#define SUPPORTS_TV(dev_priv)		(INTEL_INFO(dev_priv)->display.supports_tv)
-#define I915_HAS_HOTPLUG(dev_priv)	(INTEL_INFO(dev_priv)->display.has_hotplug)
-
-#define HAS_FBC(dev_priv)	(INTEL_INFO(dev_priv)->display.fbc_mask != 0)
-
-#define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
-
-#define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
-#define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
-
-#define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
 #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
-#define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
-#define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)
 
 #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
 #define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
@@ -1256,7 +1243,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_HECI_GSC(dev_priv) (HAS_HECI_PXP(dev_priv) || HAS_HECI_GSCFI(dev_priv))
 
-#define HAS_MSO(i915)		(DISPLAY_VER(i915) >= 12)
 
 #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
 #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
@@ -1274,8 +1260,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define NEEDS_COMPACT_PT(dev_priv) (INTEL_INFO(dev_priv)->needs_compact_pt)
 
-#define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
-
 #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
 #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
 
@@ -1295,8 +1279,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 			    INTEL_INFO(dev_priv)->has_pxp) && \
 			    VDBOX_MASK(to_gt(dev_priv)))
 
-#define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
-
 #define HAS_L3_CCS_READ(i915) (INTEL_INFO(i915)->has_l3_ccs_read)
 
 /* DPF == dynamic parity feature */
@@ -1307,29 +1289,12 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define GT_FREQUENCY_MULTIPLIER 50
 #define GEN9_FREQ_SCALER 3
 
-#define INTEL_NUM_PIPES(dev_priv) (hweight8(INTEL_INFO(dev_priv)->display.pipe_mask))
-
-#define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->display.pipe_mask != 0)
-
-#define HAS_VRR(i915)	(DISPLAY_VER(i915) >= 11)
-
-#define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
-
-/* Only valid when HAS_DISPLAY() is true */
-#define INTEL_DISPLAY_ENABLED(dev_priv) \
-	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)),		\
-	 !(dev_priv)->params.disable_display &&				\
-	 !intel_opregion_headless_sku(dev_priv))
-
 #define HAS_GUC_DEPRIVILEGE(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_guc_deprivilege)
 
 #define HAS_PERCTX_PREEMPT_CTRL(i915) \
 	((GRAPHICS_VER(i915) >= 9) &&  GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
 
-#define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
-					      IS_ALDERLAKE_S(dev_priv))
-
 #define HAS_3D_PIPELINE(i915)	(INTEL_INFO(i915)->has_3d_pipeline)
 
 #define HAS_ONE_EU_PER_FUSE_BIT(i915)	(INTEL_INFO(i915)->has_one_eu_per_fuse_bit)
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index 81def10eb58f..af338f535fb1 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -25,6 +25,7 @@
  */
 
 #include "display/intel_de.h"
+#include "display/intel_display_features.h"
 #include "display/intel_gmbus.h"
 #include "display/intel_vga.h"
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index f0bf23726ed8..94310ac38137 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -29,6 +29,7 @@
 
 #include "display/intel_cdclk.h"
 #include "display/intel_de.h"
+#include "display/intel_display_features.h"
 #include "intel_device_info.h"
 #include "i915_drv.h"
 #include "i915_utils.h"
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 437447119770..757fae87a32a 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -5,6 +5,7 @@
 
 #include <linux/string_helpers.h>
 
+#include "display/intel_display_features.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_dram.h"
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index e2b2bbdc0714..c60c8460eba9 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -3,6 +3,7 @@
  * Copyright 2019 Intel Corporation.
  */
 
+#include "display/intel_display_features.h"
 #include "i915_drv.h"
 #include "i915_utils.h"
 #include "intel_pch.h"
-- 
2.30.2

