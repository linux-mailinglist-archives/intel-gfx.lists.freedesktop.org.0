Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0855BD76E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 00:34:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79B6010E1A3;
	Mon, 19 Sep 2022 22:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4F1F10E078;
 Mon, 19 Sep 2022 22:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663626789; x=1695162789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2qPFH8RDsnrzjbdaHt/5kBESFqP2zpwbvjuiTLeBhds=;
 b=jd4bOYGNdEscZD3ZAksIfNqA4+z5EhbsWzeRryCxm1f8W2bPocu4Xwpr
 isXhf3Lxf5HHQN2DivR8etXpOlldOMEm74WnOSygZmvjfUDKEaAvoIXrq
 qbhvprNS83gA5BDtNWhBLW3BtgN6SjjMZpgl0wOK2POin/us9408Oe0Gb
 w2DXfmChLj5txZt3Vsrl/cxsXReAfqkex74kwnWlhKeGnNMaKsoUmli91
 ID3YYMXXzzEfPAO9CIgf4YPrjEUXJcHRUo6QNB/vNjLVjexFklNKf6NFc
 yoaVYMvaulSGfY4n4+JXc2ye15eD/PwmNIi2WFdKhLs+W+zev4kjcFEJk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="286585483"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="286585483"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 15:33:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="794030773"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 15:33:08 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Sep 2022 15:32:53 -0700
Message-Id: <20220919223259.263525-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220919223259.263525-1-matthew.d.roper@intel.com>
References: <20220919223259.263525-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/12] drm/i915: Define MCR registers explicitly
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rather than using the same _MMIO() macro to define MCR registers as
singleton registers, let's use a new MCR_REG() macro to make it clear
that these registers are special and should be handled accordingly.  For
now MCR_REG() will still generate an i915_reg_t with the given offset,
but we'll change that in future patches.

Bspec: 66673, 66696, 66534, 67609
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 124 ++++++++++++------------
 1 file changed, 63 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index dff38b0c4430..f96cf08cd31e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -8,6 +8,8 @@
 
 #include "i915_reg_defs.h"
 
+#define MCR_REG(offset)	_MMIO(offset)
+
 /* RPM unit config (Gen8+) */
 #define RPM_CONFIG0				_MMIO(0xd00)
 #define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
@@ -329,12 +331,12 @@
 #define GEN7_TLB_RD_ADDR			_MMIO(0x4700)
 
 #define GEN12_PAT_INDEX(index)			_MMIO(0x4800 + (index) * 4)
-#define XEHP_PAT_INDEX(index)			_MMIO(0x4800 + (index) * 4)
+#define XEHP_PAT_INDEX(index)			MCR_REG(0x4800 + (index) * 4)
 
-#define XEHP_TILE0_ADDR_RANGE			_MMIO(0x4900)
+#define XEHP_TILE0_ADDR_RANGE			MCR_REG(0x4900)
 #define   XEHP_TILE_LMEM_RANGE_SHIFT		8
 
-#define XEHP_FLAT_CCS_BASE_ADDR			_MMIO(0x4910)
+#define XEHP_FLAT_CCS_BASE_ADDR			MCR_REG(0x4910)
 #define   XEHP_CCS_BASE_SHIFT			8
 
 #define GAMTARBMODE				_MMIO(0x4a08)
@@ -384,18 +386,18 @@
 #define CHICKEN_RASTER_2			_MMIO(0x6208)
 #define   TBIMR_FAST_CLIP			REG_BIT(5)
 
-#define VFLSKPD					_MMIO(0x62a8)
+#define VFLSKPD					MCR_REG(0x62a8)
 #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
 #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
 
 #define GEN12_FF_MODE2				_MMIO(0x6604)
-#define XEHP_FF_MODE2				_MMIO(0x6604)
+#define XEHP_FF_MODE2				MCR_REG(0x6604)
 #define   FF_MODE2_GS_TIMER_MASK		REG_GENMASK(31, 24)
 #define   FF_MODE2_GS_TIMER_224			REG_FIELD_PREP(FF_MODE2_GS_TIMER_MASK, 224)
 #define   FF_MODE2_TDS_TIMER_MASK		REG_GENMASK(23, 16)
 #define   FF_MODE2_TDS_TIMER_128		REG_FIELD_PREP(FF_MODE2_TDS_TIMER_MASK, 4)
 
