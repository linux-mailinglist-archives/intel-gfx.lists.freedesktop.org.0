Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AA016C408
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 15:36:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 349356EAF3;
	Tue, 25 Feb 2020 14:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124BE6EAF3
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 14:36:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20346196-1500050 
 for multiple; Tue, 25 Feb 2020 14:36:05 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 14:36:04 +0000
Message-Id: <20200225143604.500731-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200225143604.500731-1-chris@chris-wilson.co.uk>
References: <20200225143604.500731-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
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

This timeout is only used in one place, to provide a tiny bit of grace
for slow igt to cleanup after themselves. If we are a bit stricter, we
can speed up igt by not waiting for 200ms.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 11 ++++++-----
 drivers/gpu/drm/i915/i915_drv.h     |  2 --
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 8f2525e4ce0f..dfb8a2a6e844 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1949,12 +1949,13 @@ gt_drop_caches(struct intel_gt *gt, u64 val)
 {
 	int ret;
 
-	if (val & DROP_RESET_ACTIVE &&
-	    wait_for(intel_engines_are_idle(gt), I915_IDLE_ENGINES_TIMEOUT))
-		intel_gt_set_wedged(gt);
+	if (val & (DROP_RETIRE | DROP_RESET_ACTIVE))
+		intel_gt_wait_for_idle(gt, 1);
 
-	if (val & DROP_RETIRE)
-		intel_gt_retire_requests(gt);
+	if (val & DROP_RESET_ACTIVE && intel_gt_pm_get_if_awake(gt)) {
+		intel_gt_set_wedged(gt);
+		intel_gt_pm_put(gt);
+	}
 
 	if (val & (DROP_IDLE | DROP_ACTIVE)) {
 		ret = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6b56f31c850f..3e4dbcbb98eb 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -608,8 +608,6 @@ struct i915_gem_mm {
 	u32 shrink_count;
 };
 
-#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
-
 unsigned long i915_fence_timeout(const struct drm_i915_private *i915);
 
 /* Amount of SAGV/QGV points, BSpec precisely defines this */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
