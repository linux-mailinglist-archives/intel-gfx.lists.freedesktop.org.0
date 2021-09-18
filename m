Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A1B41031D
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Sep 2021 04:58:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F6406F39A;
	Sat, 18 Sep 2021 02:58:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D1CA6E0D2
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Sep 2021 02:58:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="221028863"
X-IronPort-AV: E=Sophos;i="5.85,303,1624345200"; d="scan'208";a="221028863"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 19:58:20 -0700
X-IronPort-AV: E=Sophos;i="5.85,303,1624345200"; d="scan'208";a="652054567"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 19:58:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>
Date: Fri, 17 Sep 2021 19:57:53 -0700
Message-Id: <20210918025754.1254705-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210918025754.1254705-1-lucas.demarchi@intel.com>
References: <20210918025754.1254705-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 3/4] drm/i915: rename debugfs_gt_pm files
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

We shouldn't be using debugfs_ namespace for this functionality. Rename
debugfs_gt_pm.[ch] to intel_gt_pm_debugfs.[ch] and then make
functions, defines and structs follow suit.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/Makefile                      |  2 +-
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.h            | 14 --------------
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c         |  4 ++--
 .../gt/{debugfs_gt_pm.c => intel_gt_pm_debugfs.c}  |  4 ++--
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h      | 14 ++++++++++++++
 5 files changed, 19 insertions(+), 19 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt_pm.h
 rename drivers/gpu/drm/i915/gt/{debugfs_gt_pm.c => intel_gt_pm_debugfs.c} (99%)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 0b21777fc77b..335a8c668848 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -78,7 +78,6 @@ i915-$(CONFIG_PERF_EVENTS) += i915_pmu.o
 
 # "Graphics Technology" (aka we talk to the gpu)
 gt-y += \
-	gt/debugfs_gt_pm.o \
 	gt/gen2_engine_cs.o \
 	gt/gen6_engine_cs.o \
 	gt/gen6_ppgtt.o \
@@ -102,6 +101,7 @@ gt-y += \
 	gt/intel_gt_engines_debugfs.o \
 	gt/intel_gt_irq.o \
 	gt/intel_gt_pm.o \
+	gt/intel_gt_pm_debugfs.o \
 	gt/intel_gt_pm_irq.o \
 	gt/intel_gt_requests.o \
 	gt/intel_gtt.o \
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.h b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.h
deleted file mode 100644
index 4cf5f5c9da7d..000000000000
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2019 Intel Corporation
- */
-
-#ifndef DEBUGFS_GT_PM_H
-#define DEBUGFS_GT_PM_H
-
-struct intel_gt;
-struct dentry;
-
-void debugfs_gt_pm_register(struct intel_gt *gt, struct dentry *root);
-
-#endif /* DEBUGFS_GT_PM_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
index 3c77c2965e19..03fb4aefbf90 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
@@ -5,10 +5,10 @@
 
 #include <linux/debugfs.h>
 
-#include "debugfs_gt_pm.h"
 #include "i915_drv.h"
 #include "intel_gt_debugfs.h"
 #include "intel_gt_engines_debugfs.h"
+#include "intel_gt_pm_debugfs.h"
 #include "intel_sseu_debugfs.h"
 #include "uc/intel_uc_debugfs.h"
 
@@ -24,7 +24,7 @@ void intel_gt_debugfs_register(struct intel_gt *gt)
 		return;
 
 	intel_gt_engines_debugfs_register(gt, root);
-	debugfs_gt_pm_register(gt, root);
+	intel_gt_pm_debugfs_register(gt, root);
 	intel_sseu_debugfs_register(gt, root);
 
 	intel_uc_debugfs_register(&gt->uc, root);
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
similarity index 99%
rename from drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
rename to drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 9222cf68c56c..250467108eda 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -6,12 +6,12 @@
 
 #include <linux/seq_file.h>
 
-#include "debugfs_gt_pm.h"
 #include "i915_drv.h"
 #include "intel_gt.h"
 #include "intel_gt_clock_utils.h"
 #include "intel_gt_debugfs.h"
 #include "intel_gt_pm.h"
+#include "intel_gt_pm_debugfs.h"
 #include "intel_llc.h"
 #include "intel_rc6.h"
 #include "intel_rps.h"
@@ -614,7 +614,7 @@ static bool rps_eval(void *data)
 
 DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(rps_boost);
 
-void debugfs_gt_pm_register(struct intel_gt *gt, struct dentry *root)
+void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
 		{ "drpc", &drpc_fops, NULL },
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h
new file mode 100644
index 000000000000..b5c6a00cfa04
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2019 Intel Corporation
+ */
+
+#ifndef INTEL_GT_PM_DEBUGFS_H
+#define INTEL_GT_PM_DEBUGFS_H
+
+struct intel_gt;
+struct dentry;
+
+void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root);
+
+#endif /* INTEL_GT_PM_DEBUGFS_H */
-- 
2.33.0