-#define XEHPG_INSTDONE_GEOM_SVG			_MMIO(0x666c)
+#define XEHPG_INSTDONE_GEOM_SVG			MCR_REG(0x666c)
 
 #define CACHE_MODE_0_GEN7			_MMIO(0x7000) /* IVB+ */
 #define   RC_OP_FLUSH_ENABLE			(1 << 0)
@@ -444,14 +446,14 @@
 #define GEN8_HDC_CHICKEN1			_MMIO(0x7304)
 
 #define GEN11_COMMON_SLICE_CHICKEN3		_MMIO(0x7304)
-#define XEHP_COMMON_SLICE_CHICKEN3		_MMIO(0x7304)
+#define XEHP_COMMON_SLICE_CHICKEN3		MCR_REG(0x7304)
 #define   DG1_FLOAT_POINT_BLEND_OPT_STRICT_MODE_EN	REG_BIT(12)
 #define   XEHP_DUAL_SIMD8_SEQ_MERGE_DISABLE	REG_BIT(12)
 #define   GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC	REG_BIT(11)
 #define   GEN12_DISABLE_CPS_AWARE_COLOR_PIPE	REG_BIT(9)
 
 #define GEN9_SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731c)
-#define XEHP_SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731c)
+#define XEHP_SLICE_COMMON_ECO_CHICKEN1		MCR_REG(0x731c)
 #define   MSC_MSAA_REODER_BUF_BYPASS_DISABLE	REG_BIT(14)
 #define   GEN11_STATE_CACHE_REDIRECT_TO_CS	(1 << 11)
 
@@ -482,7 +484,7 @@
 
 #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
 
-#define XEHP_SQCM				_MMIO(0x8724)
+#define XEHP_SQCM				MCR_REG(0x8724)
 #define   EN_32B_ACCESS				REG_BIT(30)
 
 #define HSW_IDICR				_MMIO(0x9008)
@@ -643,7 +645,7 @@
 #define GEN7_MISCCPCTL				_MMIO(0x9424)
 #define   GEN7_DOP_CLOCK_GATE_ENABLE		(1 << 0)
 
-#define GEN8_MISCCPCTL				_MMIO(0x9424)
+#define GEN8_MISCCPCTL				MCR_REG(0x9424)
 #define   GEN8_DOP_CLOCK_GATE_ENABLE		REG_BIT(0)
 #define   GEN12_DOP_CLOCK_GATE_RENDER_ENABLE	REG_BIT(1)
 #define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
@@ -699,7 +701,7 @@
 #define   LTCDD_CLKGATE_DIS			REG_BIT(10)
 
 #define GEN11_SLICE_UNIT_LEVEL_CLKGATE		_MMIO(0x94d4)
-#define XEHP_SLICE_UNIT_LEVEL_CLKGATE		_MMIO(0x94d4)
+#define XEHP_SLICE_UNIT_LEVEL_CLKGATE		MCR_REG(0x94d4)
 #define   SARBUNIT_CLKGATE_DIS			(1 << 5)
 #define   RCCUNIT_CLKGATE_DIS			(1 << 7)
 #define   MSCUNIT_CLKGATE_DIS			(1 << 10)
@@ -707,27 +709,27 @@
 #define   L3_CLKGATE_DIS			REG_BIT(16)
 #define   L3_CR2X_CLKGATE_DIS			REG_BIT(17)
 
-#define SCCGCTL94DC				_MMIO(0x94dc)
+#define SCCGCTL94DC				MCR_REG(0x94dc)
 #define   CG3DDISURB				REG_BIT(14)
 
 #define UNSLICE_UNIT_LEVEL_CLKGATE2		_MMIO(0x94e4)
 #define   VSUNIT_CLKGATE_DIS_TGL		REG_BIT(19)
 #define   PSDUNIT_CLKGATE_DIS			REG_BIT(5)
 
-#define GEN11_SUBSLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x9524)
+#define GEN11_SUBSLICE_UNIT_LEVEL_CLKGATE	MCR_REG(0x9524)
 #define   DSS_ROUTER_CLKGATE_DIS		REG_BIT(28)
 #define   GWUNIT_CLKGATE_DIS			REG_BIT(16)
 
