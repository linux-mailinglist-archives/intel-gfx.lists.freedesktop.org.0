Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D1E3D9815
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 00:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A8B46EB4E;
	Wed, 28 Jul 2021 22:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F35F66EA8B
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 22:00:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212786413"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212786413"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:06 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="663663292"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 14:59:45 -0700
Message-Id: <20210728215946.1573015-25-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210728215946.1573015-1-lucas.demarchi@intel.com>
References: <20210728215946.1573015-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 24/25] drm/i915: rename/remove CNL registers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove registers that are not used anymore due to CNL removal and rename
those that are.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h          | 192 ++++++-----------------
 drivers/gpu/drm/i915/intel_device_info.c |   2 +-
 2 files changed, 48 insertions(+), 146 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1be6a8c76478..b794a951daa9 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1877,7 +1877,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define BXT_PORT_CL1CM_DW30(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW30_BC)
 
 /*
- * CNL/ICL Port/COMBO-PHY Registers
+ * ICL Port/COMBO-PHY Registers
  */
 #define _ICL_COMBOPHY_A			0x162000
 #define _ICL_COMBOPHY_B			0x6C000
@@ -1891,11 +1891,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 					      _RKL_COMBOPHY_D, \
 					      _ADL_COMBOPHY_E)
 
-/* CNL/ICL Port CL_DW registers */
+/* ICL Port CL_DW registers */
 #define _ICL_PORT_CL_DW(dw, phy)	(_ICL_COMBOPHY(phy) + \
 					 4 * (dw))
 
-#define CNL_PORT_CL1CM_DW5		_MMIO(0x162014)
 #define ICL_PORT_CL_DW5(phy)		_MMIO(_ICL_PORT_CL_DW(5, phy))
 #define   CL_POWER_DOWN_ENABLE		(1 << 4)
 #define   SUS_CLOCK_CONFIG		(3 << 0)
@@ -1920,19 +1919,16 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define ICL_PORT_CL_DW12(phy)		_MMIO(_ICL_PORT_CL_DW(12, phy))
 #define   ICL_LANE_ENABLE_AUX		(1 << 0)
 
-/* CNL/ICL Port COMP_DW registers */
+/* ICL Port COMP_DW registers */
 #define _ICL_PORT_COMP			0x100
 #define _ICL_PORT_COMP_DW(dw, phy)	(_ICL_COMBOPHY(phy) + \
 					 _ICL_PORT_COMP + 4 * (dw))
 
-#define CNL_PORT_COMP_DW0		_MMIO(0x162100)
 #define ICL_PORT_COMP_DW0(phy)		_MMIO(_ICL_PORT_COMP_DW(0, phy))
 #define   COMP_INIT			(1 << 31)
 
-#define CNL_PORT_COMP_DW1		_MMIO(0x162104)
 #define ICL_PORT_COMP_DW1(phy)		_MMIO(_ICL_PORT_COMP_DW(1, phy))
 
-#define CNL_PORT_COMP_DW3		_MMIO(0x16210c)
 #define ICL_PORT_COMP_DW3(phy)		_MMIO(_ICL_PORT_COMP_DW(3, phy))
 #define   PROCESS_INFO_DOT_0		(0 << 26)
 #define   PROCESS_INFO_DOT_1		(1 << 26)
@@ -1948,38 +1944,11 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define ICL_PORT_COMP_DW8(phy)		_MMIO(_ICL_PORT_COMP_DW(8, phy))
 #define   IREFGEN			(1 << 24)
 
-#define CNL_PORT_COMP_DW9		_MMIO(0x162124)
 #define ICL_PORT_COMP_DW9(phy)		_MMIO(_ICL_PORT_COMP_DW(9, phy))
 
-#define CNL_PORT_COMP_DW10		_MMIO(0x162128)
 #define ICL_PORT_COMP_DW10(phy)		_MMIO(_ICL_PORT_COMP_DW(10, phy))
 
