Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 148FB2AB7BD
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 13:06:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 447A689915;
	Mon,  9 Nov 2020 12:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B015089915
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 12:06:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22937505-1500050 
 for multiple; Mon, 09 Nov 2020 12:06:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Nov 2020 12:06:08 +0000
Message-Id: <20201109120608.3940-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Improve granularity for
 mocs reset checks
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allow us to validate mocs configurations after reset if we have either
engine or global reset.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_mocs.c | 40 +++++++++++++------------
 1 file changed, 21 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index b25eba50c88e..21dcd91cbd62 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -361,29 +361,34 @@ static int active_engine_reset(struct intel_context *ce,
 static int __live_mocs_reset(struct live_mocs *mocs,
 			     struct intel_context *ce)
 {
+	struct intel_gt *gt = ce->engine->gt;
 	int err;
 
-	err = intel_engine_reset(ce->engine, "mocs");
-	if (err)
-		return err;
+	if (intel_has_reset_engine(gt)) {
+		err = intel_engine_reset(ce->engine, "mocs");
+		if (err)
+			return err;
 
-	err = check_mocs_engine(mocs, ce);
-	if (err)
-		return err;
+		err = check_mocs_engine(mocs, ce);
+		if (err)
+			return err;
 
-	err = active_engine_reset(ce, "mocs");
-	if (err)
-		return err;
+		err = active_engine_reset(ce, "mocs");
+		if (err)
+			return err;
 
-	err = check_mocs_engine(mocs, ce);
-	if (err)
-		return err;
+		err = check_mocs_engine(mocs, ce);
+		if (err)
+			return err;
+	}
 
-	intel_gt_reset(ce->engine->gt, ce->engine->mask, "mocs");
+	if (intel_has_gpu_reset(gt)) {
+		intel_gt_reset(gt, ce->engine->mask, "mocs");
 
-	err = check_mocs_engine(mocs, ce);
-	if (err)
-		return err;
+		err = check_mocs_engine(mocs, ce);
+		if (err)
+			return err;
+	}
 
 	return 0;
 }
@@ -398,9 +403,6 @@ static int live_mocs_reset(void *arg)
 
 	/* Check the mocs setup is retained over per-engine and global resets */
 
-	if (!intel_has_reset_engine(gt))
-		return 0;
-
 	err = live_mocs_init(&mocs, gt);
 	if (err)
 		return err;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
