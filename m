Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E40FBCAFB9
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 23:52:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4708810E245;
	Thu,  9 Oct 2025 21:52:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F/k7yZDa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D72E610E245
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 21:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760046736; x=1791582736;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gVUTxZfHsqcfWFnDgGGWMiUpd2InAp2ch/X39dExpTM=;
 b=F/k7yZDaLIy2l8KJ9im5FbaywsHaJDGg8fvkJy+DOL74SiDxKUOo5+v5
 t6mQWyWz0E6qIXn74rVBbh0V9NE9T84go3iy6vXx1fxxda5lfL7yESHn1
 1z4EYwLFMZ1DpeoD//pikj/3O13GLJnWRZryNzMb88SKleb0ySgw3eFxt
 31B66iYS5H75h0NyRGOrLxPU63AwRmborJmd5tMS3Nv7jl2fQwrfqQgYK
 orQvnJxTj/A6qgDWJyEYSrbeFgY5O6njyWiZyD3acppVIRQtyA/nZ6fRC
 hcQ4D6dY9ReoKBKT8Jl1h+1cGdZgEhTRCfstv9hwTh+Uydq16a+kchbXQ w==;
X-CSE-ConnectionGUID: eThFZXrzRRWQh1bKjA4ZAA==
X-CSE-MsgGUID: nB8cJRnvRVOq/QQzeKLsEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="62294834"
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="62294834"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:52:15 -0700
X-CSE-ConnectionGUID: LiOOv21dSMOOjXvtORVEJQ==
X-CSE-MsgGUID: l/CxlaZ/SeiJjVgpV+BB1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="180835815"
Received: from unknown (HELO msatwood-mobl.jf.intel.com) ([10.241.243.179])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:52:15 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	matthew.d.roper@intel.com
Cc: rodrigo.vivi@intel.com, jani.nikula@intel.com, andi.shyti@kernel.org,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v3] drm/i915:move and rename reg_in_range_table
Date: Thu,  9 Oct 2025 14:52:08 -0700
Message-ID: <20251009215210.41000-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Type: text/plain; charset=y
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

reg_in_range_table is a useful function that is used in multiple places,
and will be needed for WA_BB implementation later.

Let's move this function and i915_range struct to its own file, as we are
trying to move away from i915_utils files.

v2: move functions to their own file
v3: use correct naming convention

Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  9 +--
 drivers/gpu/drm/i915/i915_mmio_range.c        | 18 +++++
 drivers/gpu/drm/i915/i915_mmio_range.h        | 19 ++++++
 drivers/gpu/drm/i915/i915_perf.c              | 67 ++++++++-----------
 drivers/gpu/drm/i915/intel_uncore.c           | 15 +++--
 drivers/gpu/drm/i915/intel_uncore.h           |  8 +--
 drivers/gpu/drm/i915/selftests/intel_uncore.c |  4 +-
 8 files changed, 82 insertions(+), 59 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.c
 create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 78a45a6681df..e5819c4320bf 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -26,6 +26,7 @@ i915-y += \
 	i915_ioctl.o \
 	i915_irq.o \
 	i915_mitigations.o \
+	i915_mmio_range.o \
 	i915_module.o \
 	i915_params.o \
 	i915_pci.o \
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 7d486dfa2fc1..ece88c612e27 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_mmio_range.h"
 #include "intel_context.h"
 #include "intel_engine_pm.h"
 #include "intel_engine_regs.h"
@@ -2923,7 +2924,7 @@ void intel_engine_apply_workarounds(struct intel_engine_cs *engine)
 	wa_list_apply(&engine->wa_list);
 }
 
