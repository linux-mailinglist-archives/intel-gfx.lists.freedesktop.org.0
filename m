Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4AD5FF685
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Oct 2022 01:04:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0AF10E15F;
	Fri, 14 Oct 2022 23:03:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C94B10E125;
 Fri, 14 Oct 2022 23:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665788583; x=1697324583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bf2hstcvpVQ5ZJhAJxxrnuNtDeobrywAMfOf4bLcsCA=;
 b=h4yT+SE3GpmyE/SqNUuKM+1igc3IJOFHDLkK1GpAoEjtdyTtpFMaWojA
 xkH5w6oqlJXG7z7g+TgCrd7K2Zr5J8ZjCRrxWFQYwmRS1sqf/CNJUFQ11
 Q2NVLnIxHC42e3A379eLNXYJLWdSC4tyaM2/Ccmap9BukjETNI7vStwgh
 Z/IZZPh7gsO1ryOEHycKRzeKb8KD4fVXenlomXF9YEejgexJieTku+Vtu
 fYu5L1wPJxqoKBzFbP6RZyfCmM8YknZu/Ld0fxz8kHP8CVlJFOMBQDzuG
 OCwzqT8le4a0mpJ4klsLjHk+5wlOAJ+N078ygYMvDMvELUKK5rpa2tPgl A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="285216965"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="285216965"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 16:03:02 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="696471694"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="696471694"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 16:03:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 16:02:27 -0700
Message-Id: <20221014230239.1023689-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221014230239.1023689-1-matthew.d.roper@intel.com>
References: <20221014230239.1023689-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/14] drm/i915/xehp: Create separate reg
 definitions for new MCR registers
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

Starting in Xe_HP, several registers our driver works with have been
converted from singleton registers into replicated registers with
multicast behavior.  Although the registers are still located at the
same MMIO offsets as on previous platforms, let's duplicate the register
definitions in preparation for upcoming patches that will handle
multicast registers in a special manner.

The registers that are now replicated on Xe_HP are:
 * PAT_INDEX (mslice replication)
 * FF_MODE2 (gslice replication)
 * COMMON_SLICE_CHICKEN3 (gslice replication)
 * SLICE_COMMON_ECO_CHICKEN1 (gslice replication)
 * SLICE_UNIT_LEVEL_CLKGATE (gslice replication)
 * LNCFCMOCS (lncf replication)

Note that there are a couple places in selftest_mocs.c where the
gen9 version of LNCFCMOCS is still used without regards for which
platform we're on.  Those cases are just doing an offset lookup and not
issuing any CPU reads/writes of the register, so the potentially
multicast nature of the register doesn't come into play.

v2:
 - Add commit message note about the unconditional GEN9_LNCFCMOCS usage
   in selftest_mocs.  (Bala)
 - Include some additional TLB registers.

Bspec: 66534
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c        |  4 ++--
 drivers/gpu/drm/i915/gt/intel_gt.c          | 18 ++++++++++++--
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 26 +++++++++++++++------
 drivers/gpu/drm/i915/gt/intel_gtt.c         | 22 ++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_gtt.h         |  2 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c        |  5 +++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 24 +++++++++----------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  |  7 ++++--
 8 files changed, 78 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 5c67e49aacf6..6b58c95ad6a0 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -986,7 +986,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 
 	ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
 
-	setup_private_pat(ggtt->vm.gt->uncore);
+	setup_private_pat(ggtt->vm.gt);
 
 	return ggtt_probe_common(ggtt, size);
 }
@@ -1308,7 +1308,7 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
 		wbinvd_on_all_cpus();
 
 	if (GRAPHICS_VER(ggtt->vm.i915) >= 8)
-		setup_private_pat(ggtt->vm.gt->uncore);
+		setup_private_pat(ggtt->vm.gt);
 
 	intel_ggtt_restore_fences(ggtt);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index b367cfff48d5..445e171940fa 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -314,7 +314,11 @@ static void gen8_check_faults(struct intel_gt *gt)
 	i915_reg_t fault_reg, fault_data0_reg, fault_data1_reg;
 	u32 fault;
 
