Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 372CC6A6D85
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 14:54:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C03410E26C;
	Wed,  1 Mar 2023 13:54:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4326310E26A
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 13:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677678886; x=1709214886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5UuD/8a68IVEIaluTP9Fr3rH5m76cysbAWHWRJzyguA=;
 b=d2uIZdlEMSs2HqIj8M/hqd1vIsflmZC28zEuAk/6F//48LNJlsm01cI1
 Pq4rbE26HBjxUOA9OdDjAPg27BJ7w3aPSKFEqb40RvYP8VER7LnReWHAz
 Xh9sWdJ7gg1/FDgmziDBrvjyPbAxAaouRPYX/dEGD5TKDTF4wyVqbc4E0
 aeC9dS8uAFTpIOBmHk6o5pyNVMw9r079KImMa5RtB6Z2+l5/RQ1X2/rD7
 GSeoCIS3EcpZHcfh2VtciSsRPf3CdpBL4Fw1r15r7aIzpl0SOJJFvCLnr
 TOVyhadPf4lkYxWMmTNvbiYYd3SomzSLwJg0asXKESu/yhhoZJqe4iy2h w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="335904997"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="335904997"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 05:54:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="706987596"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="706987596"
Received: from dsvarnas-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.249])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 05:54:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 15:54:19 +0200
Message-Id: <2ed1817456a4f4a8a4e4660d0b7a37fa42204087.1677678803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1677678803.git.jani.nikula@intel.com>
References: <cover.1677678803.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: rename intel_pm.[ch] to
 intel_clock_gating.[ch]
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

Observe that intel_pm.[ch] is now purely about clock gating, so rename
them to intel_clock_gating.[ch]. Rename the functions to
intel_clock_gating_*() to follow coding conventions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                  |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c   |  4 ++--
 drivers/gpu/drm/i915/i915_driver.c             |  8 ++++----
 drivers/gpu/drm/i915/i915_gem.c                |  8 ++++----
 .../i915/{intel_pm.c => intel_clock_gating.c}  |  8 ++++----
 drivers/gpu/drm/i915/intel_clock_gating.h      | 14 ++++++++++++++
 drivers/gpu/drm/i915/intel_pm.h                | 18 ------------------
 drivers/gpu/drm/i915/vlv_suspend.c             |  4 ++--
 8 files changed, 31 insertions(+), 35 deletions(-)
 rename drivers/gpu/drm/i915/{intel_pm.c => intel_clock_gating.c} (99%)
 create mode 100644 drivers/gpu/drm/i915/intel_clock_gating.h
 delete mode 100644 drivers/gpu/drm/i915/intel_pm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index b2f91a1f8268..b88df8c10781 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -47,10 +47,10 @@ i915-y += i915_driver.o \
 	  i915_switcheroo.o \
 	  i915_sysfs.o \
 	  i915_utils.o \
+	  intel_clock_gating.o \
 	  intel_device_info.o \
 	  intel_memory_region.o \
 	  intel_pcode.o \
-	  intel_pm.o \
 	  intel_region_ttm.o \
 	  intel_runtime_pm.o \
 	  intel_sbi.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a1fbdf32bd21..3f1b90a2f57c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -63,6 +63,7 @@
 #include "intel_audio.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
+#include "intel_clock_gating.h"
 #include "intel_color.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
@@ -105,7 +106,6 @@
 #include "intel_pcode.h"
 #include "intel_pipe_crc.h"
 #include "intel_plane_initial.h"
-#include "intel_pm.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_quirks.h"
@@ -850,7 +850,7 @@ void intel_display_finish_reset(struct drm_i915_private *i915)
 		 */
 		intel_pps_unlock_regs_wa(i915);
 		intel_modeset_init_hw(i915);
-		intel_init_clock_gating(i915);
+		intel_clock_gating_init(i915);
 		intel_hpd_init(i915);
 
 		ret = __intel_display_resume(i915, state, ctx);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a53fd339e2cc..e4809485e47c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -79,11 +79,11 @@
 #include "soc/intel_dram.h"
 #include "soc/intel_gmch.h"
 
-#include "i915_file_private.h"
 #include "i915_debugfs.h"
 #include "i915_driver.h"
 #include "i915_drm_client.h"
 #include "i915_drv.h"
+#include "i915_file_private.h"
 #include "i915_getparam.h"
 #include "i915_hwmon.h"
 #include "i915_ioc32.h"
@@ -97,11 +97,11 @@
 #include "i915_sysfs.h"
 #include "i915_utils.h"
 #include "i915_vgpu.h"
+#include "intel_clock_gating.h"
 #include "intel_gvt.h"
 #include "intel_memory_region.h"
 #include "intel_pci_config.h"
 #include "intel_pcode.h"
-#include "intel_pm.h"
 #include "intel_region_ttm.h"
 #include "vlv_suspend.h"
 
@@ -252,7 +252,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	intel_irq_init(dev_priv);
 	intel_init_display_hooks(dev_priv);
-	intel_init_clock_gating_hooks(dev_priv);
+	intel_clock_gating_hooks_init(dev_priv);
 
 	intel_detect_preproduction_hw(dev_priv);
 
@@ -1238,7 +1238,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	i915_gem_resume(dev_priv);
 
 	intel_modeset_init_hw(dev_priv);
