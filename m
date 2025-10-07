Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE1DBC2BD7
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 23:24:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E56F10E714;
	Tue,  7 Oct 2025 21:24:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n8vkSkg1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4FEB10E718
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 21:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759872292; x=1791408292;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CNdrhUpsMMhlnFKa5DkK0SP7AY0oeBNE73h3V7ZKkno=;
 b=n8vkSkg1aqs0Gu5BLjUI0kMtoNc9rm0FzRVZ6aI+hET6hB7G4KlS5qd4
 PaqwkyhECmr/oYeQzD975D54SmJ3DhSRl8cM29S8LH5uafq2f8kLxec3f
 a57K53eUXTJNTSDBbzPHAuh6QK+MCqk9hiPVe3/oS0iJll+3dw+/74k0n
 gRmQ1YOJws9i+5hQQjgp2edUn/69lNwJ3u9KTueRLKUOFqCuMWeQ4qAEo
 pGRWExtW3cwu/V3kYk2gwECnXCdwdOkk3X5x6CKSfd5jCuIf0c7NGNoxN
 zr/0kCy8WcRGe1v5tDEfSjIh5RlM+yf9ofkIbqIqLNsUlhdYB8Usd7hL+ g==;
X-CSE-ConnectionGUID: ubrYsrskSD+cOv0I4Gq/Dg==
X-CSE-MsgGUID: WWHbPZ4yQg+WjU4cuG8nvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="65710315"
X-IronPort-AV: E=Sophos;i="6.18,322,1751266800"; d="scan'208";a="65710315"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 14:24:52 -0700
X-CSE-ConnectionGUID: yDI4BMWvQU6pdB1BF52YQg==
X-CSE-MsgGUID: kjlAtjGFTa2e8WoC/cFNzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,322,1751266800"; d="scan'208";a="185404765"
Received: from unknown (HELO msatwood-mobl.jf.intel.com) ([10.241.243.179])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 14:24:51 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH] drm/i915:move and rename reg_in_range_table
Date: Tue,  7 Oct 2025 14:23:36 -0700
Message-ID: <20251007212447.941389-1-matthew.s.atwood@intel.com>
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

Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/Makefile               |  1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  1 +
 drivers/gpu/drm/i915/i915_mmio_range.c      | 18 +++++++++
 drivers/gpu/drm/i915/i915_mmio_range.h      | 19 +++++++++
 drivers/gpu/drm/i915/i915_perf.c            | 45 ++++++++-------------
 drivers/gpu/drm/i915/intel_uncore.c         |  1 +
 drivers/gpu/drm/i915/intel_uncore.h         |  6 ---
 7 files changed, 57 insertions(+), 34 deletions(-)
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
index 7d486dfa2fc1..a3c08bde9b2e 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_mmio_range.h"
 #include "intel_context.h"
 #include "intel_engine_pm.h"
 #include "intel_engine_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_mmio_range.c b/drivers/gpu/drm/i915/i915_mmio_range.c
new file mode 100644
index 000000000000..c5484b16e28a
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
+bool reg_in_i915_range_table(u32 addr, const struct i915_range *table)
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
index 000000000000..c3c477a8a0c1
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
+struct i915_range {
+	u32 start;
+	u32 end;
+};
+
+bool reg_in_i915_range_table(u32 addr, const struct i915_range *table);
+
+#endif /* __I915_MMIO_RANGE_H__ */
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 1658f1246c6f..b319398d7df1 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -219,6 +219,7 @@
 #include "i915_perf.h"
 #include "i915_perf_oa_regs.h"
 #include "i915_reg.h"
+#include "i915_mmio_range.h"
 
 /* HW requires this to be a power of two, between 128k and 16M, though driver
  * is currently generally designed assuming the largest 16M size is used such
@@ -4320,18 +4321,6 @@ static bool gen8_is_valid_flex_addr(struct i915_perf *perf, u32 addr)
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
 
@@ -4421,61 +4410,61 @@ static const struct i915_range mtl_oa_mux_regs[] = {
 
 static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen7_oa_b_counters);
+	return reg_in_i915_range_table(addr, gen7_oa_b_counters);
 }
 
 static bool gen8_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
-		reg_in_range_table(addr, gen8_oa_mux_regs);
+	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
+		reg_in_i915_range_table(addr, gen8_oa_mux_regs);
 }
 
 static bool gen11_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
-		reg_in_range_table(addr, gen8_oa_mux_regs) ||
-		reg_in_range_table(addr, gen11_oa_mux_regs);
+	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
+		reg_in_i915_range_table(addr, gen8_oa_mux_regs) ||
+		reg_in_i915_range_table(addr, gen11_oa_mux_regs);
 }
 
 static bool hsw_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
-		reg_in_range_table(addr, hsw_oa_mux_regs);
+	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
+		reg_in_i915_range_table(addr, hsw_oa_mux_regs);
 }
 
 static bool chv_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
-		reg_in_range_table(addr, chv_oa_mux_regs);
+	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
+		reg_in_i915_range_table(addr, chv_oa_mux_regs);
 }
 
 static bool gen12_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen12_oa_b_counters);
+	return reg_in_i915_range_table(addr, gen12_oa_b_counters);
 }
 
 static bool mtl_is_valid_oam_b_counter_addr(struct i915_perf *perf, u32 addr)
 {
 	if (HAS_OAM(perf->i915) &&
 	    GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
-		return reg_in_range_table(addr, mtl_oam_b_counters);
+		return reg_in_i915_range_table(addr, mtl_oam_b_counters);
 
 	return false;
 }
 
 static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, xehp_oa_b_counters) ||
-		reg_in_range_table(addr, gen12_oa_b_counters) ||
+	return reg_in_i915_range_table(addr, xehp_oa_b_counters) ||
+		reg_in_i915_range_table(addr, gen12_oa_b_counters) ||
 		mtl_is_valid_oam_b_counter_addr(perf, addr);
 }
 
 static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
 	if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
-		return reg_in_range_table(addr, mtl_oa_mux_regs);
+		return reg_in_i915_range_table(addr, mtl_oa_mux_regs);
 	else
-		return reg_in_range_table(addr, gen12_oa_mux_regs);
+		return reg_in_i915_range_table(addr, gen12_oa_mux_regs);
 }
 
 static u32 mask_reg_value(u32 reg, u32 val)
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 8cb59f8d1f4c..aea81e41d6dd 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -35,6 +35,7 @@
 #include "i915_reg.h"
 #include "i915_vgpu.h"
 #include "i915_wait_util.h"
+#include "i915_mmio_range.h"
 #include "intel_uncore_trace.h"
 
 #define FORCEWAKE_ACK_TIMEOUT_MS 50
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 6048b99b96cb..6df624afab30 100644
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
 
-- 
2.51.0