-#define SUBSLICE_UNIT_LEVEL_CLKGATE2		_MMIO(0x9528)
+#define SUBSLICE_UNIT_LEVEL_CLKGATE2		MCR_REG(0x9528)
 #define   CPSSUNIT_CLKGATE_DIS			REG_BIT(9)
 
-#define SSMCGCTL9530				_MMIO(0x9530)
+#define SSMCGCTL9530				MCR_REG(0x9530)
 #define   RTFUNIT_CLKGATE_DIS			REG_BIT(18)
 
-#define GEN10_DFR_RATIO_EN_AND_CHICKEN		_MMIO(0x9550)
+#define GEN10_DFR_RATIO_EN_AND_CHICKEN		MCR_REG(0x9550)
 #define   DFR_DISABLE				(1 << 9)
 
-#define INF_UNIT_LEVEL_CLKGATE			_MMIO(0x9560)
+#define INF_UNIT_LEVEL_CLKGATE			MCR_REG(0x9560)
 #define   CGPSF_CLKGATE_DIS			(1 << 3)
 
 #define MICRO_BP0_0				_MMIO(0x9800)
@@ -939,7 +941,7 @@
 
 /* MOCS (Memory Object Control State) registers */
 #define GEN9_LNCFCMOCS(i)			_MMIO(0xb020 + (i) * 4)	/* L3 Cache Control */
-#define XEHP_LNCFCMOCS(i)			_MMIO(0xb020 + (i) * 4)	/* L3 Cache Control */
+#define XEHP_LNCFCMOCS(i)			MCR_REG(0xb020 + (i) * 4)	/* L3 Cache Control */
 #define LNCFCMOCS_REG_COUNT			32
 
 #define GEN7_L3CNTLREG3				_MMIO(0xb024)
@@ -956,10 +958,10 @@
 #define GEN7_L3LOG(slice, i)			_MMIO(0xb070 + (slice) * 0x200 + (i) * 4)
 #define   GEN7_L3LOG_SIZE			0x80
 
-#define XEHP_L3NODEARBCFG			_MMIO(0xb0b4)
+#define XEHP_L3NODEARBCFG			MCR_REG(0xb0b4)
 #define   XEHP_LNESPARE				REG_BIT(19)
 
