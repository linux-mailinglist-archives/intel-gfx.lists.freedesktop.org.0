Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AE4AD1CB5
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 13:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7622C10E251;
	Mon,  9 Jun 2025 11:53:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="af1NU1PO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F6B910E248;
 Mon,  9 Jun 2025 11:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749470033; x=1781006033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J0XQh1F/HpSQdAS4wZ1qMXsVK3wPzl6NkWG6h2w1ypY=;
 b=af1NU1PODLhSnoQMT91tU2tjUS3kgc4aGQB3rCCOg9YRoiTXBawAwbB7
 CaIMkuj7vdM+OmRvT6Zw99u5uyTu+gPRIj2L0C9taw/I27nT22o++tkL8
 wLmwERH27RijmnfAV3HHFFmotwALBURWg4otMo6fCPAsrWoPgXzuQyAAI
 jyef8cdC7dPHcjDVfmdVbHosEafoVcxnrRWn5zPXkcED7T5Fdy5LQZrVT
 GdFKJnhdDHk0dHKgxq4RscQp28A9ys/aJZoC61IJ2gZbFL3yECAN7h7Hk
 pj1Bs2chv9j3iza3hStphiHZSL3R6PV3gpBTxqjMUEDHapLeMXQzn5TVd w==;
X-CSE-ConnectionGUID: MgiTeJNDSaGUUhDuZIYS+g==
X-CSE-MsgGUID: fkwJT6zDTAGo2y8VcUAp7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11458"; a="61808377"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="61808377"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 04:53:52 -0700
X-CSE-ConnectionGUID: aKUFoeztTsS5FXPV3E4Qdw==
X-CSE-MsgGUID: M3HAnWILQ8Str/jcQLHXbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151367124"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 04:53:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915/display: drop i915_reg.h include where possible
Date: Mon,  9 Jun 2025 14:53:37 +0300
Message-Id: <7c4002322f4d8132fd2eaa1a4d688539cdd043c3.1749469962.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749469962.git.jani.nikula@intel.com>
References: <cover.1749469962.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

A number of files have unnecessary i915_reg.h includes. Drop them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_display_sr.c         | 1 -
 drivers/gpu/drm/i915/display/intel_cmtg.c              | 1 -
 drivers/gpu/drm/i915/display/intel_combo_phy.c         | 1 -
 drivers/gpu/drm/i915/display/intel_crt.c               | 1 -
 drivers/gpu/drm/i915/display/intel_cursor.c            | 1 -
 drivers/gpu/drm/i915/display/intel_cx0_phy.c           | 1 -
 drivers/gpu/drm/i915/display/intel_display_power_map.c | 1 -
 drivers/gpu/drm/i915/display/intel_dmc_wl.c            | 1 -
 drivers/gpu/drm/i915/display/intel_dp.c                | 1 -
 drivers/gpu/drm/i915/display/intel_dp_aux.c            | 1 -
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c           | 1 -
 drivers/gpu/drm/i915/display/intel_dp_mst.c            | 1 -
 drivers/gpu/drm/i915/display/intel_dp_test.c           | 1 -
 drivers/gpu/drm/i915/display/intel_dpio_phy.c          | 1 -
 drivers/gpu/drm/i915/display/intel_dpll.c              | 1 -
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c          | 1 -
 drivers/gpu/drm/i915/display/intel_dpt_common.c        | 1 -
 drivers/gpu/drm/i915/display/intel_drrs.c              | 1 -
 drivers/gpu/drm/i915/display/intel_dsb.c               | 1 -
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c           | 1 -
 drivers/gpu/drm/i915/display/intel_dvo.c               | 1 -
 drivers/gpu/drm/i915/display/intel_fbc.c               | 1 -
 drivers/gpu/drm/i915/display/intel_hdmi.c              | 1 -
 drivers/gpu/drm/i915/display/intel_lspcon.c            | 1 -
 drivers/gpu/drm/i915/display/intel_lvds.c              | 1 -
 drivers/gpu/drm/i915/display/intel_pfit.c              | 1 -
 drivers/gpu/drm/i915/display/intel_pipe_crc.c          | 1 -
 drivers/gpu/drm/i915/display/intel_pmdemand.c          | 1 -
 drivers/gpu/drm/i915/display/intel_sdvo.c              | 1 -
 drivers/gpu/drm/i915/display/intel_snps_phy.c          | 1 -
 drivers/gpu/drm/i915/display/intel_tv.c                | 1 -
 drivers/gpu/drm/i915/display/intel_vblank.c            | 1 -
 drivers/gpu/drm/i915/display/intel_vga.c               | 1 -
 drivers/gpu/drm/i915/display/intel_vrr.c               | 1 -
 drivers/gpu/drm/i915/display/skl_scaler.c              | 1 -
 drivers/gpu/drm/i915/display/skl_universal_plane.c     | 1 -
 drivers/gpu/drm/xe/display/xe_plane_initial.c          | 1 -
 37 files changed, 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
