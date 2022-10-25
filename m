Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB15A60CB33
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 13:45:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB3B610E347;
	Tue, 25 Oct 2022 11:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66BC010E335
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 11:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666698303; x=1698234303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7j8sqCXwb2rQywc2v3BQht68RuxGUz17Vglm8YPTvXw=;
 b=Hwxk41ddI2lNQkLxUuoDayCR5V5ZrbmAVp7QuKSlB5o43O005fLLZJgk
 tfo7C9TyZFGB2gb1YGuk/KJmZnVQyN8dLinnQUaDVaLRUJZ49WyP0XF+M
 NxkV1ZsUmTBz95SK0VnjOQ48CF/NgzXDVX8AvpwBFMMp0IiTkGuvVTEIQ
 lWyqJxAoKdGAYUTJ74hXZCp1C72sNqKcexMsiWAs769/89+Hw829Tzcro
 KsFkGZn+sQAoS4+vlbmwSAfdVuY6nO1uzyGr/X4b5Hti/+zgK2vEsWLwp
 ce5f4i8o6yYdx3oxuRXBlVG7BsSr0+v4q6PDqU9caez43lnmHIfQHfS9N Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="288049446"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="288049446"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 04:45:03 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="876776282"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="876776282"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 04:45:02 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 14:44:56 +0300
Message-Id: <20221025114457.2191004-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221025102644.2123988-4-imre.deak@intel.com>
References: <20221025102644.2123988-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/4] drm/i915/tgl+: Move DKL PHY register
 definitions to intel_dkl_phy_regs.h
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

Move the TypeC DKL PHY register definitions to intel_dkl_phy_regs.h.

No functional changes.

v2:
- Move the definitions to a new intel_dkl_phy_regs.h file. (Jani).
v3:
- Rebase on latest patchset version.

Cc: Jani Nikula <jani.nikula@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
 .../i915/display/intel_display_power_well.c   |   1 +
 drivers/gpu/drm/i915/display/intel_dkl_phy.c  |   1 +
 .../gpu/drm/i915/display/intel_dkl_phy_regs.h | 193 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   1 +
 drivers/gpu/drm/i915/display/intel_tc.c       |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 179 ----------------
 7 files changed, 198 insertions(+), 179 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 37272c6e4269d..54142ca3e6947 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -44,6 +44,7 @@
 #include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dkl_phy.h"
+#include "intel_dkl_phy_regs.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 1d18eee562534..86974c515206e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -13,6 +13,7 @@
 #include "intel_display_power_well.h"
 #include "intel_display_types.h"
 #include "intel_dkl_phy.h"