-	intel_init_clock_gating(dev_priv);
+	intel_clock_gating_init(dev_priv);
 	intel_hpd_init(dev_priv);
 
 	/* MST sideband requires HPD interrupts enabled */
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 35950fa91406..6b6b0e575ef3 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -58,7 +58,7 @@
 #include "i915_file_private.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
-#include "intel_pm.h"
+#include "intel_clock_gating.h"
 
 static int
 insert_mappable_node(struct i915_ggtt *ggtt, struct drm_mm_node *node, u32 size)
@@ -1164,7 +1164,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	}
 
 	/*
-	 * Despite its name intel_init_clock_gating applies both display
+	 * Despite its name intel_clock_gating_init applies both display
 	 * clock gating workarounds; GT mmio workarounds and the occasional
 	 * GT power context workaround. Worse, sometimes it includes a context
 	 * register workaround which we need to apply before we record the
@@ -1172,7 +1172,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	 *
 	 * FIXME: break up the workarounds and apply them at the right time!
 	 */
-	intel_init_clock_gating(dev_priv);
+	intel_clock_gating_init(dev_priv);
 
 	for_each_gt(gt, dev_priv, i) {
 		ret = intel_gt_init(gt);
@@ -1216,7 +1216,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 		/* Minimal basic recovery for KMS */
 		ret = i915_ggtt_enable_hw(dev_priv);
 		i915_ggtt_resume(to_gt(dev_priv)->ggtt);
-		intel_init_clock_gating(dev_priv);
+		intel_clock_gating_init(dev_priv);
 	}
 
 	i915_gem_drain_freed_objects(dev_priv);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_clock_gating.c
similarity index 99%
rename from drivers/gpu/drm/i915/intel_pm.c
rename to drivers/gpu/drm/i915/intel_clock_gating.c
index c45af0d981fd..8cfc19b48760 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -36,8 +36,8 @@
 #include "gt/intel_gt_regs.h"
 
 #include "i915_drv.h"
+#include "intel_clock_gating.h"
 #include "intel_mchbar_regs.h"
-#include "intel_pm.h"
 #include "vlv_sideband.h"
 
 struct drm_i915_clock_gating_funcs {
@@ -774,7 +774,7 @@ static void i830_init_clock_gating(struct drm_i915_private *dev_priv)
 		   _MASKED_BIT_ENABLE(MEM_DISPLAY_B_TRICKLE_FEED_DISABLE));
 }
 
-void intel_init_clock_gating(struct drm_i915_private *dev_priv)
+void intel_clock_gating_init(struct drm_i915_private *dev_priv)
 {
 	dev_priv->clock_gating_funcs->init_clock_gating(dev_priv);
 }
@@ -818,7 +818,7 @@ CG_FUNCS(nop);
 #undef CG_FUNCS
 
 /**
- * intel_init_clock_gating_hooks - setup the clock gating hooks
+ * intel_clock_gating_hooks_init - setup the clock gating hooks
  * @dev_priv: device private
  *
  * Setup the hooks that configure which clocks of a given platform can be
@@ -826,7 +826,7 @@ CG_FUNCS(nop);
  * platforms. Note that some GT specific workarounds are applied separately
  * when GPU contexts or batchbuffers start their execution.
  */
-void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
+void intel_clock_gating_hooks_init(struct drm_i915_private *dev_priv)
 {
 	if (IS_METEORLAKE(dev_priv))
 		dev_priv->clock_gating_funcs = &nop_clock_gating_funcs;
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.h b/drivers/gpu/drm/i915/intel_clock_gating.h
new file mode 100644
index 000000000000..5b4e4c55b2c2
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_clock_gating.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2019 Intel Corporation
+ */
+
+#ifndef __INTEL_CLOCK_GATING_H__
+#define __INTEL_CLOCK_GATING_H__
+
+struct drm_i915_private;
+
+void intel_clock_gating_init(struct drm_i915_private *i915);
+void intel_clock_gating_hooks_init(struct drm_i915_private *i915);
+
+#endif /* __INTEL_CLOCK_GATING_H__ */
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
deleted file mode 100644
index f774bddcdca6..000000000000
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ /dev/null
@@ -1,18 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2019 Intel Corporation
- */
-
-#ifndef __INTEL_PM_H__
-#define __INTEL_PM_H__
-
-#include <linux/types.h>
-
-struct drm_i915_private;
-struct intel_crtc_state;
-struct intel_plane_state;
-
-void intel_init_clock_gating(struct drm_i915_private *dev_priv);
-void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
-
-#endif /* __INTEL_PM_H__ */
diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
index 02e63ed77f60..94595dde2b96 100644
--- a/drivers/gpu/drm/i915/vlv_suspend.c
+++ b/drivers/gpu/drm/i915/vlv_suspend.c
@@ -12,7 +12,7 @@
 #include "i915_reg.h"
 #include "i915_trace.h"
 #include "i915_utils.h"
-#include "intel_pm.h"
+#include "intel_clock_gating.h"
 #include "vlv_suspend.h"
 
 #include "gt/intel_gt_regs.h"
@@ -451,7 +451,7 @@ int vlv_resume_prepare(struct drm_i915_private *dev_priv, bool rpm_resume)
 	vlv_check_no_gt_access(dev_priv);
 
 	if (rpm_resume)
-		intel_init_clock_gating(dev_priv);
+		intel_clock_gating_init(dev_priv);
 
 	return ret;
 }
-- 
2.39.1

