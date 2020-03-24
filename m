Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E46EC19115D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 14:43:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 455586E488;
	Tue, 24 Mar 2020 13:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B5316E488
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 13:43:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20674860-1500050 
 for multiple; Tue, 24 Mar 2020 13:42:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Mar 2020 13:42:32 +0000
Message-Id: <20200324134232.8773-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Select the deepest available
 parking mode for rc6
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

On Ivybridge, we can go lower than rc6 to rc6p. And this is required for
Ivybridge to hit the same minimum power consumption as rc6 on other
platforms, so make it so.

v2: Update selftest to include all rc6 residency counters

Fixes: 730eaeb52426 ("drm/i915/gt: Manual rc6 entry upon parking")
Testcase: igt/i915_pm_rc6_residency/rc6-idle
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c    | 10 +++++++++-
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 21 +++++++++++++++++----
 2 files changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 50aa63270cdc..09d3e5a45397 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -608,6 +608,7 @@ void intel_rc6_unpark(struct intel_rc6 *rc6)
 void intel_rc6_park(struct intel_rc6 *rc6)
 {
 	struct intel_uncore *uncore = rc6_to_uncore(rc6);
+	unsigned int target;
 
 	if (!rc6->enabled)
 		return;
@@ -622,7 +623,14 @@ void intel_rc6_park(struct intel_rc6 *rc6)
 
 	/* Turn off the HW timers and go directly to rc6 */
 	set(uncore, GEN6_RC_CONTROL, GEN6_RC_CTL_RC6_ENABLE);
-	set(uncore, GEN6_RC_STATE, 0x4 << RC_SW_TARGET_STATE_SHIFT);
+
+	if (HAS_RC6pp(rc6_to_i915(rc6)))
+		target = 0x6; /* deepest rc6 */
+	else if (HAS_RC6p(rc6_to_i915(rc6)))
+		target = 0x5; /* deep rc6 */
+	else
+		target = 0x4; /* normal rc6 */
+	set(uncore, GEN6_RC_STATE, target << RC_SW_TARGET_STATE_SHIFT);
 }
 
 void intel_rc6_disable(struct intel_rc6 *rc6)
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 5f7e2dcf5686..10720722a2ca 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -12,6 +12,19 @@
 
 #include "selftests/i915_random.h"
 
+static u64 rc6_residency(struct intel_rc6 *rc6)
+{
+	u64 result;
+
+	result = intel_rc6_residency_ns(rc6, GEN6_GT_GFX_RC6);
+	if (HAS_RC6p(rc6_to_i915(rc6)))
+		result += intel_rc6_residency_ns(rc6, GEN6_GT_GFX_RC6p);
+	if (HAS_RC6pp(rc6_to_i915(rc6)))
+		result += intel_rc6_residency_ns(rc6, GEN6_GT_GFX_RC6pp);
+
+	return result;
+}
+
 int live_rc6_manual(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -38,9 +51,9 @@ int live_rc6_manual(void *arg)
 	__intel_rc6_disable(rc6);
 	msleep(1); /* wakeup is not immediate, takes about 100us on icl */
 
-	res[0] = intel_rc6_residency_ns(rc6, GEN6_GT_GFX_RC6);
+	res[0] = rc6_residency(rc6);
 	msleep(250);
-	res[1] = intel_rc6_residency_ns(rc6, GEN6_GT_GFX_RC6);
+	res[1] = rc6_residency(rc6);
 	if ((res[1] - res[0]) >> 10) {
 		pr_err("RC6 residency increased by %lldus while disabled for 250ms!\n",
 		       (res[1] - res[0]) >> 10);
@@ -51,9 +64,9 @@ int live_rc6_manual(void *arg)
 	/* Manually enter RC6 */
 	intel_rc6_park(rc6);
 
-	res[0] = intel_rc6_residency_ns(rc6, GEN6_GT_GFX_RC6);
+	res[0] = rc6_residency(rc6);
 	msleep(100);
-	res[1] = intel_rc6_residency_ns(rc6, GEN6_GT_GFX_RC6);
+	res[1] = rc6_residency(rc6);
 
 	if (res[1] == res[0]) {
 		pr_err("Did not enter RC6! RC6_STATE=%08x, RC6_CONTROL=%08x, residency=%lld\n",
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
