Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8822E49A425
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 03:08:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2456510EA1A;
	Tue, 25 Jan 2022 02:08:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B6C510E966
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 02:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643076517; x=1674612517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5fJ5+ZnUe2qqkzIbYlfPVhrzijeM913DwuOjp1Jnrqg=;
 b=IH6O9TJZfod16ulFeTB02pWq4JpF/QHsLKBd+adUC0jzBqGXoA53tMUj
 LxS3g5X1xwytd0EPWVGWE1HuFkPmTkojXk1FH+PO39VVTicF86ZGmVeRH
 JT4NyzyLG3FktcQ+GpfHmy5Cun6H/cqqzA7+cUcbZuAcSABn+6xW030ox
 aMPybTI68qdC8WvwQrkSG+S3Vcnoy7W/6CuXvgpyJax2vGQHs7Gn0Zdcc
 qzfetPQJ2qfi003aLq2VsBY14/hPhUOg0EFYZsXhQfEK39HwK85N52oDe
 8SeS1CAkU+VXjWmpqFRUhEtZww/vU9VdtCHhSfmxE6CQlOhIER3lm+C4f Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="246142669"
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="246142669"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 18:08:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="562877887"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 18:08:36 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 18:08:26 -0800
Message-Id: <20220125020826.2693097-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220125020826.2693097-1-matthew.d.roper@intel.com>
References: <20220125020826.2693097-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915: Only include i915_reg.h from
 .c files
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Several of our i915 header files, have been including i915_reg.h.  This
means that any change to i915_reg.h will trigger a full rebuild of
pretty much every file of the driver, even those that don't have any
kind of register access.  Let's delete the i915_reg.h include from all
headers and include an explicit include from the .c files that truly
need the register definitions; those that need a definition of
i915_reg_t for a function definition can get it from i915_reg_defs.h
instead.

We also remove two non-register #define's (VLV_DISPLAY_BASE and
GEN12_SFC_DONE_MAX) into i915_reg_defs.h to allow us to drop the
i915_reg.h include from a couple of headers.

There's probably a lot more header dependency optimization possible, but
the changes here roughly cut the number of files compiled after 'touch
i915_reg.h' in half --- a good first step.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.h               | 2 +-
 drivers/gpu/drm/i915/display/intel_atomic.c           | 1 +
 drivers/gpu/drm/i915/display/intel_bios.c             | 1 +
 drivers/gpu/drm/i915/display/intel_bw.c               | 1 +
 drivers/gpu/drm/i915/display/intel_crt.h              | 2 +-
 drivers/gpu/drm/i915/display/intel_ddi.h              | 2 +-
 drivers/gpu/drm/i915/display/intel_de.h               | 1 -
 drivers/gpu/drm/i915/display/intel_display_power.h    | 1 -
 drivers/gpu/drm/i915/display/intel_dmc.h              | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.h               | 2 --
 drivers/gpu/drm/i915/display/intel_dsb.h              | 2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c          | 1 +
 drivers/gpu/drm/i915/display/intel_dvo_dev.h          | 2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.h             | 2 --
 drivers/gpu/drm/i915/display/intel_lvds.h             | 2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.h             | 2 +-
 drivers/gpu/drm/i915/display/intel_tc.c               | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c            | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c            | 1 +
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c              | 1 +
 drivers/gpu/drm/i915/gt/intel_engine.h                | 1 -
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c          | 1 +
 drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c        | 1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c         | 1 +
 drivers/gpu/drm/i915/gt/intel_llc.c                   | 1 +
 drivers/gpu/drm/i915/gt/intel_rc6.c                   | 1 +
 drivers/gpu/drm/i915/gt/intel_rc6.h                   | 2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c           | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds_types.h     | 2 +-
 drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h | 1 -
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h            | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c           | 1 +
 drivers/gpu/drm/i915/gt/uc/intel_huc.h                | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c              | 1 +
 drivers/gpu/drm/i915/gvt/aperture_gm.c                | 1 +
 drivers/gpu/drm/i915/gvt/display.c                    | 1 +
 drivers/gpu/drm/i915/gvt/dmabuf.c                     | 1 +
 drivers/gpu/drm/i915/gvt/edid.c                       | 1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c                 | 1 +
 drivers/gpu/drm/i915/gvt/handlers.c                   | 1 +
 drivers/gpu/drm/i915/gvt/interrupt.c                  | 1 +
 drivers/gpu/drm/i915/gvt/interrupt.h                  | 2 +-
 drivers/gpu/drm/i915/gvt/mmio.c                       | 1 +
 drivers/gpu/drm/i915/gvt/mmio_context.h               | 1 -
 drivers/gpu/drm/i915/i915_cmd_parser.c                | 1 +
 drivers/gpu/drm/i915/i915_drv.h                       | 1 -
 drivers/gpu/drm/i915/i915_pci.c                       | 1 +
 drivers/gpu/drm/i915/i915_perf_types.h                | 2 +-
 drivers/gpu/drm/i915/i915_reg.h                       | 3 ---
 drivers/gpu/drm/i915/i915_reg_defs.h                  | 4 ++++
 drivers/gpu/drm/i915/intel_dram.c                     | 1 +
 drivers/gpu/drm/i915/intel_pcode.c                    | 1 +
 drivers/gpu/drm/i915/intel_pm.h                       | 1 -
 drivers/gpu/drm/i915/intel_sbi.c                      | 1 +
 drivers/gpu/drm/i915/intel_uncore.h                   | 2 +-
 drivers/gpu/drm/i915/vlv_sideband.c                   | 1 +
 56 files changed, 49 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.h b/drivers/gpu/drm/i915/display/g4x_hdmi.h
