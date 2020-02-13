Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AFC15B5CD
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 01:24:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F276E140;
	Thu, 13 Feb 2020 00:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A03B6E13B
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 00:24:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 16:24:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,434,1574150400"; d="scan'208";a="222468849"
Received: from nvishwa1-desk.sc.intel.com ([10.3.160.185])
 by orsmga007.jf.intel.com with ESMTP; 12 Feb 2020 16:24:50 -0800
From: Brian Welty <brian.welty@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 16:14:18 -0800
Message-Id: <20200213001418.5899-1-brian.welty@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Fix selftest_mocs for DGFX
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

For DGFX devices, the MOCS control value is not initialized or used.
Update the selftest to skip reading and checking control values
for these devices.

References: e6e2ac07118b ("drm/i915: do not set MOCS control values on dgfx")
Fixes: 3fb33cd32ffd ("drm/i915/selftests: Add coverage of mocs registers")
Signed-off-by: Brian Welty <brian.welty@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_mocs.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index de1f83100fb6..8a94a546d580 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -199,7 +199,7 @@ static int check_l3cc_table(struct intel_engine_cs *engine,
 	return 0;
 }
 
-static int check_mocs_engine(struct live_mocs *arg,
+static int check_mocs_engine(struct intel_gt *gt, struct live_mocs *arg,
 			     struct intel_context *ce)
 {
 	struct i915_vma *vma = arg->scratch;
@@ -222,7 +222,7 @@ static int check_mocs_engine(struct live_mocs *arg,
 
 	/* Read the mocs tables back using SRM */
 	offset = i915_ggtt_offset(vma);
-	if (!err)
+	if (!err && !IS_DGFX(gt->i915))
 		err = read_mocs_table(rq, &arg->table, &offset);
 	if (!err && ce->engine->class == RENDER_CLASS)
 		err = read_l3cc_table(rq, &arg->table, &offset);
@@ -235,7 +235,7 @@ static int check_mocs_engine(struct live_mocs *arg,
 
 	/* Compare the results against the expected tables */
 	vaddr = arg->vaddr;
-	if (!err)
+	if (!err && !IS_DGFX(gt->i915))
 		err = check_mocs_table(ce->engine, &arg->table, &vaddr);
 	if (!err && ce->engine->class == RENDER_CLASS)
 		err = check_l3cc_table(ce->engine, &arg->table, &vaddr);
@@ -262,7 +262,7 @@ static int live_mocs_kernel(void *arg)
 
 	for_each_engine(engine, gt, id) {
 		intel_engine_pm_get(engine);
-		err = check_mocs_engine(&mocs, engine->kernel_context);
+		err = check_mocs_engine(gt, &mocs, engine->kernel_context);
 		intel_engine_pm_put(engine);
 		if (err)
 			break;
@@ -295,7 +295,7 @@ static int live_mocs_clean(void *arg)
 			break;
 		}
 
-		err = check_mocs_engine(&mocs, ce);
+		err = check_mocs_engine(gt, &mocs, ce);
 		intel_context_put(ce);
 		if (err)
 			break;
@@ -332,7 +332,7 @@ static int active_engine_reset(struct intel_context *ce,
 	return err;
 }
 
-static int __live_mocs_reset(struct live_mocs *mocs,
+static int __live_mocs_reset(struct intel_gt *gt, struct live_mocs *mocs,
 			     struct intel_context *ce)
 {
 	int err;
@@ -341,7 +341,7 @@ static int __live_mocs_reset(struct live_mocs *mocs,
 	if (err)
 		return err;
 
-	err = check_mocs_engine(mocs, ce);
+	err = check_mocs_engine(gt, mocs, ce);
 	if (err)
 		return err;
 
@@ -349,13 +349,13 @@ static int __live_mocs_reset(struct live_mocs *mocs,
 	if (err)
 		return err;
 
-	err = check_mocs_engine(mocs, ce);
+	err = check_mocs_engine(gt, mocs, ce);
 	if (err)
 		return err;
 
-	intel_gt_reset(ce->engine->gt, ce->engine->mask, "mocs");
+	intel_gt_reset(gt, ce->engine->mask, "mocs");
 
-	err = check_mocs_engine(mocs, ce);
+	err = check_mocs_engine(gt, mocs, ce);
 	if (err)
 		return err;
 
@@ -390,7 +390,7 @@ static int live_mocs_reset(void *arg)
 		}
 
 		intel_engine_pm_get(engine);
-		err = __live_mocs_reset(&mocs, ce);
+		err = __live_mocs_reset(gt, &mocs, ce);
 		intel_engine_pm_put(engine);
 
 		intel_context_put(ce);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
