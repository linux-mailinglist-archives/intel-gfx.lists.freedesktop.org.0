Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CD045982D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 00:03:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9DDD89F38;
	Mon, 22 Nov 2021 23:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0787889ECD
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 23:02:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="215612618"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="215612618"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 15:02:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="674237062"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 22 Nov 2021 15:02:51 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 15:03:57 -0800
Message-Id: <20211122230402.2023576-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/7] drm/i915/guc: Update GuC ADS size for error
 capture lists
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

Also, populate the lists of registers we want GuC to report back to
Host on engine reset events. This list should include global,
engine-class and engine-instance registers for every engine-class
type on the current hardware.

NOTE: Start with a fake table of register lists to layout the
framework before adding real registers in subsequent patch.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  10 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   5 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    | 176 ++++++++++++-
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 232 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |  47 ++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  19 +-
 7 files changed, 476 insertions(+), 14 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 074d6b8edd23..e3c4d5cea4c3 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -190,6 +190,7 @@ i915-y += gt/uc/intel_uc.o \
 	  gt/uc/intel_guc_rc.o \
 	  gt/uc/intel_guc_slpc.o \
 	  gt/uc/intel_guc_submission.o \
+	  gt/uc/intel_guc_capture.o \
 	  gt/uc/intel_huc.o \
 	  gt/uc/intel_huc_debugfs.o \
 	  gt/uc/intel_huc_fw.o
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 5cf9ebd2ee55..458f0d248a5a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -335,9 +335,14 @@ int intel_guc_init(struct intel_guc *guc)
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
@@ -376,6 +381,8 @@ int intel_guc_init(struct intel_guc *guc)
 	intel_guc_ct_fini(&guc->ct);
 err_ads:
 	intel_guc_ads_destroy(guc);
+err_capture:
+	intel_guc_capture_destroy(guc);
 err_log:
 	intel_guc_log_destroy(&guc->log);
 err_fw:
@@ -403,6 +410,7 @@ void intel_guc_fini(struct intel_guc *guc)
 	intel_guc_ct_fini(&guc->ct);
 
 	intel_guc_ads_destroy(guc);
+	intel_guc_capture_destroy(guc);
 	intel_guc_log_destroy(&guc->log);
 	intel_uc_fw_fini(&guc->fw);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 9de99772f916..d136c69abe12 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -16,6 +16,7 @@
 #include "intel_guc_log.h"
 #include "intel_guc_reg.h"
 #include "intel_guc_slpc_types.h"
+#include "intel_guc_capture.h"
 #include "intel_uc_fw.h"
 #include "i915_utils.h"
 #include "i915_vma.h"