index 7aca14b602c6..db9a93bc9321 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.h
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 enum port;
 struct drm_i915_private;
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 1080741d1561..093904065112 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -35,6 +35,7 @@
 #include <drm/drm_plane_helper.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 403d0c39ef25..aec0efd5350e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -32,6 +32,7 @@
 #include "display/intel_gmbus.h"
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 
 #define _INTEL_BIOS_PRIVATE
 #include "intel_vbt_defs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index c35bad21b657..5dce3cf0ed12 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_atomic_state_helper.h>
 
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
diff --git a/drivers/gpu/drm/i915/display/intel_crt.h b/drivers/gpu/drm/i915/display/intel_crt.h
index 6c5c44600cbd..c6071efd93ce 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.h
+++ b/drivers/gpu/drm/i915/display/intel_crt.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_CRT_H__
 #define __INTEL_CRT_H__
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 enum pipe;
 struct drm_encoder;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index c2fea6562917..d39076facdce 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_DDI_H__
 #define __INTEL_DDI_H__
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 struct drm_connector_state;
 struct drm_i915_private;
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 9d8c177aa228..9c104f65e4c8 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -7,7 +7,6 @@
 #define __INTEL_DE_H__
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "i915_trace.h"
 #include "intel_uncore.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 686d18eaa24c..930be3a0f8ef 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -7,7 +7,6 @@
 #define __INTEL_DISPLAY_POWER_H__
 
 #include "intel_runtime_pm.h"
-#include "i915_reg.h"
 
 enum dpio_channel;
 enum dpio_phy;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index b20f3441ca60..7c590309a3a9 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_DMC_H__
 #define __INTEL_DMC_H__
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 #include "intel_wakeref.h"
 #include <linux/workqueue.h>
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b64145a3869a..d457e17bdc57 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -8,8 +8,6 @@
 
 #include <linux/types.h>
 
-#include "i915_reg.h"
-
 enum intel_output_format;
 enum pipe;
 enum port;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 654a11f24b80..6cb9c580cdca 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 struct intel_crtc_state;
 struct i915_vma;
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index da0bd056f3d3..a85574c413e8 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -39,6 +39,7 @@
 #include <video/mipi_display.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
 #include "intel_dsi_vbt.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dvo_dev.h b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
