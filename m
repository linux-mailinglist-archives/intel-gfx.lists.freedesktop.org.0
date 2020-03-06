Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 733B117C8D0
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 00:40:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77346ED93;
	Fri,  6 Mar 2020 23:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 3.mo68.mail-out.ovh.net (3.mo68.mail-out.ovh.net [46.105.58.60])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB286ED93
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 23:40:19 +0000 (UTC)
Received: from player730.ha.ovh.net (unknown [10.110.103.202])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 6E9B815ABC2
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Mar 2020 00:03:56 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player730.ha.ovh.net (Postfix) with ESMTPSA id 4073310010A40;
 Fri,  6 Mar 2020 23:03:51 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Sat,  7 Mar 2020 01:03:44 +0200
Message-Id: <20200306230344.53559-1-andi@etezian.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 15482249622403859037
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedruddufedgtdeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpdekuddrudejhedrvddvfedruddukeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejfedtrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: [Intel-gfx] [PATCH v4] drm/i915/gt: allow setting generic data
 pointer
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

From: Andi Shyti <andi.shyti@intel.com>

When registering debugfs files the intel gt debugfs library
forces a 'struct *gt' private data on the caller.

To be open to different usages make the new
"intel_gt_debugfs_register_files()"[*] function more generic by
converting the 'struct *gt' pointer to a 'void *' type.

I take the chance to rename the functions by using "intel_gt_" as
prefix instead of "debugfs_", so that "debugfs_gt_register_files()"
becomes "intel_gt_debugfs_register_files()".

Signed-off-by: Andi Shyti <andi.shyti@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
Hi,

Thanks Daniele for the review.

Andi

Changelog:
v4:
 - removed the wrapper which turns out it's not needed anymore.
v3:
 - removed unused gt parameter from the
   __intel_gt_debugfs_register_files()
v2:
 - the eval function is made generic as suggested by Daniele.

 drivers/gpu/drm/i915/gt/debugfs_engines.c |  2 +-
 drivers/gpu/drm/i915/gt/debugfs_gt.c      | 11 +++++------
 drivers/gpu/drm/i915/gt/debugfs_gt.h      |  9 ++++-----
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   | 14 +++++++++-----
 4 files changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/debugfs_engines.c b/drivers/gpu/drm/i915/gt/debugfs_engines.c
index 6a5e9ab20b94..5e3725e62241 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_engines.c
@@ -32,5 +32,5 @@ void debugfs_engines_register(struct intel_gt *gt, struct dentry *root)
 		{ "engines", &engines_fops },
 	};
 
-	debugfs_gt_register_files(gt, root, files, ARRAY_SIZE(files));
+	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
 }
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.c b/drivers/gpu/drm/i915/gt/debugfs_gt.c
index 75255aaacaed..de73b63d6ba7 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
@@ -26,15 +26,14 @@ void debugfs_gt_register(struct intel_gt *gt)
 	debugfs_gt_pm_register(gt, root);
 }
 
-void debugfs_gt_register_files(struct intel_gt *gt,
-			       struct dentry *root,
-			       const struct debugfs_gt_file *files,
-			       unsigned long count)
+void intel_gt_debugfs_register_files(struct dentry *root,
+				     const struct debugfs_gt_file *files,
+				     unsigned long count, void *data)
 {
 	while (count--) {
-		if (!files->eval || files->eval(gt))
+		if (!files->eval || files->eval(data))
 			debugfs_create_file(files->name,
-					    0444, root, gt,
+					    0444, root, data,
 					    files->fops);
 
 		files++;
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.h b/drivers/gpu/drm/i915/gt/debugfs_gt.h
index 4ea0f06cda8f..f77540f727e9 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt.h
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt.h
@@ -28,12 +28,11 @@ void debugfs_gt_register(struct intel_gt *gt);
 struct debugfs_gt_file {
 	const char *name;
 	const struct file_operations *fops;
-	bool (*eval)(const struct intel_gt *gt);
+	bool (*eval)(void *data);
 };
 
-void debugfs_gt_register_files(struct intel_gt *gt,
-			       struct dentry *root,
-			       const struct debugfs_gt_file *files,
-			       unsigned long count);
+void intel_gt_debugfs_register_files(struct dentry *root,
+				     const struct debugfs_gt_file *files,
+				     unsigned long count, void *data);
 
 #endif /* DEBUGFS_GT_H */
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
index 059c9e5c002e..dc024944873a 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
@@ -506,9 +506,11 @@ static int llc_show(struct seq_file *m, void *data)
 	return 0;
 }
 
-static bool llc_eval(const struct intel_gt *gt)
+static bool llc_eval(void *data)
 {
-	return HAS_LLC(gt->i915);
+	struct intel_gt *gt = data;
+
+	return gt && HAS_LLC(gt->i915);
 }
 
 DEFINE_GT_DEBUGFS_ATTRIBUTE(llc);
@@ -580,9 +582,11 @@ static int rps_boost_show(struct seq_file *m, void *data)
 	return 0;
 }
 
-static bool rps_eval(const struct intel_gt *gt)
+static bool rps_eval(void *data)
 {
-	return HAS_RPS(gt->i915);
+	struct intel_gt *gt = data;
+
+	return gt && HAS_RPS(gt->i915);
 }
 
 DEFINE_GT_DEBUGFS_ATTRIBUTE(rps_boost);
@@ -597,5 +601,5 @@ void debugfs_gt_pm_register(struct intel_gt *gt, struct dentry *root)
 		{ "rps_boost", &rps_boost_fops, rps_eval },
 	};
 
-	debugfs_gt_register_files(gt, root, files, ARRAY_SIZE(files));
+	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