index 357212f09a0f..935419441709 100644
--- a/drivers/gpu/drm/i915/display/i9xx_display_sr.c
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
@@ -5,7 +5,6 @@
 
 #include <drm/drm_device.h>
 
-#include "i915_reg.h"
 #include "i9xx_display_sr.h"
 #include "i9xx_wm_regs.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index d98b47a07451..165138b95cb2 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -9,7 +9,6 @@
 #include <drm/drm_device.h>
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "intel_cmtg.h"
 #include "intel_cmtg_regs.h"
 #include "intel_crtc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index b1bff2f0b020..112749f97c26 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -5,7 +5,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 6a1c5a4326fe..898c5d9e8f7a 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -34,7 +34,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_reg.h"
 #include "intel_connector.h"
 #include "intel_crt.h"
 #include "intel_crt_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 2fec5ba58373..6bd4f6a28cae 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -12,7 +12,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 75caccb65513..83c8df9dbc0c 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -8,7 +8,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_alpm.h"
 #include "intel_cx0_phy.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 8c9a637b9407..77268802b55e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -5,7 +5,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "intel_display_core.h"
 #include "intel_display_power_map.h"
 #include "intel_display_power_well.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 082cb5597c1a..44b3ee5c9be4 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -8,7 +8,6 @@
 #include <drm/drm_print.h>
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_dmc_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d04609460e8c..59e41b505191 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -50,7 +50,6 @@
 #include <drm/drm_probe_helper.h>
 
 #include "g4x_dp.h"
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_alpm.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index bf8e8e0cc19c..411cf4474776 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -5,7 +5,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 23ea94ba4c6c..7bd775fb65a0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -11,7 +11,6 @@
 #include <drm/display/drm_hdcp_helper.h>
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7d13f9e3f4c5..74497c9a0554 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -33,7 +33,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index 82b74f109315..6ed5012c5fac 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -10,7 +10,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_reg.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 339c5c50eb67..3f77ad92c156 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -24,7 +24,6 @@
 #include <drm/drm_print.h>
 
 #include "bxt_dpio_phy_regs.h"
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index fa6a7d2b7075..f969c5399a51 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -8,7 +8,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_cx0_phy.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 2bcbeb7232d7..33e0398120c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -27,7 +27,6 @@
 #include <drm/drm_print.h>
 
 #include "bxt_dpio_phy_regs.h"
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_cx0_phy.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpt_common.c b/drivers/gpu/drm/i915/display/intel_dpt_common.c
index 6914aac6a8f5..5eb88d51dba1 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt_common.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt_common.c
@@ -3,7 +3,6 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 09ee2b157e2f..3fa94510458d 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -6,7 +6,6 @@
 #include <linux/debugfs.h>
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 1a03c0ef2054..4252eba7f7d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -7,7 +7,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 6e1a23cc0aad..e6a851d276f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -38,7 +38,6 @@
 #include <drm/drm_print.h>
 #include <video/mipi_display.h>
 
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 7cf3fb9163f4..08b48e36aca6 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -34,7 +34,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_connector.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 4a8a310b7574..ec1ef8694c35 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -49,7 +49,6 @@
 #include "gt/intel_gt_types.h"
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "i915_vgpu.h"
 #include "i915_vma.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 2fc8a75f96f6..9961ff259298 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -44,7 +44,6 @@
 #include <media/cec-notifier.h>
 
 #include "g4x_hdmi.h"
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index a874a28e4cf9..abc4b562083d 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -29,7 +29,6 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index f07c7ef56148..7e48a235c99f 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -40,7 +40,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index b615be868fd9..13541be4d6df 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -5,7 +5,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_core.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 6e4c65a08949..c2b4b2254190 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -30,7 +30,6 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
-#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index d93773f943db..93d5ee36fff1 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -7,7 +7,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_bw.h"
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index b217fc5c87b1..87aff2754f69 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -39,7 +39,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 8edc9252276b..b2dd69a11124 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -7,7 +7,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 3b9801a3ad04..e3ab49815a3c 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -36,7 +36,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_reg.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index c1c6ce390bbc..70ba7aa26bf4 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -6,7 +6,6 @@
 #include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "intel_color.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 05d140c8032d..6e125564db34 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -13,7 +13,6 @@
 
 #include "soc/intel_gmch.h"
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_vga.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9c2c1881ea13..3eed37f271b0 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -6,7 +6,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 9a1603138297..d77798499c57 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -5,7 +5,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 7acba42499b7..2aa64482d44b 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -11,7 +11,6 @@
 #include "pxp/intel_pxp.h"
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "intel_atomic_plane.h"
 #include "intel_bo.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 1b86a510a4ba..af47ce34102c 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -10,7 +10,6 @@
 #include "xe_ggtt.h"
 #include "xe_mmio.h"
 
-#include "i915_reg.h"
 #include "intel_atomic_plane.h"
 #include "intel_crtc.h"
 #include "intel_display.h"
-- 
2.39.5