index 94a6ae1e0292..d96c3cc46e50 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo_dev.h
+++ b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
@@ -27,7 +27,7 @@
 
 #include <drm/drm_crtc.h>
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 struct intel_dvo_device {
 	const char *name;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index b577c38fa90c..b0804b862a89 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -9,8 +9,6 @@
 #include <linux/hdmi.h>
 #include <linux/types.h>
 
-#include "i915_reg.h"
-
 struct drm_connector;
 struct drm_encoder;
 struct drm_i915_private;
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.h b/drivers/gpu/drm/i915/display/intel_lvds.h
index bc9c8b84ba2f..9d3372dc503f 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.h
+++ b/drivers/gpu/drm/i915/display/intel_lvds.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 enum pipe;
 struct drm_i915_private;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.h b/drivers/gpu/drm/i915/display/intel_sdvo.h
index 72065e4360d5..2868852c85f2 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.h
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 struct drm_i915_private;
 enum pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 4eefe7b0bb26..e5b8b52025de 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_dp_mst.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 26975d857776..1de73a644965 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -14,6 +14,7 @@
 #include "gem/i915_gem_region.h"
 #include "i915_drv.h"
 #include "i915_gem_stolen.h"
+#include "i915_reg.h"
 #include "i915_vgpu.h"
 
 /*
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index f37ba4f54979..d6adda5bf96b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -13,6 +13,7 @@
 #include "i915_gem_mman.h"
 #include "i915_gem_object.h"
 #include "i915_gem_tiling.h"
+#include "i915_reg.h"
 
 /**
  * DOC: buffer object tiling
diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
index e0e8d228b31f..1c82caf525c3 100644
--- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
@@ -5,6 +5,7 @@
 
 #include "gen2_engine_cs.h"
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_engine.h"
 #include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 08559ace0ada..0e353d8c2bc8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -11,7 +11,6 @@
 #include <linux/seqlock.h>
 
 #include "i915_pmu.h"
-#include "i915_reg.h"
 #include "i915_request.h"
 #include "i915_selftest.h"
 #include "intel_engine_types.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 85d66bd1667f..ee4049ee1fc9 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "i915_scatterlist.h"
 #include "i915_pvinfo.h"
 #include "i915_vgpu.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index c7321c94b956..0db822c3b7e5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_gt.h"
 #include "intel_gt_clock_utils.h"
 #include "intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 47ec4b2043e8..4e448c13a64c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -7,6 +7,7 @@
 #include <linux/seq_file.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_gt.h"
 #include "intel_gt_clock_utils.h"
 #include "intel_gt_debugfs.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/gt/intel_llc.c
index 63f18830c611..335c65758d6f 100644
--- a/drivers/gpu/drm/i915/gt/intel_llc.c
+++ b/drivers/gpu/drm/i915/gt/intel_llc.c
@@ -7,6 +7,7 @@
 #include <linux/cpufreq.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_gt.h"
 #include "intel_llc.h"
 #include "intel_pcode.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 5458e6606301..6df359c534fe 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -6,6 +6,7 @@
 #include <linux/pm_runtime.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "i915_vgpu.h"
 #include "intel_engine_regs.h"
 #include "intel_gt.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.h b/drivers/gpu/drm/i915/gt/intel_rc6.h
index e119ec4a0bcc..b6fea71afc22 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.h
@@ -6,7 +6,7 @@
 #ifndef INTEL_RC6_H
 #define INTEL_RC6_H
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 struct intel_engine_cs;
 struct intel_rc6;
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 21215a080088..cb3f66707b21 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_memory_region.h"
 #include "intel_region_lmem.h"
 #include "intel_region_ttm.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds_types.h b/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
index 1e873681795d..8a4b6de4e754 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 struct i915_wa {
 	i915_reg_t	reg;
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
index 7a8d4bfc5f6a..62cb4254a77a 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
@@ -7,7 +7,6 @@
 #define _GUC_ACTIONS_SLPC_ABI_H_
 
 #include <linux/types.h>
-#include "i915_reg.h"
 
 /**
  * DOC: SLPC SHARED DATA STRUCTURE
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
index e6bd66d6ce5a..aa057ac7e346 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
@@ -9,7 +9,7 @@
 #include <linux/compiler.h>
 #include <linux/types.h>
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 /* Definitions of GuC H/W registers, bits, etc */
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 57ae9ac98505..ddbea939b1dc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_guc_slpc.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.h b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
index ae8c8a6c8cc8..73ec670800f2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
@@ -6,7 +6,7 @@
 #ifndef _INTEL_HUC_H_
 #define _INTEL_HUC_H_
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 #include "intel_uc_fw.h"
 #include "intel_huc_fw.h"
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 62db14d41042..ba4f0970749b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -11,6 +11,7 @@
 #include "intel_uc_fw.h"
 #include "intel_uc_fw_abi.h"
 #include "i915_drv.h"
+#include "i915_reg.h"
 
 static inline struct intel_gt *
 ____uc_fw_to_gt(struct intel_uc_fw *uc_fw, enum intel_uc_fw_type type)
diff --git a/drivers/gpu/drm/i915/gvt/aperture_gm.c b/drivers/gpu/drm/i915/gvt/aperture_gm.c
index c08098a167e9..557f3314291a 100644
--- a/drivers/gpu/drm/i915/gvt/aperture_gm.c
+++ b/drivers/gpu/drm/i915/gvt/aperture_gm.c
@@ -35,6 +35,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "gt/intel_ggtt_fencing.h"
 #include "gvt.h"
 
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 4d66fb5fb29f..bef32cbd0430 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -33,6 +33,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "gvt.h"
 
 static int get_edp_pipe(struct intel_vgpu *vgpu)
diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt/dmabuf.c
index 8882843bf7ab..6dd3757cdf87 100644
--- a/drivers/gpu/drm/i915/gvt/dmabuf.c
+++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
@@ -32,6 +32,7 @@
 #include <linux/vfio.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "gvt.h"
 
 #define GEN8_DECODE_PTE(pte) (pte & GENMASK_ULL(63, 12))
diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt/edid.c
index 22247805c345..a30ba2d7b7ba 100644
--- a/drivers/gpu/drm/i915/gvt/edid.c
+++ b/drivers/gpu/drm/i915/gvt/edid.c
@@ -33,6 +33,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "gvt.h"
 
 #define GMBUS1_TOTAL_BYTES_SHIFT 16
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index f2a216347d77..835c3fde8a20 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -37,6 +37,7 @@
 #include "i915_drv.h"
 #include "gvt.h"
 #include "i915_pvinfo.h"
+#include "i915_reg.h"
 
 #define PRIMARY_FORMAT_NUM	16
 struct pixel_format {
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 3eb9961f6b29..5476642a70fb 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -37,6 +37,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "gvt.h"
 #include "i915_pvinfo.h"
 #include "display/intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/gvt/interrupt.c b/drivers/gpu/drm/i915/gvt/interrupt.c
index 9ccc6b1ecc28..228f623d466d 100644
--- a/drivers/gpu/drm/i915/gvt/interrupt.c
+++ b/drivers/gpu/drm/i915/gvt/interrupt.c
@@ -30,6 +30,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "gvt.h"
 #include "trace.h"
 
diff --git a/drivers/gpu/drm/i915/gvt/interrupt.h b/drivers/gpu/drm/i915/gvt/interrupt.h
index 0989e180ed54..b62f04ab47cb 100644
--- a/drivers/gpu/drm/i915/gvt/interrupt.h
+++ b/drivers/gpu/drm/i915/gvt/interrupt.h
@@ -35,7 +35,7 @@
 #include <linux/hrtimer.h>
 #include <linux/kernel.h>
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 enum intel_gvt_event_type {
 	RCS_MI_USER_INTERRUPT = 0,
diff --git a/drivers/gpu/drm/i915/gvt/mmio.c b/drivers/gpu/drm/i915/gvt/mmio.c
index 0215e1ea621d..5db0ef83d522 100644
--- a/drivers/gpu/drm/i915/gvt/mmio.c
+++ b/drivers/gpu/drm/i915/gvt/mmio.c
@@ -34,6 +34,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "gvt.h"
 
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.h b/drivers/gpu/drm/i915/gvt/mmio_context.h
index 128fd7f4d509..9540813b88e5 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.h
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.h
@@ -41,7 +41,6 @@
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_engine_types.h"
 #include "gt/intel_lrc_reg.h"
-#include "i915_reg.h"
 
 struct i915_request;
 struct intel_context;
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index b394b3c3e073..aea4c30645ff 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -33,6 +33,7 @@
 #include "i915_cmd_parser.h"
 #include "i915_drv.h"
 #include "i915_memcpy.h"
+#include "i915_reg.h"
 
 /**
  * DOC: batch buffer command parser
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 44c1f98144b4..ab1146aa2760 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -61,7 +61,6 @@
 #include <drm/ttm/ttm_device.h>
 
 #include "i915_params.h"
-#include "i915_reg.h"
 #include "i915_utils.h"
 
 #include "display/intel_bios.h"
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 8261b6455747..189d3bb8955a 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -28,6 +28,7 @@
 #include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_pci.h"
+#include "i915_reg.h"
 
 #define PLATFORM(x) .platform = (x)
 #define GEN(x) \
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index aa14354a5120..473a3c0544bb 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -18,7 +18,7 @@
 #include <uapi/drm/i915_drm.h>
 
 #include "gt/intel_sseu.h"
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 #include "intel_wakeref.h"
 
 struct drm_i915_private;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 00a117261610..088013aeb6d3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -115,7 +115,6 @@
  *  #define GEN8_BAR                    _MMIO(0xb888)
  */
 
-#define VLV_DISPLAY_BASE		0x180000
 #define VLV_MIPI_BASE			VLV_DISPLAY_BASE
 #define BXT_MIPI_BASE			0x60000
 
@@ -189,8 +188,6 @@
 #define _MASKED_BIT_ENABLE(a)	({ typeof(a) _a = (a); _MASKED_FIELD(_a, _a); })
 #define _MASKED_BIT_DISABLE(a)	(_MASKED_FIELD((a), 0))
 
-#define GEN12_SFC_DONE_MAX		4
-
 #define GU_CNTL				_MMIO(0x101010)
 #define   LMEM_INIT			REG_BIT(7)
 
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index 6ee51d4a233a..34d37bbf08cd 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -94,4 +94,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 	return !i915_mmio_reg_equal(reg, INVALID_MMIO_REG);
 }
 
+#define VLV_DISPLAY_BASE		0x180000
+
+#define GEN12_SFC_DONE_MAX		4
+
 #endif /* __I915_REG_DEFS__ */
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 3e26ccabf7f9..723bd0411a0e 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_dram.h"
 #include "intel_pcode.h"
 
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index db4403f63cac..391a37492ce5 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_pcode.h"
 
 static int gen6_check_mailbox_status(u32 mbox)
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index 990cdcaf85ce..ae821e35d5fc 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -12,7 +12,6 @@
 #include "display/intel_global_state.h"
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 
 struct drm_device;
 struct drm_i915_private;
diff --git a/drivers/gpu/drm/i915/intel_sbi.c b/drivers/gpu/drm/i915/intel_sbi.c
index 5ba8490a31e6..5c6e517c73f4 100644
--- a/drivers/gpu/drm/i915/intel_sbi.c
+++ b/drivers/gpu/drm/i915/intel_sbi.c
@@ -7,6 +7,7 @@
 
 #include "i915_drv.h"
 #include "intel_sbi.h"
+#include "i915_reg.h"
 
 /* SBI access */
 static int intel_sbi_rw(struct drm_i915_private *i915, u16 reg,
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 210fe2a71612..785063025ec8 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -30,7 +30,7 @@
 #include <linux/hrtimer.h>
 #include <linux/io-64-nonatomic-lo-hi.h>
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 struct drm_i915_private;
 struct intel_runtime_pm;
diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/vlv_sideband.c
index ed2ac5752ac4..c26001300ebd 100644
--- a/drivers/gpu/drm/i915/vlv_sideband.c
+++ b/drivers/gpu/drm/i915/vlv_sideband.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_iosf_mbi.h"
+#include "i915_reg.h"
 #include "vlv_sideband.h"
 
 /*
-- 
2.34.1

