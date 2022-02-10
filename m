Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 124244B192E
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 00:12:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51AC010E123;
	Thu, 10 Feb 2022 23:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1164710E123
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 23:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644534752; x=1676070752;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4LnMBVIbGzl5Hv3Gq9EkkrVXA+TwY8T8UA1t7OUzHk8=;
 b=friYHJ9Mw17LXFESCJLGhS/MBEUr/vtVhaiaZlw/7btqdNN0JFnLeG4G
 HxSzdC3ue3A2Sf5gKtjzOxptkHu4OT85DzE49qvW287zop7G3f9E/ncOV
 zFw3sgP+TLMLMPtl1tsz9m1FzLUsW5ccmhpQ+SWLu4Dq8+RKrgFZVaBPZ
 myFDI3e4NVN4qmEjfADwzwGN4V7qV20xIyXC9blcALm8tXl1lvPRRDTi4
 kL0iOEYzEWTmTEoi1I6jHYl0pOZfCcDqXUn1dqGFyh9e4T0QWDz3uhuah
 pBOzbCk4Kps2d/8Rt4JpFwqWCzO9UV7nEbDz75FD0Lsn/DQNMysRJja3U A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249561310"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="249561310"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 15:12:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="568826947"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 15:12:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 15:12:17 -0800
Message-Id: <20220210231217.1706063-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Move MCHBAR registers to their own
 header
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

Registers that exist within the MCH BAR and are mirrored into the GPU's
MMIO space are a good candidate to separate out into their own header.

For reference, the mirror of the MCH BAR lives at the following
locations in the graphics MMIO space:

 * Pre-gen6:           0x10000 -  0x13000
 * Gen6-Gen11 + RKL:  0x140000 - 0x14FFFF
 * TGL, ADL:          0x140000 - 0x15FFFF

Bspec: 134, 51771
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       |   1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   1 +
 .../drm/i915/display/intel_display_power.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |   1 +
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   7 -
 drivers/gpu/drm/i915/gt/intel_llc.c           |   1 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |   1 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |   1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
 drivers/gpu/drm/i915/i915_debugfs.c           |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 203 ----------------
 drivers/gpu/drm/i915/intel_dram.c             |   1 +
 drivers/gpu/drm/i915/intel_mchbar_regs.h      | 221 ++++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.c               |   1 +
 17 files changed, 235 insertions(+), 210 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_mchbar_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 5dce3cf0ed12..b612987436cb 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -10,6 +10,7 @@
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
+#include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 #include "intel_pm.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 118ef391b560..8888fda8b701 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -32,6 +32,7 @@
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_mchbar_regs.h"
 #include "intel_pci_config.h"
 #include "intel_pcode.h"
 #include "intel_psr.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index d2102cc17bb4..9ebae7ac3235 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -16,6 +16,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_hotplug.h"
+#include "intel_mchbar_regs.h"
 #include "intel_pch_refclk.h"
 #include "intel_pcode.h"
 #include "intel_pm.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 1de73a644965..b9c3196b91ca 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -16,6 +16,7 @@
 #include "i915_gem_stolen.h"
 #include "i915_reg.h"
 #include "i915_vgpu.h"
+#include "intel_mchbar_regs.h"
 
 /*
  * The BIOS typically reserves some of the system's memory for the exclusive
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index ee4049ee1fc9..76880fb8fc19 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -9,6 +9,7 @@
 #include "i915_pvinfo.h"
 #include "i915_vgpu.h"
 #include "intel_gt_regs.h"
+#include "intel_mchbar_regs.h"
 
 /**
  * DOC: fence register handling
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 4e448c13a64c..37765919fe32 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -15,6 +15,7 @@
 #include "intel_gt_pm_debugfs.h"
 #include "intel_gt_regs.h"
 #include "intel_llc.h"
+#include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 #include "intel_rc6.h"
 #include "intel_rps.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index e73c706e7f0d..210c42c69a97 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -8,13 +8,6 @@
 
 #include "i915_reg_defs.h"
 
-#define ILK_GDSR _MMIO(MCHBAR_MIRROR_BASE + 0x2ca4)
-#define  ILK_GRDOM_FULL		(0 << 1)
-#define  ILK_GRDOM_RENDER	(1 << 1)
-#define  ILK_GRDOM_MEDIA	(3 << 1)
-#define  ILK_GRDOM_MASK		(3 << 1)
-#define  ILK_GRDOM_RESET_ENABLE (1 << 0)
-
 #define GEN6_MBCUNIT_SNPCR	_MMIO(0x900c) /* for LLC config */
 #define   GEN6_MBC_SNPCR_SHIFT	21
 #define   GEN6_MBC_SNPCR_MASK	(3 << 21)
diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/gt/intel_llc.c
index 335c65758d6f..40e2e28ee6c7 100644
--- a/drivers/gpu/drm/i915/gt/intel_llc.c
+++ b/drivers/gpu/drm/i915/gt/intel_llc.c
@@ -10,6 +10,7 @@
 #include "i915_reg.h"
 #include "intel_gt.h"
 #include "intel_llc.h"
+#include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 
 struct ia_constants {
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 59beb69ff6f2..c2cb426227c2 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -22,6 +22,7 @@
 #include "intel_gt.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_requests.h"
+#include "intel_mchbar_regs.h"
 #include "intel_pci_config.h"
 #include "intel_reset.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 0cb299cdfc8f..fd95449ed46d 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -13,6 +13,7 @@
 #include "intel_gt_irq.h"
 #include "intel_gt_pm_irq.h"
 #include "intel_gt_regs.h"
+#include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 #include "intel_rps.h"
 #include "vlv_sideband.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index ddbea939b1dc..147f8799598c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_guc_slpc.h"
+#include "intel_mchbar_regs.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_regs.h"
 
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index c2ae79092b14..5e3ae5970c6b 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -40,6 +40,7 @@
 #include "i915_reg.h"
 #include "gvt.h"
 #include "i915_pvinfo.h"
+#include "intel_mchbar_regs.h"
 #include "display/intel_display_types.h"
 #include "display/intel_fbc.h"
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index ca52ee0742ce..ded07dc0c4a8 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -49,6 +49,7 @@
 #include "i915_debugfs_params.h"
 #include "i915_irq.h"
 #include "i915_scheduler.h"
+#include "intel_mchbar_regs.h"
 #include "intel_pm.h"
 
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 87c92314ee26..0fe5bc9738a3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1830,117 +1830,8 @@
 					    _PALETTE_B, _CHV_PALETTE_C) + \
 				      (i) * 4)
 