@@ -37,6 +38,8 @@ struct intel_guc {
 	struct intel_guc_ct ct;
 	/** @slpc: sub-structure containing SLPC related data and objects */
 	struct intel_guc_slpc slpc;
+	/** @capture: the error-state-capture module's data and objects */
+	struct intel_guc_state_capture capture;
 
 	/** @sched_engine: Global engine used to submit requests to GuC */
 	struct i915_sched_engine *sched_engine;
@@ -138,6 +141,8 @@ struct intel_guc {
 	u32 ads_regset_size;
 	/** @ads_golden_ctxt_size: size of the golden contexts in the ADS */
 	u32 ads_golden_ctxt_size;
+	/** @ads_capture_size: size of register lists in the ADS used for error capture */
+	u32 ads_capture_size;
 	/** @ads_engine_usage_size: size of engine usage in the ADS */
 	u32 ads_engine_usage_size;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 6c81ddd303d3..2780c0fadd01 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -10,6 +10,7 @@
 #include "gt/shmem_utils.h"
 #include "intel_guc_ads.h"
 #include "intel_guc_fwif.h"
+#include "intel_guc_capture.h"
 #include "intel_uc.h"
 #include "i915_drv.h"
 
@@ -71,8 +72,7 @@ static u32 guc_ads_golden_ctxt_size(struct intel_guc *guc)
 
 static u32 guc_ads_capture_size(struct intel_guc *guc)
 {
-	/* Basic support to init ADS without a proper GuC error capture list */
-	return PAGE_ALIGN(PAGE_SIZE);
+	return PAGE_ALIGN(guc->ads_capture_size);
 }
 
 static u32 guc_ads_private_data_size(struct intel_guc *guc)
@@ -519,24 +519,170 @@ static void guc_init_golden_context(struct intel_guc *guc)
 	GEM_BUG_ON(guc->ads_golden_ctxt_size != total_size);
 }
 
-static void guc_capture_prep_lists(struct intel_guc *guc, struct __guc_ads_blob *blob)
+static int
+guc_fill_reglist(struct intel_guc *guc, struct __guc_ads_blob *blob, int vf, bool enabled,
+		 int classid, int type, char *typename, u16 *p_numregs, int newnum, u8 **p_virt_ptr,
+		 u32 *p_blobptr_to_ggtt, u32 *p_ggtt, u32 null_ggtt)
 {
-	int i, j;
-	u32 addr_ggtt, offset;
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	struct guc_debug_capture_list *listnode;
+	int size = 0;
 
-	offset = guc_ads_capture_offset(guc);
-	addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
+	if (blob && *p_numregs != newnum) {
+		if (type == GUC_CAPTURE_LIST_TYPE_GLOBAL)
+			drm_warn(&i915->drm, "Guc-Cap VF%d-%s num-reg mismatch was=%d now=%d!\n",
+				 vf, typename, *p_numregs, newnum);
+		else
+			drm_warn(&i915->drm, "Guc-Cap VF%d-Class-%d-%s num-reg mismatch was=%d now=%d!\n",
+				 vf, classid, typename, *p_numregs, newnum);
+	}
+	/*
+	 * For enabled capture lists, we not only need to call capture module to help
+	 * populate the list-descriptor into the correct ads capture structures, but
+	 * we also need to increment the virtual pointers and ggtt offsets so that
+	 * caller has the subsequent gfx memory location.
+	 */
+	*p_numregs = newnum;
+	size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
+			  (newnum * sizeof(struct guc_mmio_reg)));
+	/* if caller hasn't allocated ADS blob, return size and counts, we're done */
+	if (!blob)
+		return size;
+	if (blob) {
+		/* if caller allocated ADS blob, populate the capture register descriptors */
+		if (!newnum) {
+			*p_blobptr_to_ggtt = null_ggtt;
+		} else {
+			/* get ptr and populate header info: */
+			*p_blobptr_to_ggtt = *p_ggtt;
+			listnode = (struct guc_debug_capture_list *)*p_virt_ptr;
+			*p_ggtt += sizeof(struct guc_debug_capture_list);
+			*p_virt_ptr += sizeof(struct guc_debug_capture_list);
+			listnode->header.info = FIELD_PREP(GUC_CAPTURELISTHDR_NUMDESCR, *p_numregs);
+
+			/* get ptr and populate register descriptor list: */
+			intel_guc_capture_list_init(guc, vf, type, classid,
+						    (struct guc_mmio_reg *)*p_virt_ptr,
+						    *p_numregs);
+
+			/* increment ptrs for that header: */
+			*p_ggtt += size - sizeof(struct guc_debug_capture_list);
+			*p_virt_ptr += size - sizeof(struct guc_debug_capture_list);
+		}
+	}
+
+	return size;
+}
+
+static int guc_capture_prep_lists(struct intel_guc *guc, struct __guc_ads_blob *blob)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	int i, j, size;
+	u32 ggtt, null_ggtt, offset, alloc_size = 0;
+	struct guc_gt_system_info *info, local_info;
+	struct guc_debug_capture_list *listnode;
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	struct intel_guc_state_capture *gc = &guc->capture;
+	u16 tmp = 0;
+	u8 *ptr = NULL;
+
+	if (blob) {
+		offset = guc_ads_capture_offset(guc);
+		ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
+		ptr = ((u8 *)blob) + offset;
+		info = &blob->system_info;
+	} else {
+		memset(&local_info, 0, sizeof(local_info));
+		info = &local_info;
+		fill_engine_enable_masks(gt, info);
+	}
+
+	/* first, set aside the first page for a capture_list with zero descriptors */
+	alloc_size = PAGE_SIZE;
+	if (blob) {
+		listnode = (struct guc_debug_capture_list *)ptr;
+		listnode->header.info = FIELD_PREP(GUC_CAPTURELISTHDR_NUMDESCR, 0);
+		null_ggtt = ggtt;
+		ggtt += PAGE_SIZE;
+		ptr +=  PAGE_SIZE;
+	}
 