-	if (GRAPHICS_VER(gt->i915) >= 12) {
+	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50)) {
+		fault_reg = XEHP_RING_FAULT_REG;
+		fault_data0_reg = XEHP_FAULT_TLB_DATA0;
+		fault_data1_reg = XEHP_FAULT_TLB_DATA1;
+	} else if (GRAPHICS_VER(gt->i915) >= 12) {
 		fault_reg = GEN12_RING_FAULT_REG;
 		fault_data0_reg = GEN12_FAULT_TLB_DATA0;
 		fault_data1_reg = GEN12_FAULT_TLB_DATA1;
@@ -990,6 +994,13 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 		[COPY_ENGINE_CLASS]		= GEN12_BLT_TLB_INV_CR,
 		[COMPUTE_CLASS]			= GEN12_COMPCTX_TLB_INV_CR,
 	};
+	static const i915_reg_t xehp_regs[] = {
+		[RENDER_CLASS]			= XEHP_GFX_TLB_INV_CR,
+		[VIDEO_DECODE_CLASS]		= XEHP_VD_TLB_INV_CR,
+		[VIDEO_ENHANCEMENT_CLASS]	= XEHP_VE_TLB_INV_CR,
+		[COPY_ENGINE_CLASS]		= XEHP_BLT_TLB_INV_CR,
+		[COMPUTE_CLASS]			= XEHP_COMPCTX_TLB_INV_CR,
+	};
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_uncore *uncore = gt->uncore;
 	struct intel_engine_cs *engine;
@@ -998,7 +1009,10 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 	const i915_reg_t *regs;
 	unsigned int num = 0;
 
