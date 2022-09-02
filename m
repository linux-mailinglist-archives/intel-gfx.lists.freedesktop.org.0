Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 091245ABB70
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Sep 2022 01:53:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5501E10E94B;
	Fri,  2 Sep 2022 23:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D260910E946
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 23:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662162789; x=1693698789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QqDm5EI6T2KdpKsSQz5scSHFGjXPR91dhw2BTNLvXaQ=;
 b=hKUxvAcpnVnyyXjv1DDXnBPvsRZmLeVzysfsE1qgTTrf9SoeKKwLPT3+
 3LeCR/Ry05Z015q1Y5ewiVzf3CM01tpKyo0kbcTsU699cuT8aW51IO5Ul
 o8eQvBgsIBWaEsN0tJgnS1H56jmCramHgY1AelD9ukiaD0DwQu7XnoIFs
 y2BMKFGr95bMwPjFKoXlt8+9GR+ZTFUFkbq191rR2JpL2iQbJsEQQRhcn
 x7vahgdEHijbh+Dqq6b5Ni+/iyLFr5e03PhuHD5LxL+ztN2FGc6S5ioaX
 Sgi9V5xQWGms+XP9MN/FmQwOLZQNZVKdwO8wHYePdSY46EvMFmESz9X8y A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="279125068"
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="279125068"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 16:53:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="564135553"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 16:53:08 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Sep 2022 16:52:59 -0700
Message-Id: <20220902235302.1112388-4-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
References: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/xelpmp: Expose media as another GT
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

From: Matt Roper <matthew.d.roper@intel.com>

Xe_LPM+ platforms have "standalone media."  I.e., the media unit is
designed as an additional GT with its own engine list, GuC, forcewake,
etc.  Let's allow platforms to include media GTs in their device info.

Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/Makefile            |  1 +
 drivers/gpu/drm/i915/gt/intel_gt.c       | 12 ++++++--
 drivers/gpu/drm/i915/gt/intel_gt_regs.h  |  8 +++++
 drivers/gpu/drm/i915/gt/intel_sa_media.c | 39 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_sa_media.h | 15 +++++++++
 drivers/gpu/drm/i915/i915_pci.c          | 15 +++++++++
 drivers/gpu/drm/i915/intel_device_info.h |  5 ++-
 drivers/gpu/drm/i915/intel_uncore.c      | 16 ++++++++--
 drivers/gpu/drm/i915/intel_uncore.h      | 20 ++++++++++--
 9 files changed, 123 insertions(+), 8 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 522ef9b4aff3..e83e4cd46968 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -123,6 +123,7 @@ gt-y += \
 	gt/intel_ring.o \
 	gt/intel_ring_submission.o \
 	gt/intel_rps.o \
+	gt/intel_sa_media.o \
 	gt/intel_sseu.o \
 	gt/intel_sseu_debugfs.o \
 	gt/intel_timeline.o \
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 57a6488c0e14..bfe77d01f747 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -776,10 +776,15 @@ void intel_gt_driver_late_release_all(struct drm_i915_private *i915)
 	}
 }
 