-static const struct i915_range mcr_ranges_gen8[] = {
+static const struct i915_mmio_range mcr_ranges_gen8[] = {
 	{ .start = 0x5500, .end = 0x55ff },
 	{ .start = 0x7000, .end = 0x7fff },
 	{ .start = 0x9400, .end = 0x97ff },
@@ -2932,7 +2933,7 @@ static const struct i915_range mcr_ranges_gen8[] = {
 	{},
 };
 
-static const struct i915_range mcr_ranges_gen12[] = {
+static const struct i915_mmio_range mcr_ranges_gen12[] = {
 	{ .start =  0x8150, .end =  0x815f },
 	{ .start =  0x9520, .end =  0x955f },
 	{ .start =  0xb100, .end =  0xb3ff },
@@ -2941,7 +2942,7 @@ static const struct i915_range mcr_ranges_gen12[] = {
 	{},
 };
 
-static const struct i915_range mcr_ranges_xehp[] = {
+static const struct i915_mmio_range mcr_ranges_xehp[] = {
 	{ .start =  0x4000, .end =  0x4aff },
 	{ .start =  0x5200, .end =  0x52ff },
 	{ .start =  0x5400, .end =  0x7fff },
@@ -2960,7 +2961,7 @@ static const struct i915_range mcr_ranges_xehp[] = {
 
 static bool mcr_range(struct drm_i915_private *i915, u32 offset)
 {
-	const struct i915_range *mcr_ranges;
+	const struct i915_mmio_range *mcr_ranges;
 	int i;
 
 	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
diff --git a/drivers/gpu/drm/i915/i915_mmio_range.c b/drivers/gpu/drm/i915/i915_mmio_range.c
new file mode 100644
index 000000000000..724041e81aa7
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_mmio_range.c
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#include "i915_mmio_range.h"
+
+bool i915_mmio_range_table_contains(u32 addr, const struct i915_mmio_range *table)
+{
+	while (table->start || table->end) {
+		if (addr >= table->start && addr <= table->end)
+			return true;
+
+		table++;
+	}
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/i915_mmio_range.h b/drivers/gpu/drm/i915/i915_mmio_range.h
new file mode 100644
index 000000000000..f1c7086d3e3c
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_mmio_range.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#ifndef __I915_MMIO_RANGE_H__
+#define __I915_MMIO_RANGE_H__
+
+#include <linux/types.h>
+
+/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
+struct i915_mmio_range {
+	u32 start;
+	u32 end;
+};
+
+bool i915_mmio_range_table_contains(u32 addr, const struct i915_mmio_range *table);
+
+#endif /* __I915_MMIO_RANGE_H__ */
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 1658f1246c6f..0b9d9f3f7813 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -219,6 +219,7 @@
 #include "i915_perf.h"
 #include "i915_perf_oa_regs.h"
 #include "i915_reg.h"
+#include "i915_mmio_range.h"
 
 /* HW requires this to be a power of two, between 128k and 16M, though driver
  * is currently generally designed assuming the largest 16M size is used such
@@ -4320,29 +4321,17 @@ static bool gen8_is_valid_flex_addr(struct i915_perf *perf, u32 addr)
 	return false;
 }
 
-static bool reg_in_range_table(u32 addr, const struct i915_range *table)
-{
-	while (table->start || table->end) {
-		if (addr >= table->start && addr <= table->end)
-			return true;
-
-		table++;
-	}
-
-	return false;
-}
-
 #define REG_EQUAL(addr, mmio) \
 	((addr) == i915_mmio_reg_offset(mmio))
 
-static const struct i915_range gen7_oa_b_counters[] = {
+static const struct i915_mmio_range gen7_oa_b_counters[] = {
 	{ .start = 0x2710, .end = 0x272c },	/* OASTARTTRIG[1-8] */
 	{ .start = 0x2740, .end = 0x275c },	/* OAREPORTTRIG[1-8] */
 	{ .start = 0x2770, .end = 0x27ac },	/* OACEC[0-7][0-1] */
 	{}
 };
 
-static const struct i915_range gen12_oa_b_counters[] = {
+static const struct i915_mmio_range gen12_oa_b_counters[] = {
 	{ .start = 0x2b2c, .end = 0x2b2c },	/* GEN12_OAG_OA_PESS */
 	{ .start = 0xd900, .end = 0xd91c },	/* GEN12_OAG_OASTARTTRIG[1-8] */
 	{ .start = 0xd920, .end = 0xd93c },	/* GEN12_OAG_OAREPORTTRIG1[1-8] */
@@ -4353,7 +4342,7 @@ static const struct i915_range gen12_oa_b_counters[] = {
 	{}
 };
 
-static const struct i915_range mtl_oam_b_counters[] = {
+static const struct i915_mmio_range mtl_oam_b_counters[] = {
 	{ .start = 0x393000, .end = 0x39301c },	/* GEN12_OAM_STARTTRIG1[1-8] */
 	{ .start = 0x393020, .end = 0x39303c },	/* GEN12_OAM_REPORTTRIG1[1-8] */
 	{ .start = 0x393040, .end = 0x39307c },	/* GEN12_OAM_CEC[0-7][0-1] */
@@ -4361,43 +4350,43 @@ static const struct i915_range mtl_oam_b_counters[] = {
 	{}
 };
 
-static const struct i915_range xehp_oa_b_counters[] = {
+static const struct i915_mmio_range xehp_oa_b_counters[] = {
 	{ .start = 0xdc48, .end = 0xdc48 },	/* OAA_ENABLE_REG */
 	{ .start = 0xdd00, .end = 0xdd48 },	/* OAG_LCE0_0 - OAA_LENABLE_REG */
 	{}
 };
 
-static const struct i915_range gen7_oa_mux_regs[] = {
+static const struct i915_mmio_range gen7_oa_mux_regs[] = {
 	{ .start = 0x91b8, .end = 0x91cc },	/* OA_PERFCNT[1-2], OA_PERFMATRIX */
 	{ .start = 0x9800, .end = 0x9888 },	/* MICRO_BP0_0 - NOA_WRITE */
 	{ .start = 0xe180, .end = 0xe180 },	/* HALF_SLICE_CHICKEN2 */
 	{}
 };
 
-static const struct i915_range hsw_oa_mux_regs[] = {
+static const struct i915_mmio_range hsw_oa_mux_regs[] = {
 	{ .start = 0x09e80, .end = 0x09ea4 }, /* HSW_MBVID2_NOA[0-9] */
 	{ .start = 0x09ec0, .end = 0x09ec0 }, /* HSW_MBVID2_MISR0 */
 	{ .start = 0x25100, .end = 0x2ff90 },
 	{}
 };
 
-static const struct i915_range chv_oa_mux_regs[] = {
+static const struct i915_mmio_range chv_oa_mux_regs[] = {
 	{ .start = 0x182300, .end = 0x1823a4 },
 	{}
 };
 
-static const struct i915_range gen8_oa_mux_regs[] = {
+static const struct i915_mmio_range gen8_oa_mux_regs[] = {
 	{ .start = 0x0d00, .end = 0x0d2c },	/* RPM_CONFIG[0-1], NOA_CONFIG[0-8] */
 	{ .start = 0x20cc, .end = 0x20cc },	/* WAIT_FOR_RC6_EXIT */
 	{}
 };
 
-static const struct i915_range gen11_oa_mux_regs[] = {
+static const struct i915_mmio_range gen11_oa_mux_regs[] = {
 	{ .start = 0x91c8, .end = 0x91dc },	/* OA_PERFCNT[3-4] */
 	{}
 };
 
-static const struct i915_range gen12_oa_mux_regs[] = {
+static const struct i915_mmio_range gen12_oa_mux_regs[] = {
 	{ .start = 0x0d00, .end = 0x0d04 },     /* RPM_CONFIG[0-1] */
 	{ .start = 0x0d0c, .end = 0x0d2c },     /* NOA_CONFIG[0-8] */
 	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
@@ -4410,7 +4399,7 @@ static const struct i915_range gen12_oa_mux_regs[] = {
  * Ref: 14010536224:
  * 0x20cc is repurposed on MTL, so use a separate array for MTL.
  */
-static const struct i915_range mtl_oa_mux_regs[] = {
+static const struct i915_mmio_range mtl_oa_mux_regs[] = {
 	{ .start = 0x0d00, .end = 0x0d04 },	/* RPM_CONFIG[0-1] */
 	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */
 	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
@@ -4421,61 +4410,61 @@ static const struct i915_range mtl_oa_mux_regs[] = {
 
 static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen7_oa_b_counters);
+	return i915_mmio_range_table_contains(addr, gen7_oa_b_counters);
 }
 
 static bool gen8_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
-		reg_in_range_table(addr, gen8_oa_mux_regs);
+	return i915_mmio_range_table_contains(addr, gen7_oa_mux_regs) ||
+		i915_mmio_range_table_contains(addr, gen8_oa_mux_regs);
 }
 
 static bool gen11_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
-		reg_in_range_table(addr, gen8_oa_mux_regs) ||
-		reg_in_range_table(addr, gen11_oa_mux_regs);
+	return i915_mmio_range_table_contains(addr, gen7_oa_mux_regs) ||
+		i915_mmio_range_table_contains(addr, gen8_oa_mux_regs) ||
+		i915_mmio_range_table_contains(addr, gen11_oa_mux_regs);
 }
 
 static bool hsw_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
-		reg_in_range_table(addr, hsw_oa_mux_regs);
+	return i915_mmio_range_table_contains(addr, gen7_oa_mux_regs) ||
+		i915_mmio_range_table_contains(addr, hsw_oa_mux_regs);
 }
 
 static bool chv_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
-		reg_in_range_table(addr, chv_oa_mux_regs);
+	return i915_mmio_range_table_contains(addr, gen7_oa_mux_regs) ||
+		i915_mmio_range_table_contains(addr, chv_oa_mux_regs);
 }
 
 static bool gen12_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen12_oa_b_counters);
+	return i915_mmio_range_table_contains(addr, gen12_oa_b_counters);
 }
 
 static bool mtl_is_valid_oam_b_counter_addr(struct i915_perf *perf, u32 addr)
 {
 	if (HAS_OAM(perf->i915) &&
 	    GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
-		return reg_in_range_table(addr, mtl_oam_b_counters);
+		return i915_mmio_range_table_contains(addr, mtl_oam_b_counters);
 
 	return false;
 }
 
 static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, xehp_oa_b_counters) ||
-		reg_in_range_table(addr, gen12_oa_b_counters) ||
+	return i915_mmio_range_table_contains(addr, xehp_oa_b_counters) ||
+		i915_mmio_range_table_contains(addr, gen12_oa_b_counters) ||
 		mtl_is_valid_oam_b_counter_addr(perf, addr);
 }
 
 static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
 	if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
-		return reg_in_range_table(addr, mtl_oa_mux_regs);
+		return i915_mmio_range_table_contains(addr, mtl_oa_mux_regs);
 	else
-		return reg_in_range_table(addr, gen12_oa_mux_regs);
+		return i915_mmio_range_table_contains(addr, gen12_oa_mux_regs);
 }
 
 static u32 mask_reg_value(u32 reg, u32 val)
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 8cb59f8d1f4c..aba90b80854f 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -35,6 +35,7 @@
 #include "i915_reg.h"
 #include "i915_vgpu.h"
 #include "i915_wait_util.h"
+#include "i915_mmio_range.h"
 #include "intel_uncore_trace.h"
 
 #define FORCEWAKE_ACK_TIMEOUT_MS 50
@@ -999,7 +1000,7 @@ find_fw_domain(struct intel_uncore *uncore, u32 offset)
  * scanned for obvious mistakes or typos by the selftests.
  */
 
-static const struct i915_range gen8_shadowed_regs[] = {
+static const struct i915_mmio_range gen8_shadowed_regs[] = {
 	{ .start =  0x2030, .end =  0x2030 },
 	{ .start =  0xA008, .end =  0xA00C },
 	{ .start = 0x12030, .end = 0x12030 },
@@ -1007,7 +1008,7 @@ static const struct i915_range gen8_shadowed_regs[] = {
 	{ .start = 0x22030, .end = 0x22030 },
 };
 
-static const struct i915_range gen11_shadowed_regs[] = {
+static const struct i915_mmio_range gen11_shadowed_regs[] = {
 	{ .start =   0x2030, .end =   0x2030 },
 	{ .start =   0x2550, .end =   0x2550 },
 	{ .start =   0xA008, .end =   0xA00C },
@@ -1034,7 +1035,7 @@ static const struct i915_range gen11_shadowed_regs[] = {
 	{ .start = 0x1D8510, .end = 0x1D8550 },
 };
 
-static const struct i915_range gen12_shadowed_regs[] = {
+static const struct i915_mmio_range gen12_shadowed_regs[] = {
 	{ .start =   0x2030, .end =   0x2030 },
 	{ .start =   0x2510, .end =   0x2550 },
 	{ .start =   0xA008, .end =   0xA00C },
@@ -1078,7 +1079,7 @@ static const struct i915_range gen12_shadowed_regs[] = {
 	{ .start = 0x1F8510, .end = 0x1F8550 },
 };
 
-static const struct i915_range dg2_shadowed_regs[] = {
+static const struct i915_mmio_range dg2_shadowed_regs[] = {
 	{ .start =   0x2030, .end =   0x2030 },
 	{ .start =   0x2510, .end =   0x2550 },
 	{ .start =   0xA008, .end =   0xA00C },
@@ -1117,7 +1118,7 @@ static const struct i915_range dg2_shadowed_regs[] = {
 	{ .start = 0x1F8510, .end = 0x1F8550 },
 };
 
-static const struct i915_range mtl_shadowed_regs[] = {
+static const struct i915_mmio_range mtl_shadowed_regs[] = {
 	{ .start =   0x2030, .end =   0x2030 },
 	{ .start =   0x2510, .end =   0x2550 },
 	{ .start =   0xA008, .end =   0xA00C },
@@ -1135,7 +1136,7 @@ static const struct i915_range mtl_shadowed_regs[] = {
 	{ .start =  0x22510, .end =  0x22550 },
 };
 
-static const struct i915_range xelpmp_shadowed_regs[] = {
+static const struct i915_mmio_range xelpmp_shadowed_regs[] = {
 	{ .start = 0x1C0030, .end = 0x1C0030 },
 	{ .start = 0x1C0510, .end = 0x1C0550 },
 	{ .start = 0x1C8030, .end = 0x1C8030 },
@@ -1156,7 +1157,7 @@ static const struct i915_range xelpmp_shadowed_regs[] = {
 	{ .start = 0x38CFD4, .end = 0x38CFDC },
 };
 
-static int mmio_range_cmp(u32 key, const struct i915_range *range)
+static int mmio_range_cmp(u32 key, const struct i915_mmio_range *range)
 {
 	if (key < range->start)
 		return -1;
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 6048b99b96cb..fafc2ca9a237 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -123,12 +123,6 @@ struct intel_forcewake_range {
 	enum forcewake_domains domains;
 };
 
-/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
-struct i915_range {
-	u32 start;
-	u32 end;
-};
-
 struct intel_uncore {
 	void __iomem *regs;
 
@@ -162,7 +156,7 @@ struct intel_uncore {
 	 * Shadowed registers are special cases where we can safely write
 	 * to the register *without* grabbing forcewake.
 	 */
-	const struct i915_range *shadowed_reg_table;
+	const struct i915_mmio_range *shadowed_reg_table;
 	unsigned int shadowed_reg_table_entries;
 
 	struct notifier_block pmic_bus_access_nb;
diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index 58bcbdcef563..507bf42a1aaf 100644
--- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
@@ -64,7 +64,7 @@ static int intel_fw_table_check(const struct intel_forcewake_range *ranges,
 static int intel_shadow_table_check(void)
 {
 	struct {
-		const struct i915_range *regs;
+		const struct i915_mmio_range *regs;
 		unsigned int size;
 	} range_lists[] = {
 		{ gen8_shadowed_regs, ARRAY_SIZE(gen8_shadowed_regs) },
@@ -74,7 +74,7 @@ static int intel_shadow_table_check(void)
 		{ mtl_shadowed_regs, ARRAY_SIZE(mtl_shadowed_regs) },
 		{ xelpmp_shadowed_regs, ARRAY_SIZE(xelpmp_shadowed_regs) },
 	};
-	const struct i915_range *range;
+	const struct i915_mmio_range *range;
 	unsigned int i, j;
 	s32 prev;
 
-- 
2.51.0