-	if (GRAPHICS_VER(i915) == 12) {
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+		regs = xehp_regs;
+		num = ARRAY_SIZE(xehp_regs);
+	} else if (GRAPHICS_VER(i915) == 12) {
 		regs = gen12_regs;
 		num = ARRAY_SIZE(gen12_regs);
 	} else if (GRAPHICS_VER(i915) >= 8 && GRAPHICS_VER(i915) <= 11) {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index ba4ce668042c..0aa16caa33e4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -333,6 +333,7 @@
 #define GEN7_TLB_RD_ADDR			_MMIO(0x4700)
 
 #define GEN12_PAT_INDEX(index)			_MMIO(0x4800 + (index) * 4)
+#define XEHP_PAT_INDEX(index)			_MMIO(0x4800 + (index) * 4)
 
 #define XEHP_TILE0_ADDR_RANGE			_MMIO(0x4900)
 #define   XEHP_TILE_LMEM_RANGE_SHIFT		8
@@ -391,7 +392,8 @@
 #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
 #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
 
-#define FF_MODE2				_MMIO(0x6604)
+#define GEN12_FF_MODE2				_MMIO(0x6604)
+#define XEHP_FF_MODE2				_MMIO(0x6604)
 #define   FF_MODE2_GS_TIMER_MASK		REG_GENMASK(31, 24)
 #define   FF_MODE2_GS_TIMER_224			REG_FIELD_PREP(FF_MODE2_GS_TIMER_MASK, 224)
 #define   FF_MODE2_TDS_TIMER_MASK		REG_GENMASK(23, 16)
@@ -446,6 +448,7 @@
 #define GEN8_HDC_CHICKEN1			_MMIO(0x7304)
 
 #define GEN11_COMMON_SLICE_CHICKEN3		_MMIO(0x7304)
+#define XEHP_COMMON_SLICE_CHICKEN3		_MMIO(0x7304)
 #define   DG1_FLOAT_POINT_BLEND_OPT_STRICT_MODE_EN	REG_BIT(12)
 #define   XEHP_DUAL_SIMD8_SEQ_MERGE_DISABLE	REG_BIT(12)
 #define   GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC	REG_BIT(11)
@@ -459,10 +462,9 @@
 #define   DISABLE_PIXEL_MASK_CAMMING		(1 << 14)
 
 #define GEN9_SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731c)
-#define   GEN11_STATE_CACHE_REDIRECT_TO_CS	(1 << 11)
-
-#define SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731c)
+#define XEHP_SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731c)
 #define   MSC_MSAA_REODER_BUF_BYPASS_DISABLE	REG_BIT(14)
+#define   GEN11_STATE_CACHE_REDIRECT_TO_CS	(1 << 11)
 
 #define GEN9_SLICE_PGCTL_ACK(slice)		_MMIO(0x804c + (slice) * 0x4)
 #define GEN10_SLICE_PGCTL_ACK(slice)		_MMIO(0x804c + ((slice) / 3) * 0x34 + \
@@ -707,7 +709,8 @@
 #define   GAMTLBVEBOX0_CLKGATE_DIS		REG_BIT(16)
 #define   LTCDD_CLKGATE_DIS			REG_BIT(10)
 
-#define SLICE_UNIT_LEVEL_CLKGATE		_MMIO(0x94d4)
+#define GEN11_SLICE_UNIT_LEVEL_CLKGATE		_MMIO(0x94d4)
+#define XEHP_SLICE_UNIT_LEVEL_CLKGATE		_MMIO(0x94d4)
 #define   SARBUNIT_CLKGATE_DIS			(1 << 5)
 #define   RCCUNIT_CLKGATE_DIS			(1 << 7)
 #define   MSCUNIT_CLKGATE_DIS			(1 << 10)
@@ -722,7 +725,7 @@
 #define   VSUNIT_CLKGATE_DIS_TGL		REG_BIT(19)
 #define   PSDUNIT_CLKGATE_DIS			REG_BIT(5)
 
-#define SUBSLICE_UNIT_LEVEL_CLKGATE		_MMIO(0x9524)
+#define GEN11_SUBSLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x9524)
 #define   DSS_ROUTER_CLKGATE_DIS		REG_BIT(28)
 #define   GWUNIT_CLKGATE_DIS			REG_BIT(16)
 
@@ -947,7 +950,8 @@
 
 /* MOCS (Memory Object Control State) registers */
 #define GEN9_LNCFCMOCS(i)			_MMIO(0xb020 + (i) * 4)	/* L3 Cache Control */
-#define GEN9_LNCFCMOCS_REG_COUNT		32
+#define XEHP_LNCFCMOCS(i)			_MMIO(0xb020 + (i) * 4)
+#define LNCFCMOCS_REG_COUNT			32
 
 #define GEN7_L3CNTLREG3				_MMIO(0xb024)
 
@@ -1039,11 +1043,14 @@
 #define GEN9_BLT_MOCS(i)			_MMIO(__GEN9_BCS0_MOCS0 + (i) * 4)
 
 #define GEN12_FAULT_TLB_DATA0			_MMIO(0xceb8)
+#define XEHP_FAULT_TLB_DATA0			_MMIO(0xceb8)
 #define GEN12_FAULT_TLB_DATA1			_MMIO(0xcebc)
+#define XEHP_FAULT_TLB_DATA1			_MMIO(0xcebc)
 #define   FAULT_VA_HIGH_BITS			(0xf << 0)
 #define   FAULT_GTT_SEL				(1 << 4)
 
 #define GEN12_RING_FAULT_REG			_MMIO(0xcec4)
+#define XEHP_RING_FAULT_REG			_MMIO(0xcec4)
 #define   GEN8_RING_FAULT_ENGINE_ID(x)		(((x) >> 12) & 0x7)
 #define   RING_FAULT_GTTSEL_MASK		(1 << 11)
 #define   RING_FAULT_SRCID(x)			(((x) >> 3) & 0xff)
@@ -1051,10 +1058,15 @@
 #define   RING_FAULT_VALID			(1 << 0)
 
 #define GEN12_GFX_TLB_INV_CR			_MMIO(0xced8)
+#define XEHP_GFX_TLB_INV_CR			_MMIO(0xced8)
 #define GEN12_VD_TLB_INV_CR			_MMIO(0xcedc)
+#define XEHP_VD_TLB_INV_CR			_MMIO(0xcedc)
 #define GEN12_VE_TLB_INV_CR			_MMIO(0xcee0)
+#define XEHP_VE_TLB_INV_CR			_MMIO(0xcee0)
 #define GEN12_BLT_TLB_INV_CR			_MMIO(0xcee4)
+#define XEHP_BLT_TLB_INV_CR			_MMIO(0xcee4)
 #define GEN12_COMPCTX_TLB_INV_CR		_MMIO(0xcf04)
+#define XEHP_COMPCTX_TLB_INV_CR			_MMIO(0xcf04)
 
 #define GEN12_MERT_MOD_CTRL			_MMIO(0xcf28)
 #define RENDER_MOD_CTRL				_MMIO(0xcf2c)
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 13e411187fd5..e82a9d763e57 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -15,6 +15,7 @@
 #include "i915_trace.h"
 #include "i915_utils.h"
 #include "intel_gt.h"
+#include "intel_gt_mcr.h"
 #include "intel_gt_regs.h"
 #include "intel_gtt.h"
 
@@ -478,6 +479,18 @@ static void tgl_setup_private_ppat(struct intel_uncore *uncore)
 	intel_uncore_write(uncore, GEN12_PAT_INDEX(7), GEN8_PPAT_WB);
 }
 
