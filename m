Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D49F72CDA6
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jun 2023 20:15:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF72810E2BC;
	Mon, 12 Jun 2023 18:15:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 453BE10E22A
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 18:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686593745; x=1718129745;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=s7jriHQ5OK+269SHlb92Q75TX+1oPFgMLwJlSPTqyx4=;
 b=BsS3OP8629s0QcMrbpGJJ5RNxWGyBd4Gj43cA9APv2Atdim4Lob3IK6i
 HPPPrE0zze0FcvwfSwp7Mh+XzPhilx5bH47N+VlGMNMl0/6+mWjx6HmXh
 n4iRjXxhy2uBDsfL4PARbs5OkZTduTpB4hi4L/vu6io/Xxx/mzbl9QmZd
 ZbTmXnTO3oVaIakwadANLhh4L+sjGDpUq+KsPRWcMS8Fwm4t5cm6ZSdiL
 agJnjvQHlSqeHloWu7wc6ULX4n9FxvbQjQX5vAokwtRyADQZo0I8wli8C
 1ZtJ9t7BzCYAHETA1cRH8TtuQogcinbOeYJn9V2mLPZy3rmRXV5MTDcvH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="337761484"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="337761484"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 11:15:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="661678815"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="661678815"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 11:15:44 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jun 2023 11:15:29 -0700
Message-Id: <20230612181529.2222451-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230612181529.2222451-1-daniele.ceraolospurio@intel.com>
References: <20230612181529.2222451-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 4/4] drm/i915/mtl/gsc: Add a gsc_info debugfs
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

Add a new debugfs to dump information about the GSC. This includes:

- the FW path and SW tracking status;
- the release, security and compatibility versions;
- the HECI1 status registers.

Note that those are the same registers that the mei driver dumps in
their own status sysfs on DG2 (where mei owns the GSC).

To make it simpler to loop through the status register, the code has
been update to use a PICK macro and the existing code using the regs had
been adapted to match.

v2: fix includes and copyright dates (Alan)
v3: actually fix the includes

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  3 +-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c     | 28 +++++------
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c     | 47 ++++++++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h     |  2 +
 .../gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c | 39 +++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.h | 14 ++++++
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |  6 +--
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c |  2 +
 drivers/gpu/drm/i915/i915_reg.h               | 26 +++++++++-
 9 files changed, 143 insertions(+), 24 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 789dce9e2608..2be9dd960540 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -192,7 +192,8 @@ i915-y += \
 	  gt/uc/intel_gsc_fw.o \
 	  gt/uc/intel_gsc_proxy.o \
 	  gt/uc/intel_gsc_uc.o \
-	  gt/uc/intel_gsc_uc_heci_cmd_submit.o\
+	  gt/uc/intel_gsc_uc_debugfs.o \
+	  gt/uc/intel_gsc_uc_heci_cmd_submit.o \
 	  gt/uc/intel_guc.o \
 	  gt/uc/intel_guc_ads.o \
 	  gt/uc/intel_guc_capture.o \
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index 3b4ff3e31aed..856de9af1e3a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -12,19 +12,14 @@
 #include "intel_gsc_binary_headers.h"
 #include "intel_gsc_fw.h"
 #include "intel_gsc_uc_heci_cmd_submit.h"
-
-#define GSC_FW_STATUS_REG			_MMIO(0x116C40)
-#define GSC_FW_CURRENT_STATE			REG_GENMASK(3, 0)
-#define   GSC_FW_CURRENT_STATE_RESET		0
-#define   GSC_FW_PROXY_STATE_NORMAL		5
-#define GSC_FW_INIT_COMPLETE_BIT		REG_BIT(9)
+#include "i915_reg.h"
 
 static bool gsc_is_in_reset(struct intel_uncore *uncore)
 {
-	u32 fw_status = intel_uncore_read(uncore, GSC_FW_STATUS_REG);
+	u32 fw_status = intel_uncore_read(uncore, HECI_FWSTS(MTL_GSC_HECI1_BASE, 1));
 
-	return REG_FIELD_GET(GSC_FW_CURRENT_STATE, fw_status) ==
-	       GSC_FW_CURRENT_STATE_RESET;
+	return REG_FIELD_GET(HECI1_FWSTS1_CURRENT_STATE, fw_status) ==
+			HECI1_FWSTS1_CURRENT_STATE_RESET;
 }
 
 static u32 gsc_uc_get_fw_status(struct intel_uncore *uncore)