-/* CNL/ICL Port PCS registers */
-#define _CNL_PORT_PCS_DW1_GRP_AE	0x162304
-#define _CNL_PORT_PCS_DW1_GRP_B		0x162384
-#define _CNL_PORT_PCS_DW1_GRP_C		0x162B04
-#define _CNL_PORT_PCS_DW1_GRP_D		0x162B84
-#define _CNL_PORT_PCS_DW1_GRP_F		0x162A04
-#define _CNL_PORT_PCS_DW1_LN0_AE	0x162404
-#define _CNL_PORT_PCS_DW1_LN0_B		0x162604
-#define _CNL_PORT_PCS_DW1_LN0_C		0x162C04
-#define _CNL_PORT_PCS_DW1_LN0_D		0x162E04
-#define _CNL_PORT_PCS_DW1_LN0_F		0x162804
-#define CNL_PORT_PCS_DW1_GRP(phy)	_MMIO(_PICK(phy, \
-						    _CNL_PORT_PCS_DW1_GRP_AE, \
-						    _CNL_PORT_PCS_DW1_GRP_B, \
-						    _CNL_PORT_PCS_DW1_GRP_C, \
-						    _CNL_PORT_PCS_DW1_GRP_D, \
-						    _CNL_PORT_PCS_DW1_GRP_AE, \
-						    _CNL_PORT_PCS_DW1_GRP_F))
-#define CNL_PORT_PCS_DW1_LN0(phy)	_MMIO(_PICK(phy, \
-						    _CNL_PORT_PCS_DW1_LN0_AE, \
-						    _CNL_PORT_PCS_DW1_LN0_B, \
-						    _CNL_PORT_PCS_DW1_LN0_C, \
-						    _CNL_PORT_PCS_DW1_LN0_D, \
-						    _CNL_PORT_PCS_DW1_LN0_AE, \
-						    _CNL_PORT_PCS_DW1_LN0_F))
-
+/* ICL Port PCS registers */
 #define _ICL_PORT_PCS_AUX		0x300
 #define _ICL_PORT_PCS_GRP		0x600
 #define _ICL_PORT_PCS_LN(ln)		(0x800 + (ln) * 0x100)
@@ -1998,34 +1967,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   LATENCY_OPTIM_MASK		(0x3 << 2)
 #define   LATENCY_OPTIM_VAL(x)		((x) << 2)
 
-/* CNL/ICL Port TX registers */
-#define _CNL_PORT_TX_AE_GRP_OFFSET		0x162340
-#define _CNL_PORT_TX_B_GRP_OFFSET		0x1623C0
-#define _CNL_PORT_TX_C_GRP_OFFSET		0x162B40
-#define _CNL_PORT_TX_D_GRP_OFFSET		0x162BC0
-#define _CNL_PORT_TX_F_GRP_OFFSET		0x162A40
-#define _CNL_PORT_TX_AE_LN0_OFFSET		0x162440
-#define _CNL_PORT_TX_B_LN0_OFFSET		0x162640
-#define _CNL_PORT_TX_C_LN0_OFFSET		0x162C40
-#define _CNL_PORT_TX_D_LN0_OFFSET		0x162E40
-#define _CNL_PORT_TX_F_LN0_OFFSET		0x162840
-#define _CNL_PORT_TX_DW_GRP(dw, port)	(_PICK((port), \
-					       _CNL_PORT_TX_AE_GRP_OFFSET, \
-					       _CNL_PORT_TX_B_GRP_OFFSET, \
-					       _CNL_PORT_TX_B_GRP_OFFSET, \
-					       _CNL_PORT_TX_D_GRP_OFFSET, \
-					       _CNL_PORT_TX_AE_GRP_OFFSET, \
-					       _CNL_PORT_TX_F_GRP_OFFSET) + \
-					       4 * (dw))
-#define _CNL_PORT_TX_DW_LN0(dw, port)	(_PICK((port), \
-					       _CNL_PORT_TX_AE_LN0_OFFSET, \
-					       _CNL_PORT_TX_B_LN0_OFFSET, \
-					       _CNL_PORT_TX_B_LN0_OFFSET, \
-					       _CNL_PORT_TX_D_LN0_OFFSET, \
-					       _CNL_PORT_TX_AE_LN0_OFFSET, \
-					       _CNL_PORT_TX_F_LN0_OFFSET) + \
-					       4 * (dw))
-
+/* ICL Port TX registers */
 #define _ICL_PORT_TX_AUX		0x380
 #define _ICL_PORT_TX_GRP		0x680
 #define _ICL_PORT_TX_LN(ln)		(0x880 + (ln) * 0x100)
