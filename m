Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 722311D0A35
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 09:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D48C6E982;
	Wed, 13 May 2020 07:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A8C16E982
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 07:48:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21182455-1500050 
 for multiple; Wed, 13 May 2020 08:48:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 08:48:00 +0100
Message-Id: <20200513074809.18194-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200513074809.18194-1-chris@chris-wilson.co.uk>
References: <20200513074809.18194-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/24] drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
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
index 631d31bc2313..175ed222b514 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -614,8 +614,6 @@ struct i915_gem_mm {
 	u32 shrink_count;
 };
 
-#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
-
 unsigned long i915_fence_context_timeout(const struct drm_i915_private *i915,
 					 u64 context);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
