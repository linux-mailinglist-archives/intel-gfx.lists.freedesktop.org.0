Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 263FC4CEE64
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 00:22:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2593A10E065;
	Sun,  6 Mar 2022 23:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D40810E038;
 Sun,  6 Mar 2022 23:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646608921; x=1678144921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GqozfSAsJdCSVGVn8Tmr0gQw2GJZTocEThBetpP4w/Q=;
 b=MEtPti8hqDmReNPftGvsipNYfBMv9ET5cVp0YBZBfgVhHyw9/NOpVMzP
 kkVdFH8DMEsTEJBAY9zqZHX3aUzBN0MS9d3M8z83km7xYrPVeDfzcJ1c5
 MmL00f+A0HG9Dj+5j5tPI70b0L4gjWIf5UPEcTL9J4J0Za2F61/uo4r7e
 Ol5oLcZuo1A979wPB0qQ+GTPtRg15Bz1FyHu3omlQX80k3GNbSBUNE+Jg
 GWcun7Ll6a5BDhOnEx3blwOXWRrY+Ja9NTLHD87ebhMFgBh6eV6+XBJXl
 Uo75lwkUC9ROZhftVGCiMWIUAzM8jxBESm042uh0XdY8B/3pvpWXCiIwD A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10278"; a="317500543"
X-IronPort-AV: E=Sophos;i="5.90,160,1643702400"; d="scan'208";a="317500543"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2022 15:22:00 -0800
X-IronPort-AV: E=Sophos;i="5.90,160,1643702400"; d="scan'208";a="494871503"
Received: from jpdefuri-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.212.153.86])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2022 15:22:00 -0800
From: Jordan Justen <jordan.l.justen@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Sun,  6 Mar 2022 15:21:56 -0800
Message-Id: <20220306232157.1174335-2-jordan.l.justen@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220306232157.1174335-1-jordan.l.justen@intel.com>
References: <20220306232157.1174335-1-jordan.l.justen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 1/2] drm/i915/guc: Add fetch of hwconfig blob
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
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Implement support for fetching the hardware description table from the
GuC. The call is made twice - once without a destination buffer to
query the size and then a second time to fill in the buffer.

The table is stored in the GT structure so that it can be fetched once
at driver load time. Keeping inside a GuC structure would mean it
would be release and reloaded on a GuC reset (part of a full GT
reset). However, the table does not change just because the GT has been
reset and the GuC reloaded. Also, dynamic memory allocations inside
the reset path are a problem.

Note that the table is only available on ADL-P and later platforms.

