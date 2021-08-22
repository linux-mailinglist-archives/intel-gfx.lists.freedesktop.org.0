Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC023F407B
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Aug 2021 18:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AFDC89F97;
	Sun, 22 Aug 2021 16:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B1B689F97
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Aug 2021 16:30:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="302567468"
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="302567468"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 09:30:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="596395814"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2021 09:30:41 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Date: Sun, 22 Aug 2021 21:57:05 +0530
Message-Id: <20210822162706.819507-13-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
References: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 12/13] drm/i915/lmem: Enable lmem for platforms
 with Flat CCS
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

A portion of device memory is reserved for Flat CCS so usable
device memory will be reduced by size of Flat CCS. Size of
Flat CCS is specified in “XEHPSDV_FLAT_CCS_BASE_ADDR”.
So to get effective device memory we need to subtract
total device memory by Flat CCS memory size.

Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c          | 19 +++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h          |  1 +
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 23 +++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h             |  3 +++
 4 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 62d40c986642..817107d42a44 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -888,6 +888,25 @@ u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg)
 	return intel_uncore_read_fw(gt->uncore, reg);
 }
 
+u32 intel_gt_read_register(struct intel_gt *gt, i915_reg_t reg)
+{
+	int type;
+	u8 sliceid, subsliceid;
+
+	for (type = 0; type < NUM_STEERING_TYPES; type++) {
+		if (intel_gt_reg_needs_read_steering(gt, reg, type)) {
+			intel_gt_get_valid_steering(gt, type, &sliceid,
+						    &subsliceid);
+			return intel_uncore_read_with_mcr_steering(gt->uncore,
+								   reg,
+								   sliceid,
+								   subsliceid);
+		}
+	}
+
+	return intel_uncore_read(gt->uncore, reg);
+}
+
 void intel_gt_info_print(const struct intel_gt_info *info,
 			 struct drm_printer *p)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 74e771871a9b..24b78398a587 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -84,6 +84,7 @@ static inline bool intel_gt_needs_read_steering(struct intel_gt *gt,
 }
 
 u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg);
+u32 intel_gt_read_register(struct intel_gt *gt, i915_reg_t reg);
 
 void intel_gt_info_print(const struct intel_gt_info *info,
 			 struct drm_printer *p);
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 4ea0ad9435df..876ee8cb21fc 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -202,8 +202,27 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 	if (!IS_DGFX(i915))
 		return ERR_PTR(-ENODEV);
 
-	/* Stolen starts from GSMBASE on DG1 */
-	lmem_size = intel_uncore_read64(uncore, GEN12_GSMBASE);
+
+	if (HAS_FLAT_CCS(i915)) {
+		u64 tile_stolen, flat_ccs_base_addr_reg, flat_ccs_base;
+
+		lmem_size = pci_resource_len(pdev, 2);
+		flat_ccs_base_addr_reg = intel_gt_read_register(gt, XEHPSDV_FLAT_CCS_BASE_ADDR);
+		flat_ccs_base = (flat_ccs_base_addr_reg >> XEHPSDV_CCS_BASE_SHIFT) * SZ_64K;
+		tile_stolen = lmem_size - flat_ccs_base;
+
+		/* If the FLAT_CCS_BASE_ADDR register is not populated, flag an error */
+		if (tile_stolen == lmem_size)
+			DRM_ERROR("CCS_BASE_ADDR register did not have expected value\n");
+
+		lmem_size -= tile_stolen;
+	} else {
+		/* Stolen starts from GSMBASE without CCS */
+		lmem_size = intel_uncore_read64(&i915->uncore, GEN12_GSMBASE);
+		if (GEM_WARN_ON(lmem_size > pci_resource_len(pdev, 2)))
+			return ERR_PTR(-ENODEV);
+	}
+
 
 	io_start = pci_resource_start(pdev, 2);
 	if (GEM_WARN_ON(lmem_size > pci_resource_len(pdev, 2)))
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 167eaa87501b..4d310d31e9dd 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12355,6 +12355,9 @@ enum skl_power_gate {
 #define GEN12_GSMBASE			_MMIO(0x108100)
 #define GEN12_DSMBASE			_MMIO(0x1080C0)
 
+#define XEHPSDV_FLAT_CCS_BASE_ADDR             _MMIO(0x4910)
+#define   XEHPSDV_CCS_BASE_SHIFT               8
+
 /* gamt regs */
 #define GEN8_L3_LRA_1_GPGPU _MMIO(0x4dd4)
 #define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW  0x67F1427F /* max/min for LRA1/2 */
-- 
2.26.2

