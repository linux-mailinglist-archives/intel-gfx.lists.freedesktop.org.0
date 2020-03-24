Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8650C190D71
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 13:31:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A23089FED;
	Tue, 24 Mar 2020 12:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8E296E148
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 12:31:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20673621-1500050 
 for multiple; Tue, 24 Mar 2020 12:31:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Mar 2020 12:31:00 +0000
Message-Id: <20200324123100.27030-1-chris@chris-wilson.co.uk>
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

Fixes: 730eaeb52426 ("drm/i915/gt: Manual rc6 entry upon parking")
Testcase: igt/i915_pm_rc6_residency/rc6-idle
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

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
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
