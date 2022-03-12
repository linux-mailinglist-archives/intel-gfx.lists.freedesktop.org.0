Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C85A34D6B52
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Mar 2022 01:11:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 818F410E0D8;
	Sat, 12 Mar 2022 00:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5693410E059
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Mar 2022 00:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647043880; x=1678579880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kSOnXQtUqH1VtDn1az1ZAoaka4zq+hKDBExOyfoKEIc=;
 b=QOyde8bC+Iui6gsHx3eejHAjNBswI+b0kscSnyE1SeQza+vMloKKvXLd
 jvYrsdByEOaIhmWpoXwtx/CTr7gLr9VN1hKh+5DX/UkGjGnOt4sUR0ZaG
 rkZP8FCtMSzaXRYiqQ0xzn5qr7Wuou92ES3FEEcSxobWB2eCfKEB0UTY6
 Lx03MOzGwKaNy/haSyo/X7NLnffXTGcEdCOpR8VlJ5jROGrqswEVaetOY
 43RP991cA5vH2+4yO9hEsmAYadJ8lKxhu/yQEJHLgH2a4l75PZx6NxrNw
 5WyANXXAhjY+qf63A5Sv4T5gv8hhUGmrX7dk/Go0zrX5AjkO9zJjzbFiZ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="316399847"
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="316399847"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 16:11:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="514681543"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 11 Mar 2022 16:11:19 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 16:13:31 -0800
Message-Id: <20220312001344.1314090-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220312001344.1314090-1-alan.previn.teres.alexis@intel.com>
References: <20220312001344.1314090-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 01/13] drm/i915/guc: Update GuC ADS size for
 error capture lists
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update GuC ADS size allocation to include space for
the lists of error state capture register descriptors.

Then, populate GuC ADS with the lists of registers we want
GuC to report back to host on engine reset events. This list
should include global, engine-class and engine-instance
registers for every engine-class type on the current hardware.

Ensure we allocate a persistent store for the register lists
that are populated into ADS so that we don't need to allocate
memory during GT resets when GuC is reloaded and ADS population
happens again.

NOTE: Start with a sample static table of register lists to
layout the framework before adding real registers in subsequent
patch. This static register tables are a different format from
the ADS populated list.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |  91 +++++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  13 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   9 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    | 125 +++++-
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 374 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |  22 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   8 +
 8 files changed, 626 insertions(+), 17 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 1a771ee5b1d0..69ada3b90a2c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -184,6 +184,7 @@ i915-y += gt/uc/intel_uc.o \
 	  gt/uc/intel_uc_fw.o \
 	  gt/uc/intel_guc.o \
 	  gt/uc/intel_guc_ads.o \
+	  gt/uc/intel_guc_capture.o \
 	  gt/uc/intel_guc_ct.o \
 	  gt/uc/intel_guc_debugfs.o \
 	  gt/uc/intel_guc_fw.o \
diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
new file mode 100644
index 000000000000..919ed985f09a
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
@@ -0,0 +1,91 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021-2022 Intel Corporation
+ */
+
+#ifndef _INTEL_GUC_CAPTURE_FWIF_H
+#define _INTEL_GUC_CAPTURE_FWIF_H
+
+#include <linux/types.h>
+#include "intel_guc_fwif.h"
+
+struct intel_guc;
+struct file;
+
+/**
+ * struct guc_debug_capture_list_header / struct guc_debug_capture_list
+ *
+ * As part of ADS registration, these header structures (followed by
+ * an array of 'struct guc_mmio_reg' entries) are used to register with
+ * GuC microkernel the list of registers we want it to dump out prior
+ * to a engine reset.
+ */
+struct guc_debug_capture_list_header {
+	u32 info;
+#define GUC_CAPTURELISTHDR_NUMDESCR GENMASK(15, 0)
+} __packed;
+
+struct guc_debug_capture_list {
+	struct guc_debug_capture_list_header header;
+	struct guc_mmio_reg regs[0];
+} __packed;
+
+/**
+ * struct __guc_mmio_reg_descr / struct __guc_mmio_reg_descr_group
+ *
+ * intel_guc_capture module uses these structures to maintain static
+ * tables (per unique platform) that consists of lists of registers
+ * (offsets, names, flags,...) that are used at the ADS regisration
+ * time as well as during runtime processing and reporting of error-
+ * capture states generated by GuC just prior to engine reset events.
+ */
+struct __guc_mmio_reg_descr {
+	i915_reg_t reg;
+	u32 flags;
+	u32 mask;
+	const char *regname;
+};
+
+struct __guc_mmio_reg_descr_group {
+	const struct __guc_mmio_reg_descr *list;
+	u32 num_regs;
+	u32 owner; /* see enum guc_capture_owner */
+	u32 type; /* see enum guc_capture_type */
+	u32 engine; /* as per MAX_ENGINE_CLASS */
+};
+
+/**
+ * struct __guc_capture_ads_cache
+ *
+ * A structure to cache register lists that were populated and registered
+ * with GuC at startup during ADS registration. This allows much quicker
+ * GuC resets without re-parsing all the tables for the given gt.
+ */
+struct __guc_capture_ads_cache {
+	bool is_valid;
+	void *ptr;
+	size_t size;
+	int status;
+};
+
+/**
+ * struct intel_guc_state_capture
+ *
+ * Internal context of the intel_guc_capture module.
+ */
+struct intel_guc_state_capture {
+	/**
+	 * @reglists: static table of register lists used for error-capture state.
+	 */
+	const struct __guc_mmio_reg_descr_group *reglists;
+
+	/**
+	 * @ads_cache: cached register lists that is ADS format ready
+	 */
+	struct __guc_capture_ads_cache ads_cache[GUC_CAPTURE_LIST_INDEX_MAX]
+						[GUC_CAPTURE_LIST_TYPE_MAX]
+						[GUC_MAX_ENGINE_CLASSES];
+	void *ads_null_cache;
+};
+
+#endif /* _INTEL_GUC_CAPTURE_FWIF_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 447a976c9f25..cda7e4bb8bac 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -9,8 +9,9 @@
 #include "gt/intel_gt_pm_irq.h"
 #include "gt/intel_gt_regs.h"
 #include "intel_guc.h"
-#include "intel_guc_slpc.h"
 #include "intel_guc_ads.h"
+#include "intel_guc_capture.h"
+#include "intel_guc_slpc.h"
 #include "intel_guc_submission.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
@@ -362,9 +363,14 @@ int intel_guc_init(struct intel_guc *guc)
 	if (ret)
 		goto err_fw;
 
-	ret = intel_guc_ads_create(guc);
+	ret = intel_guc_capture_init(guc);
 	if (ret)
 		goto err_log;
+
+	ret = intel_guc_ads_create(guc);
+	if (ret)
+		goto err_capture;
+
 	GEM_BUG_ON(!guc->ads_vma);
 
 	ret = intel_guc_ct_init(&guc->ct);
@@ -403,6 +409,8 @@ int intel_guc_init(struct intel_guc *guc)
 	intel_guc_ct_fini(&guc->ct);
 err_ads:
 	intel_guc_ads_destroy(guc);
+err_capture:
+	intel_guc_capture_destroy(guc);
 err_log:
 	intel_guc_log_destroy(&guc->log);
 err_fw:
@@ -430,6 +438,7 @@ void intel_guc_fini(struct intel_guc *guc)
 	intel_guc_ct_fini(&guc->ct);
 
 	intel_guc_ads_destroy(guc);
+	intel_guc_capture_destroy(guc);
 	intel_guc_log_destroy(&guc->log);
 	intel_uc_fw_fini(&guc->fw);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index bf7079480d47..f23657190783 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -10,18 +10,19 @@
 #include <linux/iosys-map.h>
 #include <linux/xarray.h>
 
-#include "intel_uncore.h"
+#include "intel_guc_ct.h"
 #include "intel_guc_fw.h"
 #include "intel_guc_fwif.h"
-#include "intel_guc_ct.h"
 #include "intel_guc_log.h"
 #include "intel_guc_reg.h"
 #include "intel_guc_slpc_types.h"
 #include "intel_uc_fw.h"
+#include "intel_uncore.h"
 #include "i915_utils.h"
 #include "i915_vma.h"
 
 struct __guc_ads_blob;