-/* MCH MMIO space */
-
-/*
- * MCHBAR mirror.
- *
- * This mirrors the MCHBAR MMIO space whose location is determined by
- * device 0 function 0's pci config register 0x44 or 0x48 and matches it in
- * every way.  It is not accessible from the CP register read instructions.
- *
- * Starting from Haswell, you can't write registers using the MCHBAR mirror,
- * just read.
- */
-#define MCHBAR_MIRROR_BASE	0x10000
-
-#define MCHBAR_MIRROR_BASE_SNB	0x140000
-
-#define CTG_STOLEN_RESERVED		_MMIO(MCHBAR_MIRROR_BASE + 0x34)
-#define ELK_STOLEN_RESERVED		_MMIO(MCHBAR_MIRROR_BASE + 0x48)
-#define G4X_STOLEN_RESERVED_ADDR1_MASK	(0xFFFF << 16)
-#define G4X_STOLEN_RESERVED_ADDR2_MASK	(0xFFF << 4)
-#define G4X_STOLEN_RESERVED_ENABLE	(1 << 0)
-
-/* Memory controller frequency in MCHBAR for Haswell (possible SNB+) */
-#define DCLK _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5e04)
-
-/* 915-945 and GM965 MCH register controlling DRAM channel access */
-#define DCC			_MMIO(MCHBAR_MIRROR_BASE + 0x200)
-#define DCC_ADDRESSING_MODE_SINGLE_CHANNEL		(0 << 0)
-#define DCC_ADDRESSING_MODE_DUAL_CHANNEL_ASYMMETRIC	(1 << 0)
-#define DCC_ADDRESSING_MODE_DUAL_CHANNEL_INTERLEAVED	(2 << 0)
-#define DCC_ADDRESSING_MODE_MASK			(3 << 0)
-#define DCC_CHANNEL_XOR_DISABLE				(1 << 10)
-#define DCC_CHANNEL_XOR_BIT_17				(1 << 9)
-#define DCC2			_MMIO(MCHBAR_MIRROR_BASE + 0x204)
-#define DCC2_MODIFIED_ENHANCED_DISABLE			(1 << 20)
-
-/* Pineview MCH register contains DDR3 setting */
-#define CSHRDDR3CTL            _MMIO(MCHBAR_MIRROR_BASE + 0x1a8)
-#define CSHRDDR3CTL_DDR3       (1 << 2)
-
-/* 965 MCH register controlling DRAM channel configuration */
-#define C0DRB3_BW		_MMIO(MCHBAR_MIRROR_BASE + 0x206)
-#define C1DRB3_BW		_MMIO(MCHBAR_MIRROR_BASE + 0x606)
-
-/* snb MCH registers for reading the DRAM channel configuration */
-#define MAD_DIMM_C0			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5004)
-#define MAD_DIMM_C1			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5008)
-#define MAD_DIMM_C2			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x500C)
-#define   MAD_DIMM_ECC_MASK		(0x3 << 24)
-#define   MAD_DIMM_ECC_OFF		(0x0 << 24)
-#define   MAD_DIMM_ECC_IO_ON_LOGIC_OFF	(0x1 << 24)
-#define   MAD_DIMM_ECC_IO_OFF_LOGIC_ON	(0x2 << 24)
-#define   MAD_DIMM_ECC_ON		(0x3 << 24)
-#define   MAD_DIMM_ENH_INTERLEAVE	(0x1 << 22)
-#define   MAD_DIMM_RANK_INTERLEAVE	(0x1 << 21)
-#define   MAD_DIMM_B_WIDTH_X16		(0x1 << 20) /* X8 chips if unset */
-#define   MAD_DIMM_A_WIDTH_X16		(0x1 << 19) /* X8 chips if unset */
-#define   MAD_DIMM_B_DUAL_RANK		(0x1 << 18)
-#define   MAD_DIMM_A_DUAL_RANK		(0x1 << 17)
-#define   MAD_DIMM_A_SELECT		(0x1 << 16)
-/* DIMM sizes are in multiples of 256mb. */
-#define   MAD_DIMM_B_SIZE_SHIFT		8
-#define   MAD_DIMM_B_SIZE_MASK		(0xff << MAD_DIMM_B_SIZE_SHIFT)
-#define   MAD_DIMM_A_SIZE_SHIFT		0
-#define   MAD_DIMM_A_SIZE_MASK		(0xff << MAD_DIMM_A_SIZE_SHIFT)
-
-/* snb MCH registers for priority tuning */
-#define MCH_SSKPD			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5d10)
-#define   MCH_SSKPD_WM0_MASK		0x3f
-#define   MCH_SSKPD_WM0_VAL		0xc
-
-/* Clocking configuration register */
-#define CLKCFG			_MMIO(MCHBAR_MIRROR_BASE + 0xc00)
-#define CLKCFG_FSB_400					(0 << 0)	/* hrawclk 100 */
-#define CLKCFG_FSB_400_ALT				(5 << 0)	/* hrawclk 100 */
-#define CLKCFG_FSB_533					(1 << 0)	/* hrawclk 133 */
-#define CLKCFG_FSB_667					(3 << 0)	/* hrawclk 166 */
-#define CLKCFG_FSB_800					(2 << 0)	/* hrawclk 200 */
-#define CLKCFG_FSB_1067					(6 << 0)	/* hrawclk 266 */
-#define CLKCFG_FSB_1067_ALT				(0 << 0)	/* hrawclk 266 */
-#define CLKCFG_FSB_1333					(7 << 0)	/* hrawclk 333 */
-#define CLKCFG_FSB_1333_ALT				(4 << 0)	/* hrawclk 333 */
-#define CLKCFG_FSB_1600_ALT				(6 << 0)	/* hrawclk 400 */
-#define CLKCFG_FSB_MASK					(7 << 0)
-#define CLKCFG_MEM_533					(1 << 4)
-#define CLKCFG_MEM_667					(2 << 4)
-#define CLKCFG_MEM_800					(3 << 4)
-#define CLKCFG_MEM_MASK					(7 << 4)
-
-#define HPLLVCO                 _MMIO(MCHBAR_MIRROR_BASE + 0xc38)
-#define HPLLVCO_MOBILE          _MMIO(MCHBAR_MIRROR_BASE + 0xc0f)
-
-#define TSC1			_MMIO(0x11001)
-#define   TSE			(1 << 0)
-#define TR1			_MMIO(0x11006)
-#define TSFS			_MMIO(0x11020)
-#define   TSFS_SLOPE_MASK	0x0000ff00
-#define   TSFS_SLOPE_SHIFT	8
-#define   TSFS_INTR_MASK	0x000000ff
-
-#define CSIPLL0			_MMIO(0x12c10)
-#define DDRMPLL1		_MMIO(0X12c20)
 #define PEG_BAND_GAP_DATA	_MMIO(0x14d68)
 
