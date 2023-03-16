Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 300046BD18C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:55:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE9610ECFB;
	Thu, 16 Mar 2023 13:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B584F10ECFB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974940; x=1710510940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aN/SACjjR0bCHZER7MU+ZNRpJUE1g99CU0xvEEDDjEw=;
 b=egH0nJyX7kBsU+OQgNIhh/J1Q4IoJpBQG4CnBc9Q5W1BxPBF7GCGXcT7
 WCz52OKuiKmQeA/RRjp/K+T27UEyL8IJdP3CLenTHzFdT8KgLOVlGicxp
 TBT/r3VcMRq1nMtF3nINdtPOsbBNFTU8MLg+eI8LTk5990KL4qcAK+I3K
 DaUV89ZoiHXwmUhNZTHVQlAyrbcf3HaNMS0cLwHUsET9BZCHhVSPip6FN
 A4Byaz8lTvFCG0g4PFTT1tGiVJfcu7dHgw/9dIBlzIiTNyICLSnycZ28g
 2cG/DM63nd1iDw9mp9cjx9uUVBcK+QcTzK2A0e0SklFLvN8uclpa8kAxK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="402872172"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="402872172"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:29:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="679893552"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="679893552"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.158])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:29:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:29:33 +0200
Message-Id: <bba37e46d767e2193d49d1d2e289040c6bf8229b.1678973282.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1678973282.git.jani.nikula@intel.com>
References: <cover.1678973282.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/fdi: split out FDI regs to a
 separate file
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

Clean up i915_reg.h by splitting out FDI regs to
display/intel_fdi_regs.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
 drivers/gpu/drm/i915/display/intel_fdi.c      |   1 +
 drivers/gpu/drm/i915/display/intel_fdi_regs.h | 151 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_pch_display.c  |   1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
 drivers/gpu/drm/i915/i915_irq.c               |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 141 ----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 8 files changed, 157 insertions(+), 141 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fdi_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 8f2ebead0826..38e9c61c2344 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -44,6 +44,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
+#include "intel_fdi_regs.h"
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
 #include "intel_hotplug.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index c08c26a321b3..55283677c45a 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -12,6 +12,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