+struct intel_guc_state_capture;
 
 /**
  * struct intel_guc - Top level structure of GuC.
@@ -38,6 +39,8 @@ struct intel_guc {
 	struct intel_guc_ct ct;
 	/** @slpc: sub-structure containing SLPC related data and objects */
 	struct intel_guc_slpc slpc;
+	/** @capture: the error-state-capture module's data and objects */
+	struct intel_guc_state_capture *capture;
 
 	/** @sched_engine: Global engine used to submit requests to GuC */
 	struct i915_sched_engine *sched_engine;
@@ -160,6 +163,8 @@ struct intel_guc {
 	struct guc_mmio_reg *ads_regset;
 	/** @ads_golden_ctxt_size: size of the golden contexts in the ADS */
 	u32 ads_golden_ctxt_size;
+	/** @ads_capture_size: size of register lists in the ADS used for error capture */
+	u32 ads_capture_size;
 	/** @ads_engine_usage_size: size of engine usage in the ADS */
 	u32 ads_engine_usage_size;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 9bb551b83e7a..a6f799d57219 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -11,6 +11,7 @@
 #include "gt/intel_lrc.h"
 #include "gt/shmem_utils.h"
 #include "intel_guc_ads.h"
+#include "intel_guc_capture.h"
 #include "intel_guc_fwif.h"
 #include "intel_uc.h"
 #include "i915_drv.h"
@@ -86,8 +87,7 @@ static u32 guc_ads_golden_ctxt_size(struct intel_guc *guc)
 
 static u32 guc_ads_capture_size(struct intel_guc *guc)
 {
-	/* FIXME: Allocate a proper capture list */
-	return PAGE_ALIGN(PAGE_SIZE);
+	return PAGE_ALIGN(guc->ads_capture_size);
 }
 
 static u32 guc_ads_private_data_size(struct intel_guc *guc)
@@ -589,24 +589,117 @@ static void guc_init_golden_context(struct intel_guc *guc)
 	GEM_BUG_ON(guc->ads_golden_ctxt_size != total_size);
 }
 
-static void guc_capture_list_init(struct intel_guc *guc)
+static int
+guc_capture_prep_lists(struct intel_guc *guc)
 {
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	u32 ads_ggtt, capture_offset, null_ggtt, total_size = 0;
+	struct guc_gt_system_info local_info;
+	struct iosys_map info_map;
+	bool ads_is_mapped;
+	size_t size = 0;
+	void *ptr;
 	int i, j;
-	u32 addr_ggtt, offset;
 
-	offset = guc_ads_capture_offset(guc);
-	addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
+	ads_is_mapped = !iosys_map_is_null(&guc->ads_map);
+	if (ads_is_mapped) {
+		capture_offset = guc_ads_capture_offset(guc);
+		ads_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma);
+		info_map = IOSYS_MAP_INIT_OFFSET(&guc->ads_map,
+						 offsetof(struct __guc_ads_blob, system_info));
+	} else {
+		memset(&local_info, 0, sizeof(local_info));
+		iosys_map_set_vaddr(&info_map, &local_info);
+		fill_engine_enable_masks(gt, &info_map);
+	}
 
