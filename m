Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D97141AD07C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 21:40:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F5726EB50;
	Thu, 16 Apr 2020 19:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A83136EB50
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 19:40:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20925532-1500050 
 for multiple; Thu, 16 Apr 2020 20:40:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Apr 2020 20:40:36 +0100
Message-Id: <20200416194036.2294-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Delay spinner before
 waiting for an interrupt
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

It seems that although (perhaps because of the memory stall?) the
spinner has signaled that it has started, it still takes some time to
spin up to 100% utilisation of the HW. Since the test depends on the
full utilisation of the HW to trigger the RPS interrupt, wait a little
bit and flush the interrupt status to be sure that the event we see if
from the spinner.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 28 +++++++++++++++-----------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 26aadc2ae3be..199d608aa763 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -14,6 +14,20 @@ static void dummy_rps_work(struct work_struct *wrk)
 {
 }
 
+static void sleep_for_ei(struct intel_rps *rps, int timeout_us)
+{
+	/* Flush any previous EI */
+	usleep_range(timeout_us, 2 * timeout_us);
+
+	/* Reset the interrupt status */
+	rps_disable_interrupts(rps);
+	GEM_BUG_ON(rps->pm_iir);
+	rps_enable_interrupts(rps);
+
+	/* And then wait for the timeout, for real this time */
+	usleep_range(2 * timeout_us, 3 * timeout_us);
+}
+
 static int __rps_up_interrupt(struct intel_rps *rps,
 			      struct intel_engine_cs *engine,
 			      struct igt_spinner *spin)
@@ -28,7 +42,6 @@ static int __rps_up_interrupt(struct intel_rps *rps,
 	intel_gt_pm_wait_for_idle(engine->gt);
 	GEM_BUG_ON(rps->active);
 
-	rps->pm_iir = 0;
 	rps->cur_freq = rps->min_freq;
 
 	rq = igt_spinner_create_request(spin, engine->kernel_context, MI_NOOP);
@@ -71,7 +84,7 @@ static int __rps_up_interrupt(struct intel_rps *rps,
 	timeout = intel_uncore_read(uncore, GEN6_RP_UP_EI);
 	timeout = GT_PM_INTERVAL_TO_US(engine->i915, timeout);
 
-	usleep_range(2 * timeout, 3 * timeout);
+	sleep_for_ei(rps, timeout);
 	GEM_BUG_ON(i915_request_completed(rq));
 
 	igt_spinner_end(spin);
@@ -122,16 +135,7 @@ static int __rps_down_interrupt(struct intel_rps *rps,
 	timeout = intel_uncore_read(uncore, GEN6_RP_DOWN_EI);
 	timeout = GT_PM_INTERVAL_TO_US(engine->i915, timeout);
 
-	/* Flush any previous EI */
-	usleep_range(timeout, 2 * timeout);
-
-	/* Reset the interrupt status */
-	rps_disable_interrupts(rps);
-	GEM_BUG_ON(rps->pm_iir);
-	rps_enable_interrupts(rps);
-
-	/* And then wait for the timeout, for real this time */
-	usleep_range(2 * timeout, 3 * timeout);
+	sleep_for_ei(rps, timeout);
 
 	if (rps->cur_freq != rps->max_freq) {
 		pr_err("%s: Frequency unexpectedly changed [down], now %d!\n",
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