@@ -2037,8 +1979,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define _ICL_PORT_TX_DW_LN(dw, ln, phy) (_ICL_COMBOPHY(phy) + \
 					  _ICL_PORT_TX_LN(ln) + 4 * (dw))
 
-#define CNL_PORT_TX_DW2_GRP(port)	_MMIO(_CNL_PORT_TX_DW_GRP(2, port))
-#define CNL_PORT_TX_DW2_LN0(port)	_MMIO(_CNL_PORT_TX_DW_LN0(2, port))
 #define ICL_PORT_TX_DW2_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(2, phy))
 #define ICL_PORT_TX_DW2_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(2, phy))
 #define ICL_PORT_TX_DW2_LN0(phy)	_MMIO(_ICL_PORT_TX_DW_LN(2, 0, phy))
@@ -2051,13 +1991,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   RCOMP_SCALAR(x)		((x) << 0)
 #define   RCOMP_SCALAR_MASK		(0xFF << 0)
 
-#define _CNL_PORT_TX_DW4_LN0_AE		0x162450
-#define _CNL_PORT_TX_DW4_LN1_AE		0x1624D0
-#define CNL_PORT_TX_DW4_GRP(port)	_MMIO(_CNL_PORT_TX_DW_GRP(4, (port)))
-#define CNL_PORT_TX_DW4_LN0(port)	_MMIO(_CNL_PORT_TX_DW_LN0(4, (port)))
-#define CNL_PORT_TX_DW4_LN(ln, port)   _MMIO(_CNL_PORT_TX_DW_LN0(4, (port)) + \
-					   ((ln) * (_CNL_PORT_TX_DW4_LN1_AE - \
-						    _CNL_PORT_TX_DW4_LN0_AE)))
 #define ICL_PORT_TX_DW4_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(4, phy))
 #define ICL_PORT_TX_DW4_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(4, phy))
 #define ICL_PORT_TX_DW4_LN0(phy)	_MMIO(_ICL_PORT_TX_DW_LN(4, 0, phy))
@@ -2070,8 +2003,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   CURSOR_COEFF(x)		((x) << 0)
 #define   CURSOR_COEFF_MASK		(0x3F << 0)
 
-#define CNL_PORT_TX_DW5_GRP(port)	_MMIO(_CNL_PORT_TX_DW_GRP(5, port))
-#define CNL_PORT_TX_DW5_LN0(port)	_MMIO(_CNL_PORT_TX_DW_LN0(5, port))
 #define ICL_PORT_TX_DW5_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(5, phy))
 #define ICL_PORT_TX_DW5_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(5, phy))
 #define ICL_PORT_TX_DW5_LN0(phy)	_MMIO(_ICL_PORT_TX_DW_LN(5, 0, phy))
@@ -2083,8 +2014,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   RTERM_SELECT(x)		((x) << 3)
 #define   RTERM_SELECT_MASK		(0x7 << 3)
 
