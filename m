Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D83BE7AA529
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 00:37:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A126710E023;
	Thu, 21 Sep 2023 22:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F103010E058
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 22:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695335818; x=1726871818;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TzVxZ9BrL5eZjhmNFKMODn4LnDAEO/KpPjdycuSVSVU=;
 b=nV6/eNsKXGOMiJKcTkZieVcifGExL1xZ8v94A9wk1UJ8YUg9wx2ZSSoy
 4NV60WBX14FXlfgqlrHjfxk2rVhYgcBYLAs7jCt0yW9rbv2RkGeR++F0u
 Pc5O3l47n7eLjCefxs+FYYYDGabQzlxQ4i6q3bn30VnV9CxfqIU5PPChg
 t1xq4vc2lSHw3catuZCNHkKZdUb49Wv9f5LBfNDvnnuRHEvyZVlPQnc4A
 O+kLtlURkmGc3tsD43Cj7NZtqD1cQpa3sqDbZuEz7OE5Tfji4Gn3KdIM/
 09Tmf25VaHhpczRGBHKc/eGnZVdKoETDcP1FAS2QperyhjHdZn1JA6TWo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="447166682"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="447166682"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 15:35:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="920914993"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="920914993"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 15:35:38 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 15:24:58 -0700
Message-Id: <20230921222458.3793673-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/uapi: Enable L3 Bank Count Querying
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
Cc: adam.cetnerowski@intel.com, jonathan.cavitt@intel.com,
 slawomir.milczarek@intel.com, michal.mrozek@intel.com,
 bartosz.dunajski@intel.com, james.c.wright@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Extend the query ioctl to allow querying the count of the available L3
Banks on a given engine.

Testcase: igt@i915_query@query-l3-bank-count
Test-with: 20230921220001.3793008-1-jonathan.cavitt@intel.com
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
uAPI change requested by Compute UMD.
Changes to Compute UMD will be posted shortly.

v2:
- Remove extra period.
- Return -EINVAL instead of -ENODEV.
- Add testcase and UMD explanation to comments.

 drivers/gpu/drm/i915/gt/intel_gt.c      | 26 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h      |  3 +++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h |  1 +
 drivers/gpu/drm/i915/i915_query.c       | 34 +++++++++++++++++++++++++
 include/uapi/drm/i915_drm.h             | 13 ++++++++++
 5 files changed, 77 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 449f0b7fc8434..3f29eb3510bac 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -884,6 +884,32 @@ static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_addr)
 	return 0;
 }
 
+int intel_count_l3_banks(struct drm_i915_private *i915,
+			 struct intel_engine_cs *engine)
+{
+	struct intel_gt *gt = engine->gt;
+	struct intel_uncore *uncore = gt->uncore;
+	intel_wakeref_t wakeref;
+	u32 count, store;
+
+	/* L3 Banks Counting not supported prior to version 12 */
+	if (GRAPHICS_VER(i915) < 12)
+		return -EINVAL;
+
+	if (IS_PONTEVECCHIO(i915)) {
+		with_intel_runtime_pm(uncore->rpm, wakeref)
+			store = intel_uncore_read(uncore, GEN10_MIRROR_FUSE3);
+		count = hweight32(REG_FIELD_GET(GEN12_MEML3_EN_MASK, store)) * 4 *
+			hweight32(REG_FIELD_GET(XEHPC_GT_L3_MODE_MASK, store));
+	} else if (GRAPHICS_VER_FULL(i915) > IP_VER(12, 50)) {
+		count = hweight32(gt->info.mslice_mask) * 8;
+	} else {
+		count = hweight32(gt->info.l3bank_mask);
+	}
+
+	return count;
+}
+
 int intel_gt_probe_all(struct drm_i915_private *i915)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 239848bcb2a42..4a05443418efd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -161,6 +161,9 @@ static inline bool intel_gt_is_wedged(const struct intel_gt *gt)
 	return unlikely(test_bit(I915_WEDGED, &gt->reset.flags));
 }
 
