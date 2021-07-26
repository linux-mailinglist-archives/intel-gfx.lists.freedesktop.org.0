Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE32B3D6762
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 21:09:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D53672C75;
	Mon, 26 Jul 2021 19:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F42472C75;
 Mon, 26 Jul 2021 19:09:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="212291075"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="212291075"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 12:09:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="566278273"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga004.jf.intel.com with ESMTP; 26 Jul 2021 12:09:07 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 26 Jul 2021 12:07:55 -0700
Message-Id: <20210726190800.26762-11-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
References: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/15] drm/i915/guc/slpc: Add debugfs for SLPC
 info
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This prints out relevant SLPC info from the SLPC shared structure.

We will send a h2g message which forces SLPC to update the
shared data structure with latest information before reading it.

v2: Address review comments (Michal W)
v3: Remove unnecessary tasks from slpc_info (Michal W)

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    | 22 ++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 29 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |  4 ++-
 3 files changed, 54 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
index 72ddfff42f7d..3244e54b1337 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
@@ -12,6 +12,7 @@
 #include "gt/uc/intel_guc_ct.h"
 #include "gt/uc/intel_guc_ads.h"
 #include "gt/uc/intel_guc_submission.h"
+#include "gt/uc/intel_guc_slpc.h"
 
 static int guc_info_show(struct seq_file *m, void *data)
 {
@@ -50,11 +51,32 @@ static int guc_registered_contexts_show(struct seq_file *m, void *data)
 }
 DEFINE_GT_DEBUGFS_ATTRIBUTE(guc_registered_contexts);
 
+static int guc_slpc_info_show(struct seq_file *m, void *unused)
+{
+	struct intel_guc *guc = m->private;
+	struct intel_guc_slpc *slpc = &guc->slpc;
+	struct drm_printer p = drm_seq_file_printer(m);
+
+	if (!intel_guc_slpc_is_used(guc))
+		return -ENODEV;
+
+	return intel_guc_slpc_info(slpc, &p);
+}
+DEFINE_GT_DEBUGFS_ATTRIBUTE(guc_slpc_info);
+
+static bool intel_eval_slpc_support(void *data)
+{
+	struct intel_guc *guc = (struct intel_guc *)data;
+
+	return intel_guc_slpc_is_used(guc);
+}
+
 void intel_guc_debugfs_register(struct intel_guc *guc, struct dentry *root)
 {
 	static const struct debugfs_gt_file files[] = {
 		{ "guc_info", &guc_info_fops, NULL },
 		{ "guc_registered_contexts", &guc_registered_contexts_fops, NULL },
+		{ "guc_slpc_info", &guc_slpc_info_fops, &intel_eval_slpc_support},
 	};
 
 	if (!intel_guc_is_supported(guc))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index c653bba3b5eb..995d3d4807a3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -448,6 +448,35 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
 	return 0;
 }
 
+int intel_guc_slpc_info(struct intel_guc_slpc *slpc, struct drm_printer *p)
+{
+	struct drm_i915_private *i915 = guc_to_gt(slpc_to_guc(slpc))->i915;
+	struct slpc_shared_data *data = slpc->vaddr;
+	struct slpc_task_state_data *slpc_tasks;
+	intel_wakeref_t wakeref;
+	int ret = 0;
+
+	GEM_BUG_ON(!slpc->vma);
+
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+		ret = slpc_query_task_state(slpc);
+
+		if (!ret) {
+			slpc_tasks = &data->task_state_data;
+
+			drm_printf(p, "\tSLPC state: %s\n", slpc_get_state_string(slpc));
+			drm_printf(p, "\tGTPERF task active: %s\n",
+				yesno(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));
+			drm_printf(p, "\tMax freq: %u MHz\n",
+					slpc_decode_max_freq(slpc));
+			drm_printf(p, "\tMin freq: %u MHz\n",
+					slpc_decode_min_freq(slpc));
+		}
+	}
+
+	return ret;
+}
+
 void intel_guc_slpc_fini(struct intel_guc_slpc *slpc)
 {
 	if (!slpc->vma)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
index 92d7afd44f07..d133c8020c16 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
@@ -9,6 +9,8 @@
 #include "intel_guc_submission.h"
 #include "intel_guc_slpc_types.h"
 
+struct drm_printer;
+
 static inline bool intel_guc_slpc_is_supported(struct intel_guc *guc)
 {
 	return guc->slpc_supported;
@@ -25,7 +27,6 @@ static inline bool intel_guc_slpc_is_used(struct intel_guc *guc)
 }
 
 void intel_guc_slpc_init_early(struct intel_guc_slpc *slpc);
-
 int intel_guc_slpc_init(struct intel_guc_slpc *slpc);
 int intel_guc_slpc_enable(struct intel_guc_slpc *slpc);
 void intel_guc_slpc_fini(struct intel_guc_slpc *slpc);
@@ -33,5 +34,6 @@ int intel_guc_slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 val);
 int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val);
 int intel_guc_slpc_get_max_freq(struct intel_guc_slpc *slpc, u32 *val);
 int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val);
+int intel_guc_slpc_info(struct intel_guc_slpc *slpc, struct drm_printer *p);
 
 #endif
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