+static void xehp_setup_private_ppat(struct intel_gt *gt)
+{
+	intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(0), GEN8_PPAT_WB);
+	intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(1), GEN8_PPAT_WC);
+	intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(2), GEN8_PPAT_WT);
+	intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(3), GEN8_PPAT_UC);
+	intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(4), GEN8_PPAT_WB);
+	intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(5), GEN8_PPAT_WB);
+	intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(6), GEN8_PPAT_WB);
+	intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(7), GEN8_PPAT_WB);
+}
+
 static void icl_setup_private_ppat(struct intel_uncore *uncore)
 {
 	intel_uncore_write(uncore,
@@ -570,13 +583,16 @@ static void chv_setup_private_ppat(struct intel_uncore *uncore)
 	intel_uncore_write(uncore, GEN8_PRIVATE_PAT_HI, upper_32_bits(pat));
 }
 
-void setup_private_pat(struct intel_uncore *uncore)
+void setup_private_pat(struct intel_gt *gt)
 {
-	struct drm_i915_private *i915 = uncore->i915;
+	struct intel_uncore *uncore = gt->uncore;
+	struct drm_i915_private *i915 = gt->i915;
 
 	GEM_BUG_ON(GRAPHICS_VER(i915) < 8);
 
-	if (GRAPHICS_VER(i915) >= 12)
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+		xehp_setup_private_ppat(gt);
+	else if (GRAPHICS_VER(i915) >= 12)
 		tgl_setup_private_ppat(uncore);
 	else if (GRAPHICS_VER(i915) >= 11)
 		icl_setup_private_ppat(uncore);
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 062b78333fb2..4d75ba4bb41d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -668,7 +668,7 @@ void ppgtt_unbind_vma(struct i915_address_space *vm,
 
 void gtt_write_workarounds(struct intel_gt *gt);
 
-void setup_private_pat(struct intel_uncore *uncore);
+void setup_private_pat(struct intel_gt *gt);
 
 int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
 			   struct i915_vm_pt_stash *stash,
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 152244d7f62a..ecfa5baa5e3f 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -616,7 +616,10 @@ static void init_l3cc_table(struct intel_uncore *uncore,
 	u32 l3cc;
 
 	for_each_l3cc(l3cc, table, i)
-		intel_uncore_write_fw(uncore, GEN9_LNCFCMOCS(i), l3cc);
+		if (GRAPHICS_VER_FULL(uncore->i915) >= IP_VER(12, 50))
+			intel_uncore_write_fw(uncore, XEHP_LNCFCMOCS(i), l3cc);
+		else
+			intel_uncore_write_fw(uncore, GEN9_LNCFCMOCS(i), l3cc);
 }
 
 void intel_mocs_init_engine(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 47a683dcc8a5..3056b099dd17 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -572,7 +572,7 @@ static void dg2_ctx_gt_tuning_init(struct intel_engine_cs *engine,
 	wa_write_clr_set(wal, GEN11_L3SQCREG5, L3_PWM_TIMER_INIT_VAL_MASK,
 			 REG_FIELD_PREP(L3_PWM_TIMER_INIT_VAL_MASK, 0x7f));
 	wa_add(wal,
-	       FF_MODE2,
+	       XEHP_FF_MODE2,
 	       FF_MODE2_TDS_TIMER_MASK,
 	       FF_MODE2_TDS_TIMER_128,
 	       0, false);
@@ -599,7 +599,7 @@ static void gen12_ctx_gt_tuning_init(struct intel_engine_cs *engine,
 	 * verification is ignored.
 	 */
 	wa_add(wal,
-	       FF_MODE2,
+	       GEN12_FF_MODE2,
 	       FF_MODE2_TDS_TIMER_MASK,
 	       FF_MODE2_TDS_TIMER_128,
 	       0, false);
@@ -637,7 +637,7 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 * to Wa_1608008084.
 	 */
 	wa_add(wal,
-	       FF_MODE2,
+	       GEN12_FF_MODE2,
 	       FF_MODE2_GS_TIMER_MASK,
 	       FF_MODE2_GS_TIMER_224,
 	       0, false);
@@ -670,7 +670,7 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_B0)) {
 		/* Wa_14010469329:dg2_g10 */
-		wa_masked_en(wal, GEN11_COMMON_SLICE_CHICKEN3,
+		wa_masked_en(wal, XEHP_COMMON_SLICE_CHICKEN3,
 			     XEHP_DUAL_SIMD8_SEQ_MERGE_DISABLE);
 
 		/*
@@ -678,12 +678,12 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 		 * Wa_22010613112:dg2_g10
 		 * Wa_14010698770:dg2_g10
 		 */
-		wa_masked_en(wal, GEN11_COMMON_SLICE_CHICKEN3,
+		wa_masked_en(wal, XEHP_COMMON_SLICE_CHICKEN3,
 			     GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
 	}
 
 	/* Wa_16013271637:dg2 */
-	wa_masked_en(wal, SLICE_COMMON_ECO_CHICKEN1,
+	wa_masked_en(wal, XEHP_SLICE_COMMON_ECO_CHICKEN1,
 		     MSC_MSAA_REODER_BUF_BYPASS_DISABLE);
 
 	/* Wa_14014947963:dg2 */
@@ -1265,14 +1265,14 @@ icl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 
 	/* Wa_1406680159:icl,ehl */
 	wa_write_or(wal,
-		    SUBSLICE_UNIT_LEVEL_CLKGATE,
+		    GEN11_SUBSLICE_UNIT_LEVEL_CLKGATE,
 		    GWUNIT_CLKGATE_DIS);
 
 	/* Wa_1607087056:icl,ehl,jsl */
 	if (IS_ICELAKE(i915) ||
 	    IS_JSL_EHL_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 		wa_write_or(wal,
-			    SLICE_UNIT_LEVEL_CLKGATE,
+			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
 
 	/*
@@ -1332,7 +1332,7 @@ tgl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	/* Wa_1607087056:tgl also know as BUG:1409180338 */
 	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 		wa_write_or(wal,
-			    SLICE_UNIT_LEVEL_CLKGATE,
+			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
 
 	/* Wa_1408615072:tgl[a0] */
@@ -1351,7 +1351,7 @@ dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	/* Wa_1607087056:dg1 */
 	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
 		wa_write_or(wal,
-			    SLICE_UNIT_LEVEL_CLKGATE,
+			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
 
 	/* Wa_1409420604:dg1 */
@@ -1455,7 +1455,7 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 			    CG3DDISCFEG_CLKGATE_DIS);
 
 		/* Wa_14011006942:dg2 */
-		wa_write_or(wal, SUBSLICE_UNIT_LEVEL_CLKGATE,
+		wa_write_or(wal, GEN11_SUBSLICE_UNIT_LEVEL_CLKGATE,
 			    DSS_ROUTER_CLKGATE_DIS);
 	}
 
@@ -1467,7 +1467,7 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 		wa_write_or(wal, UNSLCGCTL9444, LTCDD_CLKGATE_DIS);
 
 		/* Wa_14011371254:dg2_g10 */
-		wa_write_or(wal, SLICE_UNIT_LEVEL_CLKGATE, NODEDSS_CLKGATE_DIS);
+		wa_write_or(wal, XEHP_SLICE_UNIT_LEVEL_CLKGATE, NODEDSS_CLKGATE_DIS);
 
 		/* Wa_14011431319:dg2_g10 */
 		wa_write_or(wal, UNSLCGCTL9440, GAMTLBOACS_CLKGATE_DIS |
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 657f0beb8e06..cc357fa0c270 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -373,8 +373,11 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 					false);
 
 	/* add in local MOCS registers */
-	for (i = 0; i < GEN9_LNCFCMOCS_REG_COUNT; i++)
-		ret |= GUC_MMIO_REG_ADD(gt, regset, GEN9_LNCFCMOCS(i), false);
+	for (i = 0; i < LNCFCMOCS_REG_COUNT; i++)
+		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
+			ret |= GUC_MMIO_REG_ADD(gt, regset, XEHP_LNCFCMOCS(i), false);
+		else
+			ret |= GUC_MMIO_REG_ADD(gt, regset, GEN9_LNCFCMOCS(i), false);
 
 	return ret ? -1 : 0;
 }
-- 
2.37.3