+#include "intel_dkl_phy_regs.h"
 #include "intel_dmc.h"
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
index 710b030c7ed54..01781293ffdcf 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
@@ -9,6 +9,7 @@
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_dkl_phy.h"
+#include "intel_dkl_phy_regs.h"
 
 static void
 dkl_phy_set_hip_idx(struct drm_i915_private *i915, i915_reg_t reg, int idx)
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
new file mode 100644
index 0000000000000..7d0f3aab7f5c6
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
@@ -0,0 +1,193 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_DKL_PHY_REGS__
+#define __INTEL_DKL_PHY_REGS__
+
+#define _DKL_PHY1_BASE					0x168000
+#define _DKL_PHY2_BASE					0x169000
+#define _DKL_PHY3_BASE					0x16A000
+#define _DKL_PHY4_BASE					0x16B000
+#define _DKL_PHY5_BASE					0x16C000
+#define _DKL_PHY6_BASE					0x16D000
+
+#define DKL_REG_TC_PORT(__reg) \
+	(TC_PORT_1 + ((__reg).reg - _DKL_PHY1_BASE) / (_DKL_PHY2_BASE - _DKL_PHY1_BASE))
+
+/* DEKEL PHY MMIO Address = Phy base + (internal address & ~index_mask) */
+#define _DKL_PCS_DW5					0x14
+#define DKL_PCS_DW5(tc_port)				_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_PCS_DW5)
+#define   DKL_PCS_DW5_CORE_SOFTRESET			REG_BIT(11)
+
+#define _DKL_PLL_DIV0					0x200
+#define DKL_PLL_DIV0(tc_port)				_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_PLL_DIV0)
+#define   DKL_PLL_DIV0_AFC_STARTUP_MASK			REG_GENMASK(27, 25)
+#define   DKL_PLL_DIV0_AFC_STARTUP(val)			REG_FIELD_PREP(DKL_PLL_DIV0_AFC_STARTUP_MASK, (val))
+#define   DKL_PLL_DIV0_INTEG_COEFF(x)			((x) << 16)
+#define   DKL_PLL_DIV0_INTEG_COEFF_MASK			(0x1F << 16)
+#define   DKL_PLL_DIV0_PROP_COEFF(x)			((x) << 12)
+#define   DKL_PLL_DIV0_PROP_COEFF_MASK			(0xF << 12)
+#define   DKL_PLL_DIV0_FBPREDIV_SHIFT			(8)
+#define   DKL_PLL_DIV0_FBPREDIV(x)			((x) << DKL_PLL_DIV0_FBPREDIV_SHIFT)
+#define   DKL_PLL_DIV0_FBPREDIV_MASK			(0xF << DKL_PLL_DIV0_FBPREDIV_SHIFT)
+#define   DKL_PLL_DIV0_FBDIV_INT(x)			((x) << 0)
+#define   DKL_PLL_DIV0_FBDIV_INT_MASK			(0xFF << 0)
+#define   DKL_PLL_DIV0_MASK				(DKL_PLL_DIV0_INTEG_COEFF_MASK | \
+							 DKL_PLL_DIV0_PROP_COEFF_MASK | \
+							 DKL_PLL_DIV0_FBPREDIV_MASK | \
+							 DKL_PLL_DIV0_FBDIV_INT_MASK)
+
+#define _DKL_PLL_DIV1					0x204
+#define DKL_PLL_DIV1(tc_port)				_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_PLL_DIV1)
+#define   DKL_PLL_DIV1_IREF_TRIM(x)			((x) << 16)
+#define   DKL_PLL_DIV1_IREF_TRIM_MASK			(0x1F << 16)
+#define   DKL_PLL_DIV1_TDC_TARGET_CNT(x)		((x) << 0)
+#define   DKL_PLL_DIV1_TDC_TARGET_CNT_MASK		(0xFF << 0)
+
+#define _DKL_PLL_SSC					0x210
+#define DKL_PLL_SSC(tc_port)				_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_PLL_SSC)
+#define   DKL_PLL_SSC_IREF_NDIV_RATIO(x)		((x) << 29)
+#define   DKL_PLL_SSC_IREF_NDIV_RATIO_MASK		(0x7 << 29)
+#define   DKL_PLL_SSC_STEP_LEN(x)			((x) << 16)
+#define   DKL_PLL_SSC_STEP_LEN_MASK			(0xFF << 16)
+#define   DKL_PLL_SSC_STEP_NUM(x)			((x) << 11)
+#define   DKL_PLL_SSC_STEP_NUM_MASK			(0x7 << 11)
+#define   DKL_PLL_SSC_EN				(1 << 9)
+
+#define _DKL_PLL_BIAS					0x214
+#define DKL_PLL_BIAS(tc_port)				_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_PLL_BIAS)
+#define   DKL_PLL_BIAS_FRAC_EN_H			(1 << 30)
+#define   DKL_PLL_BIAS_FBDIV_SHIFT			(8)
+#define   DKL_PLL_BIAS_FBDIV_FRAC(x)			((x) << DKL_PLL_BIAS_FBDIV_SHIFT)
+#define   DKL_PLL_BIAS_FBDIV_FRAC_MASK			(0x3FFFFF << DKL_PLL_BIAS_FBDIV_SHIFT)
+
+#define _DKL_PLL_TDC_COLDST_BIAS			0x218
+#define DKL_PLL_TDC_COLDST_BIAS(tc_port)		_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_PLL_TDC_COLDST_BIAS)
+#define   DKL_PLL_TDC_SSC_STEP_SIZE(x)			((x) << 8)
+#define   DKL_PLL_TDC_SSC_STEP_SIZE_MASK		(0xFF << 8)
+#define   DKL_PLL_TDC_FEED_FWD_GAIN(x)			((x) << 0)
+#define   DKL_PLL_TDC_FEED_FWD_GAIN_MASK		(0xFF << 0)
+
+#define _DKL_REFCLKIN_CTL				0x12C
+#define DKL_REFCLKIN_CTL(tc_port)			_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_REFCLKIN_CTL)
+/* Bits are the same as MG_REFCLKIN_CTL */
+
+#define _DKL_CLKTOP2_HSCLKCTL				0xD4
+#define DKL_CLKTOP2_HSCLKCTL(tc_port)			_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_CLKTOP2_HSCLKCTL)
+/* Bits are the same as MG_CLKTOP2_HSCLKCTL */
+
+#define _DKL_CLKTOP2_CORECLKCTL1			0xD8
+#define DKL_CLKTOP2_CORECLKCTL1(tc_port)		_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_CLKTOP2_CORECLKCTL1)
+/* Bits are the same as MG_CLKTOP2_CORECLKCTL1 */
+
+#define _DKL_TX_DPCNTL0					0x2C0
+#define DKL_TX_DPCNTL0(tc_port)				_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_TX_DPCNTL0)
+#define  DKL_TX_PRESHOOT_COEFF(x)			((x) << 13)
+#define  DKL_TX_PRESHOOT_COEFF_MASK			(0x1f << 13)
+#define  DKL_TX_DE_EMPHASIS_COEFF(x)			((x) << 8)
+#define  DKL_TX_DE_EMPAHSIS_COEFF_MASK			(0x1f << 8)
+#define  DKL_TX_VSWING_CONTROL(x)			((x) << 0)
+#define  DKL_TX_VSWING_CONTROL_MASK			(0x7 << 0)
+
+#define _DKL_TX_DPCNTL1					0x2C4
+#define DKL_TX_DPCNTL1(tc_port)				_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_TX_DPCNTL1)
+/* Bits are the same as DKL_TX_DPCNTRL0 */
+
+#define _DKL_TX_DPCNTL2					0x2C8
+#define DKL_TX_DPCNTL2(tc_port)				_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_TX_DPCNTL2)
+#define  DKL_TX_DP20BITMODE				REG_BIT(2)
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK	REG_GENMASK(4, 3)
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK, (val))
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK	REG_GENMASK(6, 5)
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK, (val))
+
+#define _DKL_TX_FW_CALIB				0x2F8
+#define DKL_TX_FW_CALIB(tc_port)			_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_TX_FW_CALIB)
+#define  DKL_TX_CFG_DISABLE_WAIT_INIT			(1 << 7)
+
+#define _DKL_TX_PMD_LANE_SUS				0xD00
+#define DKL_TX_PMD_LANE_SUS(tc_port)			_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_TX_PMD_LANE_SUS)
+
+#define _DKL_TX_DW17					0xDC4
+#define DKL_TX_DW17(tc_port)				_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_TX_DW17)
+
+#define _DKL_TX_DW18					0xDC8
+#define DKL_TX_DW18(tc_port)				_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_TX_DW18)
+
+#define _DKL_DP_MODE					0xA0
+#define DKL_DP_MODE(tc_port)				_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_DP_MODE)
+
+#define _DKL_CMN_UC_DW27				0x36C
+#define DKL_CMN_UC_DW_27(tc_port)			_MMIO(_PORT(tc_port, \
+								    _DKL_PHY1_BASE, \
+								    _DKL_PHY2_BASE) + \
+							      _DKL_CMN_UC_DW27)
+#define  DKL_CMN_UC_DW27_UC_HEALTH			(0x1 << 15)
+
+/*
+ * Each Dekel PHY is addressed through a 4KB aperture. Each PHY has more than
+ * 4KB of register space, so a separate index is programmed in HIP_INDEX_REG0
+ * or HIP_INDEX_REG1, based on the port number, to set the upper 2 address
+ * bits that point the 4KB window into the full PHY register space.
+ */
+#define _HIP_INDEX_REG0					0x1010A0
+#define _HIP_INDEX_REG1					0x1010A4
+#define HIP_INDEX_REG(tc_port)				_MMIO((tc_port) < 4 ? _HIP_INDEX_REG0 \
+							      : _HIP_INDEX_REG1)
+#define _HIP_INDEX_SHIFT(tc_port)			(8 * ((tc_port) % 4))
+#define HIP_INDEX_VAL(tc_port, val)			((val) << _HIP_INDEX_SHIFT(tc_port))
+
+#endif /* __INTEL_DKL_PHY_REGS__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index eb4decd8c68bf..bb7c8aef89526 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -26,6 +26,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dkl_phy.h"
+#include "intel_dkl_phy_regs.h"
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 351709725cd04..70624b4b2d38c 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -8,6 +8,7 @@
 #include "intel_display.h"
 #include "intel_display_power_map.h"
 #include "intel_display_types.h"
