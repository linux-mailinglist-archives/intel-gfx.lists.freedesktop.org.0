Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E75C1157C87
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 14:40:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D36F76EC38;
	Mon, 10 Feb 2020 13:40:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07C2E6E215
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 13:40:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 05:40:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,425,1574150400"; d="scan'208";a="280637577"
Received: from aquilante.fi.intel.com (HELO teofilatto.example.org)
 ([10.237.72.158])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Feb 2020 05:40:40 -0800
From: Andi Shyti <andi.shyti@intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Mon, 10 Feb 2020 15:40:39 +0200
Message-Id: <20200210134039.2607-1-andi.shyti@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: change prefix to debugfs functions
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

"We don't own the debugfs 'namespace' prefix." (Jani Nikula [*])

I agree, change the functions name from "debugfs_*" to
"intel_gt_*" prefix.

[*] https://patchwork.freedesktop.org/patch/352553/#comment_651183

Signed-off-by: Andi Shyti <andi.shyti@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/debugfs_engines.c |  4 ++--
 drivers/gpu/drm/i915/gt/debugfs_engines.h |  2 +-
 drivers/gpu/drm/i915/gt/debugfs_gt.c      | 14 +++++++-------
 drivers/gpu/drm/i915/gt/debugfs_gt.h      | 10 +++++-----
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   |  4 ++--
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.h   |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c        |  2 +-
 7 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/debugfs_engines.c b/drivers/gpu/drm/i915/gt/debugfs_engines.c
index 6a5e9ab20b94..2d4ab974ab67 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_engines.c
@@ -26,11 +26,11 @@ static int engines_show(struct seq_file *m, void *data)
 }
 DEFINE_GT_DEBUGFS_ATTRIBUTE(engines);
 
-void debugfs_engines_register(struct intel_gt *gt, struct dentry *root)
+void engines_register_debugfs(struct intel_gt *gt, struct dentry *root)
 {
 	static const struct debugfs_gt_file files[] = {
 		{ "engines", &engines_fops },
 	};
 
-	debugfs_gt_register_files(gt, root, files, ARRAY_SIZE(files));
+	intel_gt_debugfs_register_files(gt, root, files, ARRAY_SIZE(files));
 }
diff --git a/drivers/gpu/drm/i915/gt/debugfs_engines.h b/drivers/gpu/drm/i915/gt/debugfs_engines.h
index f69257eaa1cc..942876f6e837 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_engines.h
+++ b/drivers/gpu/drm/i915/gt/debugfs_engines.h
@@ -9,6 +9,6 @@
 struct intel_gt;
 struct dentry;
 
-void debugfs_engines_register(struct intel_gt *gt, struct dentry *root);
+void engines_register_debugfs(struct intel_gt *gt, struct dentry *root);
 
 #endif /* DEBUGFS_ENGINES_H */
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.c b/drivers/gpu/drm/i915/gt/debugfs_gt.c
index 75255aaacaed..e7f2f1bf9f62 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
@@ -11,7 +11,7 @@
 #include "debugfs_gt_pm.h"
 #include "i915_drv.h"
 
-void debugfs_gt_register(struct intel_gt *gt)
+void intel_gt_debugfs_register(struct intel_gt *gt)
 {
 	struct dentry *root;
 
@@ -22,14 +22,14 @@ void debugfs_gt_register(struct intel_gt *gt)
 	if (IS_ERR(root))
 		return;
 
-	debugfs_engines_register(gt, root);
-	debugfs_gt_pm_register(gt, root);
+	engines_register_debugfs(gt, root);
+	intel_gt_pm_register_debugfs(gt, root);
 }
 
-void debugfs_gt_register_files(struct intel_gt *gt,
-			       struct dentry *root,
-			       const struct debugfs_gt_file *files,
-			       unsigned long count)
+void intel_gt_debugfs_register_files(struct intel_gt *gt,
+				     struct dentry *root,
+				     const struct debugfs_gt_file *files,
+				     unsigned long count)
 {
 	while (count--) {
 		if (!files->eval || files->eval(gt))
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.h b/drivers/gpu/drm/i915/gt/debugfs_gt.h
index 4ea0f06cda8f..d2aab5701c59 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt.h
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt.h
@@ -23,7 +23,7 @@ static const struct file_operations __name ## _fops = {			\
 	.release = single_release,					\
 }
 
-void debugfs_gt_register(struct intel_gt *gt);
+void intel_gt_debugfs_register(struct intel_gt *gt);
 
 struct debugfs_gt_file {
 	const char *name;
@@ -31,9 +31,9 @@ struct debugfs_gt_file {
 	bool (*eval)(const struct intel_gt *gt);
 };
 
-void debugfs_gt_register_files(struct intel_gt *gt,
-			       struct dentry *root,
-			       const struct debugfs_gt_file *files,
-			       unsigned long count);
+void intel_gt_debugfs_register_files(struct intel_gt *gt,
+				     struct dentry *root,
+				     const struct debugfs_gt_file *files,
+				     unsigned long count);
 
 #endif /* DEBUGFS_GT_H */
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
index 059c9e5c002e..03b4d06daaee 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
@@ -587,7 +587,7 @@ static bool rps_eval(const struct intel_gt *gt)
 
 DEFINE_GT_DEBUGFS_ATTRIBUTE(rps_boost);
 
-void debugfs_gt_pm_register(struct intel_gt *gt, struct dentry *root)
+void intel_gt_pm_register_debugfs(struct intel_gt *gt, struct dentry *root)
 {
 	static const struct debugfs_gt_file files[] = {
 		{ "drpc", &drpc_fops, NULL },
@@ -597,5 +597,5 @@ void debugfs_gt_pm_register(struct intel_gt *gt, struct dentry *root)
 		{ "rps_boost", &rps_boost_fops, rps_eval },
 	};
 
-	debugfs_gt_register_files(gt, root, files, ARRAY_SIZE(files));
+	intel_gt_debugfs_register_files(gt, root, files, ARRAY_SIZE(files));
 }
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.h b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.h
index 4cf5f5c9da7d..45827f451e83 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.h
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.h
@@ -9,6 +9,6 @@
 struct intel_gt;
 struct dentry;
 
-void debugfs_gt_pm_register(struct intel_gt *gt, struct dentry *root);
+void intel_gt_pm_register_debugfs(struct intel_gt *gt, struct dentry *root);
 
 #endif /* DEBUGFS_GT_PM_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index f1f1b306e0af..f84874f6e72b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -320,7 +320,7 @@ void intel_gt_driver_register(struct intel_gt *gt)
 {
 	intel_rps_driver_register(&gt->rps);
 
-	debugfs_gt_register(gt);
+	intel_gt_debugfs_register(gt);
 }
 
 static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
