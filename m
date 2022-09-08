Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE3F5B13F1
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 07:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D8610E94B;
	Thu,  8 Sep 2022 05:19:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3210110E94E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 05:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662614340; x=1694150340;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sAWXZdWK5NceBbJYUhCyrhJhMawYxRH1DMJIEsHO2rU=;
 b=hmd5repUUsoWOeuMgsgqi9dQJMLOMQywukGvJHJlQomwOHWjJTwWFKH5
 IfE5CTBpHZEKNKDpx7vGRsDd9W9liV6BhPcJAMC2wOZyUE8L3muTnODgA
 IssSNyT3qtpSSInu9MRGCKaDdJIefj5ARU5D5JtR402DseEAPVVO2gCrK
 elzLlpMa1blxxVkt78rhGpIvYaYzyCLv5F5HdpL9XpHa4CgIV5uLjZAsr
 D/22fP0A9LapPO6QIbe3E6TEhhqm+CmtmNTzBNGZXgIX/sXjyaNKR6ulL
 Ds2l+s5GLVU/p1iJs4cjaz47frz+AVmyJjj5rodu5+ec9pWauMoDsY9sV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="298407845"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="298407845"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:18:59 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="790308427"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:18:58 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 22:18:55 -0700
Message-Id: <b53822bdc42f954fb17a88f0db1b23eefd403263.1662613377.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662613377.git.ashutosh.dixit@intel.com>
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/xelpmp: Expose media as another GT
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

DO NOT REVIEW, FOR COMPILING ONLY

Xe_LPM+ platforms have "standalone media."  I.e., the media unit is
designed as an additional GT with its own engine list, GuC, forcewake,
etc.  Let's allow platforms to include media GTs in their device info.

v2:
 - Simplify GSI register handling and split it out to a separate patch
   for ease of review.  (Daniele)

Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
---
 drivers/gpu/drm/i915/Makefile            |  1 +
 drivers/gpu/drm/i915/gt/intel_gt.c       |  6 ++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h  |  8 +++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  1 +
 drivers/gpu/drm/i915/gt/intel_sa_media.c | 39 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_sa_media.h | 15 +++++++++
 drivers/gpu/drm/i915/i915_pci.c          | 14 +++++++++
 7 files changed, 84 insertions(+)
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
index 4b408c9d0d81..070068524a19 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -31,6 +31,7 @@
 #include "intel_rc6.h"
 #include "intel_renderstate.h"
 #include "intel_rps.h"
+#include "intel_sa_media.h"
 #include "intel_gt_sysfs.h"
 #include "intel_uncore.h"
 #include "shmem_utils.h"
@@ -884,6 +885,11 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
 			ret = intel_gt_tile_setup(gt, phys_addr + gtdef->mapping_base);
 			break;
 
+		case GT_MEDIA:
+			ret = intel_sa_mediagt_setup(gt, phys_addr + gtdef->mapping_base,
+						     gtdef->gsi_offset);
+			break;
+
 		case GT_PRIMARY:
 			/* Primary GT should not appear in extra GT list */
 		default:
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
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 82dc28643572..726695936a79 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -84,6 +84,7 @@ struct gt_defaults {
 enum intel_gt_type {
 	GT_PRIMARY,
 	GT_TILE,
+	GT_MEDIA,
 };
 
 struct intel_gt {
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
index 26b25d9434d6..19fc00bcd7b9 100644
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
@@ -1115,6 +1118,16 @@ static const struct intel_device_info pvc_info = {
 	.display.has_cdclk_crawl = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B)
 
+static const struct intel_gt_definition xelpmp_extra_gt[] = {
+	{
+		.type = GT_MEDIA,
+		.name = "Standalone Media GT",
+		.gsi_offset = MTL_MEDIA_GSI_BASE,
+		.engine_mask = BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
+	},
+	{}
+};
+
 __maybe_unused
 static const struct intel_device_info mtl_info = {
 	XE_HP_FEATURES,
@@ -1128,6 +1141,7 @@ static const struct intel_device_info mtl_info = {
 	.media.ver = 13,
 	PLATFORM(INTEL_METEORLAKE),
 	.display.has_modular_fia = 1,
+	.extra_gt_list = xelpmp_extra_gt,
 	.has_flat_ccs = 0,
 	.has_snoop = 1,
 	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
-- 
2.34.1

