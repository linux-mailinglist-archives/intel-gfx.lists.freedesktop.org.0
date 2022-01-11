Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B1948AA83
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 10:28:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9709214A240;
	Tue, 11 Jan 2022 09:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C90D14A238
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641893313; x=1673429313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VZwRyi+w0iuA6Dyz7+rPJEp99Vvm7hQFUL2W5rUa7ZQ=;
 b=f80wyTpfP8Qq4aWwLs0ZfC65IGccV8BVxTHyaoSoEYif3fwQkaPQDaGe
 LxeUc+FP5ukzS043YFGu0XQ2cht+iJBfwrLSZfMXKbF2usulAISM4qWxG
 H2fyU4NIYxY5TJIRuvRvxErMN8cMgTDAwdOLzLSnCY2106SG1z9bBukZY
 MskGTc1oF1gcTvWoct/S6JtbyQ+f4UoT7lh6QKVX6iT63oSsjewZc5EVU
 7w41PU39dqI/ckZ/MwKKrF0MOW1wnN+BfKAosoSfHA5SDEMrYRo+UoP5U
 nsJWBJBuTy/iUxi3BzIPMMm/oY4jKil4z5l7JqF3Cv3mvg7iNFyEr0S97 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="240996990"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="240996990"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 01:28:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="558305523"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 11 Jan 2022 01:28:31 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jan 2022 01:30:12 -0800
Message-Id: <20220111093018.610582-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220111093018.610582-1-alan.previn.teres.alexis@intel.com>
References: <20220111093018.610582-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC v3 2/7] drm/i915/guc: Update GuC ADS size for
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

Also, populate the lists of registers we want GuC to report back to
Host on engine reset events. This list should include global,
engine-class and engine-instance registers for every engine-class
type on the current hardware.

NOTE: Start with a sample table of register lists to layout the
framework before adding real registers in subsequent patch.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |  36 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  13 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  11 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  33 +-
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 450 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |  20 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  17 +
 8 files changed, 554 insertions(+), 27 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 1b62b9f65196..9f089c724c8a 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -183,6 +183,7 @@ i915-y += gt/uc/intel_uc.o \
 	  gt/uc/intel_uc_fw.o \
 	  gt/uc/intel_guc.o \
 	  gt/uc/intel_guc_ads.o \
+	  gt/uc/intel_guc_capture.o \
 	  gt/uc/intel_guc_ct.o \
 	  gt/uc/intel_guc_debugfs.o \
 	  gt/uc/intel_guc_fw.o \
diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
new file mode 100644
index 000000000000..15b8c02b8a76
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021-2021 Intel Corporation
+ */
+
+#ifndef _INTEL_GUC_CAPTURE_FWIF_H
+#define _INTEL_GUC_CAPTURE_FWIF_H
+
+#include <linux/types.h>
+#include "intel_guc_fwif.h"
+
+struct intel_guc;
+
+struct __guc_mmio_reg_descr {
+	i915_reg_t reg;
+	u32 flags;
+	u32 mask;
+	const char *regname;
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
+struct __guc_state_capture_priv {
+	struct __guc_mmio_reg_descr_group *reglists;
+	u16 num_instance_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
+	u16 num_class_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
+	u16 num_global_regs[GUC_CAPTURE_LIST_INDEX_MAX];
+};
+
+#endif /* _INTEL_GUC_CAPTURE_FWIF_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 307cd38d997c..3deecc305cea 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -8,8 +8,9 @@
 #include "gt/intel_gt_irq.h"
 #include "gt/intel_gt_pm_irq.h"
 #include "intel_guc.h"
-#include "intel_guc_slpc.h"
 #include "intel_guc_ads.h"
+#include "intel_guc_capture.h"
+#include "intel_guc_slpc.h"
 #include "intel_guc_submission.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
@@ -336,9 +337,14 @@ int intel_guc_init(struct intel_guc *guc)
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
@@ -377,6 +383,8 @@ int intel_guc_init(struct intel_guc *guc)
 	intel_guc_ct_fini(&guc->ct);
 err_ads:
 	intel_guc_ads_destroy(guc);
+err_capture:
+	intel_guc_capture_destroy(guc);
 err_log:
 	intel_guc_log_destroy(&guc->log);
 err_fw:
@@ -404,6 +412,7 @@ void intel_guc_fini(struct intel_guc *guc)
 	intel_guc_ct_fini(&guc->ct);
 
 	intel_guc_ads_destroy(guc);
+	intel_guc_capture_destroy(guc);
 	intel_guc_log_destroy(&guc->log);
 	intel_uc_fw_fini(&guc->fw);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 4e54eddacd69..2f186f79e4d1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -9,18 +9,19 @@
 #include <linux/xarray.h>
 #include <linux/delay.h>
 
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
+struct __guc_state_capture_priv;
 
 /**
  * struct intel_guc - Top level structure of GuC.
@@ -37,6 +38,10 @@ struct intel_guc {
 	struct intel_guc_ct ct;
 	/** @slpc: sub-structure containing SLPC related data and objects */
 	struct intel_guc_slpc slpc;
+	/** @capture: the error-state-capture module's data and objects */
+	struct intel_guc_state_capture {
+		struct __guc_state_capture_priv *priv;
+	} capture;
 
 	/** @sched_engine: Global engine used to submit requests to GuC */
 	struct i915_sched_engine *sched_engine;
@@ -143,6 +148,8 @@ struct intel_guc {
 	u32 ads_regset_size;
 	/** @ads_golden_ctxt_size: size of the golden contexts in the ADS */
 	u32 ads_golden_ctxt_size;
+	/** @ads_capture_size: size of register lists in the ADS used for error capture */
+	u32 ads_capture_size;
 	/** @ads_engine_usage_size: size of engine usage in the ADS */
 	u32 ads_engine_usage_size;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 6c81ddd303d3..bb06d8d024c9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -9,6 +9,7 @@
 #include "gt/intel_lrc.h"
 #include "gt/shmem_utils.h"
 #include "intel_guc_ads.h"
+#include "intel_guc_capture.h"
 #include "intel_guc_fwif.h"
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
@@ -519,26 +519,6 @@ static void guc_init_golden_context(struct intel_guc *guc)
 	GEM_BUG_ON(guc->ads_golden_ctxt_size != total_size);
 }
 
-static void guc_capture_prep_lists(struct intel_guc *guc, struct __guc_ads_blob *blob)
-{
-	int i, j;
-	u32 addr_ggtt, offset;
-
-	offset = guc_ads_capture_offset(guc);
-	addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
-
-	/* FIXME: Populate a proper capture list */
-
-	for (i = 0; i < GUC_CAPTURE_LIST_INDEX_MAX; i++) {
-		for (j = 0; j < GUC_MAX_ENGINE_CLASSES; j++) {
-			blob->ads.capture_instance[i][j] = addr_ggtt;
-			blob->ads.capture_class[i][j] = addr_ggtt;
-		}
-
-		blob->ads.capture_global[i] = addr_ggtt;
-	}
-}
-
 static void __guc_ads_init(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
@@ -573,7 +553,8 @@ static void __guc_ads_init(struct intel_guc *guc)
 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
 
 	/* Lists for error capture debug */
-	guc_capture_prep_lists(guc, blob);
+	intel_guc_capture_prep_lists(guc, (struct guc_ads *)blob, base,
+				     guc_ads_capture_offset(guc), &blob->system_info);
 
 	/* ADS */
 	blob->ads.scheduler_policies = base + ptr_offset(blob, policies);
@@ -614,6 +595,12 @@ int intel_guc_ads_create(struct intel_guc *guc)
 		return ret;
 	guc->ads_golden_ctxt_size = ret;
 
+	/* Likewise the capture lists: */
+	ret = intel_guc_capture_prep_lists(guc, NULL, 0, 0, NULL);
+	if (ret < 0)
+		return ret;
+	guc->ads_capture_size = ret;
+
 	/* Now the total size can be determined: */
 	size = guc_ads_blob_size(guc);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
new file mode 100644
index 000000000000..8924a1650688
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -0,0 +1,450 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021-2021 Intel Corporation
+ */
+
+#include <linux/types.h>
+
+#include <drm/drm_print.h>
+
+#include "gt/intel_gt.h"
+#include "gt/intel_lrc_reg.h"
+#include "guc_capture_fwif.h"
+#include "intel_guc_fwif.h"
+#include "i915_drv.h"
+#include "i915_memcpy.h"
+
+/*
+ * Define all device tables of GuC error capture register lists
+ * NOTE: For engine-registers, GuC only needs the register offsets
+ *       from the engine-mmio-base
+ */
+/* XE_LPD - Global */
+static struct __guc_mmio_reg_descr xe_lpd_global_regs[] = {
+	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}
+};
+
+/* XE_LPD - Render / Compute Per-Class */
+static struct __guc_mmio_reg_descr xe_lpd_rc_class_regs[] = {
+	{EIR,                      0,      0, "EIR"}
+};
+
+/* XE_LPD - Render / Compute Per-Engine-Instance */
+static struct __guc_mmio_reg_descr xe_lpd_rc_inst_regs[] = {
+	{RING_HEAD(0),             0,      0, "RING_HEAD"},
+	{RING_TAIL(0),             0,      0, "RING_TAIL"},
+};
+
+/* XE_LPD - Media Decode/Encode Per-Class */
+static struct __guc_mmio_reg_descr xe_lpd_vd_class_regs[] = {
+};
+
+/* XE_LPD - Media Decode/Encode Per-Engine-Instance */
+static struct __guc_mmio_reg_descr xe_lpd_vd_inst_regs[] = {
+	{RING_HEAD(0),             0,      0, "RING_HEAD"},
+	{RING_TAIL(0),             0,      0, "RING_TAIL"},
+};
+
+/* XE_LPD - Video Enhancement Per-Class */
+static struct __guc_mmio_reg_descr xe_lpd_vec_class_regs[] = {
+};
+
+/* XE_LPD - Video Enhancement Per-Engine-Instance */
+static struct __guc_mmio_reg_descr xe_lpd_vec_inst_regs[] = {
+	{RING_HEAD(0),             0,      0, "RING_HEAD"},
+	{RING_TAIL(0),             0,      0, "RING_TAIL"},
+};
+
+#define TO_GCAP_DEF_OWNER(x) (GUC_CAPTURE_LIST_INDEX_##x)
+#define TO_GCAP_DEF_TYPE(x) (GUC_CAPTURE_LIST_TYPE_##x)
+#define MAKE_REGLIST(regslist, regsowner, regstype, class) \
+	{ \
+		.list = regslist, \
+		.num_regs = ARRAY_SIZE(regslist), \
+		.owner = TO_GCAP_DEF_OWNER(regsowner), \
+		.type = TO_GCAP_DEF_TYPE(regstype), \
+		.engine = class, \
+	}
+
+/* List of lists */
+static struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
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
+static struct __guc_mmio_reg_descr_group *
+guc_capture_get_device_reglist(struct intel_guc *guc)
+{
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+
+	if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915) ||
+	    IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) {
+		/*
+		 * For certain engine classes, there are slice and subslice
+		 * level registers requiring steering. We allocate and populate
+		 * these at init time based on hw config add it as an extension
+		 * list at the end of the pre-populated render list.
+		 */
+		return xe_lpd_lists;
+	}
+
+	return NULL;
+}
+
+static struct __guc_mmio_reg_descr_group *
+guc_capture_get_one_list(struct __guc_mmio_reg_descr_group *reglists, u32 owner, u32 type, u32 id)
+{
+	int i;
+
+	if (!reglists)
+		return NULL;
+
+	for (i = 0; reglists[i].list; i++) {
+		if (reglists[i].owner == owner && reglists[i].type == type &&
+		    (reglists[i].engine == id || reglists[i].type == GUC_CAPTURE_LIST_TYPE_GLOBAL))
+		return &reglists[i];
+	}
+
+	return NULL;
+}
+
+static const char *
+guc_capture_stringify_owner(u32 owner)
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
+guc_capture_stringify_type(u32 type)
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
+guc_capture_stringify_engclass(u32 class)
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
+	case GUC_RESERVED_CLASS:
+		return "Reserved";
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
+		drm_warn(&i915->drm, "GuC-capture: %s for %s %s-Registers.\n", msg,
+			 guc_capture_stringify_owner(owner), guc_capture_stringify_type(type));
+	else
+		drm_warn(&i915->drm, "GuC-capture: %s for %s %s-Registers on %s-Engine\n", msg,
+			 guc_capture_stringify_owner(owner), guc_capture_stringify_type(type),
+			 guc_capture_stringify_engclass(classid));
+}
+
+static int
+guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
+		      struct guc_mmio_reg *ptr, u16 num_entries)
+{
+	u32 j = 0;
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	struct __guc_mmio_reg_descr_group *reglists = guc->capture.priv->reglists;
+	struct __guc_mmio_reg_descr_group *match;
+
+	if (!reglists)
+		return -ENODEV;
+
+	match = guc_capture_get_one_list(reglists, owner, type, classid);
+	if (match) {
+		for (j = 0; j < num_entries && j < match->num_regs; ++j) {
+			ptr[j].offset = match->list[j].reg.reg;
+			ptr[j].value = 0xDEADF00D;
+			ptr[j].flags = match->list[j].flags;
+			ptr[j].mask = match->list[j].mask;
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
+guc_capture_fill_reglist(struct intel_guc *guc, struct guc_ads *ads,
+			 u32 owner, int type, int classid, u16 numregs,
+			 u8 **p_virt, u32 *p_ggtt, u32 null_ggtt)
+{
+	struct guc_debug_capture_list *listnode;
+	u32 *p_capturelist_ggtt;
+	int size = 0;
+
+	/*
+	 * For enabled capture lists, we not only need to call capture module to help
+	 * populate the list-descriptor into the correct ads capture structures, but
+	 * we also need to increment the virtual pointers and ggtt offsets so that
+	 * caller has the subsequent gfx memory location.
+	 */
+	size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
+			  (numregs * sizeof(struct guc_mmio_reg)));
+	/* if caller hasn't allocated ADS blob, return size and counts, we're done */
+	if (!ads)
+		return size;
+
+	/*
+	 * If caller allocated ADS blob, populate the capture register descriptors into
+	 * the designated ADS location based on list-owner, list-type and engine-classid
+	 */
+	if (type == GUC_CAPTURE_LIST_TYPE_GLOBAL)
+		p_capturelist_ggtt = &ads->capture_global[owner];
+	else if (type == GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS)
+		p_capturelist_ggtt = &ads->capture_class[owner][classid];
+	else /*GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE*/
+		p_capturelist_ggtt = &ads->capture_instance[owner][classid];
+
+	if (!numregs) {
+		*p_capturelist_ggtt = null_ggtt;
+	} else {
+		/* get ptr and populate header info: */
+		*p_capturelist_ggtt = *p_ggtt;
+		listnode = (struct guc_debug_capture_list *)*p_virt;
+		*p_ggtt += sizeof(struct guc_debug_capture_list);
+		*p_virt += sizeof(struct guc_debug_capture_list);
+		listnode->header.info = FIELD_PREP(GUC_CAPTURELISTHDR_NUMDESCR, numregs);
+
+		/* get ptr and populate register descriptor list: */
+		guc_capture_list_init(guc, owner, type, classid,
+				      (struct guc_mmio_reg *)*p_virt,
+				      numregs);
+
+		/* increment ptrs for that header: */
+		*p_ggtt += size - sizeof(struct guc_debug_capture_list);
+		*p_virt += size - sizeof(struct guc_debug_capture_list);
+	}
+
+	return size;
+}
+
+static int
+guc_capture_list_count(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
+		       u16 *num_entries)
+{
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	struct __guc_mmio_reg_descr_group *reglists = guc->capture.priv->reglists;
+	struct __guc_mmio_reg_descr_group *match;
+
+	if (!reglists)
+		return -ENODEV;
+
+	match = guc_capture_get_one_list(reglists, owner, type, classid);
+	if (!match) {
+		guc_capture_warn_with_list_info(i915, "Missing register list size",
+						owner, type, classid);
+		return -ENODATA;
+	}
+
+	*num_entries = match->num_regs;
+	return 0;
+}
+
+static void
+guc_capture_fill_engine_enable_masks(struct intel_gt *gt,
+				     struct guc_gt_system_info *info)
+{
+	info->engine_enabled_masks[GUC_RENDER_CLASS] = 1;
+	info->engine_enabled_masks[GUC_BLITTER_CLASS] = 1;
+	info->engine_enabled_masks[GUC_VIDEO_CLASS] = VDBOX_MASK(gt);
+	info->engine_enabled_masks[GUC_VIDEOENHANCE_CLASS] = VEBOX_MASK(gt);
+}
+
+int intel_guc_capture_prep_lists(struct intel_guc *guc, struct guc_ads *blob, u32 blob_ggtt,
+				 u32 capture_offset, struct guc_gt_system_info *sysinfo)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct guc_gt_system_info *info, local_info;
+	struct guc_debug_capture_list *listnode;
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	struct __guc_state_capture_priv *gc = guc->capture.priv;
+	int i, j, size;
+	u32 ggtt, null_ggtt, alloc_size = 0;
+	u16 tmpnumreg = 0;
+	u8 *ptr = NULL;
+
+	GEM_BUG_ON(!gc);
+
+	if (blob) {
+		ptr = ((u8 *)blob) + capture_offset;
+		ggtt = blob_ggtt + capture_offset;
+		GEM_BUG_ON(!sysinfo);
+		info = sysinfo;
+	} else {
+		memset(&local_info, 0, sizeof(local_info));
+		info = &local_info;
+		guc_capture_fill_engine_enable_masks(gt, info);
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
+
+#define COUNT_REGS guc_capture_list_count
+#define FILL_REGS guc_capture_fill_reglist
+#define TYPE_GLOBAL GUC_CAPTURE_LIST_TYPE_GLOBAL
+#define TYPE_CLASS GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS
+#define TYPE_INSTANCE GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE
+#define OWNER2STR guc_capture_stringify_owner
+#define ENGCLS2STR guc_capture_stringify_engclass
+#define TYPE2STR guc_capture_stringify_type
+
+	for (i = 0; i < GUC_CAPTURE_LIST_INDEX_MAX; i++) {
+		for (j = 0; j < GUC_MAX_ENGINE_CLASSES; j++) {
+			if (!info->engine_enabled_masks[j]) {
+				if (gc->num_class_regs[i][j])
+					drm_warn(&i915->drm, "GuC-Cap %s's %s class-"
+						 "list enable mismatch was=%d now off\n",
+						 OWNER2STR(i), ENGCLS2STR(j),
+						 gc->num_class_regs[i][j]);
+				if (gc->num_instance_regs[i][j])
+					drm_warn(&i915->drm, "GuC-Cap %s's %s inst-"
+						 "list enable mismatch was=%d now off!\n",
+						 OWNER2STR(i), ENGCLS2STR(j),
+						 gc->num_instance_regs[i][j]);
+				gc->num_class_regs[i][j] = 0;
+				gc->num_instance_regs[i][j] = 0;
+				if (blob) {
+					blob->capture_class[i][j] = null_ggtt;
+					blob->capture_instance[i][j] = null_ggtt;
+				}
+			} else {
+				if (!COUNT_REGS(guc, i, TYPE_CLASS, j, &tmpnumreg)) {
+					if (blob && tmpnumreg > gc->num_class_regs[i][j]) {
+						drm_warn(&i915->drm, "GuC-Cap %s's %s-%s-list "
+							 "count overflow cap from %d to %d",
+							 OWNER2STR(i), ENGCLS2STR(j),
+							 TYPE2STR(TYPE_CLASS),
+							 gc->num_class_regs[i][j], tmpnumreg);
+						tmpnumreg = gc->num_class_regs[i][j];
+					}
+					size = FILL_REGS(guc, blob, i, TYPE_CLASS, j,
+							 tmpnumreg, &ptr, &ggtt, null_ggtt);
+					alloc_size += size;
+					gc->num_class_regs[i][j] = tmpnumreg;
+				} else {
+					gc->num_class_regs[i][j] = 0;
+					if (blob)
+						blob->capture_class[i][j] = null_ggtt;
+				}
+				if (!COUNT_REGS(guc, i, TYPE_INSTANCE, j, &tmpnumreg)) {
+					if (blob && tmpnumreg > gc->num_instance_regs[i][j]) {
+						drm_warn(&i915->drm, "GuC-Cap %s's %s-%s-list "
+							 "count overflow cap from %d to %d",
+							 OWNER2STR(i), ENGCLS2STR(j),
+							 TYPE2STR(TYPE_INSTANCE),
+							 gc->num_instance_regs[i][j], tmpnumreg);
+						tmpnumreg = gc->num_instance_regs[i][j];
+					}
+					size = FILL_REGS(guc, blob, i, TYPE_INSTANCE, j,
+							 tmpnumreg, &ptr, &ggtt, null_ggtt);
+					alloc_size += size;
+					gc->num_instance_regs[i][j] = tmpnumreg;
+				} else {
+					gc->num_instance_regs[i][j] = 0;
+					if (blob)
+						blob->capture_instance[i][j] = null_ggtt;
+				}
+			}
+		}
+		if (!COUNT_REGS(guc, i, TYPE_GLOBAL, 0, &tmpnumreg)) {
+			if (blob && tmpnumreg > gc->num_global_regs[i]) {
+				drm_warn(&i915->drm, "GuC-Cap %s's %s-list count increased from %d to %d",
+					 OWNER2STR(i), TYPE2STR(TYPE_GLOBAL),
+					 gc->num_global_regs[i], tmpnumreg);
+				tmpnumreg = gc->num_global_regs[i];
+			}
+			size = FILL_REGS(guc, blob, i, TYPE_GLOBAL, 0, tmpnumreg,
+					 &ptr, &ggtt, null_ggtt);
+			alloc_size += size;
+			gc->num_global_regs[i] = tmpnumreg;
+		} else {
+			gc->num_global_regs[i] = 0;
+			if (blob)
+				blob->capture_global[i] = null_ggtt;
+		}
+	}
+
+#undef COUNT_REGS
+#undef FILL_REGS
+#undef TYPE_GLOBAL
+#undef TYPE_CLASS
+#undef TYPE_INSTANCE
+#undef OWNER2STR
+#undef ENGCLS2STR
+#undef TYPE2STR
+
+	if (guc->ads_capture_size && guc->ads_capture_size != PAGE_ALIGN(alloc_size))
+		drm_warn(&i915->drm, "GuC->ADS->Capture alloc size changed from %d to %d\n",
+			 guc->ads_capture_size, PAGE_ALIGN(alloc_size));
+
+	return PAGE_ALIGN(alloc_size);
+}
+
+void intel_guc_capture_destroy(struct intel_guc *guc)
+{
+	kfree(guc->capture.priv);
+	guc->capture.priv = NULL;
+}
+
+int intel_guc_capture_init(struct intel_guc *guc)
+{
+	guc->capture.priv = kzalloc(sizeof(*guc->capture.priv), GFP_KERNEL);
+	if (!guc->capture.priv)
+		return -ENOMEM;
+	guc->capture.priv->reglists = guc_capture_get_device_reglist(guc);
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
new file mode 100644
index 000000000000..6b5594ca529d
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -0,0 +1,20 @@
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
+struct intel_guc;
+struct guc_ads;
+struct guc_gt_system_info;
+
+int intel_guc_capture_prep_lists(struct intel_guc *guc, struct guc_ads *blob, u32 blob_ggtt,
+				 u32 capture_offset, struct guc_gt_system_info *sysinfo);
+void intel_guc_capture_destroy(struct intel_guc *guc);
+int intel_guc_capture_init(struct intel_guc *guc);
+
+#endif /* _INTEL_GUC_CAPTURE_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 3aa53c86821d..9b81f521ea97 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -291,6 +291,23 @@ enum guc_capture_owner {
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
+} __packed;
+
+struct guc_debug_capture_list {
+	struct guc_debug_capture_list_header header;
+} __packed;
+
 /* GuC Additional Data Struct */
 struct guc_ads {
 	struct guc_mmio_reg_set reg_state_list[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
-- 
2.25.1

