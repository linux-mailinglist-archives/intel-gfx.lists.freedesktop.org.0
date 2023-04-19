Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCA26E768F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 11:42:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB66710E912;
	Wed, 19 Apr 2023 09:42:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CF9510E912
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 09:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681897370; x=1713433370;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9gHyZYrGQEstoCuf7sZkhu7MXkrA2OqFcL4jKPb8+IQ=;
 b=Orq7PolOPRBWoPUashtTpP9kyPxTunqps6iVQgZDyA7x4zW0FI4sOF6B
 QKE+E6Y7qM3AoByUwqbmIJijuS1YzegRBIWVVH2qELM0joyB7c/eautBY
 mqdubEjYSn1W4gRV7E/cwNykDwgf8vKdRkWzgW30SpH2bBU6bDx6kITQF
 l78i+st0jWCq5Qho/c1YkmLsgSFqsa/CO0TUmaEzEOgQKWThwUsDvqJgo
 NO+u6+i1ajMx7GGt2DP50cnc3clNMaYMxpGVG+bzF9YrmrjeimfMSIkM/
 hu/L/o+Dcpi8yLq68Rt/yL6WmmORCfbdVLRVUUuwRuD2rzEcUkiHdey0g A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="410632474"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="410632474"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 02:42:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="723988401"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="723988401"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 02:42:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Apr 2023 12:42:43 +0300
Message-Id: <20230419094243.366821-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: use explicit includes for i915_reg.h
 and i915_irq.h
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

A lot of places include i915_reg.h implicitly via i915_irq.h, which gets
included implicitly via intel_display_trace.h. Remove the includes from
the headers, and include i915_reg.h and i915_irq.h explicitly where
needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c                  | 1 +
 drivers/gpu/drm/i915/display/intel_atomic_plane.c       | 1 +
 drivers/gpu/drm/i915/display/intel_display_power.c      | 1 +
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 1 +
 drivers/gpu/drm/i915/display/intel_display_trace.h      | 1 -
 drivers/gpu/drm/i915/display/intel_fbc.c                | 1 +
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c      | 2 ++
 drivers/gpu/drm/i915/gt/intel_gt_irq.c                  | 1 +
 drivers/gpu/drm/i915/gt/intel_reset.c                   | 1 +
 drivers/gpu/drm/i915/gt/intel_rps.c                     | 1 +
 drivers/gpu/drm/i915/gt/selftest_rps.c                  | 1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c                  | 1 +
 drivers/gpu/drm/i915/i915_debugfs.c                     | 1 +
 drivers/gpu/drm/i915/i915_irq.c                         | 1 +
 drivers/gpu/drm/i915/i915_irq.h                         | 2 +-
 drivers/gpu/drm/i915/intel_clock_gating.c               | 1 +
 16 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 6288826a9497..af0c79a4c9a4 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
 #include "intel_display.h"
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 40de9f0f171b..9f670dcfe76e 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -36,6 +36,7 @@
 #include <drm/drm_fourcc.h>
 
 #include "i915_config.h"
+#include "i915_reg.h"
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
 #include "intel_display_rps.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 7c9f4288329e..5150069f3f82 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -7,6 +7,7 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_backlight_regs.h"
 #include "intel_cdclk.h"
 #include "intel_combo_phy.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 62bafcbc7937..1a19fd3bf103 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_backlight_regs.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 651ea8564e1b..99bdb833591c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -14,7 +14,6 @@
 #include <linux/tracepoint.h>
 
 #include "i915_drv.h"
-#include "i915_irq.h"
 #include "intel_crtc.h"
 #include "intel_display_types.h"
 #include "intel_vblank.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b507ff944864..11bb8cf9c9d0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -44,6 +44,7 @@
 #include <drm/drm_fourcc.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "i915_utils.h"
 #include "i915_vgpu.h"
 #include "intel_cdclk.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index b708a62e509a..e7f77a225739 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -26,6 +26,8 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
+#include "i915_irq.h"
 #include "intel_de.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 1b25a6039152..c0f3ff4746ad 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -7,6 +7,7 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_breadcrumbs.h"
 #include "intel_gt.h"
 #include "intel_gt_irq.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 6194212e8650..195ff72d7a14 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -20,6 +20,7 @@
 #include "i915_file_private.h"
 #include "i915_gpu_error.h"
 #include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_breadcrumbs.h"
 #include "intel_engine_pm.h"
 #include "intel_engine_regs.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index b2671ac59dc0..80968e49e2c3 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -10,6 +10,7 @@
 #include "display/intel_display.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_breadcrumbs.h"
 #include "intel_gt.h"
 #include "intel_gt_clock_utils.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 84e77e8dbba1..fb30f733b036 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -8,6 +8,7 @@
 
 #include "gem/i915_gem_internal.h"
 
+#include "i915_reg.h"
 #include "intel_engine_heartbeat.h"
 #include "intel_engine_pm.h"
 #include "intel_engine_regs.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index d76508fa3af7..e89f16ecf1ae 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -16,6 +16,7 @@
 #include "intel_guc_submission.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
+#include "i915_reg.h"
 
 /**
  * DOC: GuC
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 80c2bf98e341..41389a32e998 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -50,6 +50,7 @@
 #include "i915_debugfs_params.h"
 #include "i915_driver.h"
 #include "i915_irq.h"
+#include "i915_reg.h"
 #include "i915_scheduler.h"
 #include "intel_mchbar_regs.h"
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index ff2f1b115ba1..2b94b8ca8ec9 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -54,6 +54,7 @@
 #include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
+#include "i915_reg.h"
 
 /**
  * DOC: interrupt handling
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index 3717a66f97c6..dd47e473ba4f 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -9,7 +9,7 @@
 #include <linux/ktime.h>
 #include <linux/types.h>
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 enum pipe;
 struct drm_crtc;
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 2c5302bcba19..1d796b76f71b 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -36,6 +36,7 @@
 #include "gt/intel_gt_regs.h"
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_clock_gating.h"
 #include "intel_mchbar_regs.h"
 #include "vlv_sideband.h"
-- 
2.39.2

