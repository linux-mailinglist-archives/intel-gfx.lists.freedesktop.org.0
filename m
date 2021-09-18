Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B6841031B
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Sep 2021 04:58:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB3836E0D2;
	Sat, 18 Sep 2021 02:58:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE8D06E0D2
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Sep 2021 02:58:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="221028862"
X-IronPort-AV: E=Sophos;i="5.85,303,1624345200"; d="scan'208";a="221028862"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 19:58:20 -0700
X-IronPort-AV: E=Sophos;i="5.85,303,1624345200"; d="scan'208";a="652054565"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 19:58:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>
Date: Fri, 17 Sep 2021 19:57:52 -0700
Message-Id: <20210918025754.1254705-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210918025754.1254705-1-lucas.demarchi@intel.com>
References: <20210918025754.1254705-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/4] drm/i915: rename debugfs_engines files
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
debugfs_engines.[ch] to intel_gt_engines_debugfs.[ch] and then make
functions, defines and structs follow suit.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/Makefile                      |  2 +-
 drivers/gpu/drm/i915/gt/debugfs_engines.h          | 14 --------------
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c         |  4 ++--
 ...ebugfs_engines.c => intel_gt_engines_debugfs.c} |  4 ++--
 drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.h | 14 ++++++++++++++
 5 files changed, 19 insertions(+), 19 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/gt/debugfs_engines.h
 rename drivers/gpu/drm/i915/gt/{debugfs_engines.c => intel_gt_engines_debugfs.c} (85%)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index cac22a9a1b02..0b21777fc77b 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -78,7 +78,6 @@ i915-$(CONFIG_PERF_EVENTS) += i915_pmu.o
 
 # "Graphics Technology" (aka we talk to the gpu)
 gt-y += \
-	gt/debugfs_engines.o \
 	gt/debugfs_gt_pm.o \
 	gt/gen2_engine_cs.o \
 	gt/gen6_engine_cs.o \
@@ -100,6 +99,7 @@ gt-y += \
 	gt/intel_gt_buffer_pool.o \
 	gt/intel_gt_clock_utils.o \
 	gt/intel_gt_debugfs.o \
+	gt/intel_gt_engines_debugfs.o \
 	gt/intel_gt_irq.o \
 	gt/intel_gt_pm.o \
 	gt/intel_gt_pm_irq.o \
diff --git a/drivers/gpu/drm/i915/gt/debugfs_engines.h b/drivers/gpu/drm/i915/gt/debugfs_engines.h
deleted file mode 100644
index f69257eaa1cc..000000000000
--- a/drivers/gpu/drm/i915/gt/debugfs_engines.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2019 Intel Corporation
- */
-
-#ifndef DEBUGFS_ENGINES_H
-#define DEBUGFS_ENGINES_H
-
-struct intel_gt;
-struct dentry;
-
-void debugfs_engines_register(struct intel_gt *gt, struct dentry *root);
-
-#endif /* DEBUGFS_ENGINES_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
index b19648008265..3c77c2965e19 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
@@ -5,10 +5,10 @@
 
 #include <linux/debugfs.h>
 
-#include "debugfs_engines.h"
 #include "debugfs_gt_pm.h"
 #include "i915_drv.h"
 #include "intel_gt_debugfs.h"
+#include "intel_gt_engines_debugfs.h"
 #include "intel_sseu_debugfs.h"
 #include "uc/intel_uc_debugfs.h"
 
@@ -23,7 +23,7 @@ void intel_gt_debugfs_register(struct intel_gt *gt)
 	if (IS_ERR(root))
 		return;
 
-	debugfs_engines_register(gt, root);
+	intel_gt_engines_debugfs_register(gt, root);
 	debugfs_gt_pm_register(gt, root);
 	intel_sseu_debugfs_register(gt, root);
 
diff --git a/drivers/gpu/drm/i915/gt/debugfs_engines.c b/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
similarity index 85%
rename from drivers/gpu/drm/i915/gt/debugfs_engines.c
rename to drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
index 2980dac5b171..8f9b874fdc9c 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
@@ -6,10 +6,10 @@
 
 #include <drm/drm_print.h>
 
-#include "debugfs_engines.h"
 #include "i915_drv.h" /* for_each_engine! */
 #include "intel_engine.h"
 #include "intel_gt_debugfs.h"
+#include "intel_gt_engines_debugfs.h"
 
 static int engines_show(struct seq_file *m, void *data)
 {
@@ -26,7 +26,7 @@ static int engines_show(struct seq_file *m, void *data)
 }
 DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(engines);
 
-void debugfs_engines_register(struct intel_gt *gt, struct dentry *root)
+void intel_gt_engines_debugfs_register(struct intel_gt *gt, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
 		{ "engines", &engines_fops },
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.h b/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.h
new file mode 100644
index 000000000000..dda113452da9
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2019 Intel Corporation
+ */
+
+#ifndef INTEL_GT_ENGINES_DEBUGFS_H
+#define INTEL_GT_ENGINES_DEBUGFS_H
+
+struct intel_gt;
+struct dentry;
+
+void intel_gt_engines_debugfs_register(struct intel_gt *gt, struct dentry *root);
+
+#endif /* INTEL_GT_ENGINES_DEBUGFS_H */
-- 
2.33.0