-#define CNL_PORT_TX_DW7_GRP(port)	_MMIO(_CNL_PORT_TX_DW_GRP(7, (port)))
-#define CNL_PORT_TX_DW7_LN0(port)	_MMIO(_CNL_PORT_TX_DW_LN0(7, (port)))
 #define ICL_PORT_TX_DW7_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(7, phy))
 #define ICL_PORT_TX_DW7_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(7, phy))
 #define ICL_PORT_TX_DW7_LN0(phy)	_MMIO(_ICL_PORT_TX_DW_LN(7, 0, phy))
@@ -8129,7 +8058,6 @@ enum {
 #define  KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	(1 << 14)
 
 #define CHICKEN_MISC_2		_MMIO(0x42084)
-#define  CNL_COMP_PWR_DOWN	(1 << 23)
 #define  KBL_ARB_FILL_SPARE_14	REG_BIT(14)
 #define  KBL_ARB_FILL_SPARE_13	REG_BIT(13)
 #define  GLK_CL2_PWR_DOWN	(1 << 12)
@@ -8169,7 +8097,7 @@ enum {
 					    [TRANSCODER_D] = _CHICKEN_TRANS_D))
 #define  HSW_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27)
 #define  HSW_FRAME_START_DELAY(x)	REG_FIELD_PREP(HSW_FRAME_START_DELAY_MASK, x)
-#define  VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK and CNL+ */
+#define  VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK */
 #define  FECSTALL_DIS_DPTSTREAM_DPTTG	REG_BIT(23)
 #define  DDI_TRAINING_OVERRIDE_ENABLE	REG_BIT(19)
 #define  DDI_TRAINING_OVERRIDE_VALUE	REG_BIT(18)