-	/* FIXME: Populate a proper capture list */
+#define COUNT_REGS intel_guc_capture_list_count
+#define FILL_REGS guc_fill_reglist
+#define TYPE_CLASS GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS
+#define TYPE_INSTANCE GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE
 
 	for (i = 0; i < GUC_CAPTURE_LIST_INDEX_MAX; i++) {
 		for (j = 0; j < GUC_MAX_ENGINE_CLASSES; j++) {
-			blob->ads.capture_instance[i][j] = addr_ggtt;
-			blob->ads.capture_class[i][j] = addr_ggtt;
+			if (!info->engine_enabled_masks[j]) {
+				if (gc->num_class_regs[i][j])
+					drm_warn(&i915->drm, "GuC-Cap VF%d-class-%d "
+						 "class regs valid mismatch was=%d now=%d!\n",
+						 i, j, gc->num_class_regs[i][j], tmp);
+				if (gc->num_instance_regs[i][j])
+					drm_warn(&i915->drm, "GuC-Cap VF%d-class-%d "
+						 "inst regs valid mismatch was=%d now=%d!\n",
+						 i, j, gc->num_instance_regs[i][j], tmp);
+				gc->num_class_regs[i][j] = 0;
+				gc->num_instance_regs[i][j] = 0;
+				if (blob) {
+					blob->ads.capture_class[i][j] = null_ggtt;
+					blob->ads.capture_instance[i][j] = null_ggtt;
+				}
+			} else {
+				if (!COUNT_REGS(guc, i, TYPE_CLASS,
+						guc_class_to_engine_class(j), &tmp)) {
+					size = FILL_REGS(guc, blob, i, true, j, TYPE_CLASS,
+							 "class", &gc->num_class_regs[i][j],
+							 tmp, &ptr,
+							 &blob->ads.capture_class[i][j],
+							 &ggtt, null_ggtt);
+					gc->class_list_size += size;
+					alloc_size += size;
+				} else {
+					gc->num_class_regs[i][j] = 0;
+					if (blob)
+						blob->ads.capture_class[i][j] = null_ggtt;
+				}
+				if (!COUNT_REGS(guc, i, TYPE_INSTANCE,
+						guc_class_to_engine_class(j), &tmp)) {
+					size = FILL_REGS(guc, blob, i, true, j, TYPE_INSTANCE,
+							 "instance", &gc->num_instance_regs[i][j],
+							 tmp, &ptr,
+							 &blob->ads.capture_instance[i][j],
+							 &ggtt, null_ggtt);
+					gc->instance_list_size += size;
+					alloc_size += size;
+				} else {
+					gc->num_instance_regs[i][j] = 0;
+					if (blob)
+						blob->ads.capture_instance[i][j] = null_ggtt;
+				}
+			}
+		}
+		if (!COUNT_REGS(guc, i, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp)) {
+			size = FILL_REGS(guc, blob, i, true, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL,
+					 "global", &gc->num_global_regs[i], tmp, &ptr,
+					 &blob->ads.capture_global[i], &ggtt, null_ggtt);
+			gc->global_list_size += size;
+			alloc_size += size;
+		} else {
+			gc->num_global_regs[i] = 0;
+			if (blob)
+				blob->ads.capture_global[i] = null_ggtt;
 		}
-
-		blob->ads.capture_global[i] = addr_ggtt;
 	}