+#include "intel_fdi_regs.h"
 
 struct intel_fdi_funcs {
 	void (*fdi_link_train)(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_fdi_regs.h b/drivers/gpu/drm/i915/display/intel_fdi_regs.h
new file mode 100644
index 000000000000..853b834c35a9
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_fdi_regs.h
@@ -0,0 +1,151 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_FDI_REGS_H__
+#define __INTEL_FDI_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+#define FDI_PLL_BIOS_0  _MMIO(0x46000)
+#define  FDI_PLL_FB_CLOCK_MASK  0xff
+#define FDI_PLL_BIOS_1  _MMIO(0x46004)
+#define FDI_PLL_BIOS_2  _MMIO(0x46008)
+#define DISPLAY_PORT_PLL_BIOS_0         _MMIO(0x4600c)
+#define DISPLAY_PORT_PLL_BIOS_1         _MMIO(0x46010)
+#define DISPLAY_PORT_PLL_BIOS_2         _MMIO(0x46014)
+
+#define FDI_PLL_FREQ_CTL        _MMIO(0x46030)
+#define  FDI_PLL_FREQ_CHANGE_REQUEST    (1 << 24)
+#define  FDI_PLL_FREQ_LOCK_LIMIT_MASK   0xfff00
+#define  FDI_PLL_FREQ_DISABLE_COUNT_LIMIT_MASK  0xff
+
+#define _FDI_RXA_CHICKEN        0xc200c
+#define _FDI_RXB_CHICKEN        0xc2010
+#define  FDI_RX_PHASE_SYNC_POINTER_OVR	(1 << 1)
+#define  FDI_RX_PHASE_SYNC_POINTER_EN	(1 << 0)
+#define FDI_RX_CHICKEN(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_CHICKEN, _FDI_RXB_CHICKEN)
+
+/* CPU: FDI_TX */
+#define _FDI_TXA_CTL            0x60100
+#define _FDI_TXB_CTL            0x61100
+#define FDI_TX_CTL(pipe)	_MMIO_PIPE(pipe, _FDI_TXA_CTL, _FDI_TXB_CTL)
+#define  FDI_TX_DISABLE         (0 << 31)
+#define  FDI_TX_ENABLE          (1 << 31)
+#define  FDI_LINK_TRAIN_PATTERN_1       (0 << 28)
+#define  FDI_LINK_TRAIN_PATTERN_2       (1 << 28)
+#define  FDI_LINK_TRAIN_PATTERN_IDLE    (2 << 28)
+#define  FDI_LINK_TRAIN_NONE            (3 << 28)
+#define  FDI_LINK_TRAIN_VOLTAGE_0_4V    (0 << 25)
+#define  FDI_LINK_TRAIN_VOLTAGE_0_6V    (1 << 25)
+#define  FDI_LINK_TRAIN_VOLTAGE_0_8V    (2 << 25)
+#define  FDI_LINK_TRAIN_VOLTAGE_1_2V    (3 << 25)
+#define  FDI_LINK_TRAIN_PRE_EMPHASIS_NONE (0 << 22)
+#define  FDI_LINK_TRAIN_PRE_EMPHASIS_1_5X (1 << 22)
+#define  FDI_LINK_TRAIN_PRE_EMPHASIS_2X   (2 << 22)
+#define  FDI_LINK_TRAIN_PRE_EMPHASIS_3X   (3 << 22)
+/* ILK always use 400mV 0dB for voltage swing and pre-emphasis level.
+   SNB has different settings. */
+/* SNB A-stepping */
+#define  FDI_LINK_TRAIN_400MV_0DB_SNB_A		(0x38 << 22)
+#define  FDI_LINK_TRAIN_400MV_6DB_SNB_A		(0x02 << 22)
+#define  FDI_LINK_TRAIN_600MV_3_5DB_SNB_A	(0x01 << 22)
+#define  FDI_LINK_TRAIN_800MV_0DB_SNB_A		(0x0 << 22)
+/* SNB B-stepping */
+#define  FDI_LINK_TRAIN_400MV_0DB_SNB_B		(0x0 << 22)
+#define  FDI_LINK_TRAIN_400MV_6DB_SNB_B		(0x3a << 22)
+#define  FDI_LINK_TRAIN_600MV_3_5DB_SNB_B	(0x39 << 22)
+#define  FDI_LINK_TRAIN_800MV_0DB_SNB_B		(0x38 << 22)
+#define  FDI_LINK_TRAIN_VOL_EMP_MASK		(0x3f << 22)
+#define  FDI_DP_PORT_WIDTH_SHIFT		19
+#define  FDI_DP_PORT_WIDTH_MASK			(7 << FDI_DP_PORT_WIDTH_SHIFT)
+#define  FDI_DP_PORT_WIDTH(width)           (((width) - 1) << FDI_DP_PORT_WIDTH_SHIFT)
+#define  FDI_TX_ENHANCE_FRAME_ENABLE    (1 << 18)
+/* Ironlake: hardwired to 1 */
+#define  FDI_TX_PLL_ENABLE              (1 << 14)
+
+/* Ivybridge has different bits for lolz */
+#define  FDI_LINK_TRAIN_PATTERN_1_IVB       (0 << 8)
+#define  FDI_LINK_TRAIN_PATTERN_2_IVB       (1 << 8)
+#define  FDI_LINK_TRAIN_PATTERN_IDLE_IVB    (2 << 8)
+#define  FDI_LINK_TRAIN_NONE_IVB            (3 << 8)
+
+/* both Tx and Rx */
+#define  FDI_COMPOSITE_SYNC		(1 << 11)
+#define  FDI_LINK_TRAIN_AUTO		(1 << 10)
+#define  FDI_SCRAMBLING_ENABLE          (0 << 7)
+#define  FDI_SCRAMBLING_DISABLE         (1 << 7)
+
+/* FDI_RX, FDI_X is hard-wired to Transcoder_X */
+#define _FDI_RXA_CTL             0xf000c
+#define _FDI_RXB_CTL             0xf100c
+#define FDI_RX_CTL(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_CTL, _FDI_RXB_CTL)
+#define  FDI_RX_ENABLE          (1 << 31)
+/* train, dp width same as FDI_TX */
+#define  FDI_FS_ERRC_ENABLE		(1 << 27)
+#define  FDI_FE_ERRC_ENABLE		(1 << 26)
+#define  FDI_RX_POLARITY_REVERSED_LPT	(1 << 16)
+#define  FDI_8BPC                       (0 << 16)
+#define  FDI_10BPC                      (1 << 16)
+#define  FDI_6BPC                       (2 << 16)
+#define  FDI_12BPC                      (3 << 16)
+#define  FDI_RX_LINK_REVERSAL_OVERRIDE  (1 << 15)
+#define  FDI_DMI_LINK_REVERSE_MASK      (1 << 14)
+#define  FDI_RX_PLL_ENABLE              (1 << 13)
+#define  FDI_FS_ERR_CORRECT_ENABLE      (1 << 11)
+#define  FDI_FE_ERR_CORRECT_ENABLE      (1 << 10)
+#define  FDI_FS_ERR_REPORT_ENABLE       (1 << 9)
+#define  FDI_FE_ERR_REPORT_ENABLE       (1 << 8)
+#define  FDI_RX_ENHANCE_FRAME_ENABLE    (1 << 6)
+#define  FDI_PCDCLK	                (1 << 4)
+/* CPT */
+#define  FDI_AUTO_TRAINING			(1 << 10)
+#define  FDI_LINK_TRAIN_PATTERN_1_CPT		(0 << 8)
+#define  FDI_LINK_TRAIN_PATTERN_2_CPT		(1 << 8)
+#define  FDI_LINK_TRAIN_PATTERN_IDLE_CPT	(2 << 8)
+#define  FDI_LINK_TRAIN_NORMAL_CPT		(3 << 8)
+#define  FDI_LINK_TRAIN_PATTERN_MASK_CPT	(3 << 8)
+
+#define _FDI_RXA_MISC			0xf0010
+#define _FDI_RXB_MISC			0xf1010
+#define  FDI_RX_PWRDN_LANE1_MASK	(3 << 26)
+#define  FDI_RX_PWRDN_LANE1_VAL(x)	((x) << 26)
+#define  FDI_RX_PWRDN_LANE0_MASK	(3 << 24)
+#define  FDI_RX_PWRDN_LANE0_VAL(x)	((x) << 24)
+#define  FDI_RX_TP1_TO_TP2_48		(2 << 20)
+#define  FDI_RX_TP1_TO_TP2_64		(3 << 20)
+#define  FDI_RX_FDI_DELAY_90		(0x90 << 0)
+#define FDI_RX_MISC(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_MISC, _FDI_RXB_MISC)
+
+#define _FDI_RXA_TUSIZE1        0xf0030
+#define _FDI_RXA_TUSIZE2        0xf0038
+#define _FDI_RXB_TUSIZE1        0xf1030
+#define _FDI_RXB_TUSIZE2        0xf1038
+#define FDI_RX_TUSIZE1(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_TUSIZE1, _FDI_RXB_TUSIZE1)
+#define FDI_RX_TUSIZE2(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_TUSIZE2, _FDI_RXB_TUSIZE2)
+
+/* FDI_RX interrupt register format */
+#define FDI_RX_INTER_LANE_ALIGN         (1 << 10)
+#define FDI_RX_SYMBOL_LOCK              (1 << 9) /* train 2 */
+#define FDI_RX_BIT_LOCK                 (1 << 8) /* train 1 */
+#define FDI_RX_TRAIN_PATTERN_2_FAIL     (1 << 7)
+#define FDI_RX_FS_CODE_ERR              (1 << 6)
+#define FDI_RX_FE_CODE_ERR              (1 << 5)
+#define FDI_RX_SYMBOL_ERR_RATE_ABOVE    (1 << 4)
+#define FDI_RX_HDCP_LINK_FAIL           (1 << 3)
+#define FDI_RX_PIXEL_FIFO_OVERFLOW      (1 << 2)
+#define FDI_RX_CROSS_CLOCK_OVERFLOW     (1 << 1)
+#define FDI_RX_SYMBOL_QUEUE_OVERFLOW    (1 << 0)
+
+#define _FDI_RXA_IIR            0xf0014
+#define _FDI_RXA_IMR            0xf0018
+#define _FDI_RXB_IIR            0xf1014
+#define _FDI_RXB_IMR            0xf1018
+#define FDI_RX_IIR(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_IIR, _FDI_RXB_IIR)
+#define FDI_RX_IMR(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_IMR, _FDI_RXB_IMR)
+
+#define FDI_PLL_CTL_1           _MMIO(0xfe000)
+#define FDI_PLL_CTL_2           _MMIO(0xfe004)
+
+#endif /* __INTEL_FDI_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 22507da0b5f0..2411fe4dee8b 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -9,6 +9,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
+#include "intel_fdi_regs.h"
 #include "intel_lvds.h"
 #include "intel_lvds_regs.h"
 #include "intel_pch_display.h"
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 70f8e35aa0af..ea6a21dc8322 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -46,6 +46,7 @@
 #include "display/intel_dp_aux_regs.h"
 #include "display/intel_dpio_phy.h"
 #include "display/intel_fbc.h"
+#include "display/intel_fdi_regs.h"
 #include "display/intel_pps_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 31271c30a8cf..c0888cc88d04 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -37,6 +37,7 @@
 #include "display/intel_de.h"
 #include "display/intel_display_trace.h"
 #include "display/intel_display_types.h"
+#include "display/intel_fdi_regs.h"
 #include "display/intel_fifo_underrun.h"
 #include "display/intel_hotplug.h"
 #include "display/intel_lpe_audio.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c1a0f8c746ba..caa24f64e8bf 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4294,14 +4294,6 @@
 #define  RR_HW_LOW_POWER_FRAMES_MASK    0xff
 #define  RR_HW_HIGH_POWER_FRAMES_MASK   0xff00
 
-#define FDI_PLL_BIOS_0  _MMIO(0x46000)
-#define  FDI_PLL_FB_CLOCK_MASK  0xff
-#define FDI_PLL_BIOS_1  _MMIO(0x46004)
-#define FDI_PLL_BIOS_2  _MMIO(0x46008)
-#define DISPLAY_PORT_PLL_BIOS_0         _MMIO(0x4600c)
-#define DISPLAY_PORT_PLL_BIOS_1         _MMIO(0x46010)
-#define DISPLAY_PORT_PLL_BIOS_2         _MMIO(0x46014)
-
 #define PCH_3DCGDIS0		_MMIO(0x46020)
 # define MARIUNIT_CLOCK_GATE_DISABLE		(1 << 18)
 # define SVSMUNIT_CLOCK_GATE_DISABLE		(1 << 1)
@@ -4309,12 +4301,6 @@
 #define PCH_3DCGDIS1		_MMIO(0x46024)
 # define VFMUNIT_CLOCK_GATE_DISABLE		(1 << 11)
 
-#define FDI_PLL_FREQ_CTL        _MMIO(0x46030)
-#define  FDI_PLL_FREQ_CHANGE_REQUEST    (1 << 24)
-#define  FDI_PLL_FREQ_LOCK_LIMIT_MASK   0xfff00
-#define  FDI_PLL_FREQ_DISABLE_COUNT_LIMIT_MASK  0xff
-
-
 #define _PIPEA_DATA_M1		0x60030
 #define _PIPEA_DATA_N1		0x60034
 #define _PIPEA_DATA_M2		0x60038
@@ -5504,12 +5490,6 @@
 #define  LPT_PWM_GRANULARITY		(1 << 5)
 #define  DPLS_EDP_PPS_FIX_DIS		(1 << 0)
 
-#define _FDI_RXA_CHICKEN        0xc200c
-#define _FDI_RXB_CHICKEN        0xc2010
-#define  FDI_RX_PHASE_SYNC_POINTER_OVR	(1 << 1)
-#define  FDI_RX_PHASE_SYNC_POINTER_EN	(1 << 0)
-#define FDI_RX_CHICKEN(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_CHICKEN, _FDI_RXB_CHICKEN)
-
 #define SOUTH_DSPCLK_GATE_D	_MMIO(0xc2020)
 #define  PCH_GMBUSUNIT_CLOCK_GATE_DISABLE (1 << 31)
 #define  PCH_DPLUNIT_CLOCK_GATE_DISABLE (1 << 30)
@@ -5519,127 +5499,6 @@
 #define  CNP_PWM_CGE_GATING_DISABLE (1 << 13)
 #define  PCH_LP_PARTITION_LEVEL_DISABLE  (1 << 12)
 
-/* CPU: FDI_TX */
-#define _FDI_TXA_CTL            0x60100
-#define _FDI_TXB_CTL            0x61100
-#define FDI_TX_CTL(pipe)	_MMIO_PIPE(pipe, _FDI_TXA_CTL, _FDI_TXB_CTL)
-#define  FDI_TX_DISABLE         (0 << 31)
-#define  FDI_TX_ENABLE          (1 << 31)
-#define  FDI_LINK_TRAIN_PATTERN_1       (0 << 28)
-#define  FDI_LINK_TRAIN_PATTERN_2       (1 << 28)
-#define  FDI_LINK_TRAIN_PATTERN_IDLE    (2 << 28)
-#define  FDI_LINK_TRAIN_NONE            (3 << 28)
-#define  FDI_LINK_TRAIN_VOLTAGE_0_4V    (0 << 25)
-#define  FDI_LINK_TRAIN_VOLTAGE_0_6V    (1 << 25)
-#define  FDI_LINK_TRAIN_VOLTAGE_0_8V    (2 << 25)
-#define  FDI_LINK_TRAIN_VOLTAGE_1_2V    (3 << 25)
-#define  FDI_LINK_TRAIN_PRE_EMPHASIS_NONE (0 << 22)
-#define  FDI_LINK_TRAIN_PRE_EMPHASIS_1_5X (1 << 22)
-#define  FDI_LINK_TRAIN_PRE_EMPHASIS_2X   (2 << 22)
-#define  FDI_LINK_TRAIN_PRE_EMPHASIS_3X   (3 << 22)
-/* ILK always use 400mV 0dB for voltage swing and pre-emphasis level.
-   SNB has different settings. */
-/* SNB A-stepping */
-#define  FDI_LINK_TRAIN_400MV_0DB_SNB_A		(0x38 << 22)
-#define  FDI_LINK_TRAIN_400MV_6DB_SNB_A		(0x02 << 22)
-#define  FDI_LINK_TRAIN_600MV_3_5DB_SNB_A	(0x01 << 22)
-#define  FDI_LINK_TRAIN_800MV_0DB_SNB_A		(0x0 << 22)
-/* SNB B-stepping */
-#define  FDI_LINK_TRAIN_400MV_0DB_SNB_B		(0x0 << 22)
-#define  FDI_LINK_TRAIN_400MV_6DB_SNB_B		(0x3a << 22)
-#define  FDI_LINK_TRAIN_600MV_3_5DB_SNB_B	(0x39 << 22)
-#define  FDI_LINK_TRAIN_800MV_0DB_SNB_B		(0x38 << 22)
-#define  FDI_LINK_TRAIN_VOL_EMP_MASK		(0x3f << 22)
-#define  FDI_DP_PORT_WIDTH_SHIFT		19
-#define  FDI_DP_PORT_WIDTH_MASK			(7 << FDI_DP_PORT_WIDTH_SHIFT)
-#define  FDI_DP_PORT_WIDTH(width)           (((width) - 1) << FDI_DP_PORT_WIDTH_SHIFT)
-#define  FDI_TX_ENHANCE_FRAME_ENABLE    (1 << 18)
-/* Ironlake: hardwired to 1 */
-#define  FDI_TX_PLL_ENABLE              (1 << 14)
-
-/* Ivybridge has different bits for lolz */
-#define  FDI_LINK_TRAIN_PATTERN_1_IVB       (0 << 8)
-#define  FDI_LINK_TRAIN_PATTERN_2_IVB       (1 << 8)
-#define  FDI_LINK_TRAIN_PATTERN_IDLE_IVB    (2 << 8)
-#define  FDI_LINK_TRAIN_NONE_IVB            (3 << 8)
-
-/* both Tx and Rx */
-#define  FDI_COMPOSITE_SYNC		(1 << 11)
-#define  FDI_LINK_TRAIN_AUTO		(1 << 10)
-#define  FDI_SCRAMBLING_ENABLE          (0 << 7)
-#define  FDI_SCRAMBLING_DISABLE         (1 << 7)
-
-/* FDI_RX, FDI_X is hard-wired to Transcoder_X */
-#define _FDI_RXA_CTL             0xf000c
-#define _FDI_RXB_CTL             0xf100c
-#define FDI_RX_CTL(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_CTL, _FDI_RXB_CTL)
-#define  FDI_RX_ENABLE          (1 << 31)
-/* train, dp width same as FDI_TX */
-#define  FDI_FS_ERRC_ENABLE		(1 << 27)
-#define  FDI_FE_ERRC_ENABLE		(1 << 26)
-#define  FDI_RX_POLARITY_REVERSED_LPT	(1 << 16)
-#define  FDI_8BPC                       (0 << 16)
-#define  FDI_10BPC                      (1 << 16)
-#define  FDI_6BPC                       (2 << 16)
-#define  FDI_12BPC                      (3 << 16)
-#define  FDI_RX_LINK_REVERSAL_OVERRIDE  (1 << 15)
-#define  FDI_DMI_LINK_REVERSE_MASK      (1 << 14)
-#define  FDI_RX_PLL_ENABLE              (1 << 13)
-#define  FDI_FS_ERR_CORRECT_ENABLE      (1 << 11)
-#define  FDI_FE_ERR_CORRECT_ENABLE      (1 << 10)
-#define  FDI_FS_ERR_REPORT_ENABLE       (1 << 9)
-#define  FDI_FE_ERR_REPORT_ENABLE       (1 << 8)
-#define  FDI_RX_ENHANCE_FRAME_ENABLE    (1 << 6)
-#define  FDI_PCDCLK	                (1 << 4)
-/* CPT */
-#define  FDI_AUTO_TRAINING			(1 << 10)
-#define  FDI_LINK_TRAIN_PATTERN_1_CPT		(0 << 8)
-#define  FDI_LINK_TRAIN_PATTERN_2_CPT		(1 << 8)
-#define  FDI_LINK_TRAIN_PATTERN_IDLE_CPT	(2 << 8)
-#define  FDI_LINK_TRAIN_NORMAL_CPT		(3 << 8)
-#define  FDI_LINK_TRAIN_PATTERN_MASK_CPT	(3 << 8)
-
-#define _FDI_RXA_MISC			0xf0010
-#define _FDI_RXB_MISC			0xf1010
-#define  FDI_RX_PWRDN_LANE1_MASK	(3 << 26)
-#define  FDI_RX_PWRDN_LANE1_VAL(x)	((x) << 26)
-#define  FDI_RX_PWRDN_LANE0_MASK	(3 << 24)
-#define  FDI_RX_PWRDN_LANE0_VAL(x)	((x) << 24)
-#define  FDI_RX_TP1_TO_TP2_48		(2 << 20)
-#define  FDI_RX_TP1_TO_TP2_64		(3 << 20)
-#define  FDI_RX_FDI_DELAY_90		(0x90 << 0)
-#define FDI_RX_MISC(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_MISC, _FDI_RXB_MISC)
-
-#define _FDI_RXA_TUSIZE1        0xf0030
-#define _FDI_RXA_TUSIZE2        0xf0038
-#define _FDI_RXB_TUSIZE1        0xf1030
-#define _FDI_RXB_TUSIZE2        0xf1038
-#define FDI_RX_TUSIZE1(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_TUSIZE1, _FDI_RXB_TUSIZE1)
-#define FDI_RX_TUSIZE2(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_TUSIZE2, _FDI_RXB_TUSIZE2)
-
-/* FDI_RX interrupt register format */
-#define FDI_RX_INTER_LANE_ALIGN         (1 << 10)
-#define FDI_RX_SYMBOL_LOCK              (1 << 9) /* train 2 */
-#define FDI_RX_BIT_LOCK                 (1 << 8) /* train 1 */
-#define FDI_RX_TRAIN_PATTERN_2_FAIL     (1 << 7)
-#define FDI_RX_FS_CODE_ERR              (1 << 6)
-#define FDI_RX_FE_CODE_ERR              (1 << 5)
-#define FDI_RX_SYMBOL_ERR_RATE_ABOVE    (1 << 4)
-#define FDI_RX_HDCP_LINK_FAIL           (1 << 3)
-#define FDI_RX_PIXEL_FIFO_OVERFLOW      (1 << 2)
-#define FDI_RX_CROSS_CLOCK_OVERFLOW     (1 << 1)
-#define FDI_RX_SYMBOL_QUEUE_OVERFLOW    (1 << 0)
-
-#define _FDI_RXA_IIR            0xf0014
-#define _FDI_RXA_IMR            0xf0018
-#define _FDI_RXB_IIR            0xf1014
-#define _FDI_RXB_IMR            0xf1018
-#define FDI_RX_IIR(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_IIR, _FDI_RXB_IIR)
-#define FDI_RX_IMR(pipe)	_MMIO_PIPE(pipe, _FDI_RXA_IMR, _FDI_RXB_IMR)
-
-#define FDI_PLL_CTL_1           _MMIO(0xfe000)
-#define FDI_PLL_CTL_2           _MMIO(0xfe004)
-
 #define _PCH_DP_B		0xe4100
 #define PCH_DP_B		_MMIO(_PCH_DP_B)
 #define _PCH_DPB_AUX_CH_CTL	0xe4110
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 145543b3aff0..15aab34f6107 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -9,6 +9,7 @@
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dp_aux_regs.h"
 #include "display/intel_dpio_phy.h"
+#include "display/intel_fdi_regs.h"
 #include "display/intel_lvds_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
-- 
2.39.2

