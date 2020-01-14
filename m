Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3166613ACBB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 15:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE596E40C;
	Tue, 14 Jan 2020 14:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BF056E40C
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 14:56:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19876346-1500050 
 for multiple; Tue, 14 Jan 2020 14:56:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 14:56:39 +0000
Message-Id: <20200114145639.2406801-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Undo partial gt-pm enabling on
 error paths
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

Undo the rps/llc enabling operations if we fail to bring up the engine
subsequently. For bonus paranoia, scrub the GT state along the error
path.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index d1c2f034296a..b8585bc8ac91 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -179,10 +179,6 @@ int intel_gt_resume(struct intel_gt *gt)
 	enum intel_engine_id id;
 	int err;
 
-	err = intel_gt_has_init_error(gt);
-	if (err)
-		return err;
-
 	GT_TRACE(gt, "\n");
 
 	/*
@@ -192,13 +188,13 @@ int intel_gt_resume(struct intel_gt *gt)
 	 * allowing us to fixup the user contexts on their first pin.
 	 */
 	intel_gt_pm_get(gt);
-
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
+
 	intel_rc6_sanitize(&gt->rc6);
 	gt_sanitize(gt, true);
 	if (intel_gt_is_wedged(gt)) {
 		err = -EIO;
-		goto out_fw;
+		goto err_sanitize;
 	}
 
 	/* Only when the HW is re-initialised, can we replay the requests */
@@ -223,23 +219,26 @@ int intel_gt_resume(struct intel_gt *gt)
 			dev_err(gt->i915->drm.dev,
 				"Failed to restart %s (%d)\n",
 				engine->name, err);
-			goto err_wedged;
+			goto err_disable;
 		}
 	}
 
 	intel_rc6_enable(&gt->rc6);
-
 	intel_uc_resume(&gt->uc);
 
-	user_forcewake(gt, false);
-
 out_fw:
+	user_forcewake(gt, false);
 	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
 	intel_gt_pm_put(gt);
 	return err;
 
+err_disable:
+	intel_rps_disable(&gt->rps);
+	intel_llc_disable(&gt->llc);
 err_wedged:
 	intel_gt_set_wedged(gt);
+err_sanitize:
+	gt_sanitize(gt, false);
 	goto out_fw;
 }
 
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