-static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_addr)
+static int intel_gt_tile_setup(struct intel_gt *gt,
+			       phys_addr_t phys_addr,
+			       u32 gsi_offset)
 {
 	int ret;
 
+	/* GSI offset is only applicable for media GTs */
+	drm_WARN_ON(&gt->i915->drm, gsi_offset);
+
 	if (!gt_is_root(gt)) {
 		struct intel_uncore_mmio_debug *mmio_debug;
 		struct intel_uncore *uncore;
@@ -840,7 +845,7 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
 	gt->info.engine_mask = RUNTIME_INFO(i915)->platform_engine_mask;
 
 	drm_dbg(&i915->drm, "Setting up %s\n", gt->name);
-	ret = intel_gt_tile_setup(gt, phys_addr);
+	ret = intel_gt_tile_setup(gt, phys_addr, 0);
 	if (ret)
 		return ret;
 
@@ -873,7 +878,8 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
 			goto err;
 		}
 
-		ret = gtdef->setup(gt, phys_addr + gtdef->mapping_base);
+		ret = gtdef->setup(gt, phys_addr + gtdef->mapping_base,
+				   gtdef->gsi_offset);
 		if (ret)
 			goto err;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index d414785003cc..fb2c56777480 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1578,4 +1578,12 @@
 
 #define GEN12_SFC_DONE(n)			_MMIO(0x1cc000 + (n) * 0x1000)
 
+/*
+ * Standalone Media's non-engine GT registers are located at their regular GT
+ * offsets plus 0x380000.  This extra offset is stored inside the intel_uncore
+ * structure so that the existing code can be used for both GTs without
+ * modification.
+ */
+#define MTL_MEDIA_GSI_BASE			0x380000
+
 #endif /* __INTEL_GT_REGS__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_sa_media.c b/drivers/gpu/drm/i915/gt/intel_sa_media.c
new file mode 100644
index 000000000000..8c5c519457cc
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_sa_media.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include <drm/drm_managed.h>
+
+#include "i915_drv.h"
+#include "gt/intel_gt.h"
+#include "gt/intel_sa_media.h"
+
+int intel_sa_mediagt_setup(struct intel_gt *gt, phys_addr_t phys_addr,
+			   u32 gsi_offset)
+{
+	struct drm_i915_private *i915 = gt->i915;
+	struct intel_uncore *uncore;
+
+	uncore = drmm_kzalloc(&i915->drm, sizeof(*uncore), GFP_KERNEL);
+	if (!uncore)
+		return -ENOMEM;
+
+	uncore->gsi_offset = gsi_offset;
+
+	intel_gt_common_init_early(gt);
+	intel_uncore_init_early(uncore, gt);
+
+	/*
+	 * Standalone media shares the general MMIO space with the primary
+	 * GT.  We'll re-use the primary GT's mapping.
+	 */
+	uncore->regs = i915->uncore.regs;
+	if (drm_WARN_ON(&i915->drm, uncore->regs == NULL))
+		return -EIO;
+
+	gt->uncore = uncore;
+	gt->phys_addr = phys_addr;
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_sa_media.h b/drivers/gpu/drm/i915/gt/intel_sa_media.h
new file mode 100644
index 000000000000..3afb310de932
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_sa_media.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+#ifndef __INTEL_SA_MEDIA__
+#define __INTEL_SA_MEDIA__
+
+#include <linux/types.h>
+
+struct intel_gt;
+
+int intel_sa_mediagt_setup(struct intel_gt *gt, phys_addr_t phys_addr,
+			   u32 gsi_offset);
+
+#endif /* __INTEL_SA_MEDIA_H__ */
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 26b25d9434d6..18d3722331e4 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -26,6 +26,9 @@
 #include <drm/drm_drv.h>
 #include <drm/i915_pciids.h>
 
+#include "gt/intel_gt_regs.h"
+#include "gt/intel_sa_media.h"
+
 #include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_pci.h"
@@ -1115,6 +1118,17 @@ static const struct intel_device_info pvc_info = {
 	.display.has_cdclk_crawl = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B)
 
+static const struct intel_gt_definition xelpmp_extra_gt[] = {
+	{
+		.type = GT_MEDIA,
+		.name = "Standalone Media GT",
+		.setup = intel_sa_mediagt_setup,
+		.gsi_offset = MTL_MEDIA_GSI_BASE,
+		.engine_mask = BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
+	},
+	{}
+};
+
 __maybe_unused
 static const struct intel_device_info mtl_info = {
 	XE_HP_FEATURES,
@@ -1128,6 +1142,7 @@ static const struct intel_device_info mtl_info = {
 	.media.ver = 13,
 	PLATFORM(INTEL_METEORLAKE),
 	.display.has_modular_fia = 1,
+	.extra_gt_list = xelpmp_extra_gt,
 	.has_flat_ccs = 0,
 	.has_snoop = 1,
 	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index b408ce384cd7..7b6d5341b34b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -248,14 +248,17 @@ struct intel_runtime_info {
 enum intel_gt_type {
 	GT_PRIMARY,
 	GT_TILE,
+	GT_MEDIA,
 };
 
 struct intel_gt_definition {
 	enum intel_gt_type type;
 	char *name;
 	int (*setup)(struct intel_gt *gt,
-		     phys_addr_t phys_addr);
+		     phys_addr_t phys_addr,
+		     u32 gsi_offset);
 	u32 mapping_base;
+	u32 gsi_offset;
 	intel_engine_mask_t engine_mask;
 };
 
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 9b81b2543ce2..faec6c1aad66 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1771,10 +1771,15 @@ __gen2_read(64)
 #undef GEN2_READ_FOOTER
 #undef GEN2_READ_HEADER
 
+#define IS_GSI_REG(reg) ((reg) < 0x40000)
+
 #define GEN6_READ_HEADER(x) \
-	u32 offset = i915_mmio_reg_offset(reg); \
+	u32 offset; \
 	unsigned long irqflags; \
 	u##x val = 0; \
+	if (IS_GSI_REG(reg.reg)) \
+		reg.reg += uncore->gsi_offset; \
+	offset = i915_mmio_reg_offset(reg); \
 	assert_rpm_wakelock_held(uncore->rpm); \
 	spin_lock_irqsave(&uncore->lock, irqflags); \
 	unclaimed_reg_debug(uncore, reg, true, true)
@@ -1876,8 +1881,11 @@ __gen2_write(32)
 #undef GEN2_WRITE_HEADER
 
 #define GEN6_WRITE_HEADER \
-	u32 offset = i915_mmio_reg_offset(reg); \
+	u32 offset; \
 	unsigned long irqflags; \
+	if (IS_GSI_REG(reg.reg)) \
+		reg.reg += uncore->gsi_offset; \
+	offset = i915_mmio_reg_offset(reg); \
 	trace_i915_reg_rw(true, reg, val, sizeof(val), trace); \
 	assert_rpm_wakelock_held(uncore->rpm); \
 	spin_lock_irqsave(&uncore->lock, irqflags); \
@@ -2256,6 +2264,10 @@ int intel_uncore_setup_mmio(struct intel_uncore *uncore, phys_addr_t phys_addr)
 
 void intel_uncore_cleanup_mmio(struct intel_uncore *uncore)
 {
+	/* The media GT re-uses the primary GT's register mapping */
+	if (uncore->gt->type == GT_MEDIA)
+		return;
+
 	iounmap(uncore->regs);
 }
 
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index b1fa912a65e7..b25efdd9560e 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -135,6 +135,16 @@ struct intel_uncore {
 
 	spinlock_t lock; /** lock is also taken in irq contexts. */
 
+	/*
+	 * Do we need to apply an additional offset to reach the beginning
+	 * of the basic non-engine GT registers (referred to as "GSI" on
+	 * newer platforms, or "GT block" on older platforms)?  If so, we'll
+	 * track that here and apply it transparently to registers in the
+	 * appropriate range to maintain compatibility with our existing
+	 * register definitions and GT code.
+	 */
+	u32 gsi_offset;
+
 	unsigned int flags;
 #define UNCORE_HAS_FORCEWAKE		BIT(0)
 #define UNCORE_HAS_FPGA_DBG_UNCLAIMED	BIT(1)
@@ -299,14 +309,20 @@ intel_wait_for_register_fw(struct intel_uncore *uncore,
 static inline u##x__ __raw_uncore_read##x__(const struct intel_uncore *uncore, \
 					    i915_reg_t reg) \
 { \
-	return read##s__(uncore->regs + i915_mmio_reg_offset(reg)); \
+	u32 offset = i915_mmio_reg_offset(reg); \
+	if (offset < 0x40000) \
+		offset += uncore->gsi_offset; \
+	return read##s__(uncore->regs + offset); \
 }
 
 #define __raw_write(x__, s__) \
 static inline void __raw_uncore_write##x__(const struct intel_uncore *uncore, \
 					   i915_reg_t reg, u##x__ val) \
 { \
-	write##s__(val, uncore->regs + i915_mmio_reg_offset(reg)); \
+	u32 offset = i915_mmio_reg_offset(reg); \
+	if (offset < 0x40000) \
+		offset += uncore->gsi_offset; \
+	write##s__(val, uncore->regs + offset); \
 }
 __raw_read(8, b)
 __raw_read(16, w)
-- 
2.34.1