-#define GEN6_GT_PERF_STATUS	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
-#define BXT_GT_PERF_STATUS      _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x7070)
-#define GEN6_RP_STATE_LIMITS	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
-#define GEN6_RP_STATE_CAP	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
-#define   RP0_CAP_MASK		REG_GENMASK(7, 0)
-#define   RP1_CAP_MASK		REG_GENMASK(15, 8)
-#define   RPN_CAP_MASK		REG_GENMASK(23, 16)
 #define BXT_RP_STATE_CAP        _MMIO(0x138170)
 #define GEN9_RP_STATE_LIMITS	_MMIO(0x138148)
 #define XEHPSDV_RP_STATE_CAP	_MMIO(0x250014)
@@ -4319,14 +4210,6 @@
 	(WM3_LP_EN | ((lat) << WM1_LP_LATENCY_SHIFT) | \
 	 ((fbc) << WM1_LP_FBC_SHIFT) | ((pri) << WM1_LP_SR_SHIFT) | (cur))
 
-/* Memory latency timer register */
-#define MLTR_ILK		_MMIO(0x11222)
-#define  MLTR_WM1_SHIFT		0
-#define  MLTR_WM2_SHIFT		8
-/* the unit of memory self-refresh latency time is 0.5us */
-#define  ILK_SRLT_MASK		0x3f
-
-
 /* the address where we get all kinds of latency value */
 #define SSKPD			_MMIO(0x5d10)
 #define SSKPD_WM_MASK		0x3f
@@ -8215,93 +8098,7 @@ enum skl_power_gate {
 #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
 #define  DC_STATE_DEBUG_MASK_MEMORY_UP	(1 << 1)
 
-#define BXT_D_CR_DRP0_DUNIT8			0x1000
-#define BXT_D_CR_DRP0_DUNIT9			0x1200
-#define  BXT_D_CR_DRP0_DUNIT_START		8
-#define  BXT_D_CR_DRP0_DUNIT_END		11
-#define BXT_D_CR_DRP0_DUNIT(x)	_MMIO(MCHBAR_MIRROR_BASE_SNB + \
-				      _PICK_EVEN((x) - 8, BXT_D_CR_DRP0_DUNIT8,\
-						 BXT_D_CR_DRP0_DUNIT9))
-#define  BXT_DRAM_RANK_MASK			0x3
-#define  BXT_DRAM_RANK_SINGLE			0x1
-#define  BXT_DRAM_RANK_DUAL			0x3
-#define  BXT_DRAM_WIDTH_MASK			(0x3 << 4)
-#define  BXT_DRAM_WIDTH_SHIFT			4
-#define  BXT_DRAM_WIDTH_X8			(0x0 << 4)
-#define  BXT_DRAM_WIDTH_X16			(0x1 << 4)
-#define  BXT_DRAM_WIDTH_X32			(0x2 << 4)
-#define  BXT_DRAM_WIDTH_X64			(0x3 << 4)
-#define  BXT_DRAM_SIZE_MASK			(0x7 << 6)
-#define  BXT_DRAM_SIZE_SHIFT			6
-#define  BXT_DRAM_SIZE_4GBIT			(0x0 << 6)
-#define  BXT_DRAM_SIZE_6GBIT			(0x1 << 6)
-#define  BXT_DRAM_SIZE_8GBIT			(0x2 << 6)
-#define  BXT_DRAM_SIZE_12GBIT			(0x3 << 6)
-#define  BXT_DRAM_SIZE_16GBIT			(0x4 << 6)
-#define  BXT_DRAM_TYPE_MASK			(0x7 << 22)
-#define  BXT_DRAM_TYPE_SHIFT			22
-#define  BXT_DRAM_TYPE_DDR3			(0x0 << 22)
-#define  BXT_DRAM_TYPE_LPDDR3			(0x1 << 22)
-#define  BXT_DRAM_TYPE_LPDDR4			(0x2 << 22)
-#define  BXT_DRAM_TYPE_DDR4			(0x4 << 22)
-
-#define SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5E04)
-#define  DG1_GEAR_TYPE				REG_BIT(16)
-
-#define SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5000)
-#define  SKL_DRAM_DDR_TYPE_MASK			(0x3 << 0)
-#define  SKL_DRAM_DDR_TYPE_DDR4			(0 << 0)
-#define  SKL_DRAM_DDR_TYPE_DDR3			(1 << 0)
-#define  SKL_DRAM_DDR_TYPE_LPDDR3		(2 << 0)
-#define  SKL_DRAM_DDR_TYPE_LPDDR4		(3 << 0)
-
-#define SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x500C)
-#define SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5010)
-#define  SKL_DRAM_S_SHIFT			16
-#define  SKL_DRAM_SIZE_MASK			0x3F
-#define  SKL_DRAM_WIDTH_MASK			(0x3 << 8)
-#define  SKL_DRAM_WIDTH_SHIFT			8
-#define  SKL_DRAM_WIDTH_X8			(0x0 << 8)
-#define  SKL_DRAM_WIDTH_X16			(0x1 << 8)
-#define  SKL_DRAM_WIDTH_X32			(0x2 << 8)
-#define  SKL_DRAM_RANK_MASK			(0x1 << 10)
-#define  SKL_DRAM_RANK_SHIFT			10
-#define  SKL_DRAM_RANK_1			(0x0 << 10)
-#define  SKL_DRAM_RANK_2			(0x1 << 10)
-#define  SKL_DRAM_RANK_MASK			(0x1 << 10)
-#define  ICL_DRAM_SIZE_MASK			0x7F
-#define  ICL_DRAM_WIDTH_MASK			(0x3 << 7)
-#define  ICL_DRAM_WIDTH_SHIFT			7
-#define  ICL_DRAM_WIDTH_X8			(0x0 << 7)
-#define  ICL_DRAM_WIDTH_X16			(0x1 << 7)
-#define  ICL_DRAM_WIDTH_X32			(0x2 << 7)
-#define  ICL_DRAM_RANK_MASK			(0x3 << 9)
-#define  ICL_DRAM_RANK_SHIFT			9
-#define  ICL_DRAM_RANK_1			(0x0 << 9)
-#define  ICL_DRAM_RANK_2			(0x1 << 9)
-#define  ICL_DRAM_RANK_3			(0x2 << 9)
-#define  ICL_DRAM_RANK_4			(0x3 << 9)
-
-#define SA_PERF_STATUS_0_0_0_MCHBAR_PC		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5918)
-#define  DG1_QCLK_RATIO_MASK			REG_GENMASK(9, 2)
-#define  DG1_QCLK_REFERENCE			REG_BIT(10)
-
-#define MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x4000)
-#define   DG1_DRAM_T_RDPRE_MASK			REG_GENMASK(16, 11)
-#define   DG1_DRAM_T_RP_MASK			REG_GENMASK(6, 0)
-#define MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR_HIGH	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x4004)
-#define   DG1_DRAM_T_RCD_MASK			REG_GENMASK(15, 9)
-#define   DG1_DRAM_T_RAS_MASK			REG_GENMASK(8, 1)
-
-/*
- * Please see hsw_read_dcomp() and hsw_write_dcomp() before using this register,
- * since on HSW we can't write to it using intel_uncore_write.
- */
-#define D_COMP_HSW			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5F0C)
 #define D_COMP_BDW			_MMIO(0x138144)