+int intel_count_l3_banks(struct drm_i915_private *i915,
+			 struct intel_engine_cs *engine);
+
 int intel_gt_probe_all(struct drm_i915_private *i915);
 int intel_gt_tiles_init(struct drm_i915_private *i915);
 void intel_gt_release_all(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 9f2a7d103ea5d..80925d0237cf4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -571,6 +571,7 @@
 #define	GEN10_MIRROR_FUSE3			_MMIO(0x9118)
 #define   GEN10_L3BANK_PAIR_COUNT		4
 #define   GEN10_L3BANK_MASK			0x0F
+#define   XEHPC_GT_L3_MODE_MASK			REG_GENMASK(7, 4)
 /* on Xe_HP the same fuses indicates mslices instead of L3 banks */
 #define   GEN12_MAX_MSLICES			4
 #define   GEN12_MEML3_EN_MASK			0x0F
diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index 00871ef997920..bd3e68cf1bd10 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -10,6 +10,7 @@
 #include "i915_perf.h"
 #include "i915_query.h"
 #include "gt/intel_engine_user.h"
+#include "gt/intel_gt.h"
 #include <uapi/drm/i915_drm.h>
 
 static int copy_query_item(void *query_hdr, size_t query_sz,
@@ -551,6 +552,38 @@ static int query_hwconfig_blob(struct drm_i915_private *i915,
 	return hwconfig->size;
 }
 
+static int
+query_l3bank_count(struct drm_i915_private *i915,
+		   struct drm_i915_query_item *query_item)
+{
+	struct drm_i915_query_memory_regions __user *query_ptr =
+		u64_to_user_ptr(query_item->data_ptr);
+	struct i915_engine_class_instance classinstance;
+	struct intel_engine_cs *engine;
+	int count;
+
+	if (query_item->length == 0)
+		return sizeof(count);
+
+	classinstance = *((struct i915_engine_class_instance *)&query_item->flags);
+
+	engine = intel_engine_lookup_user(i915, (u8)classinstance.engine_class,
+					  (u8)classinstance.engine_instance);
+
+	if (!engine)
+		return -EINVAL;
+
+	count = intel_count_l3_banks(i915, engine);
+
+	if (count < 0)
+		return count;
+
+	if (copy_to_user(query_ptr, &count, sizeof(count)))
+		return -EFAULT;
+
+	return sizeof(count);
+}
+
 static int (* const i915_query_funcs[])(struct drm_i915_private *dev_priv,
 					struct drm_i915_query_item *query_item) = {
 	query_topology_info,
@@ -559,6 +592,7 @@ static int (* const i915_query_funcs[])(struct drm_i915_private *dev_priv,
 	query_memregion_info,
 	query_hwconfig_blob,
 	query_geometry_subslices,
+	query_l3bank_count,
 };
 
 int i915_query_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 7000e5910a1d7..d651e8afe8f1a 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -3013,6 +3013,7 @@ struct drm_i915_query_item {
 	 *  - %DRM_I915_QUERY_MEMORY_REGIONS (see struct drm_i915_query_memory_regions)
 	 *  - %DRM_I915_QUERY_HWCONFIG_BLOB (see `GuC HWCONFIG blob uAPI`)
 	 *  - %DRM_I915_QUERY_GEOMETRY_SUBSLICES (see struct drm_i915_query_topology_info)
+	 *  - %DRM_I915_QUERY_L3BANK_COUNT (see `L3 Bank Count Query uAPI`)
 	 */
 	__u64 query_id;
 #define DRM_I915_QUERY_TOPOLOGY_INFO		1
@@ -3021,6 +3022,7 @@ struct drm_i915_query_item {
 #define DRM_I915_QUERY_MEMORY_REGIONS		4
 #define DRM_I915_QUERY_HWCONFIG_BLOB		5
 #define DRM_I915_QUERY_GEOMETRY_SUBSLICES	6
+#define DRM_I915_QUERY_L3BANK_COUNT		7
 /* Must be kept compact -- no holes and well documented */
 
 	/**
@@ -3690,6 +3692,17 @@ struct drm_i915_gem_create_ext {
 	__u64 extensions;
 };
 
+/**
+ * DOC: L3 Bank Count Query uAPI
+ *
+ * The L3 bank count query called through the query id
+ * DRM_I915_QUERY_L3BANK_COUNT and returns the count of
+ * the available L3 Banks on a given engine.
+ *
+ * The count itself is an integer, and since no additional
+ * data is returned, the count is returned as such.
+ */
+
 /**
  * struct drm_i915_gem_create_ext_memory_regions - The
  * I915_GEM_CREATE_EXT_MEMORY_REGIONS extension.
-- 
2.25.1

