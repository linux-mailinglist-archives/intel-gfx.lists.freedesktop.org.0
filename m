Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D95F2CD10B
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 09:16:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 843146E9C1;
	Thu,  3 Dec 2020 08:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 189386EB6C
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 08:16:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23198142-1500050 
 for multiple; Thu, 03 Dec 2020 08:16:18 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Dec 2020 08:16:15 +0000
Message-Id: <20201203081616.1645-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201203081616.1645-1-chris@chris-wilson.co.uk>
References: <20201203081616.1645-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/gt: Include reset failures in the
 trace
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

The GT and engine reset failures are completely invisible when looking at
a trace for a bug, but are vital to understanding the incomplete flow.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 3654c955e6be..000d63588e9e 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -231,7 +231,7 @@ static int g4x_do_reset(struct intel_gt *gt,
 			      GRDOM_MEDIA | GRDOM_RESET_ENABLE);
 	ret =  wait_for_atomic(g4x_reset_complete(pdev), 50);
 	if (ret) {
-		drm_dbg(&gt->i915->drm, "Wait for media reset failed\n");
+		GT_TRACE(gt, "Wait for media reset failed\n");
 		goto out;
 	}
 
@@ -239,7 +239,7 @@ static int g4x_do_reset(struct intel_gt *gt,
 			      GRDOM_RENDER | GRDOM_RESET_ENABLE);
 	ret =  wait_for_atomic(g4x_reset_complete(pdev), 50);
 	if (ret) {
-		drm_dbg(&gt->i915->drm, "Wait for render reset failed\n");
+		GT_TRACE(gt, "Wait for render reset failed\n");
 		goto out;
 	}
 
@@ -265,7 +265,7 @@ static int ilk_do_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask,
 					   5000, 0,
 					   NULL);
 	if (ret) {
-		drm_dbg(&gt->i915->drm, "Wait for render reset failed\n");
+		GT_TRACE(gt, "Wait for render reset failed\n");
 		goto out;
 	}
 
@@ -276,7 +276,7 @@ static int ilk_do_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask,
 					   5000, 0,
 					   NULL);
 	if (ret) {
-		drm_dbg(&gt->i915->drm, "Wait for media reset failed\n");
+		GT_TRACE(gt, "Wait for media reset failed\n");
 		goto out;
 	}
 
@@ -305,9 +305,9 @@ static int gen6_hw_domain_reset(struct intel_gt *gt, u32 hw_domain_mask)
 					   500, 0,
 					   NULL);
 	if (err)
-		drm_dbg(&gt->i915->drm,
-			"Wait for 0x%08x engines reset failed\n",
-			hw_domain_mask);
+		GT_TRACE(gt,
+			 "Wait for 0x%08x engines reset failed\n",
+			 hw_domain_mask);
 
 	return err;
 }
@@ -407,8 +407,7 @@ static int gen11_lock_sfc(struct intel_engine_cs *engine, u32 *hw_mask)
 		return 0;
 
 	if (ret) {
-		drm_dbg(&engine->i915->drm,
-			"Wait for SFC forced lock ack failed\n");
+		ENGINE_TRACE(engine, "Wait for SFC forced lock ack failed\n");
 		return ret;
 	}
 
@@ -1148,8 +1147,7 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
 		ret = intel_guc_reset_engine(&engine->gt->uc.guc, engine);
 	if (ret) {
 		/* If we fail here, we expect to fallback to a global reset */
-		drm_dbg(&gt->i915->drm, "%sFailed to reset %s, ret=%d\n",
-			uses_guc ? "GuC " : "", engine->name, ret);
+		ENGINE_TRACE(engine, "Failed to reset, err: %d\n", ret);
 		goto out;
 	}
 
@@ -1186,7 +1184,7 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 
 	kobject_uevent_env(kobj, KOBJ_CHANGE, error_event);
 
-	drm_dbg(&gt->i915->drm, "resetting chip, engines=%x\n", engine_mask);
+	GT_TRACE(gt, "resetting chip, engines=%x\n", engine_mask);
 	kobject_uevent_env(kobj, KOBJ_CHANGE, reset_event);
 
 	/* Use a watchdog to ensure that our reset completes */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