@@ -33,21 +28,22 @@ static u32 gsc_uc_get_fw_status(struct intel_uncore *uncore)
 	u32 fw_status = 0;
 
 	with_intel_runtime_pm(uncore->rpm, wakeref)
-		fw_status = intel_uncore_read(uncore, GSC_FW_STATUS_REG);
+		fw_status = intel_uncore_read(uncore, HECI_FWSTS(MTL_GSC_HECI1_BASE, 1));
 
 	return fw_status;
 }
 
 bool intel_gsc_uc_fw_proxy_init_done(struct intel_gsc_uc *gsc)
 {
-	return REG_FIELD_GET(GSC_FW_CURRENT_STATE,
+	return REG_FIELD_GET(HECI1_FWSTS1_CURRENT_STATE,
 			     gsc_uc_get_fw_status(gsc_uc_to_gt(gsc)->uncore)) ==
-	       GSC_FW_PROXY_STATE_NORMAL;
+	       HECI1_FWSTS1_PROXY_STATE_NORMAL;
 }
 
 bool intel_gsc_uc_fw_init_done(struct intel_gsc_uc *gsc)
 {
-	return gsc_uc_get_fw_status(gsc_uc_to_gt(gsc)->uncore) & GSC_FW_INIT_COMPLETE_BIT;
+	return gsc_uc_get_fw_status(gsc_uc_to_gt(gsc)->uncore) &
+	       HECI1_FWSTS1_INIT_COMPLETE;
 }
 
 static inline u32 cpd_entry_offset(const struct intel_gsc_cpd_entry *entry)
@@ -298,9 +294,9 @@ static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
 static int gsc_fw_wait(struct intel_gt *gt)
 {
 	return intel_wait_for_register(gt->uncore,
-				       GSC_FW_STATUS_REG,
-				       GSC_FW_INIT_COMPLETE_BIT,
-				       GSC_FW_INIT_COMPLETE_BIT,
+				       HECI_FWSTS(MTL_GSC_HECI1_BASE, 1),
+				       HECI1_FWSTS1_INIT_COMPLETE,
+				       HECI1_FWSTS1_INIT_COMPLETE,
 				       500);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
index 4fe639a80564..85d90f0a15e3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
@@ -7,10 +7,11 @@
 
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_print.h"
-#include "intel_gsc_uc.h"
 #include "intel_gsc_fw.h"
-#include "i915_drv.h"
 #include "intel_gsc_proxy.h"
+#include "intel_gsc_uc.h"
+#include "i915_drv.h"
+#include "i915_reg.h"
 
 static void gsc_work(struct work_struct *work)
 {
@@ -304,3 +305,45 @@ void intel_gsc_uc_load_start(struct intel_gsc_uc *gsc)
 
 	queue_work(gsc->wq, &gsc->work);
 }
+
+void intel_gsc_uc_load_status(struct intel_gsc_uc *gsc, struct drm_printer *p)
+{
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	struct intel_uncore *uncore = gt->uncore;
+	intel_wakeref_t wakeref;
+
+	if (!intel_gsc_uc_is_supported(gsc)) {
+		drm_printf(p, "GSC not supported\n");
+		return;
+	}
+
+	if (!intel_gsc_uc_is_wanted(gsc)) {
+		drm_printf(p, "GSC disabled\n");
+		return;
+	}
+
+	drm_printf(p, "GSC firmware: %s\n", gsc->fw.file_selected.path);
+	if (gsc->fw.file_selected.path != gsc->fw.file_wanted.path)
+		drm_printf(p, "GSC firmware wanted: %s\n", gsc->fw.file_wanted.path);
+	drm_printf(p, "\tstatus: %s\n", intel_uc_fw_status_repr(gsc->fw.status));
+
+	drm_printf(p, "Release: %u.%u.%u.%u\n",
+		   gsc->release.major, gsc->release.minor,
+		   gsc->release.patch, gsc->release.build);
+
+	drm_printf(p, "Compatibility Version: %u.%u [min expected %u.%u]\n",
+		   gsc->fw.file_selected.ver.major, gsc->fw.file_selected.ver.minor,
+		   gsc->fw.file_wanted.ver.major, gsc->fw.file_wanted.ver.minor);
+
+	drm_printf(p, "SVN: %u\n", gsc->security_version);
+
+	with_intel_runtime_pm(uncore->rpm, wakeref) {
+		u32 i;
+
+		for (i = 1; i <= 6; i++) {
+			u32 status = intel_uncore_read(uncore,
+						       HECI_FWSTS(MTL_GSC_HECI1_BASE, i));
+			drm_printf(p, "HECI1 FWSTST%u = 0x%08x\n", i, status);
+		}
+	}
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
index 81df6c929d5f..c8082cf200fc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
@@ -8,6 +8,7 @@
 
 #include "intel_uc_fw.h"
 
+struct drm_printer;
 struct i915_vma;
 struct intel_context;
 struct i915_gsc_proxy_component;
@@ -63,6 +64,7 @@ void intel_gsc_uc_suspend(struct intel_gsc_uc *gsc);
 void intel_gsc_uc_resume(struct intel_gsc_uc *gsc);
 void intel_gsc_uc_flush_work(struct intel_gsc_uc *gsc);
 void intel_gsc_uc_load_start(struct intel_gsc_uc *gsc);
+void intel_gsc_uc_load_status(struct intel_gsc_uc *gsc, struct drm_printer *p);
 
 static inline bool intel_gsc_uc_is_supported(struct intel_gsc_uc *gsc)
 {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c
new file mode 100644
index 000000000000..5baacd822a1c
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include <drm/drm_print.h>
+
+#include "gt/intel_gt.h"
+#include "gt/intel_gt_debugfs.h"
+#include "gt/intel_gt_print.h"
+#include "intel_gsc_uc.h"
+#include "intel_gsc_uc_debugfs.h"
+#include "i915_drv.h"
+
+static int gsc_info_show(struct seq_file *m, void *data)
+{
+	struct drm_printer p = drm_seq_file_printer(m);
+	struct intel_gsc_uc *gsc = m->private;
+
+	if (!intel_gsc_uc_is_supported(gsc))
+		return -ENODEV;
+
+	intel_gsc_uc_load_status(gsc, &p);
+
+	return 0;
+}
+DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(gsc_info);
+
+void intel_gsc_uc_debugfs_register(struct intel_gsc_uc *gsc_uc, struct dentry *root)
+{
+	static const struct intel_gt_debugfs_file files[] = {
+		{ "gsc_info", &gsc_info_fops, NULL },
+	};
+
+	if (!intel_gsc_uc_is_supported(gsc_uc))
+		return;
+
+	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gsc_uc);
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.h
new file mode 100644
index 000000000000..3415ad39aabb
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef DEBUGFS_GSC_UC_H
+#define DEBUGFS_GSC_UC_H
+
+struct intel_gsc_uc;
+struct dentry;
+
+void intel_gsc_uc_debugfs_register(struct intel_gsc_uc *gsc, struct dentry *root);
+
+#endif /* DEBUGFS_GSC_UC_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index e0afd8f89502..d3a7219e9ed1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -308,9 +308,9 @@ void intel_huc_init_early(struct intel_huc *huc)
 		huc->status[INTEL_HUC_AUTH_BY_GSC].mask = HUC_LOAD_SUCCESSFUL;
 		huc->status[INTEL_HUC_AUTH_BY_GSC].value = HUC_LOAD_SUCCESSFUL;
 	} else {
-		huc->status[INTEL_HUC_AUTH_BY_GSC].reg = HECI_FWSTS5(MTL_GSC_HECI1_BASE);
-		huc->status[INTEL_HUC_AUTH_BY_GSC].mask = HECI_FWSTS5_HUC_AUTH_DONE;
-		huc->status[INTEL_HUC_AUTH_BY_GSC].value = HECI_FWSTS5_HUC_AUTH_DONE;
+		huc->status[INTEL_HUC_AUTH_BY_GSC].reg = HECI_FWSTS(MTL_GSC_HECI1_BASE, 5);
+		huc->status[INTEL_HUC_AUTH_BY_GSC].mask = HECI1_FWSTS5_HUC_AUTH_DONE;
+		huc->status[INTEL_HUC_AUTH_BY_GSC].value = HECI1_FWSTS5_HUC_AUTH_DONE;
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
index 2f93cc4e408a..6d541c866edb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
@@ -10,6 +10,7 @@
 
 #include "gt/intel_gt_debugfs.h"
 #include "intel_guc_debugfs.h"
+#include "intel_gsc_uc_debugfs.h"
 #include "intel_huc_debugfs.h"
 #include "intel_uc.h"
 #include "intel_uc_debugfs.h"
@@ -58,6 +59,7 @@ void intel_uc_debugfs_register(struct intel_uc *uc, struct dentry *gt_root)
 
 	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), uc);
 
+	intel_gsc_uc_debugfs_register(&uc->gsc, root);
 	intel_guc_debugfs_register(&uc->guc, root);
 	intel_huc_debugfs_register(&uc->huc, root);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7a4f462e8b70..dcf64e32cd54 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -941,8 +941,30 @@
 #define HECI_H_GS1(base)	_MMIO((base) + 0xc4c)
 #define   HECI_H_GS1_ER_PREP	REG_BIT(0)
 
-#define HECI_FWSTS5(base)		_MMIO((base) + 0xc68)
-#define   HECI_FWSTS5_HUC_AUTH_DONE	(1 << 19)
+/*
+ * The FWSTS register values are FW defined and can be different between
+ * HECI1 and HECI2
+ */
+#define HECI_FWSTS1				0xc40
+#define   HECI1_FWSTS1_CURRENT_STATE			REG_GENMASK(3, 0)
+#define   HECI1_FWSTS1_CURRENT_STATE_RESET		0
+#define   HECI1_FWSTS1_PROXY_STATE_NORMAL		5
+#define   HECI1_FWSTS1_INIT_COMPLETE			REG_BIT(9)
+#define HECI_FWSTS2				0xc48
+#define HECI_FWSTS3				0xc60
+#define HECI_FWSTS4				0xc64
+#define HECI_FWSTS5				0xc68
+#define   HECI1_FWSTS5_HUC_AUTH_DONE	(1 << 19)
+#define HECI_FWSTS6				0xc6c
+
+/* the FWSTS regs are 1-based, so we use -base for index 0 to get an invalid reg */
+#define HECI_FWSTS(base, x) _MMIO((base) + _PICK(x, -(base), \
+						    HECI_FWSTS1, \
+						    HECI_FWSTS2, \
+						    HECI_FWSTS3, \
+						    HECI_FWSTS4, \
+						    HECI_FWSTS5, \
+						    HECI_FWSTS6))
 
 #define HSW_GTT_CACHE_EN	_MMIO(0x4024)
 #define   GTT_CACHE_EN_ALL	0xF0007FFF
-- 
2.40.0