-#define GEN8_L3SQCREG1				_MMIO(0xb100)
+#define GEN8_L3SQCREG1				MCR_REG(0xb100)
 /*
  * Note that on CHV the following has an off-by-one error wrt. to BSpec.
  * Using the formula in BSpec leads to a hang, while the formula here works
@@ -970,28 +972,28 @@
 #define   L3_HIGH_PRIO_CREDITS(x)		(((x) >> 1) << 14)
 #define   L3_PRIO_CREDITS_MASK			((0x1f << 19) | (0x1f << 14))
 
-#define GEN8_L3SQCREG4				_MMIO(0xb118)
+#define GEN8_L3SQCREG4				MCR_REG(0xb118)
 #define   GEN11_LQSC_CLEAN_EVICT_DISABLE	(1 << 6)
 #define   GEN8_LQSC_RO_PERF_DIS			(1 << 27)
 #define   GEN8_LQSC_FLUSH_COHERENT_LINES	(1 << 21)
 #define   GEN8_LQSQ_NONIA_COHERENT_ATOMICS_ENABLE	REG_BIT(22)
 
-#define GEN9_SCRATCH1				_MMIO(0xb11c)
+#define GEN9_SCRATCH1				MCR_REG(0xb11c)
 #define   EVICTION_PERF_FIX_ENABLE		REG_BIT(8)
 
-#define BDW_SCRATCH1				_MMIO(0xb11c)
+#define BDW_SCRATCH1				MCR_REG(0xb11c)
 #define   GEN9_LBS_SLA_RETRY_TIMER_DECREMENT_ENABLE	(1 << 2)
 
-#define GEN11_SCRATCH2				_MMIO(0xb140)
+#define GEN11_SCRATCH2				MCR_REG(0xb140)
 #define   GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE	(1 << 19)
 
-#define XEHP_L3SQCREG5				_MMIO(0xb158)
+#define XEHP_L3SQCREG5				MCR_REG(0xb158)
 #define   L3_PWM_TIMER_INIT_VAL_MASK		REG_GENMASK(9, 0)
 
-#define MLTICTXCTL				_MMIO(0xb170)
+#define MLTICTXCTL				MCR_REG(0xb170)
 #define   TDONRENDER				REG_BIT(2)
 
-#define XEHP_L3SCQREG7				_MMIO(0xb188)
+#define XEHP_L3SCQREG7				MCR_REG(0xb188)
 #define   BLEND_FILL_CACHING_OPT_DIS		REG_BIT(3)
 
 #define XEHPC_L3SCRUB				_MMIO(0xb18c)
@@ -999,7 +1001,7 @@
 #define   SCRUB_RATE_PER_BANK_MASK		REG_GENMASK(2, 0)
 #define   SCRUB_RATE_4B_PER_CLK			REG_FIELD_PREP(SCRUB_RATE_PER_BANK_MASK, 0x6)
 
-#define L3SQCREG1_CCS0				_MMIO(0xb200)
+#define L3SQCREG1_CCS0				MCR_REG(0xb200)
 #define   FLUSHALLNONCOH			REG_BIT(5)
 
 #define GEN11_GLBLINVL				_MMIO(0xb404)
@@ -1024,14 +1026,14 @@
 #define GEN9_BLT_MOCS(i)			_MMIO(__GEN9_BCS0_MOCS0 + (i) * 4)
 
 #define GEN12_FAULT_TLB_DATA0			_MMIO(0xceb8)
-#define XEHP_FAULT_TLB_DATA0			_MMIO(0xceb8)
+#define XEHP_FAULT_TLB_DATA0			MCR_REG(0xceb8)
 #define GEN12_FAULT_TLB_DATA1			_MMIO(0xcebc)
-#define XEHP_FAULT_TLB_DATA1			_MMIO(0xcebc)
+#define XEHP_FAULT_TLB_DATA1			MCR_REG(0xcebc)
 #define   FAULT_VA_HIGH_BITS			(0xf << 0)
 #define   FAULT_GTT_SEL				(1 << 4)
 
 #define GEN12_RING_FAULT_REG			_MMIO(0xcec4)
-#define XEHP_RING_FAULT_REG			_MMIO(0xcec4)
+#define XEHP_RING_FAULT_REG			MCR_REG(0xcec4)
 #define   GEN8_RING_FAULT_ENGINE_ID(x)		(((x) >> 12) & 0x7)
 #define   RING_FAULT_GTTSEL_MASK		(1 << 11)
 #define   RING_FAULT_SRCID(x)			(((x) >> 3) & 0xff)
@@ -1044,11 +1046,11 @@
 #define GEN12_BLT_TLB_INV_CR			_MMIO(0xcee4)
 #define GEN12_COMPCTX_TLB_INV_CR		_MMIO(0xcf04)
 
-#define XEHP_MERT_MOD_CTRL			_MMIO(0xcf28)
-#define RENDER_MOD_CTRL				_MMIO(0xcf2c)
-#define COMP_MOD_CTRL				_MMIO(0xcf30)
-#define VDBX_MOD_CTRL				_MMIO(0xcf34)
-#define VEBX_MOD_CTRL				_MMIO(0xcf38)
+#define XEHP_MERT_MOD_CTRL			MCR_REG(0xcf28)
+#define RENDER_MOD_CTRL				MCR_REG(0xcf2c)
+#define COMP_MOD_CTRL				MCR_REG(0xcf30)
+#define VDBX_MOD_CTRL				MCR_REG(0xcf34)
+#define VEBX_MOD_CTRL				MCR_REG(0xcf38)
 #define   FORCE_MISS_FTLB			REG_BIT(3)
 
 #define GEN12_GAMSTLB_CTRL			_MMIO(0xcf4c)
@@ -1063,52 +1065,52 @@
 #define GEN12_GAM_DONE				_MMIO(0xcf68)
 
 #define GEN7_HALF_SLICE_CHICKEN1		_MMIO(0xe100) /* IVB GT1 + VLV */
