Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2342E4AD5C5
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 11:49:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39EA710E699;
	Tue,  8 Feb 2022 10:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6568510E65F;
 Tue,  8 Feb 2022 10:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644317377; x=1675853377;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iD02jLNk8q2RN4saVzWFu2KhDsF0NYpUYW48D7qpHzw=;
 b=b+WI0JhvpOa5ru6osfCAmb8eT6VostsSus55Q4dtrqx7mUFjRMH9LagL
 fNPk7UGGHN3PGb7fYrBUyQCRWsBOILQnlbpmeNelBl7DKBuJy/mVdJgWx
 /fCMAu4xG4iwk9sknu0ueJU3A5s+Wo32jqhT6arVFfUXj605FfJcXMQrv
 o47gUISLtUMXp8VIYzilye7MDzSs6UZ0/8S2EM+b2LG9T0s3JvFWgC3n0
 wFULEzpqrU6t9D96t7Z1hcenD6Z9czCU5kQbqbKWGQsX6sisrJAPjGb/M
 I5+sMpWX09ip5dOeG0WzMmy/QHy2OoKU/qCkFATEZYpIj/Ba1SISu6uUv w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="309667890"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="309667890"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 02:49:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="484772173"
Received: from fpaillet-mobl.amr.corp.intel.com (HELO localhost)
 ([10.209.65.117])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 02:49:35 -0800
From: Jordan Justen <jordan.l.justen@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Tue,  8 Feb 2022 02:49:30 -0800
Message-Id: <20220208104933.867812-2-jordan.l.justen@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220208104933.867812-1-jordan.l.justen@intel.com>
References: <20220208104933.867812-1-jordan.l.justen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/guc: Add fetch of hwconfig table
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
Cc: dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Implement support for fetching the hardware description table from the
GuC. The call is made twice - once without a destination buffer to
query the size and then a second time to fill in the buffer.

Note that the table is only available on ADL-P and later platforms.

Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   1 +
 .../gpu/drm/i915/gt/uc/abi/guc_errors_abi.h   |   4 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   3 +
 .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   | 151 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.h   |  19 +++
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   6 +
 7 files changed, 185 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 6836b020a5be..ba9b6557d59d 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -192,6 +192,7 @@ i915-y += gt/uc/intel_uc.o \
 	  gt/uc/intel_guc_rc.o \
 	  gt/uc/intel_guc_slpc.o \
 	  gt/uc/intel_guc_submission.o \