-	/* FIXME: Populate a proper capture list */
+	/* first, set aside the first page for a capture_list with zero descriptors */
+	total_size = PAGE_SIZE;
+	if (ads_is_mapped) {
+		if (!intel_guc_capture_getnullheader(guc, &ptr, &size))
+			iosys_map_memcpy_to(&guc->ads_map, capture_offset, ptr, size);
+		null_ggtt = ads_ggtt + capture_offset;
+		capture_offset += PAGE_SIZE;
+	}
 
 	for (i = 0; i < GUC_CAPTURE_LIST_INDEX_MAX; i++) {
 		for (j = 0; j < GUC_MAX_ENGINE_CLASSES; j++) {
-			ads_blob_write(guc, ads.capture_instance[i][j], addr_ggtt);
-			ads_blob_write(guc, ads.capture_class[i][j], addr_ggtt);
-		}
 
-		ads_blob_write(guc, ads.capture_global[i], addr_ggtt);
+			/* null list if we dont have said engine or list */
+			if (!info_map_read(&info_map, engine_enabled_masks[j])) {
+				if (ads_is_mapped) {
+					ads_blob_write(guc, ads.capture_class[i][j], null_ggtt);
+					ads_blob_write(guc, ads.capture_instance[i][j], null_ggtt);
+				}
+				continue;
+			}
+			if (intel_guc_capture_getlistsize(guc, i,
+							  GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
+							  j, &size)) {
+				if (ads_is_mapped)
+					ads_blob_write(guc, ads.capture_class[i][j], null_ggtt);
+				goto engine_instance_list;
+			}
+			total_size += size;
+			if (ads_is_mapped) {
+				if (total_size > guc->ads_capture_size ||
+				    intel_guc_capture_getlist(guc, i,
+							      GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
+							      j, &ptr)) {
+					ads_blob_write(guc, ads.capture_class[i][j], null_ggtt);
+					continue;
+				}
+				ads_blob_write(guc, ads.capture_class[i][j], ads_ggtt + capture_offset);
+				iosys_map_memcpy_to(&guc->ads_map, capture_offset, ptr, size);
+				capture_offset += size;
+			}
+engine_instance_list:
+			if (intel_guc_capture_getlistsize(guc, i,
+							  GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
+							  j, &size)) {
+				if (ads_is_mapped)
+					ads_blob_write(guc, ads.capture_instance[i][j], null_ggtt);
+				continue;
+			}
+			total_size += size;
+			if (ads_is_mapped) {
+				if (total_size > guc->ads_capture_size ||
+				    intel_guc_capture_getlist(guc, i,
+							      GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
+							      j, &ptr)) {
+					ads_blob_write(guc, ads.capture_instance[i][j], null_ggtt);
+					continue;
+				}
+				ads_blob_write(guc, ads.capture_instance[i][j], ads_ggtt + capture_offset);
+				iosys_map_memcpy_to(&guc->ads_map, capture_offset, ptr, size);
+				capture_offset += size;
+			}
+		}
+		if (intel_guc_capture_getlistsize(guc, i, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &size)) {
+			if (ads_is_mapped)
+				ads_blob_write(guc, ads.capture_global[i], null_ggtt);
+			continue;
+		}
+		total_size += size;
+		if (ads_is_mapped) {
+			if (total_size > guc->ads_capture_size ||
+			    intel_guc_capture_getlist(guc, i, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0,
+						      &ptr)) {
+				ads_blob_write(guc, ads.capture_global[i], null_ggtt);
+				continue;
+			}
+			ads_blob_write(guc, ads.capture_global[i], ads_ggtt + capture_offset);
+			iosys_map_memcpy_to(&guc->ads_map, capture_offset, ptr, size);
+			capture_offset += size;
+		}
 	}
+
+	if (guc->ads_capture_size && guc->ads_capture_size != PAGE_ALIGN(total_size))
+		drm_warn(&i915->drm, "GuC->ADS->Capture alloc size changed from %d to %d\n",
+			 guc->ads_capture_size, PAGE_ALIGN(total_size));
+
+	return PAGE_ALIGN(total_size);
 }
 
 static void __guc_ads_init(struct intel_guc *guc)
@@ -644,8 +737,8 @@ static void __guc_ads_init(struct intel_guc *guc)
 
 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
 