-#define GEN8_HALF_SLICE_CHICKEN1		_MMIO(0xe100)
+#define GEN8_HALF_SLICE_CHICKEN1		MCR_REG(0xe100)
 #define   GEN7_MAX_PS_THREAD_DEP		(8 << 12)
 #define   GEN7_SINGLE_SUBSCAN_DISPATCH_ENABLE	(1 << 10)
 #define   GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE	(1 << 4)
 #define   GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE	(1 << 3)
 
 #define GEN7_SAMPLER_INSTDONE			_MMIO(0xe160)
-#define GEN8_SAMPLER_INSTDONE			_MMIO(0xe160)
+#define GEN8_SAMPLER_INSTDONE			MCR_REG(0xe160)
 #define GEN7_ROW_INSTDONE			_MMIO(0xe164)
-#define GEN8_ROW_INSTDONE			_MMIO(0xe164)
+#define GEN8_ROW_INSTDONE			MCR_REG(0xe164)
 
-#define HALF_SLICE_CHICKEN2			_MMIO(0xe180)
+#define HALF_SLICE_CHICKEN2			MCR_REG(0xe180)
 #define   GEN8_ST_PO_DISABLE			(1 << 13)
 
 #define HSW_HALF_SLICE_CHICKEN3			_MMIO(0xe184)
-#define GEN8_HALF_SLICE_CHICKEN3		_MMIO(0xe184)
+#define GEN8_HALF_SLICE_CHICKEN3		MCR_REG(0xe184)
 #define   HSW_SAMPLE_C_PERFORMANCE		(1 << 9)
 #define   GEN8_CENTROID_PIXEL_OPT_DIS		(1 << 8)
 #define   GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC	(1 << 5)
 #define   GEN8_SAMPLER_POWER_BYPASS_DIS		(1 << 1)
 
-#define GEN9_HALF_SLICE_CHICKEN5		_MMIO(0xe188)
+#define GEN9_HALF_SLICE_CHICKEN5		MCR_REG(0xe188)
 #define   GEN9_DG_MIRROR_FIX_ENABLE		(1 << 5)
 #define   GEN9_CCS_TLB_PREFETCH_ENABLE		(1 << 3)
 
-#define GEN10_SAMPLER_MODE			_MMIO(0xe18c)
+#define GEN10_SAMPLER_MODE			MCR_REG(0xe18c)
 #define   ENABLE_SMALLPL			REG_BIT(15)
 #define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
 #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
 
-#define GEN9_HALF_SLICE_CHICKEN7		_MMIO(0xe194)
+#define GEN9_HALF_SLICE_CHICKEN7		MCR_REG(0xe194)
 #define   DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA	REG_BIT(15)
 #define   GEN9_SAMPLER_HASH_COMPRESSED_READ_ADDR	REG_BIT(8)
 #define   GEN9_ENABLE_YV12_BUGFIX		REG_BIT(4)
 #define   GEN9_ENABLE_GPGPU_PREEMPTION		REG_BIT(2)
 
-#define GEN10_CACHE_MODE_SS			_MMIO(0xe420)
+#define GEN10_CACHE_MODE_SS			MCR_REG(0xe420)
 #define   ENABLE_EU_COUNT_FOR_TDL_FLUSH		REG_BIT(10)
 #define   DISABLE_ECC				REG_BIT(5)
 #define   FLOAT_BLEND_OPTIMIZATION_ENABLE	REG_BIT(4)
 #define   ENABLE_PREFETCH_INTO_IC		REG_BIT(3)
 
-#define EU_PERF_CNTL0				_MMIO(0xe458)
-#define EU_PERF_CNTL4				_MMIO(0xe45c)
+#define EU_PERF_CNTL0				MCR_REG(0xe458)
+#define EU_PERF_CNTL4				MCR_REG(0xe45c)
 
-#define GEN9_ROW_CHICKEN4			_MMIO(0xe48c)
+#define GEN9_ROW_CHICKEN4			MCR_REG(0xe48c)
 #define   GEN12_DISABLE_GRF_CLEAR		REG_BIT(13)
 #define   XEHP_DIS_BBL_SYSPIPE			REG_BIT(11)
 #define   GEN12_DISABLE_TDL_PUSH		REG_BIT(9)
