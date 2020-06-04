Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A001EE62D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 15:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0CF56E06E;
	Thu,  4 Jun 2020 13:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BBAB6E06E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 13:59:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21396028-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jun 2020 14:59:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jun 2020 14:59:38 +0100
Message-Id: <20200604135938.3975-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Trim set_timer_ms() intervals
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

Use the plain msec_to_jiffies() rather than the _timeout variant so we
round down and do not add an extra jiffy to our interval. For example,
with timeslicing we do not want to err on the longer side as any
fairness depends on catching hogging contexts on the GPU. Bring on
CFS.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 29 +++++++++++---------------
 drivers/gpu/drm/i915/i915_utils.c      |  2 +-
 2 files changed, 13 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 3e35a45d6218..67d74e6432a8 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1140,9 +1140,17 @@ static struct i915_request *nop_request(struct intel_engine_cs *engine)
 	return rq;
 }
 
-static long timeslice_threshold(const struct intel_engine_cs *engine)
+static long slice_timeout(struct intel_engine_cs *engine)
 {
-	return 2 * msecs_to_jiffies_timeout(timeslice(engine)) + 1;
+	long timeout;
+
+	/* Enough time for a timeslice to kick in, and kick out */
+	timeout = 2 * msecs_to_jiffies_timeout(timeslice(engine));
+
+	/* Enough time for the nop request to complete */
+	timeout += HZ / 5;
+
+	return timeout + 1;
 }
 
 static int live_timeslice_queue(void *arg)
@@ -1260,7 +1268,7 @@ static int live_timeslice_queue(void *arg)
 		}
 
 		/* Timeslice every jiffy, so within 2 we should signal */
-		if (i915_request_wait(rq, 0, timeslice_threshold(engine)) < 0) {
+		if (i915_request_wait(rq, 0, slice_timeout(engine)) < 0) {
 			struct drm_printer p =
 				drm_info_printer(gt->i915->drm.dev);
 
@@ -1379,7 +1387,7 @@ static int live_timeslice_nopreempt(void *arg)
 		 * allow the maximum priority barrier through. Wait long
 		 * enough to see if it is timesliced in by mistake.
 		 */
-		if (i915_request_wait(rq, 0, timeslice_threshold(engine)) >= 0) {
+		if (i915_request_wait(rq, 0, slice_timeout(engine)) >= 0) {
 			pr_err("%s: I915_PRIORITY_BARRIER request completed, bypassing no-preempt request\n",
 			       engine->name);
 			err = -EINVAL;
@@ -3890,19 +3898,6 @@ static int live_virtual_mask(void *arg)
 	return 0;
 }
 
-static long slice_timeout(struct intel_engine_cs *engine)
-{
-	long timeout;
-
-	/* Enough time for a timeslice to kick in, and kick out */
-	timeout = 2 * msecs_to_jiffies_timeout(timeslice(engine));
-
-	/* Enough time for the nop request to complete */
-	timeout += HZ / 5;
-
-	return timeout;
-}
-
 static int slicein_virtual_engine(struct intel_gt *gt,
 				  struct intel_engine_cs **siblings,
 				  unsigned int nsibling)
diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
index e28eae4a8f70..f42a9e9a0b4f 100644
--- a/drivers/gpu/drm/i915/i915_utils.c
+++ b/drivers/gpu/drm/i915/i915_utils.c
@@ -91,7 +91,7 @@ void set_timer_ms(struct timer_list *t, unsigned long timeout)
 		return;
 	}
 
-	timeout = msecs_to_jiffies_timeout(timeout);
+	timeout = msecs_to_jiffies(timeout);
 
 	/*
 	 * Paranoia to make sure the compiler computes the timeout before
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