v2 (John's v2 patch):
 * Move to GT level to avoid memory allocation during reset path (and
   unnecessary re-read of the table on a reset).

v5 (of Jordan's posting):
 * Various changes made by Jordan and recommended by Michal
   - Makefile ordering
   - Adjust "struct intel_guc_hwconfig hwconfig" comment
   - Set Copyright year to 2022 in intel_guc_hwconfig.c/.h
   - Drop inline from hwconfig_to_guc()
   - Replace hwconfig param with guc in __guc_action_get_hwconfig()
   - Move zero size check into guc_hwconfig_discover_size()
   - Change comment to say zero size offset/size is needed to get size
   - Add has_guc_hwconfig to devinfo and drop has_table()
   - Change drm_err to notice in __uc_init_hw() and use %pe

v6 (of Jordan's posting):
 * Added a couple more small changes recommended by Michal
 * Merge in John's v2 patch, but note:
   - Using drm_notice as recommended by Michal
   - Reverted Michal's suggestion of using devinfo

v7 (of Jordan's posting):
 * Change back to drm_err as preferred by John

Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
Acked-by: Jon Bloomfield <jon.bloomfield@intel.com>
Signed-off-by: Jordan Justen <jordan.l.justen@intel.com>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |   6 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   4 +
 drivers/gpu/drm/i915/gt/intel_hwconfig.h      |  21 +++
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   1 +
 .../gpu/drm/i915/gt/uc/abi/guc_errors_abi.h   |   4 +
 .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   | 162 ++++++++++++++++++
 7 files changed, 199 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_hwconfig.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 9d588d936e3d..61b078bd1b32 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -187,6 +187,7 @@ i915-y += gt/uc/intel_uc.o \
 	  gt/uc/intel_guc_ct.o \
 	  gt/uc/intel_guc_debugfs.o \
 	  gt/uc/intel_guc_fw.o \
+	  gt/uc/intel_guc_hwconfig.o \
 	  gt/uc/intel_guc_log.o \
 	  gt/uc/intel_guc_log_debugfs.o \
 	  gt/uc/intel_guc_rc.o \
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 8a2483ccbfb9..d731110ce3e6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -712,6 +712,11 @@ int intel_gt_init(struct intel_gt *gt)
 	if (err)
 		goto err_uc_init;
 
+	err = intel_gt_init_hwconfig(gt);
+	if (err)
+		drm_err(&gt->i915->drm, "Failed to retrieve hwconfig table: %pe\n",
+			ERR_PTR(err));
+
 	err = __engines_record_defaults(gt);
 	if (err)
 		goto err_gt;
@@ -793,6 +798,7 @@ void intel_gt_driver_release(struct intel_gt *gt)
 	intel_gt_pm_fini(gt);
 	intel_gt_fini_scratch(gt);
 	intel_gt_fini_buffer_pool(gt);
+	intel_gt_fini_hwconfig(gt);
 }
 
 void intel_gt_driver_late_release(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index f20687796490..514b92cff9b0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -20,6 +20,7 @@
 #include "i915_vma.h"
 #include "intel_engine_types.h"
 #include "intel_gt_buffer_pool_types.h"
+#include "intel_hwconfig.h"
 #include "intel_llc_types.h"
 #include "intel_reset_types.h"
 #include "intel_rc6_types.h"
@@ -199,6 +200,9 @@ struct intel_gt {
 		struct sseu_dev_info sseu;
 
 		unsigned long mslice_mask;
+
+		/** @hwconfig: hardware configuration data */
+		struct intel_hwconfig hwconfig;
 	} info;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/gt/intel_hwconfig.h b/drivers/gpu/drm/i915/gt/intel_hwconfig.h
new file mode 100644
index 000000000000..322290780b67
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_hwconfig.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef _INTEL_HWCONFIG_H_
+#define _INTEL_HWCONFIG_H_
+
+#include <linux/types.h>
+
+struct intel_gt;
+
+struct intel_hwconfig {
+	u32 size;
+	void *ptr;
+};
+
+int intel_gt_init_hwconfig(struct intel_gt *gt);
+void intel_gt_fini_hwconfig(struct intel_gt *gt);
+
+#endif /* _INTEL_HWCONFIG_H_ */
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index 7afdadc7656f..a9a329e53c35 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -129,6 +129,7 @@ enum intel_guc_action {
 	INTEL_GUC_ACTION_ENGINE_FAILURE_NOTIFICATION = 0x1009,
 	INTEL_GUC_ACTION_SETUP_PC_GUCRC = 0x3004,
 	INTEL_GUC_ACTION_AUTHENTICATE_HUC = 0x4000,
+	INTEL_GUC_ACTION_GET_HWCONFIG = 0x4100,
 	INTEL_GUC_ACTION_REGISTER_CONTEXT = 0x4502,
 	INTEL_GUC_ACTION_DEREGISTER_CONTEXT = 0x4503,
 	INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER = 0x4505,
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h
index c20658ee85a5..8085fb181274 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h
@@ -8,6 +8,10 @@
 
 enum intel_guc_response_status {
 	INTEL_GUC_RESPONSE_STATUS_SUCCESS = 0x0,
+	INTEL_GUC_RESPONSE_NOT_SUPPORTED = 0x20,
+	INTEL_GUC_RESPONSE_NO_ATTRIBUTE_TABLE = 0x201,
+	INTEL_GUC_RESPONSE_NO_DECRYPTION_KEY = 0x202,
+	INTEL_GUC_RESPONSE_DECRYPTION_FAILED = 0x204,
 	INTEL_GUC_RESPONSE_STATUS_GENERIC_FAIL = 0xF000,
 };
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
new file mode 100644
index 000000000000..e0f65bdd1c84
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
@@ -0,0 +1,162 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include "gt/intel_gt.h"
+#include "gt/intel_hwconfig.h"
+#include "i915_drv.h"
+#include "i915_memcpy.h"
+
+/*
+ * GuC has a blob containing hardware configuration information (HWConfig).
+ * This is formatted as a simple and flexible KLV (Key/Length/Value) table.
+ *
+ * For example, a minimal version could be:
+ *   enum device_attr {
+ *     ATTR_SOME_VALUE = 0,
+ *     ATTR_SOME_MASK  = 1,
+ *   };
+ *
+ *   static const u32 hwconfig[] = {
+ *     ATTR_SOME_VALUE,
+ *     1,		// Value Length in DWords
+ *     8,		// Value
+ *
+ *     ATTR_SOME_MASK,
+ *     3,
+ *     0x00FFFFFFFF, 0xFFFFFFFF, 0xFF000000,
+ *   };
+ *
+ * The attribute ids are defined in a hardware spec.
+ */
+
+static int __guc_action_get_hwconfig(struct intel_guc *guc,
+				     u32 ggtt_offset, u32 ggtt_size)
+{
+	u32 action[] = {
+		INTEL_GUC_ACTION_GET_HWCONFIG,
+		lower_32_bits(ggtt_offset),
+		upper_32_bits(ggtt_offset),
+		ggtt_size,
+	};
+	int ret;
+
+	ret = intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
+	if (ret == -ENXIO)
+		return -ENOENT;
+
+	return ret;
+}
+
+static int guc_hwconfig_discover_size(struct intel_guc *guc, struct intel_hwconfig *hwconfig)
+{
+	int ret;
+
+	/*
+	 * Sending a query with zero offset and size will return the
+	 * size of the blob.
+	 */
+	ret = __guc_action_get_hwconfig(guc, 0, 0);
+	if (ret < 0)
+		return ret;
+
+	if (ret == 0)
+		return -EINVAL;
+
+	hwconfig->size = ret;
+	return 0;
+}
+
+static int guc_hwconfig_fill_buffer(struct intel_guc *guc, struct intel_hwconfig *hwconfig)
+{
+	struct i915_vma *vma;
+	u32 ggtt_offset;
+	void *vaddr;
+	int ret;
+
+	GEM_BUG_ON(!hwconfig->size);
+
+	ret = intel_guc_allocate_and_map_vma(guc, hwconfig->size, &vma, &vaddr);
+	if (ret)
+		return ret;
+
+	ggtt_offset = intel_guc_ggtt_offset(guc, vma);
+
+	ret = __guc_action_get_hwconfig(guc, ggtt_offset, hwconfig->size);
+	if (ret >= 0)
+		memcpy(hwconfig->ptr, vaddr, hwconfig->size);
+
+	i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
+
+	return ret;
+}
+
+static bool has_table(struct drm_i915_private *i915)
+{
+	if (IS_ALDERLAKE_P(i915))
+		return true;
+
+	return false;
+}
+
+/**
+ * intel_guc_hwconfig_init - Initialize the HWConfig
+ *
+ * Retrieve the HWConfig table from the GuC and save it locally.
+ * It can then be queried on demand by other users later on.
+ */
+static int guc_hwconfig_init(struct intel_gt *gt)
+{
+	struct intel_hwconfig *hwconfig = &gt->info.hwconfig;
+	struct intel_guc *guc = &gt->uc.guc;
+	int ret;
+
+	if (!has_table(gt->i915))
+		return 0;
+
+	ret = guc_hwconfig_discover_size(guc, hwconfig);
+	if (ret)
+		return ret;
+
+	hwconfig->ptr = kmalloc(hwconfig->size, GFP_KERNEL);
+	if (!hwconfig->ptr) {
+		hwconfig->size = 0;
+		return -ENOMEM;
+	}
+
+	ret = guc_hwconfig_fill_buffer(guc, hwconfig);
+	if (ret < 0) {
+		intel_gt_fini_hwconfig(gt);
+		return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * intel_gt_init_hwconfig - Initialize the HWConfig if available
+ *
+ * Retrieve the HWConfig table if available on the current platform.
+ */
+int intel_gt_init_hwconfig(struct intel_gt *gt)
+{
+	if (!intel_uc_uses_guc(&gt->uc))
+		return 0;
+
+	return guc_hwconfig_init(gt);
+}
+
+/**
+ * intel_gt_fini_hwconfig - Finalize the HWConfig
+ *
+ * Free up the memory allocation holding the table.
+ */
+void intel_gt_fini_hwconfig(struct intel_gt *gt)
+{
+	struct intel_hwconfig *hwconfig = &gt->info.hwconfig;
+
+	kfree(hwconfig->ptr);
+	hwconfig->size = 0;
+	hwconfig->ptr = NULL;
+}
-- 
2.34.1