-	/* Capture list for hang debug */
-	guc_capture_list_init(guc);
+	/* Lists for error capture debug */
+	guc_capture_prep_lists(guc);
 
 	/* ADS */
 	ads_blob_write(guc, ads.scheduler_policies, base +
@@ -693,6 +786,12 @@ int intel_guc_ads_create(struct intel_guc *guc)
 		return ret;
 	guc->ads_golden_ctxt_size = ret;
 
+	/* Likewise the capture lists: */
+	ret = guc_capture_prep_lists(guc);
+	if (ret < 0)
+		return ret;
+	guc->ads_capture_size = ret;
+
 	/* Now the total size can be determined: */
 	size = guc_ads_blob_size(guc);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
new file mode 100644
index 000000000000..b8bbde01e5b1
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -0,0 +1,374 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021-2022 Intel Corporation
+ */
+
+#include <linux/types.h>
+
+#include <drm/drm_print.h>
+
+#include "gt/intel_engine_regs.h"
+#include "gt/intel_gt.h"
+#include "gt/intel_gt_regs.h"
+#include "guc_capture_fwif.h"
+#include "intel_guc_capture.h"
+#include "intel_guc_fwif.h"
+#include "i915_drv.h"
+#include "i915_memcpy.h"
+#include "i915_reg.h"
+
+/*
+ * Define all device tables of GuC error capture register lists
+ * NOTE: For engine-registers, GuC only needs the register offsets
+ *       from the engine-mmio-base
+ */
+/* XE_LPD - Global */
+static const struct __guc_mmio_reg_descr xe_lpd_global_regs[] = {
+	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}
+};
+
+/* XE_LPD - Render / Compute Per-Class */
+static const struct __guc_mmio_reg_descr xe_lpd_rc_class_regs[] = {
+	{EIR,                      0,      0, "EIR"}
+};
+
+/* XE_LPD - Render / Compute Per-Engine-Instance */
+static const struct __guc_mmio_reg_descr xe_lpd_rc_inst_regs[] = {
+	{RING_HEAD(0),             0,      0, "RING_HEAD"},
+	{RING_TAIL(0),             0,      0, "RING_TAIL"},
+};
+
+/* XE_LPD - Media Decode/Encode Per-Class */
+static const struct __guc_mmio_reg_descr xe_lpd_vd_class_regs[] = {
+};
+
+/* XE_LPD - Media Decode/Encode Per-Engine-Instance */
+static const struct __guc_mmio_reg_descr xe_lpd_vd_inst_regs[] = {
+	{RING_HEAD(0),             0,      0, "RING_HEAD"},
+	{RING_TAIL(0),             0,      0, "RING_TAIL"},
+};
+
+/* XE_LPD - Video Enhancement Per-Class */
+static const struct __guc_mmio_reg_descr xe_lpd_vec_class_regs[] = {
+};
+
+/* XE_LPD - Video Enhancement Per-Engine-Instance */
+static const struct __guc_mmio_reg_descr xe_lpd_vec_inst_regs[] = {
+	{RING_HEAD(0),             0,      0, "RING_HEAD"},
+	{RING_TAIL(0),             0,      0, "RING_TAIL"},
+};
+
+#define TO_GCAP_DEF_OWNER(x) (GUC_CAPTURE_LIST_INDEX_##x)
+#define TO_GCAP_DEF_TYPE(x) (GUC_CAPTURE_LIST_TYPE_##x)
+#define MAKE_REGLIST(regslist, regsowner, regstype, class) \
+	{ \
+		regslist, \
+		ARRAY_SIZE(regslist), \
+		TO_GCAP_DEF_OWNER(regsowner), \
+		TO_GCAP_DEF_TYPE(regstype), \
+		class, \
+	}
+
+/* List of lists */
+static const struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
+	MAKE_REGLIST(xe_lpd_global_regs, PF, GLOBAL, 0),
+	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
+	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
+	MAKE_REGLIST(xe_lpd_vd_class_regs, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
+	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
+	MAKE_REGLIST(xe_lpd_vec_class_regs, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
+	MAKE_REGLIST(xe_lpd_vec_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEOENHANCE_CLASS),
+	{}
+};
+
+static const struct __guc_mmio_reg_descr_group *
+guc_capture_get_device_reglist(struct intel_guc *guc)
+{
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+
+	if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915) ||
+	    IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) {
+		return xe_lpd_lists;
+	}
+
+	return NULL;
+}
+
+static const struct __guc_mmio_reg_descr_group *
+guc_capture_get_one_list(const struct __guc_mmio_reg_descr_group *reglists,
+			 u32 owner, u32 type, u32 id)
+{
+	int i;
+
+	if (!reglists)
+		return NULL;
+
+	for (i = 0; reglists[i].list; ++i) {
+		if (reglists[i].owner == owner && reglists[i].type == type &&
+		    (reglists[i].engine == id || reglists[i].type == GUC_CAPTURE_LIST_TYPE_GLOBAL))
+		return &reglists[i];
+	}
+
+	return NULL;
+}
+
+static const char *
+__stringify_owner(u32 owner)
+{
+	switch (owner) {
+	case GUC_CAPTURE_LIST_INDEX_PF:
+		return "PF";
+	case GUC_CAPTURE_LIST_INDEX_VF:
+		return "VF";
+	default:
+		return "unknown";
+	}
+
+	return "";
+}
+
+static const char *
+__stringify_type(u32 type)
+{
+	switch (type) {
+	case GUC_CAPTURE_LIST_TYPE_GLOBAL:
+		return "Global";
+	case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
+		return "Class";
+	case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
+		return "Instance";
+	default:
+		return "unknown";
+	}
+
+	return "";
+}
+
+static const char *
+__stringify_engclass(u32 class)
+{
+	switch (class) {
+	case GUC_RENDER_CLASS:
+		return "Render";
+	case GUC_VIDEO_CLASS:
+		return "Video";
+	case GUC_VIDEOENHANCE_CLASS:
+		return "VideoEnhance";
+	case GUC_BLITTER_CLASS:
+		return "Blitter";
+	case GUC_COMPUTE_CLASS:
+		return "Compute";
+	default:
+		return "unknown";
+	}
+
+	return "";
+}
+
+static void
+guc_capture_warn_with_list_info(struct drm_i915_private *i915, char *msg,
+				u32 owner, u32 type, u32 classid)
+{
+	if (type == GUC_CAPTURE_LIST_TYPE_GLOBAL)
+		drm_dbg(&i915->drm, "GuC-capture: %s for %s %s-Registers.\n", msg,
+			__stringify_owner(owner), __stringify_type(type));
+	else
+		drm_dbg(&i915->drm, "GuC-capture: %s for %s %s-Registers on %s-Engine\n", msg,
+			__stringify_owner(owner), __stringify_type(type),
+			__stringify_engclass(classid));
+}
+
+static int
+guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
+		      struct guc_mmio_reg *ptr, u16 num_entries)
+{
+	u32 i = 0;
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	const struct __guc_mmio_reg_descr_group *reglists = guc->capture->reglists;
+	const struct __guc_mmio_reg_descr_group *match;
+
+	if (!reglists)
+		return -ENODEV;
+
+	match = guc_capture_get_one_list(reglists, owner, type, classid);
+	if (match) {
+		for (i = 0; i < num_entries && i < match->num_regs; ++i) {
+			ptr[i].offset = match->list[i].reg.reg;
+			ptr[i].value = 0xDEADF00D;
+			ptr[i].flags = match->list[i].flags;
+			ptr[i].mask = match->list[i].mask;
+		}
+		return 0;
+	}
+
+	guc_capture_warn_with_list_info(i915, "Missing register list init", owner, type,
+					classid);
+
+	return -ENODATA;
+}
+
+static int
+guc_cap_list_num_regs(struct intel_guc_state_capture *gc, u32 owner, u32 type, u32 classid)
+{
+	const struct __guc_mmio_reg_descr_group *match;
+
+	match = guc_capture_get_one_list(gc->reglists, owner, type, classid);
+	if (!match)
+		return 0;
+
+	return match->num_regs;
+}
+
+int
+intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
+			      size_t *size)
+{
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	struct intel_guc_state_capture *gc = guc->capture;
+	struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
+	int num_regs;
+
+	if (!gc->reglists)
+		return -ENODEV;
+
+	if (cache->is_valid) {
+		*size = cache->size;
+		return cache->status;
+	}
+
+	num_regs = guc_cap_list_num_regs(gc, owner, type, classid);
+	if (!num_regs) {
+		guc_capture_warn_with_list_info(i915, "Missing register list size",
+						owner, type, classid);
+		return -ENODATA;
+	}
+
+	*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
+			   (num_regs * sizeof(struct guc_mmio_reg)));
+
+	return 0;
+}
+
+int
+intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
+			  void **outptr)
+{
+	struct intel_guc_state_capture *gc = guc->capture;
+	struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	struct guc_debug_capture_list *listnode;
+	int ret, num_regs;
+	u8 *caplist, *tmp;
+	size_t size = 0;
+
+	if (!gc->reglists)
+		return -ENODEV;
+
+	if (cache->is_valid) {
+		*outptr = cache->ptr;
+		return cache->status;
+	}
+
+	ret = intel_guc_capture_getlistsize(guc, owner, type, classid, &size);
+	if (ret) {
+		cache->is_valid = true;
+		cache->ptr = NULL;
+		cache->size = 0;
+		cache->status = ret;
+		return ret;
+	}
+
+	caplist = kzalloc(size, GFP_KERNEL);
+	if (!caplist) {
+		drm_dbg(&i915->drm, "GuC-capture: failed to alloc cached caplist");
+		return -ENOMEM;
+	}
+
+	/* populate capture list header */
+	tmp = caplist;
+	num_regs = guc_cap_list_num_regs(guc->capture, owner, type, classid);
+	listnode = (struct guc_debug_capture_list *)tmp;
+	listnode->header.info = FIELD_PREP(GUC_CAPTURELISTHDR_NUMDESCR, (u32)num_regs);
+
+	/* populate list of register descriptor */
+	tmp += sizeof(struct guc_debug_capture_list);
+	guc_capture_list_init(guc, owner, type, classid, (struct guc_mmio_reg *)tmp, num_regs);
+
+	/* cache this list */
+	cache->is_valid = true;
+	cache->ptr = caplist;
+	cache->size = size;
+	cache->status = 0;
+
+	*outptr = caplist;
+
+	return 0;
+}
+
+int
+intel_guc_capture_getnullheader(struct intel_guc *guc,
+				void **outptr, size_t *size)
+{
+	struct intel_guc_state_capture *gc = guc->capture;
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	int tmp = sizeof(u32) * 4;
+	void *null_header;
+
+	if (gc->ads_null_cache) {
+		*outptr = gc->ads_null_cache;
+		*size = tmp;
+		return 0;
+	}
+
+	null_header = kzalloc(tmp, GFP_KERNEL);
+	if (!null_header) {
+		drm_dbg(&i915->drm, "GuC-capture: failed to alloc cached nulllist");
+		return -ENOMEM;
+	}
+
+	gc->ads_null_cache = null_header;
+	*outptr = null_header;
+	*size = tmp;
+
+	return 0;
+}
+
+static void
+guc_capture_free_ads_cache(struct intel_guc_state_capture *gc)
+{
+	int i, j, k;
+	struct __guc_capture_ads_cache *cache;
+
+	for (i = 0; i < GUC_CAPTURE_LIST_INDEX_MAX; ++i) {
+		for (j = 0; j < GUC_CAPTURE_LIST_TYPE_MAX; ++j) {
+			for (k = 0; k < GUC_MAX_ENGINE_CLASSES; ++k) {
+				cache = &gc->ads_cache[i][j][k];
+				if (cache->is_valid)
+					kfree(cache->ptr);
+			}
+		}
+	}
+	kfree(gc->ads_null_cache);
+}
+
+void intel_guc_capture_destroy(struct intel_guc *guc)
+{
+	if (!guc->capture)
+		return;
+
+	guc_capture_free_ads_cache(guc->capture);
+
+	kfree(guc->capture);
+	guc->capture = NULL;
+}
+
+int intel_guc_capture_init(struct intel_guc *guc)
+{
+	guc->capture = kzalloc(sizeof(*guc->capture), GFP_KERNEL);
+	if (!guc->capture)
+		return -ENOMEM;
+
+	guc->capture->reglists = guc_capture_get_device_reglist(guc);
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
new file mode 100644
index 000000000000..8de7704e12eb
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021-2021 Intel Corporation
+ */
+
+#ifndef _INTEL_GUC_CAPTURE_H
+#define _INTEL_GUC_CAPTURE_H
+
+#include <linux/types.h>
+
+struct guc_gt_system_info;
+struct intel_guc;
+
+int intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
+			      void **outptr);
+int intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
+				  size_t *size);
+int intel_guc_capture_getnullheader(struct intel_guc *guc, void **outptr, size_t *size);
+void intel_guc_capture_destroy(struct intel_guc *guc);
+int intel_guc_capture_init(struct intel_guc *guc);
+
+#endif /* _INTEL_GUC_CAPTURE_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 4b300b6cc0f9..82a7757c112f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -311,6 +311,14 @@ enum {
 	GUC_CAPTURE_LIST_INDEX_MAX = 2,
 };
 
+/*Register-types of GuC capture register lists */
+enum guc_capture_type {
+	GUC_CAPTURE_LIST_TYPE_GLOBAL = 0,
+	GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
+	GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
+	GUC_CAPTURE_LIST_TYPE_MAX,
+};
+
 /* GuC Additional Data Struct */
 struct guc_ads {
 	struct guc_mmio_reg_set reg_state_list[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
-- 
2.25.1