+	  gt/uc/intel_guc_hwconfig.o \
 	  gt/uc/intel_huc.o \
 	  gt/uc/intel_huc_debugfs.o \
 	  gt/uc/intel_huc_fw.o
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index fe5d7d261797..4a61c819f32b 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -137,6 +137,7 @@ enum intel_guc_action {
 	INTEL_GUC_ACTION_ENGINE_FAILURE_NOTIFICATION = 0x1009,
 	INTEL_GUC_ACTION_SETUP_PC_GUCRC = 0x3004,
 	INTEL_GUC_ACTION_AUTHENTICATE_HUC = 0x4000,
+	INTEL_GUC_ACTION_GET_HWCONFIG = 0x4100,
 	INTEL_GUC_ACTION_REGISTER_CONTEXT = 0x4502,
 	INTEL_GUC_ACTION_DEREGISTER_CONTEXT = 0x4503,
 	INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER = 0x4505,
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h
index 488b6061ee89..f9e2a6aaef4a 100644
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
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index f9240d4baa69..ce2ff4bb0fd5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -13,6 +13,7 @@
 #include "intel_guc_fw.h"
 #include "intel_guc_fwif.h"
 #include "intel_guc_ct.h"
+#include "intel_guc_hwconfig.h"
 #include "intel_guc_log.h"
 #include "intel_guc_reg.h"
 #include "intel_guc_slpc_types.h"
@@ -37,6 +38,8 @@ struct intel_guc {
 	struct intel_guc_ct ct;
 	/** @slpc: sub-structure containing SLPC related data and objects */
 	struct intel_guc_slpc slpc;
+	/** @hwconfig: hardware configuration KLV table */
+	struct intel_guc_hwconfig hwconfig;
 
 	/** @sched_engine: Global engine used to submit requests to GuC */
 	struct i915_sched_engine *sched_engine;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
new file mode 100644
index 000000000000..ce6088f112d4
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include "gt/intel_gt.h"
+#include "i915_drv.h"
+#include "i915_memcpy.h"
+#include "intel_guc_hwconfig.h"
+
+static inline struct intel_guc *hwconfig_to_guc(struct intel_guc_hwconfig *hwconfig)
+{
+	return container_of(hwconfig, struct intel_guc, hwconfig);
+}
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
+static int __guc_action_get_hwconfig(struct intel_guc_hwconfig *hwconfig,
+				     u32 ggtt_offset, u32 ggtt_size)
+{
+	struct intel_guc *guc = hwconfig_to_guc(hwconfig);
+	u32 action[] = {
+		INTEL_GUC_ACTION_GET_HWCONFIG,
+		ggtt_offset,
+		0, /* upper 32 bits of address */
+		ggtt_size,
+	};
+	int ret;
+
+	ret = intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
+	if (ret == -ENXIO)
+		return -ENOENT;
+
+	if (!ggtt_size && !ret)
+		ret = -EINVAL;
+
+	return ret;
+}
+
+static int guc_hwconfig_discover_size(struct intel_guc_hwconfig *hwconfig)
+{
+	int ret;
+
+	/* Sending a query with too small a table will return the size of the table */
+	ret = __guc_action_get_hwconfig(hwconfig, 0, 0);
+	if (ret < 0)
+		return ret;
+
+	hwconfig->size = ret;
+	return 0;
+}
+
+static int guc_hwconfig_fill_buffer(struct intel_guc_hwconfig *hwconfig)
+{
+	struct intel_guc *guc = hwconfig_to_guc(hwconfig);
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
+	ret = __guc_action_get_hwconfig(hwconfig, ggtt_offset, hwconfig->size);
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
+ * intel_guc_hwconfig_fini - Finalize the HWConfig
+ *
+ * Free up the memory allocation holding the table.
+ */
+void intel_guc_hwconfig_fini(struct intel_guc_hwconfig *hwconfig)
+{
+	kfree(hwconfig->ptr);
+	hwconfig->size = 0;
+	hwconfig->ptr = NULL;
+}
+
+/**
+ * intel_guc_hwconfig_init - Initialize the HWConfig
+ *
+ * Retrieve the HWConfig table from the GuC and save it away in a local memory
+ * allocation. It can then be queried on demand by other users later on.
+ */
+int intel_guc_hwconfig_init(struct intel_guc_hwconfig *hwconfig)
+{
+	struct intel_guc *guc = hwconfig_to_guc(hwconfig);
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	int ret;
+
+	if (!has_table(i915))
+		return 0;
+
+	ret = guc_hwconfig_discover_size(hwconfig);
+	if (ret)
+		return ret;
+
+	hwconfig->ptr = kmalloc(hwconfig->size, GFP_KERNEL);
+	if (!hwconfig->ptr) {
+		hwconfig->size = 0;
+		return -ENOMEM;
+	}
+
+	ret = guc_hwconfig_fill_buffer(hwconfig);
+	if (ret < 0) {
+		intel_guc_hwconfig_fini(hwconfig);
+		return ret;
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.h
new file mode 100644
index 000000000000..fdd7f0d6e938
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef _INTEL_GUC_HWCONFIG_H_
+#define _INTEL_GUC_HWCONFIG_H_
+
+#include <linux/types.h>
+
+struct intel_guc_hwconfig {
+	u32 size;
+	void *ptr;
+};
+
+int intel_guc_hwconfig_init(struct intel_guc_hwconfig *hwconfig);
+void intel_guc_hwconfig_fini(struct intel_guc_hwconfig *hwconfig);
+
+#endif /* _INTEL_GUC_HWCONFIG_H_ */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 09ed29df67bc..d045ff6d4d63 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -489,6 +489,10 @@ static int __uc_init_hw(struct intel_uc *uc)
 	if (ret)
 		goto err_log_capture;
 
+	ret = intel_guc_hwconfig_init(&guc->hwconfig);
+	if (ret)
+		drm_err(&i915->drm, "Failed to retrieve hwconfig table: %d\n", ret);
+
 	ret = guc_enable_communication(guc);
 	if (ret)
 		goto err_log_capture;
@@ -562,6 +566,8 @@ static void __uc_fini_hw(struct intel_uc *uc)
 	if (intel_uc_uses_guc_submission(uc))
 		intel_guc_submission_disable(guc);
 
+	intel_guc_hwconfig_fini(&guc->hwconfig);
+
 	__uc_sanitize(uc);
 }
 
-- 
2.34.1

