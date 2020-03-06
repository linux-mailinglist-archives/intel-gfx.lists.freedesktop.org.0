Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE42C17C862
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 23:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E9986E520;
	Fri,  6 Mar 2020 22:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 9.mo177.mail-out.ovh.net (9.mo177.mail-out.ovh.net
 [46.105.72.238])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0D96E520
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 22:32:48 +0000 (UTC)
Received: from player737.ha.ovh.net (unknown [10.110.103.132])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id 799A3125C90
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 23:14:16 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player737.ha.ovh.net (Postfix) with ESMTPSA id 408D96B37C31;
 Fri,  6 Mar 2020 22:14:11 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Sat,  7 Mar 2020 00:14:05 +0200
Message-Id: <20200306221405.53152-1-andi@etezian.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 14643454190219805277
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudduvddgudeivdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeefjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: [Intel-gfx] [PATCH v3] drm/i915/gt: allow setting generic data
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

There might be different needs, therefore make it generic by
adding one more argument to the "debugfs_register_files()"
function which gets the generic void private data as argument.

Still keep it simple by defining a wrapper where struct *gt is
the chosen private data to be stored.

I take the chance to rename the functions by using "intel_gt_" as
prefix instead of "debugfs_".

Signed-off-by: Andi Shyti <andi.shyti@intel.com>
---
Thanks Daniele for the review.

Andi

Changelog:
v3:
 - removed unused gt parameter from the
   __intel_gt_debugfs_register_files()
v2:
 - the eval function is made generic as suggested by Daniele.

 drivers/gpu/drm/i915/gt/debugfs_engines.c |  2 +-
 drivers/gpu/drm/i915/gt/debugfs_gt.c      | 11 +++++------
 drivers/gpu/drm/i915/gt/debugfs_gt.h      | 12 +++++++-----
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   | 14 +++++++++-----
 4 files changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/debugfs_engines.c b/drivers/gpu/drm/i915/gt/debugfs_engines.c
index 6a5e9ab20b94..3434df10d58c 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_engines.c
@@ -32,5 +32,5 @@ void debugfs_engines_register(struct intel_gt *gt, struct dentry *root)
 		{ "engines", &engines_fops },
 	};
 
-	debugfs_gt_register_files(gt, root, files, ARRAY_SIZE(files));
+	intel_gt_debugfs_register_file(gt, root, files, ARRAY_SIZE(files));
 }
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.c b/drivers/gpu/drm/i915/gt/debugfs_gt.c
index 75255aaacaed..344f70e475c1 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
@@ -26,15 +26,14 @@ void debugfs_gt_register(struct intel_gt *gt)
 	debugfs_gt_pm_register(gt, root);
 }
 
-void debugfs_gt_register_files(struct intel_gt *gt,
-			       struct dentry *root,
-			       const struct debugfs_gt_file *files,
-			       unsigned long count)
+void __intel_gt_debugfs_register_files(struct dentry *root,
+				       const struct debugfs_gt_file *files,
+				       unsigned long count, void *data)
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
index 4ea0f06cda8f..332ea1fc72f7 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt.h
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt.h
@@ -28,12 +28,14 @@ void debugfs_gt_register(struct intel_gt *gt);
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
+void __intel_gt_debugfs_register_files(struct dentry *root,
+				       const struct debugfs_gt_file *files,
+				       unsigned long count, void *data);
+
+#define intel_gt_debugfs_register_file(g, r, f, c)	\
+	__intel_gt_debugfs_register_files(r, f, c, g)
 
 #endif /* DEBUGFS_GT_H */
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
index 059c9e5c002e..e2249fb49404 100644
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
+	intel_gt_debugfs_register_file(gt, root, files, ARRAY_SIZE(files));
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
