Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CDA2B1883
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 10:41:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BBE06E499;
	Fri, 13 Nov 2020 09:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BEFC6E46B
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 09:41:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22980347-1500050 
 for multiple; Fri, 13 Nov 2020 09:41:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 09:41:01 +0000
Message-Id: <20201113094128.8740-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201113094128.8740-1-chris@chris-wilson.co.uk>
References: <20201113094128.8740-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/33] drm/i915/selftests: Improve granularity
 for mocs reset checks
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
