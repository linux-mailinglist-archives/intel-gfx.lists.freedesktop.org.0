Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5812C1C2749
	for <lists+intel-gfx@lfdr.de>; Sat,  2 May 2020 19:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9563E6E18F;
	Sat,  2 May 2020 17:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD7E6E18F
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 May 2020 17:35:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21092925-1500050 
 for multiple; Sat, 02 May 2020 18:35:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  2 May 2020 18:35:12 +0100
Message-Id: <20200502173512.32353-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Sanitize RPS interrupts upon resume
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

Currently we clear and disable the RPS pm interrupts on module load, and
presume that they remain disabled forevermore. However, the mask is
cleared on suspend and so after resume they may start showing up again
unexepectedly.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1811
Fixes: 8e99299a04bc ("drm/i915/gt: Track use of RPS interrupts in flags")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi@etezian.org>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c | 2 ++
 drivers/gpu/drm/i915/gt/intel_rps.c   | 5 ++++-
 drivers/gpu/drm/i915/gt/intel_rps.h   | 1 +
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 5097786f4375..e59776485457 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -171,6 +171,8 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
 		if (engine->reset.finish)
 			engine->reset.finish(engine);
 
+	intel_rps_sanitize(&gt->rps);
+
 	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
 	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index c682355ec79e..2f59fc6df3c2 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1844,8 +1844,11 @@ void intel_rps_init(struct intel_rps *rps)
 
 	if (INTEL_GEN(i915) >= 8 && INTEL_GEN(i915) < 11)
 		rps->pm_intrmsk_mbz |= GEN8_PMINTR_DISABLE_REDIRECT_TO_GUC;
+}
 
-	if (INTEL_GEN(i915) >= 6)
+void intel_rps_sanitize(struct intel_rps *rps)
+{
+	if (INTEL_GEN(rps_to_i915(rps)) >= 6)
 		rps_disable_interrupts(rps);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index af07fa5b7584..8d3c9d663662 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -13,6 +13,7 @@ struct i915_request;
 
 void intel_rps_init_early(struct intel_rps *rps);
 void intel_rps_init(struct intel_rps *rps);
+void intel_rps_sanitize(struct intel_rps *rps);
 
 void intel_rps_driver_register(struct intel_rps *rps);
 void intel_rps_driver_unregister(struct intel_rps *rps);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