@@ -1120,7 +1122,7 @@
 #define HSW_ROW_CHICKEN3			_MMIO(0xe49c)
 #define   HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE	(1 << 6)
 
-#define GEN8_ROW_CHICKEN			_MMIO(0xe4f0)
+#define GEN8_ROW_CHICKEN			MCR_REG(0xe4f0)
 #define   FLOW_CONTROL_ENABLE			REG_BIT(15)
 #define   UGM_BACKUP_MODE			REG_BIT(13)
 #define   MDQ_ARBITRATION_MODE			REG_BIT(12)
@@ -1132,39 +1134,39 @@
 
 #define GEN7_ROW_CHICKEN2			_MMIO(0xe4f4)
 
-#define GEN8_ROW_CHICKEN2			_MMIO(0xe4f4)
+#define GEN8_ROW_CHICKEN2			MCR_REG(0xe4f4)
 #define   GEN12_DISABLE_READ_SUPPRESSION	REG_BIT(15)
 #define   GEN12_DISABLE_EARLY_READ		REG_BIT(14)
 #define   GEN12_ENABLE_LARGE_GRF_MODE		REG_BIT(12)
 #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
 
-#define RT_CTRL					_MMIO(0xe530)
+#define RT_CTRL					MCR_REG(0xe530)
 #define   DIS_NULL_QUERY			REG_BIT(10)
 #define   STACKID_CTRL				REG_GENMASK(6, 5)
 #define   STACKID_CTRL_512			REG_FIELD_PREP(STACKID_CTRL, 0x2)
 
-#define EU_PERF_CNTL1				_MMIO(0xe558)
-#define EU_PERF_CNTL5				_MMIO(0xe55c)
+#define EU_PERF_CNTL1				MCR_REG(0xe558)
+#define EU_PERF_CNTL5				MCR_REG(0xe55c)
 
-#define XEHP_HDC_CHICKEN0			_MMIO(0xe5f0)
+#define XEHP_HDC_CHICKEN0			MCR_REG(0xe5f0)
 #define   LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK	REG_GENMASK(13, 11)
-#define ICL_HDC_MODE				_MMIO(0xe5f4)
+#define ICL_HDC_MODE				MCR_REG(0xe5f4)
 
-#define EU_PERF_CNTL2				_MMIO(0xe658)
-#define EU_PERF_CNTL6				_MMIO(0xe65c)
-#define EU_PERF_CNTL3				_MMIO(0xe758)
+#define EU_PERF_CNTL2				MCR_REG(0xe658)
+#define EU_PERF_CNTL6				MCR_REG(0xe65c)
+#define EU_PERF_CNTL3				MCR_REG(0xe758)
 
-#define LSC_CHICKEN_BIT_0			_MMIO(0xe7c8)
+#define LSC_CHICKEN_BIT_0			MCR_REG(0xe7c8)
 #define   DISABLE_D8_D16_COASLESCE		REG_BIT(30)
 #define   FORCE_1_SUB_MESSAGE_PER_FRAGMENT	REG_BIT(15)
-#define LSC_CHICKEN_BIT_0_UDW			_MMIO(0xe7c8 + 4)
+#define LSC_CHICKEN_BIT_0_UDW			MCR_REG(0xe7c8 + 4)
 #define   DIS_CHAIN_2XSIMD8			REG_BIT(55 - 32)
 #define   FORCE_SLM_FENCE_SCOPE_TO_TILE		REG_BIT(42 - 32)
 #define   FORCE_UGM_FENCE_SCOPE_TO_TILE		REG_BIT(41 - 32)
 #define   MAXREQS_PER_BANK			REG_GENMASK(39 - 32, 37 - 32)
 #define   DISABLE_128B_EVICTION_COMMAND_UDW	REG_BIT(36 - 32)
 
-#define SARB_CHICKEN1				_MMIO(0xe90c)
+#define SARB_CHICKEN1				MCR_REG(0xe90c)
 #define   COMP_CKN_IN				REG_GENMASK(30, 29)
 
 #define GEN7_ROW_CHICKEN2_GT2			_MMIO(0xf4f4)
-- 
2.37.3

