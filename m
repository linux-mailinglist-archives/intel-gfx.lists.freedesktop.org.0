Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C709C16FB11
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 10:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE176E3F2;
	Wed, 26 Feb 2020 09:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B650E6E3F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 09:43:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20354705-1500050 
 for multiple; Wed, 26 Feb 2020 09:43:16 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 09:43:06 +0000
Message-Id: <20200226094314.1500667-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200226094314.1500667-1-chris@chris-wilson.co.uk>
References: <20200226094314.1500667-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/17] drm/i915/selftests: Be a little more
 lenient for reset workers
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

Give the reset worker a kick before losing help when waiting for hang
recovery, as the CPU scheduler is a little unreliable.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 74 ++++++++++++++++++--------
 1 file changed, 52 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 95da6b880e3f..af5b3da6d894 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -90,6 +90,48 @@ static int wait_for_submit(struct intel_engine_cs *engine,
 	return -ETIME;
 }
 
+static int wait_for_reset(struct intel_engine_cs *engine,
+			  struct i915_request *rq,
+			  unsigned long timeout)
+{
+	timeout += jiffies;
+	do {
+		cond_resched();
+		intel_engine_flush_submission(engine);
+
+		if (READ_ONCE(engine->execlists.pending[0]))
+			continue;
+
+		if (i915_request_completed(rq))
+			break;
+
+		if (READ_ONCE(rq->fence.error))
+			break;
+	} while (time_before(jiffies, timeout));
+
+	flush_scheduled_work();
+
+	if (rq->fence.error != -EIO) {
+		pr_err("%s: hanging request %llx:%lld not reset\n",
+		       engine->name,
+		       rq->fence.context,
+		       rq->fence.seqno);
+		return -EINVAL;
+	}
+
+	/* Give the request a jiffie to complete after flushing the worker */
+	if (i915_request_wait(rq, 0,
+			      max(0l, (long)(timeout - jiffies)) + 1) < 0) {
+		pr_err("%s: hanging request %llx:%lld did not complete\n",
+		       engine->name,
+		       rq->fence.context,
+		       rq->fence.seqno);
+		return -ETIME;
+	}
+
+	return 0;
+}
+
 static int live_sanitycheck(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -1805,14 +1847,9 @@ static int __cancel_active0(struct live_preempt_cancel *arg)
 	if (err)
 		goto out;
 
-	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
-		err = -EIO;
-		goto out;
-	}
-
-	if (rq->fence.error != -EIO) {
-		pr_err("Cancelled inflight0 request did not report -EIO\n");
-		err = -EINVAL;
+	err = wait_for_reset(arg->engine, rq, HZ / 2);
+	if (err) {
+		pr_err("Cancelled inflight0 request did not reset\n");
 		goto out;
 	}
 
@@ -1870,10 +1907,9 @@ static int __cancel_active1(struct live_preempt_cancel *arg)
 		goto out;
 
 	igt_spinner_end(&arg->a.spin);
-	if (i915_request_wait(rq[1], 0, HZ / 5) < 0) {
-		err = -EIO;
+	err = wait_for_reset(arg->engine, rq[1], HZ / 2);
+	if (err)
 		goto out;
-	}
 
 	if (rq[0]->fence.error != 0) {
 		pr_err("Normal inflight0 request did not complete\n");
@@ -1953,10 +1989,9 @@ static int __cancel_queued(struct live_preempt_cancel *arg)
 	if (err)
 		goto out;
 
-	if (i915_request_wait(rq[2], 0, HZ / 5) < 0) {
-		err = -EIO;
+	err = wait_for_reset(arg->engine, rq[2], HZ / 2);
+	if (err)
 		goto out;
-	}
 
 	if (rq[0]->fence.error != -EIO) {
 		pr_err("Cancelled inflight0 request did not report -EIO\n");
@@ -2014,14 +2049,9 @@ static int __cancel_hostile(struct live_preempt_cancel *arg)
 	if (err)
 		goto out;
 
-	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
-		err = -EIO;
-		goto out;
-	}
-
-	if (rq->fence.error != -EIO) {
-		pr_err("Cancelled inflight0 request did not report -EIO\n");
-		err = -EINVAL;
+	err = wait_for_reset(arg->engine, rq, HZ / 2);
+	if (err) {
+		pr_err("Cancelled inflight0 request did not reset\n");
 		goto out;
 	}
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