-#define  D_COMP_RCOMP_IN_PROGRESS	(1 << 9)
-#define  D_COMP_COMP_FORCE		(1 << 8)
-#define  D_COMP_COMP_DISABLE		(1 << 0)
 
 /* Pipe WM_LINETIME - watermark line time */
 #define _WM_LINETIME_A		0x45270
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 723bd0411a0e..174c95c3e10f 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_dram.h"
+#include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 
 struct dram_dimm_info {
diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
new file mode 100644
index 000000000000..f4aef00b30f7
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -0,0 +1,221 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_MCHBAR_REGS__
+#define __INTEL_MCHBAR_REGS__
+
+#include "i915_reg_defs.h"
+
+/*
+ * MCHBAR mirror.
+ *
+ * This mirrors the MCHBAR MMIO space whose location is determined by
+ * device 0 function 0's pci config register 0x44 or 0x48 and matches it in
+ * every way.  It is not accessible from the CP register read instructions.
+ *
+ * Starting from Haswell, you can't write registers using the MCHBAR mirror,
+ * just read.
+ */
+
+#define MCHBAR_MIRROR_BASE			0x10000
+#define MCHBAR_MIRROR_BASE_SNB			0x140000
+
+#define CTG_STOLEN_RESERVED			_MMIO(MCHBAR_MIRROR_BASE + 0x34)
+#define ELK_STOLEN_RESERVED			_MMIO(MCHBAR_MIRROR_BASE + 0x48)
+#define   G4X_STOLEN_RESERVED_ADDR1_MASK	(0xFFFF << 16)
+#define   G4X_STOLEN_RESERVED_ADDR2_MASK	(0xFFF << 4)
+#define   G4X_STOLEN_RESERVED_ENABLE		(1 << 0)
+
+/* Pineview MCH register contains DDR3 setting */
+#define CSHRDDR3CTL				_MMIO(MCHBAR_MIRROR_BASE + 0x1a8)
+#define   CSHRDDR3CTL_DDR3			(1 << 2)
+
+/* 915-945 and GM965 MCH register controlling DRAM channel access */
+#define DCC					_MMIO(MCHBAR_MIRROR_BASE + 0x200)
+#define   DCC_ADDRESSING_MODE_SINGLE_CHANNEL	(0 << 0)
+#define   DCC_ADDRESSING_MODE_DUAL_CHANNEL_ASYMMETRIC	(1 << 0)
+#define   DCC_ADDRESSING_MODE_DUAL_CHANNEL_INTERLEAVED	(2 << 0)
+#define   DCC_ADDRESSING_MODE_MASK		(3 << 0)
+#define   DCC_CHANNEL_XOR_DISABLE		(1 << 10)
+#define   DCC_CHANNEL_XOR_BIT_17		(1 << 9)
+#define DCC2					_MMIO(MCHBAR_MIRROR_BASE + 0x204)
+#define   DCC2_MODIFIED_ENHANCED_DISABLE	(1 << 20)
+
+/* 965 MCH register controlling DRAM channel configuration */
+#define C0DRB3_BW				_MMIO(MCHBAR_MIRROR_BASE + 0x206)
+#define C1DRB3_BW				_MMIO(MCHBAR_MIRROR_BASE + 0x606)
+
+/* Clocking configuration register */
+#define CLKCFG					_MMIO(MCHBAR_MIRROR_BASE + 0xc00)
+#define CLKCFG_FSB_400				(0 << 0)	/* hrawclk 100 */
+#define CLKCFG_FSB_400_ALT			(5 << 0)	/* hrawclk 100 */
+#define CLKCFG_FSB_533				(1 << 0)	/* hrawclk 133 */
+#define CLKCFG_FSB_667				(3 << 0)	/* hrawclk 166 */
+#define CLKCFG_FSB_800				(2 << 0)	/* hrawclk 200 */
+#define CLKCFG_FSB_1067				(6 << 0)	/* hrawclk 266 */
+#define CLKCFG_FSB_1067_ALT			(0 << 0)	/* hrawclk 266 */
+#define CLKCFG_FSB_1333				(7 << 0)	/* hrawclk 333 */
+#define CLKCFG_FSB_1333_ALT			(4 << 0)	/* hrawclk 333 */
+#define CLKCFG_FSB_1600_ALT			(6 << 0)	/* hrawclk 400 */
+#define CLKCFG_FSB_MASK				(7 << 0)
+#define CLKCFG_MEM_533				(1 << 4)
+#define CLKCFG_MEM_667				(2 << 4)
+#define CLKCFG_MEM_800				(3 << 4)
+#define CLKCFG_MEM_MASK				(7 << 4)
+
+#define HPLLVCO_MOBILE				_MMIO(MCHBAR_MIRROR_BASE + 0xc0f)
+#define HPLLVCO					_MMIO(MCHBAR_MIRROR_BASE + 0xc38)
+
+#define TSC1					_MMIO(MCHBAR_MIRROR_BASE + 0x1001)
+#define   TSE					(1 << 0)
+#define TR1					_MMIO(MCHBAR_MIRROR_BASE + 0x1006)
+#define TSFS					_MMIO(MCHBAR_MIRROR_BASE + 0x1020)
+#define   TSFS_SLOPE_MASK			0x0000ff00
+#define   TSFS_SLOPE_SHIFT			8
+#define   TSFS_INTR_MASK			0x000000ff
+
+/* Memory latency timer register */
+#define MLTR_ILK				_MMIO(MCHBAR_MIRROR_BASE + 0x1222)
+#define   MLTR_WM1_SHIFT			0
+#define   MLTR_WM2_SHIFT			8
+/* the unit of memory self-refresh latency time is 0.5us */
+#define   ILK_SRLT_MASK				0x3f
+
+#define CSIPLL0					_MMIO(MCHBAR_MIRROR_BASE + 0x2c10)
+#define DDRMPLL1				_MMIO(MCHBAR_MIRROR_BASE + 0x2c20)
+
+#define ILK_GDSR				_MMIO(MCHBAR_MIRROR_BASE + 0x2ca4)
+#define  ILK_GRDOM_FULL				(0 << 1)
+#define  ILK_GRDOM_RENDER			(1 << 1)
+#define  ILK_GRDOM_MEDIA			(3 << 1)
+#define  ILK_GRDOM_MASK				(3 << 1)
+#define  ILK_GRDOM_RESET_ENABLE			(1 << 0)
+
+#define BXT_D_CR_DRP0_DUNIT8			0x1000
+#define BXT_D_CR_DRP0_DUNIT9			0x1200
+#define   BXT_D_CR_DRP0_DUNIT_START		8
+#define   BXT_D_CR_DRP0_DUNIT_END		11
+#define BXT_D_CR_DRP0_DUNIT(x)			_MMIO(MCHBAR_MIRROR_BASE_SNB + \
+						      _PICK_EVEN((x) - 8, BXT_D_CR_DRP0_DUNIT8,\
+								 BXT_D_CR_DRP0_DUNIT9))
+#define   BXT_DRAM_RANK_MASK			0x3
+#define   BXT_DRAM_RANK_SINGLE			0x1
+#define   BXT_DRAM_RANK_DUAL			0x3
+#define   BXT_DRAM_WIDTH_MASK			(0x3 << 4)
+#define   BXT_DRAM_WIDTH_SHIFT			4
+#define   BXT_DRAM_WIDTH_X8			(0x0 << 4)
+#define   BXT_DRAM_WIDTH_X16			(0x1 << 4)
+#define   BXT_DRAM_WIDTH_X32			(0x2 << 4)
+#define   BXT_DRAM_WIDTH_X64			(0x3 << 4)
+#define   BXT_DRAM_SIZE_MASK			(0x7 << 6)
+#define   BXT_DRAM_SIZE_SHIFT			6
+#define   BXT_DRAM_SIZE_4GBIT			(0x0 << 6)
+#define   BXT_DRAM_SIZE_6GBIT			(0x1 << 6)
+#define   BXT_DRAM_SIZE_8GBIT			(0x2 << 6)
+#define   BXT_DRAM_SIZE_12GBIT			(0x3 << 6)
+#define   BXT_DRAM_SIZE_16GBIT			(0x4 << 6)
+#define   BXT_DRAM_TYPE_MASK			(0x7 << 22)
+#define   BXT_DRAM_TYPE_SHIFT			22
+#define   BXT_DRAM_TYPE_DDR3			(0x0 << 22)
+#define   BXT_DRAM_TYPE_LPDDR3			(0x1 << 22)
+#define   BXT_DRAM_TYPE_LPDDR4			(0x2 << 22)
+#define   BXT_DRAM_TYPE_DDR4			(0x4 << 22)
+
+#define MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x4000)
+#define   DG1_DRAM_T_RDPRE_MASK			REG_GENMASK(16, 11)
+#define   DG1_DRAM_T_RP_MASK			REG_GENMASK(6, 0)
+#define MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR_HIGH	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x4004)
+#define   DG1_DRAM_T_RCD_MASK			REG_GENMASK(15, 9)
+#define   DG1_DRAM_T_RAS_MASK			REG_GENMASK(8, 1)
+
+#define SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5000)
+#define   SKL_DRAM_DDR_TYPE_MASK		(0x3 << 0)
+#define   SKL_DRAM_DDR_TYPE_DDR4		(0 << 0)
+#define   SKL_DRAM_DDR_TYPE_DDR3		(1 << 0)
+#define   SKL_DRAM_DDR_TYPE_LPDDR3		(2 << 0)
+#define   SKL_DRAM_DDR_TYPE_LPDDR4		(3 << 0)
+
+/* snb MCH registers for reading the DRAM channel configuration */
+#define MAD_DIMM_C0				_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5004)
+#define MAD_DIMM_C1				_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5008)
+#define MAD_DIMM_C2				_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x500C)
+#define   MAD_DIMM_ECC_MASK			(0x3 << 24)
+#define   MAD_DIMM_ECC_OFF			(0x0 << 24)
+#define   MAD_DIMM_ECC_IO_ON_LOGIC_OFF		(0x1 << 24)
+#define   MAD_DIMM_ECC_IO_OFF_LOGIC_ON		(0x2 << 24)
+#define   MAD_DIMM_ECC_ON			(0x3 << 24)
+#define   MAD_DIMM_ENH_INTERLEAVE		(0x1 << 22)
+#define   MAD_DIMM_RANK_INTERLEAVE		(0x1 << 21)
+#define   MAD_DIMM_B_WIDTH_X16			(0x1 << 20) /* X8 chips if unset */
+#define   MAD_DIMM_A_WIDTH_X16			(0x1 << 19) /* X8 chips if unset */
+#define   MAD_DIMM_B_DUAL_RANK			(0x1 << 18)
+#define   MAD_DIMM_A_DUAL_RANK			(0x1 << 17)
+#define   MAD_DIMM_A_SELECT			(0x1 << 16)
+/* DIMM sizes are in multiples of 256mb. */
+#define   MAD_DIMM_B_SIZE_SHIFT			8
+#define   MAD_DIMM_B_SIZE_MASK			(0xff << MAD_DIMM_B_SIZE_SHIFT)
+#define   MAD_DIMM_A_SIZE_SHIFT			0
+#define   MAD_DIMM_A_SIZE_MASK			(0xff << MAD_DIMM_A_SIZE_SHIFT)
+
+#define SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x500C)
+#define SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5010)
+#define   SKL_DRAM_S_SHIFT			16
+#define   SKL_DRAM_SIZE_MASK			0x3F
+#define   SKL_DRAM_WIDTH_MASK			(0x3 << 8)
+#define   SKL_DRAM_WIDTH_SHIFT			8
+#define   SKL_DRAM_WIDTH_X8			(0x0 << 8)
+#define   SKL_DRAM_WIDTH_X16			(0x1 << 8)
+#define   SKL_DRAM_WIDTH_X32			(0x2 << 8)
+#define   SKL_DRAM_RANK_MASK			(0x1 << 10)
+#define   SKL_DRAM_RANK_SHIFT			10
+#define   SKL_DRAM_RANK_1			(0x0 << 10)
+#define   SKL_DRAM_RANK_2			(0x1 << 10)
+#define   SKL_DRAM_RANK_MASK			(0x1 << 10)
+#define   ICL_DRAM_SIZE_MASK			0x7F
+#define   ICL_DRAM_WIDTH_MASK			(0x3 << 7)
+#define   ICL_DRAM_WIDTH_SHIFT			7
+#define   ICL_DRAM_WIDTH_X8			(0x0 << 7)
+#define   ICL_DRAM_WIDTH_X16			(0x1 << 7)
+#define   ICL_DRAM_WIDTH_X32			(0x2 << 7)
+#define   ICL_DRAM_RANK_MASK			(0x3 << 9)
+#define   ICL_DRAM_RANK_SHIFT			9
+#define   ICL_DRAM_RANK_1			(0x0 << 9)
+#define   ICL_DRAM_RANK_2			(0x1 << 9)
+#define   ICL_DRAM_RANK_3			(0x2 << 9)
+#define   ICL_DRAM_RANK_4			(0x3 << 9)
+
+#define SA_PERF_STATUS_0_0_0_MCHBAR_PC		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5918)
+#define  DG1_QCLK_RATIO_MASK			REG_GENMASK(9, 2)
+#define  DG1_QCLK_REFERENCE			REG_BIT(10)
+
+#define GEN6_GT_PERF_STATUS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
+#define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
+#define GEN6_RP_STATE_CAP			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
+#define   RP0_CAP_MASK				REG_GENMASK(7, 0)
+#define   RP1_CAP_MASK				REG_GENMASK(15, 8)
+#define   RPN_CAP_MASK				REG_GENMASK(23, 16)
+
+/* snb MCH registers for priority tuning */
+#define MCH_SSKPD				_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5d10)
+#define   MCH_SSKPD_WM0_MASK			0x3f
+#define   MCH_SSKPD_WM0_VAL			0xc
+
+/* Memory controller frequency in MCHBAR for Haswell (possible SNB+) */
+#define DCLK					_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5e04)
+#define SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5e04)
+#define   DG1_GEAR_TYPE				REG_BIT(16)
+
+/*
+ * Please see hsw_read_dcomp() and hsw_write_dcomp() before using this register,
+ * since on HSW we can't write to it using intel_uncore_write.
+ */
+#define D_COMP_HSW				_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5f0c)
+#define  D_COMP_RCOMP_IN_PROGRESS		(1 << 9)
+#define  D_COMP_COMP_FORCE			(1 << 8)
+#define  D_COMP_COMP_DISABLE			(1 << 0)
+
+#define BXT_GT_PERF_STATUS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x7070)
+
+#endif /* __INTEL_MCHBAR_REGS */
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 4f2f0e80beef..aed5563f2e34 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -50,6 +50,7 @@
 #include "i915_drv.h"
 #include "i915_fixed.h"
 #include "i915_irq.h"
+#include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 #include "intel_pm.h"
 #include "vlv_sideband.h"
-- 
2.34.1

