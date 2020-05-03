Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2E11C2BA2
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 13:22:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 480D66E1F4;
	Sun,  3 May 2020 11:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2C666E193
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 May 2020 11:21:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21097497-1500050 
 for multiple; Sun, 03 May 2020 12:21:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  3 May 2020 12:21:32 +0100
Message-Id: <20200503112132.17899-14-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200503112132.17899-1-chris@chris-wilson.co.uk>
References: <20200503112132.17899-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/14] drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
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

This timeout is only used in one place, to provide a tiny bit of grace
for slow igt to cleanup after themselves. If we are a bit stricter and
opt to kill outstanding requsts rather than wait, we can speed up igt by
not waiting for 200ms after a hang.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 11 ++++++-----
 drivers/gpu/drm/i915/i915_drv.h     |  2 --
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 8e98df6a3045..649acf1fc33d 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1463,12 +1463,13 @@ gt_drop_caches(struct intel_gt *gt, u64 val)
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
index cdea08962ab5..b12e9f39289e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -612,8 +612,6 @@ struct i915_gem_mm {
 	u32 shrink_count;
 };
 
-#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
-
 unsigned long i915_fence_timeout(const struct drm_i915_private *i915);
 
 /* Amount of SAGV/QGV points, BSpec precisely defines this */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
