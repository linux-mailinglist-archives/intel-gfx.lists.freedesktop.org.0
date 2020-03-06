Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3982617C6C8
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 21:07:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98E626ED60;
	Fri,  6 Mar 2020 20:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1.mo68.mail-out.ovh.net (1.mo68.mail-out.ovh.net
 [46.105.41.146])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E69306ED60
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 20:07:01 +0000 (UTC)
Received: from player737.ha.ovh.net (unknown [10.110.103.118])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 0F5C915E81D
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 21:06:58 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player737.ha.ovh.net (Postfix) with ESMTPSA id 8940D6B321C2;
 Fri,  6 Mar 2020 20:06:53 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Fri,  6 Mar 2020 22:06:36 +0200
Message-Id: <20200306200636.52051-1-andi@etezian.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 12493548317921296989
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudduvddgudefiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeefjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: allow setting generic data
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
Changelog:
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
index 75255aaacaed..24099fb157be 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
@@ -26,15 +26,14 @@ void debugfs_gt_register(struct intel_gt *gt)
 	debugfs_gt_pm_register(gt, root);
 }
 
-void debugfs_gt_register_files(struct intel_gt *gt,
-			       struct dentry *root,
-			       const struct debugfs_gt_file *files,
-			       unsigned long count)
+void __intel_gt_debugfs_register_files(struct intel_gt *gt, struct dentry *root,
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
index 4ea0f06cda8f..f498fe75c79a 100644
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
+void __intel_gt_debugfs_register_files(struct intel_gt *gt, struct dentry *root,
+				       const struct debugfs_gt_file *files,
+				       unsigned long count, void *data);
+
+#define intel_gt_debugfs_register_file(g, r, f, c)	\
+	__intel_gt_debugfs_register_files(g, r, f, c, g)
 
 #endif /* DEBUGFS_GT_H */
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
index 059c9e5c002e..a233b97a9294 100644
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
+	return !gt ? false : HAS_LLC(gt->i915);
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
+	return !gt ? false : HAS_RPS(gt->i915);
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