@@ -8236,7 +8164,6 @@ enum {
 #define   SKL_SELECT_ALTERNATE_DC_EXIT	(1 << 30)
 #define   ICL_DELAY_PMRSP		(1 << 22)
 #define   MASK_WAKEMEM			(1 << 13)
-#define   CNL_DDI_CLOCK_REG_ACCESS_ON	(1 << 7)
 
 #define GEN11_CHICKEN_DCPR_2			_MMIO(0x46434)
 #define   DCPR_MASK_MAXLATENCY_MEMUP_CLR	REG_BIT(27)
@@ -8257,10 +8184,9 @@ enum {
 #define   SKL_DFSM_PIPE_B_DISABLE	(1 << 21)
 #define   SKL_DFSM_PIPE_C_DISABLE	(1 << 28)
 #define   TGL_DFSM_PIPE_D_DISABLE	(1 << 22)
-#define   CNL_DFSM_DISPLAY_DSC_DISABLE	(1 << 7)
+#define   GLK_DFSM_DISPLAY_DSC_DISABLE	(1 << 7)
 
 #define SKL_DSSM				_MMIO(0x51004)
-#define CNL_DSSM_CDCLK_PLL_REFCLK_24MHz		(1 << 31)
 #define ICL_DSSM_CDCLK_PLL_REFCLK_MASK		(7 << 29)
 #define ICL_DSSM_CDCLK_PLL_REFCLK_24MHz		(0 << 29)
 #define ICL_DSSM_CDCLK_PLL_REFCLK_19_2MHz	(1 << 29)
@@ -8359,7 +8285,6 @@ enum {
 
 /* GEN8 chicken */
 #define HDC_CHICKEN0				_MMIO(0x7300)
-#define CNL_HDC_CHICKEN0			_MMIO(0xE5F0)
 #define ICL_HDC_MODE				_MMIO(0xE5F4)
 #define  HDC_FORCE_CSR_NON_COHERENT_OVR_DISABLE	(1 << 15)
 #define  HDC_FENCE_DEST_SLM_DISABLE		(1 << 14)
@@ -9540,7 +9465,6 @@ enum {
 #define   HSW_SAMPLE_C_PERFORMANCE	(1 << 9)
 #define   GEN8_CENTROID_PIXEL_OPT_DIS	(1 << 8)
 #define   GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC	(1 << 5)
-#define   CNL_FAST_ANISO_L1_BANKING_FIX	(1 << 4)
 #define   GEN8_SAMPLER_POWER_BYPASS_DIS	(1 << 1)
 
 #define GEN9_HALF_SLICE_CHICKEN7	_MMIO(0xe194)
@@ -9721,15 +9645,12 @@ enum {
 /* HSW/BDW power well */
 #define   HSW_PW_CTL_IDX_GLOBAL			15
 
-/* SKL/BXT/GLK/CNL power wells */
+/* SKL/BXT/GLK power wells */
 #define   SKL_PW_CTL_IDX_PW_2			15
 #define   SKL_PW_CTL_IDX_PW_1			14
-#define   CNL_PW_CTL_IDX_AUX_F			12
-#define   CNL_PW_CTL_IDX_AUX_D			11
 #define   GLK_PW_CTL_IDX_AUX_C			10
 #define   GLK_PW_CTL_IDX_AUX_B			9
 #define   GLK_PW_CTL_IDX_AUX_A			8
-#define   CNL_PW_CTL_IDX_DDI_F			6
 #define   SKL_PW_CTL_IDX_DDI_D			4
 #define   SKL_PW_CTL_IDX_DDI_C			3
 #define   SKL_PW_CTL_IDX_DDI_B			2
@@ -10127,11 +10048,11 @@ enum skl_power_gate {
 #define  TRANS_DDI_BPC_10		(1 << 20)
 #define  TRANS_DDI_BPC_6		(2 << 20)
 #define  TRANS_DDI_BPC_12		(3 << 20)
-#define  TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK	REG_GENMASK(19, 18) /* bdw-cnl */
+#define  TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK	REG_GENMASK(19, 18)
 #define  TRANS_DDI_PORT_SYNC_MASTER_SELECT(x)	REG_FIELD_PREP(TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK, (x))
 #define  TRANS_DDI_PVSYNC		(1 << 17)
 #define  TRANS_DDI_PHSYNC		(1 << 16)
-#define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15) /* bdw-cnl */
+#define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
 #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
 #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
 #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
@@ -10490,17 +10411,6 @@ enum skl_power_gate {
 #define DPLL_CFGCR1(id)	_MMIO_PIPE((id) - SKL_DPLL1, _DPLL1_CFGCR1, _DPLL2_CFGCR1)
 #define DPLL_CFGCR2(id)	_MMIO_PIPE((id) - SKL_DPLL1, _DPLL1_CFGCR2, _DPLL2_CFGCR2)
 
-/*
- * CNL Clocks
- */
-#define DPCLKA_CFGCR0				_MMIO(0x6C200)
-#define  DPCLKA_CFGCR0_DDI_CLK_OFF(port)	(1 << ((port) ==  PORT_F ? 23 : \
-						      (port) + 10))
-#define  DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(port)	((port) == PORT_F ? 21 : \
-						(port) * 2)
-#define  DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(port)	(3 << DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(port))
-#define  DPCLKA_CFGCR0_DDI_CLK_SEL(pll, port)	((pll) << DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(port))
-
 /* ICL Clocks */
 #define ICL_DPCLKA_CFGCR0			_MMIO(0x164280)
 #define  ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	(1 << _PICK(phy, 10, 11, 24, 4, 5))
@@ -10733,60 +10643,52 @@ enum skl_power_gate {
 						   _MG_PLL_TDC_COLDST_BIAS_PORT1, \
 						   _MG_PLL_TDC_COLDST_BIAS_PORT2)
 
-#define _CNL_DPLL0_CFGCR0		0x6C000
-#define _CNL_DPLL1_CFGCR0		0x6C080
-#define  DPLL_CFGCR0_HDMI_MODE		(1 << 30)
-#define  DPLL_CFGCR0_SSC_ENABLE		(1 << 29)
-#define  DPLL_CFGCR0_SSC_ENABLE_ICL	(1 << 25)
-#define  DPLL_CFGCR0_LINK_RATE_MASK	(0xf << 25)
-#define  DPLL_CFGCR0_LINK_RATE_2700	(0 << 25)
-#define  DPLL_CFGCR0_LINK_RATE_1350	(1 << 25)
-#define  DPLL_CFGCR0_LINK_RATE_810	(2 << 25)
-#define  DPLL_CFGCR0_LINK_RATE_1620	(3 << 25)
-#define  DPLL_CFGCR0_LINK_RATE_1080	(4 << 25)
-#define  DPLL_CFGCR0_LINK_RATE_2160	(5 << 25)
-#define  DPLL_CFGCR0_LINK_RATE_3240	(6 << 25)
-#define  DPLL_CFGCR0_LINK_RATE_4050	(7 << 25)
-#define  DPLL_CFGCR0_DCO_FRACTION_MASK	(0x7fff << 10)
-#define  DPLL_CFGCR0_DCO_FRACTION_SHIFT	(10)
-#define  DPLL_CFGCR0_DCO_FRACTION(x)	((x) << 10)
-#define  DPLL_CFGCR0_DCO_INTEGER_MASK	(0x3ff)
-#define CNL_DPLL_CFGCR0(pll)		_MMIO_PLL(pll, _CNL_DPLL0_CFGCR0, _CNL_DPLL1_CFGCR0)
-
-#define _CNL_DPLL0_CFGCR1		0x6C004
-#define _CNL_DPLL1_CFGCR1		0x6C084
-#define  DPLL_CFGCR1_QDIV_RATIO_MASK	(0xff << 10)
-#define  DPLL_CFGCR1_QDIV_RATIO_SHIFT	(10)
-#define  DPLL_CFGCR1_QDIV_RATIO(x)	((x) << 10)
-#define  DPLL_CFGCR1_QDIV_MODE_SHIFT	(9)
-#define  DPLL_CFGCR1_QDIV_MODE(x)	((x) << 9)
-#define  DPLL_CFGCR1_KDIV_MASK		(7 << 6)
-#define  DPLL_CFGCR1_KDIV_SHIFT		(6)
-#define  DPLL_CFGCR1_KDIV(x)		((x) << 6)
-#define  DPLL_CFGCR1_KDIV_1		(1 << 6)
-#define  DPLL_CFGCR1_KDIV_2		(2 << 6)
-#define  DPLL_CFGCR1_KDIV_3		(4 << 6)
-#define  DPLL_CFGCR1_PDIV_MASK		(0xf << 2)
-#define  DPLL_CFGCR1_PDIV_SHIFT		(2)
-#define  DPLL_CFGCR1_PDIV(x)		((x) << 2)
-#define  DPLL_CFGCR1_PDIV_2		(1 << 2)
-#define  DPLL_CFGCR1_PDIV_3		(2 << 2)
-#define  DPLL_CFGCR1_PDIV_5		(4 << 2)
-#define  DPLL_CFGCR1_PDIV_7		(8 << 2)
-#define  DPLL_CFGCR1_CENTRAL_FREQ	(3 << 0)
-#define  DPLL_CFGCR1_CENTRAL_FREQ_8400	(3 << 0)
-#define  TGL_DPLL_CFGCR1_CFSELOVRD_NORMAL_XTAL	(0 << 0)
-#define CNL_DPLL_CFGCR1(pll)		_MMIO_PLL(pll, _CNL_DPLL0_CFGCR1, _CNL_DPLL1_CFGCR1)
-
 #define _ICL_DPLL0_CFGCR0		0x164000
 #define _ICL_DPLL1_CFGCR0		0x164080
 #define ICL_DPLL_CFGCR0(pll)		_MMIO_PLL(pll, _ICL_DPLL0_CFGCR0, \
 						  _ICL_DPLL1_CFGCR0)
+#define   DPLL_CFGCR0_HDMI_MODE		(1 << 30)
+#define   DPLL_CFGCR0_SSC_ENABLE	(1 << 29)
+#define   DPLL_CFGCR0_SSC_ENABLE_ICL	(1 << 25)
+#define   DPLL_CFGCR0_LINK_RATE_MASK	(0xf << 25)
+#define   DPLL_CFGCR0_LINK_RATE_2700	(0 << 25)
+#define   DPLL_CFGCR0_LINK_RATE_1350	(1 << 25)
+#define   DPLL_CFGCR0_LINK_RATE_810	(2 << 25)
+#define   DPLL_CFGCR0_LINK_RATE_1620	(3 << 25)
+#define   DPLL_CFGCR0_LINK_RATE_1080	(4 << 25)
+#define   DPLL_CFGCR0_LINK_RATE_2160	(5 << 25)
+#define   DPLL_CFGCR0_LINK_RATE_3240	(6 << 25)
+#define   DPLL_CFGCR0_LINK_RATE_4050	(7 << 25)
+#define   DPLL_CFGCR0_DCO_FRACTION_MASK	(0x7fff << 10)
+#define   DPLL_CFGCR0_DCO_FRACTION_SHIFT	(10)
+#define   DPLL_CFGCR0_DCO_FRACTION(x)	((x) << 10)
+#define   DPLL_CFGCR0_DCO_INTEGER_MASK	(0x3ff)
 
 #define _ICL_DPLL0_CFGCR1		0x164004
 #define _ICL_DPLL1_CFGCR1		0x164084
 #define ICL_DPLL_CFGCR1(pll)		_MMIO_PLL(pll, _ICL_DPLL0_CFGCR1, \
 						  _ICL_DPLL1_CFGCR1)
+#define   DPLL_CFGCR1_QDIV_RATIO_MASK	(0xff << 10)
+#define   DPLL_CFGCR1_QDIV_RATIO_SHIFT	(10)
+#define   DPLL_CFGCR1_QDIV_RATIO(x)	((x) << 10)
+#define   DPLL_CFGCR1_QDIV_MODE_SHIFT	(9)
+#define   DPLL_CFGCR1_QDIV_MODE(x)	((x) << 9)
+#define   DPLL_CFGCR1_KDIV_MASK		(7 << 6)
+#define   DPLL_CFGCR1_KDIV_SHIFT		(6)
+#define   DPLL_CFGCR1_KDIV(x)		((x) << 6)
+#define   DPLL_CFGCR1_KDIV_1		(1 << 6)
+#define   DPLL_CFGCR1_KDIV_2		(2 << 6)
+#define   DPLL_CFGCR1_KDIV_3		(4 << 6)
+#define   DPLL_CFGCR1_PDIV_MASK		(0xf << 2)
+#define   DPLL_CFGCR1_PDIV_SHIFT		(2)
+#define   DPLL_CFGCR1_PDIV(x)		((x) << 2)
+#define   DPLL_CFGCR1_PDIV_2		(1 << 2)
+#define   DPLL_CFGCR1_PDIV_3		(2 << 2)
+#define   DPLL_CFGCR1_PDIV_5		(4 << 2)
+#define   DPLL_CFGCR1_PDIV_7		(8 << 2)
+#define   DPLL_CFGCR1_CENTRAL_FREQ	(3 << 0)
+#define   DPLL_CFGCR1_CENTRAL_FREQ_8400	(3 << 0)
+#define   TGL_DPLL_CFGCR1_CFSELOVRD_NORMAL_XTAL	(0 << 0)
 
 #define _TGL_DPLL0_CFGCR0		0x164284
 #define _TGL_DPLL1_CFGCR0		0x16428C
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index b674d03e6047..1ccaeb03ad6d 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -367,7 +367,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			info->display.has_dmc = 0;
 
 		if (DISPLAY_VER(dev_priv) >= 10 &&
-		    (dfsm & CNL_DFSM_DISPLAY_DSC_DISABLE))
+		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
 			info->display.has_dsc = 0;
 	}
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