+#include "intel_dkl_phy_regs.h"
 #include "intel_dp_mst.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_tc.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 52e49687ddb5d..1c0da50c0dc73 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7435,185 +7435,6 @@ enum skl_power_gate {
 						   _ADLS_DPLL4_CFGCR1, \
 						   _ADLS_DPLL3_CFGCR1)
 
-#define _DKL_PHY1_BASE			0x168000
-#define _DKL_PHY2_BASE			0x169000
-#define _DKL_PHY3_BASE			0x16A000
-#define _DKL_PHY4_BASE			0x16B000
-#define _DKL_PHY5_BASE			0x16C000
-#define _DKL_PHY6_BASE			0x16D000
-
-#define DKL_REG_TC_PORT(__reg) \
-	(TC_PORT_1 + ((__reg).reg - _DKL_PHY1_BASE) / (_DKL_PHY2_BASE - _DKL_PHY1_BASE))
-
-/* DEKEL PHY MMIO Address = Phy base + (internal address & ~index_mask) */
-#define _DKL_PCS_DW5			0x14
-#define DKL_PCS_DW5(tc_port)		_MMIO(_PORT(tc_port, _DKL_PHY1_BASE, \
-						    _DKL_PHY2_BASE) + \
-						    _DKL_PCS_DW5)
-#define   DKL_PCS_DW5_CORE_SOFTRESET	REG_BIT(11)
-
-#define _DKL_PLL_DIV0			0x200
-#define   DKL_PLL_DIV0_AFC_STARTUP_MASK	REG_GENMASK(27, 25)
-#define   DKL_PLL_DIV0_AFC_STARTUP(val)	REG_FIELD_PREP(DKL_PLL_DIV0_AFC_STARTUP_MASK, (val))
-#define   DKL_PLL_DIV0_INTEG_COEFF(x)	((x) << 16)
-#define   DKL_PLL_DIV0_INTEG_COEFF_MASK	(0x1F << 16)
-#define   DKL_PLL_DIV0_PROP_COEFF(x)	((x) << 12)
-#define   DKL_PLL_DIV0_PROP_COEFF_MASK	(0xF << 12)
-#define   DKL_PLL_DIV0_FBPREDIV_SHIFT   (8)
-#define   DKL_PLL_DIV0_FBPREDIV(x)	((x) << DKL_PLL_DIV0_FBPREDIV_SHIFT)
-#define   DKL_PLL_DIV0_FBPREDIV_MASK	(0xF << DKL_PLL_DIV0_FBPREDIV_SHIFT)
-#define   DKL_PLL_DIV0_FBDIV_INT(x)	((x) << 0)
-#define   DKL_PLL_DIV0_FBDIV_INT_MASK	(0xFF << 0)
-#define   DKL_PLL_DIV0_MASK		(DKL_PLL_DIV0_INTEG_COEFF_MASK | \
-					 DKL_PLL_DIV0_PROP_COEFF_MASK | \
-					 DKL_PLL_DIV0_FBPREDIV_MASK | \
-					 DKL_PLL_DIV0_FBDIV_INT_MASK)
-#define DKL_PLL_DIV0(tc_port)		_MMIO(_PORT(tc_port, _DKL_PHY1_BASE, \
-						    _DKL_PHY2_BASE) + \
-						    _DKL_PLL_DIV0)
-
-#define _DKL_PLL_DIV1				0x204
-#define   DKL_PLL_DIV1_IREF_TRIM(x)		((x) << 16)
-#define   DKL_PLL_DIV1_IREF_TRIM_MASK		(0x1F << 16)
-#define   DKL_PLL_DIV1_TDC_TARGET_CNT(x)	((x) << 0)
-#define   DKL_PLL_DIV1_TDC_TARGET_CNT_MASK	(0xFF << 0)
-#define DKL_PLL_DIV1(tc_port)		_MMIO(_PORT(tc_port, _DKL_PHY1_BASE, \
-						    _DKL_PHY2_BASE) + \
-						    _DKL_PLL_DIV1)
-
-#define _DKL_PLL_SSC				0x210
-#define   DKL_PLL_SSC_IREF_NDIV_RATIO(x)	((x) << 29)
-#define   DKL_PLL_SSC_IREF_NDIV_RATIO_MASK	(0x7 << 29)
-#define   DKL_PLL_SSC_STEP_LEN(x)		((x) << 16)
-#define   DKL_PLL_SSC_STEP_LEN_MASK		(0xFF << 16)
-#define   DKL_PLL_SSC_STEP_NUM(x)		((x) << 11)
-#define   DKL_PLL_SSC_STEP_NUM_MASK		(0x7 << 11)
-#define   DKL_PLL_SSC_EN			(1 << 9)
-#define DKL_PLL_SSC(tc_port)		_MMIO(_PORT(tc_port, _DKL_PHY1_BASE, \
-						    _DKL_PHY2_BASE) + \
-						    _DKL_PLL_SSC)
-
-#define _DKL_PLL_BIAS			0x214
-#define   DKL_PLL_BIAS_FRAC_EN_H	(1 << 30)
-#define   DKL_PLL_BIAS_FBDIV_SHIFT	(8)
-#define   DKL_PLL_BIAS_FBDIV_FRAC(x)	((x) << DKL_PLL_BIAS_FBDIV_SHIFT)
-#define   DKL_PLL_BIAS_FBDIV_FRAC_MASK	(0x3FFFFF << DKL_PLL_BIAS_FBDIV_SHIFT)
-#define DKL_PLL_BIAS(tc_port)		_MMIO(_PORT(tc_port, _DKL_PHY1_BASE, \
-						    _DKL_PHY2_BASE) + \
-						    _DKL_PLL_BIAS)
-
-#define _DKL_PLL_TDC_COLDST_BIAS		0x218
-#define   DKL_PLL_TDC_SSC_STEP_SIZE(x)		((x) << 8)
-#define   DKL_PLL_TDC_SSC_STEP_SIZE_MASK	(0xFF << 8)
-#define   DKL_PLL_TDC_FEED_FWD_GAIN(x)		((x) << 0)
-#define   DKL_PLL_TDC_FEED_FWD_GAIN_MASK	(0xFF << 0)
-#define DKL_PLL_TDC_COLDST_BIAS(tc_port) _MMIO(_PORT(tc_port, \
-						     _DKL_PHY1_BASE, \
-						     _DKL_PHY2_BASE) + \
-						     _DKL_PLL_TDC_COLDST_BIAS)
-
-#define _DKL_REFCLKIN_CTL		0x12C
-/* Bits are the same as MG_REFCLKIN_CTL */
-#define DKL_REFCLKIN_CTL(tc_port)	_MMIO(_PORT(tc_port, \
-						    _DKL_PHY1_BASE, \
-						    _DKL_PHY2_BASE) + \
-					      _DKL_REFCLKIN_CTL)
-
-#define _DKL_CLKTOP2_HSCLKCTL		0xD4
-/* Bits are the same as MG_CLKTOP2_HSCLKCTL */
-#define DKL_CLKTOP2_HSCLKCTL(tc_port)	_MMIO(_PORT(tc_port, \
-						    _DKL_PHY1_BASE, \
-						    _DKL_PHY2_BASE) + \
-					      _DKL_CLKTOP2_HSCLKCTL)
-
-#define _DKL_CLKTOP2_CORECLKCTL1		0xD8
-/* Bits are the same as MG_CLKTOP2_CORECLKCTL1 */
-#define DKL_CLKTOP2_CORECLKCTL1(tc_port)	_MMIO(_PORT(tc_port, \
-							    _DKL_PHY1_BASE, \
-							    _DKL_PHY2_BASE) + \
-						      _DKL_CLKTOP2_CORECLKCTL1)
-
-#define _DKL_TX_DPCNTL0				0x2C0
-#define  DKL_TX_PRESHOOT_COEFF(x)			((x) << 13)
-#define  DKL_TX_PRESHOOT_COEFF_MASK			(0x1f << 13)
-#define  DKL_TX_DE_EMPHASIS_COEFF(x)		((x) << 8)
-#define  DKL_TX_DE_EMPAHSIS_COEFF_MASK		(0x1f << 8)
-#define  DKL_TX_VSWING_CONTROL(x)			((x) << 0)
-#define  DKL_TX_VSWING_CONTROL_MASK			(0x7 << 0)
-#define DKL_TX_DPCNTL0(tc_port) _MMIO(_PORT(tc_port, \
-						     _DKL_PHY1_BASE, \
-						     _DKL_PHY2_BASE) + \
-						     _DKL_TX_DPCNTL0)
-
-#define _DKL_TX_DPCNTL1				0x2C4
-/* Bits are the same as DKL_TX_DPCNTRL0 */
-#define DKL_TX_DPCNTL1(tc_port) _MMIO(_PORT(tc_port, \
-						     _DKL_PHY1_BASE, \
-						     _DKL_PHY2_BASE) + \
-						     _DKL_TX_DPCNTL1)
-
-#define _DKL_TX_DPCNTL2					0x2C8
-#define  DKL_TX_DP20BITMODE				REG_BIT(2)
-#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK	REG_GENMASK(4, 3)
-#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK, (val))
-#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK	REG_GENMASK(6, 5)
-#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK, (val))
-#define DKL_TX_DPCNTL2(tc_port) _MMIO(_PORT(tc_port, \
-						     _DKL_PHY1_BASE, \
-						     _DKL_PHY2_BASE) + \
-						     _DKL_TX_DPCNTL2)
-
-#define _DKL_TX_FW_CALIB				0x2F8
-#define  DKL_TX_CFG_DISABLE_WAIT_INIT			(1 << 7)
-#define DKL_TX_FW_CALIB(tc_port) _MMIO(_PORT(tc_port, \
-						     _DKL_PHY1_BASE, \
-						     _DKL_PHY2_BASE) + \
-						     _DKL_TX_FW_CALIB)
-
-#define _DKL_TX_PMD_LANE_SUS				0xD00
-#define DKL_TX_PMD_LANE_SUS(tc_port) _MMIO(_PORT(tc_port, \
-							  _DKL_PHY1_BASE, \
-							  _DKL_PHY2_BASE) + \
-							  _DKL_TX_PMD_LANE_SUS)
-
-#define _DKL_TX_DW17					0xDC4
-#define DKL_TX_DW17(tc_port) _MMIO(_PORT(tc_port, \
-						     _DKL_PHY1_BASE, \
-						     _DKL_PHY2_BASE) + \
-						     _DKL_TX_DW17)
-
-#define _DKL_TX_DW18					0xDC8
-#define DKL_TX_DW18(tc_port) _MMIO(_PORT(tc_port, \
-						     _DKL_PHY1_BASE, \
-						     _DKL_PHY2_BASE) + \
-						     _DKL_TX_DW18)
-
-#define _DKL_DP_MODE					0xA0
-#define DKL_DP_MODE(tc_port) _MMIO(_PORT(tc_port, \
-						     _DKL_PHY1_BASE, \
-						     _DKL_PHY2_BASE) + \
-						     _DKL_DP_MODE)
-
-#define _DKL_CMN_UC_DW27			0x36C
-#define  DKL_CMN_UC_DW27_UC_HEALTH		(0x1 << 15)
-#define DKL_CMN_UC_DW_27(tc_port)		_MMIO(_PORT(tc_port, \
-							    _DKL_PHY1_BASE, \
-							    _DKL_PHY2_BASE) + \
-							    _DKL_CMN_UC_DW27)
-
-/*
- * Each Dekel PHY is addressed through a 4KB aperture. Each PHY has more than
- * 4KB of register space, so a separate index is programmed in HIP_INDEX_REG0
- * or HIP_INDEX_REG1, based on the port number, to set the upper 2 address
- * bits that point the 4KB window into the full PHY register space.
- */
-#define _HIP_INDEX_REG0			0x1010A0
-#define _HIP_INDEX_REG1			0x1010A4
-#define HIP_INDEX_REG(tc_port)		_MMIO((tc_port) < 4 ? _HIP_INDEX_REG0 \
-					      : _HIP_INDEX_REG1)
-#define _HIP_INDEX_SHIFT(tc_port)	(8 * ((tc_port) % 4))
-#define HIP_INDEX_VAL(tc_port, val)	((val) << _HIP_INDEX_SHIFT(tc_port))
-
 /* BXT display engine PLL */
 #define BXT_DE_PLL_CTL			_MMIO(0x6d000)
 #define   BXT_DE_PLL_RATIO(x)		(x)	/* {60,65,100} * 19.2MHz */
-- 
2.37.1

