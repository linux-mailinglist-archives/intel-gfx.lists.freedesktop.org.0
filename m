Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C37603183
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 19:21:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F8A910EFBA;
	Tue, 18 Oct 2022 17:21:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBD0010EFBB
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 17:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666113647; x=1697649647;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=w44PZurLqZYxdvVl1Mgwa8wXAiVNw7t7VtyQ/GEVgq8=;
 b=QnZVMh3qPE8sc9+7FgrUfImLrFKb47wT5pJBw0jrFuEdzoZLj8Uqdihx
 mXai6AYpthj/Ri56aHOYfwqzdRz7Fpn2ymkUsOD88Awt70H/9bK7iyxjf
 qYA5HP3cQnyrbF/jgHF/kcLFCordanL18VA/9dV5ox07ZahyuVVB4vjLa
 CYjUhnCW3Drc3sxbxEOCVfP/yvgevXAG6WqB4GY/Oqm35H6LuIvmdf2A1
 YvnOprooM4n69jNPnhXTo6sx1qu3kkVBKoAHbcLpixMUWjwgfRKfJb6yL
 /okee4R5m5aUteDobXHdbXiNij2bUH5/dpgK5ua7xgyoDRWC6+ZtF4Qtr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="306160512"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="306160512"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 10:20:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="628818312"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="628818312"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 10:20:46 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Oct 2022 20:20:41 +0300
Message-Id: <20221018172042.1449885-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221018172042.1449885-1-imre.deak@intel.com>
References: <20221018172042.1449885-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/tgl+: Move DKL PHY register
 definitions to intel_tc_phy_regs.h
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

Move the TypeC DKL PHY register definitions to intel_tc_phy_regs.h next
to the TypeC MG PHY registers.

No functional changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/intel_display_power_well.c   |   1 +
 .../gpu/drm/i915/display/intel_tc_phy_regs.h  | 186 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 179 -----------------
 3 files changed, 187 insertions(+), 179 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index c37d2d5bbd983..3cc7c5722cd5b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -19,6 +19,7 @@
 #include "intel_pcode.h"
 #include "intel_pps.h"
 #include "intel_tc.h"
+#include "intel_tc_phy_regs.h"
 #include "intel_vga.h"
 #include "skl_watermark.h"
 #include "vlv_sideband.h"
diff --git a/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h b/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
index 5a545086f9599..29cc06c31e0cc 100644
--- a/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
@@ -8,6 +8,7 @@
 
 #include "i915_reg_defs.h"
 
+/* MG PHY registers */
 #define MG_PHY_PORT_LN(ln, tc_port, ln0p1, ln0p2, ln1p1) \
 	_MMIO(_PORT(tc_port, ln0p1, ln0p2) + (ln) * ((ln1p1) - (ln0p1)))
 
@@ -277,4 +278,189 @@
 						   _MG_PLL_TDC_COLDST_BIAS_PORT1, \
 						   _MG_PLL_TDC_COLDST_BIAS_PORT2)
 
+/* DEKEL PHY registers */
+#define _DKL_PHY1_BASE					0x168000
+#define _DKL_PHY2_BASE					0x169000
+#define _DKL_PHY3_BASE					0x16A000
+#define _DKL_PHY4_BASE					0x16B000
+#define _DKL_PHY5_BASE					0x16C000
+#define _DKL_PHY6_BASE					0x16D000
+
+#define _DKL_BANK_SHIFT					12
+#define DKL_REG_TC_PORT(reg)				(((reg).reg - _DKL_PHY1_BASE) >> _DKL_BANK_SHIFT)
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
 #endif /* __INTEL_TC_PHY_REGS__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2b7c019725462..1c0da50c0dc73 100644
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
-#define _DKL_BANK_SHIFT			12
-#define DKL_REG_TC_PORT(reg)		(((reg).reg - _DKL_PHY1_BASE) >> _DKL_BANK_SHIFT)
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