+
+#undef COUNT_REGS
+#undef FILL_REGS
+#undef TYPE_CLASS
+#undef TYPE_INSTANCE
+
+	if (guc->ads_capture_size && guc->ads_capture_size != PAGE_ALIGN(alloc_size))
+		drm_warn(&i915->drm, "GuC->ADS->Capture alloc size changed from %d to %d\n",
+			 guc->ads_capture_size, PAGE_ALIGN(alloc_size));
+
+	return PAGE_ALIGN(alloc_size);
 }
 
 static void __guc_ads_init(struct intel_guc *guc)
@@ -614,6 +760,12 @@ int intel_guc_ads_create(struct intel_guc *guc)
 		return ret;
 	guc->ads_golden_ctxt_size = ret;
 
+	/* Likewise the capture lists: */
+	ret = guc_capture_prep_lists(guc, NULL);
+	if (ret < 0)
+		return ret;
+	guc->ads_capture_size = ret;
+
 	/* Now the total size can be determined: */
 	size = guc_ads_blob_size(guc);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
new file mode 100644
index 000000000000..c741c77b7fc8
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -0,0 +1,232 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021-2021 Intel Corporation
+ */
+
+#include <drm/drm_print.h>
+
+#include "i915_drv.h"
+#include "i915_drv.h"
+#include "i915_memcpy.h"
+#include "gt/intel_gt.h"
+
+#include "intel_guc_fwif.h"
+#include "intel_guc_capture.h"
+
+/* Define all device tables of GuC error capture register lists */
+
+/********************************* Gen12 LP  *********************************/
+/************** GLOBAL *************/
+struct __guc_mmio_reg_descr gen12lp_global_regs[] = {
+	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
+	/* Add additional register list */
+};
+
+/********** RENDER/COMPUTE *********/
+/* Per-Class */
+struct __guc_mmio_reg_descr gen12lp_rc_class_regs[] = {
+	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
+	/* Add additional register list */
+};
+
+/* Per-Engine-Instance */
+struct __guc_mmio_reg_descr gen12lp_rc_inst_regs[] = {
+	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
+	/* Add additional register list */
+};
+
+/************* MEDIA-VD ************/
+/* Per-Class */
+struct __guc_mmio_reg_descr gen12lp_vd_class_regs[] = {
+	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
+	/* Add additional register list */
+};
+
+/* Per-Engine-Instance */
+struct __guc_mmio_reg_descr gen12lp_vd_inst_regs[] = {
+	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
+	/* Add additional register list */
+};
+
+/************* MEDIA-VEC ***********/
+/* Per-Class */
+struct __guc_mmio_reg_descr gen12lp_vec_class_regs[] = {
+	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
+	/* Add additional register list */
+};
+
+/* Per-Engine-Instance */
+struct __guc_mmio_reg_descr gen12lp_vec_inst_regs[] = {
+	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
+	/* Add additional register list */
+};
+
+/********** List of lists **********/
+struct __guc_mmio_reg_descr_group gen12lp_lists[] = {
+	{
+		.list = gen12lp_global_regs,
+		.num_regs = (sizeof(gen12lp_global_regs) / sizeof(struct __guc_mmio_reg_descr)),
+		.owner = GUC_CAPTURE_LIST_INDEX_PF,
+		.type = GUC_CAPTURE_LIST_TYPE_GLOBAL,
+		.engine = 0
+	},
+	{
+		.list = gen12lp_rc_class_regs,
+		.num_regs = (sizeof(gen12lp_rc_class_regs) / sizeof(struct __guc_mmio_reg_descr)),
+		.owner = GUC_CAPTURE_LIST_INDEX_PF,
+		.type = GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
+		.engine = RENDER_CLASS
+	},
+	{
+		.list = gen12lp_rc_inst_regs,
+		.num_regs = (sizeof(gen12lp_rc_inst_regs) / sizeof(struct __guc_mmio_reg_descr)),
+		.owner = GUC_CAPTURE_LIST_INDEX_PF,
+		.type = GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
+		.engine = RENDER_CLASS
+	},
+	{
+		.list = gen12lp_vd_class_regs,
+		.num_regs = (sizeof(gen12lp_vd_class_regs) / sizeof(struct __guc_mmio_reg_descr)),
+		.owner = GUC_CAPTURE_LIST_INDEX_PF,
+		.type = GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
+		.engine = VIDEO_DECODE_CLASS
+	},
+	{
+		.list = gen12lp_vd_inst_regs,
+		.num_regs = (sizeof(gen12lp_vd_inst_regs) / sizeof(struct __guc_mmio_reg_descr)),
+		.owner = GUC_CAPTURE_LIST_INDEX_PF,
+		.type = GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
+		.engine = VIDEO_DECODE_CLASS
+	},
+	{
+		.list = gen12lp_vec_class_regs,
+		.num_regs = (sizeof(gen12lp_vec_class_regs) / sizeof(struct __guc_mmio_reg_descr)),
+		.owner = GUC_CAPTURE_LIST_INDEX_PF,
+		.type = GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
+		.engine = VIDEO_ENHANCEMENT_CLASS
+	},
+	{
+		.list = gen12lp_vec_inst_regs,
+		.num_regs = (sizeof(gen12lp_vec_inst_regs) / sizeof(struct __guc_mmio_reg_descr)),
+		.owner = GUC_CAPTURE_LIST_INDEX_PF,
+		.type = GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
+		.engine = VIDEO_ENHANCEMENT_CLASS
+	},
+	{NULL, 0, 0, 0, 0}
+};
+
+/************ FIXME: Populate tables for other devices in subsequent patch ************/
+
+static struct __guc_mmio_reg_descr_group *
+guc_capture_get_device_reglist(struct drm_i915_private *dev_priv)
+{
+	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
+	    IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv)) {
+		return gen12lp_lists;
+	}
+
+	return NULL;
+}
+
+static inline struct __guc_mmio_reg_descr_group *
+guc_capture_get_one_list(struct __guc_mmio_reg_descr_group *reglists, u32 owner, u32 type, u32 id)
+{
+	int i = 0;
+
+	if (!reglists)
+		return NULL;
+	while (reglists[i].list) {
+		if (reglists[i].owner == owner &&
+		    reglists[i].type == type) {
+			if (reglists[i].type == GUC_CAPTURE_LIST_TYPE_GLOBAL ||
+			    reglists[i].engine == id) {
+				return &reglists[i];
+			}
+		}
+		++i;
+	}
+	return NULL;
+}
+
+static inline void
+warn_with_capture_list_identifier(struct drm_i915_private *i915, char *msg,
+				  u32 owner, u32 type, u32 classid)
+{
+	const char *ownerstr[GUC_CAPTURE_LIST_INDEX_MAX] = {"PF", "VF"};
+	const char *typestr[GUC_CAPTURE_LIST_TYPE_MAX - 1] = {"Class", "Instance"};
+	const char *classstr[GUC_LAST_ENGINE_CLASS + 1] = {"Render", "Video", "VideoEnhance",
+							   "Blitter", "Reserved"};
+	static const char unknownstr[] = "unknown";
+
+	if (type == GUC_CAPTURE_LIST_TYPE_GLOBAL)
+		drm_warn(&i915->drm, "GuC-capture: %s for %s Global-Registers.\n", msg,
+			 (owner < GUC_CAPTURE_LIST_INDEX_MAX) ? ownerstr[owner] : unknownstr);
+	else
+		drm_warn(&i915->drm, "GuC-capture: %s for %s %s-Registers on %s-Engine\n", msg,
+			 (owner < GUC_CAPTURE_LIST_INDEX_MAX) ? ownerstr[owner] : unknownstr,
+			 (type < GUC_CAPTURE_LIST_TYPE_MAX) ? typestr[type - 1] :  unknownstr,
+			 (classid < GUC_LAST_ENGINE_CLASS + 1) ? classstr[classid] : unknownstr);
+}
+
+int intel_guc_capture_list_count(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
+				 u16 *num_entries)
+{
+	struct drm_i915_private *dev_priv = (guc_to_gt(guc))->i915;
+	struct __guc_mmio_reg_descr_group *reglists = guc->capture.reglists;
+	struct __guc_mmio_reg_descr_group *match;
+
+	if (!reglists)
+		return -ENODEV;
+
+	match = guc_capture_get_one_list(reglists, owner, type, classid);
+	if (match) {
+		*num_entries = match->num_regs;
+		return 0;
+	}
+
+	warn_with_capture_list_identifier(dev_priv, "Missing register list size", owner, type,
+					  classid);
+
+	return -ENODATA;
+}
+
+int intel_guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
+				struct guc_mmio_reg *ptr, u16 num_entries)
+{
+	u32 j = 0;
+	struct drm_i915_private *dev_priv = (guc_to_gt(guc))->i915;
+	struct __guc_mmio_reg_descr_group *reglists = guc->capture.reglists;
+	struct __guc_mmio_reg_descr_group *match;
+
+	if (!reglists)
+		return -ENODEV;
+
+	match = guc_capture_get_one_list(reglists, owner, type, classid);
+	if (match) {
+		while (j < num_entries && j < match->num_regs) {
+			ptr[j].offset = match->list[j].reg.reg;
+			ptr[j].value = 0xDEADF00D;
+			ptr[j].flags = match->list[j].flags;
+			ptr[j].mask = match->list[j].mask;
+			++j;
+		}
+		return 0;
+	}
+
+	warn_with_capture_list_identifier(dev_priv, "Missing register list init", owner, type,
+					  classid);
+
+	return -ENODATA;
+}
+
+void intel_guc_capture_destroy(struct intel_guc *guc)
+{
+}
+
+int intel_guc_capture_init(struct intel_guc *guc)
+{
+	struct drm_i915_private *dev_priv = (guc_to_gt(guc))->i915;
+
+	guc->capture.reglists = guc_capture_get_device_reglist(dev_priv);
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
new file mode 100644
index 000000000000..352940b8bc87
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021-2021 Intel Corporation
+ */
+
+#ifndef _INTEL_GUC_CAPTURE_H
+#define _INTEL_GUC_CAPTURE_H
+
+#include <linux/mutex.h>
+#include <linux/workqueue.h>
+#include "intel_guc_fwif.h"
+
+struct intel_guc;
+
+struct __guc_mmio_reg_descr {
+	i915_reg_t reg;
+	u32 flags;
+	u32 mask;
+	char *regname;
+};
+
+struct __guc_mmio_reg_descr_group {
+	struct __guc_mmio_reg_descr *list;
+	u32 num_regs;
+	u32 owner; /* see enum guc_capture_owner */
+	u32 type; /* see enum guc_capture_type */
+	u32 engine; /* as per MAX_ENGINE_CLASS */
+};
+
+struct intel_guc_state_capture {
+	struct __guc_mmio_reg_descr_group *reglists;
+	u16 num_instance_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
+	u16 num_class_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
+	u16 num_global_regs[GUC_CAPTURE_LIST_INDEX_MAX];
+	int instance_list_size;
+	int class_list_size;
+	int global_list_size;
+};
+
+int intel_guc_capture_list_count(struct intel_guc *guc, u32 owner, u32 type, u32 class,
+				 u16 *num_entries);
+int intel_guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 class,
+				struct guc_mmio_reg *ptr, u16 num_entries);
+void intel_guc_capture_destroy(struct intel_guc *guc);
+int intel_guc_capture_init(struct intel_guc *guc);
+
+#endif /* _INTEL_GUC_CAPTURE_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 767684b6af67..1a1d2271c7e9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -285,13 +285,30 @@ struct guc_gt_system_info {
 } __packed;
 
 /* Capture-types of GuC capture register lists */
-enum
+enum guc_capture_owner
 {
 	GUC_CAPTURE_LIST_INDEX_PF = 0,
 	GUC_CAPTURE_LIST_INDEX_VF = 1,
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
+struct guc_debug_capture_list_header {
+	u32 info;
+		#define GUC_CAPTURELISTHDR_NUMDESCR GENMASK(15, 0)
+};
+
+struct guc_debug_capture_list {
+	struct guc_debug_capture_list_header header;
+};
+
 /* GuC Additional Data Struct */
 struct guc_ads {
 	struct guc_mmio_reg_set reg_state_list[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
-- 
2.25.1

